-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:49
-- Luau version 6, Types version 3
-- Time taken: 0.000562 seconds

local networkRequests = script.networkRequests
local createGetCurrentlyWearing_upvr = require(networkRequests.createGetCurrentlyWearing)
local createGetItemDetails_upvr = require(networkRequests.createGetItemDetails)
return {
	config = function(arg1) -- Line 9, Named "createRequestThunks"
		--[[ Upvalues[2]:
			[1]: createGetCurrentlyWearing_upvr (readonly)
			[2]: createGetItemDetails_upvr (readonly)
		]]
		return {
			GetCurrentlyWearing = createGetCurrentlyWearing_upvr(arg1);
			GetItemDetails = createGetItemDetails_upvr(arg1);
		}
	end;
}