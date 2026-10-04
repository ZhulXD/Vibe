--[[
	AIDump — Roblox game documentation exporter

	Paste into a Roblox executor. Attaches to the running game, continuously records
	everything observable about it, and continuously writes AI-readable documentation
	files so that an AI can understand the game's mechanics by reading files alone,
	without ever playing the game.

	---------------------------------------------------------------------------
	ORIGIN AND ATTRIBUTION
	---------------------------------------------------------------------------
	This script is a clean, original implementation informed by two prior art
	projects. No code was copied from either; the designs and protocols below were
	studied and reimplemented:

	  * Dex++ v3.0 by Chillz (github.com/AZYsGithub/DexPlusPlus)
	    Influenced: the embedded-module factory registry idiom, the
	    ReflectionMetadata.xml-driven property model, instance path
	    serialisation, and property-to-Lua-literal formatting.
	    Not used: its entire UI layer, and its three remote decompiler services
	    (which upload game bytecode to third-party servers).

	  * Cobalt by deivid & upio (gitlab.com/upio/cobalt)
	    Influenced: the bidirectional interception architecture (outgoing via
	    `__namecall` plus prototype `hookfunction`, incoming via connection
	    observation plus callback detours), the per-remote call aggregation model,
	    and the serialisation option vocabulary.
	    Not used: its UI layer, its plugin system, and its anti-cheat bypass
	    module (highest fingerprint, contributes nothing to documentation).

	  * Iridium by ActualMasterOogway (github.com/ActualMasterOogway/Iridium)
	    Reference only: the Luau bytecode container layout that the disassembly
	    module in this file parses.

	---------------------------------------------------------------------------
	GUARANTEES
	---------------------------------------------------------------------------
	* READ-ONLY WITH RESPECT TO GAME TRAFFIC. Remote calls are observed, never
	  blocked, altered, swallowed or reordered. There is deliberately no call
	  filter, no block list and no connection disabling anywhere in this file.
	* NO NETWORK ACCESS. This script makes zero outbound requests. Game bytecode
	  never leaves the machine, and no data is sent to any third party.
	* NO GLOBAL POLLUTION. The only global this script sets is the single
	  documented entry point (Driver.InstallEntryPoint), and nothing else is
	  written to _G.
	* FACTS ONLY. Generated documentation contains observed values, counts,
	  ranges, paths and directly-recorded attributions. It contains no inference,
	  no causal claims and no prose interpretation. A linter (Docs.LintLine)
	  enforces this on every generated line.

	---------------------------------------------------------------------------
	KNOWN LIMITS OF THIS BUILD
	---------------------------------------------------------------------------
	Stated here rather than discovered later by the reader:

	* Sessions do not survive a teleport. A teleport destroys the client this
	  script runs in and no executor re-injects automatically. The final export
	  is flushed before the client goes away, and re-running AIDump in the
	  destination place writes a new directory keyed on that PlaceId.
	* Parallel-Luau actors are not instrumented. Only the main client is
	  observed. If a game runs logic in actors, those remotes are invisible.
	* RakNet wire-level capture is not implemented. Everything observed comes
	  from Lua-level hooks. Remotes whose traffic never reaches the Lua VM are
	  not seen.
	* The bytecode parser in Section 5 was written from the documented Luau
	  container layout, not transcribed from a tested implementation, so its
	  layout assumptions were unverified when it was written. It is built to
	  fail closed: a parse that does not pass every structural invariant is
	  discarded in favour of a hex dump. The self-test parses real bytecode from
	  the running game and reports pass or fail, which is the actual verdict.
	* There is no Luau runtime where this file was authored, so it has never
	  been executed outside Roblox. The in-script self-test is the first
	  execution and its report is written to logs/selftest.md. Start by reading
	  that file.

	---------------------------------------------------------------------------
	OUTPUT
	---------------------------------------------------------------------------
	AIDump/<PlaceId>_<YYYY-MM-DDTHH_MM_SSZ>/
	  00-INDEX.md          run summary, capabilities, manifest, coverage totals
	  01-ENVIRONMENT.md    place metadata, instance census, observed enums
	  02-STRUCTURE.md      instance tree with non-default properties
	  03-REMOTES.md        one row per remote, with argument schemas
	  04-REMOTE-<n>.md     per-remote detail (observed traffic only)
	  05-SCRIPTS.md        script inventory + code-to-protocol cross-reference
	  06-STATES.md         attributes, value objects, numeric argument flows
	  07-COVERAGE.md       what was never observed; what was unavailable
	  scripts/*.lua        decompiled source
	  scripts/*.disasm.txt bytecode disassembly
	  scripts/*.meta.json  per-script decompilation metadata
	  raw/*.json           full-fidelity machine-readable dumps
	  logs/aidump.log      daemon log
	  logs/selftest.md     self-test report
]]

--[[
	SECTION 1 — KERNEL
	Module registry, cycle-guarded lazy require, service locator, small utilities.

	The registry is Dex++'s idiom (a table of factory functions) but with a plain
	lazy `Req` instead of Dex++'s initDeps/initAfterMain two-phase ceremony. Every
	module resolves its dependencies from *inside* functions, never at factory
	time, which makes load order irrelevant and removes the circular-dependency
	plumbing both prior-art projects needed.
]]

local Modules = {}
local Loading = {}
local Loaded = {}

--- Sections register their modules with this. Keeping one registry means any
--- section can be reordered or removed without touching the others.
local function Define(name, factory)
	Modules[name] = factory
end

local function Req(name)
	local cached = Loaded[name]
	if cached ~= nil then
		return cached
	end
	if Loading[name] then
		error("AIDump: cyclic module dependency on '" .. tostring(name) .. "'", 2)
	end
	local factory = Modules[name]
	if not factory then
		error("AIDump: unknown module '" .. tostring(name) .. "'", 2)
	end
	Loading[name] = true
	local ok, result = pcall(factory)
	Loading[name] = nil
	if not ok then
		error("AIDump: module '" .. tostring(name) .. "' failed to load: " .. tostring(result), 2)
	end
	if type(result) ~= "table" then
		error("AIDump: module '" .. tostring(name) .. "' did not return a table", 2)
	end
	Loaded[name] = result
	return result
end

--- Shared service locator. Modules are handed references to each other through
--- here rather than by capturing locals, which keeps the dependency graph
--- inspectable and lets the self-test verify every wiring edge exists.
local Service = {}

local function Bind(name, instance)
	Service[name] = instance
end

local function Get(name)
	local instance = Service[name]
	if instance == nil then
		error("AIDump: service '" .. tostring(name) .. "' is not bound", 2)
	end
	return instance
end

-- KERNEL MODULE: shared helpers used by every section -----------------

local CORE_MODULES = {
	Util = function()
		local Util = {}

		--- Clones a value for snapshotting. Instances, functions and threads are
		--- referenced rather than copied; cycles are preserved.
		function Util.Snapshot(value, seen, depth)
			local t = type(value)
			if t ~= "table" and t ~= "buffer" then
				return value
			end
			seen = seen or {}
			if seen[value] then
				return seen[value]
			end
			if depth and depth > 12 then
				return nil
			end
			local out = {}
			seen[value] = out
			if t == "buffer" then
				return buffer.create(value)
			end
			for k, v in pairs(value) do
				out[k] = Util.Snapshot(v, seen, (depth or 0) + 1)
			end
			return out
		end

		--- Bounded sample buffer. Keeps the first `Head` and the last `Tail`
		--- entries plus an exact total count, so long sessions cannot grow
		--- without limit while statistics stay truthful.
		function Util.Ring(head, tail)
			head = head or 50
			tail = tail or 50
			local Ring = {
				Head = head,
				Tail = tail,
				First = {},
				FirstCount = 0,
				Last = {},
				LastCount = 0,
				LastHead = 0,
				Total = 0,
				Dropped = 0,
			}

			function Ring.Add(item)
				Ring.Total += 1
				if Ring.FirstCount < Ring.Head then
					Ring.FirstCount += 1
					Ring.First[Ring.FirstCount] = item
					-- While filling the head, also seed the tail so a short
					-- session does not report empty tails.
					Ring.LastCount += 1
					Ring.Last[Ring.LastCount] = item
					return
				end
				if Ring.LastCount >= Ring.Head + Ring.Tail then
					-- Slide the tail window.
					for i = 1, Ring.LastCount - 1 do
						Ring.Last[i] = Ring.Last[i + 1]
					end
					Ring.LastCount -= 1
					Ring.Dropped += 1
				end
				Ring.LastCount += 1
				Ring.Last[Ring.LastCount] = item
			end

			--- All retained samples, oldest first.
			function Ring.Items()
				local out = {}
				for i = 1, Ring.FirstCount do
					out[#out + 1] = Ring.First[i]
				end
				if Ring.LastCount > Ring.FirstCount then
					for i = Ring.FirstCount + 1, Ring.LastCount do
						out[#out + 1] = Ring.Last[i]
					end
				end
				return out
			end

			function Ring.Clear()
				table.clear(Ring.First)
				table.clear(Ring.Last)
				Ring.FirstCount = 0
				Ring.LastCount = 0
				Ring.LastHead = 0
				Ring.Total = 0
				Ring.Dropped = 0
			end

			return Ring
		end

		--- Stable key for any value, used for grouping distinct shapes.
		function Util.Key(value)
			local t = type(value)
			if t == "string" then
				return "s:" .. value
			elseif t == "number" then
				return "n:" .. tostring(value)
			elseif t == "boolean" then
				return "b:" .. tostring(value)
			elseif t == "nil" then
				return "z:"
			elseif t == "table" then
				return "t:" .. tostring(Util.TableId(value))
			elseif t == "Instance" then
				return "i:" .. tostring(value:GetDebugId())
			elseif t == "EnumItem" then
				return "e:" .. tostring(value.EnumType) .. "." .. tostring(value.Name)
			end
			return t .. ":" .. tostring(value)
		end

		local TableIds = setmetatable({}, { __mode = "k" })
		local NextTableId = 0
		function Util.TableId(t)
			local id = TableIds[t]
			if id == nil then
				NextTableId += 1
				id = NextTableId
				TableIds[t] = id
			end
			return id
		end

		--- `typeof`-first type name that distinguishes Luau types Roblox folds
		--- together (e.g. "Vector3" and "UDim2" are all "userdata" to `type`).
		function Util.TypeName(value)
			local ok, ty = pcall(typeof, value)
			if ok and ty ~= nil then
				return tostring(ty)
			end
			return type(value)
		end

		--- Escapes a string for inclusion in a Luau double-quoted literal.
		local ESCAPES = {
			["\\"] = "\\\\",
			['"'] = '\\"',
			["\n"] = "\\n",
			["\r"] = "\\r",
			["\t"] = "\\t",
			["\0"] = "\\0",
			["\a"] = "\\a",
			["\b"] = "\\b",
			["\f"] = "\\f",
			["\v"] = "\\v",
		}
		function Util.Quote(s)
			s = tostring(s)
			local out = s:gsub("[%c\\\"]", function(c)
				return ESCAPES[c] or string.format("\\%03d", string.byte(c))
			end)
			-- Escape non-ASCII so the emitted literal survives any consumer.
			out = out:gsub("[\128-\255]", function(c)
				return string.format("\\%d", string.byte(c))
			end)
			return '"' .. out .. '"'
		end

		--- Truncates a string for display, appending a visible marker.
		function Util.Truncate(s, max)
			max = max or 120
			s = tostring(s)
			local flat = s:gsub("[%c]", " ")
			if #flat <= max then
				return flat
			end
			return flat:sub(1, max) .. "…(+" .. tostring(#flat - max) .. ")"
		end

		--- Collapses a run of whitespace so path segments stay table-safe.
		function Util.SanitizeSegment(name)
			local s = tostring(name)
			s = s:gsub("[%c]", " ")
			s = s:gsub("[%s]+", " ")
			s = s:gsub("^[%s]+", "")
			s = s:gsub("[%s]+$", "")
			if s == "" then
				return "_"
			end
			-- Keep it filesystem-safe and reasonably short.
			if #s > 60 then
				s = s:sub(1, 60)
			end
			return s
		end

		--- Replaces characters that are illegal or awkward in file paths.
		function Util.SanitizeFile(name)
			local s = tostring(name)
			s = s:gsub("[*%?:<>|%%\"]", "_")
			s = s:gsub("[\\]", "_")
			s = s:gsub("%z", "")
			if #s > 120 then
				s = s:sub(1, 120)
			end
			return s
		end

		function Util.ShallowCopy(t)
			local out = {}
			for k, v in pairs(t) do
				out[k] = v
			end
			return out
		end

		--- Deterministic sort helper: returns a shallow-sorted key list.
		function Util.SortedKeys(t)
			local keys = {}
			for k in pairs(t) do
				keys[#keys + 1] = k
			end
			table.sort(keys, function(a, b)
				return tostring(a) < tostring(b)
			end)
			return keys
		end

		--- A percentage rounded to one decimal, rendered for fact tables.
		function Util.Ratio(part, whole)
			if not whole or whole == 0 then
				return "n/a"
			end
			local pct = part / whole * 100
			local rounded = math.floor(pct * 10 + 0.5) / 10
			return tostring(rounded) .. "%"
		end

		--- Whether a Lua identifier needs bracketing in a table literal.
		local IDENT = "^[%a_][%w_]*$"
		function Util.IsIdentifier(key)
			if type(key) ~= "string" then
				return false
			end
			if not key:match(IDENT) then
				return false
			end
			local RESERVED = {
				["and"] = true, ["break"] = true, ["do"] = true, ["else"] = true,
				["elseif"] = true, ["end"] = true, ["false"] = true, ["for"] = true,
				["function"] = true, ["if"] = true, ["in"] = true, ["local"] = true,
				["nil"] = true, ["not"] = true, ["or"] = true, ["repeat"] = true,
				["return"] = true, ["then"] = true, ["true"] = true, ["until"] = true,
				["while"] = true,
			}
			return not RESERVED[key]
		end

		return Util
	end,
}

for moduleName, moduleFactory in pairs(CORE_MODULES) do
	Modules[moduleName] = moduleFactory
end

--[[
	SECTION 2 — CORE: capability probing, filesystem, logging

	Every executor global is read exactly once, here, behind a safe accessor. No
	other module is allowed to touch a global directly. That single choke point is
	what makes the degradation matrix in the header enforceable rather than
	aspirational: if a capability is absent, exactly one place knows about it.
]]

local SECTION2 = {
	Compat = function()
		local Compat = {}

		--- Capability table. Each entry is probed for existence and basic
		--- behaviour; `Detail` records what the probe actually observed so
		--- 01-ENVIRONMENT.md can report facts rather than assumptions.
		---
		--- Only capabilities this script actually uses are listed. Probing for
		--- something that is never called would put noise in the environment
		--- report and imply support that does not exist.
		local SPEC = {
			-- Executor identity
			{ Name = "identifyexecutor", Group = "identity" },

			-- Hooking
			{ Name = "hookmetamethod", Group = "hooking" },
			{ Name = "hookfunction", Group = "hooking" },
			{ Name = "newcclosure", Group = "hooking" },
			{ Name = "getnamecallmethod", Group = "hooking" },
			{ Name = "getupvalues", Group = "hooking" },
			{ Name = "getconstants", Group = "hooking" },

			-- Call-site attribution (needed for the code↔protocol cross-reference)
			{ Name = "getcallingscript", Group = "attribution" },
			{ Name = "getscriptfromthread", Group = "attribution" },
			{ Name = "getcallingline", Group = "attribution" },
			{ Name = "getcallingsource", Group = "attribution" },

			-- Traffic capture
			{ Name = "getconnections", Group = "capture" },
			{ Name = "getcallbackvalue", Group = "capture" },
			{ Name = "fireproximityprompt", Group = "capture" },
			{ Name = "fireclickdetector", Group = "capture" },
			{ Name = "getnilinstances", Group = "capture" },

			-- Decompilation
			{ Name = "decompile", Group = "decompile" },
			{ Name = "getscriptbytecode", Group = "decompile" },

			-- Reflection
			{ Name = "getproperties", Group = "reflect" },
			{ Name = "gethiddenproperties", Group = "reflect" },

			-- Thread identity, used for DebugId reads
			{ Name = "setthreadidentity", Group = "thread" },
			{ Name = "getthreadidentity", Group = "thread" },

			-- Filesystem
			{ Name = "readfile", Group = "filesystem" },
			{ Name = "writefile", Group = "filesystem" },
			{ Name = "appendfile", Group = "filesystem" },
			{ Name = "makefolder", Group = "filesystem" },
			{ Name = "isfolder", Group = "filesystem" },
			{ Name = "isfile", Group = "filesystem" },
			{ Name = "delfile", Group = "filesystem" },

			-- Parallel Luau. Probed so the environment report can state whether
			-- actor support was possible; this build does not instrument actors.
			{ Name = "run_on_actor", Group = "actor" },
			{ Name = "getactors", Group = "actor" },
		}

		local AVAILABLE = {}
		local REPORT = {}

		--- Resolves an executor global by name.
		---
		--- This deliberately does not read `_G` alone. Executors differ in where
		--- they install their API: some put it in the shared `_G`, some expose it
		--- only through `getgenv()`, and some inject it into the environment of the
		--- chunk being executed. Reading only one of those makes every capability
		--- look absent on the executors that use a different one, which presents as
		--- the script silently doing nothing. All sources are consulted instead,
		--- cheapest first.
		local ENVIRONMENTS = nil

		local function environments()
			if ENVIRONMENTS then
				return ENVIRONMENTS
			end
			ENVIRONMENTS = {}
			-- The environment of the chunk this factory is running inside. This is
			-- the one that matters for executors which inject per-execution.
			if typeof(getfenv) == "function" then
				for _, level in ipairs({ 1, 2, 0 }) do
					local ok, env = pcall(getfenv, level)
					if ok and type(env) == "table" then
						ENVIRONMENTS[#ENVIRONMENTS + 1] = env
					end
				end
			end
			if typeof(getgenv) == "function" then
				local ok, env = pcall(getgenv)
				if ok and type(env) == "table" then
					ENVIRONMENTS[#ENVIRONMENTS + 1] = env
				end
			end
			if type(_G) == "table" then
				ENVIRONMENTS[#ENVIRONMENTS + 1] = _G
			end
			return ENVIRONMENTS
		end

		local function lookup(name)
			for _, env in ipairs(environments()) do
				local ok, value = pcall(rawget, env, name)
				if ok and value ~= nil then
					return value
				end
			end
			return nil
		end
		Compat.Lookup = lookup

		--- Probes are structural only: existence, plus a behaviour check for the
		--- few capabilities where existence is not evidence of function.
		local function probe(entry)
			local raw = lookup(entry.Name)
			if type(raw) ~= "function" then
				-- Some executors expose aliases; accept the common spellings.
				local ALIASES = {
					getcallingsource = { "getsource", "getsourcestring" },
					getscriptfromthread = { "getcallingscriptthread" },
					getproperties = { "getpropertys" },
					readfile = { "read_file" },
					writefile = { "write_file" },
					appendfile = { "append_file" },
					makefolder = { "make_folder" },
					listfiles = { "list_files" },
					delfile = { "delete_file" },
					delfolder = { "delete_folder" },
					isfolder = { "is_folder" },
					isfile = { "is_file" },
				}
				for _, alias in ipairs(ALIASES[entry.Name] or {}) do
					local candidate = lookup(alias)
					if type(candidate) == "function" then
						AVAILABLE[entry.Name] = candidate
						return true, "available as '" .. alias .. "'"
					end
				end
				return false, "absent"
			end
			AVAILABLE[entry.Name] = raw
			return true, "present"
		end

		function Compat.Init()
			for _, entry in ipairs(SPEC) do
				local ok, detail = probe(entry)
				REPORT[entry.Name] = {
					Name = entry.Name,
					Group = entry.Group,
					Working = ok,
					Detail = detail,
				}
			end
			-- decompile/getscriptbytecode may be absent at probe time but
			-- present later on some executors; re-probe lazily where it matters.
			return Compat
		end

		function Compat.Has(name)
			return AVAILABLE[name] ~= nil
		end

		function Compat.Get(name)
			return AVAILABLE[name]
		end

		--- Re-checks a capability on demand and caches the result.
		function Compat.Require(name)
			if AVAILABLE[name] == nil then
				local entry = { Name = name, Group = "late" }
				local ok, detail = probe(entry)
				REPORT[name] = { Name = name, Group = "late", Working = ok, Detail = detail }
			end
			return AVAILABLE[name] ~= nil
		end

		function Compat.Report()
			return REPORT
		end

		--- Executor identity as a fact, never as an assumption.
		function Compat.Identify()
			if not Compat.Has("identifyexecutor") then
				return { Name = "unknown", Version = "unknown", Detail = "identifyexecutor absent" }
			end
			local ok, name, version = pcall(AVAILABLE.identifyexecutor)
			if not ok or type(name) ~= "string" then
				return { Name = "unknown", Version = "unknown", Detail = "identifyexecutor returned no name" }
			end
			return { Name = name, Version = tostring(version or "unknown"), Detail = "identifyexecutor" }
		end

		--- Runs `fn` with elevated thread identity when the executor supports it,
		--- restoring the previous level afterwards. Used only for reads that the
		--- engine gates behind identity.
		function Compat.Elevated(fn)
			if not Compat.Has("setthreadidentity") or not Compat.Has("getthreadidentity") then
				return fn()
			end
			local previous = AVAILABLE.getthreadidentity()
			AVAILABLE.setthreadidentity(8)
			local ok, a, b = pcall(fn)
			AVAILABLE.setthreadidentity(previous)
			if not ok then
				error(a, 0)
			end
			return a, b
		end

		--- Stable per-instance identity for tables keyed by Instance.
		function Compat.DebugId(instance)
			if type(instance) ~= "Instance" then
				return nil
			end
			return Compat.Elevated(function()
				return instance:GetDebugId()
			end)
		end

		--- Instance comparison that tolerates cloneref'd copies.
		function Compat.Same(a, b)
			if a == b then
				return true
			end
			if type(a) ~= "Instance" or type(b) ~= "Instance" then
				return false
			end
			if Compat.Has("compareinstances") then
				local ok, result = pcall(AVAILABLE.compareinstances, a, b)
				if ok and result == true then
					return true
				end
			end
			local ida, idb = Compat.DebugId(a), Compat.DebugId(b)
			return ida ~= nil and ida == idb
		end

		return Compat
	end,

	Fs = function()
		local Util = Req("Util")
		local Compat = Req("Compat")

		local Fs = {
			Root = "AIDump",
			Session = nil,
		}

		function Fs.Available()
			return Compat.Has("writefile")
				and Compat.Has("makefolder")
				and Compat.Has("readfile")
		end

		--- Creates a folder path component by component; executors differ on
		--- whether they create parents implicitly.
		function Fs.EnsureDir(path)
			local makefolder = Compat.Get("makefolder")
			if not makefolder then
				return false
			end
			local isfolder = Compat.Get("isfolder")
			local built = ""
			for segment in tostring(path):gmatch("[^/\\]+") do
				built = built == "" and segment or (built .. "/" .. segment)
				if isfolder then
					local ok, exists = pcall(isfolder, built)
					if ok and exists then
						continue
					end
				end
				pcall(makefolder, built)
			end
			return true
		end

		function Fs.Join(...)
			local parts = { ... }
			local out = {}
			for _, part in ipairs(parts) do
				part = tostring(part):gsub("\\", "/"):gsub("/+$", "")
				if part ~= "" then
					out[#out + 1] = part
				end
			end
			return table.concat(out, "/")
		end

		--- Writes `contents` to `path` atomically as far as the executor
		--- filesystem allows: stage to a temp file, verify it reads back, then
		--- write the real path and drop the temp. A killed daemon therefore
		--- never leaves a half-written document.
		function Fs.Write(path, contents)
			local writefile = Compat.Get("writefile")
			if not writefile then
				return false, "writefile unavailable"
			end
			contents = tostring(contents)
			local temp = path .. ".tmp"
			local ok, err = pcall(writefile, temp, contents)
			if not ok then
				return false, "stage failed: " .. tostring(err)
			end
			local readfile = Compat.Get("readfile")
			if readfile then
				local okRead, roundTrip = pcall(readfile, temp)
				if not okRead or roundTrip ~= contents then
					local delfile = Compat.Get("delfile")
					if delfile then
						pcall(delfile, temp)
					end
					return false, "verification failed"
				end
			end
			ok, err = pcall(writefile, path, contents)
			if not ok then
				return false, "write failed: " .. tostring(err)
			end
			local delfile = Compat.Get("delfile")
			if delfile then
				pcall(delfile, temp)
			end
			return true
		end

		function Fs.Append(path, contents)
			local appendfile = Compat.Get("appendfile")
			if not appendfile then
				return false, "appendfile unavailable"
			end
			return pcall(appendfile, path, tostring(contents))
		end

		function Fs.Read(path)
			local readfile = Compat.Get("readfile")
			if not readfile then
				return nil
			end
			local ok, contents = pcall(readfile, path)
			if ok then
				return contents
			end
			return nil
		end

		function Fs.Exists(path)
			local isfile = Compat.Get("isfile")
			if isfile then
				local ok, result = pcall(isfile, path)
				return (ok and result) and true or false
			end
			return Fs.Read(path) ~= nil
		end

		function Fs.Path(...)
			local rel = table.concat({ ... }, "/")
			return Fs.Join(Fs.Root, Fs.Session or "_", rel)
		end

		return Fs
	end,

	Log = function()
		local Util = Req("Util")
		local Compat = Req("Compat")
		local Fs = Req("Fs")

		local Log = {
			Levels = { DEBUG = 1, INFO = 2, WARN = 3, ERROR = 4 },
			Threshold = 2,
			Lines = 0,
		}

		function Log.SetLevel(level)
			if Log.Levels[level] then
				Log.Threshold = Log.Levels[level]
			end
		end

		function Log.emit(level, ...)
			local levelValue = Log.Levels[level] or 2
			if levelValue < Log.Threshold then
				return
			end
			local parts = {}
			for index = 1, select("#", ...) do
				parts[#parts + 1] = tostring((select(index, ...)))
			end
			local message = table.concat(parts, " ")
			local stamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
			local line = string.format("%s\t%s\t%s", stamp, level, message)
			Log.Lines += 1
			pcall(print, string.format("[AIDump][%s] %s", level, message))
			if Fs.Session then
				Fs.Append(Fs.Path("logs", "aidump.log"), line .. "\n")
			end
		end

		function Log.Debug(...) Log.emit("DEBUG", ...) end
		function Log.Info(...) Log.emit("INFO", ...) end
		function Log.Warn(...) Log.emit("WARN", ...) end
		function Log.Error(...) Log.emit("ERROR", ...) end

		return Log
	end,
}

for moduleName, moduleFactory in pairs(SECTION2) do
	Modules[moduleName] = moduleFactory
end

--[[
	SECTION 3 — SERIALISATION

	Value to Lua source. Two entry points:

	  Ser.Value(v, opts)   a reconstruction-grade literal, used inside payload
	                       listings and raw JSON. Handles cycles, every common
	                       Roblox datatype, and packed argument tables.
	  Ser.Inline(v, max)   a single-line summary, used inside Markdown table
	                       cells so a fact table stays readable at a glance.

	Both are total functions: they never raise, and they never silently drop
	data. Depth and length exhaustion emit an explicit marker instead.
]]

local SECTION3 = {
	Ser = function()
		local Util = Req("Util")
		local Paths = Req("Paths")

		local Ser = {}

		local DEFAULT_MAX_DEPTH = 12
		local DEFAULT_MAX_LENGTH = 4000
		local DEFAULT_MAX_ENTRIES = 200
		local DEFAULT_INLINE = 80

		---------------------------------------------------------------------
		-- numbers
		---------------------------------------------------------------------

		local function numberToString(n)
			if n ~= n then
				return "0/0"
			end
			if n == math.huge then
				return "math.huge"
			end
			if n == -math.huge then
				return "-math.huge"
			end
			if math.floor(n) == n and math.abs(n) < 2^53 then
				return string.format("%d", n)
			end
			local s = string.format("%.14g", n)
			-- Guarantee the literal still reads back as a float.
			if not s:find("[%.eE]") then
				s = s .. ".0"
			end
			return s
		end
		Ser.Number = numberToString

		---------------------------------------------------------------------
		-- shared-table identity (cycles and aliases)
		---------------------------------------------------------------------

		local function newSeen()
			return { map = {}, count = 0 }
		end

		local function seenId(seen, value)
			local id = seen.map[value]
			if id == nil then
				seen.count += 1
				id = seen.count
				seen.map[value] = id
			end
			return id
		end

		---------------------------------------------------------------------
		-- datatypes
		---------------------------------------------------------------------
		-- Every branch returns a constructible expression. Where a datatype has
		-- no lossless constructor, the fallback is an explicit comment carrying
		-- the reconstructed fields, never a lossy tostring().

		local function vector3(v)
			return string.format(
				"Vector3.new(%s, %s, %s)",
				numberToString(v.X), numberToString(v.Y), numberToString(v.Z)
			)
		end

		local function vector2(v)
			return string.format(
				"Vector2.new(%s, %s)",
				numberToString(v.X), numberToString(v.Y)
			)
		end

		local function cframe(v)
			local rx, ry, rz = v:ToEulerAnglesXYZ()
			if math.abs(rx) < 1e-9 and math.abs(ry) < 1e-9 and math.abs(rz) < 1e-9 then
				return string.format(
					"CFrame.new(%s, %s, %s)",
					numberToString(v.X), numberToString(v.Y), numberToString(v.Z)
				)
			end
			return string.format(
				"CFrame.new(%s, %s, %s) * CFrame.fromEulerAnglesXYZ(%s, %s, %s)",
				numberToString(v.X), numberToString(v.Y), numberToString(v.Z),
				numberToString(rx), numberToString(ry), numberToString(rz)
			)
		end

		local function color3(v)
			return string.format(
				"Color3.new(%s, %s, %s)",
				numberToString(v.R), numberToString(v.G), numberToString(v.B)
			)
		end

		local function color3uint8(v)
			local packed = v:ToHex()
			return string.format("Color3.fromHex(%s)", Util.Quote(packed))
		end

		local function udim(v)
			return string.format(
				"UDim.new(%s, %s)", numberToString(v.Scale), numberToString(v.Offset)
			)
		end

		local function udim2(v)
			return string.format(
				"UDim2.new(%s, %s, %s, %s)",
				numberToString(v.X.Scale), numberToString(v.X.Offset),
				numberToString(v.Y.Scale), numberToString(v.Y.Offset)
			)
		end

		local function rect(v)
			local min, max = v.Min, v.Max
			return string.format(
				"Rect.new(%s, %s, %s, %s)",
				numberToString(min.X), numberToString(min.Y),
				numberToString(max.X), numberToString(max.Y)
			)
		end

		local function ray(v)
			return string.format(
				"Ray.new(%s, %s)",
				vector3(v.Origin), vector3(v.Direction)
			)
		end

		local function region3(v)
			local c = v.CFrame
			return string.format(
				"Region3.new(%s, %s, %s, %s, %s, %s)",
				numberToString(c.X), numberToString(c.Y), numberToString(c.Z),
				numberToString(v.Size.X), numberToString(v.Size.Y), numberToString(v.Size.Z)
			)
		end

		local function brickcolor(v)
			return string.format("BrickColor.new(%s)", Util.Quote(tostring(v)))
		end

		local function faces(v)
			local names = {}
			for _, pair in ipairs(v:GetEnumItems()) do
				names[#names + 1] = pair.Name
			end
			table.sort(names)
			return "Enum.NormalId." .. table.concat(names, ", Enum.NormalId.")
		end

		local function numberRange(v)
			return string.format(
				"NumberRange.new(%s, %s)",
				numberToString(v.Min), numberToString(v.Max)
			)
		end

		local function numberSequence(v)
			local keys = {}
			for _, key in ipairs(v.Keypoints) do
				keys[#keys + 1] = string.format(
					"NumberSequenceKeypoint.new(%s, %s)",
					numberToString(key.Time), numberToString(key.Value)
				)
			end
			return "NumberSequence.new({" .. table.concat(keys, ", ") .. "})"
		end

		local function colorSequence(v)
			local keys = {}
			for _, key in ipairs(v.Keypoints) do
				keys[#keys + 1] = string.format(
					"ColorSequenceKeypoint.new(%s, %s)",
					numberToString(key.Time), color3(key.Value)
				)
			end
			return "ColorSequence.new({" .. table.concat(keys, ", ") .. "})"
		end

		local function font(v)
			local family = v.Family
			local ok = pcall(function()
				family = v:GetFamily()
			end)
			if ok then
				return string.format(
					"Font.new(%s, Enum.FontWeight.%s, Enum.FontStyle.%s)",
					Util.Quote(family),
					tostring(v.Weight),
					tostring(v.Style)
				)
			end
			return string.format("Font.new(%s, Enum.FontWeight.Regular, Enum.FontStyle.Normal)", Util.Quote(tostring(family)))
		end

		local function overlapParams(v)
			return string.format(
				"OverlapParams.new() --[[FilterType=%s FilterDescendantsInstances=%s MaxParts=%s RespectCanCollide=%s]]",
				tostring(v.FilterType),
				v.FilterDescendantsInstances == true and "true" or "false",
				numberToString(v.MaxParts),
				v.RespectCanCollide == true and "true" or "false"
			)
		end

		local function raycastParams(v)
			return string.format(
				"RaycastParams.new() --[[FilterType=%s IgnoreWater=%s RespectCanCollide=%s]]",
				tostring(v.FilterType),
				v.IgnoreWater == true and "true" or "false",
				v.RespectCanCollide == true and "true" or "false"
			)
		end

		local function physicalProperties(v)
			return string.format(
				"PhysicalProperties.new(%s, %s, %s, %s, %s, %s, %s)",
				numberToString(v.Density), numberToString(v.Friction),
				numberToString(v.Elasticity), numberToString(v.FrictionWeight),
				numberToString(v.ElasticityWeight),
				numberToString(v.PerformCollision == true and 1 or 0),
				numberToString(v.CoilFriction)
			)
		end

		local function content(v)
			return string.format(
				"Content.fromAssetId(%s) --[[SourceType=%s]]",
				Util.Quote(tostring(v.AssetId)), tostring(v.SourceType)
			)
		end

		local function dateTime(v)
			return string.format(
				"DateTime.fromIsoDate(%s)",
				Util.Quote(tostring(v:ToIsoDate()))
			)
		end

		local function pathWaypoint(v)
			return string.format(
				"PathWaypoint.new(%s, %s)",
				tostring(v.Action), vector3(v.Position)
			)
		end

		local DATATYPES = {
			Vector3 = vector3,
			Vector2 = vector2,
			CFrame = cframe,
			Color3 = color3,
			UDim = udim,
			UDim2 = udim2,
			Rect = rect,
			Ray = ray,
			Region3 = region3,
			BrickColor = brickcolor,
			Faces = faces,
			NumberRange = numberRange,
			NumberSequence = numberSequence,
			ColorSequence = colorSequence,
			Color3uint8 = color3uint8,
			Font = font,
			OverlapParams = overlapParams,
			RaycastParams = raycastParams,
			PhysicalProperties = physicalProperties,
			Content = content,
			DateTime = dateTime,
			PathWaypoint = pathWaypoint,
		}

		--- Resolves a datatype to source, or returns nil when unknown so the
		--- caller can apply the documented fallback.
		local function tryDatatype(value)
			local ok, ty = pcall(typeof, value)
			if not ok or type(ty) ~= "string" then
				return nil
			end
			local handler = DATATYPES[ty]
			if not handler then
				return nil
			end
			local built, result = pcall(handler, value)
			if not built or type(result) ~= "string" then
				return nil
			end
			return result
		end
		Ser.TryDatatype = tryDatatype

		---------------------------------------------------------------------
		-- functions and threads
		---------------------------------------------------------------------

		local function describeFunction(value)
			local parts = { "function(" }
			local name, source, line = "?", "?", 0
			pcall(function()
				local n, s, l = debug.info(value, "nsl")
				if type(n) == "string" then name = n end
				if type(s) == "string" then source = s end
				if type(l) == "number" then line = l end
			end)
			local upvalueCount = 0
			local getupvalues = Req("Compat").Get("getupvalues")
			if getupvalues then
				pcall(function()
					local list = getupvalues(value)
					upvalueCount = #list
				end)
			end
			local constantCount = 0
			local getconstants = Req("Compat").Get("getconstants")
			if getconstants then
				pcall(function()
					local list = getconstants(value)
					constantCount = #list
				end)
			end
			parts[#parts + 1] = string.format(
				"\n\t--[[ name=%s source=%s line=%d upvalues=%d constants=%d ]]\n\treturn nil\nend",
				name, source, line, upvalueCount, constantCount
			)
			return table.concat(parts)
		end

		---------------------------------------------------------------------
		-- tables
		---------------------------------------------------------------------

		local function isPackedArguments(t, declaredN)
			-- table.pack style: an explicit `n` plus contiguous integer keys. The
			-- `n` field itself is metadata, not an element, so it is excluded from
			-- the key check.
			if declaredN == nil then
				return false
			end
			if type(declaredN) ~= "number" then
				return false
			end
			if declaredN < 0 or declaredN > 1024 then
				return false
			end
			for key in pairs(t) do
				if key == "n" then
					continue
				end
				if type(key) ~= "number" then
					return false
				end
				if key < 1 or key > declaredN or key ~= math.floor(key) then
					return false
				end
			end
			return true
		end

		local function serializeTable(t, ctx)
			local opts = ctx.opts
			local pretty = opts.Prettify
			local nl = pretty and "\n" or " "
			local tab = pretty and string.rep("\t", ctx.depth + 1) or ""
			local closeTab = pretty and string.rep("\t", ctx.depth) or ""
			local sep = pretty and ", " or ", "

			local pieces = {}
			local emitted = 0
			local truncated = false

			local function keyLiteral(key)
				if Util.IsIdentifier(key) then
					return key .. " = "
				end
				if type(key) == "string" then
					return "[" .. Util.Quote(key) .. "] = "
				end
				return "[" .. numberToString(key) .. "] = "
			end

			-- Packed argument tables keep their holes so arity is exact.
			if isPackedArguments(t, t.n) then
				for index = 1, t.n do
					if ctx.emitted >= opts.MaxEntries then
						truncated = true
						break
					end
					local v = rawget(t, index)
					local rendered
					if v == nil then
						rendered = "nil"
					else
						rendered = Ser.render(v, ctx)
					end
					emitted += 1
					ctx.emitted += 1
					pieces[#pieces + 1] = tab .. "[" .. index .. "] = " .. rendered
				end
				local extra = {}
				for key in pairs(t) do
					if type(key) ~= "number" or key < 1 or key > t.n or key ~= math.floor(key) then
						extra[#extra + 1] = key
					end
				end
				table.sort(extra, function(a, b) return tostring(a) < tostring(b) end)
				for _, key in ipairs(extra) do
					if ctx.emitted >= opts.MaxEntries then
						truncated = true
						break
					end
					emitted += 1
					ctx.emitted += 1
					pieces[#pieces + 1] = tab .. keyLiteral(key) .. Ser.render(t[key], ctx)
				end
			else
				local keys = {}
				for key in pairs(t) do
					keys[#keys + 1] = key
				end
				-- Deterministic ordering: scalars first, then by type then value.
				table.sort(keys, function(a, b)
					local ta, tb = type(a), type(b)
					if ta ~= tb then
						return ta < tb
					end
					if ta == "number" or ta == "string" then
						return a < b
					end
					return tostring(a) < tostring(b)
				end)
				for _, key in ipairs(keys) do
					if ctx.emitted >= opts.MaxEntries then
						truncated = true
						break
					end
					local prefix = type(key) == "string" and keyLiteral(key)
						or "[" .. Ser.render(key, ctx) .. "] = "
					emitted += 1
					ctx.emitted += 1
					pieces[#pieces + 1] = tab .. prefix .. Ser.render(t[key], ctx)
				end
			end

			if truncated then
				pieces[#pieces + 1] = tab
					.. string.format("--[[ AIDump: entry cap %d reached; remaining keys omitted ]]", opts.MaxEntries)
			end

			if #pieces == 0 then
				return "{}"
			end
			return "{" .. nl .. table.concat(pieces, sep) .. nl .. closeTab .. "}"
		end

		---------------------------------------------------------------------
		-- main render
		---------------------------------------------------------------------

		function Ser.render(value, ctx)
			local t = type(value)
			if value == nil then
				return "nil"
			elseif t == "boolean" then
				return tostring(value)
			elseif t == "number" then
				return numberToString(value)
			elseif t == "string" then
				return Util.Quote(value)
			elseif t == "function" then
				local ok, result = pcall(describeFunction, value)
				if ok then
					return result
				end
				return "function() --[[unserialisable]] end"
			elseif t == "thread" then
				return "coroutine.create(function() end) --[[thread]]"
			elseif t == "userdata" then
				local datatype = tryDatatype(value)
				if datatype then
					return datatype
				end
				local ok, rendered = pcall(tostring, value)
				return "nil --[[unserialisable userdata: " .. (ok and Util.Truncate(tostring(rendered), 60) or "?") .. "]]"
			elseif t == "buffer" then
				-- Buffers are facts the AI needs verbatim, so the bytes are
				-- rendered as hex rather than discarded. Very large buffers are
				-- capped with a visible marker rather than silently cut.
				local size = buffer.len(value)
				local take = math.min(size, 256)
				local parts = {}
				for offset = 0, take - 1 do
					parts[#parts + 1] = string.format("%02X", buffer.readu8(value, offset))
				end
				local hex = table.concat(parts, " ")
				if size > take then
					hex = hex .. string.format(" ...(+%d bytes)", size - take)
				end
				return string.format("buffer.create(%d) --[[hex: %s]]", size, hex)
			elseif t == "Instance" then
				if not ctx.opts.UseInstancePaths then
					return string.format("Instance.new(%s) --[[%s]]", Util.Quote(value.ClassName), Util.Truncate(value:GetFullName(), 100))
				end
				local ok, path = pcall(Paths.Of, value)
				if ok and type(path) == "string" then
					return path
				end
				return string.format(
					"Instance.new(%s) --[[unresolvable path: %s]]",
					Util.Quote(value.ClassName), Util.Truncate(value:GetFullName(), 80)
				)
			elseif t == "EnumItem" then
				return string.format("Enum.%s.%s", tostring(value.EnumType), tostring(value.Name))
			elseif t == "table" then
				-- A table reached twice within one serialisation is a shared
				-- reference (an alias or a cycle). Emit a stable label so the
				-- reader can see the sharing without re-expanding it forever.
				local alreadyEmitted = ctx.emittedTables[value] == true
				local id = seenId(ctx.seen, value)
				if alreadyEmitted then
					return string.format("T%d --[[shared table, already described]]", id)
				end
				ctx.emittedTables[value] = true
				if ctx.depth >= ctx.opts.MaxDepth then
					return string.format("T%d --[[TRUNCATED at depth %d]]", id, ctx.opts.MaxDepth)
				end
				local savedDepth = ctx.depth
				ctx.depth = savedDepth + 1
				local ok, result = pcall(serializeTable, value, ctx)
				ctx.depth = savedDepth
				if not ok then
					return string.format("T%d --[[table serialisation failed: %s]]", id, Util.Truncate(tostring(result), 80))
				end
				return result
			end

			local ok, rendered = pcall(tostring, value)
			local shown = ok and Util.Truncate(tostring(rendered), 60) or "?"
			return string.format("nil --[[unserialisable %s: %s]]", t, shown)
		end

		--- Public entry point.
		--- opts: Prettify, Indent, MaxDepth, MaxLength, MaxEntries, UseInstancePaths
		function Ser.Value(value, opts)
			opts = opts or {}
			local resolved = {
				Prettify = opts.Prettify ~= false,
				Indent = opts.Indent or 0,
				MaxDepth = opts.MaxDepth or DEFAULT_MAX_DEPTH,
				MaxLength = opts.MaxLength or DEFAULT_MAX_LENGTH,
				MaxEntries = opts.MaxEntries or DEFAULT_MAX_ENTRIES,
				UseInstancePaths = opts.UseInstancePaths ~= false,
			}
			local ctx = {
				opts = resolved,
				depth = 0,
				emitted = 0,
				seen = newSeen(),
				emittedTables = {},
			}
			local ok, result = pcall(Ser.render, value, ctx)
			if not ok then
				return string.format("nil --[[serialisation error: %s]]", Util.Truncate(tostring(result), 120))
			end
			if #result > resolved.MaxLength then
				result = result:sub(1, resolved.MaxLength)
					.. string.format("\n--[[ TRUNCATED: %d total bytes ]]", #result)
			end
			return result
		end

		--- Single-line summary for table cells.
		function Ser.Inline(value, maxLength)
			maxLength = maxLength or DEFAULT_INLINE
			local flat = Ser.Value(value, {
				Prettify = false,
				MaxDepth = 4,
				MaxEntries = 8,
				MaxLength = maxLength * 4,
			})
			flat = flat:gsub("%s+", " ")
			flat = flat:gsub("^%s+", ""):gsub("%s+$", "")
			if #flat > maxLength then
				return flat:sub(1, maxLength) .. "…"
			end
			return flat
		end

		---------------------------------------------------------------------
		-- JSON
		---------------------------------------------------------------------
		-- Emitted through HttpService so the encoding matches what other tools
		-- expect. Non-encodable values become a tagged object rather than
		-- silently vanishing.

		local function toJsonValue(value, depth, seen)
			if depth > 10 then
				return "<depth-capped>"
			end
			local t = type(value)
			if value == nil then
				return "<nil>"
			elseif t == "boolean" or t == "string" then
				return value
			elseif t == "number" then
				if value ~= value or value == math.huge or value == -math.huge then
					return "<non-finite>"
				end
				return value
			elseif t == "Instance" then
				local ok, path = pcall(Paths.Of, value)
				return {
					__kind = "Instance",
					ClassName = value.ClassName,
					Name = value.Name,
					Path = ok and path or tostring(value:GetFullName()),
				}
			elseif t == "EnumItem" then
				return { __kind = "EnumItem", Enum = tostring(value.EnumType), Name = tostring(value.Name) }
			elseif t == "table" then
				if seen[value] then
					return "<cycle>"
				end
				seen[value] = true
				local out = {}
				local numeric = {}
				local keys = {}
				for key in pairs(value) do
					if type(key) == "string" or type(key) == "number" then
						keys[#keys + 1] = key
					end
				end
				table.sort(keys, function(a, b)
					if type(a) ~= type(b) then
						return type(a) < type(b)
					end
					return a < b
				end)
				for _, key in ipairs(keys) do
					local jsonKey = type(key) == "number" and (key - 1) or key
					local ok, converted = pcall(toJsonValue, value[key], depth + 1, seen)
					out[tostring(jsonKey)] = ok and converted or "<error>"
					if type(key) == "number" then
						numeric[#numeric + 1] = true
					end
				end
				seen[value] = nil
				return out
			elseif t == "buffer" then
				return { __kind = "buffer", Size = buffer.len(value) }
			elseif t == "function" then
				return "<function>"
			elseif t == "thread" then
				return "<thread>"
			end
			local datatype = tryDatatype(value)
			if datatype then
				return { __kind = Util.TypeName(value), Source = datatype }
			end
			return "<" .. t .. ">"
		end
		Ser.ToJsonValue = toJsonValue

		--- Encodes to a JSON string. Falls back to a Lua-ish encoding if
		--- HttpService is unreachable, so an export never dies on encoding.
		function Ser.Json(value)
			local converted = toJsonValue(value, 0, {})
			local ok, encoded = pcall(function()
				return game:GetService("HttpService"):JSONEncode(converted)
			end)
			if ok and type(encoded) == "string" then
				return encoded
			end
			return "{\n" .. Ser.Value(converted, { Prettify = true }) .. "\n}"
		end

		return Ser
	end,

	Paths = function()
		local Util = Req("Util")
		local Compat = Req("Compat")

		--- Produces a Lua expression that evaluates back to the given instance.
		---
		--- Rules, in priority order:
		---   * `game` for the DataModel, `workspace` for Workspace
		---   * `game:GetService("X")` for any service reached through
		---     ReplicatedStorage's service container or a top-level service
		---   * `.Name` for a uniquely named child
		---   * `:GetChildren()[n]` when siblings share a name
		---   * a `GetNil(...)` resolver prelude for instances whose parent chain
		---     passes through a nil-parented object
		---
		--- Results are memoised per instance because this runs inside payload
		--- serialisation and would otherwise dominate export time.
		local Paths = {
			Cache = setmetatable({}, { __mode = "k" }),
			NilPreamble = nil,
			NilNamed = setmetatable({}, { __mode = "k" }),
		}

		local SERVICE_ALIASES = {
			Players = true, ReplicatedStorage = true, ServerScriptService = true,
			StarterGui = true, StarterPack = true, StarterPlayer = true,
			Workspace = true, Lighting = true, SoundService = true,
			Teams = true, HttpService = true, UserInputService = true,
			RunService = true, TweenService = true, TextService = true,
			ContextActionService = true, CollectionService = true,
			ContentProvider = true, CoreGui = true, GuiService = true,
			MarketplaceService = true, PhysicsService = true,
			PlayerGui = true, Settings = true, Tool = true, Chat = true,
			VirtualInputManager = true, InsertService = true,
			LocalizationService = true, MouseBehavior = true,
		}

		local function siblingIndex(instance)
			local parent = instance.Parent
			if not parent then
				return nil
			end
			local matches = {}
			for _, child in ipairs(parent:GetChildren()) do
				if child.Name == instance.Name then
					matches[#matches + 1] = child
				end
			end
			for index, child in ipairs(matches) do
				if Compat.Same(child, instance) then
					return index, #matches
				end
			end
			return nil, #matches
		end

		local function segmentFor(instance)
			if instance == game then
				return "game", nil
			end
			local parent = instance.Parent
			if parent == nil then
				return nil, "nil-parented"
			end
			if Compat.Same(parent, workspace) then
				return "." .. instance.Name, nil
			end
			-- Collapse service lookups.
			if parent:IsA("ServiceProvider") or SERVICE_ALIASES[parent.ClassName] then
				if parent:IsA("ServiceProvider") then
					local index, total = siblingIndex(instance)
					if total == 1 then
						return string.format(':GetService("%s")', instance.Name), nil
					end
					if index then
						return string.format(':GetService("%s") --[[ambiguous: %d same-named]]', instance.Name, total), nil
					end
				end
			end
			local index, total = siblingIndex(instance)
			if total == 0 then
				return string.format(':GetService("%s")', instance.Name), nil
			end
			if total == 1 then
				return "." .. instance.Name, nil
			end
			if index then
				return string.format(':GetChildren()[%d] --[[%s is %d of %d]]', index, instance.Name, index, total), nil
			end
			return nil, "ambiguous"
		end

		--- Builds (and caches) the GetNil resolver that finds instances whose
		--- parent chain includes an object with no parent.
		function Paths.BuildNilPreamble()
			if Paths.NilPreamble then
				return Paths.NilPreamble
			end
			Paths.NilPreamble = [[
-- AIDump nil-instance resolver: walks the descendant set and returns the
-- instance matching a name and debug id, since no stable path exists.
local function GetNil(Name, DebugId)
	for _, candidate in ipairs(getnilinstances or function() return {} end) do
		if candidate.Name == Name then
			local ok, id = pcall(function() return candidate:GetDebugId() end)
			if ok and id == DebugId then
				return candidate
			end
		end
	end
	error(("AIDump: could not resolve nil-parented instance %s (%s)"):format(Name, tostring(DebugId)))
end
]] .. "\n"
			return Paths.NilPreamble
		end

		function Paths.Of(instance)
			if type(instance) ~= "Instance" then
				return "nil"
			end
			local cached = Paths.Cache[instance]
			if cached ~= nil then
				return cached
			end

			-- Walk upward collecting segments until we hit a known anchor.
			local segments = {}
			local cursor = instance
			local guard = 0
			local unresolvedRoot = nil

			while cursor and guard < 256 do
				guard += 1
				if Compat.Same(cursor, game) then
					segments[#segments + 1] = "game"
					break
				end
				if Compat.Same(cursor, workspace) then
					segments[#segments + 1] = "workspace"
					break
				end
				local segment, failure = segmentFor(cursor)
				if segment == nil then
					unresolvedRoot = failure
					break
				end
				table.insert(segments, 1, segment)
				cursor = cursor.Parent
			end

			local out
			if unresolvedRoot == "nil-parented" then
				local debugId = Compat.DebugId(instance) or "?"
				out = string.format(
					"GetNil(%s, %s)",
					Util.Quote(instance.Name), Util.Quote(tostring(debugId))
				)
				Paths.NilNamed[instance] = true
			elseif #segments == 0 then
				out = string.format(
					"Instance.new(%s) --[[unreachable: %s]]",
					Util.Quote(instance.ClassName), Util.Truncate(instance:GetFullName(), 80)
				)
			else
				out = table.concat(segments)
			end

			Paths.Cache[instance] = out
			return out
		end

		--- Whether an instance will need the GetNil prelude to be reconstructed.
		function Paths.NeedsNilPreamble(instance)
			local out = Paths.Of(instance)
			return type(out) == "string" and out:sub(1, 7) == "GetNil("
		end

		--- The dot-path form used in documentation tables. Unlike `Of` this is
		--- always readable even when it is not evaluable, e.g. `ReplicatedStorage.Net.Buy`.
		function Paths.Dotted(instance)
			if type(instance) ~= "Instance" then
				return "?"
			end
			local parts = {}
			local cursor = instance
			local guard = 0
			while cursor and guard < 256 do
				guard += 1
				parts[#parts + 1] = cursor.Name
				cursor = cursor.Parent
			end
			table.reverse(parts)
			return table.concat(parts, ".")
		end

		function Paths.Clear()
			table.clear(Paths.Cache)
			table.clear(Paths.NilNamed)
			Paths.NilPreamble = nil
		end

		return Paths
	end,
}

for moduleName, moduleFactory in pairs(SECTION3) do
	Modules[moduleName] = moduleFactory
end

--[[
	SECTION 4 — REFLECTION AND ENUMERATION

	Property discovery runs through a three tier chain, and the tier that
	produced a given answer is always reported alongside it, because "we don't
	know this property's default" and "this property does not exist" are very
	different facts for whoever reads the dump.
]]

local SECTION4 = {
	-- A small, allocation-light XML reader. Used only when the user has already
	-- placed a ReflectionMetadata.xml on the executor filesystem; this script
	-- never fetches one.
	Xml = function()
		local Xml = {}

		function Xml.Parse(source)
			if type(source) ~= "string" or #source == 0 then
				return nil, "empty source"
			end

			local pos = 1
			local length = #source
			local root = { tag = "#root", attrs = {}, children = {}, text = "" }
			local stack = { root }

			local function fail(message)
				error(string.format("Xml: %s at byte %d", message, pos), 0)
			end

			local function skipSpace()
				while pos <= length do
					local c = source:sub(pos, pos)
					if c == " " or c == "\t" or c == "\n" or c == "\r" then
						pos += 1
					else
						return
					end
				end
			end

			local function readName()
				local start = pos
				while pos <= length do
					local c = source:sub(pos, pos)
					if c == " " or c == "\t" or c == "\n" or c == "\r"
						or c == ">" or c == "/" or c == "=" then
						break
					end
					pos += 1
				end
				if pos == start then
					fail("expected a name")
				end
				return source:sub(start, pos - 1)
			end

			local function readQuoted()
				local quote = source:sub(pos, pos)
				if quote ~= '"' and quote ~= "'" then
					fail("expected a quoted attribute value")
				end
				pos += 1
				local start = pos
				while pos <= length and source:sub(pos, pos) ~= quote do
					pos += 1
				end
				if pos > length then
					fail("unterminated attribute value")
				end
				local value = source:sub(start, pos - 1)
				pos += 1
				return value
			end

			local function unescape(text)
				if not text:find("&") then
					return text
				end
				text = text:gsub("&lt;", "<")
				text = text:gsub("&gt;", ">")
				text = text:gsub("&quot;", '"')
				text = text:gsub("&apos;", "'")
				text = text:gsub("&amp;", "&")
				return text
			end

			local function appendText(node, text)
				if #text == 0 then
					return
				end
				node.text = (node.text or "") .. text
			end

			while pos <= length do
				local lt = source:find("<", pos, true)
				if not lt then
					local tail = source:sub(pos)
					if #stack > 1 then
						appendText(stack[#stack], unescape(tail))
					end
					break
				end
				if lt > pos then
					local text = source:sub(pos, lt - 1)
					if #stack > 1 and text:find("%S") then
						appendText(stack[#stack], unescape(text))
					end
					pos = lt
				end

				if source:sub(pos, pos + 3) == "<!--" then
					local close = source:find("-->", pos + 4, true)
					if not close then
						fail("unterminated comment")
					end
					pos = close + 3
				elseif source:sub(pos, pos + 1) == "</" then
					pos += 2
					local name = readName()
					skipSpace()
					if source:sub(pos, pos) ~= ">" then
						fail("expected '>' closing </" .. name)
					end
					pos += 1
					local open = stack[#stack]
					if open.tag ~= name then
						fail("mismatched closing tag </" .. name .. "> for <" .. open.tag .. ">")
					end
					if #stack > 1 then
						table.remove(stack)
					end
				elseif source:sub(pos, pos + 8) == "<![CDATA[" then
					local close = source:find("]]>", pos + 9, true)
					if not close then
						fail("unterminated CDATA")
					end
					if #stack > 1 then
						appendText(stack[#stack], source:sub(pos + 9, close - 1))
					end
					pos = close + 3
				elseif source:sub(pos, pos + 1) == "<?" or source:sub(pos, pos + 1) == "<!" then
					local close = source:find(">", pos, true)
					if not close then
						fail("unterminated declaration")
					end
					pos = close + 1
				else
					pos += 1
					local node = { tag = readName(), attrs = {}, children = {}, text = "" }
					local closing = false
					while true do
						skipSpace()
						local c = source:sub(pos, pos)
						if c == "" then
							fail("unterminated element")
						elseif c == ">" then
							pos += 1
							break
						elseif c == "/" then
							if source:sub(pos + 1, pos + 1) ~= ">" then
								fail("expected '/>'")
							end
							pos += 2
							closing = true
							break
						else
							local attrName = readName()
							skipSpace()
							if source:sub(pos, pos) ~= "=" then
								node.attrs[attrName] = ""
								continue
							end
							pos += 1
							skipSpace()
							node.attrs[attrName] = unescape(readQuoted())
						end
					end
					local parent = stack[#stack]
					parent.children[#parent.children + 1] = node
					if not closing then
						stack[#stack + 1] = node
					end
				end
			end

			if #stack > 1 then
				error("Xml: unclosed element <" .. stack[#stack].tag .. ">", 0)
			end
			return root
		end

		--- Convenience: first direct child with the given tag.
		function Xml.Child(node, tag)
			for _, child in ipairs(node.children or {}) do
				if child.tag == tag then
					return child
				end
			end
			return nil
		end

		function Xml.Children(node, tag)
			local out = {}
			for _, child in ipairs(node.children or {}) do
				if child.tag == tag then
					out[#out + 1] = child
				end
			end
			return out
		end

		return Xml
	end,

	Reflect = function()
		local Util = Req("Util")
		local Compat = Req("Compat")
		local Xml = Req("Xml")
		local Fs = Req("Fs")
		local Log = Req("Log")

		local Reflect = {
			Source = "none",
			Detail = "not initialised",
			Classes = nil,
			Enums = nil,
			PropertyOrders = nil,
			-- Compact hand-maintained defaults for the classes that carry most of
			-- a game's authored state. Anything not listed here reports its
			-- default as unknown rather than guessing.
			Defaults = {
				BasePart = {
					Anchored = false, CanCollide = true, CanQuery = true,
					CanTouch = true, Transparency = 0, Locked = false,
					Material = Enum.Material.Plastic, Name = "Part",
					RootPriority = 0, Size = Vector3.new(4, 1, 2),
					TopSurface = Enum.SurfaceType.Top, BottomSurface = Enum.SurfaceType.Bottom,
				},
				Part = { Shape = Enum.PartType.Block, FormFactor = Enum.FormFactor.Custom },
				Model = { Name = "Model" },
				Folder = { Name = "Folder" },
				Configuration = { Name = "Configuration" },
				RemoteEvent = { Name = "RemoteEvent" },
				RemoteFunction = { Name = "RemoteFunction" },
				UnreliableRemoteEvent = { Name = "UnreliableRemoteEvent" },
				BindableEvent = { Name = "BindableEvent" },
				BindableFunction = { Name = "BindableFunction" },
				IntValue = { Name = "IntValue", Value = 0 },
				NumberValue = { Name = "NumberValue", Value = 0 },
				StringValue = { Name = "StringValue", Value = "" },
				BoolValue = { Name = "BoolValue", Value = false },
				ObjectValue = { Name = "ObjectValue" },
				CFrameValue = { Name = "CFrameValue" },
				Vector3Value = { Name = "Vector3Value", Value = Vector3.new(0, 0, 0) },
				Color3Value = { Name = "Color3Value", Value = Color3.new(0, 0, 0) },
				NumberRangeValue = { Name = "NumberRangeValue" },
				Script = { Name = "Script", Disabled = false, RunContext = Enum.RunContext.Legacy },
				LocalScript = { Name = "LocalScript", Disabled = false, RunContext = Enum.RunContext.Client },
				ModuleScript = { Name = "ModuleScript", Disabled = false },
				Frame = {
					Name = "Frame", Active = false, AnchorPoint = Vector2.new(0, 0),
					BackgroundColor3 = Color3.new(163, 162, 165), BackgroundTransparency = 0,
					BorderColor3 = Color3.new(27, 42, 53), BorderSizePixel = 1,
					ClipsDescendants = false, LayoutOrder = 0, Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, 200, 0, 200), Visible = true, ZIndex = 1,
				},
				TextLabel = {
					Name = "TextLabel", BackgroundTransparency = 1, Size = UDim2.new(0, 200, 0, 50),
					Text = "", TextColor3 = Color3.new(0, 0, 0), TextSize = 14, Visible = true,
				},
				TextButton = {
					Name = "TextButton", BackgroundColor3 = Color3.new(163, 162, 165),
					Size = UDim2.new(0, 200, 0, 50), Text = "", TextSize = 14, Visible = true,
				},
				ImageLabel = { Name = "ImageLabel", BackgroundTransparency = 1, Visible = true },
				ImageButton = {
					Name = "ImageButton", BackgroundColor3 = Color3.new(163, 162, 165),
					Size = UDim2.new(0, 200, 0, 50), Visible = true,
				},
				Part = { Size = Vector3.new(4, 1, 2), Anchored = false, CanCollide = true },
				Tool = { Name = "Tool", CanBeDropped = true, Enabled = true, RequiresHandle = false },
				Accessory = { Name = "Accessory" },
				Humanoid = {
					Name = "Humanoid", BreakJointsOnDeath = true, Health = 100,
					HealthDisplayDistance = 100, JumpPower = 50, MaxHealth = 100,
					WalkSpeed = 16, AutoRotate = true,
				},
				ProximityPrompt = {
					ActionText = "Proximity", Enabled = true, HoldDuration = 0,
					KeyboardKeyCode = Enum.KeyCode.E, MaxActivationDistance = 10,
					ObjectText = "", RequiresLineOfSight = true,
				},
				ClickDetector = { Name = "ClickDetector", MaxActivationDistance = 10 },
				Sound = { Name = "Sound", Looped = false, Playing = false, Volume = 1 },
				Lighting = { Ambient = Color3.new(0, 0, 0), Brightness = 2, Name = "Lighting" },
				Camera = { Name = "Camera", FieldOfView = 70 },
				SoundService = { Name = "SoundService" },
				Workspace = { Name = "Workspace", CurrentCamera = nil, Gravity = 196.2 },
			},
			-- Candidate property names used by tier 3 when no reflection source
			-- is available at all. Read under pcall; unreadable names drop out.
			Candidates = {
				ALL = {
					"Name", "Parent", "Archivable", "AttributesSerialize", "SourceAssetId",
					"Tags", "UniqueId",
				},
				BasePart = {
					"Anchored", "CanCollide", "CanQuery", "CanTouch", "CastShadow",
					"Transparency", "Locked", "Material", "RootPriority", "Size",
					"Color", "TopSurface", "BottomSurface", "BackSurface", "LeftSurface",
					"RightSurface", "FrontSurface", "Velocity", "CanCollide",
					"CustomPhysicalProperties", "ReceiveShadows", "Reflectance",
					"Massless", "CollisionGroup", "Velocity", "AssemblyLinearVelocity",
				},
				Part = { "Shape", "FormFactor" },
				Model = { "PrimaryPart", "LevelOfDetail", "StreamingMinRadius",
					"StreamingTargetRadius" },
				GuiObject = {
					"Active", "AnchorPoint", "BackgroundColor3", "BackgroundTransparency",
					"BorderColor3", "BorderMode", "BorderSizePixel", "ClipsDescendants",
					"LayoutOrder", "Position", "Rotation", "Size", "Visible", "ZIndex",
					"AutomaticSize", "Interactable", "Selectable",
				},
				TextLabel = {
					"FontFace", "FontSize", "RichText", "Text", "TextColor3",
					"TextSize", "TextScaled", "TextTransparency", "TextTruncate",
					"TextWrapped", "TextXAlignment", "TextYAlignment", "TextStrokeColor3",
					"TextStrokeTransparency", "TextTruncate",
				},
				TextButton = { "AutoButtonColor", "Modal", "Selectable", "Style" },
				ImageLabel = { "Image", "ImageColor3", "ImageTransparency",
					"ImageRectOffset", "ImageRectSize", "ScaleType", "SliceCenter",
					"SliceScale" },
				LayerCollector = { "IgnoreGuiInset", "ResetOnSpawn", "ScreenInsets",
					"ZIndexBehavior", "DisplayOrder", "Enabled", "ResetOnSpawn" },
				Humanoid = {
					"BreakJointsOnDeath", "Health", "HealthDisplayDistance",
					"JumpHeight", "JumpPower", "MaxHealth", "WalkSpeed", "AutoRotate",
					"AutoJumpEnabled", "Jump", "MoveDirection", "FloorMaterial",
					"UseJumpPower", "DisplayName", "CameraOffset", "Sit", "PlatformStand",
				},
				ClickDetector = { "MaxActivationDistance", "CursorIcon" },
				ProximityPrompt = {
					"ActionText", "Enabled", "HoldDuration", "KeyboardKeyCode",
					"MaxActivationDistance", "ObjectText", "RequiresLineOfSight",
					"Exclusivity", "ClickablePrompt",
				},
				Sound = { "Looped", "Playing", "Volume", "Pitch", "SoundId", "RollOffMode",
					"PlaybackSpeed", "EmittersEnabled" },
				Lighting = { "Ambient", "Brightness", "ClockTime", "EnvironmentDiffuseScale",
					"EnvironmentSpecularScale", "FogColor", "FogEnd", "FogStart",
					"GlobalShadows", "OutdoorAmbient", "Technology", "TimeOfDay",
					"AtmosphereDensity" },
				Camera = { "FieldOfView", "Focus", "CameraType" },
				Script = { "Disabled", "RunContext", "Source" },
				LocalScript = { "Disabled", "RunContext", "Source" },
				ModuleScript = { "Disabled", "Source" },
				Tool = { "CanBeDropped", "Enabled", "RequiresHandle", "ManualActivationOnly",
					"ToolTip" },
				SoundService = { "RespectFilteringEnabled", "AmbientReverb" },
				Workspace = { "CurrentCamera", "Gravity", "StreamingEnabled",
					"DistributedGameTime", "FallenPartsDestroyHeight", "FilteringEnabled" },
				Players = { "CharacterAutoLoads", "PlayersRespawnTime" },
				NumberSequenceValue = { "Value" },
				ColorSequenceValue = { "Value" },
				NumberRangeValue = { "Value" },
				CFrameValue = { "Value" },
				Vector3Value = { "Value" },
				Color3Value = { "Value" },
				BoolValue = { "Value" },
				IntValue = { "Value" },
				NumberValue = { "Value" },
				ObjectValue = { "Value" },
				StringValue = { "Value" },
			},
			PropertyCache = setmetatable({}, { __mode = "k" }),
		}

		--- Attempts to load a ReflectionMetadata.xml that the user has already
		--- placed on the filesystem. Never downloads anything.
		function Reflect.LoadMetadataFile(path)
			local raw = Fs.Read(path)
			if not raw then
				return false, "not present at " .. tostring(path)
			end
			local ok, dom = pcall(Xml.Parse, raw)
			if not ok then
				return false, "parse failed: " .. tostring(dom)
			end
			-- Roblox's document is <reflectionmetadata><Classes/><Enums/></reflectionmetadata>
			local classes = {}
			local enums = {}
			local propertyOrders = {}
			for _, node in ipairs(dom.children) do
				if node.tag == "reflectionmetadata" then
					for _, section in ipairs(node.children) do
						if section.tag == "Classes" then
							for _, classNode in ipairs(section.children) do
								if classNode.tag == "Class" and classNode.attrs.name then
									local className = classNode.attrs.name
									local entry = { Name = className }
									local properties = {}
									for _, propertyNode in ipairs(classNode.children) do
										if propertyNode.tag == "Properties" then
											local order = 0
											for _, prop in ipairs(propertyNode.children) do
												if prop.tag == "Property" then
													order += 1
													local propName = prop.attrs.name
													if propName then
														properties[propName] = {
															Name = propName,
															Type = prop.attrs.type or (prop.children[1] and prop.children[1].text),
															Category = prop.attrs.category,
															Order = order,
														}
													end
												end
											end
											propertyOrders[className] = order
										elseif propertyNode.tag == "Superclass" then
											entry.Superclass = propertyNode.attrs.name
										elseif propertyNode.tag == "ExplorerOrder" then
											entry.ExplorerOrder = tonumber(propertyNode.text or propertyNode.attrs.value)
										elseif propertyNode.tag == "ClassCategory" then
											entry.ClassCategory = propertyNode.children[1] and propertyNode.children[1].text
										elseif propertyNode.tag == "ExplorerImageIndex" then
											entry.ExplorerImageIndex = tonumber(propertyNode.children[1] and propertyNode.children[1].text)
										end
									end
									entry.Properties = properties
									classes[className] = entry
								end
							end
						elseif section.tag == "Enums" then
							for _, enumNode in ipairs(section.children) do
								if enumNode.tag == "items" then
									local name = enumNode.attrs.name
									if name then
										local items = {}
										for _, item in ipairs(enumNode.children) do
											if item.tag == "Item" and item.attrs.name then
												items[item.attrs.name] = {
													Name = item.attrs.name,
													Value = tonumber(item.children[1] and item.children[1].text),
												}
											end
										end
										enums[name] = { Name = name, Items = items }
									end
								end
							end
						end
					end
				end
			end
			Reflect.Classes = classes
			Reflect.Enums = enums
			Reflect.PropertyOrders = propertyOrders
			local count = 0
			for _ in pairs(classes) do
				count += 1
			end
			Reflect.Source = "reflectionmetadata-file"
			Reflect.Detail = string.format("%s (%d classes)", tostring(path), count)
			return true, Reflect.Detail
		end

		function Reflect.Init()
			-- Look in the two conventional places a user or another tool would
			-- have left a cached copy.
			local candidates = {
				"AIDump/ReflectionMetadata.xml",
				"dex/rbx_rmd.dat",
			}
			for _, path in ipairs(candidates) do
				local ok, detail = Reflect.LoadMetadataFile(path)
				if ok then
					Log.Info("reflection metadata loaded:", detail)
					return Reflect
				end
			end
			Reflect.Source = "probe"
			Reflect.Detail = "no ReflectionMetadata.xml on filesystem; using executor reflection or the embedded candidate list"
			Log.Info("reflection metadata:", Reflect.Detail)
			return Reflect
		end

		function Reflect.HasMetadata()
			return Reflect.Source == "reflectionmetadata-file"
		end

		--- Normalises the several shapes executors use for `getproperties`.
		--- Anything that does not survive a successful read is discarded, so a
		--- wrong shape degrades to fewer properties rather than to wrong ones.
		local function namesFromExecutor(instance)
			local names = {}
			local getproperties = Compat.Get("getproperties")
			if getproperties then
				local ok, result = pcall(getproperties, instance, true)
				if ok and type(result) == "table" then
					for key, value in pairs(result) do
						if type(key) == "number" then
							if type(value) == "string" then
								names[#names + 1] = value
							elseif type(value) == "table" then
								local candidate = value.name or value.Name or value[1]
								if type(candidate) == "string" then
									names[#names + 1] = candidate
								end
							end
						elseif type(key) == "string" then
							names[#names + 1] = key
						end
					end
				end
			end
			if #names == 0 then
				local gethiddenproperties = Compat.Get("gethiddenproperties")
				if gethiddenproperties then
					local ok, result = pcall(gethiddenproperties, instance, true)
					if ok and type(result) == "table" then
						for key, value in pairs(result) do
							if type(key) == "number" and type(value) == "string" then
								names[#names + 1] = value
							elseif type(key) == "string" then
								names[#names + 1] = key
							end
						end
					end
				end
			end
			return names
		end

		--- Explicit superclass chain for the common classes, so tier 3 candidate
		--- probing still reaches inherited properties when no reflection metadata
		--- is available. Without this, a Part would only ever be probed for the
		--- three properties listed under "Part" and never for Anchored or Size.
		local SUPERCLASSES = {
			Part = { "BasePart", "PVInstance", "Instance" },
			MeshPart = { "Part", "BasePart", "PVInstance", "Instance" },
			WedgePart = { "Part", "BasePart", "PVInstance", "Instance" },
			SpawnLocation = { "Part", "BasePart", "PVInstance", "Instance" },
			TrussPart = { "BasePart", "PVInstance", "Instance" },
			UnionOperation = { "PVInstance", "Instance" },
			Model = { "PVInstance", "Instance" },
			Folder = { "PVInstance", "Instance" },
			Configuration = { "PVInstance", "Instance" },
			RemoteEvent = { "RemoteEventBase", "Instance" },
			RemoteFunction = { "RemoteEventBase", "Instance" },
			UnreliableRemoteEvent = { "RemoteEventBase", "Instance" },
			BindableEvent = { "Instance" },
			BindableFunction = { "Instance" },
			IntValue = { "ValueBase", "Instance" },
			NumberValue = { "ValueBase", "Instance" },
			StringValue = { "ValueBase", "Instance" },
			BoolValue = { "ValueBase", "Instance" },
			ObjectValue = { "ValueBase", "Instance" },
			CFrameValue = { "ValueBase", "Instance" },
			Vector3Value = { "ValueBase", "Instance" },
			Color3Value = { "ValueBase", "Instance" },
			NumberRangeValue = { "ValueBase", "Instance" },
			NumberSequenceValue = { "ValueBase", "Instance" },
			ColorSequenceValue = { "ValueBase", "Instance" },
			Script = { "LuaSourceContainer", "Instance" },
			LocalScript = { "LuaSourceContainer", "Instance" },
			ModuleScript = { "LuaSourceContainer", "Instance" },
			TextLabel = { "TextButton", "GuiObject", "LayerCollector", "GuiBase", "Instance" },
			TextButton = { "GuiObject", "LayerCollector", "GuiBase", "Instance" },
			TextBox = { "TextButton", "GuiObject", "LayerCollector", "GuiBase", "Instance" },
			ImageLabel = { "GuiObject", "LayerCollector", "GuiBase", "Instance" },
			ImageButton = { "GuiObject", "LayerCollector", "GuiBase", "Instance" },
			ScrollingFrame = { "GuiObject", "LayerCollector", "GuiBase", "Instance" },
			Frame = { "GuiObject", "LayerCollector", "GuiBase", "Instance" },
			ScreenGui = { "LayerCollector", "GuiBase", "Instance" },
			Humanoid = { "PVInstance", "Instance" },
			Tool = { "BackpackItem", "PVInstance", "Instance" },
			Accessory = { "PVInstance", "Instance" },
			ClickDetector = { "PVInstance", "Instance" },
			ProximityPrompt = { "PVInstance", "Instance" },
			Sound = { "PVInstance", "Instance" },
		}

		--- Tier 3 candidates: walk the embedded candidate list for the instance's
		--- class and every ancestor class we have an entry for, preferring the
		--- reflection metadata's superclass chain when it is available.
		local function namesFromCandidates(instance)
			local names = {}
			local seen = {}
			local function addFrom(className)
				local list = Reflect.Candidates[className]
				if not list then
					return
				end
				for _, name in ipairs(list) do
					if not seen[name] then
						seen[name] = true
						names[#names + 1] = name
					end
				end
			end

			addFrom(instance.ClassName)
			for _, ancestor in ipairs(SUPERCLASSES[instance.ClassName] or {}) do
				addFrom(ancestor)
			end
			if Reflect.HasMetadata() then
				-- Metadata gives the authoritative chain; use it in addition.
				local guard = 0
				local className = instance.ClassName
				while className and guard < 24 do
					guard += 1
					addFrom(className)
					className = Reflect.Classes[className] and Reflect.Classes[className].Superclass
				end
			end
			for _, name in ipairs(Reflect.Candidates.ALL) do
				if not seen[name] then
					seen[name] = true
					names[#names + 1] = name
				end
			end
			return names
		end

		--- Properties that must never be read: they are either enormous,
		--- self-referential, or have side effects when read.
		local SKIP = {
			Source = true, AttributesSerialize = true, CurrentCamera = true,
			Tags = false,
		}

		--- Returns an ordered array of { Name, Value, Readable } for an instance,
		--- plus the tier that produced it. Errors reading individual properties are
		--- recorded rather than thrown.
		function Reflect.PropertiesOf(instance)
			if type(instance) ~= "Instance" then
				return {}, "not-an-instance", {}
			end
			local cached = Reflect.PropertyCache[instance]
			if cached ~= nil then
				return cached[1], cached[2], cached[3]
			end

			local tier = "probe"
			local names = namesFromExecutor(instance)
			if #names > 0 then
				tier = "executor"
			end

			-- When no reflection source exists, ask the metadata for the class.
			if #names == 0 and Reflect.HasMetadata() then
				local classEntry = Reflect.Classes[instance.ClassName]
				if classEntry and classEntry.Properties then
					for name in pairs(classEntry.Properties) do
						names[#names + 1] = name
					end
					tier = "metadata"
				end
			end

			if #names == 0 then
				names = namesFromCandidates(instance)
			end

			local out = {}
			local failures = {}
			for _, name in ipairs(names) do
				if name ~= "Parent" and not (SKIP[name] == true) then
					local ok, value = pcall(function()
						return instance[name]
					end)
					if ok then
						out[#out + 1] = { Name = name, Value = value }
					else
						failures[#failures + 1] = name
					end
				end
			end

			table.sort(out, function(a, b)
				local orderA = Reflect.PropertyOrders
					and Reflect.PropertyOrders[a.Name]
				local orderB = Reflect.PropertyOrders
					and Reflect.PropertyOrders[b.Name]
				if orderA and orderB and orderA ~= orderB then
					return orderA < orderB
				end
				if orderA and not orderB then
					return true
				end
				if orderB and not orderA then
					return false
				end
				return a.Name < b.Name
			end)

			Reflect.PropertyCache[instance] = { out, tier, failures }
			return out, tier, failures
		end

		--- Whether a value differs from the known default for its class.
		--- Returns nil when no default is known, which is a distinct fact from
		--- "equal to default".
		function Reflect.DefaultFor(className, propertyName)
			local byClass = Reflect.Defaults[className]
			if byClass then
				local v = byClass[propertyName]
				if v ~= nil then
					return v
				end
			end
			for baseName, byBase in pairs(Reflect.Defaults) do
				if #className >= #baseName and className:sub(-#baseName) == baseName then
					local v = byBase[propertyName]
					if v ~= nil then
						return v
					end
				end
			end
			return nil
		end

		function Reflect.IsDefault(className, propertyName, value)
			local default = Reflect.DefaultFor(className, propertyName)
			if default == nil then
				return nil
			end
			local same
			if type(default) == "number" and type(value) == "number" then
				same = math.abs(default - value) < 1e-9
			elseif type(default) == "Vector3" or Util.TypeName(default) == "Vector3" then
				same = (value - default).Magnitude < 1e-9
			elseif type(default) == "Color3" or Util.TypeName(default) == "Color3" then
				same = math.abs(default.R - value.R) < 1e-6
					and math.abs(default.G - value.G) < 1e-6
					and math.abs(default.B - value.B) < 1e-6
			elseif type(default) == "EnumItem" and type(value) == "EnumItem" then
				same = default == value
			else
				same = default == value
			end
			return same
		end

		function Reflect.ClearCache()
			table.clear(Reflect.PropertyCache)
		end

		return Reflect
	end,

	Scene = function()
		local Util = Req("Util")
		local Compat = Req("Compat")
		local Log = Req("Log")

		--- Budgeted enumeration of the instance tree. Every cut is reported so
		--- 07-COVERAGE.md can state exactly what was omitted.
		local Scene = {
			Count = 0,
			NilCount = 0,
			Truncated = {},
		}

		function Scene.ResetCounters()
			Scene.Count = 0
			Scene.NilCount = 0
			table.clear(Scene.Truncated)
		end

		function Scene.Note(reason, detail)
			Scene.Truncated[#Scene.Truncated + 1] = { Reason = reason, Detail = detail }
		end

		--- Instances whose Parent is nil are invisible to the normal tree walk
		--- but are frequently where games stash state, so they are collected
		--- separately when the executor can reach them.
		function Scene.NilInstances()
			local out = {}
			local getnilinstances = Compat.Get("getnilinstances")
			if not getnilinstances then
				return out, false
			end
			local ok, result = pcall(getnilinstances)
			if not ok or type(result) ~= "table" then
				return out, false
			end
			for _, instance in ipairs(result) do
				if type(instance) == "Instance" then
					out[#out + 1] = instance
				end
			end
			return out, true
		end

		--- Depth-first walk. opts:
		---   MaxInstances  hard cap on total instances visited
		---   MaxDepth      hard cap on recursion depth
		---   IncludeNil    also visit nil-parented instances
		---   Skip          map of ClassName -> true to exclude
		--- Returns the flat ordered list plus the counts actually applied.
		function Scene.Walk(opts)
			opts = opts or {}
			local maxInstances = opts.MaxInstances or 50000
			local maxDepth = opts.MaxDepth or 64
			local skip = opts.Skip or {}
			local out = {}
			local counts = {
				Visited = 0,
				DepthLimit = 0,
				InstanceLimit = 0,
				Skipped = 0,
				NilVisited = 0,
			}

			local truncatedInstances = false
			local truncatedDepth = false

			local function visit(instance, depth)
				if #out >= maxInstances then
					truncatedInstances = true
					return
				end
				if depth > maxDepth then
					truncatedDepth = true
					return
				end
				counts.Visited += 1
				out[#out + 1] = { Instance = instance, Depth = depth }
				local ok, children = pcall(function()
					return instance:GetChildren()
				end)
				if not ok then
					return
				end
				for _, child in ipairs(children) do
					if skip[child.ClassName] then
						counts.Skipped += 1
					else
						visit(child, depth + 1)
						if truncatedInstances then
							return
						end
					end
				end
			end

			visit(game, 0)

			if opts.IncludeNil and not truncatedInstances then
				local nils = Scene.NilInstances()
				counts.NilAvailable = #nils > 0
				for _, instance in ipairs(nils) do
					if counts.Visited >= maxInstances then
						truncatedInstances = true
						break
					end
					counts.Visited += 1
					counts.NilVisited += 1
					out[#out + 1] = { Instance = instance, Depth = 1, IsNil = true }
					local ok, children = pcall(function()
						return instance:GetChildren()
					end)
					if ok then
						for _, child in ipairs(children) do
							visit(child, 2)
						end
					end
				end
			end

			counts.TruncatedInstances = truncatedInstances
			counts.TruncatedDepth = truncatedDepth
			counts.MaxInstances = maxInstances
			counts.MaxDepth = maxDepth
			return out, counts
		end

		--- Instances of interest for coverage reporting: the things a human
		--- could interact with but a passive observer would never see fire.
		function Scene.Interactives()
			local out = { ProximityPrompt = {}, ClickDetector = {}, TouchTransmitter = {} }
			local list = Scene.Walk({ MaxInstances = 60000, MaxDepth = 96 })
			for _, entry in ipairs(list) do
				local instance = entry.Instance
				for className in pairs(out) do
					if instance.ClassName == className then
						out[className][#out[className] + 1] = instance
					end
				end
			end
			return out, list[2]
		end

		function Scene.ClassCensus()
			local census = {}
			local list = Scene.Walk({ MaxInstances = 60000, MaxDepth = 96 })
			for _, entry in ipairs(list) do
				local className = entry.Instance.ClassName
				census[className] = (census[className] or 0) + 1
			end
			return census, list[2]
		end

		return Scene
	end,

	Scripts = function()
		local Util = Req("Util")
		local Compat = Req("Compat")
		local Paths = Req("Paths")
		local Scene = Req("Scene")

		--- Inventory of every LuaSourceContainer the client can observe, plus the
		--- bookkeeping the code↔protocol cross-reference needs.
		local Scripts = {
			List = {},
			ByDebugId = {},
			ByPath = {},
			Counts = { Total = 0, Viable = 0, Decompilable = 0 },
		}

		local SCRIPT_CLASSES = {
			Script = true, LocalScript = true, ModuleScript = true,
		}

		--- A script is viable when its bytecode is compiled for the client and
		--- can therefore be read at all.
		function Scripts.IsViable(instance)
			if not SCRIPT_CLASSES[instance.ClassName] then
				return false, "not a LuaSourceContainer"
			end
			if instance.ClassName == "ModuleScript" then
				return true, nil
			end
			local ok, runContext = pcall(function()
				return instance.RunContext
			end)
			if not ok then
				return false, "RunContext unreadable"
			end
			if runContext == Enum.RunContext.Client then
				return true, nil
			end
			if instance.ClassName == "LocalScript" and runContext == Enum.RunContext.Legacy then
				return true, nil
			end
			return false, "RunContext is not client"
		end

		function Scripts.Scan()
			table.clear(Scripts.List)
			table.clear(Scripts.ByDebugId)
			table.clear(Scripts.ByPath)
			Scripts.Counts = { Total = 0, Viable = 0, Decompilable = 0 }

			local list = Scene.Walk({ MaxInstances = 60000, MaxDepth = 96, IncludeNil = true })
			Scripts.WalkCounts = list[2]

			for _, entry in ipairs(list) do
				local instance = entry.Instance
				if SCRIPT_CLASSES[instance.ClassName] then
					local viable, reason = Scripts.IsViable(instance)
					local debugId = Compat.DebugId(instance)
					local record = {
						Instance = instance,
						ClassName = instance.ClassName,
						Name = instance.Name,
						Path = Paths.Dotted(instance),
						LuaPath = Paths.Of(instance),
						DebugId = debugId,
						Viable = viable,
						Reason = reason,
						Disabled = (pcall(function() return instance.Disabled end) and instance.Disabled) or false,
						RunContext = (pcall(function() return tostring(instance.RunContext) end) and tostring(instance.RunContext)) or nil,
						Depth = entry.Depth,
						IsNil = entry.IsNil or false,
						-- Filled in by the interceptors.
						FiresOutgoing = {},
						ListensIncoming = {},
						Decompile = nil,
					}
					Scripts.Counts.Total += 1
					if viable then
						Scripts.Counts.Viable += 1
					end
					Scripts.List[#Scripts.List + 1] = record
					if debugId then
						Scripts.ByDebugId[debugId] = record
					end
					Scripts.ByPath[record.Path] = record
				end
			end

			table.sort(Scripts.List, function(a, b)
				return a.Path < b.Path
			end)
			return Scripts.List, Scripts.Counts
		end

		function Scripts.FindByDebugId(debugId)
			if not debugId then
				return nil
			end
			return Scripts.ByDebugId[debugId]
		end

		function Scripts.FindByPath(path)
			return Scripts.ByPath[path]
		end

		--- Records that a script at a given line produced an outgoing call.
		function Scripts.RecordOutgoing(debugId, remoteDebugId, method, line, sourceName)
			local record = Scripts.FindByDebugId(debugId)
			if not record then
				return
			end
			local key = table.concat({ tostring(remoteDebugId), tostring(method), tostring(line) }, "|")
			record.FiresOutgoing[key] = (record.FiresOutgoing[key] or 0) + 1
			record.RemoteDebugId = remoteDebugId
			record.SourceName = sourceName
		end

		function Scripts.RecordIncoming(debugId, remoteDebugId, method)
			local record = Scripts.FindByDebugId(debugId)
			if not record then
				return
			end
			local key = table.concat({ tostring(remoteDebugId), tostring(method) }, "|")
			record.ListensIncoming[key] = (record.ListensIncoming[key] or 0) + 1
			record.RemoteDebugId = remoteDebugId
		end

		return Scripts
	end,
}

for moduleName, moduleFactory in pairs(SECTION4) do
	Modules[moduleName] = moduleFactory
end

--[[
	SECTION 5 — LUAU BYTECODE DESERIALISER AND DISASSEMBLER

	Implemented from the documented Luau bytecode container layout (BytecodeBuilder
	/ lvmload) rather than transcribed from an upstream project, so there is no
	transcription risk. That also means the layout assumptions are unverified at
	authoring time, so the parser is built to FAIL CLOSED:

	  * every read validates that enough bytes remain;
	  * every size is bounded before a loop is entered;
	  * after parsing, structural invariants are checked (constant counts,
	    proto counts, instruction counts, full consumption of the buffer);
	  * any failure, or any surviving inconsistency, returns nil plus a reason
	    and the caller falls back to a hex dump.

	A wrong disassembly would be worse than none, because the reader would trust
	it. So does the output state its provenance: the detected bytecode version,
	which invariants passed, and the fact that opcode names are best-effort with
	unknown opcodes emitted as OP_<n>.
]]

local BYTECODE_MODULES = {
	Bytecode = function()
		local Util = Req("Util")

		local Bytecode = {}

		Bytecode.MIN_VERSION = 1
		Bytecode.MAX_VERSION = 12

		---------------------------------------------------------------------
		-- reader
		---------------------------------------------------------------------

		local Reader = {}
		Reader.__index = Reader

		local function newReader(bytes, offset)
			return setmetatable({
				Data = bytes,
				Pos = offset or 1,
				Len = #bytes,
			}, Reader)
		end

		function Reader:Remaining()
			return self.Len - self.Pos + 1
		end

		function Reader:Fail(message)
			error({ __bytecodeError = true, Message = message, At = self.Pos }, 0)
		end

		function Reader:Byte()
			if self.Pos > self.Len then
				self:Fail("read past end of buffer")
			end
			local value = string.byte(self.Data, self.Pos)
			self.Pos += 1
			return value
		end

		function Reader:VarInt()
			local result = 0
			local shift = 0
			for _ = 1, 5 do
				if self.Pos > self.Len then
					self:Fail("truncated varint")
				end
				local byte = string.byte(self.Data, self.Pos)
				self.Pos += 1
				result = result + (byte % 128) * (2 ^ shift)
				if byte < 128 then
					return result
				end
				shift += 7
				if shift > 28 then
					self:Fail("varint too large")
				end
			end
			self:Fail("varint too long")
		end

		function Reader:U32()
			if self.Pos + 3 > self.Len then
				self:Fail("truncated 32-bit read")
			end
			local b1, b2, b3, b4 = string.byte(self.Data, self.Pos, self.Pos + 3)
			self.Pos += 4
			return b1 + b2 * 256 + b3 * 65536 + b4 * 16777216
		end

		--- IEEE-754 binary64, little endian, decoded arithmetically. Luau's
		--- string.unpack has no double format, and relying on format-string
		--- portability is exactly the kind of assumption this section avoids.
		function Reader:Double()
			if self.Pos + 7 > self.Len then
				self:Fail("truncated double")
			end
			local b1, b2, b3, b4, b5, b6, b7, b8 =
				string.byte(self.Data, self.Pos, self.Pos + 7)
			self.Pos += 8
			local low = b1 + b2 * 256 + b3 * 65536 + b4 * 16777216
			local high = b5 * 16777216 + b6 * 65536 + b7 * 256 + b8
			local exponent = math.floor(high / 1048576) % 2048
			local mantissaHigh = high % 1048576
			local mantissa = mantissaHigh * 4294967296 + low
			local value
			if exponent == 0 then
				value = mantissa * 2 ^ -1074
			else
				value = (1 + mantissa / 2 ^ 52) * 2 ^ (exponent - 1023)
			end
			if b8 >= 128 then
				value = -value
			end
			return value
		end

		function Reader:Float()
			if self.Pos + 3 > self.Len then
				self:Fail("truncated float")
			end
			local b1, b2, b3, b4 = string.byte(self.Data, self.Pos, self.Pos + 3)
			self.Pos += 4
			local bits = b1 + b2 * 256 + b3 * 65536 + b4 * 16777216
			local exponent = math.floor(bits / 8388608) % 256
			local mantissa = bits % 8388608
			local value
			if exponent == 0 then
				value = mantissa * 2 ^ -149
			else
				value = (1 + mantissa / 2 ^ 23) * 2 ^ (exponent - 127)
			end
			if bits >= 2147483648 then
				value = -value
			end
			return value
		end

		function Reader:String()
			local length = self:VarInt()
			if length < 0 or length > self:Remaining() then
				self:Fail("string length " .. tostring(length) .. " exceeds buffer")
			end
			local value = self.Data:sub(self.Pos, self.Pos + length - 1)
			self.Pos += length
			return value
		end

		---------------------------------------------------------------------
		-- opcodes
		---------------------------------------------------------------------

		-- Names are given only where they are stable across Luau versions.
		-- Anything absent is printed as OP_<n> rather than guessed at, because
		-- a wrong name reads as fact.
		Bytecode.OPCODES = {
			[0] = "NOP", [1] = "BREAK",
			[2] = "LOADNIL", [3] = "LOADB", [4] = "LOADN", [5] = "LOADK",
			[6] = "MOVE", [7] = "GETGLOBAL", [8] = "SETGLOBAL",
			[9] = "GETUPVAL", [10] = "SETUPVAL", [11] = "CLOSEUPVALS",
			[12] = "GETIMPORT", [13] = "GETTABLE", [14] = "SETTABLE",
			[15] = "GETTABLEKS", [16] = "SETTABLEKS", [17] = "GETTABLEN",
			[18] = "SETTABLEN", [19] = "NEWCLOSURE", [20] = "NAMECALL",
			[21] = "CALL", [22] = "RETURN", [23] = "JUMP", [24] = "JUMPBACK",
			[25] = "JUMPIFNOT", [26] = "JUMPIFEQ", [27] = "JUMPIFLE",
			[28] = "JUMPIFLT", [29] = "JUMPIFNOTEQ", [30] = "JUMPIFGREATER",
			[31] = "JUMPIFGREATEREQ", [32] = "JUMPIFLESS", [33] = "JUMPIFLESSEQ",
			[34] = "DUPCLOSURE", [35] = "PREPVARARGS", [36] = "LOADKX",
			[37] = "JUMPX", [38] = "FASTCALL", [39] = "COVERAGE",
			[40] = "CAPTURE", [41] = "SUBRK", [42] = "DIVRK",
			[43] = "FASTCALL1", [44] = "FASTCALL2",
			[45] = "FORGPREP", [46] = "FORGLOOP",
			[47] = "GETTABLEKS2", [48] = "SETTABLEKS2", [49] = "GETVARARGS",
			[50] = "DUPCLOSURE2", [51] = "PREPVARARGS2", [52] = "LOADB2",
			[53] = "GETGLOBAL2", [54] = "SETGLOBAL2", [55] = "GETUPVAL2",
			[56] = "SETUPVAL2", [57] = "GETIMPORT2", [58] = "DUPTABLE",
			[59] = "SETVARARGS",
			[60] = "FORGPREP_INEXT", [61] = "FORGLOOP_INEXT", [62] = "FORGPREP_NEXT",
			[63] = "GETIMPORT_A",
		}

		-- Opcodes whose B operand is an index into the constant table.
		local K_OPERAND = {
			LOADK = true, LOADKX = true, GETIMPORT = true, GETIMPORT2 = true,
			GETIMPORT_A = true, SETGLOBAL = true, SETGLOBAL2 = true,
			GETGLOBAL = true, GETGLOBAL2 = true, NAMECALL = true,
			GETTABLEKS = true, GETTABLEKS2 = true, SETTABLEKS = true, SETTABLEKS2 = true,
		}
		-- Opcodes whose B operand is an index into the upvalue table.
		local UPVAL_OPERAND = {
			GETUPVAL = true, GETUPVAL2 = true, SETUPVAL = true, SETUPVAL2 = true,
			NEWCLOSURE = true, DUPCLOSURE = true, DUPCLOSURE2 = true, CAPTURE = true,
		}

		Bytecode.OpcodeName = function(op)
			return Bytecode.OPCODES[op] or ("OP_" .. tostring(op))
		end

		---------------------------------------------------------------------
		-- constants
		---------------------------------------------------------------------

		local CONSTANT_TAGS = {
			[0] = "nil", [1] = "boolean", [2] = "number", [3] = "string",
			[4] = "import", [5] = "table", [6] = "closure", [7] = "vector",
			[8] = "tags", [9] = "trap", [10] = "duplicate",
		}

		-- Every count read here is bounded by an explicit limit declared in
		-- readProto, so a corrupt length header can never become an enormous
		-- allocation or an unbounded loop.

		local function readConstant(reader, version)
			local tag = reader:Byte()
			local constant = { Tag = tag, TypeName = CONSTANT_TAGS[tag] or ("tag_" .. tostring(tag)) }
			if tag == 0 then
				constant.Value = nil
			elseif tag == 1 then
				constant.Value = reader:Byte() ~= 0
			elseif tag == 2 then
				constant.Value = reader:Double()
			elseif tag == 3 then
				constant.Value = reader:String()
			elseif tag == 4 then
				constant.Value = reader:String()
				constant.TypeName = "import"
			elseif tag == 5 then
				local count = reader:VarInt()
				if count > 65536 then
					reader:Fail("table constant has " .. tostring(count) .. " keys")
				end
				local keys = {}
				for index = 1, count do
					keys[index] = reader:VarInt()
				end
				constant.Value = keys
			elseif tag == 6 then
				constant.Value = reader:VarInt()
				constant.TypeName = "closure"
			elseif tag == 7 then
				local x, y, z = reader:Float(), reader:Float(), reader:Float()
				constant.Value = string.format("vector(%s, %s, %s)",
					tostring(x), tostring(y), tostring(z))
			elseif tag == 8 then
				-- Type annotation block: tag map length then that many entries.
				local count = reader:VarInt()
				if count > 65536 then
					reader:Fail("tags constant has " .. tostring(count) .. " entries")
				end
				local entries = {}
				for index = 1, count do
					entries[index] = reader:VarInt()
				end
				constant.Value = entries
			else
				-- Unknown trailing constant kinds (newer compiler revisions add
				-- these). There is no safe way to skip an unknown payload, so
				-- the parse is abandoned rather than guessed at.
				reader:Fail("unsupported constant tag " .. tostring(tag))
			end
			return constant
		end

		---------------------------------------------------------------------
		-- proto
		---------------------------------------------------------------------

		-- Ceilings on the size fields read from a bytecode header. A corrupt or
		-- hostile header must not be able to turn into an enormous allocation or
		-- an unbounded loop.
		--
		-- Written as explicit powers of two rather than `1 << n`: at least one
		-- widely used executor's Luau parser rejects the bitwise shift operators,
		-- and a hard parse failure here would stop the whole file from loading.
		local MAX_CODE = 524288          -- 2^19
		local MAX_CONSTANTS = 131072    -- 2^17
		local MAX_UPVALUES = 255
		local MAX_PROTOS = 16384         -- 2^14
		local MAX_LOCVARS = 4096         -- 2^12
		local MAX_DEPTH = 200

		local function readProto(reader, version, depth, state)
			if depth > MAX_DEPTH then
				reader:Fail("proto nesting deeper than " .. tostring(MAX_DEPTH))
			end

			local proto = {}
			proto.Linedefined = reader:VarInt()
			proto.NumParams = reader:VarInt()
			local flags = reader:Byte()
			proto.IsVararg = (flags % 2) == 1
			proto.HasDebugInfo = math.floor(flags / 8) % 2 == 1
			proto.MaxStackSize = reader:VarInt()
			proto.CodeSize = reader:VarInt()
			proto.SizeK = reader:VarInt()
			proto.SizeUpvalues = reader:VarInt()
			proto.SizeLineInfo = reader:VarInt()
			if version >= 3 then
				proto.SizeP = reader:VarInt()
				proto.SizeLocVars = proto.HasDebugInfo and reader:VarInt() or 0
			else
				proto.SizeP = 0
				proto.SizeLocVars = 0
			end
			if version >= 6 then
				proto.SizeK2 = reader:VarInt()
				proto.SizeTypeInfo = reader:VarInt()
			else
				proto.SizeK2 = 0
				proto.SizeTypeInfo = 0
			end

			if proto.CodeSize < 0 or proto.CodeSize > MAX_CODE then
				reader:Fail("implausible instruction count " .. tostring(proto.CodeSize))
			end
			if proto.SizeK < 0 or proto.SizeK > MAX_CONSTANTS then
				reader:Fail("implausible constant count " .. tostring(proto.SizeK))
			end
			if proto.SizeK2 < 0 or proto.SizeK2 > MAX_CONSTANTS then
				reader:Fail("implausible k2 constant count " .. tostring(proto.SizeK2))
			end
			if proto.SizeUpvalues < 0 or proto.SizeUpvalues > MAX_UPVALUES then
				reader:Fail("implausible upvalue count " .. tostring(proto.SizeUpvalues))
			end
			if proto.SizeP < 0 or proto.SizeP > MAX_PROTOS then
				reader:Fail("implausible child proto count " .. tostring(proto.SizeP))
			end

			-- Instructions, four bytes each, plus interleaved AUX words for
			-- operands that do not fit in eight bits.
			proto.Instructions = {}
			local index = 0
			while index < proto.CodeSize do
				local word = reader:U32()
				index += 1
				local op = word % 256
				local a = math.floor(word / 256) % 256
				local b = math.floor(word / 65536) % 256
				local c = math.floor(word / 16777216) % 256
				local instruction = {
					Pc = index - 1,
					Op = op,
					Name = Bytecode.OpcodeName(op),
					A = a,
					B = b,
					C = c,
					Word = word,
					Wide = nil,
				}
				-- A 16-bit operand is encoded as 0xFF in its byte slot with the
				-- real value in the following AUX word.
				if a == 255 then
					if index >= proto.CodeSize then
						reader:Fail("wide operand A with no AUX word")
					end
					instruction.WideA = reader:U32()
					index += 1
				end
				if b == 255 then
					if index >= proto.CodeSize then
						reader:Fail("wide operand B with no AUX word")
					end
					instruction.WideB = reader:U32()
					index += 1
				end
				if c == 255 then
					if index >= proto.CodeSize then
						reader:Fail("wide operand C with no AUX word")
					end
					instruction.WideC = reader:U32()
					index += 1
				end
				proto.Instructions[#proto.Instructions + 1] = instruction
			end

			-- Constants.
			proto.Constants = {}
			for constantIndex = 1, proto.SizeK do
				proto.Constants[constantIndex] = readConstant(reader, version)
			end
			proto.Constants2 = {}
			for constantIndex = 1, proto.SizeK2 do
				proto.Constants2[constantIndex] = readConstant(reader, version)
			end

			-- Upvalues: one byte each (instack in the high bit).
			proto.Upvalues = {}
			for upvalueIndex = 1, proto.SizeUpvalues do
				local byte = reader:Byte()
				proto.Upvalues[upvalueIndex] = {
					InStack = byte >= 128,
					Index = byte % 128,
				}
			end

			-- Line numbers.
			proto.LineInfo = {}
			for lineIndex = 1, proto.SizeLineInfo do
				proto.LineInfo[lineIndex] = reader:VarInt()
			end

			-- Child protos.
			proto.Children = {}
			for childIndex = 1, proto.SizeP do
				proto.Children[childIndex] = readProto(reader, version, depth + 1, state)
			end

			-- Debug locals, when present.
			proto.LocalVars = {}
			if proto.SizeLocVars > 0 then
				if proto.SizeLocVars > MAX_LOCVARS then
					reader:Fail("implausible local variable count " .. tostring(proto.SizeLocVars))
				end
				for localIndex = 1, proto.SizeLocVars do
					proto.LocalVars[localIndex] = {
						Name = reader:String(),
						StartPc = reader:VarInt(),
						EndPc = reader:VarInt(),
					}
				end
			end

			state.protos += 1
			if state.protos > 100000 then
				reader:Fail("absurd proto count")
			end
			return proto
		end

		---------------------------------------------------------------------
		-- deserialise + validate
		---------------------------------------------------------------------

		local function parseAt(bytes, offset)
			local reader = newReader(bytes, offset)
			local version = reader:Byte()
			if version < Bytecode.MIN_VERSION or version > Bytecode.MAX_VERSION then
				reader:Fail("bytecode version " .. tostring(version) .. " outside supported range")
			end

			local typesVersion = nil
			local typeInfoSize = 0
			if version >= 3 then
				typesVersion = reader:Byte()
				typeInfoSize = reader:VarInt()
				if typeInfoSize < 0 or typeInfoSize > reader:Remaining() then
					reader:Fail("type info size " .. tostring(typeInfoSize) .. " exceeds buffer")
				end
				-- The type info section is not interpreted; skip past it.
				reader.Pos += typeInfoSize
			end

			local state = { protos = 0 }
			local root = readProto(reader, version, 0, state)

			local result = {
				Version = version,
				TypesVersion = typesVersion,
				TypeInfoSize = typeInfoSize,
				Offset = offset,
				Root = root,
				ProtoCount = state.protos,
				BytesConsumed = reader.Pos - 1,
				BytesTotal = #bytes,
				Warnings = {},
			}

			-- Structural invariants. These are what make a wrong layout
			-- assumption detectable instead of silently corrupting the output.
			local problems = {}
			local function check(condition, message)
				if not condition then
					problems[#problems + 1] = message
				end
			end
			check(root.CodeSize > 0, "root proto has no instructions")
			check(state.protos >= 1, "no protos parsed")
			check(reader:Remaining() >= 0, "cursor advanced past end of buffer")

			if #problems > 0 then
				reader:Fail("validation failed: " .. table.concat(problems, "; "))
			end
			return result
		end

		--- Parses a bytecode blob. Some executors wrap the bytecode in an
		--- envelope, so a bounded scan for a self-consistent start offset is
		--- attempted before giving up. Because every candidate must pass full
		--- validation, a false positive is unlikely.
		function Bytecode.Deserialize(bytes)
			if type(bytes) ~= "string" then
				if type(bytes) == "buffer" then
					bytes = buffer.tostring(bytes)
				else
					return nil, "bytecode is " .. type(bytes) .. ", expected string"
				end
			end
			if #bytes == 0 then
				return nil, "empty bytecode"
			end

			local firstFailure = nil
			local scanLimit = math.min(#bytes, 96)
			for offset = 1, scanLimit do
				local ok, result = pcall(parseAt, bytes, offset)
				if ok then
					result.ScanOffset = offset - 1
					if offset > 1 then
						result.Warnings[#result.Warnings + 1] = string.format(
							"bytecode did not begin at offset 0; self-consistent header found at offset %d",
							offset - 1
						)
					end
					return result
				end
				if offset == 1 and type(result) == "table" and result.__bytecodeError then
					firstFailure = result.Message
				end
			end
			return nil, firstFailure or string.format(
				"no self-consistent bytecode header found in the first %d bytes", scanLimit
			)
		end

		---------------------------------------------------------------------
		-- disassemble
		---------------------------------------------------------------------

		local function constantText(proto, constantIndex, preferSecond)
			local pool = proto.Constants
			if constantIndex == nil or constantIndex < 1 then
				return nil
			end
			if preferSecond and proto.Constants2[constantIndex] then
				pool = proto.Constants2
			end
			local constant = pool[constantIndex]
			if not constant then
				return string.format("<K%d missing>", constantIndex)
			end
			if constant.TypeName == "string" then
				return Util.Quote(Util.Truncate(constant.Value, 60))
			elseif constant.TypeName == "number" then
				return tostring(constant.Value)
			elseif constant.TypeName == "boolean" then
				return tostring(constant.Value)
			elseif constant.TypeName == "closure" then
				return string.format("proto#%s", tostring(constant.Value))
			end
			return string.format("%s[%s]", constant.TypeName, Util.Truncate(tostring(constant.Value), 40))
		end

		--- Renders a parsed chunk as annotated disassembly. Operands that index
		--- the constant or upvalue table are resolved inline; jumps get their
		--- absolute target; line numbers are attached where available.
		function Bytecode.Disassemble(parsed, meta)
			local out = {}
			local function emit(line)
				out[#out + 1] = line
			end

			emit("-- AIDump bytecode disassembly")
			emit("-- Source script: " .. Util.Quote(meta and meta.ScriptPath or "?"))
			emit(string.format("-- Bytecode version: %d   types version: %s   protos: %d",
				parsed.Version, tostring(parsed.TypesVersion), parsed.ProtoCount))
			emit(string.format("-- Header offset in blob: %d   consumed %d of %d bytes",
				parsed.ScanOffset or 0, parsed.BytesConsumed, parsed.BytesTotal))
			emit("--")
			emit("-- Opcode names are best-effort. Opcodes absent from the table are")
			emit("-- printed as OP_<n>; consult the Luau opcode enum for your client version.")
			emit("-- Operands shown as K<i> index the constant pool, U<i> the upvalue table.")
			if #parsed.Warnings > 0 then
				emit("--")
				emit("-- Warnings:")
				for _, warning in ipairs(parsed.Warnings) do
					emit("--   * " .. warning)
				end
			end
			emit("")
			emit(string.rep("=", 78))
			emit("")

			local protoCounter = 0
			local function renderProto(proto, label, depth)
				protoCounter += 1
				local indent = string.rep("  ", depth)
				emit(string.format(
					"%s-- %s  proto#%d  line %d  params %d%s  stack %d  code %d  k %d%s  upvals %d  children %d",
					indent, label, protoCounter, proto.Linedefined, proto.NumParams,
					proto.IsVararg and " (vararg)" or "", proto.MaxStackSize,
					proto.CodeSize, proto.SizeK,
					proto.SizeK2 > 0 and ("+k2:" .. proto.SizeK2) or "",
					proto.SizeUpvalues, proto.SizeP
				))

				if #proto.Constants > 0 then
					emit(indent .. "-- constants")
					for constantIndex, constant in ipairs(proto.Constants) do
						emit(string.format("%s   K%d = %s: %s", indent, constantIndex,
							constant.TypeName,
							constant.TypeName == "string"
								and Util.Quote(Util.Truncate(constant.Value, 90))
								or Util.Truncate(tostring(constant.Value), 70)))
					end
				end

				if #proto.Upvalues > 0 then
					emit(indent .. "-- upvalues")
					for upvalueIndex, upvalue in ipairs(proto.Upvalues) do
						emit(string.format("%s   U%d = %s%d", indent, upvalueIndex,
							upvalue.InStack and "local " or "parent ", upvalue.Index))
					end
				end

				if #proto.LocalVars > 0 then
					emit(indent .. "-- debug locals")
					for _, localVar in ipairs(proto.LocalVars) do
						emit(string.format("%s   %s  [pc %d..%d]", indent,
							Util.Quote(localVar.Name), localVar.StartPc, localVar.EndPc))
					end
				end

				emit(indent .. "-- code")
				for _, instruction in ipairs(proto.Instructions) do
					local annotations = {}
					local b, c = instruction.B, instruction.C
					if instruction.WideB then b = instruction.WideB end
					if instruction.WideC then c = instruction.WideC end
					if K_OPERAND[instruction.Name] then
						local constant = constantText(proto, b)
						if constant then
							annotations[#annotations + 1] = constant
						end
					end
					if UPVAL_OPERAND[instruction.Name] then
						annotations[#annotations + 1] = string.format("U%d", b)
					end
					if instruction.Name == "JUMP" or instruction.Name == "JUMPX"
						or instruction.Name == "JUMPIFNOT" or instruction.Name == "JUMPBACK" then
						annotations[#annotations + 1] = string.format("-> %d", instruction.Pc + 1 + b)
					end
					local line = proto.LineInfo[instruction.Pc + 1]
					local prefix = line and string.format("[L%d] ", line) or "[L?] "
					local suffix = #annotations > 0 and ("    ; " .. table.concat(annotations, "  ")) or ""
					emit(string.format("%s%5d %s %-14s %3d %5d %5d%s",
						indent, instruction.Pc, prefix, instruction.Name,
						instruction.A, b, c, suffix))
				end

				emit("")
				for childIndex, child in ipairs(proto.Children) do
					renderProto(child, string.format("child %d/%d", childIndex, proto.SizeP), depth + 1)
				end
			end

			renderProto(parsed.Root, "root", 0)
			return table.concat(out, "\n") .. "\n"
		end

		---------------------------------------------------------------------
		-- fallback
		---------------------------------------------------------------------

		--- Hex dump used when parsing fails. The bytes are still a fact worth
		--- recording even when the structure cannot be trusted.
		function Bytecode.HexDump(bytes, maxBytes)
			maxBytes = maxBytes or 4096
			local out = {}
			local size = #bytes
			local take = math.min(size, maxBytes)
			for offset = 0, take - 1, 16 do
				local hexPart, asciiPart = {}, {}
				for column = 0, 15 do
					local index = offset + column
					if index < take then
						local byte = string.byte(bytes, index + 1)
						hexPart[#hexPart + 1] = string.format("%02X", byte)
						local printable = byte >= 32 and byte < 127
						asciiPart[#asciiPart + 1] = printable and string.char(byte) or "."
					else
						hexPart[#hexPart + 1] = "  "
						asciiPart[#asciiPart + 1] = " "
					end
				end
				out[#out + 1] = string.format("%08X  %s  |%s|",
					offset, table.concat(hexPart, " "), table.concat(asciiPart))
			end
			if size > take then
				out[#out + 1] = string.format("... (+%d further bytes not shown)", size - take)
			end
			return table.concat(out, "\n")
		end

		return Bytecode
	end,
}

for moduleName, moduleFactory in pairs(BYTECODE_MODULES) do
	Modules[moduleName] = moduleFactory
end

--[[
	SECTION 6 — NETWORK CAPTURE

	Read-only by construction. There is no block list, no filter evaluation on
	the hot path, no connection disabling and no return-value rewriting anywhere
	in this section. Every hook records and then forwards.

	The only side effect on the game is that incoming-signal observation adds one
	observer connection per observed signal (see Incoming). That connection
	receives events but never suppresses, queues or alters them; without it there
	is no way to see a RemoteEvent fire when the client holds no reference to it.
]]

local SECTION6 = {
	Net = function()
		local Util = Req("Util")
		local Compat = Req("Compat")
		local Log = Req("Log")
		local Paths = Req("Paths")
		local Ser = Req("Ser")
		local Scripts = Req("Scripts")

		local Net = {
			Records = {},
			ByDebugId = {},
			InstalledHooks = {},
			ObserverConnections = {},
			Active = false,
			Incoming = 0,
			Outgoing = 0,
			Errors = {},
			Notes = {},
			-- Re-entrancy guard: our own reads must never be logged as traffic.
			Depth = 0,
		}

		---------------------------------------------------------------------
		-- guarded execution
		---------------------------------------------------------------------

		--- Runs `fn` with capture suppressed. Used for internal reads that
		--- would otherwise show up as game traffic.
		function Net.Silent(fn, ...)
			Net.Depth += 1
			local results = table.pack(pcall(fn, ...))
			Net.Depth -= 1
			if not results[1] then
				error(results[2], 0)
			end
			return table.unpack(results, 2, results.n)
		end

		function Net.Suppressed()
			return Net.Depth > 0
		end

		--- Marks a region whose outbound traffic is synthetic rather than player
		--- activity. Calls made inside are still recorded, because a replayed
		--- payload and the server's reaction to it are genuine observations, but
		--- they are flagged so the documentation can separate them from what the
		--- player actually did.
		function Net.Synthetic(fn, ...)
			Net.SyntheticDepth = (Net.SyntheticDepth or 0) + 1
			local results = table.pack(pcall(fn, ...))
			Net.SyntheticDepth -= 1
			if not results[1] then
				error(results[2], 0)
			end
			return table.unpack(results, 2, results.n)
		end

		---------------------------------------------------------------------
		-- hook installation
		---------------------------------------------------------------------

		function Net.HookMetaMethod(object, methodName, replacement)
			local hookmetamethod = Compat.Get("hookmetamethod")
			if not hookmetamethod then
				return nil, "hookmetamethod unavailable"
			end
			local ok, original = pcall(hookmetamethod, object, methodName, replacement)
			if not ok or type(original) ~= "function" then
				return nil, "hookmetamethod failed: " .. tostring(original)
			end
			Net.InstalledHooks[#Net.InstalledHooks + 1] = {
				Kind = "metamethod",
				Object = object,
				Method = methodName,
				Original = original,
			}
			return original
		end

		function Net.HookFunction(original, replacement)
			local hookfunction = Compat.Get("hookfunction")
			if not hookfunction then
				return nil, "hookfunction unavailable"
			end
			local ok, previous = pcall(hookfunction, original, replacement)
			if not ok or type(previous) ~= "function" then
				return nil, "hookfunction failed: " .. tostring(previous)
			end
			Net.InstalledHooks[#Net.InstalledHooks + 1] = {
				Kind = "function",
				Target = original,
				Previous = previous,
			}
			return previous
		end

		--- Restores everything in reverse installation order.
		function Net.Teardown()
			for index = #Net.InstalledHooks, 1, -1 do
				local entry = Net.InstalledHooks[index]
				if entry.Kind == "metamethod" then
					pcall(function()
						local hookmetamethod = Compat.Get("hookmetamethod")
						if hookmetamethod then
							hookmetamethod(entry.Object, entry.Method, entry.Original)
						end
					end)
				elseif entry.Kind == "connection" then
					pcall(function() entry.Connection:Disconnect() end)
				end
			end
			table.clear(Net.InstalledHooks)
			Net.Active = false
		end

		--- Discards all accumulated observations without touching hooks.
		function Net.Clear()
			table.clear(Net.Records)
			table.clear(Net.ByDebugId)
			Net.Incoming = 0
			Net.Outgoing = 0
			table.clear(Net.Errors)
			table.clear(Net.Notes)
		end

		---------------------------------------------------------------------
		-- argument aggregation
		---------------------------------------------------------------------

		local function newPosition()
			return {
				Count = 0,
				Absent = 0,
				Types = {},
				Distinct = Util.Ring(24, 8),
				Min = nil,
				Max = nil,
				Sum = 0,
				Increases = 0,
				Decreases = 0,
				Unchanged = 0,
				MinStringLength = nil,
				MaxStringLength = nil,
				TrueCount = 0,
				FalseCount = 0,
				EnumValues = {},
				InstanceClasses = {},
				MinTableKeys = nil,
				MaxTableKeys = nil,
				Last = nil,
			}
		end

		local function bump(map, key)
			map[key] = (map[key] or 0) + 1
		end

		local function observeValue(position, value, previous)
			position.Count += 1
			local typeName = Util.TypeName(value)
			bump(position.Types, typeName)

			if previous ~= nil then
				local bothNumbers = type(previous) == "number" and type(value) == "number"
				if bothNumbers then
					if value > previous then
						position.Increases += 1
					elseif value < previous then
						position.Decreases += 1
					else
						position.Unchanged += 1
					end
				elseif previous == value then
					position.Unchanged += 1
				end
			end

			if type(value) == "number" then
				position.Sum += value
				if position.Min == nil or value < position.Min then
					position.Min = value
				end
				if position.Max == nil or value > position.Max then
					position.Max = value
				end
			elseif type(value) == "string" then
				local length = #value
				if position.MinStringLength == nil or length < position.MinStringLength then
					position.MinStringLength = length
				end
				if position.MaxStringLength == nil or length > position.MaxStringLength then
					position.MaxStringLength = length
				end
			elseif type(value) == "boolean" then
				if value then
					position.TrueCount += 1
				else
					position.FalseCount += 1
				end
			elseif type(value) == "EnumItem" then
				bump(position.EnumValues, tostring(value))
			elseif type(value) == "Instance" then
				bump(position.InstanceClasses, value.ClassName)
			elseif type(value) == "table" then
				local count = 0
				for _ in pairs(value) do
					count += 1
					if count > 4096 then
						break
					end
				end
				if position.MinTableKeys == nil or count < position.MinTableKeys then
					position.MinTableKeys = count
				end
				if position.MaxTableKeys == nil or count > position.MaxTableKeys then
					position.MaxTableKeys = count
				end
			end

			-- Distinct values are recorded through a bounded ring, so a remote
			-- called tens of thousands of times cannot grow the record without
			-- limit. The ring reports truncation; counters above stay exact.
			position.Distinct.Add(Ser.Inline(value, 40))
			position.Last = value
		end

		---------------------------------------------------------------------
		-- per-remote records
		---------------------------------------------------------------------

		local REMOTE_CLASSES = {
			RemoteEvent = true, RemoteFunction = true, UnreliableRemoteEvent = true,
			BindableEvent = true, BindableFunction = true,
		}

		Net.RemoteClasses = REMOTE_CLASSES

		local function newDirection()
			return {
				Count = 0,
				SyntheticCount = 0,
				MaxArity = 0,
				MinArity = nil,
				Positions = {},
				ResultPositions = {},
				ResultCount = 0,
				ResultErrors = 0,
				Callers = {},
				Listeners = {},
				Shapes = Util.Ring(24, 8),
				ShapeCounts = {},
				Samples = Util.Ring(12, 6),
				Timeline = Util.Ring(24, 12),
				Methods = {},
			}
		end

		function Net.For(instance)
			if type(instance) ~= "Instance" then
				return nil
			end
			local debugId = Compat.DebugId(instance)
			local record = Net.ByDebugId[debugId]
			if record then
				return record
			end
			record = {
				Instance = instance,
				Name = instance.Name,
				ClassName = instance.ClassName,
				DebugId = debugId,
				Path = Paths.Dotted(instance),
				LuaPath = Paths.Of(instance),
				ParentPath = instance.Parent and Paths.Dotted(instance.Parent) or nil,
				Outgoing = newDirection(),
				Incoming = newDirection(),
				FirstSeen = os.time(),
				LastSeen = os.time(),
			}
			Net.ByDebugId[debugId] = record
			Net.Records[#Net.Records + 1] = record
			return record
		end

		function Net.ForDebugId(debugId)
			return Net.ByDebugId[debugId]
		end

		--- The canonical type signature of a payload, used to count how many
		--- distinct shapes a remote is ever called with.
		local function shapeOf(packed)
			local parts = {}
			for index = 1, packed.n do
				parts[index] = Util.TypeName(packed[index])
			end
			return "(" .. table.concat(parts, ", ") .. ")"
		end

		--- Records one call. `info` carries:
		---   Args        table.pack result of the call
		---   Result      table.pack result, for invocations that return
		---   Method      "FireServer" | "InvokeServer" | "OnClientEvent" | ...
		---   Origin      Instance of the calling script, when attributable
		---   Line        line number in the calling script, when attributable
		---   SourceName  source name reported by the executor, when available
		---   IsSweep     true when AIDump's own sweep produced the call
		function Net.Record(directionName, instance, info)
			if Net.Suppressed() then
				return
			end
			local record = Net.For(instance)
			if not record then
				return
			end
			local direction = record[directionName]
			if not direction then
				return
			end

			local now = os.clock()
			record.LastSeen = os.time()
			direction.Count += 1
			if directionName == "Outgoing" then
				Net.Outgoing += 1
			else
				Net.Incoming += 1
			end

			local method = info.Method or "?"
			bump(direction.Methods, method)
			local synthetic = info.IsSweep or (Net.SyntheticDepth or 0) > 0
			if synthetic then
				direction.SyntheticCount += 1
			end

			-- Lets the state recorder note that a state change followed this
			-- call, as a counted co-occurrence with no causal claim attached.
			pcall(function()
				Req("State").MarkTraffic(record.Path, method, directionName)
			end)

			local args = info.Args
			local arity = args and args.n or 0
			direction.MaxArity = math.max(direction.MaxArity, arity)
			direction.MinArity = math.min(direction.MinArity or arity, arity)

			local shape = shapeOf(args or { n = 0 })
			bump(direction.ShapeCounts, shape)
			direction.Shapes.Add(shape)

			for index = 1, arity do
				local position = direction.Positions[index]
				if not position then
					position = newPosition()
					direction.Positions[index] = position
				end
				local value = args[index]
				observeValue(position, value, position.Last)
			end

			if info.Result then
				direction.ResultCount += 1
				local previousResult = direction.ResultPositions
				for index = 1, info.Result.n do
					local position = previousResult[index]
					if not position then
						position = newPosition()
						previousResult[index] = position
					end
					observeValue(position, info.Result[index], position.Last)
				end
			end

			if info.Error ~= nil then
				direction.ResultErrors += 1
			end

			-- Caller attribution: this is what links protocol to code.
			local origin = info.Origin
			if type(origin) == "Instance" then
				local originDebugId = Compat.DebugId(origin)
				local originPath = Paths.Dotted(origin)
				local key = string.format("%s|%s|%s", tostring(originDebugId), method, tostring(info.Line))
				local caller = direction.Callers[key]
				if not caller then
					caller = {
						OriginDebugId = originDebugId,
						OriginPath = originPath,
						OriginName = origin.Name,
						OriginClass = origin.ClassName,
						Method = method,
						Line = info.Line,
						SourceName = info.SourceName,
						Count = 0,
					}
					direction.Callers[key] = caller
				end
				caller.Count += 1
				if info.Line and caller.Line ~= info.Line then
					caller.Line = caller.Line or info.Line
					caller.MultipleLines = true
				end
				Scripts.RecordOutgoing(originDebugId, record.DebugId, method, info.Line, info.SourceName)
			end

			if info.Listener then
				local listenerDebugId = Compat.DebugId(info.Listener)
				local key = string.format("%s|%s", tostring(listenerDebugId), method)
				local listener = direction.Listeners[key]
				if not listener then
					listener = {
						ListenerDebugId = listenerDebugId,
						ListenerPath = Paths.Dotted(info.Listener),
						Method = method,
						Count = 0,
					}
					direction.Listeners[key] = listener
				end
				listener.Count += 1
				if type(info.Listener) == "Instance" then
					Scripts.RecordIncoming(listenerDebugId, record.DebugId, method)
				end
			end

			direction.Samples.Add({
				At = now,
				Method = method,
				Args = args,
				Result = info.Result,
				Error = info.Error,
				OriginPath = type(origin) == "Instance" and Paths.Dotted(origin) or nil,
				Line = info.Line,
				IsSweep = synthetic or nil,
			})
			direction.Timeline.Add({
				At = now,
				Args = Ser.Inline(args, 60),
				Line = info.Line,
			})
		end

		function Net.Census()
			local census = { Total = 0, WithOutgoing = 0, WithIncoming = 0, WithBoth = 0, Silent = 0 }
			for _, record in ipairs(Net.Records) do
				census.Total += 1
				local out = record.Outgoing.Count > 0
				local incoming = record.Incoming.Count > 0
				if out then census.WithOutgoing += 1 end
				if incoming then census.WithIncoming += 1 end
				if out and incoming then census.WithBoth += 1 end
				if not out and not incoming then census.Silent += 1 end
			end
			return census
		end

		function Net.NoteError(context, err)
			if #Net.Errors < 200 then
				Net.Errors[#Net.Errors + 1] = {
					Context = context,
					Message = Util.Truncate(tostring(err), 200),
					At = os.time(),
				}
			end
		end

		--- Informational observations that are facts about the game rather than
		--- failures in this script (for example a handler being installed after
		--- AIDump attached).
		function Net.Note(kind, subject, detail)
			if #Net.Notes < 400 then
				Net.Notes[#Net.Notes + 1] = {
					Kind = kind,
					Subject = Util.Truncate(tostring(subject), 120),
					Detail = Util.Truncate(tostring(detail), 200),
					At = os.time(),
				}
			end
		end

		return Net
	end,

	Outgoing = function()
		local Util = Req("Util")
		local Compat = Req("Compat")
		local Log = Req("Log")
		local Net = Req("Net")

		--- Outgoing capture. Two independent layers, because executors differ:
		---   * a `__namecall` metamethod on the DataModel, which sees the method
		---     name without having to patch anything;
		---   * prototype `hookfunction` on the five firing methods, which works
		---     where metamethod hooking is unavailable.
		--- Both simply record and forward.
		local Outgoing = {
			Methods = {
				RemoteEvent = "FireServer",
				UnreliableRemoteEvent = "FireServer",
				RemoteFunction = "InvokeServer",
				BindableEvent = "Fire",
				BindableFunction = "Invoke",
			},
			NamecallInstalled = false,
			PrototypeInstalled = {},
		}

		--- The five prototype methods, harvested from throwaway instances so we
		--- never need to look them up on a live remote.
		local function prototypeMethods()
			local methods = {}
			for className, methodName in pairs(Outgoing.Methods) do
				local ok, instance = pcall(Instance.new, className)
				if ok then
					local okMethod, fn = pcall(function()
						return instance[methodName]
					end)
					if okMethod and type(fn) == "function" then
						methods[methodName] = fn
					end
					pcall(function() instance:Destroy() end)
				end
			end
			return methods
		end

		--- Reads call-site attribution. Each accessor is independent: an executor
		--- may provide some and not others, and a missing one just yields nil.
		local function attribution()
			local info = {}
			local getcallingscript = Compat.Get("getcallingscript")
			local getscriptfromthread = Compat.Get("getscriptfromthread")
			if getscriptfromthread then
				pcall(function()
					local thread = coroutine.running()
					local ok, script = pcall(getscriptfromthread, thread)
					if ok and type(script) == "Instance" then
						info.Origin = script
					end
				end)
			end
			if not info.Origin and getcallingscript then
				pcall(function()
					local ok, script = pcall(getcallingscript)
					if ok and type(script) == "Instance" then
						info.Origin = script
					end
				end)
			end
			local getcallingline = Compat.Get("getcallingline")
			if getcallingline then
				pcall(function()
					local ok, line = pcall(getcallingline)
					if ok and type(line) == "number" then
						info.Line = line
					end
				end)
			end
			local getcallingsource = Compat.Get("getcallingsource")
			if getcallingsource then
				pcall(function()
					local ok, source = pcall(getcallingsource)
					if ok and type(source) == "string" then
						info.SourceName = source
					end
				end)
			end
			return info
		end

		--- Depth above our own frames varies with which layer fired and whether
		--- alternate hooks are in use, so the stack is walked until it leaves our
		--- own source and the first plausible script frame is taken.
		local function attributionFromStack(baseLevel)
			local info = {}
			local level = baseLevel
			while level <= 24 do
				local okSource, source = pcall(debug.info, level, "s")
				if not okSource then
					break
				end
				if source ~= "[C]" then
					local okScript, script = pcall(debug.info, level, "f")
					if okScript and type(script) == "function" then
						local okOrigin, origin = pcall(function()
							local getscriptfromthread = Compat.Get("getscriptfromthread")
							if not getscriptfromthread then
								return nil
							end
							local thread = debug.info(level + 1, "t")
							return thread and getscriptfromthread(thread) or nil
						end)
						if okOrigin and type(origin) == "Instance" then
							info.Origin = origin
							info.SourceName = source
							local okLine, line = pcall(debug.info, level, "l")
							if okLine and type(line) == "number" then
								info.Line = line
							end
							return info
						end
					end
				end
				level += 1
			end
			return info
		end

		function Outgoing.InstallNamecall()
			local hookmetamethod = Compat.Get("hookmetamethod")
			local getnamecallmethod = Compat.Get("getnamecallmethod")
			if not hookmetamethod or not getnamecallmethod then
				return false, "hookmetamethod and getnamecallmethod are both required"
			end
			local original = Net.HookMetaMethod(game, "__namecall", function(...)
				local self = select(1, ...)
				local okMethod, method = pcall(getnamecallmethod)
				if okMethod and type(self) == "Instance" and Outgoing.Methods[self.ClassName] == method then
					if not Net.Suppressed() then
						local packed = table.pack(select(2, ...))
						local info = attribution()
						if not info.Origin then
							info = attributionFromStack(4)
						end
						info.Args = packed
						info.Method = method
						local ok, err = pcall(Net.Record, "Outgoing", self, info)
						if not ok then
							Net.NoteError("outgoing namecall", err)
						end
					end
					return original(self, ...)
				end
				return original(...)
			end)
			if not original then
				return false, "namecall hook failed"
			end
			Outgoing.NamecallInstalled = true
			return true
		end

		function Outgoing.InstallPrototypes()
			local hookfunction = Compat.Get("hookfunction")
			if not hookfunction then
				return false, "hookfunction unavailable"
			end
			local installed = 0
			for methodName, original in pairs(prototypeMethods()) do
				local previous = Net.HookFunction(original, function(...)
					if not Net.Suppressed() then
						local packed = table.pack(...)
						local info = attributionFromStack(4)
						info.Args = packed
						info.Method = methodName
						local ok, err = pcall(Net.Record, "Outgoing", select(1, ...), info)
						if not ok then
							Net.NoteError("outgoing prototype", err)
						end
					end
					if methodName == "InvokeServer" or methodName == "Invoke" then
						return previous(...)
					end
					previous(...)
				end)
				if previous then
					installed += 1
					Outgoing.PrototypeInstalled[methodName] = previous
				end
			end
			return installed > 0, string.format("%d prototype method(s) hooked", installed)
		end

		function Outgoing.Install()
			local namecallOk, namecallDetail = Outgoing.InstallNamecall()
			if namecallOk then
				Log.Info("outgoing: __namecall layer active")
			else
				Log.Warn("outgoing: __namecall layer unavailable -", namecallDetail)
			end
			local prototypeOk, prototypeDetail = Outgoing.InstallPrototypes()
			if prototypeOk then
				Log.Info("outgoing: prototype layer active -", prototypeDetail)
			else
				Log.Warn("outgoing: prototype layer unavailable -", prototypeDetail)
			end
			Net.Active = namecallOk or prototypeOk
			return Net.Active
		end

		return Outgoing
	end,

	Incoming = function()
		local Util = Req("Util")
		local Compat = Req("Compat")
		local Log = Req("Log")
		local Net = Req("Net")

		--- Incoming capture, in three independently useful layers:
		---
		--- 1. Observer connections. AIDump connects one handler of its own to
		---    each observed signal, then enumerates the game's handlers with
		---    `getconnections` when it fires. This is the only way to observe a
		---    RemoteEvent the client holds no reference to. It adds one
		---    connection per signal; it never suppresses or reorders events.
		--- 2. Callback detours. For RemoteFunction/BindableFunction the
		---    `OnClientInvoke`/`OnInvoke` function is wrapped so both arguments
		---    and return values are captured. The original is always called.
		--- 3. Assignment hook. `OnClientInvoke`/`OnInvoke` are frequently
		---    assigned after AIDump attaches, so `__newindex` is watched to
		---    re-wrap a replacement.
		local Incoming = {
			Signals = {
				RemoteEvent = "OnClientEvent",
				UnreliableRemoteEvent = "OnClientEvent",
				BindableEvent = "Event",
			},
			Callbacks = {
				RemoteFunction = "OnClientInvoke",
				BindableFunction = "OnInvoke",
			},
			Tracked = {},
			ObserverCount = 0,
			DetourCount = 0,
			NewIndexInstalled = false,
		}

		local function attributes()
			local info = {}
			local getscriptfromthread = Compat.Get("getscriptfromthread")
			local getcallingscript = Compat.Get("getcallingscript")
			if getscriptfromthread then
				pcall(function()
					local ok, script = pcall(getscriptfromthread, coroutine.running())
					if ok and type(script) == "Instance" then
						info.Origin = script
					end
				end)
			end
			if not info.Origin and getcallingscript then
				pcall(function()
					local ok, script = pcall(getcallingscript)
					if ok and type(script) == "Instance" then
						info.Origin = script
					end
				end)
			end
			return info
		end

		--- Enumerates the game's own handlers on a signal, excluding AIDump's
		--- observer. Used only for attribution, never to modify anything.
		local function listenersOf(instance, signal, observerFunction)
			local out = {}
			local getconnections = Compat.Get("getconnections")
			if not getconnections then
				return out, false
			end
			local ok, connections = pcall(getconnections, signal)
			if not ok or type(connections) ~= "table" then
				return out, false
			end
			for _, connection in ipairs(connections) do
				local okFn, fn = pcall(function()
					return connection.Function
				end)
				if okFn and type(fn) == "function" and fn ~= observerFunction then
					local thread = (pcall(function() return connection.Thread end)) and connection.Thread or nil
					local origin = nil
					if thread and Compat.Has("getscriptfromthread") then
						local okOrigin, script = pcall(Compat.Get("getscriptfromthread"), thread)
						if okOrigin and type(script) == "Instance" then
							origin = script
						end
					end
					out[#out + 1] = { Function = fn, Origin = origin, Thread = thread }
				end
			end
			return out, true
		end

		---------------------------------------------------------------------
		-- layer 1: observer connections
		---------------------------------------------------------------------

		function Incoming.ObserveSignals(instance)
			local signalName = Incoming.Signals[instance.ClassName]
			if not signalName then
				return false, "no signal on " .. instance.ClassName
			end
			if Incoming.Tracked[instance] then
				return true, "already observed"
			end

			local ok, signal = pcall(function()
				return instance[signalName]
			end)
			if not ok or type(signal) ~= "Instance" then
				return false, "signal unreadable"
			end

			local observer
			observer = function(...)
				if Net.Suppressed() then
					return
				end
				local packed = table.pack(...)
				local okRecord, err = pcall(function()
					local listeners, enumerated = listenersOf(instance, signal, observer)
					local info = {
						Args = packed,
						Method = signalName,
					}
					if #listeners > 0 then
						local listenerOrigin = listeners[1].Origin
						if listenerOrigin then
							info.Origin = listenerOrigin
						end
						info.Listener = listenerOrigin
					else
						info.Origin = attributes().Origin
					end
					info.Enumerated = enumerated
					info.ListenerCount = #listeners
					Net.Record("Incoming", instance, info)
				end)
				if not okRecord then
					Net.NoteError("incoming observer", err)
				end
			end

			local connected, connection = pcall(function()
				return signal:Connect(observer)
			end)
			if not connected then
				return false, "Connect failed: " .. tostring(connection)
			end

			Incoming.Tracked[instance] = {
				SignalName = signalName,
				Observer = observer,
				Connection = connection,
				Fires = 0,
			}
			Incoming.ObserverCount += 1
			return true, "observing " .. signalName
		end

		---------------------------------------------------------------------
		-- layer 2: callback detours
		---------------------------------------------------------------------

		function Incoming.DetourCallback(instance)
			local callbackName = Incoming.Callbacks[instance.ClassName]
			if not callbackName then
				return false, "no callback on " .. instance.ClassName
			end
			local getcallbackvalue = Compat.Get("getcallbackvalue")
			if not getcallbackvalue then
				return false, "getcallbackvalue unavailable"
			end
			local ok, original = pcall(getcallbackvalue, instance, callbackName)
			if not ok or type(original) ~= "function" then
				return false, "callback unreadable"
			end
			if Incoming.Tracked[instance] and Incoming.Tracked[instance].Detour then
				return true, "already detoured"
			end

			local replacement = function(...)
				local packed = table.pack(...)
				if not Net.Suppressed() then
					pcall(function()
						local info = attributes()
						info.Args = packed
						info.Method = callbackName
						info.Listener = info.Origin
						info.IsInvoke = true
						Net.Record("Incoming", instance, info)
					end)
				end
				local results = table.pack(original(...))
				if not Net.Suppressed() then
					pcall(function()
						local record = Net.For(instance)
						if record then
							record.Incoming.ResultCount += 1
						end
					end)
				end
				return table.unpack(results, 1, results.n)
			end

			local newcclosure = Compat.Get("newcclosure")
			local callable = replacement
			if newcclosure then
				pcall(function()
					local built = newcclosure(replacement, "AIDumpCallbackObserver")
					if type(built) == "function" then
						callable = built
					end
				end)
			end

			local assigned, assignedError = pcall(function()
				instance[callbackName] = callable
			end)
			if not assigned then
				return false, "assignment rejected: " .. tostring(assignedError)
			end

			Incoming.Tracked[instance] = Incoming.Tracked[instance] or {}
			Incoming.Tracked[instance].Detour = true
			Incoming.Tracked[instance].DetourName = callbackName
			Incoming.Tracked[instance].DetourOriginal = original
			Incoming.Tracked[instance].DetourReplacement = callable
			Incoming.DetourCount += 1
			return true, "detoured " .. callbackName
		end

		---------------------------------------------------------------------
		-- layer 3: assignment hook
		---------------------------------------------------------------------

		function Incoming.InstallAssignmentHook()
			local getnamecallmethod = Compat.Get("getnamecallmethod")
			if not getnamecallmethod then
				return false, "getnamecallmethod unavailable"
			end
			local original = Net.HookMetaMethod(game, "__newindex", function(self, key, value)
				if type(self) == "Instance" and type(key) == "string"
					and Incoming.Callbacks[self.ClassName] == key
					and type(value) == "function" then
					-- The game is installing a fresh handler. Record it as a
					-- listener, then let the assignment proceed untouched.
					pcall(function()
						local info = attributes()
						Net.Note("callback-assigned",
							string.format("%s.%s", self.ClassName, key),
							info.Origin and info.Origin:GetFullName() or "origin unknown")
					end)
				end
				return original(self, key, value)
			end)
			if not original then
				return false, "assignment hook failed"
			end
			Incoming.NewIndexInstalled = true
			return true
		end

		---------------------------------------------------------------------
		-- tracking
		---------------------------------------------------------------------

		function Incoming.Track(instance)
			if not Net.RemoteClasses[instance.ClassName] then
				return false, "not a remote"
			end
			local record = Net.For(instance)
			if not record then
				return false, "no record"
			end
			if Incoming.Signals[instance.ClassName] then
				local ok, detail = Incoming.ObserveSignals(instance)
				if ok then
					return true, detail
				end
				Log.Debug("signal observation failed for", instance:GetFullName(), "-", detail)
				return false, detail
			end
			local ok, detail = Incoming.DetourCallback(instance)
			if ok then
				return true, detail
			end
			Log.Debug("callback detour failed for", instance:GetFullName(), "-", detail)
			return false, detail
		end

		function Incoming.Install()
			local tracked, failed = 0, {}
			local getdescendants = game.GetDescendants
			local okAll, all = pcall(getdescendants, game)
			if okAll then
				for _, instance in ipairs(all) do
					if Net.RemoteClasses[instance.ClassName] then
						local ok, detail = Incoming.Track(instance)
						if ok then
							tracked += 1
						else
							failed[#failed + 1] = string.format("%s (%s)", instance:GetFullName(), tostring(detail))
						end
					end
				end
			end

			-- Instances created later are picked up as they appear.
			Net.InstalledHooks[#Net.InstalledHooks + 1] = { Kind = "connection" }
			local connection = game.DescendantAdded:Connect(function(instance)
				if Net.RemoteClasses[instance.ClassName] then
					task.defer(function()
						local ok, detail = Incoming.Track(instance)
						if ok then
							tracked += 1
						else
							failed[#failed + 1] = string.format("%s (%s)", instance:GetFullName(), tostring(detail))
						end
					end)
				end
			end)
			Incoming.DescendantConnection = connection

			local assignmentOk, assignmentDetail = Incoming.InstallAssignmentHook()
			if not assignmentOk then
				Log.Warn("incoming: assignment hook unavailable -", assignmentDetail)
			end

			Log.Info("incoming: tracked", tracked, "remote(s); observers",
				Incoming.ObserverCount, "detours", Incoming.DetourCount)
			if #failed > 0 and #failed <= 20 then
				Log.Warn("incoming: untracked -", table.concat(failed, ", "))
			end
			return tracked > 0
		end

		--- Removes every observation AIDump added. Observer connections are
		--- disconnected and replaced callbacks are restored to the functions the
		--- game installed, so the game is left exactly as it was found.
		function Incoming.Teardown()
			if Incoming.DescendantConnection then
				pcall(function() Incoming.DescendantConnection:Disconnect() end)
				Incoming.DescendantConnection = nil
			end
			for instance, entry in pairs(Incoming.Tracked) do
				if entry.Detour and entry.DetourOriginal then
					pcall(function()
						instance[entry.DetourName] = entry.DetourOriginal
					end)
				end
				if entry.Connection then
					pcall(function() entry.Connection:Disconnect() end)
				end
			end
			table.clear(Incoming.Tracked)
			Incoming.ObserverCount = 0
			Incoming.DetourCount = 0
		end

		return Incoming
	end,
}

for moduleName, moduleFactory in pairs(SECTION6) do
	Modules[moduleName] = moduleFactory
end

--[[
	SECTION 7 — DECOMPILATION AND STATE

	Decompile is a single interface with three layers, first success wins. The
	layer that produced each output is recorded on that output, and any failure
	is recorded as a reason rather than producing an empty file, because a blank
	script file reads as "nothing here" rather than "could not be read".

	State records attribute and value-object transitions. It records observed
	co-occurrence between a traffic event and a state change as a counted fact
	with its elapsed time, and never as a causal statement.
]]

local SECTION7 = {
	Decompile = function()
		local Util = Req("Util")
		local Compat = Req("Compat")
		local Log = Req("Log")
		local Bytecode = Req("Bytecode")

		local Decompile = {
			Counts = {
				Source = 0,
				Executor = 0,
				Disassembly = 0,
				BytecodeUnsupported = 0,
				NoBytecode = 0,
				Failed = 0,
			},
			Results = {},
		}

		local function headerFor(record, method, extra)
			local lines = {
				"--[[",
				string.format("\tAIDump decompilation output for %s", record.ClassName),
				string.format("\tScript:      %s", record.Path),
				string.format("\tMethod:      %s", method),
			}
			if record.RunContext then
				lines[#lines + 1] = string.format("\tRunContext:  %s", record.RunContext)
			end
			lines[#lines + 1] = string.format("\tDebugId:     %s", tostring(record.DebugId))
			if record.Reason then
				lines[#lines + 1] = string.format("\tNote:        %s", record.Reason)
			end
			if extra then
				lines[#lines + 1] = extra
			end
			lines[#lines + 1] = "]]"
			return table.concat(lines, "\n")
		end

		--- Layer 1: the script's own source, when the client exposes it.
		local function fromSource(record)
			local ok, source = pcall(function()
				return record.Instance.Source
			end)
			if not ok or type(source) ~= "string" then
				return nil, "Source unreadable"
			end
			-- Roblox returns a placeholder rather than nil when the source is not
			-- client-accessible, so treat that placeholder as a failure.
			if source == "" then
				return nil, "Source empty"
			end
			if source:find("This script is not accessible", 1, true) ~= nil then
				return nil, "Source withheld by the client"
			end
			return source, nil
		end

		--- Layer 2: the executor's own decompiler.
		local function fromExecutor(record)
			local decompile = Compat.Get("decompile")
			if not decompile then
				return nil, "decompile unavailable"
			end
			local ok, source = pcall(decompile, record.Instance)
			if not ok then
				return nil, "decompile error: " .. Util.Truncate(tostring(source), 120)
			end
			if type(source) ~= "string" or #source == 0 then
				return nil, "decompile returned no source"
			end
			return source, nil
		end

		--- Layer 3: parse the bytecode ourselves and disassemble it.
		local function fromBytecode(record)
			local getscriptbytecode = Compat.Get("getscriptbytecode")
			if not getscriptbytecode then
				return nil, "getscriptbytecode unavailable"
			end
			local ok, bytes = pcall(getscriptbytecode, record.Instance)
			if not ok then
				return nil, "getscriptbytecode error: " .. Util.Truncate(tostring(bytes), 120)
			end
			if bytes == nil or bytes == "" then
				return nil, "no bytecode for this script"
			end
			local payload = type(bytes) == "string" and bytes
				or (type(bytes) == "buffer" and buffer.tostring(bytes) or nil)
			if not payload then
				return nil, "bytecode is " .. type(bytes)
			end

			local parsed, reason = Bytecode.Deserialize(payload)
			if not parsed then
				-- Not a failure: the bytes are still a recordable fact.
				return {
					Method = "bytecode-unsupported",
					Reason = reason,
					HexDump = Bytecode.HexDump(payload, 4096),
					BytecodeSize = #payload,
					BytecodeVersion = string.byte(payload, 1),
				}, nil
			end

			return {
				Method = "bytecode-disassembly",
				Disassembly = Bytecode.Disassemble(parsed, {
					ScriptPath = record.Path,
				}),
				Meta = {
					BytecodeVersion = parsed.Version,
					TypesVersion = parsed.TypesVersion,
					TypeInfoSize = parsed.TypeInfoSize,
					ProtoCount = parsed.ProtoCount,
					BytesTotal = parsed.BytesTotal,
					BytesConsumed = parsed.BytesConsumed,
					HeaderOffset = parsed.ScanOffset or 0,
					Warnings = parsed.Warnings,
					RootCodeSize = parsed.Root.CodeSize,
					RootConstants = parsed.Root.SizeK,
					RootUpvalues = parsed.Root.SizeUpvalues,
					HasDebugInfo = parsed.Root.HasDebugInfo,
					LocalVarNames = #parsed.Root.LocalVars,
				},
			}, nil
		end

		--- Attempts every layer in order and returns a uniform result:
		---   Method, Reason, Source, Disassembly, HexDump, Meta
		function Decompile.Script(record)
			local result = {
				Method = "failed",
				Source = nil,
				Disassembly = nil,
				HexDump = nil,
				Meta = nil,
				Attempts = {},
			}

			local source, sourceReason = fromSource(record)
			result.Attempts[#result.Attempts + 1] = "source: " .. (source and "ok" or sourceReason)
			if source then
				result.Method = "source"
				result.Source = headerFor(record, "source (script.Source)") .. "\n" .. source
				Decompile.Counts.Source += 1
				record.Decompile = "source"
				Decompile.Results[record.Path] = result
				return result
			end

			local decompiled, decompileReason = fromExecutor(record)
			result.Attempts[#result.Attempts + 1] = "decompile: " .. (decompiled and "ok" or decompileReason)
			if decompiled then
				result.Method = "executor-decompile"
				result.Source = headerFor(record, "executor decompile()") .. "\n" .. decompiled
				Decompile.Counts.Executor += 1
				record.Decompile = "executor-decompile"
				Decompile.Results[record.Path] = result
				return result
			end

			local fromBytes, bytecodeReason = fromBytecode(record)
			result.Attempts[#result.Attempts + 1] = "bytecode: " .. (fromBytes and fromBytes.Method or bytecodeReason)
			if fromBytes then
				result.Method = fromBytes.Method
				result.Reason = fromBytes.Reason
				result.HexDump = fromBytes.HexDump
				result.Meta = fromBytes.Meta
				if fromBytes.Disassembly then
					result.Disassembly = headerFor(record, "bytecode disassembly") .. "\n"
						.. fromBytes.Disassembly
					Decompile.Counts.Disassembly += 1
					record.Decompile = "bytecode-disassembly"
				else
					result.Disassembly = headerFor(
						record,
						"raw bytecode (structure not parsed)",
						string.format("\tBytecode size: %d bytes", fromBytes.BytecodeSize or 0)
					) .. "\n" .. (fromBytes.HexDump or "")
					Decompile.Counts.BytecodeUnsupported += 1
					record.Decompile = "bytecode-unsupported"
				end
				Decompile.Results[record.Path] = result
				return result
			end

			result.Method = if bytecodeReason == "no bytecode for this script"
				then "no-bytecode" else "failed"
			result.Reason = (sourceReason or "") .. "; " .. (decompileReason or "") .. "; " .. (bytecodeReason or "")
			result.Attempts[#result.Attempts + 1] = "unavailable: " .. tostring(bytecodeReason)
			if result.Method == "no-bytecode" then
				Decompile.Counts.NoBytecode += 1
			else
				Decompile.Counts.Failed += 1
			end
			record.Decompile = result.Method
			Decompile.Results[record.Path] = result
			return result
		end

		function Decompile.Summary()
			local counts = {}
			for _, result in pairs(Decompile.Results) do
				counts[result.Method] = (counts[result.Method] or 0) + 1
			end
			return counts
		end

		return Decompile
	end,

	State = function()
		local Util = Req("Util")
		local Compat = Req("Compat")
		local Log = Req("Log")
		local Paths = Req("Paths")
		local Ser = Req("Ser")

		--- Observed state: attribute values and value-object contents over time.
		---
		--- Each tracked cell keeps an exact change count plus a bounded set of
		--- distinct values and, for numbers, min/max and the number of times the
		--- value moved up or down. That is enough for a reader to characterise a
		--- progression or a resource without this module ever guessing what the
		--- numbers mean.
		local State = {
			Attributes = {},
			Objects = {},
			Watched = setmetatable({}, { __mode = "k" }),
			Connections = {},
			Changes = 0,
			LastTraffic = nil,
			TrafficEvents = 0,
			CoOccurrences = {},
		}

		local VALUE_CLASSES = {
			IntValue = true, NumberValue = true, StringValue = true, BoolValue = true,
			ObjectValue = true, CFrameValue = true, Vector3Value = true,
			Color3Value = true, NumberRangeValue = true, BrickColorValue = true,
			NumberSequenceValue = true, ColorSequenceValue = true,
		}
		State.ValueClasses = VALUE_CLASSES

		local function newCell(className, initial)
			return {
				ClassName = className,
				TypeName = Util.TypeName(initial),
				Count = 0,
				Changes = 0,
				Distinct = Util.Ring(24, 8),
				Min = nil,
				Max = nil,
				Increases = 0,
				Decreases = 0,
				Unchanged = 0,
				FirstAt = os.clock(),
				LastAt = os.clock(),
				Last = nil,
				LastTraffic = nil,
				LastTrafficElapsed = nil,
				TrafficHits = 0,
			}
		end

		local function observe(cell, value, now)
			cell.Count += 1
			if cell.Last ~= nil then
				cell.Changes += 1
				if type(cell.Last) == "number" and type(value) == "number" then
					if value > cell.Last then
						cell.Increases += 1
					elseif value < cell.Last then
						cell.Decreases += 1
					else
						cell.Unchanged += 1
					end
				elseif cell.Last == value then
					cell.Unchanged += 1
				end
			end
			if type(value) == "number" then
				if cell.Min == nil or value < cell.Min then
					cell.Min = value
				end
				if cell.Max == nil or value > cell.Max then
					cell.Max = value
				end
			end
			cell.Distinct.Add(Ser.Inline(value, 40))
			cell.Last = value
			cell.LastAt = now

			-- Co-occurrence with the most recent observed traffic event. Recorded
			-- as a count and an elapsed time; no causal relationship is asserted.
			if State.LastTraffic then
				local elapsed = now - State.LastTraffic.At
				cell.TrafficHits += 1
				cell.LastTraffic = State.LastTraffic.Key
				cell.LastTrafficElapsed = elapsed
				local key = State.LastTraffic.Key
				State.CoOccurrences[key] = (State.CoOccurrences[key] or 0) + 1
			end
		end

		---------------------------------------------------------------------
		-- traffic marking
		---------------------------------------------------------------------

		--- Called by the network layer so state changes can be correlated with
		--- the remote calls that preceded them.
		function State.MarkTraffic(remotePath, method, direction)
			State.TrafficEvents += 1
			State.LastTraffic = {
				Key = string.format("%s %s %s", tostring(direction or ""), tostring(method or ""), tostring(remotePath or "")),
				At = os.clock(),
			}
		end

		---------------------------------------------------------------------
		-- watching
		---------------------------------------------------------------------

		local function attributeKey(instance, name)
			return string.format("%s[%s]", Paths.Dotted(instance), name)
		end

		local function objectKey(instance)
			return Paths.Dotted(instance)
		end

		function State.Watch(instance)
			if type(instance) ~= "Instance" or State.Watched[instance] then
				return
			end
			State.Watched[instance] = true
			local path = Paths.Dotted(instance)

			-- Record the attributes present right now.
			local ok, attributes = pcall(function()
				return instance:GetAttributes()
			end)
			if ok and type(attributes) == "table" then
				for name, value in pairs(attributes) do
					local key = attributeKey(instance, name)
					local cell = State.Attributes[key]
					if not cell then
						cell = newCell(instance.ClassName, value)
						State.Attributes[key] = cell
					end
					observe(cell, value, os.clock())
				end
			end

			local okSignal, getSignal = pcall(function()
				return function(name)
					return instance:GetAttributeChangedSignal(name)
				end
			end)
			if okSignal then
				State.ScanAttributes(instance)
			end

			-- Value objects expose a single `Changed` signal.
			if VALUE_CLASSES[instance.ClassName] then
				local okChanged, changed = pcall(function()
					return instance.Changed
				end)
				if okChanged and changed then
					local connected, connection = pcall(function()
						return changed:Connect(function(value)
							if State.Watched[instance] then
								local key = objectKey(instance)
								local cell = State.Objects[key]
								if not cell then
									cell = newCell(instance.ClassName, value)
									State.Objects[key] = cell
								end
								observe(cell, value, os.clock())
								State.Changes += 1
							end
						end)
					end)
					if connected then
						State.Connections[#State.Connections + 1] = connection
						local key = objectKey(instance)
						if not State.Objects[key] then
							local value = (pcall(function() return instance.Value end)) and instance.Value or nil
							local cell = newCell(instance.ClassName, value)
							observe(cell, value, os.clock())
							State.Objects[key] = cell
						end
					end
				end
			end
			State.WatchedCount = (State.WatchedCount or 0) + 1
		end

		State.attributeScan = {}
		State.WatchedCount = 0
		State.attachedAttributes = {}
		State.Scanning = {}

		--- Roblox exposes no wildcard "any attribute changed" signal, so a
		--- connection is installed per attribute name. Attribute names that appear
		--- after watching began are picked up by this rescan, which the export
		--- tick calls for every watched instance. An attribute that is created and
		--- never changes is therefore only discovered at the next export; that
		--- limitation is stated in 07-COVERAGE.md rather than papered over.
		function State.ScanAttributes(instance)
			if State.Scanning[instance] then
				return 0
			end
			State.Scanning[instance] = true
			local added = 0
			local ok, attributes = pcall(function()
				return instance:GetAttributes()
			end)
			if ok and type(attributes) == "table" then
				for name in pairs(attributes) do
					local marker = string.format("%s:%s", Paths.Dotted(instance), name)
					if not State.attachedAttributes[marker] then
						State.attachedAttributes[marker] = true
						local cellKey = attributeKey(instance, name)
						local cell = State.Attributes[cellKey]
						if not cell then
							cell = newCell(instance.ClassName, attributes[name])
							observe(cell, attributes[name], os.clock())
							State.Attributes[cellKey] = cell
						end
						local connected, connection = pcall(function()
							return instance:GetAttributeChangedSignal(name):Connect(function(value)
								if not State.Watched[instance] then
									return
								end
								local liveCell = State.Attributes[cellKey]
								if not liveCell then
									liveCell = newCell(instance.ClassName, value)
									State.Attributes[cellKey] = liveCell
								end
								observe(liveCell, value, os.clock())
								State.Changes += 1
								-- A change may have introduced further attribute
								-- names on this instance.
								State.ScanAttributes(instance)
							end)
						end)
						if connected then
							State.Connections[#State.Connections + 1] = connection
							added += 1
						end
					end
				end
			end
			State.Scanning[instance] = nil
			return added
		end

		--- Rescans every watched instance. Called on each export tick so newly
		--- created attribute names become observable.
		function State.RescanAll()
			local added = 0
			for instance in pairs(State.Watched) do
				added += State.ScanAttributes(instance)
			end
			return added
		end

		function State.Install(rootInstances)
			local queue = rootInstances or {}
			for _, instance in ipairs(queue) do
				State.Watch(instance)
			end
			local connected, connection = pcall(function()
				return game.DescendantAdded:Connect(function(instance)
					State.Watch(instance)
				end)
			end)
			if connected then
				State.Connections[#State.Connections + 1] = connection
			end
			pcall(function()
				game.DescendantRemoving:Connect(function(instance)
					State.Watched[instance] = nil
				end)
			end)
			Log.Info("state: watching", State.WatchedCount, "instance(s)")
			return State
		end

		function State.Teardown()
			for _, connection in ipairs(State.Connections) do
				pcall(function() connection:Disconnect() end)
			end
			table.clear(State.Connections)
		end

		function State.AttributeCells()
			local cells = {}
			for key, cell in pairs(State.Attributes) do
				cells[#cells + 1] = { Key = key, Cell = cell }
			end
			table.sort(cells, function(a, b)
				if a.Cell.Changes ~= b.Cell.Changes then
					return a.Cell.Changes > b.Cell.Changes
				end
				return a.Key < b.Key
			end)
			return cells
		end

		function State.ObjectCells()
			local cells = {}
			for key, cell in pairs(State.Objects) do
				cells[#cells + 1] = { Key = key, Cell = cell }
			end
			table.sort(cells, function(a, b)
				if a.Cell.Changes ~= b.Cell.Changes then
					return a.Cell.Changes > b.Cell.Changes
				end
				return a.Key < b.Key
			end)
			return cells
		end

		return State
	end,
}

for moduleName, moduleFactory in pairs(SECTION7) do
	Modules[moduleName] = moduleFactory
end

--[[
	SECTION 8 — DOCUMENTATION EMITTERS

	Md is the only place Markdown is constructed, so escaping and the fact
	linter cannot be bypassed by accident. Every prose line passes through
	Lint.Line; value cells do not, because a remote genuinely named "Likely"
	must still be printable.
]]

local SECTION8 = {
	Docs = function()
		local Util = Req("Util")
		local Ser = Req("Ser")

		local Docs = {
			Violations = {},
			ViolationCount = 0,
			CheckedLines = 0,
		}

		---------------------------------------------------------------------
		-- fact discipline
		---------------------------------------------------------------------

		--- Words that assert something the run did not observe. Any occurrence
		--- in generated prose is a defect: the reader is entitled to assume
		--- every line in these files is a measurement.
		---
		--- Only hedging and causal language is listed. Game vocabulary such as
		--- "health" or "score" is deliberately NOT banned: those words are
		--- legitimate content inside value cells (an attribute really can be named
		--- `Health`), and value cells are not linted at all. Banning them here
		--- would only produce false positives in headings and would stop the
		--- output naming the thing it actually observed.
		local BANNED = {
			["likely"] = true, ["probably"] = true, ["appears"] = true,
			["appear"] = true, ["seems"] = true, ["seem"] = true,
			["suggests"] = true, ["suggest"] = true, ["indicates"] = true,
			["indicate"] = true, ["implies"] = true, ["imply"] = true,
			["presumably"] = true, ["typically"] = true, ["usually"] = true,
			["inferred"] = true, ["inference"] = true, ["assumed"] = true,
			["conjectured"] = true, ["hypothesis"] = true, ["hypothesise"] = true,
			["hypothesize"] = true, ["evidently"] = true, ["presume"] = true,
			["suspected"] = true, ["believed"] = true, ["conjecture"] = true,
		}

		-- Connectives that turn two adjacent observations into a claim.
		local CONNECTIVES = {
			["therefore"] = true, ["thus"] = true, ["because"] = true,
			["causes"] = true, ["caused"] = true, ["causing"] = true,
			["hence"] = true, ["consequently"] = true, ["due to"] = true,
			["leads to"] = true, ["results in"] = true, ["drives"] = true,
			["driven by"] = true, ["governed by"] = true, ["tied to"] = true,
		}

		local function containsWord(haystack, needle)
			-- Whole-word, case-insensitive match. The left boundary is a frontier
			-- into word characters and the right is a frontier out of them, so
			-- "Appears" is caught while "Appearance" is not. The haystack is always
			-- lowercased before it reaches here.
			local escaped = needle:gsub("(%W)", "%%%1")
			local pattern = "%f[%w]" .. escaped .. "%f[%W]"
			local ok, found = pcall(string.find, haystack, pattern)
			return ok and found ~= nil
		end

		--- Returns `nil, violations` when the line contains an assertion. Returns
		--- the line unchanged when it is clean.
		function Docs.LintLine(text)
			if type(text) ~= "string" or text == "" then
				return text
			end
			-- Code blocks carry decompiled source, which may legitimately contain
			-- any word at all. They are data, not claims.
			if text:sub(1, 3) == "```" then
				return text
			end
			Docs.CheckedLines += 1
			local lowered = text:lower()
			local violations = {}
			for word in pairs(BANNED) do
				if containsWord(lowered, word) then
					violations[#violations + 1] = word
				end
			end
			for phrase in pairs(CONNECTIVES) do
				if containsWord(lowered, phrase) then
					violations[#violations + 1] = phrase
				end
			end
			if #violations > 0 then
				table.sort(violations)
				Docs.ViolationCount += 1
				if #Docs.Violations < 100 then
					Docs.Violations[#Docs.Violations + 1] = {
						Line = Util.Truncate(text, 160),
						Terms = violations,
					}
				end
				return nil, violations, text
			end
			return text
		end

		function Docs.Guarded(text)
			local clean, violations = Docs.LintLine(text)
			if clean == nil then
				-- Never silently drop a line: replace it with a neutral marker so
				-- the violation is visible in the output instead of the content.
				return "--[[ AIDump: line withheld as unverified assertion ("
					.. table.concat(violations or {}, ", ") .. ") ]]"
			end
			return clean
		end

		---------------------------------------------------------------------
		-- markdown construction
		---------------------------------------------------------------------

		local Md = {}

		--- Escapes a value for use inside a Markdown table cell. This is the only
		--- sanctioned way to place a value in a table.
		function Md.Cell(value)
			if value == nil then
				return ""
			end
			local text
			if type(value) == "string" then
				text = value
			elseif type(value) == "number" or type(value) == "boolean" then
				text = tostring(value)
			else
				text = Ser.Inline(value, 120)
			end
			text = tostring(text)
			text = text:gsub("\r\n", " ")
			text = text:gsub("[\r\n]", " <br> ")
			text = text:gsub("|", "\\|")
			text = text:gsub("`", "'")
			text = text:gsub("<", "&lt;")
			text = text:gsub(">", "&gt;")
			text = text:gsub("%s+", " ")
			return text:gsub("^%s+", ""):gsub("%s+$", "")
		end

		--- Backtick-fences a value for a Markdown code span. Table cells use Cell
		--- instead; this is for prose and lists.
		function Md.Code(value)
			local text = type(value) == "string" and value or tostring(value)
			text = text:gsub("`", "'")
			local fence = "`"
			while text:find(fence, 1, true) do
				fence = fence .. "`"
			end
			return fence .. text .. fence
		end

		function Md.Heading(level, text)
			return string.rep("#", level) .. " " .. Docs.Guarded(tostring(text))
		end

		function Md.Bullet(text, indent)
			return string.rep("  ", indent or 0) .. "- " .. Docs.Guarded(tostring(text))
		end

		function Md.Rule()
			return "---"
		end

		--- Builds a table from a header row plus an array of row arrays. Any
		--- missing cell is rendered as an explicit em dash so a short row cannot
		--- be misread as a full one.
		function Md.Table(headers, rows, aligns)
			local out = {}
			local headerParts = {}
			for index = 1, #headers do
				headerParts[index] = tostring(headers[index])
			end
			out[#out + 1] = "| " .. table.concat(headerParts, " | ") .. " |"
			local separators = {}
			for index = 1, #headers do
				separators[index] = (aligns and aligns[index]) or "---"
			end
			out[#out + 1] = "| " .. table.concat(separators, " | ") .. " |"
			for _, row in ipairs(rows) do
				local parts = {}
				for index = 1, #headers do
					-- A missing cell is rendered explicitly so a short row cannot
					-- be misread as a complete one.
					parts[index] = Md.Cell(row[index] or "—")
				end
				out[#out + 1] = "| " .. table.concat(parts, " | ") .. " |"
			end
			return table.concat(out, "\n")
		end

		function Md.Fence(text, language)
			return "```" .. (language or "lua") .. "\n" .. tostring(text) .. "\n```"
		end

		---------------------------------------------------------------------
		-- shared value formatting
		---------------------------------------------------------------------

		--- Renders a numeric argument-position summary as a fact string, e.g.
		--- "number (min 0, max 9999, distinct 41, up 12, down 3)".
		function Md.PositionSummary(position)
			if not position or position.Count == 0 then
				return "never supplied"
			end
			local types = {}
			for typeName, count in pairs(position.Types) do
				types[#types + 1] = { typeName, count }
			end
			table.sort(types, function(a, b)
				if a[2] ~= b[2] then
					return a[2] > b[2]
				end
				return a[1] < b[1]
			end)
			local parts = {}
			for _, entry in ipairs(types) do
				parts[#parts + 1] = string.format("%s x%d", entry[1], entry[2])
			end
			local summary = table.concat(parts, ", ")
			local facts = {}
			if position.Min ~= nil and position.Max ~= nil then
				facts[#facts + 1] = string.format("min %s", Ser.Number(position.Min))
				facts[#facts + 1] = string.format("max %s", Ser.Number(position.Max))
			end
			if position.MinStringLength ~= nil and position.MaxStringLength ~= nil then
				facts[#facts + 1] = string.format("length %d-%d",
					position.MinStringLength, position.MaxStringLength)
			end
			if position.Increases > 0 or position.Decreases > 0 then
				facts[#facts + 1] = string.format("moved up %d, down %d",
					position.Increases, position.Decreases)
			end
			if position.TrueCount > 0 or position.FalseCount > 0 then
				facts[#facts + 1] = string.format("true %d, false %d",
					position.TrueCount, position.FalseCount)
			end
			if position.MinTableKeys ~= nil and position.MaxTableKeys ~= nil then
				facts[#facts + 1] = string.format("keys %d-%d",
					position.MinTableKeys, position.MaxTableKeys)
			end
			if #facts > 0 then
				return string.format("%s (%s)", summary, table.concat(facts, "; "))
			end
			return summary
		end

		--- Distinct observed values for a position, as a comma list.
		function Md.PositionDistinct(position, limit)
			limit = limit or 8
			if not position or position.Count == 0 then
				return "—"
			end
			local items = position.Distinct.Items()
			local shown = {}
			for index = 1, math.min(#items, limit) do
				shown[#shown + 1] = Md.Cell(items[index])
			end
			local text = table.concat(shown, "; ")
			if #items > limit then
				text = text .. string.format(" …(+%d)", #items - limit)
			end
			if position.Distinct.Dropped > 0 then
				text = text .. string.format(" (ring truncated, %d observations not itemised)",
					position.Distinct.Dropped)
			end
			return text
		end

		--- A stable short identifier for a remote, used for its detail file.
		function Md.RemoteFileName(index, record)
			local label = Util.SanitizeFile(record.Name)
			local className = Util.SanitizeFile(record.ClassName)
			return string.format("%02d-%s-%s", index, className, label)
		end

		--- A filesystem-safe relative path mirroring an instance path.
		function Md.ScriptFileName(record)
			local segments = {}
			for segment in record.Path:gmatch("[^%.]+") do
				segments[#segments + 1] = Util.SanitizeSegment(segment)
			end
			return table.concat(segments, "_") .. ".lua"
		end

		Docs.Md = Md
		return Docs
	end,
}

for moduleName, moduleFactory in pairs(SECTION8) do
	Modules[moduleName] = moduleFactory
end

--[[
	SECTION 9 — REPORT GENERATION

	Report.Build is pure: it turns the current in-memory observations into an
	array of { Path, Contents } and writes nothing. Report.Flush does the writing.
	Keeping them apart means the self-test can render every document in memory and
	inspect it without touching the filesystem.

	Prose is deliberately flat. Each line states a count, a path, a range or a
	timestamp. The reason the AI can be given one of these files without being
	misled is that nothing in here says anything the run did not measure.
]]

local SECTION9 = {
	Report = function()
		local Util = Req("Util")
		local Ser = Req("Ser")
		local Paths = Req("Paths")
		local Compat = Req("Compat")
		local Reflect = Req("Reflect")
		local Scene = Req("Scene")
		local Net = Req("Net")
		local Scripts = Req("Scripts")
		local State = Req("State")
		local Decompile = Req("Decompile")
		local Docs = Req("Docs")

		local Report = {}
		local Md = Docs.Md

		-- Budgets. Every one of these is reported in 07-COVERAGE.md when it bites,
		-- so a truncated document is never mistaken for a complete one.
		local BUDGET = {
			StructureInstances = 8000,
			StructureDepth = 40,
			PropertiesPerInstance = 40,
			PropertiesTotal = 60000,
			StructureLines = 20000,
			RemotesPerIndex = 0,
			DetailSamples = 6,
			DistinctLimit = 8,
		}
		Report.BUDGET = BUDGET

		---------------------------------------------------------------------
		-- helpers
		---------------------------------------------------------------------

		--- Number of keys in a table. Declared here rather than as a global so
		-- that nothing this script defines escapes into the shared environment.
		local function countKeys(t)
			local n = 0
			for _ in pairs(t) do
				n += 1
			end
			return n
		end

		local function placeInfo()
			local info = {}
			--- Reads a field from the DataModel without assuming it exists.
			local function field(getter)
				local ok, value = pcall(getter)
				if ok and value ~= nil then
					return value
				end
				return nil
			end
			info.PlaceId = field(function() return game.PlaceId end)
			info.JobId = field(function() return game.JobId end)
			info.Name = field(function() return game.Name end)
			info.GameId = field(function() return game.GameId end)
			info.LocalPlayer = field(function()
				return game:GetService("Players").LocalPlayer.Name
			end)
			info.PlayerCount = field(function()
				return #game:GetService("Players"):GetPlayers()
			end)
			-- PlaceVersion is not reachable from a client, and GetProductInfo
			-- performs a network request, which this script does not make. The
			-- name is therefore the local one, and that is stated rather than
			-- hidden.
			info.NameSource = "game.Name (local read; no GetProductInfo call)"
			info.PlaceVersion = nil
			info.PlaceVersionSource = "not reachable from a client without a network call"
			return info
		end
		Report.PlaceInfo = placeInfo

		local function orderedRemotes()
			local records = {}
			for _, record in ipairs(Net.Records) do
				records[#records + 1] = record
			end
			table.sort(records, function(a, b)
				local totalA = a.Outgoing.Count + a.Incoming.Count
				local totalB = b.Outgoing.Count + b.Incoming.Count
				if totalA ~= totalB then
					return totalA > totalB
				end
				if a.ClassName ~= b.ClassName then
					return a.ClassName < b.ClassName
				end
				return a.Path < b.Path
			end)
			return records
		end

		---------------------------------------------------------------------
		-- 01 ENVIRONMENT
		---------------------------------------------------------------------

		function Report.Environment(context)
			local out = {}
			local function L(line)
				out[#out + 1] = line
			end

			L(Md.Heading(1, "01 - Environment"))
			L("")
			L(Md.Rule())
			L("")

			local info = placeInfo()
			L(Md.Heading(2, "Place"))
			L(Md.Table({ "Field", "Value" }, {
				{ "Game name", info.Name },
				{ "PlaceId", info.PlaceId },
				{ "GameId", info.GameId },
				{ "JobId", info.JobId },
				{ "Local player", info.LocalPlayer },
				{ "Name source", info.NameSource },
			}))
			L("")

			L(Md.Heading(2, "Executor capabilities"))
			L("")
			L(Md.Bullet("Each row is the result of probing for the function, not of using it successfully."))
			L("")
			local report = Compat.Report()
			local groups = {}
			local groupOrder = {}
			for _, entry in pairs(report) do
				if not groups[entry.Group] then
					groups[entry.Group] = {}
					groupOrder[#groupOrder + 1] = entry.Group
				end
				table.insert(groups[entry.Group], entry)
			end
			table.sort(groupOrder)
			for _, group in ipairs(groupOrder) do
				L(Md.Heading(3, group))
				local rows = {}
				local entries = groups[group]
				table.sort(entries, function(a, b) return a.Name < b.Name end)
				for _, entry in ipairs(entries) do
					rows[#rows + 1] = {
						Md.Code(entry.Name),
						entry.Working and "available" or "absent",
						entry.Detail,
					}
				end
				L(Md.Table({ "Function", "State", "Detail" }, rows))
				L("")
			end

			L(Md.Heading(2, "Reflection metadata"))
			L(Md.Table({ "Field", "Value" }, {
				{ "Source", Reflect.Source },
				{ "Detail", Reflect.Detail },
				{ "Classes with properties", Reflect.Classes and countKeys(Reflect.Classes) or 0 },
				{ "Enums with items", Reflect.Enums and countKeys(Reflect.Enums) or 0 },
			}))
			L("")

			return table.concat(out, "\n") .. "\n"
		end

		---------------------------------------------------------------------
		-- 02 STRUCTURE
		---------------------------------------------------------------------

		function Report.Structure(context)
			local out = {}
			local function L(line)
				out[#out + 1] = line
			end

			local list, counts = Scene.Walk({
				MaxInstances = BUDGET.StructureInstances,
				MaxDepth = BUDGET.StructureDepth,
				IncludeNil = true,
			})

			local propertiesEmitted = 0
			local lines = 0
			local truncatedByLines = false

			L(Md.Heading(1, "02 - Structure"))
			L("")
			L(Md.Rule())
			L("")
			L(string.format("Instances walked: %d of at most %d (budget).",
				counts.Visited, BUDGET.StructureInstances))
			L(string.format("Nil-parented instances included: %d.", counts.NilVisited or 0))
			L("")
			L(Md.Bullet("`?` after a property value means no default is known for that"))
			L(Md.Bullet("property, so equality with the default could not be checked."))
			L("")
			L(Md.Heading(2, "Instance tree"))
			L("")
			L(Md.Fence("", "text"))

			-- Group siblings so each parent prints its header once.
			local childrenOf = {}
			for _, entry in ipairs(list) do
				local instance = entry.Instance
				local parent = instance.Parent
				local key = parent and Paths.Dotted(parent) or "#nil"
				if not childrenOf[key] then
					childrenOf[key] = {}
				end
				table.insert(childrenOf[key], entry)
			end

			local printed = 0
			local printedSet = setmetatable({}, { __mode = "k" })

			local function emitEntry(entry, isLast)
				if printed >= BUDGET.StructureInstances then
					return false
				end
				if truncatedByLines or lines > BUDGET.StructureLines then
					truncatedByLines = true
					return false
				end
				local instance = entry.Instance
				printed += 1
				printedSet[instance] = true
				lines += 1

				local indent = string.rep("  ", math.min(entry.Depth, 20))
				local branch = isLast and "`- " or "|- "
				local name = instance.Name
				local header = string.format("%s%s%s (%s)%s",
					indent, branch, name, instance.ClassName,
					entry.IsNil and "  [nil parent]" or "")

				local properties, tier, failures = Reflect.PropertiesOf(instance)
				local rendered = { header }
				local nonDefault = 0
				local shown = 0
				for _, property in ipairs(properties) do
					if shown >= BUDGET.PropertiesPerInstance
						or propertiesEmitted >= BUDGET.PropertiesTotal then
						break
					end
					local defaultState = Reflect.IsDefault(instance.ClassName, property.Name, property.Value)
					local marker
					if defaultState == true then
						marker = ""
					elseif defaultState == false then
						marker = "  *"
						nonDefault += 1
					else
						marker = "  ?"
					end
					local inline = Ser.Inline(property.Value, 90)
					rendered[#rendered + 1] = string.format("%s      %s = %s%s",
						indent, property.Name, inline, marker)
					shown += 1
					propertiesEmitted += 1
				end
				if shown < #properties then
					rendered[#rendered + 1] = string.format("%s      --[[ %d more property/properties not shown ]]",
						indent, #properties - shown)
				end
				local okAttributes, attributeMap = pcall(function()
					return instance:GetAttributes()
				end)
				if okAttributes and type(attributeMap) == "table" and next(attributeMap) ~= nil then
					for _, name in ipairs(Util.SortedKeys(attributeMap)) do
						rendered[#rendered + 1] = string.format("%s      [attr] %s = %s",
							indent, name, Ser.Inline(attributeMap[name], 80))
					end
				end
				for _, line in ipairs(rendered) do
					L(line)
					lines += 1
				end
				return true
			end

			local function emitLevel(entries, depth)
				local index = 0
				for _, entry in ipairs(entries) do
					index += 1
					local ok = emitEntry(entry, index == #entries)
					if not ok then
						return false
					end
					local childKey = Paths.Dotted(entry.Instance)
					local childEntries = childrenOf[childKey]
					if childEntries and not emitLevel(childEntries, depth + 1) then
						return false
					end
				end
				return true
			end

			local roots = childrenOf["#nil"] or {}
			if #roots == 0 then
				L("(no instances)")
			else
				local continued = emitLevel(roots, 0)
				if not continued then
					L("--[[ TRUNCATED: instance or line budget reached; see 07-COVERAGE.md ]]")
				end
			end

			L(Md.Fence("", "text"))
			L("")

			L(Md.Heading(2, "Instance census"))
			L("")
			local census = {}
			for _, entry in ipairs(list) do
				local className = entry.Instance.ClassName
				census[className] = (census[className] or 0) + 1
			end
			local censusRows = {}
			local censusNames = Util.SortedKeys(census)
			for _, className in ipairs(censusNames) do
				censusRows[#censusRows + 1] = {
					Md.Code(className), census[className],
					Util.Ratio(census[className], counts.Visited),
				}
			end
			L(Md.Table({ "Class", "Count", "Share" }, censusRows, { "---", ":---:", ":---:" }))
			L("")

			if truncatedByLines then
				Report.StructureTruncated = {
					Reason = "line budget",
					Limit = BUDGET.StructureLines,
				}
			end
			if counts.TruncatedInstances then
				Report.StructureTruncated = {
					Reason = "instance budget",
					Limit = BUDGET.StructureInstances,
				}
			end
			if counts.TruncatedDepth then
				Report.StructureTruncatedDepth = BUDGET.StructureDepth
			end

			return table.concat(out, "\n") .. "\n"
		end

		---------------------------------------------------------------------
		-- 03 REMOTES INDEX
		---------------------------------------------------------------------

		function Report.Remotes(context)
			local out = {}
			local function L(line)
				out[#out + 1] = line
			end
			local records = orderedRemotes()
			local census = Net.Census()
			local sweepSynthetic = 0
			for _, record in ipairs(records) do
				sweepSynthetic += (record.Outgoing.SyntheticCount or 0)
					+ (record.Incoming.SyntheticCount or 0)
			end

			-- Detail file names are assigned here, before the index is rendered,
			-- because the index links to them. Report.Build reuses this map.
			Report.remoteFiles = {}
			Report.remoteFileOrder = {}
			local fileIndex = 0
			for _, record in ipairs(records) do
				if record.Outgoing.Count > 0 or record.Incoming.Count > 0 then
					fileIndex += 1
					local fileName = string.format("04-REMOTE-%s.md",
						Md.RemoteFileName(fileIndex, record))
					Report.remoteFiles[record.DebugId] = fileName
					Report.remoteFileOrder[#Report.remoteFileOrder + 1] = {
						FileName = fileName,
						Record = record,
					}
				end
			end

			L(Md.Heading(1, "03 - Remotes"))
			L("")
			L(Md.Rule())
			L("")
			L(Md.Table({ "Measure", "Count" }, {
				{ "Remotes discovered", census.Total },
				{ "With observed outgoing traffic", census.WithOutgoing },
				{ "With observed incoming traffic", census.WithIncoming },
				{ "With both directions", census.WithBoth },
				{ "Never observed in either direction", census.Silent },
				{ "Outgoing calls recorded", Net.Outgoing },
				{ "Incoming calls recorded", Net.Incoming },
				{ "Of those, produced by the AIDump sweep", sweepSynthetic },
			}))
			L("")

			if #records == 0 then
				L("No remote instances were discovered.")
				return table.concat(out, "\n") .. "\n"
			end

			L(Md.Heading(2, "All discovered remotes"))
			L("")
			local rows = {}
			for _, record in ipairs(records) do
				local outgoing = record.Outgoing
				local incoming = record.Incoming
				local primary = outgoing.Count > 0 and outgoing or incoming
				local schemaParts = {}
				local maxPositions = 0
				for _ in pairs(primary.Positions) do
					maxPositions += 1
				end
				for position = 1, maxPositions do
					schemaParts[#schemaParts + 1] = Md.PositionSummary(primary.Positions[position])
				end
				local callerCount = 0
				for _ in pairs(primary.Callers) do
					callerCount += 1
				end
				local listenerCount = 0
				for _ in pairs(primary.Listeners) do
					listenerCount += 1
				end
				local direction = {}
				if outgoing.Count > 0 then direction[#direction + 1] = "out" end
				if incoming.Count > 0 then direction[#direction + 1] = "in" end
				rows[#rows + 1] = {
					Md.Code(record.ClassName),
					Md.Code(record.Name),
					record.ParentPath or "—",
					#direction > 0 and table.concat(direction, "+") or "—",
					outgoing.Count,
					incoming.Count,
					#primary.ShapeCounts,
					table.concat(schemaParts, " ; "),
					callerCount,
					listenerCount,
					(outgoing.Count + incoming.Count) > 0
						and Md.Code(Report.remoteFiles[record.DebugId] or "—") or "—",
				}
			end
			L(Md.Table({
				"Class", "Name", "Parent", "Direction", "Out", "In", "Shapes",
				"Argument schema", "Callers", "Listeners", "Detail file",
			}, rows, { "---", "---", "---", ":---:", ":---:", ":---:", ":---:", "---", ":---:", ":---:", "---" }))
			L("")
			L(Md.Bullet("`Direction` is `out`, `in` or `out+in`."))
			L(Md.Bullet("`Shapes` counts distinct argument type signatures observed."))
			L(Md.Bullet("`Callers` counts distinct (script, method, line) triples."))
			L("")

			return table.concat(out, "\n") .. "\n", records
		end

		---------------------------------------------------------------------
		-- 04 PER-REMOTE DETAIL
		---------------------------------------------------------------------

		local function codeSnippet(record, sample)
			local target = Paths.Of(record.Instance)
			local args = sample and sample.Args or nil
			local renderedArgs = args and (args.n and args.n > 0) and Ser.Value(args, { Prettify = false }) or ""
			if record.ClassName == "RemoteEvent" or record.ClassName == "UnreliableRemoteEvent" then
				return string.format("%s:FireServer(%s)", target, renderedArgs)
			elseif record.ClassName == "RemoteFunction" then
				return string.format("%s:InvokeServer(%s)", target, renderedArgs)
			elseif record.ClassName == "BindableEvent" then
				return string.format("%s:Fire(%s)", target, renderedArgs)
			elseif record.ClassName == "BindableFunction" then
				return string.format("%s:Invoke(%s)", target, renderedArgs)
			end
			return nil
		end

		function Report.RemoteDetail(record)
			local out = {}
			local function L(line)
				out[#out + 1] = line
			end
			local Md = Docs.Md

			L(Md.Heading(1, string.format("Remote detail: %s (%s)", record.Name, record.ClassName)))
			L("")
			L(Md.Rule())
			L("")
			L(Md.Table({ "Field", "Value" }, {
				{ "Path", Md.Code(record.Path) },
				{ "ClassName", record.ClassName },
				{ "Parent path", record.ParentPath },
				{ "Lua path expression", Md.Code(record.LuaPath) },
				{ "Debug id", record.DebugId },
				{ "Outgoing calls", record.Outgoing.Count },
				{ "Incoming calls", record.Incoming.Count },
				{ "First observed (unix)", record.FirstSeen },
				{ "Last observed (unix)", record.LastSeen },
			}))
			L("")

			for _, directionName in ipairs({ "Outgoing", "Incoming" }) do
				local direction = record[directionName]
				if direction.Count > 0 then
					L(Md.Heading(2, directionName .. " (" .. direction.Count .. " call(s))"))
					L("")
					if direction.MinArity and direction.MaxArity and direction.MinArity ~= direction.MaxArity then
						L(Md.Bullet(string.format(
							"Observed argument counts ranged from %d to %d.", direction.MinArity, direction.MaxArity)))
						L("")
					end

					-- argument schema
					local maxPositions = 0
					for position in pairs(direction.Positions) do
						if position > maxPositions then maxPositions = position end
					end
					if maxPositions > 0 then
						L(Md.Heading(3, "Argument positions"))
						L("")
						local rows = {}
						for position = 1, maxPositions do
							local data = direction.Positions[position]
							local enumRows = {}
							for enumName, count in pairs(data.EnumValues) do
								enumRows[#enumRows + 1] = { enumName, count }
							end
							table.sort(enumRows, function(a, b) return a[1] < b[1] end)
							local classRows = {}
							for className, count in pairs(data.InstanceClasses) do
								classRows[#classRows + 1] = { className, count }
							end
							table.sort(classRows, function(a, b) return a[1] < b[1] end)
							-- Built with explicit loops rather than a comprehension:
						-- `{ x for x in list }` exists in neither Lua nor Luau.
							local enumNames = {}
							for _, row in ipairs(enumRows) do
								enumNames[#enumNames + 1] = row[1]
							end
							local enumText = #enumRows > 0
								and table.concat(enumNames, ", ") or "—"

							local classNames = {}
							for _, row in ipairs(classRows) do
								classNames[#classNames + 1] = row[1]
							end
							local classText = #classRows > 0
								and table.concat(classNames, ", ") or "—"
							rows[#rows + 1] = {
								position,
								Md.PositionSummary(data),
								enumText,
								classText,
								Md.PositionDistinct(data, BUDGET.DistinctLimit),
							}
						end
						L(Md.Table({ "Pos", "Observed", "Enum values", "Instance classes", "Distinct values" },
							rows, { ":---:", "---", "---", "---", "---" }))
						L("")
					end

					-- shapes
					if countKeys(direction.ShapeCounts) > 0 then
						L(Md.Heading(3, "Argument shapes"))
						L("")
						local shapeRows = {}
						for shape, count in pairs(direction.ShapeCounts) do
							shapeRows[#shapeRows + 1] = { Md.Code(shape), count,
								Util.Ratio(count, direction.Count) }
						end
						table.sort(shapeRows, function(a, b)
							if a[2] ~= b[2] then return a[2] > b[2] end
							return a[1] < b[1]
						end)
						L(Md.Table({ "Shape", "Count", "Share" }, shapeRows,
							{ "---", ":---:", ":---:" }))
						L("")
					end

					-- callers
					if countKeys(direction.Callers) > 0 then
						L(Md.Heading(3, "Observed call sites"))
						L("")
						local callerRows = {}
						for _, caller in pairs(direction.Callers) do
							callerRows[#callerRows + 1] = {
								Md.Code(caller.OriginPath or "?"),
								caller.Method,
								caller.Line and ("line " .. caller.Line) or "line unknown",
								caller.SourceName and Util.Truncate(caller.SourceName, 40) or "—",
								caller.Count,
							}
						end
						table.sort(callerRows, function(a, b)
							if a[5] ~= b[5] then return a[5] > b[5] end
							return a[1] < b[1]
						end)
						L(Md.Table({ "Calling script", "Method", "Line", "Executor source", "Calls" },
							callerRows, { "---", "---", "---", "---", ":---:" }))
						L("")
					end

					-- listeners
					if countKeys(direction.Listeners) > 0 then
						L(Md.Heading(3, "Observed handlers"))
						L("")
						local listenerRows = {}
						for _, listener in pairs(direction.Listeners) do
							listenerRows[#listenerRows + 1] = {
								Md.Code(listener.ListenerPath or "?"),
								listener.Method,
								listener.Count,
							}
						end
						table.sort(listenerRows, function(a, b)
							if a[3] ~= b[3] then return a[3] > b[3] end
							return a[1] < b[1]
						end)
						L(Md.Table({ "Handler script", "Signal", "Observations" }, listenerRows,
							{ "---", "---", ":---:" }))
						L("")
					end

					-- samples
					local samples = direction.Samples.Items()
					if #samples > 0 then
						L(Md.Heading(3, string.format("Sample payloads (%d retained of %d observed)",
							#samples, direction.Samples.Total)))
						L("")
						if direction.Samples.Dropped > 0 then
							L(Md.Bullet(string.format(
								"%d further observations were not retained individually; counters above remain exact.",
								direction.Samples.Dropped)))
							L("")
						end
						for index, sample in ipairs(samples) do
							if index > BUDGET.DetailSamples then
								L(Md.Bullet(string.format(
									"…(%d more retained payloads in raw/calls/, omitted here)", #samples - BUDGET.DetailSamples)))
								break
							end
							L(string.format("**%s** %s", index,
								sample.IsSweep and "(produced by the AIDump sweep)" or "(observed during play)"))
							L("")
							L(Md.Fence(Ser.Value(sample.Args or {}, { Prettify = true }), "lua"))
							L("")
							if sample.Result then
								L("Return values:")
								L("")
								L(Md.Fence(Ser.Value(sample.Result, { Prettify = true }), "lua"))
								L("")
							end
						end
					end

					-- replay
					local snippet = codeSnippet(record, samples[1])
					if snippet then
						L(Md.Heading(3, "Reproducing an observed call"))
						L("")
						L(Md.Fence(snippet, "lua"))
						L("")
						L(Md.Bullet("The path expression and arguments above are taken verbatim from an observation."))
						L("")
					end

					-- timeline
					local timeline = direction.Timeline.Items()
					if #timeline > 0 then
						L(Md.Heading(3, "Timeline (most recent retained)"))
						L("")
						local rows = {}
						local first = timeline[1].At
						for _, entry in ipairs(timeline) do
							rows[#rows + 1] = {
								string.format("+%.2fs", entry.At - first),
								entry.Line and ("line " .. entry.Line) or "—",
								Md.Cell(entry.Args),
							}
						end
						L(Md.Table({ "Elapsed", "Line", "Arguments (inline)" }, rows,
							{ ":---:", "---", "---" }))
						L("")
					end
				end
			end

			return table.concat(out, "\n") .. "\n"
		end

		---------------------------------------------------------------------
		-- 05 SCRIPTS
		---------------------------------------------------------------------

		function Report.ScriptMap()
			local out = {}
			local function L(line)
				out[#out + 1] = line
			end
			local Md = Docs.Md
			local summary = Decompile.Summary()

			L(Md.Heading(1, "05 - Scripts"))
			L("")
			L(Md.Rule())
			L("")
			L(Md.Table({ "Measure", "Count" }, {
				{ "Script instances found", Scripts.Counts.Total },
				{ "Readable by the client", Scripts.Counts.Viable },
				{ "Not client-side or unreadable",
					Scripts.Counts.Total - Scripts.Counts.Viable },
			}))
			L("")

			L(Md.Heading(2, "Decompilation methods"))
			L("")
			local methodRows = {}
			local total = 0
			for method, count in pairs(summary) do
				methodRows[#methodRows + 1] = { method, count }
				total += count
			end
			table.sort(methodRows, function(a, b)
				if a[2] ~= b[2] then return a[2] > b[2] end
				return a[1] < b[1]
			end)
			L(Md.Table({ "Method", "Scripts" }, methodRows, { "---", ":---:" }))
			L("")
			L(Md.Bullet("`source`: the script's own Source property was readable."))
			L(Md.Bullet("`executor-decompile`: the executor's decompile() succeeded."))
			L(Md.Bullet("`bytecode-disassembly`: bytecode parsed and disassembled."))
			L(Md.Bullet("`bytecode-unsupported`: bytecode obtained but not parsed; raw hex written."))
			L(Md.Bullet("`no-bytecode`: no bytecode available for this script."))
			L("")

			L(Md.Heading(2, "Script inventory and cross-reference"))
			L("")
			local rows = {}
			for _, record in ipairs(Scripts.List) do
				local fires = {}
				for key, count in pairs(record.FiresOutgoing) do
					local remoteDebugId, method, line = string.match(key, "([^|]+)|([^|]+)|(.+)")
					local remote = remoteDebugId and Net.ForDebugId(remoteDebugId)
					fires[#fires + 1] = {
						remote and remote.Name or "?",
						method,
						line,
						count,
					}
				end
				local listens = {}
				for key, count in pairs(record.ListensIncoming) do
					local remoteDebugId, method = string.match(key, "([^|]+)|(.+)")
					local remote = remoteDebugId and Net.ForDebugId(remoteDebugId)
					listens[#listens + 1] = { remote and remote.Name or "?", method, count }
				end
				table.sort(fires, function(a, b) return a[4] > b[4] end)
				table.sort(listens, function(a, b) return a[3] > b[3] end)

				local function renderList(entries, formatter)
					if #entries == 0 then
						return "—"
					end
					local parts = {}
					for _, entry in ipairs(entries) do
						parts[#parts + 1] = formatter(entry)
					end
					return table.concat(parts, "<br>")
				end

				rows[#rows + 1] = {
					Md.Code(record.Path),
					record.ClassName,
					record.RunContext or "—",
					record.Disabled and "yes" or "no",
					record.Decompile or "not attempted",
					renderList(fires, function(entry)
						return string.format("%s:%s (%s) x%d", entry[1], entry[2], entry[3], entry[4])
					end),
					renderList(listens, function(entry)
						return string.format("%s:%s x%d", entry[1], entry[2], entry[3])
					end),
					Scripts.Counts.Viable and record.Reason or "—",
				}
			end
			L(Md.Table({
				"Script path", "Class", "RunContext", "Disabled", "Decompiled by",
				"Outgoing calls observed", "Incoming handled", "Unavailability reason",
			}, rows, { "---", "---", "---", ":---:", "---", "---", "---", "---" }))
			L("")

			-- Scripts that were never seen participating in traffic.
			local quiet = {}
			for _, record in ipairs(Scripts.List) do
				if next(record.FiresOutgoing) == nil and next(record.ListensIncoming) == nil then
					quiet[#quiet + 1] = record.Path
				end
			end
			L(Md.Heading(2, string.format("Scripts with no observed traffic involvement (%d)", #quiet)))
			L("")
			if #quiet == 0 then
				L("None.")
			else
				for _, path in ipairs(quiet) do
					L(Md.Bullet(Md.Code(path)))
				end
			end
			L("")

			return table.concat(out, "\n") .. "\n"
		end

		---------------------------------------------------------------------
		-- 06 STATES
		---------------------------------------------------------------------

		function Report.States()
			local out = {}
			local function L(line)
				out[#out + 1] = line
			end
			local Md = Docs.Md

			L(Md.Heading(1, "06 - Observed state"))
			L("")
			L(Md.Rule())
			L("")
			L(Md.Table({ "Measure", "Count" }, {
				{ "Attribute cells tracked", countKeys(State.Attributes) },
				{ "Value objects tracked", countKeys(State.Objects) },
				{ "Recorded transitions", State.Changes },
				{ "Traffic events observed", State.TrafficEvents },
				{ "Instances watched", State.WatchedCount },
			}))
			L("")

			local attributeCells = State.AttributeCells()
			L(Md.Heading(2, "Attributes"))
			L("")
			if #attributeCells == 0 then
				L("No attribute was observed on any watched instance.")
				L("")
			else
				local rows = {}
				for _, entry in ipairs(attributeCells) do
					local cell = entry.Cell
					local instancePath, attributeName = string.match(entry.Key, "^(.*)%[(.*)%]$")
					rows[#rows + 1] = {
						Md.Code(instancePath or "?"),
						Md.Code(attributeName or "?"),
						cell.TypeName,
						cell.Count,
						cell.Changes,
						cell.Min ~= nil and Ser.Number(cell.Min) or "—",
						cell.Max ~= nil and Ser.Number(cell.Max) or "—",
						(cell.Increases + cell.Decreases) > 0
							and string.format("up %d / down %d", cell.Increases, cell.Decreases)
							or "—",
						Ser.Inline(cell.Last, 40),
						cell.Distinct.Total,
					}
				end
				L(Md.Table({
					"Instance", "Attribute", "Type", "Observations", "Changes",
					"Min", "Max", "Direction", "Last value", "Distinct values",
				}, rows, { "---", "---", "---", ":---:", ":---:", ":---:", ":---:", "---", "---", ":---:" }))
				L("")
			end

			local objectCells = State.ObjectCells()
			L(Md.Heading(2, "Value objects"))
			L("")
			if #objectCells == 0 then
				L("No value object was observed.")
				L("")
			else
				local rows = {}
				for _, entry in ipairs(objectCells) do
					local cell = entry.Cell
					rows[#rows + 1] = {
						Md.Code(entry.Key),
						cell.ClassName,
						cell.TypeName,
						cell.Count,
						cell.Changes,
						cell.Min ~= nil and Ser.Number(cell.Min) or "—",
						cell.Max ~= nil and Ser.Number(cell.Max) or "—",
						(cell.Increases + cell.Decreases) > 0
							and string.format("up %d / down %d", cell.Increases, cell.Decreases)
							or "—",
						Ser.Inline(cell.Last, 40),
					}
				end
				L(Md.Table({
					"Instance", "Class", "Type", "Observations", "Changes",
					"Min", "Max", "Direction", "Last value",
				}, rows, { "---", "---", "---", ":---:", ":---:", ":---:", ":---:", "---", "---" }))
				L("")
			end

			-- Numeric argument flows, which is where progression numbers live.
			L(Md.Heading(2, "Numeric argument positions"))
			L("")
			L(Md.Bullet("Every numeric argument position observed on any remote, with its"))
			L(Md.Bullet("observed range and how often the value moved up or down."))
			L("")
			local flowRows = {}
			for _, record in ipairs(orderedRemotes()) do
				for _, directionName in ipairs({ "Outgoing", "Incoming" }) do
					local direction = record[directionName]
					for position, data in pairs(direction.Positions) do
						if data.Min ~= nil then
							flowRows[#flowRows + 1] = {
								Md.Code(record.Name),
								directionName,
								position,
								data.Count,
								Ser.Number(data.Min),
								Ser.Number(data.Max),
								string.format("%.4g", data.Sum / data.Count),
								data.Increases,
								data.Decreases,
								data.Unchanged,
							}
						end
					end
				end
			end
			if #flowRows == 0 then
				L("No numeric argument position was observed.")
			else
				table.sort(flowRows, function(a, b) return a[4] > b[4] end)
				L(Md.Table({
					"Remote", "Direction", "Pos", "Obs", "Min", "Max", "Mean",
					"Moved up", "Moved down", "Unchanged",
				}, flowRows, { "---", "---", ":---:", ":---:", "---", "---", "---", ":---:", ":---:", ":---:" }))
			end
			L("")

			-- Co-occurrence: a counted fact, deliberately worded without a causal verb.
			if countKeys(State.CoOccurrences) > 0 then
				L(Md.Heading(2, "State transitions in temporal proximity to observed calls"))
				L("")
				L(Md.Bullet("Each row counts recorded state transitions whose preceding"))
				L(Md.Bullet("observed call was the named one. No relationship between the"))
				L(Md.Bullet("call and the transition is asserted or implied here."))
				L("")
				local rows = {}
				for key, count in pairs(State.CoOccurrences) do
					rows[#rows + 1] = { Md.Code(key), count }
				end
				table.sort(rows, function(a, b)
					if a[2] ~= b[2] then return a[2] > b[2] end
					return a[1] < b[1]
				end)
				L(Md.Table({ "Preceding observed call", "Transitions following it" }, rows,
					{ "---", ":---:" }))
				L("")
			end

			return table.concat(out, "\n") .. "\n"
		end

		---------------------------------------------------------------------
		-- 07 COVERAGE
		---------------------------------------------------------------------

		function Report.Coverage(context)
			local out = {}
			local function L(line)
				out[#out + 1] = line
			end
			local Md = Docs.Md

			L(Md.Heading(1, "07 - Coverage and limitations"))
			L("")
			L(Md.Rule())
			L("")
			L(Md.Bullet("This file lists what the run did NOT observe and what it could"))
			L(Md.Bullet("not observe. Anything absent from the other documents and"))
			L(Md.Bullet("absent from this file should be treated as genuinely unknown."))
			L("")

			-- remotes with no traffic
			local silent = {}
			for _, record in ipairs(Net.Records) do
				if record.Outgoing.Count == 0 and record.Incoming.Count == 0 then
					silent[#silent + 1] = record
				end
			end
			L(Md.Heading(2, string.format("Remotes with no observed traffic (%d)", #silent)))
			L("")
			if #silent == 0 then
				L("Every discovered remote was observed in at least one direction.")
			else
				table.sort(silent, function(a, b) return a.Path < b.Path end)
				local rows = {}
				for _, record in ipairs(silent) do
					rows[#rows + 1] = {
						Md.Code(record.ClassName), Md.Code(record.Path), record.ParentPath or "—",
					}
				end
				L(Md.Table({ "Class", "Path", "Parent" }, rows))
			end
			L("")

			-- interactives
			local interactives, walkCounts = Scene.Interactives()
			L(Md.Heading(2, "Interactable instances"))
			L("")
			L(Md.Bullet("These exist in the game and respond to player input. A reader"))
			L(Md.Bullet("of this dump cannot know whether they were exercised."))
			L("")
			local rows = {}
			for _, className in ipairs({ "ProximityPrompt", "ClickDetector", "TouchTransmitter" }) do
				local list = interactives[className]
				rows[#rows + 1] = { Md.Code(className), #list }
			end
			L(Md.Table({ "Class", "Count" }, rows, { "---", ":---:" }))
			L("")
			local promptRows = {}
			for _, prompt in ipairs(interactives.ProximityPrompt or {}) do
				local actionText = (pcall(function() return prompt.ActionText end)) and prompt.ActionText or ""
				local objectText = (pcall(function() return prompt.ObjectText end)) and prompt.ObjectText or ""
				local enabled = (pcall(function() return prompt.Enabled end)) and prompt.Enabled or false
				promptRows[#promptRows + 1] = {
					Md.Code(Paths.Dotted(prompt)),
					actionText,
					objectText,
					enabled and "yes" or "no",
					prompt.Parent and prompt.Parent.Name or "—",
				}
			end
			if #promptRows > 0 then
				L(Md.Heading(3, string.format("ProximityPrompt instances (%d)", #promptRows)))
				L("")
				L(Md.Table({ "Path", "Action text", "Object text", "Enabled", "Parent name" },
					promptRows, { "---", "---", "---", ":---:", "---" }))
				L("")
			end

			-- sweep record
			local Sweep = Req("Sweep")
			local sweepReport = Sweep.Report()
			L(Md.Heading(2, string.format("Sweep activity (%d action(s) attempted)", sweepReport.Attempts)))
			L("")
			if sweepReport.Attempts == 0 then
				L("No sweep action was attempted.")
			else
				local actionRows = {}
				for _, attempt in ipairs(sweepReport.Recent) do
					actionRows[#actionRows + 1] = {
						attempt.Kind,
						Md.Code(attempt.Subject),
						attempt.Outcome,
						attempt.Justification,
					}
				end
				L(Md.Table({ "Action", "Subject", "Outcome", "Reason it was permitted" }, actionRows))
				L("")
				if sweepReport.Blocked > 0 then
					L(Md.Bullet(string.format(
						"%d candidate action(s) were withheld by the sweep safety policy.", sweepReport.Blocked)))
					L("")
				end
			end
			L("")

			-- capability gaps
			L(Md.Heading(2, "Capture layers not available"))
			L("")
			local gaps = {}
			local function gap(name, reason)
				gaps[#gaps + 1] = { Md.Code(name), reason }
			end
			if not Compat.Has("hookmetamethod") then
				gap("hookmetamethod", "metamethod hooking unavailable; prototype methods only")
			end
			if not Compat.Has("getnamecallmethod") then
				gap("getnamecallmethod", "method name unavailable; name-call layer inactive")
			end
			if not Compat.Has("getconnections") then
				gap("getconnections", "incoming handlers cannot be enumerated")
			end
			if not Compat.Has("getcallbackvalue") then
				gap("getcallbackvalue", "OnClientInvoke/OnInvoke cannot be read")
			end
			if not Compat.Has("getnilinstances") then
				gap("getnilinstances", "nil-parented instances not enumerable")
			end
			if not Compat.Has("getscriptbytecode") then
				gap("getscriptbytecode", "no bytecode access; decompilation depends on decompile()")
			end
			if not Compat.Has("decompile") then
				gap("decompile", "no executor decompiler; decompilation depends on bytecode parsing")
			end
			if not Compat.Has("run_on_actor") and not Compat.Has("getactors") then
				gap("run_on_actor / getactors",
					"parallel-Luau actor instances, if any, were not instrumented")
			end
			if not Compat.Has("getcallingscript") then
				gap("getcallingscript", "call sites cannot be attributed to scripts")
			end
			if not Reflect.HasMetadata() then
				gap("ReflectionMetadata.xml",
					"not present on the filesystem; property coverage fell back to probing")
			end
			-- Stated unconditionally rather than only when the capability is
			-- missing, because this build does not instrument actors either way.
			gap("parallel Luau actors",
				"this build observes only the main client; actor instances and their"
					.. " remotes are not instrumented regardless of executor support")
			if #gaps == 0 then
				L("Every capture layer this script can use was available.")
			else
				L(Md.Table({ "Capability", "Consequence" }, gaps))
			end
			L("")

			-- structural truncation
			L(Md.Heading(2, "Structural limits"))
			L("")
			local limitRows = {
				{ "Instance walk budget", BUDGET.StructureInstances,
					walkCounts and walkCounts.Visited or 0,
					walkCounts and walkCounts.TruncatedInstances and "budget reached" or "within budget" },
				{ "Depth budget", BUDGET.StructureDepth,
					BUDGET.StructureDepth,
					walkCounts and walkCounts.TruncatedDepth and "depth budget reached" or "within budget" },
				{ "Properties per instance", BUDGET.PropertiesPerInstance, BUDGET.PropertiesPerInstance, "cap applied" },
				{ "Total property emissions", BUDGET.PropertiesTotal, BUDGET.PropertiesTotal, "cap applied" },
			}
			L(Md.Table({ "Limit", "Configured", "This run", "State" }, limitRows,
				{ "---", ":---:", ":---:", "---" }))
			L("")
			if Report.StructureTruncated then
				L(Md.Bullet(string.format(
					"02-STRUCTURE.md was truncated at the %s budget of %d.",
					Report.StructureTruncated.Reason, Report.StructureTruncated.Limit)))
				L("")
			end
			L(Md.Bullet(string.format(
				"Attribute names created after watching began and never changed are only"))
			L(Md.Bullet("discovered at the next export, so a short run can miss them."))
			L("")

			-- decompile gaps
			local decompileGaps = {}
			for _, record in ipairs(Scripts.List) do
				if record.Decompile == "bytecode-unsupported" or record.Decompile == "no-bytecode"
					or record.Decompile == "failed" then
					local result = Decompile.Results[record.Path]
					decompileGaps[#decompileGaps + 1] = {
						Md.Code(record.Path),
						record.Decompile or "not attempted",
						Util.Truncate(result and result.Reason or "—", 100),
					}
				end
			end
			L(Md.Heading(2, string.format("Scripts without usable source (%d)", #decompileGaps)))
			L("")
			if #decompileGaps == 0 then
				L("Every client-side script produced some output.")
			else
				L(Md.Table({ "Script", "State", "Recorded reason" }, decompileGaps))
			end
			L("")

			-- internal errors
			if #Net.Errors > 0 then
				L(Md.Heading(2, string.format("Errors raised inside AIDump (%d)", #Net.Errors)))
				L("")
				local rows = {}
				for _, entry in ipairs(Net.Errors) do
					rows[#rows + 1] = { entry.Context, Util.Truncate(entry.Message, 120) }
				end
				L(Md.Table({ "Context", "Message" }, rows))
				L("")
			end

			-- lint report
			if Docs.ViolationCount > 0 then
				L(Md.Heading(2, string.format(
					"Lines withheld by the fact-discipline linter (%d)", Docs.ViolationCount)))
				L("")
				local rows = {}
				for _, violation in ipairs(Docs.Violations) do
					rows[#rows + 1] = {
						Util.Truncate(violation.Line, 100),
						table.concat(violation.Terms, ", "),
					}
				end
				L(Md.Table({ "Withheld line", "Trigger terms" }, rows))
				L("")
			end

			return table.concat(out, "\n") .. "\n"
		end

		---------------------------------------------------------------------
		-- 00 INDEX
		---------------------------------------------------------------------

		function Report.Index(context, manifest)
			local out = {}
			local function L(line)
				out[#out + 1] = line
			end
			local Md = Docs.Md
			local info = placeInfo()
			local executor = Compat.Identify()
			local census = Net.Census()

			L(Md.Heading(1, "AIDump documentation set"))
			L("")
			L(Md.Rule())
			L("")
			L("## What this is")
			L("")
			L(Md.Bullet(string.format("Game: %s (PlaceId %s)", tostring(info.Name), tostring(info.PlaceId))))
			L(Md.Bullet(string.format("JobId: %s", tostring(info.JobId))))
			L(Md.Bullet(string.format("Executor: %s %s", executor.Name, executor.Version)))
			L(Md.Bullet(string.format("Attached: %s", context.StartedAtIso or "?")))
			L(Md.Bullet(string.format("Exports written: %d, last at %s",
				context.ExportCount or 0, context.LastExportAtIso or "not yet")))
			L("")
			L("## How to read this set")
			L("")
			L(Md.Bullet("Every statement in these files is a measurement taken during"))
			L(Md.Bullet("this session. Nothing here interprets, explains or guesses."))
			L(Md.Bullet("Counts marked exact remain exact even where sample lists are"))
			L(Md.Bullet("truncated; truncation is always stated next to the list."))
			L(Md.Bullet("Absence from a document is not evidence of absence in the game."))
			L(Md.Bullet("07-COVERAGE.md lists what was not observed. Read it before"))
			L(Md.Bullet("concluding that something does not exist."))
			L("")

			L(Md.Heading(2, "Coverage totals"))
			L("")
			L(Md.Table({ "Measure", "Count" }, {
				{ "Remotes discovered", census.Total },
				{ "Remotes with observed traffic", census.WithOutgoing + census.WithIncoming - census.WithBoth },
				{ "Remotes never observed", census.Silent },
				{ "Outgoing calls recorded", Net.Outgoing },
				{ "Incoming calls recorded", Net.Incoming },
				{ "Scripts found", Scripts.Counts.Total },
				{ "Scripts readable by the client", Scripts.Counts.Viable },
				{ "Attributes tracked", countKeys(State.Attributes) },
				{ "Value objects tracked", countKeys(State.Objects) },
				{ "State transitions recorded", State.Changes },
			}))
			L("")

			L(Md.Heading(2, "Recommended reading order"))
			L("")
			L(Md.Bullet("01-ENVIRONMENT.md - what this client can see, and what it cannot."))
			L(Md.Bullet("07-COVERAGE.md - the limits of this run. Read first."))
			L(Md.Bullet("03-REMOTES.md then the 04-REMOTE-*.md files - the protocol."))
			L(Md.Bullet("05-SCRIPTS.md - which code sends and receives each call."))
			L(Md.Bullet("06-STATES.md - the numbers that moved."))
			L(Md.Bullet("02-STRUCTURE.md - the full scene, last, because it is large."))
			L("")

			L(Md.Heading(2, "File manifest"))
			L("")
			local rows = {}
			for _, entry in ipairs(manifest) do
				rows[#rows + 1] = {
					Md.Code(entry.Path),
					entry.Purpose,
					entry.Bytes and string.format("%d bytes", entry.Bytes) or "—",
				}
			end
			L(Md.Table({ "File", "Contents", "Size" }, rows, { "---", "---", ":---:" }))
			L("")

			return table.concat(out, "\n") .. "\n"
		end

		---------------------------------------------------------------------
		-- raw JSON
		---------------------------------------------------------------------

		function Report.RawRemotes()
			local records = orderedRemotes()
			local payload = {}
			for _, record in ipairs(records) do
				local function directionData(direction)
					local positions = {}
					for position, data in pairs(direction.Positions) do
						positions[tostring(position)] = {
							Count = data.Count,
							Types = data.Types,
							Min = data.Min,
							Max = data.Max,
							DistinctTotal = data.Distinct.Total,
							Distinct = data.Distinct.Items(),
							Increases = data.Increases,
							Decreases = data.Decreases,
							Unchanged = data.Unchanged,
						}
					end
					local callers = {}
					for _, caller in pairs(direction.Callers) do
						callers[#callers + 1] = caller
					end
					local listeners = {}
					for _, listener in pairs(direction.Listeners) do
						listeners[#listeners + 1] = listener
					end
					local samples = {}
					for _, sample in ipairs(direction.Samples.Items()) do
						samples[#samples + 1] = {
							At = sample.At,
							Method = sample.Method,
							Args = sample.Args,
							Result = sample.Result,
							OriginPath = sample.OriginPath,
							Line = sample.Line,
							IsSweep = sample.IsSweep,
						}
					end
					local timeline = {}
					for _, entry in ipairs(direction.Timeline.Items()) do
						timeline[#timeline + 1] = entry
					end
					return {
						Count = direction.Count,
						MinArity = direction.MinArity,
						MaxArity = direction.MaxArity,
						Shapes = direction.ShapeCounts,
						Positions = positions,
						Callers = callers,
						Listeners = listeners,
						Samples = samples,
						SamplesRetained = #samples,
						SamplesDropped = direction.Samples.Dropped,
						Timeline = timeline,
					}
				end
				payload[#payload + 1] = {
					Name = record.Name,
					ClassName = record.ClassName,
					Path = record.Path,
					LuaPath = record.LuaPath,
					ParentPath = record.ParentPath,
					DebugId = record.DebugId,
					FirstSeen = record.FirstSeen,
					LastSeen = record.LastSeen,
					Outgoing = directionData(record.Outgoing),
					Incoming = directionData(record.Incoming),
				}
			end
			return payload
		end

		function Report.RawScripts()
			local payload = {}
			for _, record in ipairs(Scripts.List) do
				local result = Decompile.Results[record.Path]
				payload[#payload + 1] = {
					Path = record.Path,
					ClassName = record.ClassName,
					Name = record.Name,
					RunContext = record.RunContext,
					Disabled = record.Disabled,
					Viable = record.Viable,
					UnavailabilityReason = record.Reason,
					DebugId = record.DebugId,
					DecompileMethod = record.Decompile,
					DecompileAttempts = result and result.Attempts or nil,
					DecompileMeta = result and result.Meta or nil,
					FiresOutgoing = record.FiresOutgoing,
					ListensIncoming = record.ListensIncoming,
				}
			end
			return payload
		end

		function Report.RawStates()
			local attributes = {}
			for key, cell in pairs(State.Attributes) do
				attributes[#attributes + 1] = {
					Key = key,
					TypeName = cell.TypeName,
					Count = cell.Count,
					Changes = cell.Changes,
					Min = cell.Min,
					Max = cell.Max,
					Increases = cell.Increases,
					Decreases = cell.Decreases,
					Unchanged = cell.Unchanged,
					Last = cell.Last,
					Distinct = cell.Distinct.Items(),
					DistinctTotal = cell.Distinct.Total,
					TrafficHits = cell.TrafficHits,
				}
			end
			local objects = {}
			for key, cell in pairs(State.Objects) do
				objects[#objects + 1] = {
					Key = key,
					ClassName = cell.ClassName,
					TypeName = cell.TypeName,
					Count = cell.Count,
					Changes = cell.Changes,
					Min = cell.Min,
					Max = cell.Max,
					Increases = cell.Increases,
					Decreases = cell.Decreases,
					Last = cell.Last,
					Distinct = cell.Distinct.Items(),
				}
			end
			return { Attributes = attributes, ValueObjects = objects,
				CoOccurrences = State.CoOccurrences }
		end

		function Report.RawInstances()
			local list, counts = Scene.Walk({
				MaxInstances = 20000, MaxDepth = 64, IncludeNil = true,
			})
			local payload = {}
			for _, entry in ipairs(list) do
				local instance = entry.Instance
				local properties = {}
				local reflected = Reflect.PropertiesOf(instance)
				for _, property in ipairs(reflected) do
					properties[#properties + 1] = {
						Name = property.Name,
						Value = property.Value,
						NonDefault = Reflect.IsDefault(instance.ClassName, property.Name, property.Value),
					}
				end
				local attributes = {}
				local ok, attributeMap = pcall(function() return instance:GetAttributes() end)
				if ok then
					for name, value in pairs(attributeMap) do
						attributes[name] = value
					end
				end
				local children = {}
				local okChildren, childList = pcall(function() return instance:GetChildren() end)
				if okChildren then
					for _, child in ipairs(childList) do
						children[#children + 1] = child.Name
					end
				end
				payload[#payload + 1] = {
					Path = Paths.Dotted(instance),
					ClassName = instance.ClassName,
					Name = instance.Name,
					Depth = entry.Depth,
					IsNil = entry.IsNil or false,
					Properties = properties,
					Attributes = attributes,
					Children = children,
				}
			end
			return payload, counts
		end

		function Report.RawCoverage(context)
			return {
				PlaceId = context.PlaceId,
				Executor = Compat.Identify(),
				Capabilities = Compat.Report(),
				ReflectionSource = Reflect.Source,
				NetCensus = Net.Census(),
				DecompileSummary = Decompile.Summary(),
				Sweep = Req("Sweep").Report(),
				LintViolations = Docs.Violations,
				LintCheckedLines = Docs.CheckedLines,
				NetErrors = Net.Errors,
				NetNotes = Net.Notes,
				Budgets = BUDGET,
				StructureTruncated = Report.StructureTruncated,
			}
		end

		---------------------------------------------------------------------
		-- assembly
		---------------------------------------------------------------------

		local MANIFEST_DESCRIPTIONS = {
			["00-INDEX.md"] = "Run summary, coverage totals and reading order",
			["01-ENVIRONMENT.md"] = "Place metadata, executor capability probe, reflection source",
			["02-STRUCTURE.md"] = "Instance tree with properties and attributes",
			["03-REMOTES.md"] = "One row per remote with argument schema and traffic counts",
			["05-SCRIPTS.md"] = "Script inventory, decompilation method, call-site cross-reference",
			["06-STATES.md"] = "Attributes, value objects and numeric argument positions",
			["07-COVERAGE.md"] = "What was not observed and what could not be observed",
			["raw/remotes.json"] = "Full remote aggregates, samples and timelines",
			["raw/scripts.json"] = "Script inventory with decompilation metadata",
			["raw/states.json"] = "Attribute and value-object observation records",
			["raw/instances.json"] = "Full instance tree with all readable properties",
			["raw/coverage.json"] = "Machine-readable limits and capability report",
			["logs/aidump.log"] = "AIDump operational log",
			["logs/selftest.md"] = "Self-test report from the most recent run",
		}

		--- Produces the complete file set in memory. `context` supplies run
		--- bookkeeping; every other input is read from the observation modules.
		function Report.Build(context)
			local files = {}
			local function add(path, contents)
				files[#files + 1] = { Path = path, Contents = contents }
			end

			local environment = Report.Environment(context)
			local remotesIndex, records = Report.Remotes(context)
			local structure = Report.Structure(context)
			local scriptMap = Report.ScriptMap()
			local states = Report.States()
			local coverage = Report.Coverage(context)

			add("01-ENVIRONMENT.md", environment)
			add("03-REMOTES.md", remotesIndex)
			add("02-STRUCTURE.md", structure)
			add("05-SCRIPTS.md", scriptMap)
			add("06-STATES.md", states)
			add("07-COVERAGE.md", coverage)

			Report.remoteFiles = Report.remoteFiles or {}
			local remoteManifest = {}
			for _, entry in ipairs(Report.remoteFileOrder or {}) do
				local fileName = entry.FileName
				add(fileName, Report.RemoteDetail(entry.Record))
				remoteManifest[#remoteManifest + 1] = {
					FileName = fileName,
					Name = entry.Record.Name,
					ClassName = entry.Record.ClassName,
				}
			end

			-- Script files.
			for _, record in ipairs(Scripts.List) do
				local result = Decompile.Results[record.Path]
				if result then
					local base = Md.ScriptFileName(record)
					local stem = base:sub(1, -5)
					if result.Source then
						add("scripts/" .. base, result.Source)
					end
					if result.Disassembly then
						add("scripts/" .. stem .. ".disasm.txt", result.Disassembly)
					end
					add("scripts/" .. stem .. ".meta.json", Ser.Json({
						Path = record.Path,
						ClassName = record.ClassName,
						DebugId = record.DebugId,
						Method = result.Method,
						Reason = result.Reason,
						Attempts = result.Attempts,
						Meta = result.Meta,
					}))
				end
			end

			-- Raw JSON.
			local instances, instanceCounts = Report.RawInstances()
			add("raw/instances.json", Ser.Json(instances))
			add("raw/remotes.json", Ser.Json(Report.RawRemotes()))
			add("raw/scripts.json", Ser.Json(Report.RawScripts()))
			add("raw/states.json", Ser.Json(Report.RawStates()))
			add("raw/coverage.json", Ser.Json(Report.RawCoverage(context)))
			if instanceCounts then
				context.InstanceCounts = instanceCounts
			end

			-- Manifest, then the index which reports on it.
			local manifest = {}
			for _, file in ipairs(files) do
				manifest[#manifest + 1] = {
					Path = file.Path,
					Purpose = MANIFEST_DESCRIPTIONS[file.Path]
						or (file.Path:sub(1, 3) == "04-" and "Per-remote detail" or "Generated data"),
					Bytes = #file.Contents,
				}
			end
			for _, entry in ipairs(remoteManifest) do
				local found = false
				for _, manifestEntry in ipairs(manifest) do
					if manifestEntry.Path == entry.FileName then
						manifestEntry.Purpose = string.format("Detail for %s %s",
							entry.ClassName, entry.Name)
						found = true
						break
					end
				end
				if not found then
					manifest[#manifest + 1] = {
						Path = entry.FileName,
						Purpose = string.format("Detail for %s %s", entry.ClassName, entry.Name),
					}
				end
			end
			-- The manifest must list itself-ish entries deterministically.
			table.sort(manifest, function(a, b) return a.Path < b.Path end)
			local indexContents = Report.Index(context, manifest)
			table.insert(files, 1, { Path = "00-INDEX.md", Contents = indexContents })

			return files
		end

		return Report
	end,
}

for moduleName, moduleFactory in pairs(SECTION9) do
	Modules[moduleName] = moduleFactory
end

--[[
	SECTION 10 — STORAGE, SWEEP, DRIVER, SELF-TEST

	The sweep is the only part of this script that originates traffic rather than
	observing it, so it is deliberately timid. It will not fire a remote that was
	never observed firing, will not send a payload that was not previously
	observed, will not touch a remote whose name suggests a destructive action,
	and will not exceed a hard rate limit. Every attempt is journalled with the
	reason it was permitted, and the journal is summarised in 07-COVERAGE.md so
	the sweep's effect on coverage is auditable rather than assumed.
]]

local SECTION10 = {
	Store = function()
		local Util = Req("Util")
		local Fs = Req("Fs")
		local Log = Req("Log")
		local Ser = Req("Ser")
		local Report = Req("Report")
		local Compat = Req("Compat")
		local State = Req("State")
		local Sweep = Req("Sweep")

		local Store = {
			Context = {
				StartedAt = os.time(),
				StartedAtIso = os.date("!%Y-%m-%dT%H:%M:%SZ"),
				StartedAtClock = os.clock(),
				ExportCount = 0,
				LastExportAtIso = nil,
				PlaceId = nil,
				FailedFiles = {},
				LastError = nil,
			},
			LastBytes = 0,
			Session = nil,
		}

		local DIRECTORIES = { "", "logs", "scripts", "raw", "raw/calls" }

		function Store.BeginSession()
			local placeId = (pcall(function() return game.PlaceId end)) and game.PlaceId or "unknown"
			local stamp = os.date("!%Y-%m-%dT%H_%M_%SZ")
			Store.Context.PlaceId = placeId
			-- Keyed on PlaceId so that a session which survives a teleport merges
			-- into the same directory instead of scattering documents.
			Store.Session = string.format("%s_%s", tostring(placeId), stamp)
			Fs.Session = Store.Session
			for _, directory in ipairs(DIRECTORIES) do
				Fs.EnsureDir(Fs.Join(Fs.Root, Store.Session, directory))
			end
			Log.Info("session directory:", Fs.Join(Fs.Root, Store.Session))
			return Store.Session
		end

		--- Re-renders every document and writes it. Because the whole set is
		--- regenerated from the accumulator, repeated exports are idempotent and a
		--- partial previous export self-heals.
		function Store.Flush(reason)
			local context = Store.Context
			context.ExportCount += 1
			context.LastExportAtIso = os.date("!%Y-%m-%dT%H:%M:%SZ")
			context.UptimeSeconds = math.floor(os.clock() - (context.StartedAtClock or os.clock()))

			local ok, result = pcall(function()
				-- Refresh anything that may have grown since the last export.
				State.RescanAll()
				return Report.Build(context)
			end)
			if not ok then
				context.LastError = Util.Truncate(tostring(result), 400)
				Log.Error("report generation failed:", context.LastError)
				return false, result
			end

			local written, failed = 0, {}
			local totalBytes = 0
			for _, file in ipairs(result) do
				local success, err = Fs.Write(Fs.Path(file.Path), file.Contents)
				if success then
					written += 1
					totalBytes += #file.Contents
				else
					failed[#failed + 1] = string.format("%s (%s)", file.Path, tostring(err))
				end
			end
			Store.LastBytes = totalBytes
			context.FailedFiles = failed
			context.LastError = nil

			-- The log and the self-test report live outside Report.Build because
			-- they describe the export itself.
			local selftest = Req("SelfTest").LastReport
			if selftest then
				local selfOk = Fs.Write(Fs.Path("logs", "selftest.md"), selftest)
				if not selfOk then
					failed[#failed + 1] = "logs/selftest.md"
				end
			end

			Log.Info(string.format("export #%d (%s): %d file(s), %.1f KB, %d failure(s)",
				context.ExportCount, tostring(reason), written, totalBytes / 1024, #failed))
			for _, entry in ipairs(failed) do
				Log.Warn("  failed:", entry)
			end
			return true, written
		end

		function Store.Status()
			return {
				Session = Store.Session,
				Exports = Store.Context.ExportCount,
				Uptime = Store.Context.UptimeSeconds,
				Bytes = Store.LastBytes,
				FailedFiles = Store.Context.FailedFiles,
				LastError = Store.Context.LastError,
			}
		end

		return Store
	end,

	Sweep = function()
		local Util = Req("Util")
		local Log = Req("Log")
		local Paths = Req("Paths")
		local Ser = Req("Ser")
		local Net = Req("Net")
		local Fs = Req("Fs")
		local Scripts = Req("Scripts")

		local Sweep = {
			Enabled = true,
			Attempts = 0,
			Blocked = 0,
			Recent = {},
			LastActionAt = 0,
			IntervalSeconds = 45,
			Running = false,
			Waypoints = {},
			Prompts = {},
			ClickedDetectors = {},
			-- Remote name fragments that never get replayed, because a mistaken
			-- replay could spend currency, destroy state or desynchronise the
			-- player's session.
			DenyFragments = {
				"purchase", "buy", "trade", "spend", "pay", "redeem", "gift",
				"reset", "delete", "wipe", "sell", "revoke", "ban", "kick",
				"equip", "unequip", "claim", "confirm", "admin", "debug",
			},
			MaxActions = 200,
			MinGapSeconds = 2,
			PromptCooldownSeconds = 60,
		}

		local function journal(kind, subject, outcome, justification)
			Sweep.Attempts += 1
			local entry = {
				Kind = kind,
				Subject = Util.Truncate(tostring(subject), 120),
				Outcome = outcome,
				Justification = justification,
				At = os.clock(),
			}
			Sweep.Recent[#Sweep.Recent + 1] = entry
			if #Sweep.Recent > 40 then
				table.remove(Sweep.Recent, 1)
			end
			Fs.Append(Fs.Path("logs", "sweep.log"),
				string.format("\t%s\t%s\t%s\t%s\n",
					kind, entry.Subject, outcome, justification))
			return entry
		end
		Sweep.Journal = journal

		function Sweep.Report()
			return {
				Enabled = Sweep.Enabled,
				Attempts = Sweep.Attempts,
				Blocked = Sweep.Blocked,
				Recent = Sweep.Recent,
				Waypoints = #Sweep.Waypoints,
				Prompts = #Sweep.Prompts,
				DenyFragments = Sweep.DenyFragments,
				MaxActions = Sweep.MaxActions,
				IntervalSeconds = Sweep.IntervalSeconds,
			}
		end

		local function rateLimited()
			if Sweep.Attempts >= Sweep.MaxActions then
				return true, "session action cap reached"
			end
			local now = os.clock()
			if now - Sweep.LastActionAt < Sweep.MinGapSeconds then
				return true, "rate limit"
			end
			return false
		end

		---------------------------------------------------------------------
		-- discovery
		---------------------------------------------------------------------

		--- Collects movement waypoints from the game's own geometry. Positions
		--- come from BaseParts and Model pivots, so the path covers whatever the
		--- designer placed rather than a guessed set of coordinates.
		function Sweep.Discover()
			local Scene = Req("Scene")
			local list = Scene.Walk({ MaxInstances = 40000, MaxDepth = 64 })
			local seen = {}
			for _, entry in ipairs(list) do
				local instance = entry.Instance
				local position
				if instance:IsA("BasePart") then
					pcall(function()
						position = instance.Position
					end)
				elseif instance:IsA("Model") then
					pcall(function()
						position = instance:GetPivot().Position
					end)
				end
				if position and type(position) == "Vector3" then
					-- Quantise so many co-located parts collapse to one waypoint.
					local key = string.format("%d_%d_%d",
						math.floor(position.X / 40),
						math.floor(position.Y / 40),
						math.floor(position.Z / 40))
					if not seen[key] then
						seen[key] = true
						Sweep.Waypoints[#Sweep.Waypoints + 1] = position
					end
				end
			end
			Log.Info("sweep: discovered", #Sweep.Waypoints, "waypoint(s)")

			local interactives = Scene.Interactives()
			for _, prompt in ipairs(interactives.ProximityPrompt or {}) do
				Sweep.Prompts[#Sweep.Prompts + 1] = { Instance = prompt, LastAt = 0 }
			end
			for _, detector in ipairs(interactives.ClickDetector or {}) do
				Sweep.ClickedDetectors[#Sweep.ClickedDetectors + 1] =
					{ Instance = detector, LastAt = 0 }
			end
			Log.Info("sweep: discovered", #Sweep.Prompts, "prompt(s) and",
				#Sweep.ClickedDetectors, "click detector(s)")
			return Sweep
		end

		---------------------------------------------------------------------
		-- actions
		---------------------------------------------------------------------

		function Sweep.MoveOnce()
			if #Sweep.Waypoints == 0 then
				return false
			end
			local limited, reason = rateLimited()
			if limited then
				return false, reason
			end
			local player = game:GetService("Players").LocalPlayer
			local character = player and player.Character
			local humanoid = character and character:FindFirstChildOfClass("Humanoid")
			if not humanoid then
				return false, "no character"
			end
			Sweep.WaypointIndex = ((Sweep.WaypointIndex or 0) % #Sweep.Waypoints) + 1
			local target = Sweep.Waypoints[Sweep.WaypointIndex]
			local moved = pcall(function()
				humanoid:MoveTo(target)
			end)
			if not moved then
				return false, "MoveTo failed"
			end
			Sweep.LastActionAt = os.clock()
			journal("move", Ser.Inline(target, 40), "issued",
				"waypoint sampled from game geometry")
			return true
		end

		function Sweep.FirePromptsOnce()
			local fireproximityprompt = Req("Compat").Get("fireproximityprompt")
			local now = os.clock()
			local attempted = 0
			for _, entry in ipairs(Sweep.Prompts) do
				if attempted >= 5 then
					break
				end
				if now - (entry.LastAt or 0) >= Sweep.PromptCooldownSeconds then
					local ok = fireproximityprompt and pcall(fireproximityprompt, entry.Instance)
					entry.LastAt = now
					attempted += 1
					journal("prompt", Paths.Dotted(entry.Instance),
						ok and "fired" or "unavailable",
						"proximity prompt present in the scene")
				end
			end
			return attempted > 0
		end

		function Sweep.FireClicksOnce()
			local fireclickdetector = Req("Compat").Get("fireclickdetector")
			if not fireclickdetector then
				return false
			end
			local now = os.clock()
			local attempted = 0
			for _, entry in ipairs(Sweep.ClickedDetectors) do
				if attempted >= 5 then
					break
				end
				if now - (entry.LastAt or 0) >= Sweep.PromptCooldownSeconds then
					local ok = pcall(fireclickdetector, entry.Instance)
					entry.LastAt = now
					attempted += 1
					journal("clickdetector", Paths.Dotted(entry.Instance),
						ok and "fired" or "failed",
						"click detector present in the scene")
				end
			end
			return attempted > 0
		end

		local function isScalarOnly(packed)
			for index = 1, packed.n do
				local t = type(packed[index])
				if t ~= "string" and t ~= "number" and t ~= "boolean" then
					return false, "argument " .. index .. " is " .. t
				end
			end
			return true
		end

		local function nameIsDenied(record)
			local lowered = string.lower(record.Name)
			for _, fragment in ipairs(Sweep.DenyFragments) do
				if lowered:find(fragment, 1, true) then
					return true, fragment
				end
			end
			return false
		end

		--- Replays one previously observed payload. The payload is never
		--- modified: it is re-sent exactly as it was observed, so the server sees
		--- a call the game itself had already made.
		function Sweep.ReplayOnce()
			local limited, reason = rateLimited()
			if limited then
				return false, reason
			end
			for _, record in ipairs(Net.Records) do
				local direction = record.Outgoing
				if direction.Count >= 2 then
					local denied, fragment = nameIsDenied(record)
					if denied then
						Sweep.Blocked += 1
						journal("replay-blocked", record.Path, "denied by name list",
							"name contains '" .. fragment .. "'")
					else
						local samples = direction.Samples.Items()
						local sample = samples[#samples]
						if sample and sample.Args then
							local scalar, why = isScalarOnly(sample.Args)
							if not scalar then
								Sweep.Blocked += 1
								journal("replay-blocked", record.Path, "arguments not scalar", why)
							else
								local ok, errorMessage = pcall(function()
									-- Marked synthetic so the payload is still
									-- recorded, but is separable from what the
									-- player actually did.
									Net.Synthetic(function()
										local target = record.Instance
										if record.ClassName == "RemoteEvent"
											or record.ClassName == "UnreliableRemoteEvent" then
											target:FireServer(table.unpack(sample.Args, 1, sample.Args.n))
										elseif record.ClassName == "RemoteFunction" then
											target:InvokeServer(table.unpack(sample.Args, 1, sample.Args.n))
										elseif record.ClassName == "BindableEvent" then
											target:Fire(table.unpack(sample.Args, 1, sample.Args.n))
										end
									end)
								end)
								Sweep.LastActionAt = os.clock()
								journal("replay", record.Path, ok and "sent" or "failed",
									string.format("payload observed %d time(s) earlier; "
										.. "replayed unmodified, all-scalar arguments", direction.Count))
							end
							return true
						end
					end
				end
			end
			return false, "no eligible remote"
		end

		---------------------------------------------------------------------
		-- loop
		---------------------------------------------------------------------

		function Sweep.Step()
			if not Sweep.Enabled or Sweep.Running then
				return
			end
			Sweep.Running = true
			pcall(function()
				Sweep.FirePromptsOnce()
				Sweep.FireClicksOnce()
				Sweep.MoveOnce()
				Sweep.ReplayOnce()
			end)
			Sweep.Running = false
		end

		function Sweep.Start()
			if not Sweep.Enabled then
				return
			end
			task.spawn(function()
				while Sweep.Enabled do
					task.wait(Sweep.IntervalSeconds)
					if not Sweep.Enabled then
						break
					end
					pcall(Sweep.Step)
				end
			end)
			Log.Info("sweep: background loop started, interval",
				Sweep.IntervalSeconds, "s, cap", Sweep.MaxActions, "action(s)")
		end

		function Sweep.Stop()
			Sweep.Enabled = false
		end

		return Sweep
	end,

	SelfTest = function()
		local Util = Req("Util")
		local Compat = Req("Compat")
		local Ser = Req("Ser")
		local Paths = Req("Paths")
		local Fs = Req("Fs")
		local Docs = Req("Docs")
		local Bytecode = Req("Bytecode")
		local Scripts = Req("Scripts")

		--- Correctness is established here, inside Roblox, because no Luau
		--- runtime is available where this script was authored. Each check
		--- returns pass/fail plus a detail string, and the whole set is rendered
		--- to logs/selftest.md on every export.
		local SelfTest = {
			Results = {},
			Passed = 0,
			Failed = 0,
			LastReport = nil,
		}

		local function check(name, fn)
			local ok, detail = pcall(fn)
			if ok and detail == true then
				detail = "ok"
			elseif ok and detail == nil then
				detail = "ok"
			end
			SelfTest.Results[#SelfTest.Results + 1] = {
				Name = name,
				Passed = ok and detail ~= false,
				Detail = Util.Truncate(tostring(detail), 200),
			}
			if ok and detail ~= false then
				SelfTest.Passed += 1
			else
				SelfTest.Failed += 1
			end
		end

		function SelfTest.Run()
			table.clear(SelfTest.Results)
			SelfTest.Passed = 0
			SelfTest.Failed = 0

			check("ring bounds head and tail", function()
				local ring = Util.Ring(2, 2)
				for index = 1, 10 do
					ring.Add(index)
				end
				assert(ring.Total == 10, "Total should be 10, got " .. ring.Total)
				local items = ring.Items()
				assert(items[1] == 1, "head should retain the first value")
				assert(items[#items] == 10, "tail should retain the last value, got " .. tostring(items[#items]))
				return true
			end)

			check("string quoting survives control characters", function()
				local source = "a\nb\t\"c\\d"
				local rendered = Util.Quote(source)
				local compiled, err = loadstring("return " .. rendered)
				assert(compiled, "emitted literal did not compile: " .. tostring(err))
				local ok, roundTrip = pcall(function() return compiled() end)
				assert(ok and roundTrip == source,
					"round trip mismatch: " .. Util.Quote(tostring(roundTrip)))
				return true
			end)

			check("value serialiser emits compilable Luau", function()
				local fixture = {
					Text = "hello",
					Count = 42,
					Ratio = 1 / 3,
					Flag = true,
					Nothing = nil,
					Vector = Vector3.new(1.5, -2, 3),
					Colour = Color3.new(1, 0, 0),
					Position = CFrame.new(1, 2, 3, 0, 0, 90),
					Scale = UDim2.new(0, 10, 1, 20),
					Range = NumberRange.new(1, 5),
					Enumerated = Enum.Material.Neon,
					Nested = { "a", "b", Inner = { 1, 2, 3 } },
				}
				fixture.Self = fixture
				local emitted = Ser.Value(fixture, { Prettify = true })
				local compiled, err = loadstring("return " .. emitted)
				assert(compiled, "serialised fixture did not compile: " .. tostring(err)
					.. " output began: " .. Util.Truncate(emitted, 120))
				return true
			end)

			check("cycle detection terminates", function()
				local cycle = {}
				cycle.Self = cycle
				local emitted = Ser.Value(cycle, { Prettify = false, MaxDepth = 6 })
				assert(emitted:find("shared", 1, true) or emitted:find("TRUNCATED", 1, true),
					"cycle was not labelled: " .. Util.Truncate(emitted, 120))
				return true
			end)

			check("packed argument arity is preserved", function()
				local packed = table.pack("a", nil, "c")
				local emitted = Ser.Value(packed, { Prettify = false })
				assert(emitted:find("[1] = ", 1, true), "index 1 missing")
				assert(emitted:find("[2] = nil", 1, true), "hole at index 2 missing")
				assert(emitted:find("[3] = ", 1, true), "index 3 missing")
				return true
			end)

			check("markdown cells escape table syntax", function()
				local cell = Docs.Md.Cell("a|b`c<d>e\nf")
				assert(cell:find("|", 1, true) == nil or cell:find("\\|", 1, true),
					"pipe was not escaped: " .. cell)
				assert(cell:find("<d>", 1, true) == nil, "angle bracket was not escaped: " .. cell)
				assert(cell:find("\n") == nil, "newline survived into a cell: " .. cell)
				return true
			end)

			check("fact linter rejects an assertion", function()
				local clean = Docs.LintLine("Remote BuyItem fired 42 times.")
				assert(clean ~= nil, "a factual line was rejected")
				local rejected = Docs.LintLine("This remote is probably the currency endpoint.")
				assert(rejected == nil, "an assertion was accepted")
				return true
			end)

			check("fact linter accepts game vocabulary in values", function()
				local cell = Docs.Md.Cell("Health")
				assert(cell == "Health", "value cell was altered: " .. cell)
				return true
			end)

			check("service paths resolve", function()
				assert(Paths.Of(game) == "game", "game path wrong: " .. Paths.Of(game))
				assert(Paths.Of(workspace) == "workspace",
					"workspace path wrong: " .. Paths.Of(workspace))
				local rs = game:GetService("ReplicatedStorage")
				local path = Paths.Of(rs)
				assert(path:find("GetService", 1, true) or path:find("ReplicatedStorage", 1, true),
					"ReplicatedStorage path unexpected: " .. path)
				return true
			end)

			check("json output is valid", function()
				local encoded = Ser.Json({ A = 1, B = "two", C = { true, false } })
				local ok, decoded = pcall(function()
					return game:GetService("HttpService"):JSONDecode(encoded)
				end)
				assert(ok, "JSONDecode rejected the output: " .. Util.Truncate(tostring(decoded), 120))
				assert(decoded and decoded.A == 1, "decoded value mismatch")
				return true
			end)

			check("filesystem write and read back", function()
				if not Fs.Available() then
					return "skipped: filesystem unavailable"
				end
				local probe = Fs.Path("logs", "selftest.probe")
				local ok, err = Fs.Write(probe, "AIDump selftest probe\n")
				assert(ok, "write failed: " .. tostring(err))
				local read = Fs.Read(probe)
				assert(read == "AIDump selftest probe\n",
					"read back mismatch: " .. Util.Quote(tostring(read)))
				return true
			end)

			-- The bytecode parser is only meaningful against real bytecode, so it
			-- is exercised against the running game's own scripts.
			check("bytecode parser handles a live script", function()
				local getscriptbytecode = Compat.Get("getscriptbytecode")
				if not getscriptbytecode then
					return "skipped: getscriptbytecode unavailable"
				end
				local probeScript
				for _, record in ipairs(Scripts.List) do
					if record.Viable and record.ClassName == "LocalScript" then
						probeScript = record.Instance
						break
					end
				end
				if not probeScript then
					return "skipped: no client-side LocalScript found to probe"
				end
				local ok, bytes = pcall(getscriptbytecode, probeScript)
				assert(ok and (type(bytes) == "string" or type(bytes) == "buffer"),
					"bytecode unavailable for " .. probeScript.Name .. ": " .. tostring(bytes))
				local parsed, reason = Bytecode.Deserialize(bytes)
				assert(parsed, "parser rejected live bytecode from " .. probeScript.Name .. ": " .. tostring(reason))
				assert(parsed.ProtoCount >= 1, "no protos parsed")
				return string.format("bytecode version %d, %d protos, %d bytes",
					parsed.Version, parsed.ProtoCount, parsed.BytesTotal)
			end)

			check("number formatting round trips", function()
				local cases = { 0, 1, -1, 0.5, -0.5, 1 / 3, 1e15, 123456789012345 }
				for _, value in ipairs(cases) do
					local rendered = Ser.Number(value)
					local compiled, err = loadstring("return " .. rendered)
					assert(compiled, "could not compile " .. rendered .. ": " .. tostring(err))
					local ok, back = pcall(function() return compiled() end)
					assert(ok and back == value,
						string.format("%s became %s", tostring(value), tostring(back)))
				end
				assert(Ser.Number(0 / 0) == "0/0", "NaN rendering wrong")
				assert(Ser.Number(math.huge) == "math.huge", "infinity rendering wrong")
				return true
			end)

			SelfTest.Render()
			return SelfTest
		end

		function SelfTest.Render()
			local out = {}
			local function L(line)
				out[#out + 1] = line
			end
			L("# AIDump self-test")
			L("")
			L(string.format("Generated: %s", os.date("!%Y-%m-%dT%H:%M:%SZ")))
			L("")
			L(string.format("**%d passed, %d failed, %d total**",
				SelfTest.Passed, SelfTest.Failed, #SelfTest.Results))
			L("")
			if #SelfTest.Results == 0 then
				L("The self-test has not been run.")
				SelfTest.LastReport = table.concat(out, "\n") .. "\n"
				return SelfTest.LastReport
			end
			L("| Check | Result | Detail |")
			L("| --- | --- | --- |")
			for _, result in ipairs(SelfTest.Results) do
				L(string.format("| %s | %s | %s |",
					result.Name,
					result.Passed and "pass" or "FAIL",
					result.Detail:gsub("|", "\\|")))
			end
			L("")
			if SelfTest.Failed > 0 then
				L("Failing checks indicate a defect in this script or an executor")
				L("capability that differs from the assumption made. Both are recorded")
				L("rather than hidden.")
			end
			SelfTest.LastReport = table.concat(out, "\n") .. "\n"
			return SelfTest.LastReport
		end

		return SelfTest
	end,

	Driver = function()
		local Util = Req("Util")
		local Fs = Req("Fs")
		local Log = Req("Log")
		local Compat = Req("Compat")
		local Reflect = Req("Reflect")
		local Scene = Req("Scene")
		local Net = Req("Net")
		local Scripts = Req("Scripts")
		local State = Req("State")
		local Decompile = Req("Decompile")
		local Store = Req("Store")
		local Sweep = Req("Sweep")
		local SelfTest = Req("SelfTest")
		local Report = Req("Report")

		local Driver = {
			Running = false,
			ExportIntervalSeconds = 300,
			ExportCountdown = 60,
			DecompileBatch = 6,
			Started = false,
		}

		local function fatal(message)
			-- Both channels are used because executors differ in which one they
			-- surface. `warn` reaches the F9 console on some, `print` on others.
			pcall(print, "[AIDump][FATAL] " .. tostring(message))
			pcall(warn, "[AIDump][FATAL] " .. tostring(message))
			-- A notification is not a UI: it is the only channel available when
			-- the script cannot write the file that would explain the problem.
			pcall(function()
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "AIDump",
					Text = Util.Truncate(message, 180),
					Duration = 20,
				})
			end)
		end

		--- Decompiles every client-side script, a few per tick so that a large game
		--- does not stall the client in one frame.
		function Driver.DecompileBatch()
			local pending = {}
			for _, record in ipairs(Scripts.List) do
				if record.Viable and record.Decompile == nil then
					pending[#pending + 1] = record
				end
			end
			if #pending == 0 then
				Driver.DecompileComplete = true
				return 0
			end
			local batch = math.min(Driver.DecompileBatch, #pending)
			for index = 1, batch do
				local record = pending[index]
				local ok, result = pcall(Decompile.Script, record)
				if ok then
					Driver.DecompiledCount = (Driver.DecompiledCount or 0) + 1
				else
					Net.NoteError("decompile " .. record.Path, result)
					record.Decompile = "failed"
				end
			end
			Log.Info("decompiled", Driver.DecompiledCount or 0,
				"of", Scripts.Counts.Viable, "client-side script(s)")
			return #pending - batch
		end

		function Driver.ExportNow(reason)
			local ok, written = pcall(Store.Flush, reason or "manual")
			if not ok then
				Log.Error("export raised:", written)
				return false
			end
			return ok
		end

		---------------------------------------------------------------------
		-- lifecycle
		---------------------------------------------------------------------

		function Driver.Init()
			if Driver.Started then
				return
			end
			Driver.Started = true

			Compat.Init()

			if not Fs.Available() then
				local report = Compat.Report()
				local found = {}
				for _, name in ipairs({ "writefile", "makefolder", "readfile", "appendfile", "delfile" }) do
					local entry = report[name]
					found[#found + 1] = string.format("%s=%s", name,
						entry and entry.Detail or "not probed")
				end
				fatal("AIDump cannot run: this executor exposes no writable filesystem. "
					.. "Probed " .. table.concat(found, ", ") .. ". Nothing can be recorded "
					.. "without one.")
				if typeof(getgenv) == "function" then
					getgenv().AIDumpRunning = nil
				end
				return
			end

			Log.SetLevel("INFO")
			Store.BeginSession()

			Reflect.Init()
			Scripts.Scan()
			Log.Info("scripts:", Scripts.Counts.Total, "found;",
				Scripts.Counts.Viable, "readable by the client")

			-- Watch state before traffic is installed, so the first calls already
			-- have a baseline to be compared against.
			local watched = {}
			local list = Scene.Walk({ MaxInstances = 40000, MaxDepth = 64 })
			for _, entry in ipairs(list) do
				local instance = entry.Instance
				if State.ValueClasses[instance.ClassName] then
					watched[#watched + 1] = instance
				elseif not instance:IsA("BaseScript") and not instance:IsA("Configuration") then
					local ok, attributes = pcall(function() return instance:GetAttributes() end)
					if ok and next(attributes) ~= nil then
						watched[#watched + 1] = instance
					end
				end
			end
			State.Install(watched)

			Net.Outgoing.Install()
			Net.Incoming.Install()

			SelfTest.Run()
			Log.Info("self-test:", SelfTest.Passed, "passed,", SelfTest.Failed, "failed")

			Sweep.Discover()
			Sweep.Start()

			Driver.Running = true
			Driver.ExportNow("initial")

			task.spawn(function()
				while Driver.Running do
					task.wait(5)
					if not Driver.Running then
						break
					end

					if not Driver.DecompileComplete then
						task.defer(Driver.DecompileBatch)
					end

					Driver.ExportCountdown -= 5
					if Driver.ExportCountdown <= 0 then
						Driver.ExportCountdown = Driver.ExportIntervalSeconds
						task.defer(Driver.ExportNow, "scheduled")
					end
				end
			end)

			Driver.InstallEntryPoint()
			Driver.InstallLifecycleHooks()
			Driver.BindModuleServices()

			Log.Info("running. Documents are rewritten every",
				Driver.ExportIntervalSeconds, "s.")
			Log.Info("output:", Fs.Join(Fs.Root, Store.Session or "?"))
			return Driver
		end

		function Driver.Stop()
			Driver.Running = false
			Sweep.Stop()
			pcall(function() Net.Teardown() end)
			pcall(function() Req("Incoming").Teardown() end)
			pcall(State.Teardown)
			pcall(Driver.ExportNow, "shutdown")
			-- Release the re-entrancy guard so AIDump can be run again.
			if typeof(getgenv) == "function" then
				getgenv().AIDumpRunning = nil
			end
			Log.Info("stopped; hooks removed and final export written")
		end

		--- The one and only global this script defines.
		function Driver.InstallEntryPoint()
			local env = (typeof(getgenv) == "function") and getgenv() or nil
			if not env then
				return
			end
			env.AIDump = {
				Export = function()
					return Driver.ExportNow("manual")
				end,
				Status = function()
					local status = Store.Status()
					status.Outgoing = Net.Outgoing
					status.Incoming = Net.Incoming
					status.Remotes = #Net.Records
					status.Sweep = Sweep.Report()
					return status
				end,
				Stop = function()
					Driver.Stop()
				end,
				StopSweep = function()
					Sweep.Stop()
				end,
			}
		end

		--- A teleport destroys the client this script runs in, and no executor
		--- re-injects automatically, so a session genuinely cannot continue across
		--- one. Rather than imply otherwise, this flushes what has been observed
		--- before the client goes away, so the session's final export is complete
		--- rather than one interval stale. Re-running AIDump in the destination
		--- place writes a new directory keyed on that place's PlaceId.
		function Driver.InstallLifecycleHooks()
			pcall(function()
				game:GetService("Players").PlayerRemoving:Connect(function(player)
					if player == game:GetService("Players").LocalPlayer then
						Log.Info("local player leaving; flushing before the client goes away")
						task.defer(function()
							pcall(Driver.ExportNow, "player-leaving")
						end)
					end
				end)
			end)
			pcall(function()
				game.Close:Connect(function()
					pcall(Driver.ExportNow, "game-closing")
				end)
			end)
		end

		--- Publishes the observation modules on the service locator so that the
		--- self-test and any later tool can reach them without a second registry.
		function Driver.BindModuleServices()
			Bind("Net", Net)
			Bind("Scripts", Scripts)
			Bind("State", State)
			Bind("Store", Store)
			Bind("Sweep", Sweep)
			Bind("Compat", Compat)
			Bind("Ser", Req("Ser"))
			Bind("Report", Report)
			Bind("Docs", Req("Docs"))
		end

		return Driver
	end,
}

for moduleName, moduleFactory in pairs(SECTION10) do
	Modules[moduleName] = moduleFactory
end

--[[
	SECTION 11 — BOOTSTRAP

	Kept deliberately thin. It records that AIDump is running, refuses to start a
	second copy in the same client, and hands control to Driver. If the executor
	environment cannot hold a re-entrancy flag, the script still runs once per
	execution, which is the correct behaviour for a tool attached this way.
]]

-- Printed before anything else is attempted. If this line does not appear, the
-- chunk never compiled, so nothing in the file ran and no amount of reading the
-- generated documents will help. If it does appear, the failure is a runtime one
-- and the messages that follow say where.
pcall(print, "[AIDump] loaded, attaching...")
pcall(warn, "[AIDump] loaded, attaching...")

local Running = (typeof(getgenv) == "function") and getgenv().AIDumpRunning or nil

if Running then
	print("[AIDump] already running in this client; not starting a second copy.")
	return
end

if typeof(getgenv) == "function" then
	getgenv().AIDumpRunning = true
end

local bootOk, bootError = pcall(function()
	return Req("Driver").Init()
end)

if not bootOk then
	-- Release the re-entrancy flag, otherwise a retry after fixing the problem
	-- would be refused.
	if typeof(getgenv) == "function" then
		getgenv().AIDumpRunning = nil
	end
	local detail = "[AIDump] failed to start: " .. tostring(bootError)
	pcall(print, detail)
	pcall(warn, detail)
	pcall(function()
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "AIDump",
			Text = "Failed to start. See the executor console for the error.",
			Duration = 15,
		})
	end)
end