-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:32
-- Luau version 6, Types version 3
-- Time taken: 0.015291 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local getConversationTitle_upvr = require(AppChat.Conversations.getConversationTitle)
local tbl_2_upvr = {
	topBarHeight = 0;
	isShowingFilterBox = false;
	navigateToSquadLobby = function() -- Line 97, Named "navigateToSquadLobby"
	end;
}
local function _(arg1, arg2, arg3) -- Line 100, Named "formatTitle"
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: getConversationTitle_upvr (readonly)
	]]
	local var8_upvw = false
	if var8_upvw and arg1.isDefaultTitle then
		return ""
	end
	return getConversationTitle_upvr(arg1, Cryo_upvr.List.map(arg1.otherParticipants, function(arg1_2) -- Line 102
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var8_upvw (read and write)
		]]
		if arg2[tostring(arg1_2)] == nil then
			var8_upvw = true
		end
		return arg2[tostring(arg1_2)]
	end), arg3)
end
local useIsFriendRenameActive_upvr = require(AppChat.Hooks.useIsFriendRenameActive)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useIsChatEnabled_upvr = require(AppChat.Hooks.useIsChatEnabled)
local useIsGroupChatEnabled_upvr = require(AppChat.Hooks.useIsGroupChatEnabled)
local useIsChatEnabledFromReason_upvr = require(AppChat.Hooks.useIsChatEnabledFromReason)
local useIsAppLoaded_upvr = require(AppChat.Hooks.useIsAppLoaded)
local useAreConversationsFetching_upvr = require(AppChat.Hooks.useAreConversationsFetching)
local useHasConversations_upvr = require(AppChat.Hooks.useHasConversations)
local useIsOldestConversationFetched_upvr = require(AppChat.Hooks.useIsOldestConversationFetched)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useTextSizeOffset_upvr = UIBlox.Core.Style.useTextSizeOffset
local FFlagFixConversationListLargeText_upvr = require(AppChat.Flags.FFlagFixConversationListLargeText)
local useGetConversations_upvr = require(AppChat.Hooks.useGetConversations)
local getAllParticipants_upvr = require(AppChat.Conversations.getAllParticipants)
local usePrevious_upvr = require(Parent.RoactUtils).Hooks.usePrevious
local useEffect_upvr = React_upvr.useEffect
local any_new_result1_upvr = require(script.Parent.Logger):new(script.Name)
local fetchConversationsByPage_upvr = require(AppChat.Conversations.Thunks.fetchConversationsByPage)
local FFlagAppChatRemoveUserProfileTitles_upvr = require(AppChat.Flags.FFlagAppChatRemoveUserProfileTitles)
local UserProfiles_upvr = require(Parent.UserProfiles)
local useIsUserPending_upvr = require(AppChat.Hooks.useIsUserPending)
local ConversationChannels_upvr = require(AppChat.Models.ConversationChannels)
local getFFlagAppChatEnableGroupSetting_upvr = require(AppChat.Flags.getFFlagAppChatEnableGroupSetting)
local useTelemetry_upvr = require(AppChat.Telemetry.useTelemetry)
local ChatLandingTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.ChatLandingTelemetryLayer)
local ChatLandingTelemetryState_upvr = require(AppChat.Contexts.TelemetryState.ChatLandingTelemetryState)
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local useEffectOnMount_upvr = require(Parent.RoactUtils).Hooks.useEffectOnMount
local ChatLandingTelemetryEvents_upvr = require(script.Parent.ChatLandingTelemetryEvents)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useCallback_upvr = React_upvr.useCallback
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local RoduxNetworking_upvr = require(AppChat.Http.RoduxNetworking)
local getFFlagAppChatUseNewNoConversationsLanding_upvr = require(AppChat.Flags.getFFlagAppChatUseNewNoConversationsLanding)
local useIsExternalNavigationAvailable_upvr = require(AppChat.Hooks.useIsExternalNavigationAvailable)
local EnumScreens_upvr = require(AppChat.EnumScreens)
local FFlagAppIaScrollAway_upvr = require(Parent.SharedFlags).FFlagAppIaScrollAway
local AppNavBar_upvr = require(Parent.AppNavBar)
local ChatLoadingContainer_upvr = require(script.Parent.ChatLoading.ChatLoadingContainer)
local default_upvr = require(Parent.SocialCommon).Experiments.NewChatTabExperimentation.default
local NoFriendsView_upvr = require(Parent.FriendsLanding).Components.NoFriendsView
local EmptyStateType_upvr = require(AppChat.Analytics.Enums.EmptyStateType)
local game_DefineFastString_result1_upvr = game:DefineFastString("ChatTabAddFriendsButtonKey", "Feature.Friends.Feature.Friends.Heading.AddFriends")
local NoConversationsLanding_upvr = require(script.Parent.NoConversationsLanding)
local EmptyConversationList_upvr = require(script.Parent.EmptyConversationList)
local ConversationListWithTopBar_upvr = require(script.Parent.ConversationListWithTopBar)
local getFFlagChatTabHideGroupsLinkOnVR_upvr = require(AppChat.Flags.getFFlagChatTabHideGroupsLinkOnVR)
local IsVRAppBuild_upvr = require(Parent.AppCommonLib).IsVRAppBuild
local FFlagAppChatMakeGroupsComponentMoreGeneric_upvr = require(AppChat.Flags.FFlagAppChatMakeGroupsComponentMoreGeneric)
local ConversationGroupsEntryContainer_upvr = require(script.Parent.ConversationGroupsEntryContainer)
local CustomConversationListEntry_upvr = require(script.Parent.CustomConversationListEntry)
local useChatIsVisible_upvr = require(AppChat.Hooks.useChatIsVisible)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
function ChatLandingContainer(arg1) -- Line 117
	--[[ Upvalues[59]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useIsFriendRenameActive_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: useIsChatEnabled_upvr (readonly)
		[6]: useIsGroupChatEnabled_upvr (readonly)
		[7]: useIsChatEnabledFromReason_upvr (readonly)
		[8]: useIsAppLoaded_upvr (readonly)
		[9]: useAreConversationsFetching_upvr (readonly)
		[10]: useHasConversations_upvr (readonly)
		[11]: useIsOldestConversationFetched_upvr (readonly)
		[12]: useLocalUserId_upvr (readonly)
		[13]: useNavigation_upvr (readonly)
		[14]: useStyle_upvr (readonly)
		[15]: useTextSizeOffset_upvr (readonly)
		[16]: FFlagFixConversationListLargeText_upvr (readonly)
		[17]: useGetConversations_upvr (readonly)
		[18]: React_upvr (readonly)
		[19]: getAllParticipants_upvr (readonly)
		[20]: usePrevious_upvr (readonly)
		[21]: useEffect_upvr (readonly)
		[22]: any_new_result1_upvr (readonly)
		[23]: fetchConversationsByPage_upvr (readonly)
		[24]: FFlagAppChatRemoveUserProfileTitles_upvr (readonly)
		[25]: UserProfiles_upvr (readonly)
		[26]: useIsUserPending_upvr (readonly)
		[27]: ConversationChannels_upvr (readonly)
		[28]: getConversationTitle_upvr (readonly)
		[29]: getFFlagAppChatEnableGroupSetting_upvr (readonly)
		[30]: useTelemetry_upvr (readonly)
		[31]: ChatLandingTelemetryLayer_upvr (readonly)
		[32]: ChatLandingTelemetryState_upvr (readonly)
		[33]: useIsInExperience_upvr (readonly)
		[34]: useEffectOnMount_upvr (readonly)
		[35]: ChatLandingTelemetryEvents_upvr (readonly)
		[36]: useSelector_upvr (readonly)
		[37]: useCallback_upvr (readonly)
		[38]: AppChatNetworking_upvr (readonly)
		[39]: RoduxNetworking_upvr (readonly)
		[40]: getFFlagAppChatUseNewNoConversationsLanding_upvr (readonly)
		[41]: useIsExternalNavigationAvailable_upvr (readonly)
		[42]: EnumScreens_upvr (readonly)
		[43]: FFlagAppIaScrollAway_upvr (readonly)
		[44]: AppNavBar_upvr (readonly)
		[45]: ChatLoadingContainer_upvr (readonly)
		[46]: default_upvr (readonly)
		[47]: NoFriendsView_upvr (readonly)
		[48]: EmptyStateType_upvr (readonly)
		[49]: game_DefineFastString_result1_upvr (readonly)
		[50]: NoConversationsLanding_upvr (readonly)
		[51]: EmptyConversationList_upvr (readonly)
		[52]: ConversationListWithTopBar_upvr (readonly)
		[53]: getFFlagChatTabHideGroupsLinkOnVR_upvr (readonly)
		[54]: IsVRAppBuild_upvr (readonly)
		[55]: FFlagAppChatMakeGroupsComponentMoreGeneric_upvr (readonly)
		[56]: ConversationGroupsEntryContainer_upvr (readonly)
		[57]: CustomConversationListEntry_upvr (readonly)
		[58]: useChatIsVisible_upvr (readonly)
		[59]: dependencyArray_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 146 start (CF ANALYSIS FAILED)
	local var11_result1_upvr = useDispatch_upvr()
	local var12_result1_upvr = useIsChatEnabled_upvr()
	local var13_result1_upvr = useIsGroupChatEnabled_upvr()
	local useLocalUserId_upvr_result1_upvr = useLocalUserId_upvr()
	local var75_upvr
	if FFlagFixConversationListLargeText_upvr then
	else
	end
	local var24_result1_upvr = useGetConversations_upvr()
	local tbl_4 = {}
	var75_upvr = var24_result1_upvr
	tbl_4[1] = var75_upvr
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 144
		--[[ Upvalues[2]:
			[1]: getAllParticipants_upvr (copied, readonly)
			[2]: var24_result1_upvr (readonly)
		]]
		return getAllParticipants_upvr(var24_result1_upvr)
	end, tbl_4)
	local usePrevious_upvr_result1_upvr = usePrevious_upvr(var12_result1_upvr)
	function var75_upvr() -- Line 149
		--[[ Upvalues[5]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: usePrevious_upvr_result1_upvr (readonly)
			[3]: var12_result1_upvr (readonly)
			[4]: var11_result1_upvr (readonly)
			[5]: fetchConversationsByPage_upvr (copied, readonly)
		]]
		any_new_result1_upvr:debug("Comparing previousIsChatEnabled ({}) --> isChatEnabled ({})", usePrevious_upvr_result1_upvr, var12_result1_upvr)
		if usePrevious_upvr_result1_upvr ~= nil and usePrevious_upvr_result1_upvr ~= var12_result1_upvr and var12_result1_upvr then
			any_new_result1_upvr:info("Chat has become enabled, fetching conversations")
			var11_result1_upvr(fetchConversationsByPage_upvr())
		end
	end
	useEffect_upvr(var75_upvr, {var11_result1_upvr, var12_result1_upvr, usePrevious_upvr_result1_upvr})
	var75_upvr = FFlagAppChatRemoveUserProfileTitles_upvr
	if var75_upvr then
		-- KONSTANTWARNING: GOTO [107] #93
	end
	-- KONSTANTERROR: [0] 1. Error Block 146 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [91] 83. Error Block 128 start (CF ANALYSIS FAILED)
	var75_upvr = UserProfiles_upvr.Hooks
	var75_upvr = {}
	var75_upvr.userIds = any_useMemo_result1
	var75_upvr.query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds
	local any_useUserProfilesFetch_result1_upvr = var75_upvr.useUserProfilesFetch(var75_upvr)
	if FFlagAppChatRemoveUserProfileTitles_upvr then
		var75_upvr = nil
	else
		var75_upvr = UserProfiles_upvr.Hooks.useUserProfilesFetch
		var75_upvr = var75_upvr({
			userIds = {tostring(useLocalUserId_upvr_result1_upvr)};
			query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds;
		})
	end
	local any_useRef_result1_upvr = React_upvr.useRef({})
	if FFlagAppChatRemoveUserProfileTitles_upvr then
		local _ = {var24_result1_upvr, any_useMemo_result1, useLocalUserId_upvr_result1_upvr, var13_result1_upvr}
	else
	end
	local any_useMemo_result1_2_upvr, any_useMemo_result2_upvr, any_useMemo_result3_upvr = React_upvr.useMemo(function() -- Line 180
		--[[ Upvalues[13]:
			[1]: FFlagAppChatRemoveUserProfileTitles_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: any_useUserProfilesFetch_result1_upvr (readonly)
			[4]: Cryo_upvr (copied, readonly)
			[5]: var24_result1_upvr (readonly)
			[6]: useIsUserPending_upvr (copied, readonly)
			[7]: ConversationChannels_upvr (copied, readonly)
			[8]: getConversationTitle_upvr (copied, readonly)
			[9]: var75_upvr (readonly)
			[10]: UserProfiles_upvr (copied, readonly)
			[11]: useLocalUserId_upvr_result1_upvr (readonly)
			[12]: getFFlagAppChatEnableGroupSetting_upvr (copied, readonly)
			[13]: var13_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
		local var95_upvw
		local var96
		if not FFlagAppChatRemoveUserProfileTitles_upvr then
			var95_upvw = any_useRef_result1_upvr.current
			if any_useUserProfilesFetch_result1_upvr.data then
				Cryo_upvr.List.map(any_useUserProfilesFetch_result1_upvr.data.userProfiles, function(arg1_7) -- Line 185
					--[[ Upvalues[1]:
						[1]: var95_upvw (read and write)
					]]
					var95_upvw[arg1_7.id] = arg1_7
				end)
			end
		end
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [32.8]
		if useIsUserPending_upvr(nil) then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var96 = ConversationChannels_upvr.ModerationType
		if nil.moderationType == var96.TrustedComms then
		end
		if FFlagAppChatRemoveUserProfileTitles_upvr then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			-- KONSTANTWARNING: GOTO [95] #77
		end
		local var98
		if var75_upvr.data then
			var96 = UserProfiles_upvr.Selectors.getCombinedNameFromId(var75_upvr.data, useLocalUserId_upvr_result1_upvr)
		else
			var96 = ""
		end
		local var99_upvw = false
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if var99_upvw then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil.isDefaultTitle then
				var98 = ""
			else
				-- KONSTANTERROR: [88] 70. Error Block 32 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTERROR: [88] 70. Error Block 32 end (CF ANALYSIS FAILED)
			end
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return nil.conversationType ~= "MultiUserConversation"
			end
			if not getFFlagAppChatEnableGroupSetting_upvr() or var13_result1_upvr or INLINED_4() then
				var96 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var96, Cryo_upvr.Dictionary.join(nil, {
					title = getConversationTitle_upvr(nil, Cryo_upvr.List.map(nil.otherParticipants, function(arg1_8) -- Line 102
						--[[ Upvalues[2]:
							[1]: var95_upvw (readonly)
							[2]: var99_upvw (read and write)
						]]
						if var95_upvw[tostring(arg1_8)] == nil then
							var99_upvw = true
						end
						return var95_upvw[tostring(arg1_8)]
					end), var96);
				}))
			end
			-- KONSTANTWARNING: GOTO [31] #25
		end
		-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [88] 70. Error Block 32 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [88] 70. Error Block 32 end (CF ANALYSIS FAILED)
	end, {var24_result1_upvr, any_useMemo_result1, any_useUserProfilesFetch_result1_upvr.data, var75_upvr.data, useLocalUserId_upvr_result1_upvr, var13_result1_upvr})
	local any_useSetState_result1_upvr = ChatLandingTelemetryState_upvr.useSetState()
	useEffect_upvr(function() -- Line 246
		--[[ Upvalues[5]:
			[1]: any_useSetState_result1_upvr (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: any_useMemo_result1_2_upvr (readonly)
			[4]: any_useMemo_result2_upvr (readonly)
			[5]: any_useMemo_result3_upvr (readonly)
		]]
		any_useSetState_result1_upvr(function(arg1_9) -- Line 247
			--[[ Upvalues[4]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: any_useMemo_result1_2_upvr (copied, readonly)
				[3]: any_useMemo_result2_upvr (copied, readonly)
				[4]: any_useMemo_result3_upvr (copied, readonly)
			]]
			return Cryo_upvr.Dictionary.join(arg1_9, {
				chatLandingListCount = #any_useMemo_result1_2_upvr;
				pendingConversationCount = any_useMemo_result2_upvr;
				unfilteredConversationCount = any_useMemo_result3_upvr;
			})
		end)
	end, {#any_useMemo_result1_2_upvr, any_useMemo_result2_upvr, any_useMemo_result3_upvr, any_useSetState_result1_upvr})
	local useTelemetry_upvr_result1_upvr = useTelemetry_upvr(ChatLandingTelemetryLayer_upvr.Context)
	useEffectOnMount_upvr(function() -- Line 256
		--[[ Upvalues[3]:
			[1]: useTelemetry_upvr_result1_upvr (readonly)
			[2]: ChatLandingTelemetryEvents_upvr (copied, readonly)
			[3]: var12_result1_upvr (readonly)
		]]
		useTelemetry_upvr_result1_upvr.emit(ChatLandingTelemetryEvents_upvr.ScreenRendered, {
			isChatEnabled = var12_result1_upvr;
		})
	end)
	local any_isEmpty_result1 = Cryo_upvr.isEmpty(any_useMemo_result1_2_upvr)
	local function _(arg1_11) -- Line 268
		local var119
		if arg1_11.ChatAppReducer.ChatSettings.retrievalStatus == "Done" then
			var119 = false
		else
			var119 = true
		end
		return var119
	end
	if getFFlagAppChatUseNewNoConversationsLanding_upvr() then
	else
		local var120
	end
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		var120 = useAreConversationsFetching_upvr()
		return var120
	end
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		var120 = useHasConversations_upvr()
		return var120
	end
	if not var120 and (not any_isEmpty_result1 or not INLINED_5()) or not any_isEmpty_result1 or not INLINED_6() then
		var120 = any_isEmpty_result1 and useSelector_upvr(useCallback_upvr(function(arg1_10) -- Line 262
			--[[ Upvalues[2]:
				[1]: AppChatNetworking_upvr (copied, readonly)
				[2]: RoduxNetworking_upvr (copied, readonly)
			]]
			local var116
			if AppChatNetworking_upvr.rodux.GetUnfilteredThreadEligibility.getStatus(arg1_10) ~= RoduxNetworking_upvr.Enum.NetworkStatus.Fetching then
				var116 = false
			else
				var116 = true
			end
			return var116
		end, {}))
	end
	local tbl_3 = {EnumScreens_upvr.AddFriends, EnumScreens_upvr.PrivacySettings, EnumScreens_upvr.Groups}
	if FFlagAppIaScrollAway_upvr and not useIsInExperience_upvr() then
	end
	local var122
	if getFFlagAppChatUseNewNoConversationsLanding_upvr() then
		var122 = var120
	else
		var122 = var12_result1_upvr and var120
	end
	-- KONSTANTERROR: [91] 83. Error Block 128 end (CF ANALYSIS FAILED)
end
return require(AppChat.SocialLibraries).RoduxTools.compose(require(Parent.RoactRodux).connect(nil, require(script.Parent.mapDispatchToProps)), require(AppChat.SocialLibraries).RoactPaginator.connect(function() -- Line 482
	return {
		pageSize = 30;
	}
end))(ChatLandingContainer)