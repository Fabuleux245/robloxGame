-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:50
-- Luau version 6, Types version 3
-- Time taken: 0.000713 seconds

local Rodux_upvr = require(script:FindFirstAncestor("FriendsRodux").Parent.Rodux)
local byUserId_upvr = require(script.byUserId)
local bySource_upvr = require(script.bySource)
local hasIncomingFriendRequest_upvr = require(script.hasIncomingFriendRequest)
return function(arg1) -- Line 8
	--[[ Upvalues[4]:
		[1]: Rodux_upvr (readonly)
		[2]: byUserId_upvr (readonly)
		[3]: bySource_upvr (readonly)
		[4]: hasIncomingFriendRequest_upvr (readonly)
	]]
	return Rodux_upvr.combineReducers({
		byUserId = byUserId_upvr(arg1);
		bySource = bySource_upvr(arg1);
		hasIncomingFriendRequest = hasIncomingFriendRequest_upvr(arg1);
	})
end