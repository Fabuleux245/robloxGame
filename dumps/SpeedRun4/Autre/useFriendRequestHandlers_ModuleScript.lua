-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:32
-- Luau version 6, Types version 3
-- Time taken: 0.002011 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local React_upvr = require(FriendsLanding.Parent.React)
local getFriendRequestHandlersExtraProps_upvr = require(script.Parent.getFriendRequestHandlersExtraProps)
local FriendshipOriginSourceType_upvr = require(FriendsLanding.AddFriends.dependencies).NetworkingFriendsEnums.FriendshipOriginSourceType
return function(arg1) -- Line 10, Named "useFriendRequestHandlers"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: getFriendRequestHandlersExtraProps_upvr (readonly)
		[3]: FriendshipOriginSourceType_upvr (readonly)
	]]
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 11
		--[[ Upvalues[2]:
			[1]: getFriendRequestHandlersExtraProps_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return getFriendRequestHandlersExtraProps_upvr(arg1)
	end, {arg1.position, arg1.playerId, arg1.isFriendRequest, arg1.rank})
	local var12_upvr
	if any_useMemo_result1_upvr and any_useMemo_result1_upvr.isRecommendation then
		var12_upvr = FriendshipOriginSourceType_upvr.FriendRecommendations.rawValue()
	else
		var12_upvr = nil
	end
	return {
		acceptFriendRequest = React_upvr.useCallback(function() -- Line 15
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: any_useMemo_result1_upvr (readonly)
			]]
			return arg1.handleAcceptFriendRequest(arg1.networking, arg1.playerId, any_useMemo_result1_upvr)
		end, {arg1.networking, any_useMemo_result1_upvr, arg1.handleAcceptFriendRequest, arg1.playerId});
		declineFriendRequest = React_upvr.useCallback(function() -- Line 19
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: any_useMemo_result1_upvr (readonly)
			]]
			return arg1.handleDeclineFriendRequest(arg1.networking, arg1.playerId, any_useMemo_result1_upvr)
		end, {arg1.networking, any_useMemo_result1_upvr, arg1.handleDeclineFriendRequest, arg1.playerId});
		requestFriendship = React_upvr.useCallback(function() -- Line 26
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: var12_upvr (readonly)
				[3]: any_useMemo_result1_upvr (readonly)
			]]
			return arg1.handleRequestFriendship(arg1.networking, arg1.playerId, var12_upvr, any_useMemo_result1_upvr)
		end, {arg1.networking, any_useMemo_result1_upvr, arg1.handleRequestFriendship, arg1.playerId});
	}
end