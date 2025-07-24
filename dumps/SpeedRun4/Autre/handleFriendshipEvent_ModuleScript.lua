-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:46
-- Luau version 6, Types version 3
-- Time taken: 0.000885 seconds

local ApolloFriends_upvr = require(script:FindFirstAncestor("FriendsCommon").Parent.ApolloFriends)
return function(arg1) -- Line 13, Named "handleFriendshipEvent"
	--[[ Upvalues[1]:
		[1]: ApolloFriends_upvr (readonly)
	]]
	if arg1.friendshipUpdate.removedUserId then
		ApolloFriends_upvr.Cache.removeFriendFromCache(arg1.apolloClient, {
			targetUserId = arg1.localUserId;
			userId = arg1.friendshipUpdate.removedUserId;
		})
	elseif arg1.friendshipUpdate.addedUserId then
		arg1.onlineFriendsRef:refetch()
		ApolloFriends_upvr.Cache.addFriendToFriendsByUserIdCache(arg1.apolloClient, {
			targetUserId = arg1.localUserId;
			userId = arg1.friendshipUpdate.addedUserId;
			hasVerifiedBadge = nil;
		})
	end
end