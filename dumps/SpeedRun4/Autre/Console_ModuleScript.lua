-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:19
-- Luau version 6, Types version 3
-- Time taken: 0.000526 seconds

local Parent = script.Parent
local console = require(Parent.Parent.LuauPolyfill).console
local consoleWithStackDev = require(Parent.consoleWithStackDev)
if _G.__DEV__ then
	return setmetatable({
		warn = consoleWithStackDev.warn;
		error = consoleWithStackDev.error;
	}, {
		__index = console;
	})
end
return console