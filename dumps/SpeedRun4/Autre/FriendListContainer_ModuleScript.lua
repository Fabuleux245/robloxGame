-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:13
-- Luau version 6, Types version 3
-- Time taken: 0.026736 seconds

local CorePackages = game:GetService("CorePackages")
local ContactList = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local LocalPlayer = game:GetService("Players").LocalPlayer
local var6_upvr
local function INLINED() -- Internal function, doesn't exist in bytecode
	var6_upvr = LocalPlayer.UserId
	return var6_upvr
end
if not LocalPlayer or not INLINED() then
	var6_upvr = 0
end
local useApolloClient_upvr = require(CorePackages.Packages.ApolloClient).useApolloClient
local useAnalytics_upvr = require(ContactList.Analytics.useAnalytics)
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = dependencies.Hooks.useLocalization
local React_upvr = require(CorePackages.Packages.React)
local RetrievalStatus_upvr = require(CorePackages.Workspace.Packages.Http).Enum.RetrievalStatus
local GetFFlagSuggestedCalleeBugFixEnabled_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSuggestedCalleeBugFixEnabled
local GetSuggestedCallees_upvr = dependencies.NetworkingCall.GetSuggestedCallees
local useSelector_upvr = dependencies.Hooks.useSelector
local HttpService_upvr = game:GetService("HttpService")
local EventNamesEnum_upvr = require(ContactList.Analytics.EventNamesEnum)
local FindFriendsFromUserId_upvr = dependencies.NetworkingFriends.FindFriendsFromUserId
local SearchFriendsByQuery_upvr = dependencies.NetworkingFriends.SearchFriendsByQuery
local Promise_upvr = require(CorePackages.Packages.Promise)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local UserProfiles_upvr = require(CorePackages.Workspace.Packages.UserProfiles)
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local NoItemView_upvr = require(ContactList.Components.ContactListCommon.NoItemView)
local Constants_upvr = require(ContactList.Components.ContactListCommon.Constants)
local SectionHeader_upvr = require(ContactList.Components.FriendList.SectionHeader)
local BlockingUtility_upvr = require(CorePackages.Workspace.Packages.BlockingUtility)
local FriendListItem_upvr = require(ContactList.Components.FriendList.FriendListItem)
local LoadingSpinner_upvr = UIBlox.App.Loading.LoadingSpinner
local Roact_upvr = require(CorePackages.Packages.Roact)
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local UserInputService_upvr = game:GetService("UserInputService")
return function(arg1) -- Line 60, Named "FriendListContainer"
	--[[ Upvalues[28]:
		[1]: useApolloClient_upvr (readonly)
		[2]: useAnalytics_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: RetrievalStatus_upvr (readonly)
		[8]: GetFFlagSuggestedCalleeBugFixEnabled_upvr (readonly)
		[9]: GetSuggestedCallees_upvr (readonly)
		[10]: useSelector_upvr (readonly)
		[11]: var6_upvr (readonly)
		[12]: HttpService_upvr (readonly)
		[13]: EventNamesEnum_upvr (readonly)
		[14]: FindFriendsFromUserId_upvr (readonly)
		[15]: SearchFriendsByQuery_upvr (readonly)
		[16]: Promise_upvr (readonly)
		[17]: Cryo_upvr (readonly)
		[18]: UserProfiles_upvr (readonly)
		[19]: dependencyArray_upvr (readonly)
		[20]: NoItemView_upvr (readonly)
		[21]: Constants_upvr (readonly)
		[22]: SectionHeader_upvr (readonly)
		[23]: BlockingUtility_upvr (readonly)
		[24]: FriendListItem_upvr (readonly)
		[25]: LoadingSpinner_upvr (readonly)
		[26]: Roact_upvr (readonly)
		[27]: ExternalEventConnection_upvr (readonly)
		[28]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var9_result1_upvr = useDispatch_upvr()
	local Theme = useStyle_upvr().Theme
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		genericErrorLabel = "Feature.Call.Error.Description.Generic";
		noFriendsLabel = "Feature.Call.Description.NoFriendsFound";
		addFriendsLabel = "Feature.Call.Prompt.AddFriends";
		suggestedFriendsTitle = "Feature.Call.Label.Suggested";
		suggestedFriendsDescription = "Feature.Call.Description.SuggestedFriends";
		friendsTitle = "Feature.Call.Label.Friends";
		friendsDescription = "Feature.Call.Description.Friends";
	})
	local any_useRef_result1_upvr_4 = React_upvr.useRef(true)
	local any_useRef_result1_upvr_6 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_5 = React_upvr.useRef(0)
	local any_useState_result1_2_upvr, any_useState_result2_upvr_6 = React_upvr.useState(RetrievalStatus_upvr.Fetching)
	local any_useState_result1_3, any_useState_result2_upvr_7 = React_upvr.useState(false)
	local any_useState_result1_upvr_2, any_useState_result2_upvr_5 = React_upvr.useState({})
	local any_useState_result1_5_upvr, any_useState_result2_upvr = React_upvr.useState(nil)
	local var215_upvw
	if GetFFlagSuggestedCalleeBugFixEnabled_upvr() then
		var215_upvw = React_upvr.useMemo(function() -- Line 91
			--[[ Upvalues[2]:
				[1]: var9_result1_upvr (readonly)
				[2]: GetSuggestedCallees_upvr (copied, readonly)
			]]
			return var9_result1_upvr(GetSuggestedCallees_upvr.API()):catch(function() -- Line 92
			end)
		end, {})
	else
		var215_upvw = React_upvr.useRef(var9_result1_upvr(GetSuggestedCallees_upvr.API()):catch(function() -- Line 95
		end))
	end
	local any_useMemo_result1_upvr_3 = React_upvr.useMemo(function() -- Line 98
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return string.gsub(arg1.searchText, "%s+", "")
	end, {arg1.searchText})
	local any_useRef_result1_upvr = React_upvr.useRef("")
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local var7_result1_upvr_2 = useApolloClient_upvr()
	if GetFFlagSuggestedCalleeBugFixEnabled_upvr() then
	else
	end
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_14, arg2) -- Line 109
		--[[ Upvalues[20]:
			[1]: var6_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr_4 (readonly)
			[3]: any_useState_result2_upvr_6 (readonly)
			[4]: RetrievalStatus_upvr (copied, readonly)
			[5]: any_useRef_result1_upvr (readonly)
			[6]: HttpService_upvr (copied, readonly)
			[7]: useAnalytics_upvr_result1_upvr (readonly)
			[8]: EventNamesEnum_upvr (copied, readonly)
			[9]: any_useMemo_result1_upvr_3 (readonly)
			[10]: var9_result1_upvr (readonly)
			[11]: FindFriendsFromUserId_upvr (copied, readonly)
			[12]: SearchFriendsByQuery_upvr (copied, readonly)
			[13]: Promise_upvr (copied, readonly)
			[14]: GetFFlagSuggestedCalleeBugFixEnabled_upvr (copied, readonly)
			[15]: var215_upvw (read and write)
			[16]: Cryo_upvr (copied, readonly)
			[17]: var7_result1_upvr_2 (readonly)
			[18]: UserProfiles_upvr (copied, readonly)
			[19]: any_useState_result2_upvr_5 (readonly)
			[20]: any_useState_result2_upvr (readonly)
		]]
		if var6_upvr then
			any_useRef_result1_upvr_4.current = true
			local var227 = any_useState_result2_upvr_6
			var227(RetrievalStatus_upvr.Fetching)
			if any_useRef_result1_upvr.current == "" then
				var227 = 0
			else
				var227 = 0.5
			end
			local any_GenerateGUID_result1_upvr_2 = HttpService_upvr:GenerateGUID(false)
			any_useRef_result1_upvr.current = any_GenerateGUID_result1_upvr_2
			local function var229() -- Line 118
				--[[ Upvalues[21]:
					[1]: any_useRef_result1_upvr (copied, readonly)
					[2]: any_GenerateGUID_result1_upvr_2 (readonly)
					[3]: useAnalytics_upvr_result1_upvr (copied, readonly)
					[4]: EventNamesEnum_upvr (copied, readonly)
					[5]: any_useMemo_result1_upvr_3 (copied, readonly)
					[6]: var9_result1_upvr (copied, readonly)
					[7]: FindFriendsFromUserId_upvr (copied, readonly)
					[8]: var6_upvr (copied, readonly)
					[9]: arg2 (readonly)
					[10]: SearchFriendsByQuery_upvr (copied, readonly)
					[11]: Promise_upvr (copied, readonly)
					[12]: GetFFlagSuggestedCalleeBugFixEnabled_upvr (copied, readonly)
					[13]: var215_upvw (copied, read and write)
					[14]: arg1_14 (readonly)
					[15]: Cryo_upvr (copied, readonly)
					[16]: var7_result1_upvr_2 (copied, readonly)
					[17]: UserProfiles_upvr (copied, readonly)
					[18]: any_useState_result2_upvr_5 (copied, readonly)
					[19]: any_useState_result2_upvr (copied, readonly)
					[20]: any_useState_result2_upvr_6 (copied, readonly)
					[21]: RetrievalStatus_upvr (copied, readonly)
				]]
				local var282
				if any_useRef_result1_upvr.current ~= any_GenerateGUID_result1_upvr_2 then
				else
					local PhoneBookSearchAttempted = EventNamesEnum_upvr.PhoneBookSearchAttempted
					local tbl_22 = {}
					var282 = os.time()
					tbl_22.eventTimestampMs = var282 * 1000
					tbl_22.searchQueryString = any_useMemo_result1_upvr_3
					useAnalytics_upvr_result1_upvr.fireEvent(PhoneBookSearchAttempted, tbl_22)
					if any_useMemo_result1_upvr_3 == "" then
						PhoneBookSearchAttempted = FindFriendsFromUserId_upvr.API
						local tbl_12 = {}
						var282 = "CombinedName"
						tbl_12.userSort = var282
						var282 = arg2
						tbl_12.cursor = var282
						var282 = 20
						tbl_12.limit = var282
						PhoneBookSearchAttempted = PhoneBookSearchAttempted(var6_upvr, tbl_12)
					else
						PhoneBookSearchAttempted = SearchFriendsByQuery_upvr.API
						local tbl_27 = {}
						var282 = "CombinedName"
						tbl_27.userSort = var282
						var282 = arg2
						tbl_27.cursor = var282
						var282 = 20
						tbl_27.limit = var282
						var282 = any_useMemo_result1_upvr_3
						tbl_27.query = var282
						PhoneBookSearchAttempted = PhoneBookSearchAttempted(var6_upvr, tbl_27)
					end
					local tbl_8 = {}
					if GetFFlagSuggestedCalleeBugFixEnabled_upvr() then
						var282 = var215_upvw
					else
						var282 = var215_upvw.current
					end
					tbl_8[1] = var9_result1_upvr(PhoneBookSearchAttempted)
					tbl_8[2] = var282
					function var282() -- Line 202
						--[[ Upvalues[4]:
							[1]: any_useRef_result1_upvr (copied, readonly)
							[2]: any_GenerateGUID_result1_upvr_2 (copied, readonly)
							[3]: any_useState_result2_upvr_6 (copied, readonly)
							[4]: RetrievalStatus_upvr (copied, readonly)
						]]
						if any_useRef_result1_upvr.current ~= any_GenerateGUID_result1_upvr_2 then
						else
							any_useState_result2_upvr_6(RetrievalStatus_upvr.Failed)
						end
					end
					Promise_upvr.all(tbl_8):andThen(function(arg1_15) -- Line 146
						--[[ Upvalues[13]:
							[1]: any_useRef_result1_upvr (copied, readonly)
							[2]: any_GenerateGUID_result1_upvr_2 (copied, readonly)
							[3]: useAnalytics_upvr_result1_upvr (copied, readonly)
							[4]: EventNamesEnum_upvr (copied, readonly)
							[5]: any_useMemo_result1_upvr_3 (copied, readonly)
							[6]: arg1_14 (copied, readonly)
							[7]: Cryo_upvr (copied, readonly)
							[8]: var7_result1_upvr_2 (copied, readonly)
							[9]: UserProfiles_upvr (copied, readonly)
							[10]: any_useState_result2_upvr_5 (copied, readonly)
							[11]: any_useState_result2_upvr (copied, readonly)
							[12]: any_useState_result2_upvr_6 (copied, readonly)
							[13]: RetrievalStatus_upvr (copied, readonly)
						]]
						-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
						if any_useRef_result1_upvr.current ~= any_GenerateGUID_result1_upvr_2 then
						else
							local _1_upvr = arg1_15[1]
							local _2 = arg1_15[2]
							useAnalytics_upvr_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookSearchFinished, {
								eventTimestampMs = os.time() * 1000;
								searchQueryString = any_useMemo_result1_upvr_3;
								searchResultCount = #_1_upvr.responseBody.PageItems;
							})
							for _, v_6 in ipairs(arg1_14) do
								table.insert({}, v_6)
								local var268
							end
							for _, v_7 in ipairs(_1_upvr.responseBody.PageItems) do
								table.insert(var268, v_7)
								local var272_upvr
							end
							if any_useMemo_result1_upvr_3 == "" and _2 ~= nil then
								v_7 = _2.responseBody
								for _, v_8 in ipairs(v_7.suggestedCallees) do
									table.insert(Cryo_upvr.List.map(var272_upvr, function(arg1_16) -- Line 168
										return tostring(arg1_16.id)
									end), tostring(v_8.userId))
									local var277
								end
							end
							var7_result1_upvr_2:query({
								query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds;
								variables = {
									userIds = var277;
								};
							}):andThen(function() -- Line 187
								--[[ Upvalues[8]:
									[1]: any_useRef_result1_upvr (copied, readonly)
									[2]: any_GenerateGUID_result1_upvr_2 (copied, readonly)
									[3]: any_useState_result2_upvr_5 (copied, readonly)
									[4]: var272_upvr (readonly)
									[5]: any_useState_result2_upvr (copied, readonly)
									[6]: _1_upvr (readonly)
									[7]: any_useState_result2_upvr_6 (copied, readonly)
									[8]: RetrievalStatus_upvr (copied, readonly)
								]]
								if any_useRef_result1_upvr.current ~= any_GenerateGUID_result1_upvr_2 then
								else
									any_useState_result2_upvr_5(var272_upvr)
									any_useState_result2_upvr(_1_upvr.responseBody.NextCursor)
									any_useState_result2_upvr_6(RetrievalStatus_upvr.Done)
								end
							end):catch(function(arg1_17) -- Line 196
								--[[ Upvalues[4]:
									[1]: any_useRef_result1_upvr (copied, readonly)
									[2]: any_GenerateGUID_result1_upvr_2 (copied, readonly)
									[3]: any_useState_result2_upvr_6 (copied, readonly)
									[4]: RetrievalStatus_upvr (copied, readonly)
								]]
								if any_useRef_result1_upvr.current ~= any_GenerateGUID_result1_upvr_2 then
								else
									any_useState_result2_upvr_6(RetrievalStatus_upvr.Failed)
								end
							end)
						end
					end, var282)
				end
			end
			if var227 == 0 then
				var229()
				return
			end
			delay(var227, var229)
		end
	end, dependencyArray_upvr(any_useMemo_result1_upvr_3, useSelector_upvr(function(arg1_13) -- Line 102
		return arg1_13.LastRemovedFriend.lastRemovedFriendId
	end), nil))
	React_upvr.useEffect(function() -- Line 224
		--[[ Upvalues[3]:
			[1]: any_useCallback_result1_upvr_2 (readonly)
			[2]: any_useState_result2_upvr_5 (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		any_useCallback_result1_upvr_2({}, "")
		return function() -- Line 227
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_5 (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_5({})
			any_useState_result2_upvr(nil)
		end
	end, dependencyArray_upvr(any_useCallback_result1_upvr_2))
	React_upvr.useEffect(function() -- Line 234
		--[[ Upvalues[3]:
			[1]: any_useState_result1_2_upvr (readonly)
			[2]: RetrievalStatus_upvr (copied, readonly)
			[3]: any_useRef_result1_upvr_4 (readonly)
		]]
		if any_useState_result1_2_upvr ~= RetrievalStatus_upvr.Fetching then
			any_useRef_result1_upvr_4.current = false
		end
	end, {any_useState_result1_2_upvr})
	if not useSelector_upvr(React_upvr.useCallback(function(arg1_18) -- Line 240
		return arg1_18.Call.suggestedCallees.suggestedCallees
	end, {}), function(arg1_19, arg2) -- Line 246
		if #arg1_19 ~= #arg2 then
			return false
		end
		for i, v in ipairs(arg1_19) do
			if v.userId ~= arg2[i].userId then
				return false
			end
		end
		return true
	end) then
		local tbl_24_upvr = {}
	end
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 263
		--[[ Upvalues[9]:
			[1]: any_useState_result1_2_upvr (readonly)
			[2]: RetrievalStatus_upvr (copied, readonly)
			[3]: useLocalization_upvr_result1_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: React_upvr (copied, readonly)
			[6]: NoItemView_upvr (copied, readonly)
			[7]: any_useCallback_result1_upvr_2 (readonly)
			[8]: any_useState_result1_upvr_2 (readonly)
			[9]: any_useState_result1_5_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
		if any_useState_result1_2_upvr == RetrievalStatus_upvr.Failed then
			-- KONSTANTWARNING: GOTO [23] #17
		end
		-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 9. Error Block 26 start (CF ANALYSIS FAILED)
		if arg1.searchText ~= "" then
			-- KONSTANTWARNING: GOTO [23] #17
		end
		-- KONSTANTERROR: [11] 9. Error Block 26 end (CF ANALYSIS FAILED)
	end, dependencyArray_upvr(arg1.searchText, any_useState_result1_upvr_2, any_useCallback_result1_upvr_2, useLocalization_upvr_result1_upvr.addFriendsLabel, useLocalization_upvr_result1_upvr.genericErrorLabel, useLocalization_upvr_result1_upvr.noFriendsLabel, any_useState_result1_5_upvr, any_useState_result1_2_upvr))
	local any_useUserProfilesFetch_result1_upvr_2 = UserProfiles_upvr.Hooks.useUserProfilesFetch({
		userIds = React_upvr.useMemo(function() -- Line 317
			--[[ Upvalues[3]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: any_useState_result1_upvr_2 (readonly)
				[3]: tbl_24_upvr (readonly)
			]]
			return Cryo_upvr.List.map(Cryo_upvr.List.join(any_useState_result1_upvr_2, tbl_24_upvr), function(arg1_22) -- Line 319
				local id = arg1_22.id
				if not id then
					id = arg1_22.userId
				end
				return tostring(id)
			end)
		end);
		query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds;
	})
	local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 334
		--[[ Upvalues[17]:
			[1]: React_upvr (copied, readonly)
			[2]: tbl_24_upvr (readonly)
			[3]: any_useMemo_result1_upvr_3 (readonly)
			[4]: SectionHeader_upvr (copied, readonly)
			[5]: useLocalization_upvr_result1_upvr (readonly)
			[6]: BlockingUtility_upvr (copied, readonly)
			[7]: any_useUserProfilesFetch_result1_upvr_2 (readonly)
			[8]: UserProfiles_upvr (copied, readonly)
			[9]: FriendListItem_upvr (copied, readonly)
			[10]: arg1 (readonly)
			[11]: any_useState_result1_upvr_2 (readonly)
			[12]: any_useState_result1_5_upvr (readonly)
			[13]: any_useState_result1_2_upvr (readonly)
			[14]: RetrievalStatus_upvr (copied, readonly)
			[15]: any_useMemo_result1_upvr (readonly)
			[16]: Constants_upvr (copied, readonly)
			[17]: LoadingSpinner_upvr (copied, readonly)
		]]
		local module = {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}
		if #tbl_24_upvr ~= 0 and any_useMemo_result1_upvr_3 == "" then
			module[#module + 1] = React_upvr.createElement(SectionHeader_upvr, {
				name = useLocalization_upvr_result1_upvr.suggestedFriendsTitle;
				description = useLocalization_upvr_result1_upvr.suggestedFriendsDescription;
				layoutOrder = #module + 1;
			})
			local tbl_20 = {}
			for _, v_2 in ipairs(tbl_24_upvr) do
				if not BlockingUtility_upvr:IsPlayerBlockedByUserId(v_2.userId) then
					table.insert(tbl_20, v_2)
				end
			end
			for i_3, v_3 in ipairs(tbl_20) do
				local var333 = ""
				local var334 = ""
				if any_useUserProfilesFetch_result1_upvr_2.data then
					var333 = UserProfiles_upvr.Selectors.getCombinedNameFromId(any_useUserProfilesFetch_result1_upvr_2.data, v_3.userId)
					var334 = UserProfiles_upvr.Selectors.getUsernameFromId(any_useUserProfilesFetch_result1_upvr_2.data, v_3.userId)
				end
				local tbl_15 = {
					userId = v_3.userId;
					combinedName = var333;
					userName = var334;
					userPresenceType = v_3.userPresenceType;
					lastLocation = v_3.lastLocation;
					dismissCallback = arg1.dismissCallback;
				}
				local var336 = #module + 1
				tbl_15.layoutOrder = var336
				if i_3 == #tbl_20 then
					var336 = false
				else
					var336 = true
				end
				tbl_15.showDivider = var336
				tbl_15.itemListIndex = i_3
				tbl_15.isSuggestedUser = true
				module[#module + 1] = React_upvr.createElement(FriendListItem_upvr, tbl_15)
			end
		end
		if #any_useState_result1_upvr_2 ~= 0 then
			module[#module + 1] = React_upvr.createElement(SectionHeader_upvr, {
				name = useLocalization_upvr_result1_upvr.friendsTitle;
				description = useLocalization_upvr_result1_upvr.friendsDescription;
				layoutOrder = #module + 1;
			})
		end
		local tbl_18 = {}
		for _, v_4 in ipairs(any_useState_result1_upvr_2) do
			if not BlockingUtility_upvr:IsPlayerBlockedByUserId(v_4.id) then
				table.insert(tbl_18, v_4)
			end
		end
		for i_5, v_5 in ipairs(tbl_18) do
			local var345 = ""
			local var346 = ""
			if any_useUserProfilesFetch_result1_upvr_2.data then
				var345 = UserProfiles_upvr.Selectors.getCombinedNameFromId(any_useUserProfilesFetch_result1_upvr_2.data, v_5.id)
				var346 = UserProfiles_upvr.Selectors.getUsernameFromId(any_useUserProfilesFetch_result1_upvr_2.data, v_5.id)
			end
			local tbl_16 = {
				userId = v_5.id;
				combinedName = var345;
				userName = var346;
				dismissCallback = arg1.dismissCallback;
			}
			local var348 = #module + 1
			tbl_16.layoutOrder = var348
			if i_5 == #tbl_18 then
				var348 = false
			else
				var348 = true
			end
			tbl_16.showDivider = var348
			tbl_16.searchQueryString = any_useMemo_result1_upvr_3
			tbl_16.itemListIndex = i_5
			tbl_16.isSuggestedUser = false
			module[#module + 1] = React_upvr.createElement(FriendListItem_upvr, tbl_16)
		end
		if any_useState_result1_5_upvr ~= nil then
			local var349 = #module + 1
			i_5 = RetrievalStatus_upvr
			if any_useState_result1_2_upvr == i_5.Failed then
				module[var349] = any_useMemo_result1_upvr
				return module
			end
			i_5 = {}
			v_5 = UDim2.new(1, 0, 0, Constants_upvr.ITEM_HEIGHT)
			i_5.Size = v_5
			v_5 = 1
			i_5.BackgroundTransparency = v_5
			i_5.LayoutOrder = var349
			v_5 = {}
			v_5.LoadingSpinner = React_upvr.createElement(LoadingSpinner_upvr, {
				size = UDim2.fromOffset(48, 48);
				position = UDim2.fromScale(0.5, 0.5);
				anchorPoint = Vector2.new(0.5, 0.5);
			})
			module[var349] = React_upvr.createElement("Frame", i_5, v_5)
		end
		return module
	end, dependencyArray_upvr(any_useState_result1_upvr_2, any_useState_result1_5_upvr, any_useMemo_result1_upvr, any_useState_result1_2_upvr, any_useUserProfilesFetch_result1_upvr_2.data, tbl_24_upvr, any_useMemo_result1_upvr_3, useLocalization_upvr_result1_upvr.friendsDescription, useLocalization_upvr_result1_upvr.friendsTitle, useLocalization_upvr_result1_upvr.suggestedFriendsDescription, useLocalization_upvr_result1_upvr.suggestedFriendsTitle))
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function(arg1_23) -- Line 457
		--[[ Upvalues[6]:
			[1]: any_useRef_result1_upvr_4 (readonly)
			[2]: any_useState_result1_2_upvr (readonly)
			[3]: RetrievalStatus_upvr (copied, readonly)
			[4]: any_useState_result1_5_upvr (readonly)
			[5]: any_useCallback_result1_upvr_2 (readonly)
			[6]: any_useState_result1_upvr_2 (readonly)
		]]
		if not any_useRef_result1_upvr_4.current and any_useState_result1_2_upvr ~= RetrievalStatus_upvr.Failed and any_useState_result1_5_upvr ~= nil and arg1_23.AbsoluteCanvasSize.Y - arg1_23.AbsoluteSize.Y - 50 <= arg1_23.CanvasPosition.Y then
			any_useCallback_result1_upvr_2(any_useState_result1_upvr_2, any_useState_result1_5_upvr)
		end
	end, dependencyArray_upvr(any_useState_result1_upvr_2, any_useCallback_result1_upvr_2, any_useState_result1_5_upvr, any_useState_result1_2_upvr))
	React_upvr.useEffect(function() -- Line 468
		--[[ Upvalues[4]:
			[1]: any_useMemo_result1_upvr_2 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: any_useRef_result1_upvr_6 (readonly)
			[4]: any_useCallback_result1_upvr_4 (readonly)
		]]
		if any_useRef_result1_upvr_6.current and (#any_useMemo_result1_upvr_2 - 1) * Constants_upvr.ITEM_HEIGHT <= any_useRef_result1_upvr_6.current.AbsoluteSize.Y then
			any_useCallback_result1_upvr_4(any_useRef_result1_upvr_6.current)
		end
	end, dependencyArray_upvr(any_useMemo_result1_upvr_2, any_useCallback_result1_upvr_4))
	local var355
	if #any_useState_result1_upvr_2 == 0 and any_useState_result1_2_upvr == RetrievalStatus_upvr.Fetching then
		var355 = React_upvr.createElement
		var355 = var355("Frame", {
			Size = UDim2.new(1, 0, 0, Constants_upvr.ITEM_HEIGHT);
			BackgroundTransparency = 1;
		}, {
			LoadingSpinner = React_upvr.createElement(LoadingSpinner_upvr, {
				size = UDim2.fromOffset(48, 48);
				position = UDim2.fromScale(0.5, 0.5);
				anchorPoint = Vector2.new(0.5, 0.5);
			});
		})
	elseif #any_useState_result1_upvr_2 == 0 then
		var355 = any_useMemo_result1_upvr
	else
		var355 = Roact_upvr.createFragment
		local tbl_14 = {}
		local tbl_13 = {
			Size = UDim2.fromScale(1, 1);
			AutomaticCanvasSize = Enum.AutomaticSize.Y;
			BackgroundColor3 = Theme.BackgroundDefault.Color;
			BackgroundTransparency = Theme.BackgroundDefault.Transparency;
			BorderSizePixel = 0;
			CanvasSize = UDim2.new();
			ElasticBehavior = Enum.ElasticBehavior.Never;
			ScrollingDirection = Enum.ScrollingDirection.Y;
		}
		local var361 = not any_useState_result1_3
		if var361 then
			var361 = arg1.scrollingEnabled
		end
		tbl_13.ScrollingEnabled = var361
		tbl_13.ScrollBarImageColor3 = Theme.UIEmphasis.Color
		tbl_13.ScrollBarImageTransparency = Theme.UIEmphasis.Transparency
		tbl_13.ScrollBarThickness = 4
		tbl_13.ref = any_useRef_result1_upvr_6
		tbl_13[React_upvr.Change.CanvasPosition] = any_useCallback_result1_upvr_4
		tbl_14.FriendsScrollingFrame = React_upvr.createElement("ScrollingFrame", tbl_13, any_useMemo_result1_upvr_2)
		local isSmallScreen = arg1.isSmallScreen
		if isSmallScreen then
			isSmallScreen = arg1.scrollingEnabled
			if isSmallScreen then
				isSmallScreen = React_upvr.createElement
				isSmallScreen = isSmallScreen(ExternalEventConnection_upvr, {
					event = UserInputService_upvr.TouchStarted;
					callback = React_upvr.useCallback(function(arg1_20) -- Line 299
						--[[ Upvalues[1]:
							[1]: any_useRef_result1_upvr_5 (readonly)
						]]
						any_useRef_result1_upvr_5.current = arg1_20.Position.Y
					end, {});
				})
			end
		end
		tbl_14.TouchStartedUserInputConnection = isSmallScreen
		isSmallScreen = arg1.isSmallScreen
		local var364 = isSmallScreen
		if var364 then
			var364 = arg1.scrollingEnabled
			if var364 then
				var364 = React_upvr.createElement
				var364 = var364(ExternalEventConnection_upvr, {
					event = UserInputService_upvr.TouchMoved;
					callback = React_upvr.useCallback(function(arg1_21) -- Line 303
						--[[ Upvalues[4]:
							[1]: any_useRef_result1_upvr_5 (readonly)
							[2]: Constants_upvr (copied, readonly)
							[3]: any_useRef_result1_upvr_6 (readonly)
							[4]: any_useState_result2_upvr_7 (readonly)
						]]
						if Constants_upvr.TOUCH_SLOP < arg1_21.Position.Y - any_useRef_result1_upvr_5.current and any_useRef_result1_upvr_6.current and any_useRef_result1_upvr_6.current.CanvasPosition.Y == 0 then
							any_useState_result2_upvr_7(true)
						end
					end, {});
				})
			end
		end
		tbl_14.TouchMovedUserInputConnection = var364
		var364 = arg1.isSmallScreen
		local var366 = var364
		if var366 then
			var366 = arg1.scrollingEnabled
			if var366 then
				var366 = React_upvr.createElement
				var366 = var366(ExternalEventConnection_upvr, {
					event = UserInputService_upvr.TouchEnded;
					callback = React_upvr.useCallback(function() -- Line 329
						--[[ Upvalues[1]:
							[1]: any_useState_result2_upvr_7 (readonly)
						]]
						any_useState_result2_upvr_7(false)
					end, {});
				})
			end
		end
		tbl_14.TouchEndedUserInputConnection = var366
		var355 = var355(tbl_14)
	end
	return var355
end