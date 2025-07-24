-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:10
-- Luau version 6, Types version 3
-- Time taken: 0.002991 seconds

local networkRequests = script.Parent.networkRequests
local createGetFriendsFromUserId_upvr = require(networkRequests.createGetFriendsFromUserId)
local createFindFriendsFromUserId_upvr = require(networkRequests.createFindFriendsFromUserId)
local createSearchFriendsByQuery_upvr = require(networkRequests.createSearchFriendsByQuery)
local createGetFriendRequestsCount_upvr = require(networkRequests.createGetFriendRequestsCount)
local FFlagAddNewFriendRequestsNetworking_upvr = require(script:FindFirstAncestor("FriendsNetworking").Parent.SharedFlags).FFlagAddNewFriendRequestsNetworking
local createGetNewFriendRequestsCount_upvr = require(networkRequests.createGetNewFriendRequestsCount)
local createUnfriendTargetUserId_upvr = require(networkRequests.createUnfriendTargetUserId)
local createGetFriendRequests_upvr = require(networkRequests.createGetFriendRequests)
local createAcceptFriendRequestFromUserId_upvr = require(networkRequests.createAcceptFriendRequestFromUserId)
local createDeclineFriendRequestFromUserId_upvr = require(networkRequests.createDeclineFriendRequestFromUserId)
local createDeclineAllFriendRequests_upvr = require(networkRequests.createDeclineAllFriendRequests)
local createClearNewFriendRequests_upvr = require(networkRequests.createClearNewFriendRequests)
local createGetFriendsCountFromUserId_upvr = require(networkRequests.createGetFriendsCountFromUserId)
local createGetInactiveFriends_upvr = require(networkRequests.createGetInactiveFriends)
local createRequestFriendshipFromUserId_upvr = require(networkRequests.createRequestFriendshipFromUserId)
local createRequestFriendshipFromContactId_upvr = require(networkRequests.createRequestFriendshipFromContactId)
local createGetFollowingExists_upvr = require(networkRequests.createGetFollowingExists)
local createGetUserFollowers_upvr = require(networkRequests.createGetUserFollowers)
local createGetFriendRecommendationsFromUserId_upvr = require(networkRequests.createGetFriendRecommendationsFromUserId)
local createGetFriendshipStatus_upvr = require(networkRequests.createGetFriendshipStatus)
local createGetFriendshipStatuses_upvr = require(networkRequests.createGetFriendshipStatuses)
local createGetExtendedFriendshipStatus_upvr = require(networkRequests.createGetExtendedFriendshipStatus)
local createAcceptFriendRequestWithToken_upvr = require(networkRequests.createAcceptFriendRequestWithToken)
local createGetFollowersCount_upvr = require(networkRequests.createGetFollowersCount)
local createGetFollowingsCount_upvr = require(networkRequests.createGetFollowingsCount)
local createValidateFriendRequestNickname_upvr = require(networkRequests.createValidateFriendRequestNickname)
local createRemoveTC_upvr = require(networkRequests.createRemoveTC)
local createSendTCRequest_upvr = require(networkRequests.createSendTCRequest)
return function(arg1) -- Line 42
	--[[ Upvalues[28]:
		[1]: createGetFriendsFromUserId_upvr (readonly)
		[2]: createFindFriendsFromUserId_upvr (readonly)
		[3]: createSearchFriendsByQuery_upvr (readonly)
		[4]: createGetFriendRequestsCount_upvr (readonly)
		[5]: FFlagAddNewFriendRequestsNetworking_upvr (readonly)
		[6]: createGetNewFriendRequestsCount_upvr (readonly)
		[7]: createUnfriendTargetUserId_upvr (readonly)
		[8]: createGetFriendRequests_upvr (readonly)
		[9]: createAcceptFriendRequestFromUserId_upvr (readonly)
		[10]: createDeclineFriendRequestFromUserId_upvr (readonly)
		[11]: createDeclineAllFriendRequests_upvr (readonly)
		[12]: createClearNewFriendRequests_upvr (readonly)
		[13]: createGetFriendsCountFromUserId_upvr (readonly)
		[14]: createGetInactiveFriends_upvr (readonly)
		[15]: createRequestFriendshipFromUserId_upvr (readonly)
		[16]: createRequestFriendshipFromContactId_upvr (readonly)
		[17]: createGetFollowingExists_upvr (readonly)
		[18]: createGetUserFollowers_upvr (readonly)
		[19]: createGetFriendRecommendationsFromUserId_upvr (readonly)
		[20]: createGetFriendshipStatus_upvr (readonly)
		[21]: createGetFriendshipStatuses_upvr (readonly)
		[22]: createGetExtendedFriendshipStatus_upvr (readonly)
		[23]: createAcceptFriendRequestWithToken_upvr (readonly)
		[24]: createGetFollowersCount_upvr (readonly)
		[25]: createGetFollowingsCount_upvr (readonly)
		[26]: createValidateFriendRequestNickname_upvr (readonly)
		[27]: createRemoveTC_upvr (readonly)
		[28]: createSendTCRequest_upvr (readonly)
	]]
	local module = {
		GetFriendsFromUserId = createGetFriendsFromUserId_upvr(arg1);
		FindFriendsFromUserId = createFindFriendsFromUserId_upvr(arg1);
		SearchFriendsByQuery = createSearchFriendsByQuery_upvr(arg1);
	}
	local createGetFriendRequestsCount_upvr_result1 = createGetFriendRequestsCount_upvr(arg1)
	module.GetFriendRequestsCount = createGetFriendRequestsCount_upvr_result1
	if FFlagAddNewFriendRequestsNetworking_upvr then
		createGetFriendRequestsCount_upvr_result1 = createGetNewFriendRequestsCount_upvr(arg1)
	else
		createGetFriendRequestsCount_upvr_result1 = nil
	end
	module.GetNewFriendRequestsCount = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createUnfriendTargetUserId_upvr(arg1)
	module.UnfriendTargetUserId = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createGetFriendRequests_upvr(arg1)
	module.GetFriendRequests = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createAcceptFriendRequestFromUserId_upvr(arg1)
	module.AcceptFriendRequestFromUserId = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createDeclineFriendRequestFromUserId_upvr(arg1)
	module.DeclineFriendRequestFromUserId = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createDeclineAllFriendRequests_upvr(arg1)
	module.DeclineAllFriendRequests = createGetFriendRequestsCount_upvr_result1
	if FFlagAddNewFriendRequestsNetworking_upvr then
		createGetFriendRequestsCount_upvr_result1 = createClearNewFriendRequests_upvr(arg1)
	else
		createGetFriendRequestsCount_upvr_result1 = nil
	end
	module.ClearNewFriendRequests = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createGetFriendsCountFromUserId_upvr(arg1)
	module.GetFriendsCountFromUserId = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createGetInactiveFriends_upvr(arg1)
	module.GetInactiveFriends = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createRequestFriendshipFromUserId_upvr(arg1)
	module.RequestFriendshipFromUserId = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createRequestFriendshipFromContactId_upvr(arg1)
	module.RequestFriendshipFromContactId = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createGetFollowingExists_upvr(arg1)
	module.GetFollowingExists = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createGetUserFollowers_upvr(arg1)
	module.GetUserFollowers = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createGetFriendRecommendationsFromUserId_upvr(arg1)
	module.GetFriendRecommendationsFromUserId = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createGetFriendshipStatus_upvr(arg1)
	module.GetFriendshipStatus = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createGetFriendshipStatuses_upvr(arg1)
	module.GetFriendshipStatuses = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createGetExtendedFriendshipStatus_upvr(arg1)
	module.GetExtendedFriendshipStatus = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createAcceptFriendRequestWithToken_upvr(arg1)
	module.AcceptFriendRequestWithToken = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createGetFollowersCount_upvr(arg1)
	module.GetFollowersCount = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createGetFollowingsCount_upvr(arg1)
	module.GetFollowingsCount = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createValidateFriendRequestNickname_upvr(arg1)
	module.ValidateFriendRequestNickname = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createRemoveTC_upvr(arg1)
	module.RemoveTC = createGetFriendRequestsCount_upvr_result1
	createGetFriendRequestsCount_upvr_result1 = createSendTCRequest_upvr(arg1)
	module.SendTCRequest = createGetFriendRequestsCount_upvr_result1
	return module
end