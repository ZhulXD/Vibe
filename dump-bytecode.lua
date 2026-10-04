--[[
	AIDump bytecode sampler

	Dumps one game script's raw Luau bytecode to the executor filesystem as a hex
	listing, so the container layout can be worked out from actual bytes rather
	than guessed at.

	Why this exists: Delta's `decompile` panics on every script, so AIDump falls
	back to parsing bytecode itself. That parser does not yet understand the
	bytecode version this client produces, and a parser written against assumed
	layout produces confident nonsense. Real bytes are the only way to fix it.

	Usage, in this order:
	  1. run diagnostic.lua          (optional, but its console capture is useful)
	  2. run this file
	  3. find bytecode-sample.txt in the executor's file browser and commit it
	     to the repo

	Reads one script's bytecode and writes a file. Creates no hooks, connects no
	signals, modifies nothing, and reads no game state beyond instance names.
]]

print("=== AIDump bytecode sampler ===")

-- Find the smallest interesting target: a ModuleScript the game authored.
local function pickTarget()
	local roots = {
		game:GetService("ReplicatedStorage"),
		game:GetService("ServerScriptService"),
	}
	local best
	for _, root in ipairs(roots) do
		local ok, list = pcall(function()
			return root:GetDescendants()
		end)
		if ok then
			for _, instance in ipairs(list) do
				local okClass, className = pcall(function()
					return instance.ClassName
				end)
				if okClass and className == "ModuleScript" then
					-- Prefer a small script: a few hundred bytes is enough to
					-- identify a header and is far easier to read by hand.
					local okBytecode, bytes = pcall(function()
						return getscriptbytecode and getscriptbytecode(instance)
					end)
					if okBytecode and type(bytes) == "string" and #bytes > 0 then
						if not best or #bytes < best.bytes then
							local okName, fullName = pcall(function()
								return instance:GetFullName()
							end)
							best = {
								Instance = instance,
								bytes = #bytes,
								name = okName and fullName or "?",
							}
						end
					end
				end
			end
		end
	end
	return best
end

local getbytecode = rawget(_G, "getscriptbytecode")
if type(getbytecode) ~= "function" then
	print("RESULT: getscriptbytecode is not available in this environment.")
	return
end

local setidentity = rawget(_G, "setthreadidentity")
local getidentity = rawget(_G, "getthreadidentity")

--- Bytecode may need elevated identity, and the failure without it is a silent
--- nil that looks identical to an unsupported script.
local function readBytecode(instance)
	if type(setidentity) == "function" and type(getidentity) == "function" then
		local previous = getidentity()
		setidentity(8)
		local ok, bytes = pcall(getbytecode, instance)
		setidentity(previous)
		if ok then
			return bytes
		end
		return nil
	end
	local ok, bytes = pcall(getbytecode, instance)
	if ok then
		return bytes
	end
	return nil
end

local function asString(value)
	if type(value) == "string" then
		return value
	end
	if type(value) == "buffer" then
		return buffer.tostring(value)
	end
	return nil
end

local function hexDump(bytes)
	local out = {}
	local size = #bytes
	local limit = math.min(size, 2048)
	for offset = 0, limit - 1, 16 do
		local hexPart, asciiPart = {}, {}
		for column = 0, 15 do
			local index = offset + column
			if index < limit then
				local byte = string.byte(bytes, index + 1)
				hexPart[#hexPart + 1] = string.format("%02X", byte)
				asciiPart[#asciiPart + 1] = (byte >= 32 and byte < 127)
					and string.char(byte) or "."
			else
				hexPart[#hexPart + 1] = "  "
				asciiPart[#asciiPart + 1] = " "
			end
		end
		out[#out + 1] = string.format("%06X  %s  |%s|",
			offset, table.concat(hexPart, " "), table.concat(asciiPart))
	end
	if size > limit then
		out[#out + 1] = string.format("... (%d further bytes not shown)", size - limit)
	end
	return table.concat(out, "\n"), size
end

-- Report on a handful of candidates so it is obvious when none is readable.
local candidates = {}
for _, root in ipairs({
	game:GetService("ReplicatedStorage"),
	game:GetService("ServerScriptService"),
}) do
	local ok, list = pcall(function()
		return root:GetDescendants()
	end)
	if ok then
		for _, instance in ipairs(list) do
			local okClass, className = pcall(function()
				return instance.ClassName
			end)
			if okClass and (className == "ModuleScript" or className == "LocalScript") then
				candidates[#candidates + 1] = instance
			end
		end
	end
end

print("candidate scripts: " .. tostring(#candidates))

local chosen, chosenBytes, tried = nil, nil, 0
for _, instance in ipairs(candidates) do
	if #candidates > 40 and tried >= 40 then
		break
	end
	tried += 1
	local raw = readBytecode(instance)
	local text = asString(raw)
	if text and #text > 0 then
		local okName, fullName = pcall(function()
			return instance:GetFullName()
		end)
		if not chosenBytes or #text < #chosenBytes then
			chosen = okName and fullName or "?"
			chosenBytes = text
		end
	end
end

if not chosenBytes then
	print("RESULT: no readable bytecode found in " .. tostring(tried)
		.. " candidate(s).")
	print("PlayerScripts and core modules are compiled and protected; a")
	print("ReplicatedStorage ModuleScript is the target that should work.")
	return
end

local dump, size = hexDump(chosenBytes)
local header = string.format(
	"script: %s\nbytecode bytes: %d\nfirst byte (version): %d\nsecond byte: %d\n\n",
	chosen, size,
	string.byte(chosenBytes, 1) or -1,
	string.byte(chosenBytes, 2) or -1)

local writefileFn = rawget(_G, "writefile")
if type(writefileFn) ~= "function" then
	print("RESULT: writefile is unavailable; cannot save the sample.")
	return
end

local wrote, writeError = pcall(writefileFn, "bytecode-sample.txt", header .. dump)
if not wrote then
	print("RESULT: write failed: " .. tostring(writeError))
	return
end

print("sampled:  " .. chosen)
print("bytes:    " .. tostring(size))
print("version:  " .. tostring(string.byte(chosenBytes, 1)))
print("WROTE:    bytecode-sample.txt")
print("Commit that file to the repo so the layout can be read from it.")