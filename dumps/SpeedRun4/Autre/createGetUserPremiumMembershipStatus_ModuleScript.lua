-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:16
-- Luau version 6, Types version 3
-- Time taken: 0.000491 seconds

local PREMIUM_FEATURES_URL_upvr = require(script.Parent.Parent.PREMIUM_FEATURES_URL)
return function(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: PREMIUM_FEATURES_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetUserPremiumMembershipStatus";
	}, function(arg1_2, arg2) -- Line 13
		--[[ Upvalues[1]:
			[1]: PREMIUM_FEATURES_URL_upvr (copied, readonly)
		]]
		return arg1_2(PREMIUM_FEATURES_URL_upvr):path("v1"):path("users"):id(arg2):path("validate-membership")
	end)
end