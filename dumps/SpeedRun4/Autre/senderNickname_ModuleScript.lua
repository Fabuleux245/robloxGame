-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:57
-- Luau version 6, Types version 3
-- Time taken: 0.001399 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Actions = Parent_2.Actions
local Rodux_upvr = require(Parent.Rodux)
local module_2_upvr = {}
local removeIdsFromRequestsStore_upvr = require(Parent_2.Reducers.Friends.utils.removeIdsFromRequestsStore)
local llama_upvr = require(Parent.llama)
local FriendRequestCreated_upvr = require(Actions.FriendRequestCreated)
local FriendRequestDeclined_upvr = require(Actions.FriendRequestDeclined)
return function(arg1) -- Line 17
	--[[ Upvalues[6]:
		[1]: Rodux_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: removeIdsFromRequestsStore_upvr (readonly)
		[4]: llama_upvr (readonly)
		[5]: FriendRequestCreated_upvr (readonly)
		[6]: FriendRequestDeclined_upvr (readonly)
	]]
	local friendsNetworking = arg1.friendsNetworking
	return Rodux_upvr.createReducer(module_2_upvr, {
		[friendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(arg1_2, arg2) -- Line 21
			--[[ Upvalues[1]:
				[1]: removeIdsFromRequestsStore_upvr (copied, readonly)
			]]
			return removeIdsFromRequestsStore_upvr(arg1_2, arg2.ids)
		end;
		[friendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(arg1_3, arg2) -- Line 26
			--[[ Upvalues[1]:
				[1]: removeIdsFromRequestsStore_upvr (copied, readonly)
			]]
			return removeIdsFromRequestsStore_upvr(arg1_3, arg2.ids)
		end;
		[friendsNetworking.GetFriendRequests.Succeeded.name] = function(arg1_4, arg2) -- Line 34
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			local module = {}
			for _, v in pairs(arg2.responseBody.data) do
				module[tostring(v.id)] = v.friendRequest.senderNickname
			end
			return llama_upvr.Dictionary.join(arg1_4, module)
		end;
		[FriendRequestCreated_upvr.name] = function(arg1_5, arg2) -- Line 49
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_5, {
				[tostring(arg2.requesteeId)] = arg2.senderNickname;
			})
		end;
		[FriendRequestDeclined_upvr.name] = function(arg1_6, arg2) -- Line 57
			--[[ Upvalues[1]:
				[1]: removeIdsFromRequestsStore_upvr (copied, readonly)
			]]
			return removeIdsFromRequestsStore_upvr(arg1_6, arg2.ids)
		end;
		[friendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function() -- Line 62
			return {}
		end;
	})
end