-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:54
-- Luau version 6, Types version 3
-- Time taken: 0.002451 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Actions = Parent_2.Actions
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local removeIdsFromRequestsStore_upvr = require(Parent_2.Reducers.Friends.utils.removeIdsFromRequestsStore)
local llama_upvr = require(Parent.llama)
local FriendRequestCreated_upvr = require(Actions.FriendRequestCreated)
local FriendRequestDeclined_upvr = require(Actions.FriendRequestDeclined)
return function(arg1) -- Line 18
	--[[ Upvalues[6]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: removeIdsFromRequestsStore_upvr (readonly)
		[4]: llama_upvr (readonly)
		[5]: FriendRequestCreated_upvr (readonly)
		[6]: FriendRequestDeclined_upvr (readonly)
	]]
	local friendsNetworking = arg1.friendsNetworking
	return Rodux_upvr.createReducer(module_upvr, {
		[friendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(arg1_2, arg2) -- Line 22
			--[[ Upvalues[1]:
				[1]: removeIdsFromRequestsStore_upvr (copied, readonly)
			]]
			return removeIdsFromRequestsStore_upvr(arg1_2, arg2.ids)
		end;
		[friendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(arg1_3, arg2) -- Line 27
			--[[ Upvalues[1]:
				[1]: removeIdsFromRequestsStore_upvr (copied, readonly)
			]]
			return removeIdsFromRequestsStore_upvr(arg1_3, arg2.ids)
		end;
		[friendsNetworking.GetFriendRequests.Succeeded.name] = function(arg1_4, arg2) -- Line 32
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			for _, v in pairs(arg2.responseBody.data) do
				if v.mutualFriendsList then
					({})[tostring(v.id)] = llama_upvr.List.map(v.mutualFriendsList, function(arg1_5) -- Line 42
						return tostring(arg1_5)
					end)
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return llama_upvr.Dictionary.join(arg1_4, {})
		end;
		[FriendRequestCreated_upvr.name] = function(arg1_6, arg2) -- Line 51
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_6, {
				[tostring(arg2.requesteeId)] = llama_upvr.List.map(arg2.mutualFriends, function(arg1_7) -- Line 56
					return tostring(arg1_7)
				end);
			})
		end;
		[FriendRequestDeclined_upvr.name] = function(arg1_8, arg2) -- Line 61
			--[[ Upvalues[1]:
				[1]: removeIdsFromRequestsStore_upvr (copied, readonly)
			]]
			return removeIdsFromRequestsStore_upvr(arg1_8, arg2.ids)
		end;
		[friendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function() -- Line 66
			return {}
		end;
	})
end