-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:28
-- Luau version 6, Types version 3
-- Time taken: 0.024112 seconds

local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Parent = Squads.Parent
local CrossExperienceVoice = require(Parent.CrossExperienceVoice)
local ExperienceService = require(Parent.ExperienceService)
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local UIBlox = require(Parent.UIBlox)
local SharedFlags = dependencies.SharedFlags
local Images = UIBlox.App.ImageSet.Images
local SquadsCore = dependencies.SquadsCore
local tbl_15_upvr = {
	isInExperience = false;
}
local function onDismiss() -- Line 105
end
tbl_15_upvr.onDismiss = onDismiss
function tbl_15_upvr.openViewProfile() -- Line 106
end
function tbl_15_upvr.openVoiceAbuseReport() -- Line 107
end
tbl_15_upvr.parentChannelId = ""
tbl_15_upvr.userId = ""
local Cryo_upvr = dependencies.Cryo
local React_upvr = dependencies.React
local SquadExternalContractContext_upvr = SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useStore_upvr = dependencies.Hooks.useStore
local useVoiceStatus_upvr = CrossExperienceVoice.Hooks.useVoiceStatus
local FFlagEnableSquadUserCardHoverFix_upvr = SharedFlags.FFlagEnableSquadUserCardHoverFix
local useSquadUserDropdownMenuButtons_upvr = require(Squads.Hooks.useSquadUserDropdownMenuButtons)
local useIsParticipantMutedLocally_upvr = CrossExperienceVoice.Hooks.useIsParticipantMutedLocally
local useLocalization_upvr = dependencies.Hooks.useLocalization
local Constants_upvr = SquadsCore.Common.Constants
local EventNames_upvr = SquadsCore.Analytics.EventNames
local SquadPartySheetActionEnum_upvr = require(Squads.Enums.SquadPartySheetActionEnum)
local FFlagRecordVoiceStatusOnPartyAction_upvr = require(Squads.Flags.FFlagRecordVoiceStatusOnPartyAction)
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local SquadPromptType_upvr = SquadsCore.Enums.SquadPromptType
local GetFFlagEnableCrossExpVoice_upvr = SharedFlags.GetFFlagEnableCrossExpVoice
local useBackgroundExperience_upvr = CrossExperienceVoice.Hooks.useBackgroundExperience
local useParticipants_upvr = CrossExperienceVoice.Hooks.useParticipants
local useIsLocalPlayerPartyVoiceEligible_upvr = SquadsCore.Hooks.useIsLocalPlayerPartyVoiceEligible
local useIsUserPartyVoiceEligible_upvr = SquadsCore.Hooks.useIsUserPartyVoiceEligible
local useIsCurrentSquadPartyVoiceEligible_upvr = SquadsCore.Hooks.useIsCurrentSquadPartyVoiceEligible
local useSelector_upvr = dependencies.Hooks.useSelector
local PresenceType_upvr = dependencies.RoduxPresence.Enums.PresenceType
local GameParams_upvr = ExperienceService.GameParams
local FFlagSquadLaunchExperienceMobileFix_upvr = SharedFlags.FFlagSquadLaunchExperienceMobileFix
local FFlagSplitSquadJoinOriginSources_upvr = SharedFlags.FFlagSplitSquadJoinOriginSources
local SquadLocationEnum_upvr = SquadsCore.Enums.SquadLocationEnum
local ExperienceService_2_upvr = ExperienceService.ExperienceService
local icons_controls_headphoneDeafen_small_upvr = Images["icons/controls/headphoneDeafen_small"]
local icons_common_play_upvr = Images["icons/common/play"]
local icons_actions_leave_upvr = Images["icons/actions/leave"]
local icons_menu_profile_upvr = Images["icons/menu/profile"]
local icons_actions_feedback_upvr = Images["icons/actions/feedback"]
local icons_controls_microphoneMute_upvr = Images["icons/controls/microphoneMute"]
local icons_controls_microphone_upvr = Images["icons/controls/microphone"]
local default_upvr = CrossExperienceVoice.CrossExperienceVoiceManager.default
local getFFlagEnableCrossExpVoiceAbuseReport_upvr = SharedFlags.getFFlagEnableCrossExpVoiceAbuseReport
local FFlagEnableAppChatFocusableFixes_upvr = SharedFlags.FFlagEnableAppChatFocusableFixes
local FocusNavigableSurfaceWrapper_upvr = FocusNavigationUtils.FocusNavigableSurfaceWrapper
local FocusNavigationEventNameEnum_upvr = FocusNavigationUtils.FocusNavigationEventNameEnum
local InputHandlers_upvr = require(Parent.InputHandlers)
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local ModalBottomSheet_upvr = UIBlox.ModalBottomSheet
return function(arg1) -- Line 112
	--[[ Upvalues[46]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_15_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: SquadExternalContractContext_upvr (readonly)
		[5]: useDispatch_upvr (readonly)
		[6]: useLocalUserId_upvr (readonly)
		[7]: useStore_upvr (readonly)
		[8]: useVoiceStatus_upvr (readonly)
		[9]: FFlagEnableSquadUserCardHoverFix_upvr (readonly)
		[10]: useSquadUserDropdownMenuButtons_upvr (readonly)
		[11]: useIsParticipantMutedLocally_upvr (readonly)
		[12]: useLocalization_upvr (readonly)
		[13]: Constants_upvr (readonly)
		[14]: EventNames_upvr (readonly)
		[15]: SquadPartySheetActionEnum_upvr (readonly)
		[16]: FFlagRecordVoiceStatusOnPartyAction_upvr (readonly)
		[17]: dependencyArray_upvr (readonly)
		[18]: SquadPromptType_upvr (readonly)
		[19]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[20]: useBackgroundExperience_upvr (readonly)
		[21]: useParticipants_upvr (readonly)
		[22]: useIsLocalPlayerPartyVoiceEligible_upvr (readonly)
		[23]: useIsUserPartyVoiceEligible_upvr (readonly)
		[24]: useIsCurrentSquadPartyVoiceEligible_upvr (readonly)
		[25]: useSelector_upvr (readonly)
		[26]: PresenceType_upvr (readonly)
		[27]: GameParams_upvr (readonly)
		[28]: FFlagSquadLaunchExperienceMobileFix_upvr (readonly)
		[29]: FFlagSplitSquadJoinOriginSources_upvr (readonly)
		[30]: SquadLocationEnum_upvr (readonly)
		[31]: ExperienceService_2_upvr (readonly)
		[32]: icons_controls_headphoneDeafen_small_upvr (readonly)
		[33]: icons_common_play_upvr (readonly)
		[34]: icons_actions_leave_upvr (readonly)
		[35]: icons_menu_profile_upvr (readonly)
		[36]: icons_actions_feedback_upvr (readonly)
		[37]: icons_controls_microphoneMute_upvr (readonly)
		[38]: icons_controls_microphone_upvr (readonly)
		[39]: default_upvr (readonly)
		[40]: getFFlagEnableCrossExpVoiceAbuseReport_upvr (readonly)
		[41]: FFlagEnableAppChatFocusableFixes_upvr (readonly)
		[42]: FocusNavigableSurfaceWrapper_upvr (readonly)
		[43]: FocusNavigationEventNameEnum_upvr (readonly)
		[44]: InputHandlers_upvr (readonly)
		[45]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[46]: ModalBottomSheet_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 56 start (CF ANALYSIS FAILED)
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_15_upvr, arg1)
	local any_useContext_result1_upvr_2 = React_upvr.useContext(SquadExternalContractContext_upvr)
	local useDispatch_upvr_result1_upvr_2 = useDispatch_upvr()
	local useLocalUserId_upvr_result1_upvr = useLocalUserId_upvr()
	local var19_result1_upvr = useVoiceStatus_upvr()
	local var169_upvr
	if FFlagEnableSquadUserCardHoverFix_upvr then
		local _ = useSquadUserDropdownMenuButtons_upvr(any_union_result1_upvr.userId, any_union_result1_upvr.isInExperience)
	else
	end
	local var22_result1_upvr = useIsParticipantMutedLocally_upvr(tonumber(any_union_result1_upvr.userId) or -1)
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		joinButtonText = "Common.VisitGame.Label.Play";
		viewProfileText = "Feature.Chat.Label.ViewProfile";
		reportUserText = "Feature.Chat.Action.ReportUser";
		removeFromGroupText = "Feature.Chat.Action.RemoveFromGroup";
		voiceIneligibleText = "Feature.Squads.Label.UserDropdownMenuVoiceErrorUserIneligible";
		muteVoiceButtonText = "Feature.Chat.Action.MuteVoice";
		unmuteVoiceButtonText = "Feature.Chat.Action.UnmuteVoice";
	})
	local any_useGetConversationFromId_result1_upvr = any_useContext_result1_upvr_2.useGetConversationFromId(any_union_result1_upvr.parentChannelId)
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 137
		--[[ Upvalues[3]:
			[1]: any_useGetConversationFromId_result1_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: useLocalUserId_upvr_result1_upvr (readonly)
		]]
		local var176 = any_useGetConversationFromId_result1_upvr
		if var176 then
			var176 = false
			if any_useGetConversationFromId_result1_upvr.type == Constants_upvr.CONVERSATION_CHANNEL_GROUP_TYPE then
				if any_useGetConversationFromId_result1_upvr.initiator ~= useLocalUserId_upvr_result1_upvr then
					var176 = false
				else
					var176 = true
				end
			end
		end
		return var176
	end, {any_useGetConversationFromId_result1_upvr, useLocalUserId_upvr_result1_upvr})
	if FFlagRecordVoiceStatusOnPartyAction_upvr then
		-- KONSTANTWARNING: GOTO [105] #83
	end
	-- KONSTANTERROR: [0] 1. Error Block 56 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [104] 82. Error Block 70 start (CF ANALYSIS FAILED)
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function() -- Line 144
		--[[ Upvalues[6]:
			[1]: any_useContext_result1_upvr_2 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr (readonly)
			[4]: SquadPartySheetActionEnum_upvr (copied, readonly)
			[5]: FFlagRecordVoiceStatusOnPartyAction_upvr (copied, readonly)
			[6]: var19_result1_upvr (readonly)
		]]
		local tbl_39 = {
			parentChannelId = any_union_result1_upvr.parentChannelId;
		}
		local ViewProfileButtonClicked_2 = SquadPartySheetActionEnum_upvr.ViewProfileButtonClicked
		tbl_39.actionType = ViewProfileButtonClicked_2
		if FFlagRecordVoiceStatusOnPartyAction_upvr then
			ViewProfileButtonClicked_2 = var19_result1_upvr
		else
			ViewProfileButtonClicked_2 = nil
		end
		tbl_39.voiceStatus = ViewProfileButtonClicked_2
		any_useContext_result1_upvr_2.fireSquadAnalytics(EventNames_upvr.PartySheetAction, tbl_39)
		any_union_result1_upvr.openViewProfile()
	end, dependencyArray_upvr(any_union_result1_upvr.parentChannelId, any_union_result1_upvr.openViewProfile, any_useContext_result1_upvr_2.fireSquadAnalytics, nil))
	local var18_result1_upvr = useStore_upvr()
	if FFlagRecordVoiceStatusOnPartyAction_upvr then
		var169_upvr = var19_result1_upvr
	else
		var169_upvr = nil
	end
	local any_useCallback_result1_upvr_5 = React_upvr.useCallback(function() -- Line 161
		--[[ Upvalues[9]:
			[1]: any_useContext_result1_upvr_2 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr (readonly)
			[4]: SquadPartySheetActionEnum_upvr (copied, readonly)
			[5]: FFlagRecordVoiceStatusOnPartyAction_upvr (copied, readonly)
			[6]: var19_result1_upvr (readonly)
			[7]: var18_result1_upvr (readonly)
			[8]: SquadPromptType_upvr (copied, readonly)
			[9]: useDispatch_upvr_result1_upvr_2 (readonly)
		]]
		local tbl_37 = {
			parentChannelId = any_union_result1_upvr.parentChannelId;
		}
		local RemoveUserDropDownButtonClicked_2 = SquadPartySheetActionEnum_upvr.RemoveUserDropDownButtonClicked
		tbl_37.actionType = RemoveUserDropDownButtonClicked_2
		if FFlagRecordVoiceStatusOnPartyAction_upvr then
			RemoveUserDropDownButtonClicked_2 = var19_result1_upvr
		else
			RemoveUserDropDownButtonClicked_2 = nil
		end
		tbl_37.voiceStatus = RemoveUserDropDownButtonClicked_2
		any_useContext_result1_upvr_2.fireSquadAnalytics(EventNames_upvr.PartySheetAction, tbl_37)
		any_useContext_result1_upvr_2.setSquadPrompt(var18_result1_upvr, {
			promptType = SquadPromptType_upvr.RemoveFromChat;
			onConfirm = function() -- Line 170, Named "onConfirm"
				--[[ Upvalues[7]:
					[1]: any_union_result1_upvr (copied, readonly)
					[2]: any_useContext_result1_upvr_2 (copied, readonly)
					[3]: EventNames_upvr (copied, readonly)
					[4]: SquadPartySheetActionEnum_upvr (copied, readonly)
					[5]: FFlagRecordVoiceStatusOnPartyAction_upvr (copied, readonly)
					[6]: var19_result1_upvr (copied, readonly)
					[7]: useDispatch_upvr_result1_upvr_2 (copied, readonly)
				]]
				if any_union_result1_upvr.userId ~= "" and any_union_result1_upvr.parentChannelId ~= "" then
					local tbl_12 = {
						parentChannelId = any_union_result1_upvr.parentChannelId;
					}
					local RemoveUserDialogButtonClicked = SquadPartySheetActionEnum_upvr.RemoveUserDialogButtonClicked
					tbl_12.actionType = RemoveUserDialogButtonClicked
					if FFlagRecordVoiceStatusOnPartyAction_upvr then
						RemoveUserDialogButtonClicked = var19_result1_upvr
					else
						RemoveUserDialogButtonClicked = nil
					end
					tbl_12.voiceStatus = RemoveUserDialogButtonClicked
					any_useContext_result1_upvr_2.fireSquadAnalytics(EventNames_upvr.PartySheetAction, tbl_12)
					return any_useContext_result1_upvr_2.removeUserFromParentChannel(useDispatch_upvr_result1_upvr_2, any_union_result1_upvr.parentChannelId, any_union_result1_upvr.userId)
				end
				return nil
			end;
		})
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr_2, any_union_result1_upvr.userId, any_union_result1_upvr.parentChannelId, any_useContext_result1_upvr_2.fireSquadAnalytics, any_useContext_result1_upvr_2.setSquadPrompt, any_useContext_result1_upvr_2.removeUserFromParentChannel, var169_upvr))
	if GetFFlagEnableCrossExpVoice_upvr() then
		local var31_result1_upvw = useBackgroundExperience_upvr()
		local useParticipants_upvr_result1 = useParticipants_upvr()
		if not useParticipants_upvr_result1 then
			useParticipants_upvr_result1 = {}
		end
		local var193_upvw = useParticipants_upvr_result1
		var169_upvr = dependencyArray_upvr(var193_upvw)
		local any_useMemo_result1_upvw_3 = React_upvr.useMemo(function() -- Line 207
			--[[ Upvalues[1]:
				[1]: var193_upvw (read and write)
			]]
			local module_5 = {}
			for _, v in pairs(var193_upvw) do
				table.insert(module_5, v.userId)
			end
			return module_5
		end, var169_upvr)
		var169_upvr = dependencyArray_upvr(var31_result1_upvw)
		local any_useMemo_result1_upvw_4 = React_upvr.useMemo(function() -- Line 214
			--[[ Upvalues[1]:
				[1]: var31_result1_upvw (read and write)
			]]
			if var31_result1_upvw then
				return var31_result1_upvw.voiceChannelId
			end
			return nil
		end, var169_upvr)
		var169_upvr = dependencyArray_upvr(var31_result1_upvw)
		local any_useMemo_result1_upvw_5 = React_upvr.useMemo(function() -- Line 217
			--[[ Upvalues[1]:
				[1]: var31_result1_upvw (read and write)
			]]
			if var31_result1_upvw then
				return var31_result1_upvw.voiceSessionId
			end
			return nil
		end, var169_upvr)
		local var208 = FFlagEnableSquadUserCardHoverFix_upvr
		if not var208 then
			local var209
			if any_union_result1_upvr.userId then
				var208 = tonumber(any_union_result1_upvr.userId)
			else
				var208 = nil
			end
			if var208 then
				var169_upvr = useIsUserPartyVoiceEligible_upvr
				local var210 = var208
				var169_upvr = var169_upvr(var210)
				var209 = useIsCurrentSquadPartyVoiceEligible_upvr()
				if var209 ~= true then
					var210 = false
				else
					var210 = true
				end
				var209 = var210
				if var209 then
					var209 = useIsLocalPlayerPartyVoiceEligible_upvr()
					if var209 then
						var209 = not var169_upvr
					end
				end
				local var211_upvw = var209
			end
		end
	end
	var169_upvr = {}
	var169_upvr[1] = any_union_result1_upvr.userId
	var169_upvr = React_upvr.useCallback(function(arg1_4) -- Line 234
		--[[ Upvalues[1]:
			[1]: any_union_result1_upvr (readonly)
		]]
		return arg1_4.Squad.Presence.byUserId[any_union_result1_upvr.userId]
	end, var169_upvr)
	local useSelector_upvr_result1_upvr = useSelector_upvr(var169_upvr)
	var169_upvr = React_upvr.useMemo
	local var215_upvr
	var169_upvr = var169_upvr(function() -- Line 239
		--[[ Upvalues[4]:
			[1]: FFlagEnableSquadUserCardHoverFix_upvr (copied, readonly)
			[2]: var215_upvr (readonly)
			[3]: useSelector_upvr_result1_upvr (readonly)
			[4]: PresenceType_upvr (copied, readonly)
		]]
		if FFlagEnableSquadUserCardHoverFix_upvr then
			local var216 = false
			if table.find(var215_upvr, "JoinButton") ~= nil then
				var216 = useSelector_upvr_result1_upvr
				if var216 then
					var216 = false
					if useSelector_upvr_result1_upvr.userPresenceType == PresenceType_upvr.InGame then
						var216 = useSelector_upvr_result1_upvr.placeId
					end
				end
			end
			return var216
		end
		var216 = useSelector_upvr_result1_upvr
		local var217 = var216
		if var217 then
			var217 = false
			if useSelector_upvr_result1_upvr.userPresenceType == PresenceType_upvr.InGame then
				var217 = useSelector_upvr_result1_upvr.placeId
			end
		end
		return var217
	end, dependencyArray_upvr(useSelector_upvr_result1_upvr, var215_upvr))
	local function var218() -- Line 251
		--[[ Upvalues[9]:
			[1]: var169_upvr (readonly)
			[2]: GameParams_upvr (copied, readonly)
			[3]: any_union_result1_upvr (readonly)
			[4]: useSelector_upvr_result1_upvr (readonly)
			[5]: FFlagSquadLaunchExperienceMobileFix_upvr (copied, readonly)
			[6]: FFlagSplitSquadJoinOriginSources_upvr (copied, readonly)
			[7]: any_useContext_result1_upvr_2 (readonly)
			[8]: SquadLocationEnum_upvr (copied, readonly)
			[9]: ExperienceService_2_upvr (copied, readonly)
		]]
		if var169_upvr then
			if any_union_result1_upvr.isInExperience and FFlagSquadLaunchExperienceMobileFix_upvr then
				game:Shutdown()
			end
			local var219 = "SquadLobby"
			if FFlagSplitSquadJoinOriginSources_upvr then
				if any_useContext_result1_upvr_2.squadLocation == SquadLocationEnum_upvr.UniversalApp then
					var219 = "SquadLobbyFromUA"
				elseif any_useContext_result1_upvr_2.squadLocation == SquadLocationEnum_upvr.InExperience then
					var219 = "SquadLobbyFromInExp"
				end
			end
			ExperienceService_2_upvr:LaunchExperience(GameParams_upvr.fromUserId(any_union_result1_upvr.userId, useSelector_upvr_result1_upvr.placeId), var219, nil)
		end
	end
	local any_useCallback_result1_upvr = React_upvr.useCallback(var218, dependencyArray_upvr(var169_upvr, any_useContext_result1_upvr_2.squadLocation, any_union_result1_upvr.isInExperience, any_union_result1_upvr.userId, useSelector_upvr_result1_upvr))
	var218 = nil
	local var221 = var218
	local var222
	if var222 then
		var222 = React_upvr.useMemo
		var222 = var222(function() -- Line 282
			--[[ Upvalues[19]:
				[1]: icons_controls_headphoneDeafen_small_upvr (copied, readonly)
				[2]: useLocalization_upvr_result1_upvr (readonly)
				[3]: icons_common_play_upvr (copied, readonly)
				[4]: any_useCallback_result1_upvr (readonly)
				[5]: icons_actions_leave_upvr (copied, readonly)
				[6]: any_useCallback_result1_upvr_5 (readonly)
				[7]: icons_menu_profile_upvr (copied, readonly)
				[8]: any_useCallback_result1_upvr_4 (readonly)
				[9]: icons_actions_feedback_upvr (copied, readonly)
				[10]: useLocalUserId_upvr_result1_upvr (readonly)
				[11]: any_union_result1_upvr (readonly)
				[12]: any_useMemo_result1_upvw_4 (read and write)
				[13]: any_useMemo_result1_upvw_5 (read and write)
				[14]: any_useMemo_result1_upvw_3 (read and write)
				[15]: var22_result1_upvr (readonly)
				[16]: icons_controls_microphoneMute_upvr (copied, readonly)
				[17]: icons_controls_microphone_upvr (copied, readonly)
				[18]: default_upvr (copied, readonly)
				[19]: var215_upvr (readonly)
			]]
			local tbl_30 = {
				VoiceIneligibleButton = {
					icon = icons_controls_headphoneDeafen_small_upvr;
					text = useLocalization_upvr_result1_upvr.voiceIneligibleText;
					stayOnActivated = true;
				};
				JoinButton = {
					icon = icons_common_play_upvr;
					text = useLocalization_upvr_result1_upvr.joinButtonText;
					onActivated = any_useCallback_result1_upvr;
				};
				RemoveUserButton = {
					icon = icons_actions_leave_upvr;
					text = useLocalization_upvr_result1_upvr.removeFromGroupText;
					onActivated = any_useCallback_result1_upvr_5;
				};
				ViewProfileButton = {
					icon = icons_menu_profile_upvr;
					text = useLocalization_upvr_result1_upvr.viewProfileText;
					onActivated = any_useCallback_result1_upvr_4;
				};
			}
			local tbl_23 = {
				icon = icons_actions_feedback_upvr;
				text = useLocalization_upvr_result1_upvr.reportUserText;
			}
			local function onActivated() -- Line 307
				--[[ Upvalues[5]:
					[1]: useLocalUserId_upvr_result1_upvr (copied, readonly)
					[2]: any_union_result1_upvr (copied, readonly)
					[3]: any_useMemo_result1_upvw_4 (copied, read and write)
					[4]: any_useMemo_result1_upvw_5 (copied, read and write)
					[5]: any_useMemo_result1_upvw_3 (copied, read and write)
				]]
				any_union_result1_upvr.openSquadVoiceAbuseReport({
					submitterUserId = tostring(useLocalUserId_upvr_result1_upvr);
					abuserUserId = any_union_result1_upvr.userId;
					reportBeginTimestampMs = workspace:GetServerTimeNow() * 1000;
					voiceChannelId = any_useMemo_result1_upvw_4;
					voiceSessionId = any_useMemo_result1_upvw_5;
					voiceUserIds = any_useMemo_result1_upvw_3;
					voiceUserCount = #any_useMemo_result1_upvw_3;
				})
			end
			tbl_23.onActivated = onActivated
			tbl_30.ReportButton = tbl_23
			local tbl_10 = {}
			if var22_result1_upvr then
				onActivated = icons_controls_microphoneMute_upvr
			else
				onActivated = icons_controls_microphone_upvr
			end
			tbl_10.icon = onActivated
			if var22_result1_upvr then
				onActivated = useLocalization_upvr_result1_upvr.unmuteVoiceButtonText
			else
				onActivated = useLocalization_upvr_result1_upvr.muteVoiceButtonText
			end
			tbl_10.text = onActivated
			function onActivated() -- Line 325
				--[[ Upvalues[3]:
					[1]: any_union_result1_upvr (copied, readonly)
					[2]: var22_result1_upvr (copied, readonly)
					[3]: default_upvr (copied, readonly)
				]]
				local tonumber_result1 = tonumber(any_union_result1_upvr.userId)
				if tonumber_result1 then
					if var22_result1_upvr then
						default_upvr:unmuteVoiceParticipant(tonumber_result1)
					else
						default_upvr:muteVoiceParticipant(tonumber_result1)
					end
				end
				warn("Invalid userId: "..tostring(any_union_result1_upvr.userId))
			end
			tbl_10.onActivated = onActivated
			tbl_30.MuteVoiceButton = tbl_10
			onActivated = var215_upvr
			for _, v_2 in onActivated do
				local var237 = tbl_30[v_2]
				if var237 then
					table.insert({}, var237)
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return {}
		end, dependencyArray_upvr(any_union_result1_upvr.userId, any_union_result1_upvr.openSquadVoiceAbuseReport, useLocalization_upvr_result1_upvr.joinButtonText, useLocalization_upvr_result1_upvr.removeFromGroupText, useLocalization_upvr_result1_upvr.reportUserText, useLocalization_upvr_result1_upvr.viewProfileText, useLocalization_upvr_result1_upvr.voiceIneligibleText, useLocalization_upvr_result1_upvr.muteVoiceButtonText, useLocalization_upvr_result1_upvr.unmuteVoiceButtonText, useLocalUserId_upvr_result1_upvr, any_useMemo_result1_upvw_4, any_useMemo_result1_upvw_5, any_useMemo_result1_upvw_3, any_useCallback_result1_upvr_5, var215_upvr, any_useCallback_result1_upvr, any_useCallback_result1_upvr_4, var22_result1_upvr))
		var221 = var222
	else
		var222 = React_upvr.useMemo
		var222 = var222(function() -- Line 375
			--[[ Upvalues[18]:
				[1]: useLocalUserId_upvr_result1_upvr (readonly)
				[2]: any_union_result1_upvr (readonly)
				[3]: getFFlagEnableCrossExpVoiceAbuseReport_upvr (copied, readonly)
				[4]: any_useMemo_result1_upvw_4 (read and write)
				[5]: var211_upvw (read and write)
				[6]: icons_controls_headphoneDeafen_small_upvr (copied, readonly)
				[7]: useLocalization_upvr_result1_upvr (readonly)
				[8]: var169_upvr (readonly)
				[9]: icons_common_play_upvr (copied, readonly)
				[10]: any_useCallback_result1_upvr (readonly)
				[11]: icons_menu_profile_upvr (copied, readonly)
				[12]: any_useCallback_result1_upvr_4 (readonly)
				[13]: icons_actions_feedback_upvr (copied, readonly)
				[14]: any_useMemo_result1_upvw_5 (read and write)
				[15]: any_useMemo_result1_upvw_3 (read and write)
				[16]: any_useMemo_result1_upvr (readonly)
				[17]: icons_actions_leave_upvr (copied, readonly)
				[18]: any_useCallback_result1_upvr_5 (readonly)
			]]
			local var239
			if tostring(useLocalUserId_upvr_result1_upvr) ~= any_union_result1_upvr.userId then
				var239 = false
			else
				var239 = true
			end
			local var51_result1 = getFFlagEnableCrossExpVoiceAbuseReport_upvr()
			if var51_result1 then
				var51_result1 = not not any_useMemo_result1_upvw_4
				if var51_result1 then
					var51_result1 = not var239
				end
			end
			local module = {}
			if var211_upvw then
				table.insert(module, {
					icon = icons_controls_headphoneDeafen_small_upvr;
					text = useLocalization_upvr_result1_upvr.voiceIneligibleText;
					stayOnActivated = true;
				})
			end
			if var169_upvr then
				table.insert(module, {
					icon = icons_common_play_upvr;
					text = useLocalization_upvr_result1_upvr.joinButtonText;
					onActivated = any_useCallback_result1_upvr;
				})
			end
			if not any_union_result1_upvr.isInExperience then
				table.insert(module, {
					icon = icons_menu_profile_upvr;
					text = useLocalization_upvr_result1_upvr.viewProfileText;
					onActivated = any_useCallback_result1_upvr_4;
				})
			end
			if var51_result1 then
				table.insert(module, {
					icon = icons_actions_feedback_upvr;
					text = useLocalization_upvr_result1_upvr.reportUserText;
					onActivated = function() -- Line 412, Named "onActivated"
						--[[ Upvalues[5]:
							[1]: useLocalUserId_upvr_result1_upvr (copied, readonly)
							[2]: any_union_result1_upvr (copied, readonly)
							[3]: any_useMemo_result1_upvw_4 (copied, read and write)
							[4]: any_useMemo_result1_upvw_5 (copied, read and write)
							[5]: any_useMemo_result1_upvw_3 (copied, read and write)
						]]
						any_union_result1_upvr.openSquadVoiceAbuseReport({
							submitterUserId = tostring(useLocalUserId_upvr_result1_upvr);
							abuserUserId = any_union_result1_upvr.userId;
							reportBeginTimestampMs = workspace:GetServerTimeNow() * 1000;
							voiceChannelId = any_useMemo_result1_upvw_4;
							voiceSessionId = any_useMemo_result1_upvw_5;
							voiceUserIds = any_useMemo_result1_upvw_3;
							voiceUserCount = #any_useMemo_result1_upvw_3;
						})
					end;
				})
			end
			if any_useMemo_result1_upvr then
				table.insert(module, {
					icon = icons_actions_leave_upvr;
					text = useLocalization_upvr_result1_upvr.removeFromGroupText;
					onActivated = any_useCallback_result1_upvr_5;
				})
			end
			return module
		end, dependencyArray_upvr(any_union_result1_upvr.isInExperience, any_union_result1_upvr.userId, any_union_result1_upvr.openSquadVoiceAbuseReport, useLocalization_upvr_result1_upvr.joinButtonText, useLocalization_upvr_result1_upvr.removeFromGroupText, useLocalization_upvr_result1_upvr.reportUserText, useLocalization_upvr_result1_upvr.viewProfileText, useLocalization_upvr_result1_upvr.voiceIneligibleText, var211_upvw, useLocalUserId_upvr_result1_upvr, any_useMemo_result1_upvw_4, any_useMemo_result1_upvw_5, any_useMemo_result1_upvw_3, any_useCallback_result1_upvr_5, var169_upvr, any_useMemo_result1_upvr, any_useCallback_result1_upvr, any_useCallback_result1_upvr_4))
		var221 = var222
	end
	var222 = #var221
	if 0 < var222 then
		if FFlagEnableAppChatFocusableFixes_upvr then
			var222 = React_upvr.createElement
			local tbl_9 = {}
			local tbl_25 = {
				bottomGap = 20;
				buttonModels = var221;
			}
			local function onDismiss() -- Line 478
				--[[ Upvalues[1]:
					[1]: any_union_result1_upvr (readonly)
				]]
				any_union_result1_upvr.onDismiss()
			end
			tbl_25.onDismiss = onDismiss
			tbl_25.screenWidth = 400
			tbl_25.showImages = true
			tbl_9[1] = React_upvr.createElement(ModalBottomSheet_upvr, tbl_25)
			var222 = var222(FocusNavigableSurfaceWrapper_upvr, {
				customEventHandlers = {
					[FocusNavigationEventNameEnum_upvr.NavigateBack] = {
						handler = InputHandlers_upvr.onRelease(function(arg1_5) -- Line 464
							--[[ Upvalues[1]:
								[1]: any_union_result1_upvr (readonly)
							]]
							any_union_result1_upvr.onDismiss()
							arg1_5:cancel()
						end);
					};
				};
				isAutoFocusRoot = true;
				isFocusable = true;
				isIsolated = true;
				surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp;
			}, tbl_9)
			local var254 = var222
		else
			var254 = React_upvr.createElement
			var254 = var254(ModalBottomSheet_upvr, {
				bottomGap = 20;
				onDismiss = function() -- Line 487, Named "onDismiss"
					--[[ Upvalues[1]:
						[1]: any_union_result1_upvr (readonly)
					]]
					any_union_result1_upvr.onDismiss()
				end;
				buttonModels = var221;
				screenWidth = 400;
				showImages = true;
			})
		end
		return var254
	end
	var254 = any_union_result1_upvr.onDismiss
	var254()
	var254 = nil
	do
		return var254
	end
	-- KONSTANTERROR: [104] 82. Error Block 70 end (CF ANALYSIS FAILED)
end