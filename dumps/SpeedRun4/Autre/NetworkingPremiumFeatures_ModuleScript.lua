-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:15
-- Luau version 6, Types version 3
-- Time taken: 0.000437 seconds

local createGetUserPremiumMembershipStatus_upvr = require(script.networkRequests.createGetUserPremiumMembershipStatus)
return {
	config = function(arg1) -- Line 4, Named "createRequestThunks"
		--[[ Upvalues[1]:
			[1]: createGetUserPremiumMembershipStatus_upvr (readonly)
		]]
		return {
			GetUserPremiumMembershipStatus = createGetUserPremiumMembershipStatus_upvr(arg1);
		}
	end;
}