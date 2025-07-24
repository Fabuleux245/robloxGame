-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:48
-- Luau version 6, Types version 3
-- Time taken: 0.006237 seconds

local FriendsCommon = script:FindFirstAncestor("FriendsCommon")
local Parent = FriendsCommon.Parent
local Cryo_upvr = require(Parent.Cryo)
local ApolloClient = require(Parent.ApolloClient)
local queries_upvr = require(Parent.ApolloLocalState).queries
local ApolloPresence_upvr = require(Parent.ApolloPresence)
local PresenceType_upvr = require(Parent.GraphQLServer).types.PresenceType
local function _(arg1) -- Line 40
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: PresenceType_upvr (readonly)
	]]
	return Cryo_upvr.List.map(arg1, function(arg1_2) -- Line 41
		--[[ Upvalues[2]:
			[1]: PresenceType_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
		]]
		if arg1_2.presence and arg1_2.presence.userPresenceType == PresenceType_upvr.InGame and arg1_2.presence.universeId == "" then
			return Cryo_upvr.Dictionary.join(arg1_2, {
				presence = Cryo_upvr.Dictionary.join(arg1_2.presence, {
					userPresenceType = PresenceType_upvr.Online;
				});
			})
		end
		return arg1_2
	end)
end
local function var12_upvr(arg1, arg2) -- Line 54
	--[[ Upvalues[2]:
		[1]: PresenceType_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var13
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 39. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [56.10]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({})[nil.id] = nil.presence
	-- KONSTANTERROR: [56] 39. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 9. Error Block 25 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil.id then
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if var13 == nil.id then
		-- KONSTANTWARNING: GOTO [56] #39
	end
	-- KONSTANTERROR: [12] 9. Error Block 25 end (CF ANALYSIS FAILED)
end
local function shouldRefetchOnlineFriends_upvr(arg1, arg2, arg3) -- Line 84, Named "shouldRefetchOnlineFriends"
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
	local var26 = var24
	if not var26 then
		var26 = {}
	end
	for _, v in var26 do
		({})[v.id] = v.presence
		local var27_upvr
	end
	if 0 >= #Cryo_upvr.List.filter(arg3, function(arg1_3) -- Line 97
		--[[ Upvalues[3]:
			[1]: ApolloPresence_upvr (copied, readonly)
			[2]: PresenceType_upvr (copied, readonly)
			[3]: var27_upvr (readonly)
		]]
		local var29 = false
		if ApolloPresence_upvr.Formatters.formatNumberToPresenceType(arg1_3.userPresenceType) ~= PresenceType_upvr.Offline then
			var29 = not var27_upvr[tostring(arg1_3.userId)]
		end
		return var29
	end) then
	else
	end
	return true
end
local function bulkUpdateUserPresences_upvr(arg1, arg2) -- Line 105, Named "bulkUpdateUserPresences"
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
local useApolloClient_upvr = ApolloClient.useApolloClient
local game_DefineFastInt_result1_upvr = game:DefineFastInt("FriendsListDefaultPageSize", 12)
local ApolloFriends_upvr = require(Parent.ApolloFriends)
local React_upvr = require(Parent.React)
local useQuery_upvr = ApolloClient.useQuery
local FriendsCommonPresenceUpdateSignal_upvr = require(FriendsCommon.Signals).FriendsCommonPresenceUpdateSignal
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UseFriendsListOrderedByIdPresenceImpressionEventsEnabled", false)
local usePresenceImpressionEvents_upvr = require(script.Parent.usePresenceImpressionEvents)
return function(arg1) -- Line 120, Named "useFriendsListOrderedByPresence"
	--[[ Upvalues[14]:
		[1]: useApolloClient_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
		[3]: ApolloFriends_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useQuery_upvr (readonly)
		[6]: queries_upvr (readonly)
		[7]: Cryo_upvr (readonly)
		[8]: FriendsCommonPresenceUpdateSignal_upvr (readonly)
		[9]: bulkUpdateUserPresences_upvr (readonly)
		[10]: shouldRefetchOnlineFriends_upvr (readonly)
		[11]: var12_upvr (readonly)
		[12]: PresenceType_upvr (readonly)
		[13]: game_DefineFastFlag_result1_upvr (readonly)
		[14]: usePresenceImpressionEvents_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local pageSize_upvr = arg1.pageSize
	if not pageSize_upvr then
		pageSize_upvr = game_DefineFastInt_result1_upvr
	end
	local tbl_2_upvr = {
		userId = arg1.userId;
		sort = ApolloFriends_upvr.Enums.Sort.FriendshipScore;
	}
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local tbl_4 = {
		errorPolicy = "all";
		skip = false;
		notifyOnNetworkStatusChange = true;
		variables = Cryo_upvr.Dictionary.join(tbl_2_upvr, {
			pageLimit = pageSize_upvr;
			pageCursor = "";
		});
	}
	local useQuery_upvr_result1_upvr = useQuery_upvr(queries_upvr.allFriendsByUserId, tbl_4)
	tbl_4 = queries_upvr.onlineFriendsByUserId
	local var48_upvr = tbl_4
	local var37_result1_upvr = useQuery_upvr(var48_upvr, {
		skip = false;
		notifyOnNetworkStatusChange = true;
		variables = tbl_2_upvr;
	})
	if useQuery_upvr_result1_upvr.data then
		var48_upvr = useQuery_upvr_result1_upvr.data.allFriendsByUserId.nextCursor
	else
		var48_upvr = nil
	end
	if useQuery_upvr_result1_upvr.data then
		local _ = useQuery_upvr_result1_upvr.data.allFriendsByUserId.friends
	else
	end
	if not var37_result1_upvr.data or not var37_result1_upvr.data.onlineFriendsByUserId then
		local tbl_3_upvr = {}
	end
	local var33_result1_upvr = useApolloClient_upvr()
	React_upvr.useEffect(function() -- Line 187
		--[[ Upvalues[6]:
			[1]: FriendsCommonPresenceUpdateSignal_upvr (copied, readonly)
			[2]: bulkUpdateUserPresences_upvr (copied, readonly)
			[3]: var33_result1_upvr (readonly)
			[4]: shouldRefetchOnlineFriends_upvr (copied, readonly)
			[5]: tbl_2_upvr (readonly)
			[6]: var37_result1_upvr (readonly)
		]]
		FriendsCommonPresenceUpdateSignal_upvr.Event:Connect(function(arg1_5) -- Line 188
			--[[ Upvalues[5]:
				[1]: bulkUpdateUserPresences_upvr (copied, readonly)
				[2]: var33_result1_upvr (copied, readonly)
				[3]: shouldRefetchOnlineFriends_upvr (copied, readonly)
				[4]: tbl_2_upvr (copied, readonly)
				[5]: var37_result1_upvr (copied, readonly)
			]]
			bulkUpdateUserPresences_upvr(var33_result1_upvr, arg1_5)
			if shouldRefetchOnlineFriends_upvr(var33_result1_upvr, tbl_2_upvr, arg1_5) then
				var37_result1_upvr:refetch()
			end
		end)
		return function() -- Line 195
			--[[ Upvalues[1]:
				[1]: FriendsCommonPresenceUpdateSignal_upvr (copied, readonly)
			]]
			FriendsCommonPresenceUpdateSignal_upvr:Destroy()
		end
	end, {})
	local var66_upvr
	local any_useMemo_result1, any_useMemo_result2 = React_upvr.useMemo(function() -- Line 200
		--[[ Upvalues[5]:
			[1]: var12_upvr (copied, readonly)
			[2]: tbl_3_upvr (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: PresenceType_upvr (copied, readonly)
			[5]: var66_upvr (readonly)
		]]
		return var12_upvr(Cryo_upvr.List.map(tbl_3_upvr, function(arg1_6) -- Line 41
			--[[ Upvalues[2]:
				[1]: PresenceType_upvr (copied, readonly)
				[2]: Cryo_upvr (copied, readonly)
			]]
			if arg1_6.presence and arg1_6.presence.userPresenceType == PresenceType_upvr.InGame and arg1_6.presence.universeId == "" then
				return Cryo_upvr.Dictionary.join(arg1_6, {
					presence = Cryo_upvr.Dictionary.join(arg1_6.presence, {
						userPresenceType = PresenceType_upvr.Online;
					});
				})
			end
			return arg1_6
		end), var66_upvr)
	end, {tbl_3_upvr, var66_upvr})
	if game_DefineFastFlag_result1_upvr then
		usePresenceImpressionEvents_upvr(tbl_3_upvr)
	end
	local var73 = not var48_upvr
	if not var73 then
		if var48_upvr ~= "" then
			var73 = false
		else
			var73 = true
		end
	end
	return {
		onlineFriends = any_useMemo_result1;
		offlineFriends = any_useMemo_result2;
		fetchMoreFriends = React_upvr.useCallback(function() -- Line 159
			--[[ Upvalues[5]:
				[1]: var48_upvr (readonly)
				[2]: useQuery_upvr_result1_upvr (readonly)
				[3]: pageSize_upvr (readonly)
				[4]: any_useRef_result1_upvr (readonly)
				[5]: any_useRef_result1_upvr_2 (readonly)
			]]
			local var54 = not var48_upvr
			if not var54 then
				if var48_upvr ~= "" then
					var54 = false
				else
					var54 = true
				end
			end
			if var54 or useQuery_upvr_result1_upvr.loading then
			else
				useQuery_upvr_result1_upvr:fetchMore({
					variables = {
						pageCursor = var48_upvr;
						pageLimit = pageSize_upvr;
					};
				}):andThen(function(arg1_4) -- Line 173
					--[[ Upvalues[1]:
						[1]: any_useRef_result1_upvr (copied, readonly)
					]]
					local var58 = arg1_4
					if var58 then
						var58 = arg1_4.errors
					end
					any_useRef_result1_upvr.current = var58
				end)
				any_useRef_result1_upvr_2.current = var48_upvr
			end
		end, {var48_upvr, useQuery_upvr_result1_upvr.loading});
		refreshFriendsData = function() -- Line 180
			--[[ Upvalues[4]:
				[1]: var37_result1_upvr (readonly)
				[2]: useQuery_upvr_result1_upvr (readonly)
				[3]: any_useRef_result1_upvr_2 (readonly)
				[4]: any_useRef_result1_upvr (readonly)
			]]
			var37_result1_upvr:refetch()
			useQuery_upvr_result1_upvr:refetch()
			any_useRef_result1_upvr_2.current = nil
			any_useRef_result1_upvr.current = nil
		end;
		isEndOfList = var73;
	}
end