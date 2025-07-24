-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:22
-- Luau version 6, Types version 3
-- Time taken: 0.000469 seconds

local AvatarMainStackNavigationAction_upvr = require(script:FindFirstAncestor("AvatarExperienceNavigation").Enums.AvatarMainStackNavigationAction)
return function(arg1) -- Line 5, Named "ClearScreens"
	--[[ Upvalues[1]:
		[1]: AvatarMainStackNavigationAction_upvr (readonly)
	]]
	local module = {
		type = AvatarMainStackNavigationAction_upvr.ClearScreens;
	}
	module.routeNames = arg1
	return module
end