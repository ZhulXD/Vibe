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
	  - the buffered text, via getgenv().Console.Text()
	  - the same text written to a file on a timer and on demand

	What it cannot capture:
	  - anything already printed before this ran
	  - errors raised by the engine itself, which bypass print
	  - output from a script executed in a completely separate environment

	Nothing here modifies the game. It installs no hooks, connects no signals
	and touches no instances. The only file written is console-log.txt.
]]

local Buffer = {}
local MaxLines = 4000
local FlushEvery = 40
local LogPath = "console-log.txt"

local writtenSinceFlush = 0
local originalPrint, originalWarn
local installed = false

local function stamp()
	return os.date("!%H:%M:%S")
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

local function writefileFn()
	if typeof(getfenv) == "function" then
		for _, level in ipairs({ 1, 2, 0 }) do
			local ok, env = pcall(getfenv, level)
			if ok and type(env) == "table" then
				local okFn, fn = pcall(rawget, env, "writefile")
				if okFn and type(fn) == "function" then
					return fn
				end
			end
		end
	end
	if typeof(getgenv) == "function" then
		local ok, env = pcall(getgenv)
		if ok and type(env) == "table" then
			local okFn, fn = pcall(rawget, env, "writefile")
			if okFn and type(fn) == "function" then
				return fn
			end
		end
	end
	local ok, fn = pcall(rawget, _G, "writefile")
	if ok and type(fn) == "function" then
		return fn
	end
	return nil
end

local WriteFile = writefileFn()

function _G.__aidumpFlushConsole()
	if not WriteFile then
		return false, "writefile unavailable"
	end
	local ok, err = pcall(WriteFile, LogPath, bufferText())
	writtenSinceFlush = 0
	return ok, err
end

local function flushSoon()
	if writtenSinceFlush >= FlushEvery then
		pcall(_G.__aidumpFlushConsole)
	end
end

----------------------------------------------------------------------
-- Wrappers
----------------------------------------------------------------------

local function makeWrapper(kind, original)
	return function(...)
		local line = record(kind, ...)
		-- Forward to the real function so the executor console still shows it,
		-- but never let a failure in the original propagate to the caller.
		if original then
			pcall(original, ...)
		end
		flushSoon()
		return line
	end
end

----------------------------------------------------------------------
-- Install into every environment we can reach
----------------------------------------------------------------------

local function installInto(env)
	if type(env) ~= "table" then
		return false
	end
	local currentPrint, currentWarn
	local okP, p = pcall(rawget, env, "print")
	if okP then currentPrint = p end
	local okW, w = pcall(rawget, env, "warn")
	if okW then currentWarn = w end

	-- Refuse to double-wrap: a second capture script would otherwise capture
	-- its own wrapper and recurse until the stack is exhausted.
	if type(currentPrint) == "function" and rawget(currentPrint, "__aidumpConsole") then
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
	wrappedPrint.__aidumpConsole = true
	wrappedWarn.__aidumpConsole = true

	local okSetP = pcall(function()
		env.print = wrappedPrint
	end)
	local okSetW = pcall(function()
		env.warn = wrappedWarn
	end)
	return okSetP or okSetW
end

local environmentsTried = 0
local environmentsPatched = 0

if typeof(getfenv) == "function" then
	for _, level in ipairs({ 1, 2, 0 }) do
		local ok, env = pcall(getfenv, level)
		if ok and type(env) == "table" then
			environmentsTried += 1
			if installInto(env) then
				environmentsPatched += 1
			end
		end
	end
end

if typeof(getgenv) == "function" then
	local ok, env = pcall(getgenv)
	if ok and type(env) == "table" then
		environmentsTried += 1
		if installInto(env) then
			environmentsPatched += 1
		end
	end
end

environmentsTried += 1
if installInto(_G) then
	environmentsPatched += 1
end

installed = environmentsPatched > 0

----------------------------------------------------------------------
-- Public surface
----------------------------------------------------------------------

local Console = {
	Path = LogPath,
	Lines = Buffer,
	Installed = installed,
	EnvironmentsPatched = environmentsPatched,

	--- Everything captured so far, as one string.
	Text = bufferText,

	--- Forces a write to console-log.txt.
	Flush = function()
		return _G.__aidumpFlushConsole()
	end,

	--- Number of lines currently buffered.
	Count = function()
		return #Buffer
	end,

	--- Keeps the buffer bounded and writes on a timer, so a crash after a
	--- print still leaves the preceding output on disk.
	StartAutoFlush = function(intervalSeconds)
		intervalSeconds = intervalSeconds or 10
		task.spawn(function()
			while true do
				task.wait(intervalSeconds)
				pcall(_G.__aidumpFlushConsole)
			end
		end)
		return true
	end,
}

if typeof(getgenv) == "function" then
	local ok, env = pcall(getgenv)
	if ok and type(env) == "table" then
		pcall(function()
			env.AIDumpConsole = Console
		end)
	end
end
pcall(function()
	_G.AIDumpConsole = Console
end)

-- Written to the log itself, so the file always explains its own contents.
record("INFO", "console capture installed; patched",
	environmentsPatched, "of", environmentsTried, "environment(s)")
if not WriteFile then
	record("WARN", "writefile unavailable; capture is memory-only and will be lost")
end

pcall(print, "[AIDumpConsole] installed. Read console-log.txt, or call")
pcall(print, "[AIDumpConsole]   getgenv().AIDumpConsole.Text()")
pcall(print, "[AIDumpConsole]   getgenv().AIDumpConsole.Flush()")

if installed then
	Console.StartAutoFlush(10)
end