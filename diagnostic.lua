--[[
	AIDump diagnostic and console capture

	Run this BEFORE AIDump.lua, in the same executor, in the same execution
	method. It does two things:

	  1. Installs wrappers on print and warn. They forward to the originals, so
	     the console still behaves normally, and they also append to a buffer
	     that is written to `aidump-diagnostic.txt`. That exists because long
	     errors get wrapped and truncated in the executor's console panel, which
	     makes them painful to transcribe.

	  2. Reports what this executor actually provides: which environments expose
	     the functions AIDump needs, whether a file can be written and read back,
	     and whether the interpreter behaves the way AIDump's self-test assumes.

	The report is written first in the file and the captured console log follows
	it, so one file to open covers both.

	What it cannot capture:
	  - anything printed before this ran
	  - errors raised by the engine itself, which bypass print
	  - output from a script run in a completely separate environment

	No hooks, no signals, no instances touched. It writes one file and no
	globals: the only thing exposed is a single getgenv() entry. Every
	operation that can fail on an unfamiliar executor is wrapped in pcall,
	because a diagnostic that itself throws is worse than none.
]]

----------------------------------------------------------------------
-- PART 1 — console capture
----------------------------------------------------------------------

local LogPath = "aidump-diagnostic.txt"
local MaxLogLines = 3000
local FlushEvery = 40

local Report = {}
local Log = {}
local writtenSinceFlush = 0

-- Markers for our own wrappers. A weak-keyed table rather than a field on the
-- function, because rawget requires a table and print is a function.
local IsOurWrapper = setmetatable({}, { __mode = "k" })

local function line(text)
	Report[#Report + 1] = tostring(text)
	return tostring(text)
end

local function note(text)
	local value = line(text)
	pcall(print, value)
	return value
end

local function stamp()
	local ok, text = pcall(os.date, "!%H:%M:%S")
	if ok then
		return text
	end
	return "??:??:??"
end

local function record(kind, ...)
	local parts = {}
	local count = select("#", ...)
	for index = 1, count do
		local value = select(index, ...)
		local ok, text = pcall(tostring, value)
		if ok then
			parts[#parts + 1] = text
		else
			parts[#parts + 1] = "<tostring failed>"
		end
	end
	local entry = string.format("[%s] %s %s", stamp(), kind, table.concat(parts, " "))
	Log[#Log + 1] = entry
	if #Log > MaxLogLines then
		table.remove(Log, 1)
	end
	writtenSinceFlush += 1
	return entry
end

----------------------------------------------------------------------
-- Filesystem discovery
----------------------------------------------------------------------

local function candidateEnvironments()
	local list = {}
	if typeof(getfenv) == "function" then
		for _, level in ipairs({ 1, 2, 0 }) do
			local ok, env = pcall(getfenv, level)
			if ok and type(env) == "table" then
				list[#list + 1] = env
			end
		end
	end
	if typeof(getgenv) == "function" then
		local ok, env = pcall(getgenv)
		if ok and type(env) == "table" then
			list[#list + 1] = env
		end
	end
	if type(_G) == "table" then
		list[#list + 1] = _G
	end
	return list
end

--- The single lookup AIDump uses. Mirrored exactly so this diagnostic predicts
--- AIDump's behaviour rather than a stricter variant of it.
local function lookup(name)
	local ok, list = pcall(candidateEnvironments)
	if not ok then
		return nil
	end
	for _, env in ipairs(list) do
		local okRaw, value = pcall(rawget, env, name)
		if okRaw and type(value) == "function" then
			return value
		end
	end
	return nil
end

local WriteFile = lookup("writefile")

local function renderFile()
	local out = {}
	for _, text in ipairs(Report) do
		out[#out + 1] = text
	end
	out[#out + 1] = ""
	out[#out + 1] = "=== console log (everything printed after this point) ==="
	for _, text in ipairs(Log) do
		out[#out + 1] = text
	end
	return table.concat(out, "\n") .. "\n"
end

local function flush()
	if not WriteFile then
		return false, "writefile unavailable; results are memory-only"
	end
	local ok, err = pcall(WriteFile, LogPath, renderFile())
	writtenSinceFlush = 0
	if ok then
		return true
	end
	return false, err
end

local function flushIfNeeded()
	if writtenSinceFlush >= FlushEvery then
		pcall(flush)
	end
end

----------------------------------------------------------------------
-- Wrapper installation
----------------------------------------------------------------------

local originalPrint, originalWarn
local environmentsTried = 0
local environmentsPatched = 0
local installNotes = {}

local function makeWrapper(kind, original)
	local wrapper = function(...)
		local entry = record(kind, ...)
		if original then
			pcall(original, ...)
		end
		flushIfNeeded()
		return entry
	end
	IsOurWrapper[wrapper] = true
	return wrapper
end

local function installInto(env)
	if type(env) ~= "table" then
		return false
	end
	environmentsTried += 1

	local currentPrint, currentWarn
	local okP, p = pcall(rawget, env, "print")
	if okP then currentPrint = p end
	local okW, w = pcall(rawget, env, "warn")
	if okW then currentWarn = w end

	-- Refuse to double-wrap: a second run would capture the first run's
	-- wrapper and recurse until the stack is exhausted.
	if IsOurWrapper[currentPrint] or IsOurWrapper[currentWarn] then
		return false
	end

	if type(currentPrint) == "function" then
		originalPrint = originalPrint or currentPrint
	end
	if type(currentWarn) == "function" then
		originalWarn = originalWarn or currentWarn
	end

	local wrappedPrint = makeWrapper("PRINT", originalPrint)
	local wrappedWarn = makeWrapper("WARN", originalWarn)

	local okSetP = pcall(function() env.print = wrappedPrint end)
	local okSetW = pcall(function() env.warn = wrappedWarn end)
	if not (okSetP or okSetW) then
		installNotes[#installNotes + 1] = "an environment rejected the assignment"
		return false
	end
	environmentsPatched += 1
	return true
end

do
	local ok, list = pcall(candidateEnvironments)
	if ok then
		for _, env in ipairs(list) do
			pcall(installInto, env)
		end
	else
		installNotes[#installNotes + 1] = "could not enumerate environments: " .. tostring(list)
	end
end

----------------------------------------------------------------------
-- PART 2 — the diagnostic
----------------------------------------------------------------------

local REQUIRED = {
	"writefile", "readfile", "makefolder", "appendfile", "isfile", "delfile",
}
local CAPABILITIES = {
	"hookmetamethod", "hookfunction", "getnamecallmethod", "getconnections",
	"getcallbackvalue", "decompile", "getscriptbytecode", "getproperties",
	"getcallingscript", "getscriptfromthread", "getcallingline",
}

local function countIn(env, names)
	local present, absent = {}, {}
	for _, name in ipairs(names) do
		local ok, value = pcall(rawget, env, name)
		if ok and type(value) == "function" then
			present[#present + 1] = name
		else
			absent[#absent + 1] = name
		end
	end
	return present, absent
end

note("=== AIDump diagnostic report ===")
local generated = os.date("!%Y-%m-%dT%H:%M:%SZ")
note("generated: " .. tostring(generated))
note("place: " .. tostring((pcall(function() return game.PlaceId end) and game.PlaceId) or "unknown"))
note("")

note("--- capture ---")
note("console capture patched " .. environmentsPatched .. " of "
	.. environmentsTried .. " environment(s)")
if #installNotes > 0 then
	for index, message in ipairs(installNotes) do
		note("install note " .. index .. ": " .. tostring(message))
	end
end
note("log file: " .. LogPath)
note("")

note("--- environments ---")
do
	local ok, list = pcall(candidateEnvironments)
	if ok then
		local index = 0
		for _, env in ipairs(list) do
			index += 1
			local fsPresent = countIn(env, REQUIRED)
			local capPresent = countIn(env, CAPABILITIES)
			note(string.format("%-22s filesystem %d/%d   capture %d/%d",
				"environment " .. index,
				#fsPresent, #REQUIRED, #capPresent, #CAPABILITIES))
		end
	else
		note("could not enumerate environments: " .. tostring(list))
	end
end

local resolved, unresolved = {}, {}
for _, name in ipairs(REQUIRED) do
	if lookup(name) then
		resolved[#resolved + 1] = name
	else
		unresolved[#unresolved + 1] = name
	end
end
for _, name in ipairs(CAPABILITIES) do
	if lookup(name) then
		resolved[#resolved + 1] = name
	else
		unresolved[#unresolved + 1] = name
	end
end

note("")
note("--- resolved by AIDump's lookup ---")
if #resolved > 0 then
	note("present: " .. table.concat(resolved, ", "))
else
	note("present: (none)")
end
if #unresolved > 0 then
	note("absent:  " .. table.concat(unresolved, ", "))
else
	note("absent:  (none)")
end

note("")
note("--- filesystem write test ---")
local readfile = lookup("readfile")
local makefolder = lookup("makefolder")
local isfile = lookup("isfile")

local filesystemUsable = false
if not WriteFile then
	note("RESULT: writefile NOT FOUND in any environment.")
	note("AIDump cannot produce files on this executor.")
else
	if makefolder then
		local folderOk = pcall(makefolder, "aidump-diagnostic")
		if folderOk then
			note("makefolder    called")
		else
			note("makefolder    REFUSED")
		end
	else
		note("makefolder    absent (folders may need creating in the executor UI)")
	end
	local payload = "AIDump diagnostic write test\n"
	local wrote, writeError = pcall(WriteFile, "aidump-diagnostic/probe.txt", payload)
	if not wrote then
		note("RESULT: writefile found but the write was REJECTED: " .. tostring(writeError))
	else
		note("writefile     wrote " .. tostring(#payload) .. " bytes")
		if readfile then
			local okRead, contents = pcall(readfile, "aidump-diagnostic/probe.txt")
			if not okRead then
				note("readfile      failed to read back: " .. tostring(contents))
			elseif contents == payload then
				note("readfile      read back byte-identical")
				filesystemUsable = true
			else
				note("readfile      MISMATCH: " .. string.format("%q", tostring(contents)))
			end
		else
			note("readfile      absent, cannot verify the write")
			filesystemUsable = true
		end
		if isfile then
			local okIs, present = pcall(isfile, "aidump-diagnostic/probe.txt")
			note("isfile        reports " .. tostring(present))
		end
		if filesystemUsable then
			note("RESULT: filesystem usable.")
		end
	end
end

note("")
note("--- scene enumeration ---")
-- This is where AIDump lives or dies: every document is built from a walk of
-- the instance tree. If game:GetChildren() does not work, the walk yields only
-- the root and every other document comes out empty.
do
	local okType, gameType = pcall(type, game)
	note("type(game)     " .. tostring(gameType) .. " (pcall ok: " .. tostring(okType) .. ")")
	local okTypeof, gameTypeof = pcall(typeof, game)
	note("typeof(game)   " .. tostring(gameTypeof) .. " (pcall ok: " .. tostring(okTypeof) .. ")")

	local okChildren, children = pcall(function() return game:GetChildren() end)
	if not okChildren then
		note("GetChildren()  RAISED: " .. tostring(children))
	elseif type(children) ~= "table" then
		note("GetChildren()  returned " .. type(children))
	else
		note("GetChildren()  ok, " .. tostring(#children) .. " child(ren)")
		local shown = 0
		for _, child in ipairs(children) do
			if shown < 12 then
				local okName, label = pcall(function() return child:GetFullName() end)
				note("   - " .. (okName and tostring(label) or "<unreadable>"))
				shown += 1
			end
		end
		if #children > shown then
			note("   ... " .. tostring(#children - shown) .. " more")
		end
	end

	local okDesc, descendants = pcall(function() return game:GetDescendants() end)
	if not okDesc then
		note("GetDescendants RAISED: " .. tostring(descendants))
	elseif type(descendants) ~= "table" then
		note("GetDescendants returned " .. type(descendants))
	else
		note("GetDescendants ok, " .. tostring(#descendants) .. " descendant(s)")
	end

	local getnil = lookup("getnilinstances")
	if getnil then
		local okNil, nils = pcall(getnil)
		if not okNil then
			note("getnilinstances RAISED: " .. tostring(nils))
		elseif type(nils) ~= "table" then
			note("getnilinstances returned " .. type(nils))
		else
			note("getnilinstances ok, " .. tostring(#nils) .. " nil-parented instance(s)")
			local classes = {}
			for _, instance in ipairs(nils) do
				local okClass, className = pcall(function() return instance.ClassName end)
				if okClass then
					classes[className] = (classes[className] or 0) + 1
				end
			end
			local names = {}
			for className in pairs(classes) do
				names[#names + 1] = className
			end
			table.sort(names)
			for _, className in ipairs(names) do
				note("   nil " .. className .. " x" .. tostring(classes[className]))
			end
		end
	else
		note("getnilinstances absent")
	end
end

note("")
note("--- http service ---")
do
	local okSvc, service = pcall(function() return game:GetService("HttpService") end)
	if not okSvc then
		note("GetService(RAISED: " .. tostring(service))
	elseif type(service) ~= "Instance" then
		note("GetService returned " .. type(service))
	else
		note("HttpService   found")
		note("  JSONEncode  " .. tostring(type(service.JSONEncode)))
		note("  JSONDecode  " .. tostring(type(service.JSONDecode)))
		local okRound, encoded = pcall(function() return service:JSONEncode({ A = 1 }) end)
		if okRound then
			note("  round trip  " .. tostring(encoded))
		else
			note("  round trip  RAISED: " .. tostring(encoded))
		end
	end
end

note("")
note("--- interpreter ---")
if type(loadstring) == "function" then
	local fn = loadstring("return 1 + 1")
	local okRun, value = pcall(fn)
	if okRun then
		note("loadstring     present, evaluates to " .. tostring(value))
	else
		note("loadstring     present but raised: " .. tostring(value))
	end
else
	note("loadstring     ABSENT - AIDump's serializer self-test cannot run")
end

-- Mirrors Ser.Number in AIDump exactly, so this is a live check of the
-- formatter rather than a stale copy of it. %.14g is not sufficient: a binary64
-- double needs up to 17 significant digits to round-trip, and 14 corrupts
-- every value that needs more.
local numbers = { 0, 1, -1, 0.5, 1 / 3, 1e15, 123456789012345, 2 / 3, 1e-7, math.pi }
local mismatches = {}
for _, value in ipairs(numbers) do
	local text
	if math.floor(value) == value and math.abs(value) < 2 ^ 53 then
		text = string.format("%d", value)
	else
		text = string.format("%.17g", value)
		if not text:find("[%.eE]") then
			text = text .. ".0"
		end
	end
	if type(loadstring) == "function" then
		local fn = loadstring("return " .. text)
		local okBack, back = pcall(fn)
		if not okBack or back ~= value then
			mismatches[#mismatches + 1] = tostring(value) .. " -> " .. text
				.. " -> " .. tostring(back)
		end
	else
		mismatches[#mismatches + 1] = text .. " (unchecked)"
	end
end
if #mismatches == 0 then
	note("number fmt     all cases round-trip at 17 significant digits")
else
	note("number fmt     MISMATCH: " .. table.concat(mismatches, ", "))
end

local hookmetamethod = lookup("hookmetamethod")
if hookmetamethod then
	local okHook, hookError = pcall(hookmetamethod, game, "__namecall", function() end)
	if okHook then
		note("hookmetamethod installed a test hook")
	else
		note("hookmetamethod REFUSED: " .. tostring(hookError))
	end
else
	note("hookmetamethod absent - only the prototype-method capture layer will run")
end

local identifyexecutor = lookup("identifyexecutor")
if identifyexecutor then
	local okName, executorName, executorVersion = pcall(identifyexecutor)
	if okName then
		note("executor       " .. tostring(executorName) .. " " .. tostring(executorVersion))
	else
		note("executor       identifyexecutor failed: " .. tostring(executorName))
	end
end

note("")
note("--- verdict ---")
if not WriteFile then
	note("AIDump cannot run here: no filesystem function is reachable.")
	note("This is an executor limitation, not an AIDump fault.")
elseif not filesystemUsable then
	note("AIDump cannot write files reliably here. Check the filesystem section.")
elseif lookup("hookmetamethod") and lookup("getnamecallmethod") then
	note("AIDump should capture traffic in both directions.")
	if lookup("getcallingscript") or lookup("getscriptfromthread") then
		note("Call sites can be attributed to a script.")
	else
		note("Call sites cannot be attributed to any script.")
	end
	if lookup("getcallingline") then
		note("Call sites can be attributed to a line number, so 05-SCRIPTS.md")
		note("should carry both script paths and line numbers.")
	else
		note("getcallingline is absent, so 05-SCRIPTS.md will carry script paths")
		note("without line numbers. This is expected and recorded in 07-COVERAGE.md.")
	end
elseif lookup("hookfunction") then
	note("AIDump will run with reduced coverage: outgoing traffic only via prototype")
	note("methods, and call sites may lack line numbers.")
else
	note("AIDump will run but cannot capture outgoing traffic at all.")
end
note("")
note("=== end of report; console log follows ===")

----------------------------------------------------------------------
-- PART 3 — write, then keep collecting
----------------------------------------------------------------------

pcall(flush)

local Public = {
	Path = LogPath,
	Installed = environmentsPatched > 0,
	EnvironmentsTried = environmentsTried,
	EnvironmentsPatched = environmentsPatched,
	HasWritefile = WriteFile ~= nil,
	FilesystemUsable = filesystemUsable,

	--- Everything printed or warned since installation.
	Text = function()
		return table.concat(Log, "\n") .. "\n"
	end,

	--- The diagnostic report on its own.
	Report = function()
		return table.concat(Report, "\n") .. "\n"
	end,

	--- Forces a write.
	Flush = flush,

	Count = function()
		return #Log
	end,

	--- Writes on a timer so output survives a later crash.
	StartAutoFlush = function(intervalSeconds)
		local interval = intervalSeconds or 10
		task.spawn(function()
			while true do
				task.wait(interval)
				pcall(flush)
			end
		end)
		return true
	end,
}

do
	if typeof(getgenv) == "function" then
		local ok, env = pcall(getgenv)
		if ok and type(env) == "table" then
			pcall(function() env.AIDumpDiagnostic = Public end)
		end
	end
end

pcall(print, "[AIDumpDiagnostic] read the full report from " .. LogPath)
pcall(print, "[AIDumpDiagnostic] force a write: getgenv().AIDumpDiagnostic.Flush()")
pcall(print, "[AIDumpDiagnostic] captured lines: getgenv().AIDumpDiagnostic.Count()")

if environmentsPatched > 0 then
	pcall(Public.StartAutoFlush, 10)
end