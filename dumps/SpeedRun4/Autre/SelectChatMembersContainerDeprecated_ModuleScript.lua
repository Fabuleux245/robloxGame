-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:15
-- Luau version 6, Types version 3
-- Time taken: 0.012602 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UserProfiles_upvr = require(Parent.UserProfiles)
local FFlagAppChatSelectChatMembersProperSize_upvr = require(AppChat.Flags.FFlagAppChatSelectChatMembersProperSize)
local Flags = AppChat.Flags
local tbl_7_upvr = {}
if FFlagAppChatSelectChatMembersProperSize_upvr then
	Flags = 56
else
	Flags = 64
end
tbl_7_upvr.topBarHeight = Flags
tbl_7_upvr.minSelections = 1
tbl_7_upvr.maxSelections = 5
tbl_7_upvr.maxConversationSize = 5
tbl_7_upvr.canOnlyCreateOneToOneChat = false
tbl_7_upvr.filterPredicate = require(script.Parent.Utils.searchFilterPredicate)
tbl_7_upvr.sortComparator = require(script.Parent.Utils.sortComparator)
tbl_7_upvr.conversation = {
	participants = {};
}
function tbl_7_upvr.navigateToToast(arg1) -- Line 73
end
function tbl_7_upvr.selectedUsersChanged(arg1, arg2) -- Line 74
end
local Cryo_upvr = require(Parent.Cryo)
local useState_upvr = React_upvr.useState
local useIsFriendRenameActive_upvr = require(AppChat.Hooks.useIsFriendRenameActive)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local GetFFlagAppChatRebrandStringUpdates_upvr = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local SquadExperimentation_upvr = require(Parent.SocialExperiments).SquadExperimentation
local useFetchPaginatedFriends_upvr = require(script.Parent.useFetchPaginatedFriends)
local useUserProfilesFetch_upvr = UserProfiles_upvr.Hooks.useUserProfilesFetch
local isUserInConversation_upvr = require(script.Parent.Utils.isUserInConversation)
local useCallback_upvr = React_upvr.useCallback
local Promise_upvr = require(Parent.Promise)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local usePrevious_upvr = require(Parent.RoactUtils).Hooks.usePrevious
local useEffect_upvr = React_upvr.useEffect
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local FFlagAppChatSelectChatMembersMobileHeight_upvr = require(Flags.FFlagAppChatSelectChatMembersMobileHeight)
local Responsive_upvr = require(Parent.Responsive)
local SelectChatMembersDeprecated_upvr = require(script.Parent.SelectChatMembersDeprecated)
function SelectChatMembersContainer(arg1) -- Line 78
	--[[ Upvalues[22]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
		[3]: useState_upvr (readonly)
		[4]: useIsFriendRenameActive_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
		[7]: SquadExperimentation_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: useFetchPaginatedFriends_upvr (readonly)
		[10]: useUserProfilesFetch_upvr (readonly)
		[11]: UserProfiles_upvr (readonly)
		[12]: isUserInConversation_upvr (readonly)
		[13]: useCallback_upvr (readonly)
		[14]: Promise_upvr (readonly)
		[15]: dependencyArray_upvr (readonly)
		[16]: usePrevious_upvr (readonly)
		[17]: useEffect_upvr (readonly)
		[18]: useStyle_upvr (readonly)
		[19]: FFlagAppChatSelectChatMembersMobileHeight_upvr (readonly)
		[20]: Responsive_upvr (readonly)
		[21]: FFlagAppChatSelectChatMembersProperSize_upvr (readonly)
		[22]: SelectChatMembersDeprecated_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 64 start (CF ANALYSIS FAILED)
	local any_join_result1_upvr_2 = Cryo_upvr.Dictionary.join(tbl_7_upvr, arg1)
	local useState_upvr_result1_upvr, useState_upvr_result2_upvr = useState_upvr({})
	local var11_result1 = useIsFriendRenameActive_upvr()
	local tbl_6 = {
		systemButtonText = any_join_result1_upvr_2.systemButtonText;
		pageHeaderText = any_join_result1_upvr_2.pageHeaderText;
	}
	local var83_upvw
	if var11_result1 then
	else
	end
	tbl_6.searchFriendsText = "Feature.Friends.Label.SearchFriends"
	tbl_6.offlinePresenceText = "Common.Presence.Label.Offline"
	tbl_6.onlinePresenceText = "Common.Presence.Label.Online"
	tbl_6.networkErrorText = "Feature.Chat.Response.NetworkError"
	local tbl_5 = {}
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		if var11_result1 then
			var83_upvw = "Feature.Chat.Message.AddConnectionsPartyLimit"
		else
			var83_upvw = "Feature.Chat.Message.PartyGroupLimitToastText"
		end
	elseif var11_result1 then
		var83_upvw = "Feature.Chat.Message.AddConnectionsLimit"
	else
		var83_upvw = "Feature.Chat.Message.ToastText"
	end
	tbl_5[1] = var83_upvw
	tbl_5.friendNum = 5
	tbl_5.connectionsNum = 5
	tbl_6.tooManyFriendsText = tbl_5
	var83_upvw = GetFFlagAppChatRebrandStringUpdates_upvr()
	-- KONSTANTERROR: [0] 1. Error Block 64 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 55. Error Block 65 start (CF ANALYSIS FAILED)
	var83_upvw = SquadExperimentation_upvr.getSquadEntrypointsEnabled()
	if var83_upvw then
		if var11_result1 then
		else
		end
	else
		-- KONSTANTERROR: [81] 64. Error Block 52 start (CF ANALYSIS FAILED)
		if var11_result1 then
		else
		end
		-- KONSTANTERROR: [81] 64. Error Block 52 end (CF ANALYSIS FAILED)
	end
	tbl_6.tooManyFriendsTextSingular = "Feature.Chat.Message.ChatGroupLimitSingular"
	local var12_result1_upvr_2 = useLocalization_upvr(tbl_6)
	local any_useState_result1_2, any_useState_result2_upvr_2 = React_upvr.useState({})
	var83_upvw = nil
	local useFetchPaginatedFriends_upvr_result1, var15_result2, var15_result3_upvw = useFetchPaginatedFriends_upvr()
	local var91_upvw = useFetchPaginatedFriends_upvr_result1
	var83_upvw = var15_result2
	local var16_result1_upvr = useUserProfilesFetch_upvr({
		userIds = Cryo_upvr.List.map(var91_upvw, function(arg1_12) -- Line 118
			return arg1_12.id
		end);
		query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds;
	})
	React_upvr.useEffect(function() -- Line 126
		--[[ Upvalues[7]:
			[1]: var16_result1_upvr (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: var91_upvw (read and write)
			[5]: isUserInConversation_upvr (copied, readonly)
			[6]: any_join_result1_upvr_2 (readonly)
			[7]: UserProfiles_upvr (copied, readonly)
		]]
		if var16_result1_upvr.data then
			any_useState_result2_upvr_2(Cryo_upvr.List.filterMap(var91_upvw, function(arg1_13) -- Line 128
				--[[ Upvalues[5]:
					[1]: isUserInConversation_upvr (copied, readonly)
					[2]: any_join_result1_upvr_2 (copied, readonly)
					[3]: Cryo_upvr (copied, readonly)
					[4]: UserProfiles_upvr (copied, readonly)
					[5]: var16_result1_upvr (copied, readonly)
				]]
				if not isUserInConversation_upvr(arg1_13.id, any_join_result1_upvr_2.conversation) then
					return Cryo_upvr.Dictionary.join(arg1_13, {
						displayName = UserProfiles_upvr.Selectors.getCombinedNameFromId(var16_result1_upvr.data, arg1_13.id);
						username = UserProfiles_upvr.Selectors.getUsernameFromId(var16_result1_upvr.data, arg1_13.id);
					})
				end
				return nil
			end))
		end
	end, {var16_result1_upvr.data, any_join_result1_upvr_2.conversation})
	local useCallback_upvr_result1_upvr_2 = useCallback_upvr(function(arg1_14) -- Line 142
		--[[ Upvalues[4]:
			[1]: useState_upvr_result1_upvr (readonly)
			[2]: any_join_result1_upvr_2 (readonly)
			[3]: Promise_upvr (copied, readonly)
			[4]: Cryo_upvr (copied, readonly)
		]]
		if useState_upvr_result1_upvr and #useState_upvr_result1_upvr == any_join_result1_upvr_2.maxSelections then
			return Promise_upvr.reject()
		end
		local module = {}
		module[1] = arg1_14
		return Promise_upvr.resolve(Cryo_upvr.List.join(useState_upvr_result1_upvr, module))
	end, dependencyArray_upvr(useState_upvr_result1_upvr, any_join_result1_upvr_2.maxSelections))
	local useCallback_upvr_result1_upvr_3 = useCallback_upvr(function(arg1_15) -- Line 150
		--[[ Upvalues[3]:
			[1]: Promise_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: useState_upvr_result1_upvr (readonly)
		]]
		return Promise_upvr.resolve(Cryo_upvr.List.filter(useState_upvr_result1_upvr, function(arg1_16) -- Line 151
			--[[ Upvalues[1]:
				[1]: arg1_15 (readonly)
			]]
			local var104
			if arg1_16.id == arg1_15 then
				var104 = false
			else
				var104 = true
			end
			return var104
		end))
	end, dependencyArray_upvr(useState_upvr_result1_upvr))
	local useCallback_upvr_result1_upvr_4 = useCallback_upvr(function(arg1_17) -- Line 156
		--[[ Upvalues[1]:
			[1]: useState_upvr_result1_upvr (readonly)
		]]
		for _, v in pairs(useState_upvr_result1_upvr) do
			if v.id == arg1_17.id then
				return true
			end
		end
		return false
	end, dependencyArray_upvr(useState_upvr_result1_upvr))
	local function _(arg1_18) -- Line 166
		--[[ Upvalues[3]:
			[1]: useCallback_upvr_result1_upvr_4 (readonly)
			[2]: useCallback_upvr_result1_upvr_3 (readonly)
			[3]: useCallback_upvr_result1_upvr_2 (readonly)
		]]
		if useCallback_upvr_result1_upvr_4(arg1_18) then
			return useCallback_upvr_result1_upvr_3(arg1_18.id)
		end
		return useCallback_upvr_result1_upvr_2(arg1_18)
	end
	local function var114_upvr(arg1_19) -- Line 174
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr_2 (readonly)
		]]
		local tbl_11 = {}
		local tbl_4 = {}
		local tbl_13 = {}
		tbl_13.toastTitle = arg1_19
		tbl_4.toastContent = tbl_13
		tbl_11.toastProps = tbl_4
		any_join_result1_upvr_2.navigateToToast(tbl_11)
	end
	local usePrevious_upvr_result1_upvr = usePrevious_upvr(useState_upvr_result1_upvr)
	useEffect_upvr(function() -- Line 186
		--[[ Upvalues[3]:
			[1]: useState_upvr_result1_upvr (readonly)
			[2]: usePrevious_upvr_result1_upvr (readonly)
			[3]: any_join_result1_upvr_2 (readonly)
		]]
		if useState_upvr_result1_upvr ~= usePrevious_upvr_result1_upvr then
			any_join_result1_upvr_2.selectedUsersChanged(useState_upvr_result1_upvr, any_join_result1_upvr_2.minSelections)
		end
	end, dependencyArray_upvr(useState_upvr_result1_upvr))
	local tbl_8 = {
		onEntryActivated = function(arg1_20) -- Line 203, Named "onEntryActivated"
			--[[ Upvalues[7]:
				[1]: useCallback_upvr_result1_upvr_4 (readonly)
				[2]: useCallback_upvr_result1_upvr_3 (readonly)
				[3]: useCallback_upvr_result1_upvr_2 (readonly)
				[4]: useState_upvr_result2_upvr (readonly)
				[5]: var114_upvr (readonly)
				[6]: any_join_result1_upvr_2 (readonly)
				[7]: var12_result1_upvr_2 (readonly)
			]]
			local var122
			if useCallback_upvr_result1_upvr_4(arg1_20) then
				var122 = useCallback_upvr_result1_upvr_3(arg1_20.id)
			else
				var122 = useCallback_upvr_result1_upvr_2(arg1_20)
			end
			var122 = var122:andThen(function(arg1_21) -- Line 205
				--[[ Upvalues[1]:
					[1]: useState_upvr_result2_upvr (copied, readonly)
				]]
				useState_upvr_result2_upvr(arg1_21)
			end)
			var122 = var122:catch
			var122(function() -- Line 208
				--[[ Upvalues[3]:
					[1]: var114_upvr (copied, readonly)
					[2]: any_join_result1_upvr_2 (copied, readonly)
					[3]: var12_result1_upvr_2 (copied, readonly)
				]]
				local var125
				if any_join_result1_upvr_2.canOnlyCreateOneToOneChat then
					var125 = var12_result1_upvr_2.tooManyFriendsTextSingular
				else
					var125 = var12_result1_upvr_2.tooManyFriendsText
				end
				var114_upvr(var125)
			end)
		end;
		selectedUsers = useState_upvr_result1_upvr;
		friendEntries = any_useState_result1_2;
		shouldShowSelectChatMembersBar = not any_join_result1_upvr_2.canOnlyCreateOneToOneChat;
		fetchMoreFriends = function() -- Line 194
			--[[ Upvalues[2]:
				[1]: var83_upvw (read and write)
				[2]: var15_result3_upvw (read and write)
			]]
			if var83_upvw and not var15_result3_upvw then
				var83_upvw()
			end
		end;
	}
	if FFlagAppChatSelectChatMembersMobileHeight_upvr then
		if Responsive_upvr.useOrientation() ~= Responsive_upvr.Keys.Portrait then
		else
		end
	else
	end
	if FFlagAppChatSelectChatMembersProperSize_upvr then
		-- KONSTANTWARNING: GOTO [247] #202
	end
	-- KONSTANTERROR: [71] 55. Error Block 65 end (CF ANALYSIS FAILED)
end
return React_upvr.memo(SelectChatMembersContainer)