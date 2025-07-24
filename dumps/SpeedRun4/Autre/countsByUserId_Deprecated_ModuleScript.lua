-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:47
-- Luau version 6, Types version 3
-- Time taken: 0.004944 seconds

local FriendsRodux = script:FindFirstAncestor("FriendsRodux")
local Actions = FriendsRodux.Actions
local tbl_upvr = {
	byUserId = {};
	countsByUserId = {};
}
local FriendshipCreated_upvr = require(Actions.FriendshipCreated)
local llama_upvr = require(FriendsRodux.Parent.llama)
local addUser_upvr = require(script.Parent.utils.addUser)
local FriendshipDestroyed_upvr = require(Actions.FriendshipDestroyed)
local removeUser_upvr = require(script.Parent.utils.removeUser)
local setFriendshipsInStore_upvr = require(script.Parent.utils.setFriendshipsInStore)
local countUserFriendsInStore_upvr = require(script.Parent.utils.countUserFriendsInStore)
local removeTargetUserFriendshipInStore_upvr = require(script.Parent.utils.removeTargetUserFriendshipInStore)
return function(arg1) -- Line 21
	--[[ Upvalues[9]:
		[1]: tbl_upvr (readonly)
		[2]: FriendshipCreated_upvr (readonly)
		[3]: llama_upvr (readonly)
		[4]: addUser_upvr (readonly)
		[5]: FriendshipDestroyed_upvr (readonly)
		[6]: removeUser_upvr (readonly)
		[7]: setFriendshipsInStore_upvr (readonly)
		[8]: countUserFriendsInStore_upvr (readonly)
		[9]: removeTargetUserFriendshipInStore_upvr (readonly)
	]]
	local friendsNetworking_upvr = arg1.friendsNetworking
	return function(arg1_2, arg2) -- Line 24
		--[[ Upvalues[10]:
			[1]: tbl_upvr (copied, readonly)
			[2]: FriendshipCreated_upvr (copied, readonly)
			[3]: llama_upvr (copied, readonly)
			[4]: addUser_upvr (copied, readonly)
			[5]: FriendshipDestroyed_upvr (copied, readonly)
			[6]: removeUser_upvr (copied, readonly)
			[7]: friendsNetworking_upvr (readonly)
			[8]: setFriendshipsInStore_upvr (copied, readonly)
			[9]: countUserFriendsInStore_upvr (copied, readonly)
			[10]: removeTargetUserFriendshipInStore_upvr (copied, readonly)
		]]
		local var19
		if not var19 then
			var19 = tbl_upvr
		end
		if arg2 then
			local name_2 = FriendshipCreated_upvr.name
			if arg2.type == name_2 then
				if type(arg2.payload.userId1) ~= "string" then
					name_2 = false
				else
					name_2 = true
				end
				assert(name_2, "Expected userId1 to be a string")
				if type(arg2.payload.userId2) ~= "string" then
					name_2 = false
				else
					name_2 = true
				end
				assert(name_2, "Expected userId2 to be a string")
				name_2 = llama_upvr.Dictionary
				name_2 = var19.countsByUserId
				return name_2.join(name_2, {
					[arg2.payload.userId1] = #addUser_upvr(var19.byUserId[arg2.payload.userId1], arg2.payload.userId2);
					[arg2.payload.userId2] = #addUser_upvr(var19.byUserId[arg2.payload.userId2], arg2.payload.userId1);
				})
			end
		end
		if arg2 then
			name_2 = FriendshipDestroyed_upvr.name
			if arg2.type == name_2 then
				if type(arg2.payload.userId1) ~= "string" then
					name_2 = false
				else
					name_2 = true
				end
				assert(name_2, "Expected userId1 to be a string")
				if type(arg2.payload.userId2) ~= "string" then
					name_2 = false
				else
					name_2 = true
				end
				assert(name_2, "Expected userId2 to be a string")
				name_2 = llama_upvr.Dictionary
				name_2 = var19.countsByUserId
				return name_2.join(name_2, {
					[arg2.payload.userId1] = #removeUser_upvr(var19.byUserId[arg2.payload.userId1], arg2.payload.userId2);
					[arg2.payload.userId2] = #removeUser_upvr(var19.byUserId[arg2.payload.userId2], arg2.payload.userId1);
				})
			end
		end
		if arg2 then
			if arg2.type == friendsNetworking_upvr.GetFriendsFromUserId.Succeeded.name then
				return countUserFriendsInStore_upvr(setFriendshipsInStore_upvr(var19.byUserId, arg2))
			end
		end
		if arg2 then
			if arg2.type == friendsNetworking_upvr.UnfriendTargetUserId.Succeeded.name then
				return countUserFriendsInStore_upvr(removeTargetUserFriendshipInStore_upvr(arg1_2.byUserId, arg2))
			end
		end
		return var19.countsByUserId
	end
end