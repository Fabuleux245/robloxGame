-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:23
-- Luau version 6, Types version 3
-- Time taken: 0.000485 seconds

local AvatarRootNavigationAction_upvr = require(script:FindFirstAncestor("AvatarExperienceNavigation").Enums.AvatarRootNavigationAction)
return function(arg1) -- Line 6, Named "DeregisterCustomGetStateForAction"
	--[[ Upvalues[1]:
		[1]: AvatarRootNavigationAction_upvr (readonly)
	]]
	local module = {
		type = AvatarRootNavigationAction_upvr.DeregisterCustomGetStateForAction;
	}
	module.handlerId = arg1
	return module
end