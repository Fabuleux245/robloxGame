-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:02
-- Luau version 6, Types version 3
-- Time taken: 0.002393 seconds

local tbl_2_upvr = {
	countsByUserId = {};
	byUserId = {};
}
local tbl = {}
local var3 = 0
tbl.receivedCount = var3
if require(script:FindFirstAncestor("FriendsRodux").Parent.SharedFlags).FFlagAddNewFriendRequestsNetworking then
	var3 = 0
else
	var3 = nil
end
tbl.newFriendRequestsCount = var3
tbl_2_upvr.requests = tbl
tbl_2_upvr.recommendations = {}
tbl_2_upvr.followings = {}
tbl_2_upvr.friendshipStatus = {}
tbl_2_upvr.friendsRankByUserId = {}
tbl_2_upvr.contactNamesByUserId = {}
local byUserId_upvr = require(script.Parent.Friends.byUserId)
local countsByUserId_upvr = require(script.Parent.Friends.countsByUserId)
local requests_upvr = require(script.Parent.Friends.requests)
local recommendations_upvr = require(script.Parent.Friends.recommendations)
local followings_upvr = require(script.Parent.Friends.followings)
local friendshipStatus_upvr = require(script.Parent.Friends.friendshipStatus)
local friendsRankByUserId_upvr = require(script.Parent.Friends.friendsRankByUserId)
local contactNamesByUserId_upvr = require(script.Parent.Friends.contactNamesByUserId)
return function(arg1) -- Line 29
	--[[ Upvalues[9]:
		[1]: byUserId_upvr (readonly)
		[2]: countsByUserId_upvr (readonly)
		[3]: requests_upvr (readonly)
		[4]: recommendations_upvr (readonly)
		[5]: followings_upvr (readonly)
		[6]: friendshipStatus_upvr (readonly)
		[7]: friendsRankByUserId_upvr (readonly)
		[8]: contactNamesByUserId_upvr (readonly)
		[9]: tbl_2_upvr (readonly)
	]]
	local byUserId_upvr_result1_upvr = byUserId_upvr(arg1)
	local var6_result1_upvr = countsByUserId_upvr(arg1)
	local var7_result1_upvr = requests_upvr(arg1)
	local recommendations_upvr_result1_upvr = recommendations_upvr(arg1)
	local followings_upvr_result1_upvr = followings_upvr(arg1)
	local friendshipStatus_upvr_result1_upvr = friendshipStatus_upvr(arg1)
	local var11_result1_upvr = friendsRankByUserId_upvr(arg1)
	local var12_result1_upvr = contactNamesByUserId_upvr(arg1)
	return function(arg1_2, arg2) -- Line 39
		--[[ Upvalues[9]:
			[1]: tbl_2_upvr (copied, readonly)
			[2]: byUserId_upvr_result1_upvr (readonly)
			[3]: var6_result1_upvr (readonly)
			[4]: var7_result1_upvr (readonly)
			[5]: recommendations_upvr_result1_upvr (readonly)
			[6]: followings_upvr_result1_upvr (readonly)
			[7]: friendshipStatus_upvr_result1_upvr (readonly)
			[8]: var11_result1_upvr (readonly)
			[9]: var12_result1_upvr (readonly)
		]]
		local var22 = arg1_2
		if not var22 then
			var22 = tbl_2_upvr
		end
		return {
			byUserId = byUserId_upvr_result1_upvr(var22.byUserId, arg2);
			countsByUserId = var6_result1_upvr(var22.countsByUserId, arg2);
			requests = var7_result1_upvr(var22.requests, arg2);
			recommendations = recommendations_upvr_result1_upvr(var22.recommendations, arg2);
			followings = followings_upvr_result1_upvr(var22.followings, arg2);
			friendshipStatus = friendshipStatus_upvr_result1_upvr(var22.friendshipStatus, arg2);
			friendsRankByUserId = var11_result1_upvr(var22.friendsRankByUserId, arg2);
			contactNamesByUserId = var12_result1_upvr(var22.contactNamesByUserId, arg2);
		}
	end
end