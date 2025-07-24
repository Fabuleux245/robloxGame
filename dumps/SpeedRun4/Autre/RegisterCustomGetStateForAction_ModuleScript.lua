-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:24
-- Luau version 6, Types version 3
-- Time taken: 0.000559 seconds

local AvatarRootNavigationAction_upvr = require(script:FindFirstAncestor("AvatarExperienceNavigation").Enums.AvatarRootNavigationAction)
return function(arg1, arg2) -- Line 14, Named "RegisterCustomGetStateForAction"
	--[[ Upvalues[1]:
		[1]: AvatarRootNavigationAction_upvr (readonly)
	]]
	local module = {
		type = AvatarRootNavigationAction_upvr.RegisterCustomGetStateForAction;
	}
	module.handlerId = arg1
	module.handler = arg2
	return module
end