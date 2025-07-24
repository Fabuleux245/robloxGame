-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:41
-- Luau version 6, Types version 3
-- Time taken: 0.000827 seconds

local Parent = script:FindFirstAncestor("ApolloFriends").Parent
local createFriendInCache_upvr = require(script.Parent.createFriendInCache)
local Cryo_upvr = require(Parent.Cryo)
local utils_upvr = require(Parent.ApolloLocalState).typePolicies.utils
return function(arg1, arg2) -- Line 16, Named "addFriendToFriendsByUserIdCache"
	--[[ Upvalues[3]:
		[1]: createFriendInCache_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: utils_upvr (readonly)
	]]
	local tbl_2 = {
		id = arg1.cache:identify({
			__typename = "AllFriendsPage";
		});
	}
	local tbl = {}
	local createFriendInCache_upvr_result1_upvr = createFriendInCache_upvr(arg1, {
		userId = arg2.userId;
		targetUserId = arg2.targetUserId;
		hasVerifiedBadge = arg2.hasVerifiedBadge;
	})
	function tbl.allFriendsByUserId(arg1_2, arg2_2, arg3) -- Line 28
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: utils_upvr (copied, readonly)
			[4]: createFriendInCache_upvr_result1_upvr (readonly)
		]]
		if arg2_2.targetUserId == arg2.targetUserId then
			return Cryo_upvr.Dictionary.join(arg2_2, {
				friends = utils_upvr.mergeListsWithoutDuplicates(arg2_2.friends, {createFriendInCache_upvr_result1_upvr}, "__ref");
			})
		end
		return arg2_2
	end
	tbl_2.fields = tbl
	arg1.cache:modify(tbl_2)
end