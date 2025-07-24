-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:18
-- Luau version 6, Types version 3
-- Time taken: 0.000556 seconds

local var2
local function INLINED() -- Internal function, doesn't exist in bytecode
	var2 = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager).default:showConsoleExpControlsMenuOpenHamburger()
	return var2
end
if var2 and (not require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)() or not INLINED()) then
	var2 = require(game:GetService("CorePackages").Workspace.Packages.SharedFlags).FFlagUnibarMenuOpenHamburgerGamepadIXP
	if not var2 then
		var2 = game:DefineFastFlag("UnibarMenuOpenHamburger", false)
	end
end
return var2