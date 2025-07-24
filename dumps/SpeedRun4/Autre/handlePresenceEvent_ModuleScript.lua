-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:47
-- Luau version 6, Types version 3
-- Time taken: 0.002126 seconds

local Parent = script:FindFirstAncestor("FriendsCommon").Parent
local ApolloPresence_upvr = require(Parent.ApolloPresence)
local function _(arg1) -- Line 32, Named "getPresenceByUserIdDict"
	local module = {}
	for _, v in arg1 do
		module[v.id] = v.presence
	end
	return module
end
local function bulkUpdateUserPresences_upvr(arg1, arg2) -- Line 41, Named "bulkUpdateUserPresences"
	--[[ Upvalues[1]:
		[1]: ApolloPresence_upvr (readonly)
	]]
	for _, v_2 in arg2 do
		ApolloPresence_upvr.Mutations.createUserPresenceCache(arg1, {
			id = v_2.userId;
			userPresenceNumber = v_2.userPresenceType;
			lastLocation = v_2.lastLocation;
			lastOnline = v_2.lastOnline;
			gameId = v_2.gameId;
			placeId = v_2.placeId;
			rootPlaceId = v_2.rootPlaceId;
			universeId = v_2.universeId;
		})
	end
end
local queries_upvr = require(Parent.ApolloLocalState).queries
local Cryo_upvr = require(Parent.Cryo)
local PresenceType_upvr = require(Parent.GraphQLServer).types.PresenceType
local function shouldRefetchOnlineFriends_upvr(arg1, arg2, arg3) -- Line 56, Named "shouldRefetchOnlineFriends"
	--[[ Upvalues[4]:
		[1]: queries_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: ApolloPresence_upvr (readonly)
		[4]: PresenceType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {
		query = queries_upvr.onlineFriendsByUserId;
	}
	tbl.variables = arg2
	local any_readQuery_result1 = arg1:readQuery(tbl)
	local var24
	if any_readQuery_result1 then
		var24 = any_readQuery_result1.onlineFriendsByUserId
	else
		var24 = {}
	end
	if not var24 then
	end
	for _, v_3 in {} do
		({})[v_3.id] = v_3.presence
		local var26_upvr
	end
	if 0 >= #Cryo_upvr.List.filter(arg3, function(arg1_2) -- Line 70
		--[[ Upvalues[3]:
			[1]: ApolloPresence_upvr (copied, readonly)
			[2]: PresenceType_upvr (copied, readonly)
			[3]: var26_upvr (readonly)
		]]
		local var28 = false
		if ApolloPresence_upvr.Formatters.formatNumberToPresenceType(arg1_2.userPresenceType) ~= PresenceType_upvr.Offline then
			var28 = not var26_upvr[tostring(arg1_2.userId)]
		end
		return var28
	end) then
	else
	end
	return true
end
local ApolloFriends_upvr = require(Parent.ApolloFriends)
return function(arg1) -- Line 78, Named "handlePresenceEvent"
	--[[ Upvalues[3]:
		[1]: ApolloFriends_upvr (readonly)
		[2]: bulkUpdateUserPresences_upvr (readonly)
		[3]: shouldRefetchOnlineFriends_upvr (readonly)
	]]
	bulkUpdateUserPresences_upvr(arg1.apolloClient, arg1.updatedPresences)
	if shouldRefetchOnlineFriends_upvr(arg1.apolloClient, {
		userId = arg1.localUserId;
		sort = ApolloFriends_upvr.Enums.Sort.FriendshipScore;
	}, arg1.updatedPresences) then
		arg1.onlineFriendsRef:refetch()
	end
end