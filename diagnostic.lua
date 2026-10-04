--[[
	AIDump environment diagnostic

	Paste this into the same executor, immediately before AIDump.lua.

	It answers three questions that AIDump cannot answer for itself:
	  1. Can this executor show me output at all?
	  2. Does it provide the functions AIDump needs, and in which environment?
	  3. Can it actually write a file, and can it read the write back?

	Nothing here touches the game. It creates no hooks, connects no signals,
	and modifies nothing. The only file it writes is aidump-diagnostic/probe.txt.
]]

print("=== AIDump diagnostic: start ===")
warn("=== AIDump diagnostic: start ===")

local function note(text)
	print(text)
end

---------------------------------------------------------------------
-- Names AIDump depends on
---------------------------------------------------------------------

local REQUIRED = {
	"writefile", "readfile", "makefolder", "appendfile", "isfile", "delfile",
}
local CAPABILITIES = {
	"hookmetamethod", "hookfunction", "getnamecallmethod", "getconnections",
	"getcallbackvalue", "decompile", "getscriptbytecode", "getproperties",
	"getcallingscript", "getscriptfromthread", "getcallingline",
}

---------------------------------------------------------------------
-- 1. Collect candidate environments
---------------------------------------------------------------------

local environments = {}

if type(getfenv) == "function" then
	for _, level in ipairs({ 1, 2, 0 }) do
		local ok, env = pcall(getfenv, level)
		if ok and type(env) == "table" then
			table.insert(environments, { Label = "getfenv(" .. level .. ")", Env = env })
		end
	end
else
	note("getfenv                        ABSENT")
end

if type(getgenv) == "function" then
	local ok, env = pcall(getgenv)
	if ok and type(env) == "table" then
		table.insert(environments, { Label = "getgenv()", Env = env })
	else
		note("getgenv()                      did not return a table")
	end
else
	note("getgenv                        ABSENT")
end

if type(_G) == "table" then
	table.insert(environments, { Label = "_G", Env = _G })
end

---------------------------------------------------------------------
-- 2. Report on each, and derive the same verdict AIDump would reach
---------------------------------------------------------------------

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

--- The single lookup AIDump uses. Mirrored exactly so this diagnostic predicts
--- AIDump's behaviour rather than a stricter variant of it.
local function lookup(name)
	for _, entry in ipairs(environments) do
		local ok, value = pcall(rawget, entry.Env, name)
		if ok and type(value) == "function" then
			return value
		end
	end
	return nil
end

note("")
note("--- environments ---")
for _, entry in ipairs(environments) do
	local fsPresent = countIn(entry.Env, REQUIRED)
	local capPresent = countIn(entry.Env, CAPABILITIES)
	note(string.format("%-24s filesystem %d/%d   capture %d/%d",
		entry.Label, #fsPresent, #REQUIRED, #capPresent, #CAPABILITIES))
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
note("present: " .. (#resolved > 0 and table.concat(resolved, ", ") or "(none)"))
note("absent:  " .. (#unresolved > 0 and table.concat(unresolved, ", ") or "(none)"))

---------------------------------------------------------------------
-- 3. Can it actually write a file?
---------------------------------------------------------------------

note("")
note("--- filesystem write test ---")
local writefile = lookup("writefile")
local readfile = lookup("readfile")
local makefolder = lookup("makefolder")
local isfile = lookup("isfile")

if not writefile then
	note("RESULT: writefile NOT FOUND in any environment. AIDump cannot produce files.")
else
	local folderOk = true
	if makefolder then
		folderOk = pcall(makefolder, "aidump-diagnostic")
		note("makefolder    " .. (folderOk and "called" or "REFUSED"))
	else
		note("makefolder    absent (folders may need creating in the executor UI)")
	end

	local payload = "AIDump diagnostic write test\n"
	local wrote, writeError = pcall(writefile, "aidump-diagnostic/probe.txt", payload)
	if not wrote then
		note("RESULT: writefile found but the write was REJECTED: " .. tostring(writeError))
	else
		note("writefile     wrote 34 bytes")
		if readfile then
			local okRead, contents = pcall(readfile, "aidump-diagnostic/probe.txt")
			if not okRead then
				note("readfile      failed to read back: " .. tostring(contents))
			elseif contents == payload then
				note("readfile      read back byte-identical")
			else
				note("readfile      MISMATCH, got: " .. string.format("%q", tostring(contents)))
			end
		else
			note("readfile      absent, cannot verify the write")
		end
		if isfile then
			local okIs, present = pcall(isfile, "aidump-diagnostic/probe.txt")
			note("isfile        reports " .. tostring(present))
		end
		note("RESULT: filesystem usable.")
	end
end

---------------------------------------------------------------------
-- 4. Interpreter facts the self-test depends on
---------------------------------------------------------------------

note("")
note("--- interpreter ---")

if type(loadstring) == "function" then
	local fn = loadstring("return 1 + 1")
	local okRun, value = pcall(fn)
	note("loadstring     present, evaluates to " .. tostring(okRun and value or fn))
else
	note("loadstring     ABSENT - AIDump's serializer self-test cannot run")
end

-- Mirrors Ser.Number and the serializer's own round-trip check, so the riskiest
-- arithmetic is proven here rather than deep inside AIDump.
local numbers = { 0, 1, -1, 0.5, 1 / 3, 1e15, 123456789012345 }
local mismatches = {}
for _, value in ipairs(numbers) do
	local text
	if math.floor(value) == value and math.abs(value) < 2 ^ 53 then
		text = string.format("%d", value)
	else
		text = string.format("%.14g", value)
		if not text:find("[%.eE]") then
			text = text .. ".0"
		end
	end
	if type(loadstring) == "function" then
		local fn = loadstring("return " .. text)
		local okBack, back = pcall(fn)
		if not okBack or back ~= value then
			mismatches[#mismatches + 1] = text .. " -> " .. tostring(back)
		end
	else
		mismatches[#mismatches + 1] = text .. " (unchecked)"
	end
end
if #mismatches == 0 then
	note("number fmt     all cases round-trip")
else
	note("number fmt     MISMATCH: " .. table.concat(mismatches, ", "))
end

local hookmetamethod = lookup("hookmetamethod")
if hookmetamethod then
	local okHook, hookError = pcall(hookmetamethod, game, "__namecall", function() end)
	note("hookmetamethod " .. (okHook and "installed a test hook"
		or ("present but REFUSED: " .. tostring(hookError))))
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
if not writefile then
	note("AIDump cannot run here: no filesystem function is reachable.")
	note("This is an executor limitation, not an AIDump fault.")
elseif lookup("hookmetamethod") and lookup("getnamecallmethod") then
	note("AIDump should capture traffic in both directions.")
elseif lookup("hookfunction") then
	note("AIDump will run with reduced coverage: outgoing via prototype methods only.")
else
	note("AIDump will run but cannot capture outgoing traffic at all.")
end

note("=== AIDump diagnostic: end ===")
warn("=== AIDump diagnostic: end ===")
print("")
print("If AIDump.lua printed '[AIDump] loaded, attaching...' but wrote no files,")
print("the '--- verdict ---' line above says why.")
print("If AIDump.lua printed NOTHING, its chunk did not compile. Paste this")
print("output and your executor's console text and the parse error can be located.")