-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:23:14
-- Luau version 6, Types version 3
-- Time taken: 0.001558 seconds

local Parent_2 = script.Parent
local module_2 = require(Parent_2:WaitForChild("FFlagEnableConsoleExpControls"))
if module_2 then
	module_2 = require(Parent_2:WaitForChild("FFlagHideTopBarConsole"))
	if module_2 then
		module_2 = require(Parent_2:WaitForChild("FFlagEnableChromeShortcutBar"))
		if module_2 then
			module_2 = game:DefineFastFlag("MenuIconRemoveBinding", false)
		end
	end
end
return module_2