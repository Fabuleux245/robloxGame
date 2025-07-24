-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:53
-- Luau version 6, Types version 3
-- Time taken: 0.001850 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Actions = Parent.Actions
local Rodux_upvr = require(Parent_2.Rodux)
local module_upvr = {}
local removeIdsFromRequestsStore_upvr = require(Parent.Reducers.Friends.utils.removeIdsFromRequestsStore)
local llama_upvr = require(Parent_2.llama)
local FriendRequestCreated_upvr = require(Actions.FriendRequestCreated)
local FriendRequestDeclined_upvr = require(Actions.FriendRequestDeclined)
local FriendshipCreated_upvr = require(Actions.FriendshipCreated)
return function(arg1) -- Line 19
	--[[ Upvalues[7]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: removeIdsFromRequestsStore_upvr (readonly)
		[4]: llama_upvr (readonly)
		[5]: FriendRequestCreated_upvr (readonly)
		[6]: FriendRequestDeclined_upvr (readonly)
		[7]: FriendshipCreated_upvr (readonly)
	]]
	local friendsNetworking = arg1.friendsNetworking
	return Rodux_upvr.createReducer(module_upvr, {
		[friendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(arg1_2, arg2) -- Line 23
			--[[ Upvalues[1]:
				[1]: removeIdsFromRequestsStore_upvr (copied, readonly)
			]]
			return removeIdsFromRequestsStore_upvr(arg1_2, arg2.ids)
		end;
		[friendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(arg1_3, arg2) -- Line 28
			--[[ Upvalues[1]:
				[1]: removeIdsFromRequestsStore_upvr (copied, readonly)
			]]
			return removeIdsFromRequestsStore_upvr(arg1_3, arg2.ids)
		end;
		[friendsNetworking.GetFriendRequests.Succeeded.name] = function(arg1_4, arg2) -- Line 33
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			local module = {}
			for _, v in pairs(arg2.responseBody.data) do
				module[tostring(v.id)] = true
			end
			return llama_upvr.Dictionary.join(arg1_4, module)
		end;
		[FriendRequestCreated_upvr.name] = function(arg1_5, arg2) -- Line 48
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_5, {
				[tostring(arg2.requesteeId)] = true;
			})
		end;
		[FriendRequestDeclined_upvr.name] = function(arg1_6, arg2) -- Line 55
			--[[ Upvalues[1]:
				[1]: removeIdsFromRequestsStore_upvr (copied, readonly)
			]]
			return removeIdsFromRequestsStore_upvr(arg1_6, arg2.ids)
		end;
		[FriendshipCreated_upvr.name] = function(arg1_7, arg2) -- Line 60
			--[[ Upvalues[1]:
				[1]: removeIdsFromRequestsStore_upvr (copied, readonly)
			]]
			local var29
			if type(arg2.payload.userId1) ~= "string" then
				var29 = false
			else
				var29 = true
			end
			assert(var29, "Expected userId1 to be a string")
			if type(arg2.payload.userId2) ~= "string" then
				var29 = false
			else
				var29 = true
			end
			assert(var29, "Expected userId2 to be a string")
			var29 = arg1_7
			return removeIdsFromRequestsStore_upvr(var29, {arg2.payload.userId1, arg2.payload.userId2})
		end;
		[friendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function() -- Line 66
			return {}
		end;
	})
end