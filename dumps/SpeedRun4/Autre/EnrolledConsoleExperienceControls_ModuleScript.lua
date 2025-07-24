-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:14
-- Luau version 6, Types version 3
-- Time taken: 0.001153 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Chrome_2 = script.Parent.Parent.Parent.Chrome
local FFlagUnibarMenuOpenHamburger = require(Chrome_2.Flags.FFlagUnibarMenuOpenHamburger)
if not FFlagUnibarMenuOpenHamburger then
	FFlagUnibarMenuOpenHamburger = require(Chrome_2.Flags.FFlagUnibarMenuOpenSubmenu)
	if not FFlagUnibarMenuOpenHamburger then
		FFlagUnibarMenuOpenHamburger = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager).default:showConsoleExpControlsMenuNotAvailable()
	end
end
if not require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)() or not FFlagUnibarMenuOpenHamburger then
end
return require(game:GetService("CorePackages").Workspace.Packages.SharedFlags).FFlagEnableInExperienceHandheldControls