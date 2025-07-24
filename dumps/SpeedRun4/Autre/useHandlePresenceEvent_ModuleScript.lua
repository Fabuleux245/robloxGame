-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:49
-- Luau version 6, Types version 3
-- Time taken: 0.001302 seconds

local FriendsCommon = script:FindFirstAncestor("FriendsCommon")
local Parent = FriendsCommon.Parent
local ApolloClient = require(Parent.ApolloClient)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useApolloClient_upvr = ApolloClient.useApolloClient
local useQuery_upvr = ApolloClient.useQuery
local queries_upvr = require(Parent.ApolloLocalState).queries
local userIdExists_upvr = require(Parent.SocialCommon).Utils.userIdExists
local ApolloFriends_upvr = require(Parent.ApolloFriends)
local React_upvr = require(Parent.React)
local handlePresenceEvent_upvr = require(FriendsCommon.EventHandlers.handlePresenceEvent)
return function() -- Line 22, Named "useHandlePresenceEvent"
	--[[ Upvalues[8]:
		[1]: useLocalUserId_upvr (readonly)
		[2]: useApolloClient_upvr (readonly)
		[3]: useQuery_upvr (readonly)
		[4]: queries_upvr (readonly)
		[5]: userIdExists_upvr (readonly)
		[6]: ApolloFriends_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: handlePresenceEvent_upvr (readonly)
	]]
	local useLocalUserId_upvr_result1_upvr = useLocalUserId_upvr()
	local var5_result1_upvr = useApolloClient_upvr()
	local var6_result1_upvr = useQuery_upvr(queries_upvr.onlineFriendsByUserId, {
		skip = not userIdExists_upvr(useLocalUserId_upvr_result1_upvr);
		notifyOnNetworkStatusChange = true;
		variables = {
			userId = useLocalUserId_upvr_result1_upvr;
			sort = ApolloFriends_upvr.Enums.Sort.FriendshipScore;
		};
	})
	return React_upvr.useCallback(function(arg1) -- Line 36
		--[[ Upvalues[4]:
			[1]: handlePresenceEvent_upvr (copied, readonly)
			[2]: useLocalUserId_upvr_result1_upvr (readonly)
			[3]: var5_result1_upvr (readonly)
			[4]: var6_result1_upvr (readonly)
		]]
		local tbl = {
			localUserId = useLocalUserId_upvr_result1_upvr;
			apolloClient = var5_result1_upvr;
			onlineFriendsRef = var6_result1_upvr;
		}
		tbl.updatedPresences = arg1
		handlePresenceEvent_upvr(tbl)
	end, {useLocalUserId_upvr_result1_upvr, var5_result1_upvr, var6_result1_upvr})
end