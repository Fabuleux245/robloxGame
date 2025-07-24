-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:31
-- Luau version 6, Types version 3
-- Time taken: 0.002118 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").AddFriends.dependencies)
local t = dependencies.t
local any_strictInterface_result1_upvr = t.strictInterface({
	playerId = t.string;
	isFriendRequest = t.boolean;
	hasIncomingFriendRequest = t.optional(t.boolean);
	friendStatus = t.optional(t.enum(Enum.FriendStatus));
	networking = t.optional(t.callback);
	handleRequestFriendship = t.optional(t.callback);
	handleAcceptFriendRequest = t.optional(t.callback);
	handleDeclineFriendRequest = t.optional(t.callback);
	position = t.optional(t.integer);
	rank = t.optional(t.integer);
	isContact = t.optional(t.boolean);
	contextualInfoType = t.optional(t.string);
})
local getFriendRequestHandlersExtraProps_upvr = require(script.Parent.getFriendRequestHandlersExtraProps)
local Images_upvr = dependencies.UIBlox.App.ImageSet.Images
local FriendshipOriginSourceType_upvr = dependencies.NetworkingFriendsEnums.FriendshipOriginSourceType
return function(arg1) -- Line 33
	--[[ Upvalues[4]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: getFriendRequestHandlersExtraProps_upvr (readonly)
		[3]: Images_upvr (readonly)
		[4]: FriendshipOriginSourceType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	assert(any_strictInterface_result1_upvr(arg1))
	local tbl_2 = {}
	local var6_result1_upvr = getFriendRequestHandlersExtraProps_upvr(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 18. Error Block 5 start (CF ANALYSIS FAILED)
	local tbl = {
		icon = Images_upvr["icons/actions/reject"];
		isSecondary = true;
	}
	local function onActivated() -- Line 50
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var6_result1_upvr (readonly)
		]]
		arg1.handleDeclineFriendRequest(arg1.networking, arg1.playerId, var6_result1_upvr)
	end
	tbl.onActivated = onActivated
	table.insert(tbl_2, tbl)
	local tbl_5 = {
		icon = Images_upvr["icons/actions/friends/friendAdd"];
		isSecondary = false;
	}
	local function onActivated() -- Line 57
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var6_result1_upvr (readonly)
		]]
		arg1.handleAcceptFriendRequest(arg1.networking, arg1.playerId, var6_result1_upvr)
	end
	tbl_5.onActivated = onActivated
	table.insert(tbl_2, tbl_5)
	do
		return tbl_2
	end
	-- KONSTANTERROR: [24] 18. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [65] 47. Error Block 23 start (CF ANALYSIS FAILED)
	local friendStatus = arg1.friendStatus
	if not friendStatus then
		friendStatus = Enum.FriendStatus.NotFriend
	end
	if arg1.hasIncomingFriendRequest then
		local tbl_3 = {
			icon = Images_upvr["icons/actions/friends/friendAdd"];
			isSecondary = false;
		}
		local function onActivated() -- Line 72
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var6_result1_upvr (readonly)
			]]
			arg1.handleAcceptFriendRequest(arg1.networking, arg1.playerId, var6_result1_upvr)
		end
		tbl_3.onActivated = onActivated
		table.insert(tbl_2, tbl_3)
		return tbl_2
	end
	if friendStatus == Enum.FriendStatus.NotFriend then
		local var15_upvw
		if var6_result1_upvr.isRecommendation then
			var15_upvw = FriendshipOriginSourceType_upvr.FriendRecommendations.rawValue()
		end
		local tbl_4 = {
			icon = Images_upvr["icons/actions/friends/friendAdd"];
			isSecondary = false;
		}
		local function onActivated() -- Line 84
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: var15_upvw (read and write)
				[3]: var6_result1_upvr (readonly)
			]]
			arg1.handleRequestFriendship(arg1.networking, arg1.playerId, var15_upvw, var6_result1_upvr)
		end
		tbl_4.onActivated = onActivated
		table.insert(tbl_2, tbl_4)
		return tbl_2
	end
	if friendStatus == Enum.FriendStatus.FriendRequestSent then
		table.insert(tbl_2, {
			icon = Images_upvr["icons/actions/friends/friendpending"];
			isSecondary = false;
			isDisabled = true;
			onActivated = function() -- Line 98, Named "onActivated"
			end;
		})
	end
	-- KONSTANTERROR: [65] 47. Error Block 23 end (CF ANALYSIS FAILED)
end