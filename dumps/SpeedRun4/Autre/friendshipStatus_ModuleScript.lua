-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:49
-- Luau version 6, Types version 3
-- Time taken: 0.008821 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Actions = Parent.Actions
local function _(arg1) -- Line 16, Named "mapFriendshipStatusToEnum"
	if arg1 == "NotFriends" then
		return Enum.FriendStatus.NotFriend
	end
	if arg1 == "Friends" then
		return Enum.FriendStatus.Friend
	end
	if arg1 == "RequestSent" then
		return Enum.FriendStatus.FriendRequestSent
	end
	if arg1 == "RequestReceived" then
		return Enum.FriendStatus.FriendRequestReceived
	end
	return Enum.FriendStatus.Unknown
end
local function difference_upvr(arg1, arg2) -- Line 30, Named "difference"
	local tbl = {}
	for _, v in pairs(arg1) do
		tbl[v] = true
	end
	for _, v_2 in pairs(arg2) do
		tbl[v_2] = nil
	end
	for _, v_3 in pairs(arg1) do
		if tbl[v_3] then
			({})[0 + 1] = v_3
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local Rodux_upvr = require(Parent_2.Rodux)
local module_upvr = {}
local llama_upvr = require(Parent_2.llama)
local FriendshipDestroyed_upvr = require(Actions.FriendshipDestroyed)
local FriendshipCreated_upvr = require(Actions.FriendshipCreated)
local FriendRequestCreated_upvr = require(Actions.FriendRequestCreated)
local FriendRequestDeclined_upvr = require(Actions.FriendRequestDeclined)
return function(arg1) -- Line 52
	--[[ Upvalues[8]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: llama_upvr (readonly)
		[4]: difference_upvr (readonly)
		[5]: FriendshipDestroyed_upvr (readonly)
		[6]: FriendshipCreated_upvr (readonly)
		[7]: FriendRequestCreated_upvr (readonly)
		[8]: FriendRequestDeclined_upvr (readonly)
	]]
	local friendsNetworking = arg1.friendsNetworking
	return Rodux_upvr.createReducer(module_upvr, {
		[friendsNetworking.GetFriendshipStatus.Succeeded.name] = function(arg1_2, arg2) -- Line 55
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local pairs_result1_2, pairs_result2_8, pairs_result3_8 = pairs(arg2.responseBody.data)
			local var40
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [33] 21. Error Block 21 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [33.10]
			if nil == "RequestReceived" then
				var40 = Enum.FriendStatus.FriendRequestReceived
			else
				var40 = Enum.FriendStatus.Unknown
			end
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [41.8]
			;({})[nil] = var40
			-- KONSTANTERROR: [33] 21. Error Block 21 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [10] 7. Error Block 20 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil == "NotFriends" then
				-- KONSTANTWARNING: GOTO [41] #26
			end
			-- KONSTANTERROR: [10] 7. Error Block 20 end (CF ANALYSIS FAILED)
		end;
		[friendsNetworking.GetFriendshipStatuses.Succeeded.name] = function(arg1_3, arg2) -- Line 66
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local pairs_result1_5, pairs_result2_5, pairs_result3_5 = pairs(arg2.responseBody.data)
			local var45
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [28] 18. Error Block 21 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [28.10]
			if nil == "RequestSent" then
				var45 = Enum.FriendStatus.FriendRequestSent
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil == "RequestReceived" then
					var45 = Enum.FriendStatus.FriendRequestReceived
				else
					var45 = Enum.FriendStatus.Unknown
				end
			end
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [41.8]
			;({})[nil] = var45
			-- KONSTANTERROR: [28] 18. Error Block 21 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [10] 7. Error Block 20 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil == "NotFriends" then
				-- KONSTANTWARNING: GOTO [41] #26
			end
			-- KONSTANTERROR: [10] 7. Error Block 20 end (CF ANALYSIS FAILED)
		end;
		[friendsNetworking.GetExtendedFriendshipStatus.Succeeded.name] = function(arg1_4, arg2) -- Line 77
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
			local status = arg2.responseBody.status
			if status == "NotFriends" then
				-- KONSTANTWARNING: GOTO [42] #27
			end
			-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [24] 16. Error Block 17 start (CF ANALYSIS FAILED)
			if status == "Friends" then
				-- KONSTANTWARNING: GOTO [42] #27
			end
			-- KONSTANTERROR: [24] 16. Error Block 17 end (CF ANALYSIS FAILED)
		end;
		[friendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(arg1_5, arg2) -- Line 82
			--[[ Upvalues[2]:
				[1]: llama_upvr (copied, readonly)
				[2]: difference_upvr (copied, readonly)
			]]
			local any_keys_result1 = llama_upvr.Dictionary.keys(llama_upvr.Dictionary.filter(arg1_5, function(arg1_6) -- Line 86
				local var58
				if arg1_6 ~= Enum.FriendStatus.Friend then
					var58 = false
				else
					var58 = true
				end
				return var58
			end))
			local any_map_result1 = llama_upvr.List.map(llama_upvr.Dictionary.values(arg2.responseBody.data), function(arg1_7) -- Line 89
				return tostring(arg1_7.id)
			end)
			local var65
			for _, v_4 in pairs(difference_upvr(any_map_result1, any_keys_result1)) do
				var65 = llama_upvr.Dictionary.join(var65, {
					[v_4] = Enum.FriendStatus.Friend;
				})
			end
			for _, v_5 in pairs(difference_upvr(any_keys_result1, any_map_result1)) do
				var65 = llama_upvr.Dictionary.join(var65, {
					[v_5] = Enum.FriendStatus.Unknown;
				})
			end
			return var65
		end;
		[friendsNetworking.UnfriendTargetUserId.Succeeded.name] = function(arg1_8, arg2) -- Line 108
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_8, {
				[tostring(arg2.namedIds.users)] = Enum.FriendStatus.NotFriend;
			})
		end;
		[friendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(arg1_9, arg2) -- Line 118
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_9, {
				[tostring(arg2.ids[1])] = Enum.FriendStatus.Friend;
			})
		end;
		[friendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(arg1_10, arg2) -- Line 128
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			local module = {}
			for _, v_6 in pairs(arg2.ids) do
				module[tostring(v_6)] = Enum.FriendStatus.NotFriend
			end
			return llama_upvr.Dictionary.join(arg1_10, module)
		end;
		[friendsNetworking.GetFriendRequests.Succeeded.name] = function(arg1_11, arg2) -- Line 140
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			local module_2 = {}
			for _, v_7 in pairs(arg2.responseBody.data) do
				module_2[tostring(v_7.id)] = Enum.FriendStatus.FriendRequestReceived
			end
			return llama_upvr.Dictionary.join(arg1_11, module_2)
		end;
		[friendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function(arg1_12) -- Line 152
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			for i_8, v_8 in pairs(arg1_12) do
				if v_8 == Enum.FriendStatus.FriendRequestReceived then
					({})[tostring(i_8)] = Enum.FriendStatus.NotFriend
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return llama_upvr.Dictionary.join(arg1_12, {})
		end;
		[friendsNetworking.RequestFriendshipFromUserId.Succeeded.name] = function(arg1_13, arg2) -- Line 164
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_13, {
				[tostring(arg2.namedIds.users)] = Enum.FriendStatus.FriendRequestSent;
			})
		end;
		[friendsNetworking.RequestFriendshipFromContactId.Succeeded.name] = function(arg1_14, arg2) -- Line 174
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_14, {
				[tostring(arg2.namedIds.contacts)] = Enum.FriendStatus.FriendRequestSent;
			})
		end;
		[FriendshipDestroyed_upvr.name] = function(arg1_15, arg2) -- Line 184
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_15, {
				[tostring(arg2.payload.userId1)] = Enum.FriendStatus.NotFriend;
			})
		end;
		[FriendshipCreated_upvr.name] = function(arg1_16, arg2) -- Line 194
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_16, {
				[tostring(arg2.payload.userId1)] = Enum.FriendStatus.Friend;
			})
		end;
		[FriendRequestCreated_upvr.name] = function(arg1_17, arg2) -- Line 204
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_17, {
				[tostring(arg2.requesteeId)] = Enum.FriendStatus.FriendRequestReceived;
			})
		end;
		[FriendRequestDeclined_upvr.name] = function(arg1_18, arg2) -- Line 214
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			local module_3 = {}
			for _, v_9 in pairs(arg2.ids) do
				module_3[tostring(v_9)] = Enum.FriendStatus.NotFriend
			end
			return llama_upvr.Dictionary.join(arg1_18, module_3)
		end;
	})
end