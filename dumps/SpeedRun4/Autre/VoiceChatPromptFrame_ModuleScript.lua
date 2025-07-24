-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:43
-- Luau version 6, Types version 3
-- Time taken: 0.017048 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Responsive_upvr = require(CorePackages.Workspace.Packages.Responsive)
local UIBlox_upvr = require(CorePackages.Packages.UIBlox)
local PromptType_upvr = require(script.Parent.Parent.PromptType)
local CoreGui_upvr = game:GetService("CoreGui")
local RobloxGui = CoreGui_upvr:WaitForChild("RobloxGui")
local GetFFlagSupportGamepadNavInVoiceModals_upvr = require(CorePackages.Workspace.Packages.VoiceChat).Flags.GetFFlagSupportGamepadNavInVoiceModals
local GetFFlagEnableInExpVoiceUpsell_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableInExpVoiceUpsell)
local GetFFlagEnableSeamlessVoiceUX_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableSeamlessVoiceUX)
local GetFFlagEnableSeamlessVoiceDataConsentToast_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableSeamlessVoiceDataConsentToast)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local var15
if GetFFlagEnableSeamlessVoiceDataConsentToast_upvr() then
	var15 = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization.new(game:GetService("LocalizationService").RobloxLocaleId)
end
local tbl_2_upvr = {
	[PromptType_upvr.None] = "";
	[PromptType_upvr.NotAudible] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.NotAudible");
	[PromptType_upvr.Permission] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.MicrophonePermission");
	[PromptType_upvr.Retry] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.MicrophonePermission");
	[PromptType_upvr.Place] = "Exceeds Max Players";
	[PromptType_upvr.User] = "Not Eligible for Voice";
	[PromptType_upvr.VoiceChatSuspendedTemporaryAvatarChat] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.MicAndCameraUseSuspended");
	[PromptType_upvr.VoiceChatSuspendedTemporary] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.MicUseSuspended");
	[PromptType_upvr.VoiceChatSuspendedTemporaryB] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.VoiceChatSuspended");
	[PromptType_upvr.VoiceChatSuspendedPermanent] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.VoiceChatSuspended");
	[PromptType_upvr.VoiceLoading] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Connecting");
	[PromptType_upvr.VoiceToxicityModal] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.RememberRules");
	[PromptType_upvr.VoiceToxicityToast] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.RememberRules");
	[PromptType_upvr.VoiceToxicityFeedbackToast] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.ThankYouForFeedback");
	[PromptType_upvr.VoiceChatSuspendedTemporaryToast] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.MicUseSuspended");
	[PromptType_upvr.VoiceConsentDeclinedToast] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.ChangeYourMind");
	[PromptType_upvr.VoiceConsentAcceptedToast] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.JoinedVoiceChat");
	[PromptType_upvr.VoiceConsentModalV1] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.GetVoiceChat");
	[PromptType_upvr.VoiceConsentModalV2] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.VoiceChatWithOthers");
	[PromptType_upvr.VoiceConsentModalV3] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.GetVoiceChat");
	[PromptType_upvr.JoinedVoiceToast] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.JoinedVoiceChat");
	[PromptType_upvr.JoinVoiceSTUX] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.JoinedVoiceChat");
	[PromptType_upvr.LeaveVoice] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.LeaveVoiceChat");
	[PromptType_upvr.JoinVoice] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.JoinedVoiceChatV2");
}
local any_FormatByKey_result1 = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.NeedMicrophoneAccess")
tbl_2_upvr[PromptType_upvr.DevicePermissionsModal] = any_FormatByKey_result1
if GetFFlagEnableSeamlessVoiceDataConsentToast_upvr() then
	any_FormatByKey_result1 = var15:Format("Feature.SettingsHub.Prompt.Title.ImproveVoiceChat")
else
	any_FormatByKey_result1 = nil
end
tbl_2_upvr[PromptType_upvr.VoiceDataConsentOptOutToast] = any_FormatByKey_result1
local tbl_3_upvr = {
	[PromptType_upvr.None] = "";
	[PromptType_upvr.NotAudible] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.NotAudible");
	[PromptType_upvr.Permission] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.MicrophonePermission");
	[PromptType_upvr.Retry] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Retry");
	[PromptType_upvr.Place] = "Spatial voice is only available for places with Max Players of 30 or less.";
	[PromptType_upvr.User] = "This account is not eligible to use Spatial Voice.";
	[PromptType_upvr.VoiceChatSuspendedTemporary] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Microphone");
	[PromptType_upvr.VoiceChatSuspendedTemporaryAvatarChat] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.MicAndCamera");
	[PromptType_upvr.VoiceChatSuspendedTemporaryB] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.TemporaryVoiceBan1");
	[PromptType_upvr.VoiceChatSuspendedPermanent] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Revoked");
	[PromptType_upvr.VoiceLoading] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Connecting");
	[PromptType_upvr.VoiceToxicityModal] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.VoiceToxicityModal");
	[PromptType_upvr.VoiceToxicityToast] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.VoiceToxicityToast");
	[PromptType_upvr.VoiceToxicityFeedbackToast] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.ThanksForLettingUsKnow");
	[PromptType_upvr.VoiceChatSuspendedTemporaryToast] = function(arg1) -- Line 157
		--[[ Upvalues[1]:
			[1]: RobloxTranslator_upvr (readonly)
		]]
		local module_3 = {}
		module_3.dateTime = arg1
		return RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Description.ChatWithVoiceDisabledUntil", module_3)
	end;
	[PromptType_upvr.VoiceConsentDeclinedToast] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.JoinVoiceLater");
	[PromptType_upvr.VoiceConsentAcceptedToast] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.MuteAnyoneAnytime");
	[PromptType_upvr.VoiceConsentModalV1] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.InExpVoiceUpsell1");
	[PromptType_upvr.VoiceConsentModalV2] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.InExpVoiceUpsell2");
	[PromptType_upvr.VoiceConsentModalV3] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.InExpVoiceUpsell2");
	[PromptType_upvr.JoinedVoiceToast] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.DisconnectOrMute");
	[PromptType_upvr.JoinVoiceSTUX] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.DisconnectOrMuteHere");
	[PromptType_upvr.DevicePermissionsModal] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.AllowMicrophoneAccess");
}
if GetFFlagEnableSeamlessVoiceDataConsentToast_upvr() then
else
end
tbl_3_upvr[PromptType_upvr.VoiceDataConsentOptOutToast] = nil
if game:GetService("RunService"):IsStudio() then
	tbl_2_upvr[PromptType_upvr.Place] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Place")
	tbl_2_upvr[PromptType_upvr.User] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.User")
	tbl_3_upvr[PromptType_upvr.Place] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Place")
	tbl_3_upvr[PromptType_upvr.User] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.User")
end
local function _(arg1) -- Line 207, Named "PromptTypeIsBan"
	--[[ Upvalues[1]:
		[1]: PromptType_upvr (readonly)
	]]
	local var23 = true
	if arg1 ~= PromptType_upvr.VoiceChatSuspendedPermanent then
		var23 = true
		if arg1 ~= PromptType_upvr.VoiceChatSuspendedTemporary then
			var23 = true
			if arg1 ~= PromptType_upvr.VoiceChatSuspendedTemporaryAvatarChat then
				if arg1 ~= PromptType_upvr.VoiceChatSuspendedTemporaryB then
					var23 = false
				else
					var23 = true
				end
			end
		end
	end
	return var23
end
local function _(arg1) -- Line 214, Named "IsModalNudge"
	--[[ Upvalues[1]:
		[1]: PromptType_upvr (readonly)
	]]
	local var24
	if arg1 ~= PromptType_upvr.VoiceToxicityModal then
		var24 = false
	else
		var24 = true
	end
	return var24
end
local function _(arg1) -- Line 218, Named "IsVoiceConsentModal"
	--[[ Upvalues[1]:
		[1]: PromptType_upvr (readonly)
	]]
	local var25 = true
	if arg1 ~= PromptType_upvr.VoiceConsentModalV1 then
		var25 = true
		if arg1 ~= PromptType_upvr.VoiceConsentModalV2 then
			if arg1 ~= PromptType_upvr.VoiceConsentModalV3 then
				var25 = false
			else
				var25 = true
			end
		end
	end
	return var25
end
local function _(arg1) -- Line 224, Named "IsDevicePermissionsModal"
	--[[ Upvalues[1]:
		[1]: PromptType_upvr (readonly)
	]]
	local var26
	if arg1 ~= PromptType_upvr.DevicePermissionsModal then
		var26 = false
	else
		var26 = true
	end
	return var26
end
local function _(arg1) -- Line 228, Named "PromptTypeIsModal"
	--[[ Upvalues[1]:
		[1]: PromptType_upvr (readonly)
	]]
	local var28 = true
	if arg1 ~= PromptType_upvr.VoiceChatSuspendedPermanent then
		var28 = true
		if arg1 ~= PromptType_upvr.VoiceChatSuspendedTemporary then
			var28 = true
			if arg1 ~= PromptType_upvr.VoiceChatSuspendedTemporaryAvatarChat then
				if arg1 ~= PromptType_upvr.VoiceChatSuspendedTemporaryB then
					var28 = false
				else
					var28 = true
				end
			end
		end
	end
	if not var28 then
		if arg1 ~= PromptType_upvr.VoiceToxicityModal then
			var28 = false
		else
			var28 = true
		end
		if not var28 then
			var28 = true
			if arg1 ~= PromptType_upvr.VoiceConsentModalV1 then
				var28 = true
				if arg1 ~= PromptType_upvr.VoiceConsentModalV2 then
					if arg1 ~= PromptType_upvr.VoiceConsentModalV3 then
						var28 = false
					else
						var28 = true
					end
				end
			end
			if not var28 then
				if arg1 ~= PromptType_upvr.DevicePermissionsModal then
				else
				end
			end
		end
	end
	return true
end
local function _(arg1) -- Line 235, Named "PromptTypeIsVoiceConsent"
	--[[ Upvalues[1]:
		[1]: PromptType_upvr (readonly)
	]]
	local var29 = true
	if arg1 ~= PromptType_upvr.VoiceConsentDeclinedToast then
		if arg1 ~= PromptType_upvr.VoiceConsentAcceptedToast then
			var29 = false
		else
			var29 = true
		end
	end
	return var29
end
local function _(arg1) -- Line 239, Named "PromptTypeIsVoiceDataConsent"
	--[[ Upvalues[1]:
		[1]: PromptType_upvr (readonly)
	]]
	local var30
	if arg1 ~= PromptType_upvr.VoiceDataConsentOptOutToast then
		var30 = false
	else
		var30 = true
	end
	return var30
end
local function _(arg1) -- Line 243, Named "PromptTypeIsConnectDisconnectToast"
	--[[ Upvalues[1]:
		[1]: PromptType_upvr (readonly)
	]]
	local var31 = true
	if arg1 ~= PromptType_upvr.JoinVoice then
		if arg1 ~= PromptType_upvr.LeaveVoice then
			var31 = false
		else
			var31 = true
		end
	end
	return var31
end
local function _(arg1) -- Line 247, Named "ShouldShowBannedUntil"
	--[[ Upvalues[1]:
		[1]: PromptType_upvr (readonly)
	]]
	local var32 = true
	if arg1 ~= PromptType_upvr.VoiceChatSuspendedTemporary then
		var32 = true
		if arg1 ~= PromptType_upvr.VoiceChatSuspendedTemporaryAvatarChat then
			var32 = true
			if arg1 ~= PromptType_upvr.VoiceChatSuspendedTemporaryToast then
				if arg1 ~= PromptType_upvr.VoiceChatSuspendedTemporaryB then
					var32 = false
				else
					var32 = true
				end
			end
		end
	end
	return var32
end
local function _(arg1) -- Line 254, Named "ShouldShowSecondaryButton"
	--[[ Upvalues[1]:
		[1]: PromptType_upvr (readonly)
	]]
	local var33 = true
	if arg1 ~= PromptType_upvr.VoiceChatSuspendedTemporaryB then
		if arg1 ~= PromptType_upvr.VoiceToxicityModal then
			var33 = false
		else
			var33 = true
		end
	end
	return var33
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("VoiceChatPromptFrame")
any_extend_result1.validateProps = t.strictInterface({
	promptSignal = t.optional(t.RBXScriptSignal);
	errorText = t.optional(t.string);
	bannedUntil = t.optional(t.string);
	onContinueFunc = t.optional(t.callback);
	onPrimaryActivated = t.optional(t.callback);
	onSecondaryActivated = t.optional(t.callback);
	onReadyForSignal = t.optional(t.callback);
	Analytics = t.optional(t.table);
	VoiceChatServiceManager = t.optional(t.table);
	showNewContent = t.optional(t.boolean);
	showCheckbox = t.optional(t.boolean);
	showDataConsentToast = t.optional(t.boolean);
	policyMapper = t.optional(t.callback);
	appStyle = UIBlox_upvr.Style.Validator.validateStyle;
	settingsAppAvailable = t.optional(t.boolean);
	UserInputService = t.optional(t.table);
	lastInput = t.optional(t.string);
})
local GetFFlagEnableInExpVoiceConsentAnalytics_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableInExpVoiceConsentAnalytics)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local GetFFlagSendDevicePermissionsModalAnalytics_upvr = require(RobloxGui.Modules.Flags.GetFFlagSendDevicePermissionsModalAnalytics)
local Images_upvr = UIBlox_upvr.App.ImageSet.Images
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("VoiceChatOnlyReportVoiceBans", false)
function any_extend_result1.init(arg1) -- Line 279
	--[[ Upvalues[16]:
		[1]: PromptType_upvr (readonly)
		[2]: GetFFlagSupportGamepadNavInVoiceModals_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
		[6]: tbl_3_upvr (readonly)
		[7]: GetFFlagEnableInExpVoiceConsentAnalytics_upvr (readonly)
		[8]: game_GetEngineFeature_result1_upvr (readonly)
		[9]: RbxAnalyticsService_upvr (readonly)
		[10]: GetFFlagSendDevicePermissionsModalAnalytics_upvr (readonly)
		[11]: GetFFlagEnableInExpVoiceUpsell_upvr (readonly)
		[12]: GetFFlagEnableSeamlessVoiceUX_upvr (readonly)
		[13]: Images_upvr (readonly)
		[14]: GetFFlagEnableSeamlessVoiceDataConsentToast_upvr (readonly)
		[15]: ContextActionService_upvr (readonly)
		[16]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local tbl = {
		Theme = arg1.props.appStyle.Theme;
		Font = arg1.props.appStyle.Font;
	}
	arg1.promptStyle = tbl
	tbl = {}
	local var43 = tbl
	var43.screenSize = Vector2.new(0, 0)
	var43.promptType = PromptType_upvr.None
	var43.toastContent = nil
	var43.banEnd = ""
	var43.showPrompt = true
	arg1.state = var43
	if GetFFlagSupportGamepadNavInVoiceModals_upvr() then
		var43 = Roact_upvr.createRef()
	else
		var43 = nil
	end
	arg1.ref = var43
	if arg1.props.showNewContent then
		local any_FormatByKey_result1_3 = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.MicUseSuspended")
		tbl_2_upvr[PromptType_upvr.VoiceChatSuspendedTemporary] = any_FormatByKey_result1_3
		tbl_2_upvr[PromptType_upvr.VoiceChatSuspendedPermanent] = any_FormatByKey_result1_3
		tbl_3_upvr[PromptType_upvr.VoiceChatSuspendedTemporary] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.TemporarySuspension2")
	end
	function arg1.onScreenSizeChanged(arg1_2) -- Line 303
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.screenSize ~= arg1_2.AbsoluteSize then
			arg1:setState({
				screenSize = arg1_2.AbsoluteSize;
			})
		end
	end
	function arg1.promptSignalCallback(arg1_3) -- Line 311
		--[[ Upvalues[14]:
			[1]: PromptType_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: GetFFlagEnableInExpVoiceConsentAnalytics_upvr (copied, readonly)
			[4]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[5]: RbxAnalyticsService_upvr (copied, readonly)
			[6]: GetFFlagSendDevicePermissionsModalAnalytics_upvr (copied, readonly)
			[7]: tbl_2_upvr (copied, readonly)
			[8]: tbl_3_upvr (copied, readonly)
			[9]: GetFFlagEnableInExpVoiceUpsell_upvr (copied, readonly)
			[10]: GetFFlagEnableSeamlessVoiceUX_upvr (copied, readonly)
			[11]: Images_upvr (copied, readonly)
			[12]: GetFFlagEnableSeamlessVoiceDataConsentToast_upvr (copied, readonly)
			[13]: RobloxTranslator_upvr (copied, readonly)
			[14]: Roact_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var48
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
		var48 = true
		-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 9. Error Block 3 start (CF ANALYSIS FAILED)
		var48 = true
		-- KONSTANTERROR: [12] 9. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 13. Error Block 96 start (CF ANALYSIS FAILED)
		if arg1_3 ~= PromptType_upvr.VoiceChatSuspendedTemporaryB then
			var48 = false
		else
			var48 = true
		end
		-- KONSTANTERROR: [18] 13. Error Block 96 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 18. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 18. Error Block 7 end (CF ANALYSIS FAILED)
	end
	function arg1.closeVoiceBanPrompt() -- Line 407
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: ContextActionService_upvr (copied, readonly)
			[3]: PromptType_upvr (copied, readonly)
			[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
		arg1:setState({
			showPrompt = false;
		})
		local var51
		if var51 then
			var51 = arg1.props.onContinueFunc
			var51()
		end
		var51 = ContextActionService_upvr:UnbindCoreAction
		var51("CloseVoiceBanPrompt")
		if arg1.state.promptType ~= PromptType_upvr.VoiceChatSuspendedTemporaryB then
			var51 = false
		else
			var51 = true
		end
		-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [92] 65. Error Block 19 start (CF ANALYSIS FAILED)
		arg1.props.VoiceChatServiceManager:reportBanMessage("Acknowledged")
		do
			return
		end
		-- KONSTANTERROR: [92] 65. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [102] 72. Error Block 30 start (CF ANALYSIS FAILED)
		if not var51 then
			if arg1.props.Analytics then
				arg1.props.Analytics:reportBanMessageEvent("Acknowledged")
			end
			if arg1.props.VoiceChatServiceManager then
				arg1.props.VoiceChatServiceManager:reportBanMessage("Acknowledged")
			end
		end
		-- KONSTANTERROR: [102] 72. Error Block 30 end (CF ANALYSIS FAILED)
	end
	function arg1.checkInputStateForClosePrompt(arg1_4, arg2, arg3) -- Line 441
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			arg1.closeVoiceBanPrompt()
		end
	end
	function arg1.handlePrimayActivated() -- Line 447
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.closeVoiceBanPrompt()
		if arg1.props.onPrimaryActivated then
			arg1.props.onPrimaryActivated()
		end
	end
	function arg1.handleSecondaryActivated() -- Line 454
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.closeVoiceBanPrompt()
		if arg1.props.onSecondaryActivated then
			arg1.props.onSecondaryActivated()
		end
	end
end
local GetFFlagEnableVoicePromptReasonText_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableVoicePromptReasonText)
local GetFFlagShowDevicePermissionsModal_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagShowDevicePermissionsModal
local GetFFlagEnableVoiceNudge_upvr = require(require(CorePackages.Workspace.Packages.VoiceChatCore).Flags.GetFFlagEnableVoiceNudge)
local TextService_upvr = game:GetService("TextService")
local any_FormatByKey_result1_upvr_3 = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.EffectiveUntil")
local any_FormatByKey_result1_upvr = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.TemporaryVoiceBan2")
local any_FormatByKey_result1_2_upvr = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.FutureViolations")
local Assets_upvr = require(script.Parent.Parent.Parent.InGameMenu.Resources.Assets)
local Button_upvr = UIBlox_upvr.App.Button.Button
local ButtonType_upvr = UIBlox_upvr.App.Button.Enum.ButtonType
local any_FormatByKey_result1_upvr_2 = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.GotIt")
local any_FormatByKey_result1_upvr_5 = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Understand")
local any_FormatByKey_result1_upvr_4 = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.IncorrectNudge")
local DevicePermissionsModal_upvr = require(script.Parent.DevicePermissionsModal)
local UserInputService_upvr = game:GetService("UserInputService")
local VoiceChatConsentModal_upvr = require(script.Parent.VoiceChatConsentModal)
local VoiceChatTooltip_upvr = require(script.Parent.VoiceChatTooltip)
local GetFIntVoiceToxicityToastDurationSeconds_upvr = require(RobloxGui.Modules.Flags.GetFIntVoiceToxicityToastDurationSeconds)
local GetFIntVoiceJoinM3ToastDurationSeconds_upvr = require(RobloxGui.Modules.Flags.GetFIntVoiceJoinM3ToastDurationSeconds)
local Toast_upvr = UIBlox_upvr.App.Dialog.Toast
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
function any_extend_result1.render(arg1) -- Line 462
	--[[ Upvalues[31]:
		[1]: GetFFlagEnableVoicePromptReasonText_upvr (readonly)
		[2]: PromptType_upvr (readonly)
		[3]: GetFFlagEnableInExpVoiceUpsell_upvr (readonly)
		[4]: GetFFlagShowDevicePermissionsModal_upvr (readonly)
		[5]: GetFFlagEnableVoiceNudge_upvr (readonly)
		[6]: TextService_upvr (readonly)
		[7]: any_FormatByKey_result1_upvr_3 (readonly)
		[8]: any_FormatByKey_result1_upvr (readonly)
		[9]: any_FormatByKey_result1_2_upvr (readonly)
		[10]: GetFFlagSupportGamepadNavInVoiceModals_upvr (readonly)
		[11]: Roact_upvr (readonly)
		[12]: UIBlox_upvr (readonly)
		[13]: Assets_upvr (readonly)
		[14]: Button_upvr (readonly)
		[15]: ButtonType_upvr (readonly)
		[16]: any_FormatByKey_result1_upvr_2 (readonly)
		[17]: any_FormatByKey_result1_upvr_5 (readonly)
		[18]: any_FormatByKey_result1_upvr_4 (readonly)
		[19]: DevicePermissionsModal_upvr (readonly)
		[20]: tbl_2_upvr (readonly)
		[21]: tbl_3_upvr (readonly)
		[22]: UserInputService_upvr (readonly)
		[23]: VoiceChatConsentModal_upvr (readonly)
		[24]: CoreGui_upvr (readonly)
		[25]: GetFFlagEnableSeamlessVoiceUX_upvr (readonly)
		[26]: VoiceChatTooltip_upvr (readonly)
		[27]: GetFIntVoiceToxicityToastDurationSeconds_upvr (readonly)
		[28]: GetFIntVoiceJoinM3ToastDurationSeconds_upvr (readonly)
		[29]: GetFFlagEnableSeamlessVoiceDataConsentToast_upvr (readonly)
		[30]: Toast_upvr (readonly)
		[31]: ExternalEventConnection_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 218 start (CF ANALYSIS FAILED)
	if not GetFFlagEnableVoicePromptReasonText_upvr() or not arg1.props.errorText then
	end
	if arg1.state.promptType ~= PromptType_upvr.VoiceToxicityModal then
	else
	end
	if arg1.state.promptType ~= PromptType_upvr.VoiceToxicityToast then
		-- KONSTANTWARNING: GOTO [31] #22
	end
	-- KONSTANTERROR: [0] 1. Error Block 218 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 21. Error Block 224 start (CF ANALYSIS FAILED)
	if arg1.state.promptType ~= PromptType_upvr.VoiceChatSuspendedTemporaryB then
	else
	end
	-- KONSTANTERROR: [30] 21. Error Block 224 end (CF ANALYSIS FAILED)
end
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1.didUpdate(arg1) -- Line 777
	--[[ Upvalues[3]:
		[1]: GetFFlagSupportGamepadNavInVoiceModals_upvr (readonly)
		[2]: Responsive_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local GetFFlagSupportGamepadNavInVoiceModals_upvr_result1 = GetFFlagSupportGamepadNavInVoiceModals_upvr()
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 21. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 21. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 24. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 24. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 29. Error Block 12 start (CF ANALYSIS FAILED)
	if GuiService_upvr.SelectedCoreObject then
		GuiService_upvr.SelectedCoreObject = nil
	end
	-- KONSTANTERROR: [41] 29. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 35. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 35. Error Block 11 end (CF ANALYSIS FAILED)
end
function any_extend_result1.didMount(arg1) -- Line 809
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	if arg1.props.onReadyForSignal then
		arg1.props.onReadyForSignal()
	end
	ContextActionService_upvr:BindCoreAction("CloseVoiceBanPrompt", arg1.checkInputStateForClosePrompt, false, Enum.KeyCode.ButtonA)
	ContextActionService_upvr:BindCoreAction("CloseVoiceBanPrompt", arg1.checkInputStateForClosePrompt, false, Enum.KeyCode.ButtonB)
end
local useStyle_upvr = UIBlox_upvr.Core.Style.useStyle
local useLastInput_upvr = Responsive_upvr.useLastInput
local var83_upvw = require(script.Parent.Parent.Parent.InGameMenu.InGameMenuPolicy).connect(function(arg1, arg2) -- Line 827
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableInExpVoiceUpsell_upvr (readonly)
	]]
	local module = {}
	local any_getGameInfoShowChatFeatures_result1 = arg1.getGameInfoShowChatFeatures()
	module.showNewContent = any_getGameInfoShowChatFeatures_result1
	if GetFFlagEnableInExpVoiceUpsell_upvr() then
		any_getGameInfoShowChatFeatures_result1 = arg1.getDisplayCheckboxInVoiceConsent()
	else
		any_getGameInfoShowChatFeatures_result1 = true
	end
	module.showCheckbox = any_getGameInfoShowChatFeatures_result1
	if arg1.getDisplayCheckboxInVoiceConsent() == nil then
		any_getGameInfoShowChatFeatures_result1 = false
	else
		any_getGameInfoShowChatFeatures_result1 = arg1.getDisplayCheckboxInVoiceConsent()
	end
	module.showDataConsentToast = any_getGameInfoShowChatFeatures_result1
	return module
end)(any_extend_result1)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local function WrappedVoiceChatPromptFrame_upvr(arg1) -- Line 837, Named "WrappedVoiceChatPromptFrame"
	--[[ Upvalues[6]:
		[1]: useStyle_upvr (readonly)
		[2]: GetFFlagSupportGamepadNavInVoiceModals_upvr (readonly)
		[3]: useLastInput_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: var83_upvw (read and write)
		[6]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var85
	if GetFFlagSupportGamepadNavInVoiceModals_upvr() then
		var85 = useLastInput_upvr()
	else
		var85 = nil
	end
	local module_2 = {
		appStyle = useStyle_upvr();
	}
	if GetFFlagSupportGamepadNavInVoiceModals_upvr() then
	else
	end
	module_2.lastInput = nil
	return Roact_upvr.createElement(var83_upvw, Cryo_upvr.Dictionary.join(arg1, module_2))
end
local renderWithCoreScriptsStyleProvider_upvr = require(script.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)
return function(arg1) -- Line 848
	--[[ Upvalues[3]:
		[1]: renderWithCoreScriptsStyleProvider_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: WrappedVoiceChatPromptFrame_upvr (readonly)
	]]
	return renderWithCoreScriptsStyleProvider_upvr({Roact_upvr.createElement(WrappedVoiceChatPromptFrame_upvr, arg1)})
end