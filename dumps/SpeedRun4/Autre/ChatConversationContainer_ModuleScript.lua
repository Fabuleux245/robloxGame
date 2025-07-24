-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:37
-- Luau version 6, Types version 3
-- Time taken: 0.051948 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local Conversation_upvr = require(AppChat.Models.Conversation)
local FFlagAppChatEnableOneToOneOSAContextCards_upvr = require(Parent.SharedFlags).FFlagAppChatEnableOneToOneOSAContextCards
local tbl_49_upvr = {
	topBarHeight = 0;
	wideMode = false;
	chatInputPlaceholderKey = "Feature.Chat.Label.ChatInputPlaceholder";
	messageDefaultNoticeKey = "Feature.Chat.Message.Default";
	messageModeratedNoticeKey = "Feature.Chat.Message.MessageContentModerated";
	networkErrorTextKey = "Feature.Toast.NetworkingError.SomethingIsWrong";
	notImplementedMessageTypeKey = "Feature.Chat.Label.NotImplementedMessageType";
	viewProfileOnAvatarPressed = true;
	unknownUserTextKey = "Feature.Chat.Label.UnknownUser";
	oneUserTyping = {
		DISPLAY_NAME = "";
		"Feature.Chat.Message.OneUserTyping"
	};
	twoUsersTyping = {
		DISPLAY_NAME_1 = "";
		DISPLAY_NAME_2 = "";
		"Feature.Chat.Message.TwoUsersTyping"
	};
	severalUsersTyping = "Feature.Chat.Message.SeveralUsersTyping";
	pendingStateBodyKey = "Feature.Chat.Message.ChatIsUnfiltered";
	connectUnavailableWithUserKey = "Feature.Chat.RobloxConnectUnavailableWithUser";
}
local getOsaState_upvr
if require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates() and require(Parent.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
	getOsaState_upvr = "Feature.Chat.Message.PartyUnavailableWithUser"
else
	getOsaState_upvr = "Feature.Chat.Message.ChatUnavailableWithUser"
end
tbl_49_upvr.chatUnavailableWithUserKey = getOsaState_upvr
function getOsaState_upvr() -- Line 104, Named "getReadingMessagesIsEnabled"
end
tbl_49_upvr.getReadingMessagesIsEnabled = getOsaState_upvr
function getOsaState_upvr(arg1) -- Line 105, Named "updateConversationTitle"
end
tbl_49_upvr.updateConversationTitle = getOsaState_upvr
function getOsaState_upvr() -- Line 106, Named "navigateToScreen"
end
tbl_49_upvr.navigateToScreen = getOsaState_upvr
getOsaState_upvr = "Feature.Chat.Label.ChatDisabled"
tbl_49_upvr.inputBarDisabledKey = getOsaState_upvr
function getOsaState_upvr() -- Line 108, Named "navigateToChatLanding"
end
tbl_49_upvr.navigateToChatLanding = getOsaState_upvr
function getOsaState_upvr() -- Line 109, Named "releaseInputBarFocus"
end
tbl_49_upvr.releaseInputBarFocus = getOsaState_upvr
function getOsaState_upvr() -- Line 110, Named "navigateToSquadLobby"
end
tbl_49_upvr.navigateToSquadLobby = getOsaState_upvr
function getOsaState_upvr() -- Line 111, Named "navigateToConversationOverlay"
end
tbl_49_upvr.navigateToConversationOverlay = getOsaState_upvr
function getOsaState_upvr(arg1) -- Line 115, Named "getOsaState"
	--[[ Upvalues[2]:
		[1]: FFlagAppChatEnableOneToOneOSAContextCards_upvr (readonly)
		[2]: Conversation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var25
	if var25 then
		var25 = arg1.fetchedOldestMessage
	end
	if not FFlagAppChatEnableOneToOneOSAContextCards_upvr then
		local tbl_6 = {
			shouldShowOsaCardInConversation = false;
			fetchedOldestMessage = var25;
			shouldShowOsaCardOnInitialLoad = false;
			shouldShowOsaCardNow = false;
		}
		return tbl_6
	end
	tbl_6 = FFlagAppChatEnableOneToOneOSAContextCards_upvr
	local var27 = tbl_6
	if var27 then
		var27 = arg1
		if var27 then
			var27 = true
			if arg1.source ~= "friends" then
				var27 = true
				if arg1.osaAcknowledgementStatus ~= Conversation_upvr.OsaAcknowledgementStatus.Unacknowledged then
					if arg1.osaAcknowledgementStatus ~= Conversation_upvr.OsaAcknowledgementStatus.Acknowledged then
						var27 = false
					else
						var27 = true
					end
				end
			end
		end
	end
	local var28 = arg1
	if var28 then
		if arg1.osaAcknowledgementStatus ~= Conversation_upvr.OsaAcknowledgementStatus.Unacknowledged then
		else
		end
	end
	if arg1 then
		if arg1.source ~= "friends" then
		else
		end
	end
	local module_6 = {
		shouldShowOsaCardInConversation = var27;
		fetchedOldestMessage = var25;
	}
	local var30 = var27
	if var30 then
		var30 = true
		if var30 then
			var30 = not true
		end
	end
	module_6.shouldShowOsaCardOnInitialLoad = var30
	var30 = var27
	local var31 = var30
	if var31 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var31 = var25 or true
	end
	module_6.shouldShowOsaCardNow = var31
	return module_6
end
local Cryo_upvr = require(Parent.Cryo)
local useAnalytics_upvr = require(AppChat.LegacyAnalytics.useAnalytics)
local RoactChatAnalytics_upvr = require(AppChat.LegacyAnalytics.RoactChatAnalytics)
local useMapDispatch_upvr = require(AppChat.Hooks.useMapDispatch)
local mapDispatchToProps_upvr = require(script.Parent.mapDispatchToProps)
local useGetConversationFromId_upvr = require(AppChat.Hooks.useGetConversationFromId)
local useRecipientIds_upvr = require(AppChat.Hooks.useRecipientIds)
local HttpService_upvr = game:GetService("HttpService")
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useChatIsVisible_upvr = require(AppChat.Hooks.useChatIsVisible)
local useIsChatUserMessagesEnabled_upvr = require(AppChat.Hooks.useIsChatUserMessagesEnabled)
local FFlagAppChatNavigateLandingWhenDisabled_upvr = require(AppChat.Flags.FFlagAppChatNavigateLandingWhenDisabled)
local useIsChatEnabled_upvr = require(AppChat.Hooks.useIsChatEnabled)
local useEffect_upvr = React_upvr.useEffect
local FFlagAppChatInterventionFocusFix_upvr = require(Parent.InterventionShared).Flags.FFlagAppChatInterventionFocusFix
local useSignal_upvr = require(Parent.RoactUtils).Hooks.useSignal
local interventionTreatmentShownSignal_upvr = require(Parent.InterventionShared).Signals.interventionTreatmentShownSignal
local Constants_upvr = require(Parent.InterventionShared).Utils.Constants
local UserProfiles_upvr = require(Parent.UserProfiles)
local getOtherParticipants_upvr = require(AppChat.Conversations.getOtherParticipants)
local getConversationTitle_upvr = require(AppChat.Conversations.getConversationTitle)
local useGetUsers_upvr = require(AppChat.Hooks.useGetUsers)
local useGetUsersTyping_upvr = require(AppChat.Hooks.useGetUsersTyping)
local selectMessagesPure_upvr = require(AppChat.Components.ChatConversation.Messages.Selectors.selectMessagesPure)
local EnumMessageTypes_upvr = require(script.Parent.EnumMessageTypes)
local EnumCustomEntryTypes_upvr = require(script.Parent.EnumCustomEntryTypes)
local FFlagAppChatDisableTypingIndicator_upvr = require(AppChat.Flags.FFlagAppChatDisableTypingIndicator)
local GetFFlagEnableAppChatInExperience_upvr = require(Parent.SharedFlags).GetFFlagEnableAppChatInExperience
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local InExperienceAppChatExperimentation_upvr = require(AppChat.App.InExperienceAppChatExperimentation)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useTelemetry_upvr = require(AppChat.Telemetry.useTelemetry)
local ChatConversationTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.ChatConversationTelemetryLayer)
local ChatConversationTelemetryState_upvr = require(AppChat.Contexts.TelemetryState.ChatConversationTelemetryState)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useIsUserPending_upvr = require(AppChat.Hooks.useIsUserPending)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local FFlagAppChatEnableTC_upvr = require(Parent.SharedFlags).FFlagAppChatEnableTC
local useCallbackWithDynamicConversationId_upvr = require(AppChat.Hooks.useCallbackWithDynamicConversationId)
local Logger_upvr = require(script.Parent.Logger)
local FFlagTCUpsellModalEnabled_DEV_upvr = require(Parent.SharedFlags).FFlagTCUpsellModalEnabled_DEV
local useKeybind_upvr = require(AppChat.App.Hooks.useKeybind)
local useShouldShowConversationOverlay_upvr = require(AppChat.Hooks.useShouldShowConversationOverlay)
local getFFlagAppChatEnableIntervention_upvr = require(Parent.InterventionShared).Flags.getFFlagAppChatEnableIntervention
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local RoduxNetworking_upvr = require(AppChat.Http.RoduxNetworking)
local useChatTimeoutDetails_upvr = require(AppChat.Hooks.useChatTimeoutDetails)
local useEffectOnMount_upvr = require(Parent.RoactUtils).Hooks.useEffectOnMount
local ChatConversationTelemetryEvents_upvr = require(script.Parent.ChatConversationTelemetryEvents)
local ConversationChannels_upvr = require(AppChat.Models.ConversationChannels)
local useIsExternalNavigationAvailable_upvr = require(AppChat.Hooks.useIsExternalNavigationAvailable)
local EnumScreens_upvr = require(AppChat.EnumScreens)
local FFlagPartialModalConversationFix_upvr = require(AppChat.Flags.FFlagPartialModalConversationFix)
local GenericDialogType_upvr = require(AppChat.Components.ChatDetails.Dialogs.GenericDialogType)
local getFFlagAppChatEnableRepliesUI_upvr = require(AppChat.Flags.getFFlagAppChatEnableRepliesUI)
local useReplyingToMessage_upvr = require(script.Parent.MessageInteraction.ReplyingContext.useReplyingToMessage)
local useReplyingToMessageDispatch_upvr = require(script.Parent.MessageInteraction.ReplyingContext.useReplyingToMessageDispatch)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local chatInputBoxDisabledPressedSignal_upvr = require(Parent.InterventionShared).Signals.chatInputBoxDisabledPressedSignal
local RoactNavigation_upvr = require(Parent.RoactNavigation)
local getAllRemainingOlderMessages_upvr = require(script.Parent.Messages.Thunks.getAllRemainingOlderMessages)
local getOlderMessages_upvr = require(script.Parent.Messages.NetworkRequests.getOlderMessages)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppChatGetAllMessagesDepth", 100)
local FFlagRenderChatConversationOnlyWhenVisible_upvr = require(AppChat.Flags.FFlagRenderChatConversationOnlyWhenVisible)
local PendingStateConversationPage_upvr = require(script.Parent.PendingState.PendingStateConversationPage)
local ChatConversation_upvr = require(script.Parent.ChatConversation)
local FFlagEnableCreatePartyInChatMoreMenu_upvr = require(AppChat.Flags.FFlagEnableCreatePartyInChatMoreMenu)
function ChatConversationContainer(arg1) -- Line 148
	--[[ Upvalues[72]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_49_upvr (readonly)
		[3]: useAnalytics_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: RoactChatAnalytics_upvr (readonly)
		[6]: useMapDispatch_upvr (readonly)
		[7]: mapDispatchToProps_upvr (readonly)
		[8]: useGetConversationFromId_upvr (readonly)
		[9]: useRecipientIds_upvr (readonly)
		[10]: HttpService_upvr (readonly)
		[11]: useLocalUserId_upvr (readonly)
		[12]: useChatIsVisible_upvr (readonly)
		[13]: useIsChatUserMessagesEnabled_upvr (readonly)
		[14]: FFlagAppChatNavigateLandingWhenDisabled_upvr (readonly)
		[15]: useIsChatEnabled_upvr (readonly)
		[16]: useEffect_upvr (readonly)
		[17]: FFlagAppChatInterventionFocusFix_upvr (readonly)
		[18]: useSignal_upvr (readonly)
		[19]: interventionTreatmentShownSignal_upvr (readonly)
		[20]: Constants_upvr (readonly)
		[21]: UserProfiles_upvr (readonly)
		[22]: getOtherParticipants_upvr (readonly)
		[23]: getConversationTitle_upvr (readonly)
		[24]: useGetUsers_upvr (readonly)
		[25]: useGetUsersTyping_upvr (readonly)
		[26]: selectMessagesPure_upvr (readonly)
		[27]: getOsaState_upvr (readonly)
		[28]: FFlagAppChatEnableOneToOneOSAContextCards_upvr (readonly)
		[29]: EnumMessageTypes_upvr (readonly)
		[30]: EnumCustomEntryTypes_upvr (readonly)
		[31]: FFlagAppChatDisableTypingIndicator_upvr (readonly)
		[32]: GetFFlagEnableAppChatInExperience_upvr (readonly)
		[33]: useIsInExperience_upvr (readonly)
		[34]: InExperienceAppChatExperimentation_upvr (readonly)
		[35]: useLocalization_upvr (readonly)
		[36]: useTelemetry_upvr (readonly)
		[37]: ChatConversationTelemetryLayer_upvr (readonly)
		[38]: ChatConversationTelemetryState_upvr (readonly)
		[39]: useDispatch_upvr (readonly)
		[40]: useIsUserPending_upvr (readonly)
		[41]: AppChatNetworking_upvr (readonly)
		[42]: FFlagAppChatEnableTC_upvr (readonly)
		[43]: useCallbackWithDynamicConversationId_upvr (readonly)
		[44]: Logger_upvr (readonly)
		[45]: FFlagTCUpsellModalEnabled_DEV_upvr (readonly)
		[46]: useKeybind_upvr (readonly)
		[47]: useShouldShowConversationOverlay_upvr (readonly)
		[48]: getFFlagAppChatEnableIntervention_upvr (readonly)
		[49]: useSelector_upvr (readonly)
		[50]: RoduxNetworking_upvr (readonly)
		[51]: useChatTimeoutDetails_upvr (readonly)
		[52]: useEffectOnMount_upvr (readonly)
		[53]: ChatConversationTelemetryEvents_upvr (readonly)
		[54]: ConversationChannels_upvr (readonly)
		[55]: useIsExternalNavigationAvailable_upvr (readonly)
		[56]: EnumScreens_upvr (readonly)
		[57]: Conversation_upvr (readonly)
		[58]: FFlagPartialModalConversationFix_upvr (readonly)
		[59]: GenericDialogType_upvr (readonly)
		[60]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
		[61]: useReplyingToMessage_upvr (readonly)
		[62]: useReplyingToMessageDispatch_upvr (readonly)
		[63]: dependencyArray_upvr (readonly)
		[64]: chatInputBoxDisabledPressedSignal_upvr (readonly)
		[65]: RoactNavigation_upvr (readonly)
		[66]: getAllRemainingOlderMessages_upvr (readonly)
		[67]: getOlderMessages_upvr (readonly)
		[68]: game_DefineFastInt_result1_upvr (readonly)
		[69]: FFlagRenderChatConversationOnlyWhenVisible_upvr (readonly)
		[70]: PendingStateConversationPage_upvr (readonly)
		[71]: ChatConversation_upvr (readonly)
		[72]: FFlagEnableCreatePartyInChatMoreMenu_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_49_upvr, arg1)
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local useGetConversationFromId_upvr_result1_upvw = useGetConversationFromId_upvr(any_join_result1_upvr.conversationId)
	local var38_result1_upvr = useRecipientIds_upvr(useGetConversationFromId_upvr_result1_upvw)
	local pcall_result1, _ = pcall(function() -- Line 159
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: var38_result1_upvr (readonly)
		]]
		return HttpService_upvr:JSONEncode(var38_result1_upvr)
	end)
	local var243_upvr
	if pcall_result1 then
	else
	end
	local var40_result1_upvr_2 = useLocalUserId_upvr()
	local var42_result1 = useIsChatUserMessagesEnabled_upvr()
	if FFlagAppChatNavigateLandingWhenDisabled_upvr then
		local useIsChatEnabled_upvr_result1_upvr = useIsChatEnabled_upvr()
		local tbl_37 = {}
		var243_upvr = useIsChatEnabled_upvr_result1_upvr
		tbl_37[1] = var243_upvr
		tbl_37[2] = any_join_result1_upvr.navigateToChatLanding
		useEffect_upvr(function() -- Line 173
			--[[ Upvalues[2]:
				[1]: useIsChatEnabled_upvr_result1_upvr (readonly)
				[2]: any_join_result1_upvr (readonly)
			]]
			if not useIsChatEnabled_upvr_result1_upvr then
				any_join_result1_upvr.navigateToChatLanding()
			end
		end, tbl_37)
	end
	useIsChatEnabled_upvr_result1_upvr = FFlagAppChatInterventionFocusFix_upvr
	if useIsChatEnabled_upvr_result1_upvr then
		useIsChatEnabled_upvr_result1_upvr = useSignal_upvr
		var243_upvr = {}
		var243_upvr[1] = any_join_result1_upvr.releaseInputBarFocus
		useIsChatEnabled_upvr_result1_upvr(interventionTreatmentShownSignal_upvr, React_upvr.useCallback(function(arg1_17) -- Line 183
			--[[ Upvalues[2]:
				[1]: Constants_upvr (copied, readonly)
				[2]: any_join_result1_upvr (readonly)
			]]
			if arg1_17 == Constants_upvr.TreatmentType.PartyChatNudgeDialog or arg1_17 == Constants_upvr.TreatmentType.PartyChatTimeoutDialog then
				any_join_result1_upvr.releaseInputBarFocus()
			end
		end, var243_upvr))
	end
	useIsChatEnabled_upvr_result1_upvr = UserProfiles_upvr.Hooks.useUserProfilesFetch
	local tbl_2 = {}
	var243_upvr = var40_result1_upvr_2
	tbl_2.userIds = getOtherParticipants_upvr(useGetConversationFromId_upvr_result1_upvw, var243_upvr)
	var243_upvr = UserProfiles_upvr
	tbl_2.query = var243_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds
	useIsChatEnabled_upvr_result1_upvr = useIsChatEnabled_upvr_result1_upvr(tbl_2)
	local var251 = useIsChatEnabled_upvr_result1_upvr
	useIsChatEnabled_upvr_result1_upvr = UserProfiles_upvr.Hooks.useUserProfilesFetch
	local tbl_9 = {}
	local tbl_25 = {}
	var243_upvr = var40_result1_upvr_2
	tbl_25[1] = tostring(var243_upvr)
	tbl_9.userIds = tbl_25
	var243_upvr = UserProfiles_upvr
	tbl_9.query = var243_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds
	useIsChatEnabled_upvr_result1_upvr = useIsChatEnabled_upvr_result1_upvr(tbl_9)
	local var254 = useIsChatEnabled_upvr_result1_upvr
	local data = var251.data
	if data then
		var243_upvr = var251.data
		data = var243_upvr.userProfiles
	end
	if var254.data then
		var243_upvr = UserProfiles_upvr.Selectors.getCombinedNameFromId(var254.data, tostring(var40_result1_upvr_2))
	else
		var243_upvr = ""
	end
	local var52_result1_upvw = getConversationTitle_upvr(useGetConversationFromId_upvr_result1_upvw, data, var243_upvr)
	local useGetUsers_upvr_result1_upvr = useGetUsers_upvr()
	local useGetUsersTyping_upvr_result1_2 = useGetUsersTyping_upvr(any_join_result1_upvr.conversationId)
	var243_upvr = React_upvr
	var243_upvr = {}
	var243_upvr.itemList = {}
	var243_upvr.previousMessagesState = {}
	var243_upvr.previousSendingMessagesState = {}
	var243_upvr.previousMessagesResult = {}
	var243_upvr = React_upvr.useMemo
	local any_useRef_result1_upvr_2 = var243_upvr.useRef(var243_upvr)
	var243_upvr = var243_upvr(function() -- Line 222
		--[[ Upvalues[6]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: selectMessagesPure_upvr (copied, readonly)
			[3]: useGetConversationFromId_upvr_result1_upvw (read and write)
			[4]: any_join_result1_upvr (readonly)
			[5]: useGetUsers_upvr_result1_upvr (readonly)
			[6]: var40_result1_upvr_2 (readonly)
		]]
		any_useRef_result1_upvr_2.current = selectMessagesPure_upvr({
			conversation = useGetConversationFromId_upvr_result1_upvw;
			conversationId = any_join_result1_upvr.conversationId;
			Users = useGetUsers_upvr_result1_upvr;
			localUserId = var40_result1_upvr_2;
		}, any_useRef_result1_upvr_2.current)
		return any_useRef_result1_upvr_2.current.itemList
	end, {useGetConversationFromId_upvr_result1_upvw, any_join_result1_upvr.conversationId, useGetUsers_upvr_result1_upvr, var40_result1_upvr_2})
	local getOsaState_result1_upvr = getOsaState_upvr(useGetConversationFromId_upvr_result1_upvw)
	if FFlagAppChatEnableOneToOneOSAContextCards_upvr then
		local function _() -- Line 236
			--[[ Upvalues[4]:
				[1]: getOsaState_result1_upvr (readonly)
				[2]: var243_upvr (readonly)
				[3]: EnumMessageTypes_upvr (copied, readonly)
				[4]: EnumCustomEntryTypes_upvr (copied, readonly)
			]]
			if getOsaState_result1_upvr.shouldShowOsaCardOnInitialLoad and not getOsaState_result1_upvr.fetchedOldestMessage then
				return {}
			end
			local clone = table.clone(var243_upvr)
			if getOsaState_result1_upvr.shouldShowOsaCardNow then
				table.insert(clone, {
					messageType = EnumMessageTypes_upvr.Custom;
					customEntryType = EnumCustomEntryTypes_upvr.OsaContextCardOneToOne;
					stable_key = EnumCustomEntryTypes_upvr.OsaContextCardOneToOne;
				})
			end
			return clone
		end
		local _ = {var243_upvr, useGetConversationFromId_upvr_result1_upvw, getOsaState_result1_upvr.shouldShowOsaCardOnInitialLoad, getOsaState_result1_upvr.shouldShowOsaCardInConversation, getOsaState_result1_upvr.shouldShowOsaCardNow, getOsaState_result1_upvr.fetchedOldestMessage}
		-- KONSTANTWARNING: GOTO [240] #182
	end
	if useGetUsersTyping_upvr_result1_2[1] and var251.data then
		local _ = UserProfiles_upvr.Selectors.getCombinedNameFromId(var251.data, useGetUsersTyping_upvr_result1_2[1].id)
	else
	end
	if useGetUsersTyping_upvr_result1_2[2] and var251.data then
	else
	end
	if FFlagAppChatDisableTypingIndicator_upvr then
		if #useGetUsersTyping_upvr_result1_2 == 1 and not nil then
		else
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return nil
			end
			if #useGetUsersTyping_upvr_result1_2 == 2 and (not INLINED_2() or not nil) then
			end
		end
	end
	if GetFFlagEnableAppChatInExperience_upvr() then
		local useIsInExperience_upvr_result1_upvr = useIsInExperience_upvr()
	end
	if useIsInExperience_upvr_result1_upvr then
		local _ = false
	elseif GetFFlagEnableAppChatInExperience_upvr() then
	end
	local tbl_36 = {
		chatInputPlaceholder = any_join_result1_upvr.chatInputPlaceholderKey;
		invalidMessageTypeText = any_join_result1_upvr.notImplementedMessageTypeKey;
		messageDefaultNoticeText = any_join_result1_upvr.messageDefaultNoticeKey;
		messageModeratedNoticeText = any_join_result1_upvr.messageModeratedNoticeKey;
		networkErrorText = any_join_result1_upvr.networkErrorTextKey;
		unknownUserText = any_join_result1_upvr.unknownUserTextKey;
	}
	local tbl_24 = {"Feature.Chat.Message.OneUserTyping"}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_24.DISPLAY_NAME = nil
	tbl_36.oneUserTyping = tbl_24
	local tbl_44 = {"Feature.Chat.Message.TwoUsersTyping"}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_44.DISPLAY_NAME_1 = nil
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_44.DISPLAY_NAME_2 = nil
	tbl_36.twoUsersTyping = tbl_44
	tbl_44 = any_join_result1_upvr.severalUsersTyping
	local var274 = tbl_44
	tbl_36.severalUsersTyping = var274
	if InExperienceAppChatExperimentation_upvr.default.variant.ShowPlatformChatNewTitleInUniversalApp then
		var274 = any_join_result1_upvr.connectUnavailableWithUserKey
	else
		var274 = any_join_result1_upvr.chatUnavailableWithUserKey
	end
	tbl_36.bottomModalText = var274
	tbl_36.inputBarDisabledText = any_join_result1_upvr.inputBarDisabledKey
	local useLocalization_upvr_result1_upvr = useLocalization_upvr(tbl_36)
	local useTelemetry_upvr_result1_upvr = useTelemetry_upvr(ChatConversationTelemetryLayer_upvr.Context)
	local any_useMergeState_result1_upvr_2 = ChatConversationTelemetryState_upvr.useMergeState()
	local any_useClearState_result1_upvr = ChatConversationTelemetryState_upvr.useClearState()
	local var66_result1_upvr = useDispatch_upvr()
	if not useGetConversationFromId_upvr_result1_upvw or not useGetConversationFromId_upvr_result1_upvw.moderationType then
		local None_upvr = Cryo_upvr.None
	end
	if not useGetConversationFromId_upvr_result1_upvw or not useGetConversationFromId_upvr_result1_upvw.userPendingStatus then
		local None_upvr_2 = Cryo_upvr.None
	end
	local function var282() -- Line 317
		--[[ Upvalues[4]:
			[1]: any_useMergeState_result1_upvr_2 (readonly)
			[2]: any_join_result1_upvr (readonly)
			[3]: None_upvr (readonly)
			[4]: None_upvr_2 (readonly)
		]]
		any_useMergeState_result1_upvr_2({
			conversationId = any_join_result1_upvr.conversationId;
			moderationType = None_upvr;
			userPendingStatus = None_upvr_2;
		})
	end
	useEffect_upvr(var282, {any_useMergeState_result1_upvr_2, any_join_result1_upvr.conversationId, None_upvr, None_upvr_2})
	var282 = useGetConversationFromId_upvr_result1_upvw
	local var285 = var282
	if not var285 then
		var285 = {}
	end
	local useIsUserPending_upvr_result1_upvr = useIsUserPending_upvr(var285)
	var285 = useGetConversationFromId_upvr_result1_upvw
	local var287_upvr = var285
	if var287_upvr then
		var287_upvr = useGetConversationFromId_upvr_result1_upvw.source
	end
	useEffect_upvr(function() -- Line 327
		--[[ Upvalues[6]:
			[1]: var287_upvr (readonly)
			[2]: useIsUserPending_upvr_result1_upvr (readonly)
			[3]: var66_result1_upvr (readonly)
			[4]: AppChatNetworking_upvr (copied, readonly)
			[5]: any_join_result1_upvr (readonly)
			[6]: useIsInExperience_upvr_result1_upvr (readonly)
		]]
		if var287_upvr ~= "channels" then
		else
			if useIsUserPending_upvr_result1_upvr then
				var66_result1_upvr(AppChatNetworking_upvr.rodux.GetPendingStateModal.API(any_join_result1_upvr.conversationId, useIsInExperience_upvr_result1_upvr)):catch(function(arg1_18) -- Line 333
					warn("GetPendingStateModal error in ChatConversationContainer "..tostring(arg1_18))
				end)
				return
			end
			var66_result1_upvr(AppChatNetworking_upvr.rodux.GetConversationTopModal.API(any_join_result1_upvr.conversationId, useIsInExperience_upvr_result1_upvr)):catch(function(arg1_19) -- Line 339
				warn("GetConversationTopModal error in ChatConversationContainer "..tostring(arg1_19))
			end)
		end
	end, {any_join_result1_upvr.conversationId, var66_result1_upvr, var287_upvr})
	if FFlagAppChatEnableTC_upvr then
		local useCallbackWithDynamicConversationId_upvr_result1_upvr = useCallbackWithDynamicConversationId_upvr(AppChatNetworking_upvr.rodux.GetModalSequence.API, any_join_result1_upvr.conversationId)
		useEffect_upvr(function() -- Line 350
			--[[ Upvalues[5]:
				[1]: useIsUserPending_upvr_result1_upvr (readonly)
				[2]: var66_result1_upvr (readonly)
				[3]: useCallbackWithDynamicConversationId_upvr_result1_upvr (readonly)
				[4]: AppChatNetworking_upvr (copied, readonly)
				[5]: Logger_upvr (copied, readonly)
			]]
			if not useIsUserPending_upvr_result1_upvr then
				var66_result1_upvr(useCallbackWithDynamicConversationId_upvr_result1_upvr({
					modalSequence = AppChatNetworking_upvr.Constants.ModalSequence.ConversationOverlay;
					isInExperience = true;
				})):catch(function(arg1_20) -- Line 355
					--[[ Upvalues[1]:
						[1]: Logger_upvr (copied, readonly)
					]]
					Logger_upvr:warning(`GetModalSequence error in ChatConversationContainer {tostring(arg1_20)}`)
				end)
			end
		end, {var66_result1_upvr, useCallbackWithDynamicConversationId_upvr_result1_upvr, useIsUserPending_upvr_result1_upvr, useIsInExperience_upvr_result1_upvr, None_upvr})
		if FFlagTCUpsellModalEnabled_DEV_upvr then
			useKeybind_upvr({
				keyCode = Enum.KeyCode.L;
				modifierKey = Enum.ModifierKey.Ctrl;
			}, function() -- Line 362
				--[[ Upvalues[3]:
					[1]: Logger_upvr (copied, readonly)
					[2]: var66_result1_upvr (readonly)
					[3]: any_join_result1_upvr (readonly)
				]]
				Logger_upvr:debug("Ctrl + L pressed, showing new TC overlay")
				var66_result1_upvr({
					type = "DEBUG_ShowNewTCOverlay";
					conversationId = any_join_result1_upvr.conversationId;
				})
			end, {var66_result1_upvr, any_join_result1_upvr.conversationId})
		end
		local useShouldShowConversationOverlay_upvr_result1_upvr = useShouldShowConversationOverlay_upvr(any_join_result1_upvr.conversationId)
		useEffect_upvr(function() -- Line 371
			--[[ Upvalues[2]:
				[1]: useShouldShowConversationOverlay_upvr_result1_upvr (readonly)
				[2]: any_join_result1_upvr (readonly)
			]]
			if useShouldShowConversationOverlay_upvr_result1_upvr then
				any_join_result1_upvr.navigateToConversationOverlay()
			end
		end, {useShouldShowConversationOverlay_upvr_result1_upvr, any_join_result1_upvr.conversationId})
	end
	useCallbackWithDynamicConversationId_upvr_result1_upvr = nil
	useShouldShowConversationOverlay_upvr_result1_upvr = nil
	local var75_result1_upvr = getFFlagAppChatEnableIntervention_upvr()
	if var75_result1_upvr then
		if var287_upvr == "channels" then
			var75_result1_upvr = false
		else
			var75_result1_upvr = true
		end
		local var76_result1_upvr_3 = useSelector_upvr(function(arg1_21) -- Line 384
			--[[ Upvalues[4]:
				[1]: var75_result1_upvr (readonly)
				[2]: AppChatNetworking_upvr (copied, readonly)
				[3]: any_join_result1_upvr (readonly)
				[4]: RoduxNetworking_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var306
			if var75_result1_upvr then
				var306 = AppChatNetworking_upvr.rodux.GetChatModerationStatuses.getStatus(arg1_21)
			else
				var306 = AppChatNetworking_upvr.rodux.GetChatModerationStatuses.getStatus(arg1_21, any_join_result1_upvr.conversationId)
			end
			if var306 ~= RoduxNetworking_upvr.Enum.NetworkStatus.NotStarted then
			else
			end
			return true
		end)
		useEffect_upvr(function() -- Line 391
			--[[ Upvalues[5]:
				[1]: var76_result1_upvr_3 (readonly)
				[2]: var66_result1_upvr (readonly)
				[3]: AppChatNetworking_upvr (copied, readonly)
				[4]: var75_result1_upvr (readonly)
				[5]: any_join_result1_upvr (readonly)
			]]
			if var76_result1_upvr_3 then
				local GetChatModerationStatuses = AppChatNetworking_upvr.rodux.GetChatModerationStatuses
				if var75_result1_upvr then
					GetChatModerationStatuses = nil
				else
					GetChatModerationStatuses = {}
					GetChatModerationStatuses[1] = any_join_result1_upvr.conversationId
				end
				var66_result1_upvr(GetChatModerationStatuses.API(GetChatModerationStatuses)):catch(function(arg1_22) -- Line 397
					warn("GetChatModerationStatuses error in ChatConversationContainer "..tostring(arg1_22))
				end)
			end
		end, {any_join_result1_upvr.conversationId, var75_result1_upvr, var66_result1_upvr, var76_result1_upvr_3})
		local useChatTimeoutDetails_upvr_result1 = useChatTimeoutDetails_upvr({
			conversationId = any_join_result1_upvr.conversationId;
			conversationModerationType = None_upvr;
		})
		useCallbackWithDynamicConversationId_upvr_result1_upvr = useChatTimeoutDetails_upvr_result1.isTimedOut
		useShouldShowConversationOverlay_upvr_result1_upvr = useChatTimeoutDetails_upvr_result1.timeoutEndTimestamp
		local var314_upvw = useShouldShowConversationOverlay_upvr_result1_upvr
		local decisionEventId_upvw = useChatTimeoutDetails_upvr_result1.decisionEventId
		local duration_upvw = useChatTimeoutDetails_upvr_result1.duration
	end
	var76_result1_upvr_3 = useEffectOnMount_upvr
	var76_result1_upvr_3(function() -- Line 414
		--[[ Upvalues[3]:
			[1]: useTelemetry_upvr_result1_upvr (readonly)
			[2]: ChatConversationTelemetryEvents_upvr (copied, readonly)
			[3]: var243_upvr (readonly)
		]]
		useTelemetry_upvr_result1_upvr.emit(ChatConversationTelemetryEvents_upvr.ScreenRendered, {
			loadedMessageCount = #var243_upvr;
		})
	end)
	var76_result1_upvr_3 = React_upvr.useCallback
	var76_result1_upvr_3 = var76_result1_upvr_3(function(arg1_23) -- Line 422
		--[[ Upvalues[3]:
			[1]: useTelemetry_upvr_result1_upvr (readonly)
			[2]: ChatConversationTelemetryEvents_upvr (copied, readonly)
			[3]: any_useClearState_result1_upvr (readonly)
		]]
		local tbl_27 = {}
		tbl_27.conversationExitType = arg1_23
		useTelemetry_upvr_result1_upvr.emit(ChatConversationTelemetryEvents_upvr.ScreenExit, tbl_27)
		any_useClearState_result1_upvr()
	end, {useTelemetry_upvr_result1_upvr, any_useClearState_result1_upvr})
	local var322 = var76_result1_upvr_3
	var76_result1_upvr_3 = useGetConversationFromId_upvr_result1_upvw
	local var323 = var76_result1_upvr_3
	if not var323 then
		var323 = {}
	end
	useGetConversationFromId_upvr_result1_upvw = var323
	local var324_upvw = useGetConversationFromId_upvr_result1_upvw
	var323 = false
	local var325 = var323
	if var324_upvw.participantPendingStatus ~= ConversationChannels_upvr.UserPendingStatus.Pending then
		var325 = var42_result1
	end
	local tbl_29_upvr = {EnumScreens_upvr.ViewUserProfile}
	if var324_upvw.conversationType ~= Conversation_upvr.Type.MULTI_USER_CONVERSATION then
		tbl_29_upvr = false
	else
		tbl_29_upvr = true
	end
	local useIsExternalNavigationAvailable_upvr_result1_upvr = useIsExternalNavigationAvailable_upvr(tbl_29_upvr)
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_16) -- Line 151
		--[[ Upvalues[3]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: RoactChatAnalytics_upvr (copied, readonly)
			[3]: any_join_result1_upvr (readonly)
		]]
		useAnalytics_upvr_result1_upvr:navigate(RoactChatAnalytics_upvr.NavigationEvents.ChatConversationProfile)
		any_join_result1_upvr.openViewProfile(arg1_16)
	end, {any_join_result1_upvr.openViewProfile, useAnalytics_upvr_result1_upvr})
	local var76_result1_upvr_4 = useSelector_upvr(function(arg1_24) -- Line 442
		--[[ Upvalues[2]:
			[1]: tbl_29_upvr (readonly)
			[2]: var324_upvw (read and write)
		]]
		local var328 = tbl_29_upvr
		if var328 then
			if var324_upvw.initiator ~= arg1_24.LocalUserId then
				var328 = false
			else
				var328 = true
			end
		end
		return var328
	end)
	if getFFlagAppChatEnableRepliesUI_upvr() then
	end
	useEffect_upvr(function() -- Line 475
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: var52_result1_upvw (read and write)
		]]
		any_join_result1_upvr.updateConversationTitle(var52_result1_upvw)
	end, dependencyArray_upvr(var52_result1_upvw, any_join_result1_upvr.updateConversationTitle))
	if getFFlagAppChatEnableIntervention_upvr() then
		local function _() -- Line 480
			--[[ Upvalues[4]:
				[1]: chatInputBoxDisabledPressedSignal_upvr (copied, readonly)
				[2]: var314_upvw (read and write)
				[3]: decisionEventId_upvw (read and write)
				[4]: duration_upvw (read and write)
			]]
			chatInputBoxDisabledPressedSignal_upvr:fire({
				endTimestamp = var314_upvw;
				decisionEventId = decisionEventId_upvw;
				duration = duration_upvw;
			})
		end
		local _ = {var314_upvw, decisionEventId_upvw, duration_upvw}
	else
	end
	if FFlagPartialModalConversationFix_upvr then
		local navigation = any_join_result1_upvr.navigation
		if navigation then
			navigation = any_join_result1_upvr.navigation.isFocused
			if navigation then
				navigation = any_join_result1_upvr.navigation.isFocused()
			end
		end
		local any_useState_result1_2, any_useState_result2_upvw = React_upvr.useState(navigation)
	end
	if FFlagPartialModalConversationFix_upvr then
		useEffect_upvr(function() -- Line 496
			--[[ Upvalues[3]:
				[1]: any_join_result1_upvr (readonly)
				[2]: RoactNavigation_upvr (copied, readonly)
				[3]: any_useState_result2_upvw (read and write)
			]]
			local navigation_4_upvr = any_join_result1_upvr.navigation
			if navigation_4_upvr then
				navigation_4_upvr = any_join_result1_upvr.navigation.addListener
				if navigation_4_upvr then
					navigation_4_upvr = any_join_result1_upvr.navigation.addListener
					navigation_4_upvr = navigation_4_upvr(RoactNavigation_upvr.Events.WillBlur, function(arg1_26) -- Line 499
						--[[ Upvalues[1]:
							[1]: any_useState_result2_upvw (copied, read and write)
						]]
						if arg1_26 and arg1_26.action then
							if arg1_26.action.params and arg1_26.action.params.isOverlay then
								any_useState_result2_upvw(true)
								return
							end
						end
						any_useState_result2_upvw(false)
					end)
				end
			end
			local navigation_2_upvr = any_join_result1_upvr.navigation
			if navigation_2_upvr then
				navigation_2_upvr = any_join_result1_upvr.navigation.addListener
				if navigation_2_upvr then
					navigation_2_upvr = any_join_result1_upvr.navigation.addListener
					navigation_2_upvr = navigation_2_upvr(RoactNavigation_upvr.Events.WillFocus, function(arg1_27) -- Line 511
						--[[ Upvalues[1]:
							[1]: any_useState_result2_upvw (copied, read and write)
						]]
						any_useState_result2_upvw(true)
					end)
				end
			end
			return function() -- Line 515
				--[[ Upvalues[2]:
					[1]: navigation_4_upvr (readonly)
					[2]: navigation_2_upvr (readonly)
				]]
				if navigation_4_upvr then
					navigation_4_upvr.remove()
				end
				if navigation_2_upvr then
					navigation_2_upvr.remove()
				end
			end
		end, {any_join_result1_upvr.navigation})
	end
	useEffect_upvr(function() -- Line 527
		--[[ Upvalues[7]:
			[1]: getOsaState_result1_upvr (readonly)
			[2]: var66_result1_upvr (readonly)
			[3]: getAllRemainingOlderMessages_upvr (copied, readonly)
			[4]: getOlderMessages_upvr (copied, readonly)
			[5]: any_join_result1_upvr (readonly)
			[6]: game_DefineFastInt_result1_upvr (copied, readonly)
			[7]: useLocalization_upvr_result1_upvr (readonly)
		]]
		if getOsaState_result1_upvr.shouldShowOsaCardOnInitialLoad then
			var66_result1_upvr(getAllRemainingOlderMessages_upvr(getOlderMessages_upvr, any_join_result1_upvr.conversationId, game_DefineFastInt_result1_upvr)):catch(function() -- Line 531
				--[[ Upvalues[2]:
					[1]: any_join_result1_upvr (copied, readonly)
					[2]: useLocalization_upvr_result1_upvr (copied, readonly)
				]]
				any_join_result1_upvr.navigateToToast({
					toastProps = {
						toastContent = {
							toastTitle = useLocalization_upvr_result1_upvr.networkErrorText;
						};
					};
				})
			end)
		end
	end, {getOsaState_result1_upvr.shouldShowOsaCardOnInitialLoad})
	if FFlagPartialModalConversationFix_upvr and not any_useState_result1_2 then
		return nil
	end
	local var357
	if FFlagRenderChatConversationOnlyWhenVisible_upvr and any_join_result1_upvr.isFocused and not any_join_result1_upvr.isFocused() then
		return nil
	end
	if useIsUserPending_upvr_result1_upvr then
		return React_upvr.createElement(PendingStateConversationPage_upvr, {
			conversationId = any_join_result1_upvr.conversationId;
			topBarHeight = any_join_result1_upvr.topBarHeight;
			networkErrorText = useLocalization_upvr_result1_upvr.networkErrorText;
			navigateToToast = any_join_result1_upvr.navigateToToast;
			wideMode = any_join_result1_upvr.wideMode;
			onConversationUnmount = var322;
			navigateBack = any_join_result1_upvr.navigateBack;
			style = any_join_result1_upvr.style;
		})
	end
	local module_4 = {
		conversation = var324_upvw;
		conversationTitle = var52_result1_upvw;
		itemList = var243_upvr;
		localUserId = var40_result1_upvr_2;
	}
	var357 = any_join_result1_upvr.openGameDetailsPage
	module_4.openGameDetailsPage = var357
	function module_4.openViewProfile(arg1_25) -- Line 447
		--[[ Upvalues[9]:
			[1]: useIsExternalNavigationAvailable_upvr_result1_upvr (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr_2 (readonly)
			[4]: FFlagPartialModalConversationFix_upvr (copied, readonly)
			[5]: any_join_result1_upvr (readonly)
			[6]: GenericDialogType_upvr (copied, readonly)
			[7]: useIsUserPending_upvr_result1_upvr (readonly)
			[8]: tbl_29_upvr (readonly)
			[9]: var76_result1_upvr_4 (readonly)
		]]
		if useIsExternalNavigationAvailable_upvr_result1_upvr[EnumScreens_upvr.ViewUserProfile] then
			any_useCallback_result1_upvr_2(arg1_25)
		else
			if FFlagPartialModalConversationFix_upvr then
				local tbl_21 = {
					conversationId = any_join_result1_upvr.conversationId;
				}
				tbl_21.participantId = arg1_25
				local var334 = not useIsUserPending_upvr_result1_upvr
				if var334 then
					var334 = tbl_29_upvr
					if var334 then
						var334 = var76_result1_upvr_4
					end
				end
				tbl_21.showRemoveUserButton = var334
				any_join_result1_upvr.navigateToScreen(GenericDialogType_upvr.ParticipantDialog, tbl_21, true)
				return
			end
			local tbl_26 = {
				conversationId = any_join_result1_upvr.conversationId;
			}
			tbl_26.participantId = arg1_25
			local var336 = not useIsUserPending_upvr_result1_upvr
			if var336 then
				var336 = tbl_29_upvr
				if var336 then
					var336 = var76_result1_upvr_4
				end
			end
			tbl_26.showRemoveUserButton = var336
			any_join_result1_upvr.navigateToScreen(GenericDialogType_upvr.ParticipantDialog, tbl_26)
		end
	end
	var357 = any_join_result1_upvr.getReadingMessagesIsEnabled()
	module_4.readingMessagesIsEnabled = var357
	module_4.Users = useGetUsers_upvr_result1_upvr
	module_4.usersTyping = useGetUsersTyping_upvr_result1_2
	module_4.displayNamesAvailable = false
	module_4.onConversationUnmount = var322
	module_4.recipientIdsSerialized = "[]"
	module_4.chatIsVisible = useChatIsVisible_upvr()
	module_4.chatInputPlaceholder = useLocalization_upvr_result1_upvr.chatInputPlaceholder
	module_4.replyingToMessage = useReplyingToMessage_upvr()
	module_4.replyingToMessageDispatch = useReplyingToMessageDispatch_upvr()
	module_4.shouldShowChatInputBar = var325
	module_4.shouldShowBottomModal = not var325 and var42_result1
	module_4.shouldDisableChatInputBar = useCallbackWithDynamicConversationId_upvr_result1_upvr
	module_4.inputBarDisabledEndTimestampDisplay = var314_upvw
	module_4.onDisabledInputBarActivated = nil
	var357 = getOsaState_result1_upvr.shouldShowOsaCardOnInitialLoad
	if var357 then
		var357 = getOsaState_result1_upvr.fetchedOldestMessage
	end
	module_4.scrollToTopOnInitialOsaLoad = var357
	if FFlagEnableCreatePartyInChatMoreMenu_upvr then
	else
	end
	module_4.navigateToSquadLobby = nil
	return React_upvr.createElement(ChatConversation_upvr, Cryo_upvr.Dictionary.join(any_join_result1_upvr, useMapDispatch_upvr(mapDispatchToProps_upvr), useLocalization_upvr_result1_upvr, module_4))
end
return require(Parent.UniversalAppPolicy).UniversalAppPolicy.connect(function(arg1) -- Line 590
	return {
		viewProfileOnAvatarPressed = arg1.getChatTapConversationThumbnail();
	}
end)(ChatConversationContainer)