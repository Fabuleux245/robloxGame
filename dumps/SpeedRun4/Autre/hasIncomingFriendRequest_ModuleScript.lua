-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:51
-- Luau version 6, Types version 3
-- Time taken: 0.002876 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Actions = Parent_2.Actions
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local RecommendationCreated_upvr = require(Actions.RecommendationCreated)
local llama_upvr = require(Parent.llama)
local FriendRequestDeclined_upvr = require(Actions.FriendRequestDeclined)
return function(arg1) -- Line 16
	--[[ Upvalues[5]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: RecommendationCreated_upvr (readonly)
		[4]: llama_upvr (readonly)
		[5]: FriendRequestDeclined_upvr (readonly)
	]]
	local friendsNetworking = arg1.friendsNetworking
	return Rodux_upvr.createReducer(module_upvr, {
		[RecommendationCreated_upvr.name] = function(arg1_2, arg2) -- Line 20
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			local recommendedUser = arg2.payload.recommendedUser
			local id_2 = recommendedUser.id
			if recommendedUser.hasIncomingFriendRequest then
				id_2 = true
			else
				id_2 = false
			end
			return llama_upvr.Dictionary.join(arg1_2, {
				[tostring(id_2)] = id_2;
			})
		end;
		[friendsNetworking.GetFriendRecommendationsFromUserId.Succeeded.name] = function(arg1_3, arg2) -- Line 32
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_3, llama_upvr.List.reduce(llama_upvr.List.filter(arg2.responseBody.data, function(arg1_4) -- Line 36
				local var18
				if arg1_4.contextType == "Contacts" then
					var18 = false
				else
					var18 = true
				end
				return var18
			end, {}), function(arg1_5, arg2_2) -- Line 40
				local id = arg2_2.id
				if arg2_2.friendRequest then
					id = true
				else
					id = false
				end
				arg1_5[tostring(id)] = id
				return arg1_5
			end, {}))
		end;
		[friendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(arg1_6, arg2) -- Line 49
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_6, llama_upvr.List.reduce(arg2.ids, function(arg1_7, arg2_3) -- Line 54
				arg1_7[tostring(arg2_3)] = false
				return arg1_7
			end, {}))
		end;
		[FriendRequestDeclined_upvr.name] = function(arg1_8, arg2) -- Line 62
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_8, llama_upvr.List.reduce(arg2.ids, function(arg1_9, arg2_4) -- Line 67
				arg1_9[tostring(arg2_4)] = false
				return arg1_9
			end, {}))
		end;
		[friendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function(arg1_10) -- Line 75
			--[[ Upvalues[1]:
				[1]: module_upvr (copied, readonly)
			]]
			return module_upvr
		end;
	})
end