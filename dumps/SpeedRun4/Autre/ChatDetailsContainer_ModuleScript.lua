-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:10
-- Luau version 6, Types version 3
-- Time taken: 0.015322 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UserProfiles = require(Parent.UserProfiles)
local tbl_5_upvr = {
	topBarHeight = 0;
	wideMode = false;
	participants = nil;
	isGroupConversation = nil;
	isGroupOwner = nil;
	conversationId = nil;
	conversation = nil;
	navigateBack = function() -- Line 62, Named "navigateBack"
	end;
	navigateToEditChatMembers = function() -- Line 63, Named "navigateToEditChatMembers"
	end;
	navigateToDialog = function() -- Line 64, Named "navigateToDialog"
	end;
	navigateToToast = function() -- Line 65, Named "navigateToToast"
	end;
	navigateToConversation = function() -- Line 66, Named "navigateToConversation"
	end;
	navigateToChatLanding = function() -- Line 67, Named "navigateToChatLanding"
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useIsFriendRenameActive_upvr = require(AppChat.Hooks.useIsFriendRenameActive)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local GetFFlagAppChatRebrandStringUpdates_upvr = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local SquadExperimentation_upvr = require(Parent.SocialExperiments).SquadExperimentation
local LuaAppNavigationContext_upvr = require(AppChat.LuaAppNavigationContext)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useState_upvr = React_upvr.useState
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useIsGroupChatEnabled_upvr = require(AppChat.Hooks.useIsGroupChatEnabled)
local FFlagAppChatNavigateLandingWhenDisabled_upvr = require(AppChat.Flags.FFlagAppChatNavigateLandingWhenDisabled)
local useIsChatEnabled_upvr = require(AppChat.Hooks.useIsChatEnabled)
local useEffect_upvr = React_upvr.useEffect
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeepValue_upvr = require(AppChat.Utils.getDeepValue)
local Conversation_upvr = require(AppChat.Models.Conversation)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local useCallback_upvr = React_upvr.useCallback
local useUserProfilesFetch_upvr = UserProfiles.Hooks.useUserProfilesFetch
local userProfilesCombinedNameAndUsernameByUserIds_upvr = UserProfiles.Queries.userProfilesCombinedNameAndUsernameByUserIds
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local selectChatUserEntryModelList_upvr = require(script.Parent.Selectors.selectChatUserEntryModelList)
local FFlagAppChatRemoveUserProfileTitles_upvr = require(AppChat.Flags.FFlagAppChatRemoveUserProfileTitles)
local getConversationTitle_upvr = require(AppChat.Conversations.getConversationTitle)
local getConversationDisplayTitle_upvr = require(AppChat.SocialLibraries).Conversation.getConversationDisplayTitle
local useIsUserPending_upvr = require(AppChat.Hooks.useIsUserPending)
local ConversationChannels_upvr = require(AppChat.Models.ConversationChannels)
local FFlagAppChatTrustedCommsTransition_upvr = require(AppChat.Flags.FFlagAppChatTrustedCommsTransition)
local Promise_upvr = require(Parent.Promise)
local GenericDialogType_upvr = require(script.Parent.Dialogs.GenericDialogType)
local EventNames_upvr = require(AppChat.Analytics.EventNames)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local useEffectOnMount_upvr = require(Parent.RoactUtils).Hooks.useEffectOnMount
local ChatDetailsPage_upvr = require(script.Parent.ChatDetailsPage)
return function(arg1) -- Line 70
	--[[ Upvalues[37]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useIsFriendRenameActive_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
		[7]: SquadExperimentation_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: LuaAppNavigationContext_upvr (readonly)
		[10]: useDispatch_upvr (readonly)
		[11]: useState_upvr (readonly)
		[12]: useNavigation_upvr (readonly)
		[13]: useIsGroupChatEnabled_upvr (readonly)
		[14]: FFlagAppChatNavigateLandingWhenDisabled_upvr (readonly)
		[15]: useIsChatEnabled_upvr (readonly)
		[16]: useEffect_upvr (readonly)
		[17]: useSelector_upvr (readonly)
		[18]: getDeepValue_upvr (readonly)
		[19]: Conversation_upvr (readonly)
		[20]: AppChatNetworking_upvr (readonly)
		[21]: useCallback_upvr (readonly)
		[22]: useUserProfilesFetch_upvr (readonly)
		[23]: userProfilesCombinedNameAndUsernameByUserIds_upvr (readonly)
		[24]: useAnalytics_upvr (readonly)
		[25]: selectChatUserEntryModelList_upvr (readonly)
		[26]: FFlagAppChatRemoveUserProfileTitles_upvr (readonly)
		[27]: getConversationTitle_upvr (readonly)
		[28]: getConversationDisplayTitle_upvr (readonly)
		[29]: useIsUserPending_upvr (readonly)
		[30]: ConversationChannels_upvr (readonly)
		[31]: FFlagAppChatTrustedCommsTransition_upvr (readonly)
		[32]: Promise_upvr (readonly)
		[33]: GenericDialogType_upvr (readonly)
		[34]: EventNames_upvr (readonly)
		[35]: dependencyArray_upvr (readonly)
		[36]: useEffectOnMount_upvr (readonly)
		[37]: ChatDetailsPage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 119 start (CF ANALYSIS FAILED)
	local var50
	if not var50 then
		var50 = {}
	end
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_5_upvr, var50)
	var50 = useIsFriendRenameActive_upvr()
	local tbl_9 = {}
	local var53_upvr
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		var53_upvr = "Feature.Chat.Label.Details"
	else
		var53_upvr = "Feature.Chat.Label.ChatDetails"
	end
	tbl_9.pageHeaderText = var53_upvr
	var53_upvr = "Feature.Chat.Label.General"
	tbl_9.generalText = var53_upvr
	var53_upvr = "Feature.Chat.Label.NotSet"
	tbl_9.titleNotSetText = var53_upvr
	var53_upvr = "Feature.Chat.Label.Members"
	tbl_9.membersText = var53_upvr
	if var50 then
		var53_upvr = "Feature.Chat.Label.AddConnections"
		-- KONSTANTWARNING: GOTO [43] #36
	end
	-- KONSTANTERROR: [0] 1. Error Block 119 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 35. Error Block 138 start (CF ANALYSIS FAILED)
	var53_upvr = "Feature.Chat.Label.AddFriends"
	tbl_9.addFriendsText = var53_upvr
	var53_upvr = "Feature.Chat.Heading.LeaveGroup"
	tbl_9.leaveGroupText = var53_upvr
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		var53_upvr = "Feature.Chat.Label.GroupName"
	else
		var53_upvr = "Feature.Chat.Label.ChatGroupName"
	end
	tbl_9.chatGroupText = var53_upvr
	var53_upvr = "Common.Presence.Label.Online"
	tbl_9.onlinePresenceText = var53_upvr
	var53_upvr = "Common.Presence.Label.Offline"
	tbl_9.offlinePresenceText = var53_upvr
	var53_upvr = {}
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		if var50 then
		else
		end
	elseif var50 then
	else
	end
	var53_upvr[1] = "Feature.Chat.Message.ToastText"
	var53_upvr.friendNum = 5
	var53_upvr.connectionsNum = 5
	tbl_9.tooManyPeopleText = var53_upvr
	var53_upvr = "Feature.Toast.NetworkingError.SomethingIsWrong"
	tbl_9.networkErrorToastText = var53_upvr
	var53_upvr = "Feature.Chat.Label.ExpandedChatFeatures"
	tbl_9.conversationTypeHeaderText = var53_upvr
	var53_upvr = "Feature.Chat.Label.Available"
	tbl_9.enabledText = var53_upvr
	var53_upvr = "Feature.Chat.Label.Unavailable"
	tbl_9.disabledText = var53_upvr
	var53_upvr = "Feature.Chat.Label.CreateUnfilteredChat"
	tbl_9.createUnfilteredChatText = var53_upvr
	var53_upvr = "Feature.Chat.Description.CreateUnfilteredChatCell"
	tbl_9.createUnfilteredChatSubtitleText = var53_upvr
	local var10_result1_upvr = useLocalization_upvr(tbl_9)
	var53_upvr = React_upvr
	var53_upvr = LuaAppNavigationContext_upvr
	local any_useContext_result1_upvr = var53_upvr.useContext(var53_upvr)
	var53_upvr = useDispatch_upvr()
	local var15_result1, useState_upvr_result2_upvr = useState_upvr(false)
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	if FFlagAppChatNavigateLandingWhenDisabled_upvr then
		local var19_result1_upvr = useIsChatEnabled_upvr()
		useEffect_upvr(function() -- Line 118
			--[[ Upvalues[2]:
				[1]: var19_result1_upvr (readonly)
				[2]: any_join_result1_upvr (readonly)
			]]
			if not var19_result1_upvr then
				any_join_result1_upvr.navigateToChatLanding()
			end
		end, {var19_result1_upvr, any_join_result1_upvr.navigateToChatLanding})
	end
	var19_result1_upvr = useSelector_upvr
	var19_result1_upvr = var19_result1_upvr(function(arg1_2) -- Line 125
		--[[ Upvalues[3]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: any_join_result1_upvr (readonly)
			[3]: Conversation_upvr (copied, readonly)
		]]
		local getDeepValue_upvr_result1_2 = getDeepValue_upvr(arg1_2, `ChatAppReducer.Conversations.{any_join_result1_upvr.conversationId or ""}`)
		if not getDeepValue_upvr_result1_2 then
			getDeepValue_upvr_result1_2 = Conversation_upvr.empty()
		end
		return getDeepValue_upvr_result1_2
	end)
	local var64_upvr = var19_result1_upvr
	local function var65(arg1_3) -- Line 129
		--[[ Upvalues[2]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: any_join_result1_upvr (readonly)
		]]
		return getDeepValue_upvr(arg1_3, `ChatAppReducer.ParticipantMetadata.{any_join_result1_upvr.conversationId or ""}`)
	end
	local useSelector_upvr_result1_2 = useSelector_upvr(var65)
	var65 = var64_upvr
	local var67_upvr = var65
	if var67_upvr then
		var67_upvr = var64_upvr.source
	end
	useEffect_upvr(function() -- Line 134
		--[[ Upvalues[4]:
			[1]: var67_upvr (readonly)
			[2]: var53_upvr (readonly)
			[3]: AppChatNetworking_upvr (copied, readonly)
			[4]: any_join_result1_upvr (readonly)
		]]
		if var67_upvr ~= "channels" then
		else
			var53_upvr(AppChatNetworking_upvr.rodux.GetConversationsParticipantsMetadata.API({any_join_result1_upvr.conversationId})):catch(function() -- Line 140
				warn("Error in ChatDetailsContainer -> GetConversationsParticipantsMetadata")
			end)
		end
	end, {any_join_result1_upvr.conversationId, any_join_result1_upvr.participants, var67_upvr})
	local function var72(arg1_4) -- Line 145
		--[[ Upvalues[1]:
			[1]: getDeepValue_upvr (copied, readonly)
		]]
		local getDeepValue_upvr_result1 = getDeepValue_upvr(arg1_4, "ChatAppReducer.UnfilteredThreads.eligibility")
		if not getDeepValue_upvr_result1 then
			getDeepValue_upvr_result1 = {}
		end
		return getDeepValue_upvr_result1
	end
	local useSelector_upvr_result1 = useSelector_upvr(useCallback_upvr(var72, {}))
	var72 = useSelector_upvr_result1.isIXPEligible
	local var75 = var72
	if var75 then
		var75 = useSelector_upvr_result1.isRolloutEligible
	end
	local var28_result1_upvr = useAnalytics_upvr()
	local var78
	local var79_upvw
	local var80_upvw
	local var81
	local var82_upvw
	local var83
	if var64_upvr then
		local useUserProfilesFetch_upvr_result1_upvr = useUserProfilesFetch_upvr({
			userIds = var64_upvr.participants;
			query = userProfilesCombinedNameAndUsernameByUserIds_upvr;
		})
		var78 = useSelector_upvr(function(arg1_5) -- Line 166
			--[[ Upvalues[3]:
				[1]: useUserProfilesFetch_upvr_result1_upvr (readonly)
				[2]: selectChatUserEntryModelList_upvr (copied, readonly)
				[3]: var64_upvr (readonly)
			]]
			if useUserProfilesFetch_upvr_result1_upvr.data then
				return selectChatUserEntryModelList_upvr(arg1_5, var64_upvr.participants, useUserProfilesFetch_upvr_result1_upvr.data.userProfiles)
			end
			return {}
		end)
		if var64_upvr.conversationType ~= Conversation_upvr.Type.MULTI_USER_CONVERSATION then
			var80_upvw = false
		else
			var80_upvw = true
		end
		var79_upvw = useSelector_upvr(function(arg1_6) -- Line 178
			--[[ Upvalues[2]:
				[1]: var80_upvw (read and write)
				[2]: var64_upvr (readonly)
			]]
			local var87 = var80_upvw
			if var87 then
				if var64_upvr.initiator ~= arg1_6.LocalUserId then
					var87 = false
				else
					var87 = true
				end
			end
			return var87
		end)
		if FFlagAppChatRemoveUserProfileTitles_upvr then
		else
		end
		if useSelector_upvr_result1_2 then
			for i, v in var78 do
				var78[i] = Cryo_upvr.Dictionary.join(v, {
					metadata = useSelector_upvr_result1_2[i];
				})
				local _
			end
		end
		var82_upvw = useIsUserPending_upvr(var64_upvr)
		var81 = var80_upvw and var82_upvw
		if var81 then
		end
		if var64_upvr.moderationType ~= ConversationChannels_upvr.ModerationType.TrustedComms then
			var83 = false
		else
			var83 = true
		end
		if var64_upvr.source ~= "channels" then
		else
		end
	end
	if not var78 or not #var78 then
		local var90_upvr = 0
	end
	if FFlagAppChatTrustedCommsTransition_upvr then
		local _ = false
	elseif useSelector_upvr_result1.isFullyEligible and var80_upvw and not var83 then
	end
	if var83 then
	else
	end
	if var64_upvr.isDefaultTitle then
	end
	local function _(arg1_7) -- Line 212
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.new(function(arg1_8, arg2) -- Line 213
			--[[ Upvalues[1]:
				[1]: arg1_7 (readonly)
			]]
			if 5 < #arg1_7.participants then
				arg2()
			else
				arg1_8()
			end
		end)
	end
	local function var124_upvr(arg1_11) -- Line 309
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		local tbl_2 = {}
		local tbl_3 = {}
		local tbl = {}
		tbl.toastTitle = arg1_11
		tbl_3.toastContent = tbl
		tbl_2.toastProps = tbl_3
		any_join_result1_upvr.navigateToToast(tbl_2)
	end
	local function var128_upvr(arg1_12) -- Line 319
		--[[ Upvalues[9]:
			[1]: var64_upvr (readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: any_join_result1_upvr (readonly)
			[4]: var124_upvr (readonly)
			[5]: var28_result1_upvr (readonly)
			[6]: EventNames_upvr (copied, readonly)
			[7]: var90_upvr (readonly)
			[8]: var79_upvw (read and write)
			[9]: var80_upvw (read and write)
		]]
		Promise_upvr.new(function(arg1_13, arg2) -- Line 213
			--[[ Upvalues[1]:
				[1]: var64_upvr (readonly)
			]]
			if 5 < #var64_upvr.participants then
				arg2()
			else
				arg1_13()
			end
		end):andThen(function() -- Line 320
			--[[ Upvalues[2]:
				[1]: any_join_result1_upvr (copied, readonly)
				[2]: var64_upvr (copied, readonly)
			]]
			any_join_result1_upvr.navigateToEditChatMembers(var64_upvr)
		end, function() -- Line 323
			--[[ Upvalues[2]:
				[1]: var124_upvr (copied, readonly)
				[2]: arg1_12 (readonly)
			]]
			var124_upvr(arg1_12)
		end)
		if var28_result1_upvr then
			var28_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ChatDetailsAddFriendsBtnClicked, {
				conversationId = any_join_result1_upvr.conversationId;
				participantsCount = var90_upvr;
				isGroupOwner = var79_upvw;
				isGroupConversation = var80_upvw;
			})
		end
	end
	if not var64_upvr or not var64_upvr.moderationType then
		local None_upvr_2 = Cryo_upvr.None
	end
	if not var64_upvr or not var64_upvr.userPendingStatus then
		local None_upvr = Cryo_upvr.None
	end
	useEffect_upvr(function() -- Line 339
		--[[ Upvalues[3]:
			[1]: var28_result1_upvr (readonly)
			[2]: None_upvr_2 (readonly)
			[3]: None_upvr (readonly)
		]]
		if var28_result1_upvr then
			var28_result1_upvr.updateInfoForAllEvents({
				moderationType = None_upvr_2;
				userPendingStatus = None_upvr;
			})
		end
	end, {var28_result1_upvr, None_upvr_2, None_upvr})
	if var28_result1_upvr then
		useEffectOnMount_upvr(function() -- Line 349
			--[[ Upvalues[6]:
				[1]: var28_result1_upvr (readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: any_join_result1_upvr (readonly)
				[4]: var64_upvr (readonly)
				[5]: var79_upvw (read and write)
				[6]: var80_upvw (read and write)
			]]
			var28_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ChatDetailsRendered, {
				conversationId = any_join_result1_upvr.conversationId;
				participantsCount = #var64_upvr.participants;
				isGroupOwner = var79_upvw;
				isGroupConversation = var80_upvw;
			})
		end)
	end
	do
		return React_upvr.createElement("ImageButton", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			Active = true;
			AutoButtonColor = false;
		}, {
			ChatDetailsPage = React_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
			}, {
				UIListLayout = React_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
				Content = React_upvr.createElement(ChatDetailsPage_upvr, Cryo_upvr.Dictionary.join({
					navigateBack = any_join_result1_upvr.navigateBack;
					onGroupNameEntryCellActivated = function() -- Line 223
						--[[ Upvalues[2]:
							[1]: any_join_result1_upvr (readonly)
							[2]: GenericDialogType_upvr (copied, readonly)
						]]
						any_join_result1_upvr.navigateToDialog(GenericDialogType_upvr.EditChatGroupNameDialog, {
							conversationId = any_join_result1_upvr.conversationId;
						})
					end;
					onLeaveGroupCellActivated = function() -- Line 228
						--[[ Upvalues[6]:
							[1]: any_join_result1_upvr (readonly)
							[2]: GenericDialogType_upvr (copied, readonly)
							[3]: var28_result1_upvr (readonly)
							[4]: EventNames_upvr (copied, readonly)
							[5]: var90_upvr (readonly)
							[6]: var79_upvw (read and write)
						]]
						any_join_result1_upvr.navigateToDialog(GenericDialogType_upvr.LeaveGroupDialog, {
							conversationId = any_join_result1_upvr.conversationId;
						})
						if var28_result1_upvr then
							var28_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ChatDetailsLeaveGroupBtnClicked, {
								conversationId = any_join_result1_upvr.conversationId;
								participantsCount = var90_upvr;
								isGroupOwner = var79_upvw;
							})
						end
					end;
					onParticipantCellActivated = function(arg1_10) -- Line 301
						--[[ Upvalues[5]:
							[1]: any_join_result1_upvr (readonly)
							[2]: GenericDialogType_upvr (copied, readonly)
							[3]: var82_upvw (read and write)
							[4]: var80_upvw (read and write)
							[5]: var79_upvw (read and write)
						]]
						local tbl_7 = {
							conversationId = any_join_result1_upvr.conversationId;
						}
						tbl_7.participantId = arg1_10
						local var123 = not var82_upvw
						if var123 then
							var123 = var80_upvw
							if var123 then
								var123 = var79_upvw
							end
						end
						tbl_7.showRemoveUserButton = var123
						any_join_result1_upvr.navigateToDialog(GenericDialogType_upvr.ParticipantDialog, tbl_7)
					end;
					onAddFriendsCellActivated = function() -- Line 380, Named "onAddFriendsCellActivated"
						--[[ Upvalues[2]:
							[1]: var128_upvr (readonly)
							[2]: var10_result1_upvr (readonly)
						]]
						return var128_upvr(var10_result1_upvr.tooManyPeopleText)
					end;
					onConversationTypeIconActivated = useCallback_upvr(function() -- Line 240
						--[[ Upvalues[2]:
							[1]: useNavigation_upvr_result1_upvr (readonly)
							[2]: any_useContext_result1_upvr (readonly)
						]]
						if useNavigation_upvr_result1_upvr then
							any_useContext_result1_upvr.navigateToUnfilteredThreadsLearnMore(useNavigation_upvr_result1_upvr.navigate)
						else
							any_useContext_result1_upvr.navigateToUnfilteredThreadsLearnMore()
						end
					end, dependencyArray_upvr(any_useContext_result1_upvr, useNavigation_upvr_result1_upvr));
					onCreateUnfilteredChatCellActivated = useCallback_upvr(function() -- Line 248
						--[[ Upvalues[9]:
							[1]: var28_result1_upvr (readonly)
							[2]: EventNames_upvr (copied, readonly)
							[3]: any_join_result1_upvr (readonly)
							[4]: var90_upvr (readonly)
							[5]: var79_upvw (read and write)
							[6]: useState_upvr_result2_upvr (readonly)
							[7]: var53_upvr (readonly)
							[8]: AppChatNetworking_upvr (copied, readonly)
							[9]: var10_result1_upvr (readonly)
						]]
						if var28_result1_upvr then
							var28_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ChatDetailsCreateUnfilteredChatCellClicked, {
								conversationId = any_join_result1_upvr.conversationId;
								participantsCount = var90_upvr;
								isGroupOwner = var79_upvw;
							})
						end
						useState_upvr_result2_upvr(true)
						var53_upvr(AppChatNetworking_upvr.rodux.DuplicateConversation.API(any_join_result1_upvr.conversationId, "trusted_comms")):andThen(function(arg1_9) -- Line 258
							--[[ Upvalues[2]:
								[1]: any_join_result1_upvr (copied, readonly)
								[2]: var10_result1_upvr (copied, readonly)
							]]
							local responseBody = arg1_9.responseBody
							local var109 = responseBody
							if var109 then
								var109 = responseBody.conversations
								if var109 then
									var109 = responseBody.conversations[1]
									if var109 then
										var109 = responseBody.conversations[1].id
									end
								end
							end
							if var109 then
								any_join_result1_upvr.navigateToConversation(var109)
							else
								any_join_result1_upvr.navigateToToast({
									toastProps = {
										toastContent = {
											toastTitle = var10_result1_upvr.networkErrorToastText;
										};
									};
								})
							end
						end):catch(function() -- Line 276
							--[[ Upvalues[2]:
								[1]: any_join_result1_upvr (copied, readonly)
								[2]: var10_result1_upvr (copied, readonly)
							]]
							any_join_result1_upvr.navigateToToast({
								toastProps = {
									toastContent = {
										toastTitle = var10_result1_upvr.networkErrorToastText;
									};
								};
							})
						end):finally(function() -- Line 285
							--[[ Upvalues[1]:
								[1]: useState_upvr_result2_upvr (copied, readonly)
							]]
							useState_upvr_result2_upvr(false)
						end)
					end, {var53_upvr, useState_upvr_result2_upvr, any_join_result1_upvr.navigateToToast, any_join_result1_upvr.navigateToConversation, var28_result1_upvr, any_join_result1_upvr.conversationId, var90_upvr, var79_upvw});
					conversationTitle = var10_result1_upvr.titleNotSetText;
					conversation = var64_upvr;
					conversationId = any_join_result1_upvr.conversationId;
					participants = var78;
					isGroupConversation = var80_upvw;
					wideMode = any_join_result1_upvr.wideMode;
					shouldHideGroupChatFunctionality = var81;
					shouldShowAddFriends = false;
					shouldShowRevampedUI = var83 or var75;
					shouldShowCreateUnfilteredChat = true;
					conversationTypeText = var10_result1_upvr.disabledText;
					isCreateUnfilteredChatLoading = var15_result1;
					topBarHeight = any_join_result1_upvr.topBarHeight;
					LayoutOrder = 2;
					style = useStyle_upvr();
				}, var10_result1_upvr));
			});
		})
	end
	-- KONSTANTERROR: [42] 35. Error Block 138 end (CF ANALYSIS FAILED)
end