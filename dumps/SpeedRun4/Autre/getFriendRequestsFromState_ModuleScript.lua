-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:18
-- Luau version 6, Types version 3
-- Time taken: 0.001221 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local AddFriendsSelector_upvr = require(AddFriends.Redux.AddFriendsSelector)
local llama_upvr = require(AddFriends.dependencies).llama
local RoduxPresence_upvr = require(AddFriends.Redux.RoduxPresence)
local FFlagFriendRequestNicknames_upvr = require(FriendsLanding.Parent.SharedFlags).FFlagFriendRequestNicknames
local sortFriendRequestsByOrder_upvr = require(script.Parent.sortFriendRequestsByOrder)
return function(arg1) -- Line 14
	--[[ Upvalues[5]:
		[1]: AddFriendsSelector_upvr (readonly)
		[2]: llama_upvr (readonly)
		[3]: RoduxPresence_upvr (readonly)
		[4]: FFlagFriendRequestNicknames_upvr (readonly)
		[5]: sortFriendRequestsByOrder_upvr (readonly)
	]]
	local AddFriendsSelector_upvr_result1 = AddFriendsSelector_upvr(arg1, "Friends.requests.byUserId")
	if not AddFriendsSelector_upvr_result1 then
		return {}
	end
	return sortFriendRequestsByOrder_upvr(llama_upvr.List.map(llama_upvr.Dictionary.keys(AddFriendsSelector_upvr_result1), function(arg1_2) -- Line 21
		--[[ Upvalues[5]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: llama_upvr (copied, readonly)
			[4]: RoduxPresence_upvr (copied, readonly)
			[5]: FFlagFriendRequestNicknames_upvr (copied, readonly)
		]]
		local module = {}
		local var14 = "Friends.contactNamesByUserId.%s"
		module.contactName = AddFriendsSelector_upvr(arg1, var14, arg1_2)
		local module_2 = {}
		if FFlagFriendRequestNicknames_upvr then
			var14 = AddFriendsSelector_upvr(arg1, `Friends.requests.senderNickname.{arg1_2}`)
		else
			var14 = nil
		end
		module_2.senderNickname = var14
		return llama_upvr.Dictionary.join(AddFriendsSelector_upvr(arg1, "Users.byUserId.%s", arg1_2), RoduxPresence_upvr.Selectors.getUserPresenceByUserId(arg1, arg1_2), {
			sentAt = AddFriendsSelector_upvr(arg1, "Friends.requests.sentAt.%s", arg1_2);
		}, {
			mutualFriends = AddFriendsSelector_upvr(arg1, "Friends.requests.mutualFriends.%s", arg1_2);
		}, module, {
			order = AddFriendsSelector_upvr(arg1, "Friends.requests.order.requestsById.%s", arg1_2);
		}, module_2)
	end))
end