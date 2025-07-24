-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:21:29
-- Luau version 6, Types version 3
-- Time taken: 0.000931 seconds

local Parent_2 = script.Parent
local module = require(Parent_2:WaitForChild("FFlagEnableConsoleExpControls"))
if module then
	module = require(Parent_2:WaitForChild("FFlagEnableChromeShortcutBar"))
	if module then
		module = game:DefineFastFlag("ConsoleChatOnExpControls4", false)
	end
end
return module