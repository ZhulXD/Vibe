--[[
	AIDump console capture

	Run this BEFORE AIDump.lua, in the same executor, in the same execution
	method. It replaces print and warn with wrappers that forward to the real
	functions and also append to an in-memory buffer, which is flushed to
	`console-log.txt` so the output can be read in the executor's file browser
	instead of being copied out of a wrapping, truncated console panel.

	What it captures:
	  - everything printed or warned after installation, from any script,
	    as long as that script resolves print/warn through an environment this
	    has patched (which is true when both are executed the same way)
	  - the buffered text, via getgenv().AIDumpConsole.Text()
	  - the same text written to a file on a timer and on demand

	What it cannot capture:
	  - anything already printed before this ran
	  - errors raised by the engine itself, which bypass print
	  - output from a script executed in a completely separate environment

	Nothing here modifies the game. It installs no hooks, connects no signals
	and touches no instances. The only file written is console-log.txt. It also
	writes no globals of its own: the surface is a single entry on getgenv().

	Every operation that can fail on an unfamiliar executor is wrapped in pcall,
	because a capture helper that itself throws is worse than no helper.
]]

local Buffer = {}
local MaxLines = 4000
local FlushEvery = 40
local LogPath = "console-log.txt"

local writtenSinceFlush = 0
local originalPrint, originalWarn

-- Markers for our own wrappers. A weak-keyed table rather than a field on the
-- function, because rawget requires a table and print is a function.
local IsOurWrapper = setmetatable({}, { __mode = "k" })

----------------------------------------------------------------------
-- Buffering
----------------------------------------------------------------------

local function stamp()
	local ok, text = pcall(os.date, "!%H:%M:%S")
	return ok and text or "??:??:??"
end

local function record(kind, ...)
	local parts = {}
	local count = select("#", ...)
	for index = 1, count do
		local value = select(index, ...)
		local ok, text = pcall(tostring, value)
		parts[#parts + 1] = ok and text or "<tostring failed>"
	end
	local line = string.format("[%s] %s %s", stamp(), kind, table.concat(parts, " "))
	Buffer[#Buffer + 1] = line
	if #Buffer > MaxLines then
		table.remove(Buffer, 1)
	end
	writtenSinceFlush += 1
	return line
end

local function bufferText()
	return table.concat(Buffer, "\n") .. "\n"
end

----------------------------------------------------------------------
-- Filesystem
----------------------------------------------------------------------

--- Finds writefile across the environments an executor might use. Written to
--- accept failures at every step: this function runs before anything else.
local function findWritefile()
	local candidates = {}
	if typeof(getfenv) == "function" then
		for _, level in ipairs({ 1, 2, 0 }) do
			local ok, env = pcall(getfenv, level)
			if ok and type(env) == "table" then
				candidates[#candidates + 1] = env
			end
		end
	end
	if typeof(getgenv) == "function" then
		local ok, env = pcall(getgenv)
		if ok and type(env) == "table" then
			candidates[#candidates + 1] = env
		end
	end
	if type(_G) == "table" then
		candidates[#candidates + 1] = _G
	end
	for _, env in ipairs(candidates) do
		local ok, value = pcall(rawget, env, "writefile")
		if ok and type(value) == "function" then
			return value
		end
	end
	return nil
end

local WriteFile = findWritefile()

local function flushConsole()
	if not WriteFile then
		return false, "writefile unavailable; capture is memory-only"
	end
	local ok, err = pcall(WriteFile, LogPath, bufferText())
	writtenSinceFlush = 0
	if ok then
		return true
	end
	return false, err
end

local function flushIfNeeded()
	if writtenSinceFlush >= FlushEvery then
		pcall(flushConsole)
	end
end

----------------------------------------------------------------------
-- Wrappers
----------------------------------------------------------------------

local function makeWrapper(kind, original)
	local wrapper = function(...)
		local line = record(kind, ...)
		-- Forward to the real function so the executor console still shows it,
		-- but never let a failure in the original reach the caller.
		if original then
			pcall(original, ...)
		end
		flushIfNeeded()
		return line
	end
	IsOurWrapper[wrapper] = true
	return wrapper
end

----------------------------------------------------------------------
-- Installation
----------------------------------------------------------------------

local environmentsTried = 0
local environmentsPatched = 0
local installErrors = {}

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

	-- Refuse to double-wrap. A second capture run would otherwise capture the
	-- first run's wrapper and recurse until the stack is exhausted.
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
		installErrors[#installErrors + 1] = "environment rejected the assignment"
		return false
	end
	environmentsPatched += 1
	return true
end

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

do
	local ok, list = pcall(candidateEnvironments)
	if ok then
		for _, env in ipairs(list) do
			pcall(installInto, env)
		end
	else
		installErrors[#installErrors + 1] = "could not enumerate environments: " .. tostring(list)
	end
end

----------------------------------------------------------------------
-- Public surface
----------------------------------------------------------------------

local Console = {
	Path = LogPath,
	Installed = environmentsPatched > 0,
	EnvironmentsTried = environmentsTried,
	EnvironmentsPatched = environmentsPatched,
	InstallErrors = installErrors,
	HasWritefile = WriteFile ~= nil,

	--- Everything captured so far, as one string.
	Text = bufferText,

	--- Forces a write to console-log.txt.
	Flush = flushConsole,

	--- Number of lines currently buffered.
	Count = function()
		return #Buffer
	end,

	--- Writes on a timer so output survives a crash after the fact.
	StartAutoFlush = function(intervalSeconds)
		intervalSeconds = intervalSeconds or 10
		task.spawn(function()
			while true do
				task.wait(intervalSeconds)
				pcall(flushConsole)
			end
		end)
		return true
	end,
}

do
	local installed = false
	if typeof(getgenv) == "function" then
		local ok, env = pcall(getgenv)
		if ok and type(env) == "table" then
			installed = pcall(function() env.AIDumpConsole = Console end) and true or false
		end
	end
	Console.ExposedOnGetgenv = installed
end

-- Written to the log itself, so the file always explains its own contents.
record("INFO", "console capture installed; patched",
	environmentsPatched, "of", environmentsTried, "environment(s)")
if not WriteFile then
	record("WARN", "writefile unavailable; capture is memory-only and will be lost")
end
for index, message in ipairs(installErrors) do
	record("WARN", "install note " .. index .. ": " .. tostring(message))
end

pcall(print, "[AIDumpConsole] patched " .. environmentsPatched
	.. "/" .. environmentsTried .. " environment(s); log = " .. LogPath)
pcall(print, "[AIDumpConsole] read it with getgenv().AIDumpConsole.Text()")
pcall(print, "[AIDumpConsole] force a write with getgenv().AIDumpConsole.Flush()")

pcall(flushConsole)

if Console.Installed then
	pcall(Console.StartAutoFlush, 10)
end