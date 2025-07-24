-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:52
-- Luau version 6, Types version 3
-- Time taken: 0.206839 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
-- KONSTANTERROR: [0] 1. Error Block 40 start (CF ANALYSIS FAILED)
local CoreGui = game:GetService("CoreGui")
local CorePackages_3_upvr = game:GetService("CorePackages")
local RobloxGui_upvr = CoreGui:WaitForChild("RobloxGui")
local any_IsEnabled_result1_upvr = require(RobloxGui_upvr.Modules.TenFootInterface):IsEnabled()
local Utility_upvr = require(RobloxGui_upvr.Modules.Settings.Utility)
local VRHub_upvr_3 = require(RobloxGui_upvr.Modules.VR.VRHub)
local CachedPolicyService_upvr = require(CorePackages_3_upvr.Workspace.Packages.CachedPolicyService)
local SharedFlags = require(CorePackages_3_upvr.Workspace.Packages.SharedFlags)
local Theme_upvr = require(script.Parent.Theme)
local var10_upvr
if any_IsEnabled_result1_upvr then
	-- KONSTANTWARNING: GOTO [350] #209
end
-- KONSTANTERROR: [0] 1. Error Block 40 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [343] 203. Error Block 45 start (CF ANALYSIS FAILED)
if Utility_upvr:IsSmallTouchScreen() then
else
end
local GetFFlagRemoveAssetVersionEndpoint_upvr = require(RobloxGui_upvr.Modules.Flags.GetFFlagRemoveAssetVersionEndpoint)
local GetFFlagLuaInExperienceCoreScriptsGameInviteUnification_upvr = require(RobloxGui_upvr.Modules.Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification)
local GetFFlagDisplayServerChannel_upvr = SharedFlags.GetFFlagDisplayServerChannel
local GetFFlagPackagifySettingsShowSignal_upvr = SharedFlags.GetFFlagPackagifySettingsShowSignal
local GetFFlagRemovePermissionsButtons_upvr = require(RobloxGui_upvr.Modules.Settings.Flags.GetFFlagRemovePermissionsButtons)
local FFlagAddUILessMode_upvr = SharedFlags.FFlagAddUILessMode
local FIntAddUILessModeVariant_upvr = SharedFlags.FIntAddUILessModeVariant
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local HttpService_upvr = game:GetService("HttpService")
local var23_upvw
pcall(function() -- Line 156
	--[[ Upvalues[1]:
		[1]: var23_upvw (read and write)
	]]
	var23_upvw = game:GetService("PlatformService")
end)
local var25_upvw
pcall(function() -- Line 159
	--[[ Upvalues[1]:
		[1]: var25_upvw (read and write)
	]]
	var25_upvw = game:GetService("PlatformFriendsService")
end)
local var27_upvw
spawn(function() -- Line 163
	--[[ Upvalues[2]:
		[1]: var27_upvw (read and write)
		[2]: RobloxReplicatedStorage_upvr (readonly)
	]]
	var27_upvw = RobloxReplicatedStorage_upvr:WaitForChild("GetServerVersion", math.huge)
end)
if GetFFlagDisplayServerChannel_upvr() then
	local var30_upvw
	spawn(function() -- Line 169
		--[[ Upvalues[2]:
			[1]: var30_upvw (read and write)
			[2]: RobloxReplicatedStorage_upvr (readonly)
		]]
		var30_upvw = RobloxReplicatedStorage_upvr:WaitForChild("GetServerChannel", math.huge)
	end)
end
RobloxGui_upvr:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local BaseUrl_upvr = game:GetService("ContentProvider").BaseUrl
local var32_upvw
if GetFFlagRemovePermissionsButtons_upvr() then
else
end
if GetFFlagLuaInExperienceCoreScriptsGameInviteUnification_upvr() then
	local GameInvite = require(CorePackages_3_upvr.Workspace.Packages.GameInvite)
end
local default_upvr = require(RobloxGui_upvr.Modules.VoiceChat.VoiceChatServiceManager).default
var10_upvr = require(CorePackages_3_upvr.Workspace.Packages.AppChat).App
if GetFFlagPackagifySettingsShowSignal_upvr() then
	var10_upvr = require(CorePackages_3_upvr.Workspace.Packages.CoreScriptsCommon).SettingsShowSignal
else
	var10_upvr = nil
end
if GetFFlagPackagifySettingsShowSignal_upvr() then
else
end
local tbl_20_upvr = {
	frequency = 4;
	dampingRatio = 1;
}
local RobloxTranslator_upvr = require(CorePackages_3_upvr.Workspace.Packages.RobloxTranslator)
local function _(arg1, arg2) -- Line 257, Named "tryTranslate"
	--[[ Upvalues[1]:
		[1]: RobloxTranslator_upvr (readonly)
	]]
	if not RobloxTranslator_upvr then
		return arg2
	end
	local pcall_result1, pcall_result2 = pcall(RobloxTranslator_upvr.FormatByKey, RobloxTranslator_upvr, arg1)
	if pcall_result1 then
		return pcall_result2
	end
	return arg2
end
local any_GetGuiInset_result1, _ = GuiService_upvr:GetGuiInset()
local function GetCorePackagesLoaded_upvr(arg1) -- Line 273, Named "GetCorePackagesLoaded"
	for _, v in pairs(arg1) do
		if not game:GetService("CorePackages"):FindFirstChild(v) then
			return false
		end
	end
	return true
end
local function _() -- Line 283, Named "GetServerVersionBlocking"
	--[[ Upvalues[2]:
		[1]: var32_upvw (read and write)
		[2]: var27_upvw (read and write)
	]]
	if var32_upvw then
		return var32_upvw
	end
	if not var27_upvw then
		repeat
			wait()
		until var27_upvw
	end
	var32_upvw = var27_upvw:InvokeServer()
	return var32_upvw
end
local var46_upvw
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("GetServerChannelRetries", 10)
local function GetServerChannelBlocking_upvr() -- Line 296, Named "GetServerChannelBlocking"
	--[[ Upvalues[3]:
		[1]: var46_upvw (read and write)
		[2]: game_DefineFastInt_result1_upvr_2 (readonly)
		[3]: var30_upvw (read and write)
	]]
	if var46_upvw then
		return var46_upvw
	end
	if not var30_upvw then
		repeat
			task.wait()
		until var30_upvw and game_DefineFastInt_result1_upvr_2 - 1 == 0
	end
	if var30_upvw then
		var46_upvw = var30_upvw:InvokeServer()
	else
		warn("GetServerChannelRemote not available")
		var46_upvw = "Unknown"
	end
	return var46_upvw
end
local function _() -- Line 317, Named "GetPlaceVersionText"
	--[[ Upvalues[3]:
		[1]: GetFFlagRemoveAssetVersionEndpoint_upvr (readonly)
		[2]: HttpRbxApiService_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	if GetFFlagRemoveAssetVersionEndpoint_upvr() then
		return game.PlaceVersion
	end
	local PlaceVersion_upvw = game.PlaceVersion
	pcall(function() -- Line 324
		--[[ Upvalues[3]:
			[1]: HttpRbxApiService_upvr (copied, readonly)
			[2]: HttpService_upvr (copied, readonly)
			[3]: PlaceVersion_upvw (read and write)
		]]
		PlaceVersion_upvw = string.format("%s (Latest: %d)", PlaceVersion_upvw, HttpService_upvr:JSONDecode(HttpRbxApiService_upvr:GetAsync(string.format("assets/%d/versions", game.PlaceId)))[1].VersionNumber)
	end)
	return PlaceVersion_upvw
end
local game_GetEngineFeature_result1_upvr_3 = game:GetEngineFeature("TeleportHistoryButtons")
local GetFFlagEnableLeaveGameUpsellEntrypoint_upvr = require(RobloxGui_upvr.Modules.Settings.Flags.GetFFlagEnableLeaveGameUpsellEntrypoint)
local var52_upvr
local FFlagRelocateMobileMenuButtons_upvr = require(RobloxGui_upvr.Modules.Settings.Flags.FFlagRelocateMobileMenuButtons)
local Constants_upvr = require(RobloxGui_upvr.Modules.VoiceChat.Constants)
local Stores_upvr = require(CorePackages_3_upvr.Workspace.Packages.CoreGuiCommon).Stores
local any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr = SharedFlags.GetFFlagAvatarChatCoreScriptSupport()
local StarterGui_upvr = game:GetService("StarterGui")
local toggleSelfViewSignal_upvr = require(RobloxGui_upvr.Modules.SelfView.toggleSelfViewSignal)
local publicApi_upvr = require(RobloxGui_upvr.Modules.SelfView.publicApi)
local selfViewVisibilityUpdatedSignal_upvr = require(RobloxGui_upvr.Modules.SelfView.selfViewVisibilityUpdatedSignal)
local FFlagIEMSettingsAddPlaySessionID_upvr = require(RobloxGui_upvr.Modules.Settings.Flags).FFlagIEMSettingsAddPlaySessionID
local game_GetEngineFeature_result1_upvr_2 = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local FFlagIEMFocusNavToButtons_upvr = SharedFlags.FFlagIEMFocusNavToButtons
local FIntRelocateMobileMenuButtonsVariant_upvr = require(RobloxGui_upvr.Modules.Settings.Flags.FIntRelocateMobileMenuButtonsVariant)
local GetFFlagFixIGMBottomBarVisibility_upvr = require(RobloxGui_upvr.Modules.Settings.Flags.GetFFlagFixIGMBottomBarVisibility)
local ContextActionService_upvr = game:GetService("ContextActionService")
local GetFFlagOldMenuUseSpeakerIcons_upvr = require(RobloxGui_upvr.Modules.Flags.GetFFlagOldMenuUseSpeakerIcons)
local PlayerMuteStatusIcons_upvr = default_upvr.PlayerMuteStatusIcons
local MuteStatusIcons_upvr = default_upvr.MuteStatusIcons
local GetFFlagPlayerListAnimateMic_upvr = SharedFlags.GetFFlagPlayerListAnimateMic
local LocalizationService_upvr = game:GetService("LocalizationService")
local Localization_upvr = require(CorePackages_3_upvr.Workspace.Packages.InExperienceLocales).Localization
local var74_upvr = require(RobloxGui_upvr.Modules.Chrome.Enabled)()
local TouchEnabled_upvr = UserInputService_upvr.TouchEnabled
local any_GetPlatform_result1_upvr = UserInputService_upvr:GetPlatform()
local Create_upvr = require(CorePackages_3_upvr.Workspace.Packages.AppCommonLib).Create
local any_GetFFlag_result1_upvr = settings():GetFFlag("UseNotificationsLocalization")
local FFlagUpdateTiltMenuButtonIcons_upvr = SharedFlags.FFlagUpdateTiltMenuButtonIcons
local GetFFlagMuteButtonRaceConditionFix_upvr = require(RobloxGui_upvr.Modules.Flags.GetFFlagMuteButtonRaceConditionFix)
local RunService_upvr = game:GetService("RunService")
local Otter_upvr = require(CorePackages_3_upvr.Packages.Otter)
local GetFFlagEnableShowVoiceUI_upvr = SharedFlags.GetFFlagEnableShowVoiceUI
local GetFFlagEnableInExpJoinVoiceAnalytics_upvr = require(RobloxGui_upvr.Modules.Flags.GetFFlagEnableInExpJoinVoiceAnalytics)
local getCamMicPermissions_upvr = require(CoreGui.RobloxGui.Modules.Settings.getCamMicPermissions)
local GetFFlagVoiceChatUILogging_upvr = require(RobloxGui_upvr.Modules.Flags.GetFFlagVoiceChatUILogging)
local any_new_result1_upvr = require(CorePackages_3_upvr.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("SettingsHubRaceConditionFix", false)
local FFlagInExperienceUseAppStyleProvider_upvr = SharedFlags.FFlagInExperienceUseAppStyleProvider
local React_upvr = require(CorePackages_3_upvr.Packages.React)
local AppStyleProvider_upvr = require(CorePackages_3_upvr.Packages.UIBlox).App.Style.AppStyleProvider
local Roact_upvr = require(CorePackages_3_upvr.Packages.Roact)
local PermissionsButtons_upvr = require(RobloxGui_upvr.Modules.Settings.Components.PermissionsButtons)
local GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr = SharedFlags.GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints
local createSignal_upvr = require(CorePackages_3_upvr.Packages.Signals).createSignal
local TelemetryService_upvr = game:GetService("TelemetryService")
local MenuLeaveGameTelemetryConfig_upvr = require(RobloxGui_upvr.Modules.Settings.Analytics.MenuLeaveGameTelemetryConfig)
local MenuResetCharacterTelemetryConfig_upvr = require(RobloxGui_upvr.Modules.Settings.Analytics.MenuResetCharacterTelemetryConfig)
local module_upvr_2 = require(RobloxGui_upvr.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
local MenuResumeTelemetryConfig_upvr = require(RobloxGui_upvr.Modules.Settings.Analytics.MenuResumeTelemetryConfig)
local udim2_upvr_2 = UDim2.new(1, 0, 1, any_GetGuiInset_result1.Y)
local udim2_upvr = UDim2.new(0, 0, 0, -any_GetGuiInset_result1.Y)
local SHIELD_INACTIVE_POSITION_upvr = Theme_upvr.SHIELD_INACTIVE_POSITION
local any_transparency_result1_upvr = Theme_upvr.transparency("SETTINGS_SHIELD_TRANSPARENCY", 0.2)
local any_color_result1_upvr = Theme_upvr.color("SETTINGS_SHIELD", Color3.new(0.1607843137254902, 0.1607843137254902, 0.1607843137254902))
local var106_upvr = 26
local var107_upvr = settings():GetFFlag("LocalizeVersionLabels") or CachedPolicyService_upvr:IsSubjectToChinaPolicies()
local var108_upvr = not string.find(BaseUrl_upvr, "www.roblox.com")
local StarterPlayer_upvr = game:GetService("StarterPlayer")
local Players_upvr = game:GetService("Players")
local GetFFlagNewEventIngestPlayerScriptsDimensions_upvr = require(RobloxGui_upvr.Modules.Flags.GetFFlagNewEventIngestPlayerScriptsDimensions)
local any_getFFlagSettingsHubIndependentBackgroundVisibility_result1_upvr = SharedFlags.getFFlagSettingsHubIndependentBackgroundVisibility()
local isInExperienceUIVREnabled_upvr = require(CorePackages_3_upvr.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local GetFFlagUseMicPermForEnrollment_upvr = SharedFlags.GetFFlagUseMicPermForEnrollment
local GetFFlagEnableConnectDisconnectButtonAnalytics_upvr = require(RobloxGui_upvr.Modules.Flags.GetFFlagEnableConnectDisconnectButtonAnalytics)
local FFlagUIBloxMigrateBuilderIcon_upvr = SharedFlags.UIBlox.FFlagUIBloxMigrateBuilderIcon
local RoactAppExperiment_upvr = require(CorePackages_3_upvr.Packages.RoactAppExperiment)
local IXPService_upvr = game:GetService("IXPService")
local MenuBackButton_upvr = require(RobloxGui_upvr.Modules.Settings.Components.MenuBackButton)
local MenuFrontButton_upvr = require(RobloxGui_upvr.Modules.Settings.Components.MenuFrontButton)
local AppFonts_upvr = require(CorePackages_3_upvr.Workspace.Packages.Style).AppFonts
local FFlagTiltMenuShortcutBarPadding_upvr = SharedFlags.FFlagTiltMenuShortcutBarPadding
local FFlagIEMResumeButtonPressBugfix_upvr = SharedFlags.FFlagIEMResumeButtonPressBugfix
local ReactRoblox_upvr = require(CorePackages_3_upvr.Packages.ReactRoblox)
local MenuButtonsContainer_upvr = require(RobloxGui_upvr.Modules.Settings.Components.MenuButtons.MenuButtonsContainer)
local InExperienceAppChatModal_upvr = var10_upvr.InExperienceAppChatModal
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("PreventHiddenSwitchPage", false)
local InExperienceCapabilities_upvr = require(CorePackages_3_upvr.Workspace.Packages.InExperienceCapabilities).InExperienceCapabilities
local FFlagEnableChromeShortcutBar_upvr = SharedFlags.FFlagEnableChromeShortcutBar
local isSubjectToDesktopPolicies_upvr = SharedFlags.isSubjectToDesktopPolicies
local SettingsFullScreenTitleBar_upvr = require(RobloxGui_upvr.Modules.Settings.Components.SettingsFullScreenTitleBar)
local VRService_upvr = game:GetService("VRService")
local FFlagAddNextUpContainer_upvr = require(RobloxGui_upvr.Modules.Settings.Flags.FFlagAddNextUpContainer)
local game_DefineFastFlag_result1_upvr_4 = game:DefineFastFlag("FixDisableTopPaddingError", false)
local GameSettings_upvr = UserSettings().GameSettings
local DevConsoleMaster_upvr = require(RobloxGui_upvr.Modules.DevConsoleMaster)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixReportButtonCutOff", false)
local GetFFlagReportAbuseMenuEntrypointAnalytics_upvr = require(RobloxGui_upvr.Modules.Settings.Flags.GetFFlagReportAbuseMenuEntrypointAnalytics)
local Cryo_upvr = require(CorePackages_3_upvr.Packages.Cryo)
local FFlagRespawnChromeShortcutTelemetry_upvr = require(RobloxGui_upvr.Modules.Chrome.Flags.FFlagRespawnChromeShortcutTelemetry)
local FFlagInExperienceMenuReorderFirstVariant_upvr = require(RobloxGui_upvr.Modules.Settings.Flags.FFlagInExperienceMenuReorderFirstVariant)
local GetFStringInExperienceMenuIXPLayer_upvr = require(RobloxGui_upvr.Modules.Settings.Flags.GetFStringInExperienceMenuIXPLayer)
local GetFStringInExperienceMenuIXPVar_upvr = require(RobloxGui_upvr.Modules.Settings.Flags.GetFStringInExperienceMenuIXPVar)
local IXPServiceWrapper_upvr = require(CorePackages_3_upvr.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local FFlagEnableExperienceMenuSessionTracking_upvr = require(RobloxGui_upvr.Modules.Flags.FFlagEnableExperienceMenuSessionTracking)
local ExperienceMenuSessionManagerInstance_upvr = require(CorePackages_3_upvr.Workspace.Packages.InExperienceSessionization).ExperienceMenuSessionManagerInstance
local MouseIconOverrideService_upvr = require(CorePackages_3_upvr.InGameServices.MouseIconOverrideService)
local any_named_result1_upvr = require(CorePackages_3_upvr.Workspace.Packages.AppCommonLib).Symbol.named("SettingsHubCursorOverride")
local game_DefineFastInt_result1_upvr = game:DefineFastInt("CheckLeaveGameUpsellCooldown", 300)
local TweenService_upvr = game:GetService("TweenService")
local var151_upvr = require(RobloxGui_upvr.Modules.Common.Flags.GetFFlagEnableInGameMenuDurationLogger)()
local PerfUtils_upvr = require(RobloxGui_upvr.Modules.Common.PerfUtils)
local var153_upvw
local getFFlagAppChatCoreUIConflictFix_upvr = SharedFlags.getFFlagAppChatCoreUIConflictFix
local ChatSelector_upvr = require(RobloxGui_upvr.Modules.ChatSelector)
local var156_upvw = false
local GetFFlagEnableAppChatInExperience_upvr = SharedFlags.GetFFlagEnableAppChatInExperience
local var158_upvw = false
local game_DefineFastFlag_result1_upvr_6 = game:DefineFastFlag("AppChatReappearIfClosedByTiltMenu", true)
local FFlagIEMEndFocusNavTiltMenuHidden_upvr = SharedFlags.FFlagIEMEndFocusNavTiltMenuHidden
local game_DefineFastFlag_result1_upvr_7 = game:DefineFastFlag("LuaEnableGameInviteModalSettingsHub", false)
local GetFStringGameInviteMenuLayer_upvr = SharedFlags.GetFStringGameInviteMenuLayer
local GameInviteInviteExperimentVariant_upvw = GameInvite.GameInviteInviteExperimentVariant
local GameInviteModalManager_upvw = GameInvite.GameInviteModalManager
local GameInviteConstants_upvw = GameInvite.GameInviteConstants
local game_DefineFastFlag_result1_upvr_5 = game:DefineFastFlag("DelayEscCoreActionIEMOpen", false)
local isNewInGameMenuEnabled_upvr = require(RobloxGui_upvr.Modules.isNewInGameMenuEnabled)
local GetFFlagAbuseReportEnableReportSentPage_upvr = require(RobloxGui_upvr.Modules.Flags.GetFFlagAbuseReportEnableReportSentPage)
local GameInviteAnalytics_upvr = require(CorePackages_3_upvr.Workspace.Packages.GameInvite).GameInviteAnalytics
local CapturesPolicy_upvr = require(CorePackages_3_upvr.Workspace.Packages.CapturesInExperience).CapturesPolicy
local CapturesApp_upvr = require(RobloxGui_upvr.Modules.Captures.CapturesApp)
local module_upvr = {
	ModuleName = "SettingsMenu";
	KeepVRTopbarOpen = true;
	VRIsExclusive = true;
	VRClosesNonExclusive = true;
	SetVisibility = nil;
}
VRHub_upvr_3:RegisterModule(module_upvr)
VRHub_upvr_3.ModuleOpened.Event:connect(function(arg1) -- Line 4273
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: VRHub_upvr_3 (readonly)
	]]
	if arg1 ~= module_upvr.ModuleName and VRHub_upvr_3:GetModule(arg1).VRIsExclusive then
		module_upvr:SetVisibility(false)
	end
end)
local CreateSettingsHub_result1_upvr = (function() -- Line 334, Named "CreateSettingsHub"
	--[[ Upvalues[150]:
		[1]: game_GetEngineFeature_result1_upvr_3 (readonly)
		[2]: RobloxGui_upvr (readonly)
		[3]: GetFFlagEnableLeaveGameUpsellEntrypoint_upvr (readonly)
		[4]: GetFFlagPackagifySettingsShowSignal_upvr (readonly)
		[5]: var10_upvr (readonly)
		[6]: Utility_upvr (readonly)
		[7]: var52_upvr (readonly)
		[8]: FFlagRelocateMobileMenuButtons_upvr (readonly)
		[9]: Constants_upvr (readonly)
		[10]: FFlagAddUILessMode_upvr (readonly)
		[11]: FIntAddUILessModeVariant_upvr (readonly)
		[12]: Stores_upvr (readonly)
		[13]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[14]: StarterGui_upvr (readonly)
		[15]: toggleSelfViewSignal_upvr (readonly)
		[16]: publicApi_upvr (readonly)
		[17]: selfViewVisibilityUpdatedSignal_upvr (readonly)
		[18]: FFlagIEMSettingsAddPlaySessionID_upvr (readonly)
		[19]: game_GetEngineFeature_result1_upvr_2 (readonly)
		[20]: RbxAnalyticsService_upvr (readonly)
		[21]: FFlagIEMFocusNavToButtons_upvr (readonly)
		[22]: FIntRelocateMobileMenuButtonsVariant_upvr (readonly)
		[23]: GetFFlagFixIGMBottomBarVisibility_upvr (readonly)
		[24]: Theme_upvr (readonly)
		[25]: ContextActionService_upvr (readonly)
		[26]: default_upvr (readonly)
		[27]: GetFFlagOldMenuUseSpeakerIcons_upvr (readonly)
		[28]: PlayerMuteStatusIcons_upvr (readonly)
		[29]: MuteStatusIcons_upvr (readonly)
		[30]: GetFFlagPlayerListAnimateMic_upvr (readonly)
		[31]: LocalizationService_upvr (readonly)
		[32]: Localization_upvr (readonly)
		[33]: var74_upvr (readonly)
		[34]: any_IsEnabled_result1_upvr (readonly)
		[35]: TouchEnabled_upvr (readonly)
		[36]: UserInputService_upvr (readonly)
		[37]: any_GetPlatform_result1_upvr (readonly)
		[38]: Create_upvr (readonly)
		[39]: any_GetFFlag_result1_upvr (readonly)
		[40]: FFlagUpdateTiltMenuButtonIcons_upvr (readonly)
		[41]: GetFFlagMuteButtonRaceConditionFix_upvr (readonly)
		[42]: RunService_upvr (readonly)
		[43]: Otter_upvr (readonly)
		[44]: GetFFlagEnableShowVoiceUI_upvr (readonly)
		[45]: GetFFlagEnableInExpJoinVoiceAnalytics_upvr (readonly)
		[46]: getCamMicPermissions_upvr (readonly)
		[47]: RobloxTranslator_upvr (readonly)
		[48]: GetFFlagVoiceChatUILogging_upvr (readonly)
		[49]: any_new_result1_upvr (readonly)
		[50]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[51]: GetFFlagRemovePermissionsButtons_upvr (readonly)
		[52]: FFlagInExperienceUseAppStyleProvider_upvr (readonly)
		[53]: React_upvr (readonly)
		[54]: AppStyleProvider_upvr (readonly)
		[55]: Roact_upvr (readonly)
		[56]: PermissionsButtons_upvr (readonly)
		[57]: GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr (readonly)
		[58]: createSignal_upvr (readonly)
		[59]: TelemetryService_upvr (readonly)
		[60]: MenuLeaveGameTelemetryConfig_upvr (readonly)
		[61]: MenuResetCharacterTelemetryConfig_upvr (readonly)
		[62]: module_upvr_2 (readonly)
		[63]: MenuResumeTelemetryConfig_upvr (readonly)
		[64]: udim2_upvr_2 (readonly)
		[65]: udim2_upvr (readonly)
		[66]: SHIELD_INACTIVE_POSITION_upvr (readonly)
		[67]: any_transparency_result1_upvr (readonly)
		[68]: any_color_result1_upvr (readonly)
		[69]: var106_upvr (readonly)
		[70]: GetFFlagDisplayServerChannel_upvr (readonly)
		[71]: var107_upvr (readonly)
		[72]: GetServerChannelBlocking_upvr (readonly)
		[73]: var32_upvw (read and write)
		[74]: var27_upvw (read and write)
		[75]: GetFFlagRemoveAssetVersionEndpoint_upvr (readonly)
		[76]: HttpRbxApiService_upvr (readonly)
		[77]: HttpService_upvr (readonly)
		[78]: CachedPolicyService_upvr (readonly)
		[79]: BaseUrl_upvr (readonly)
		[80]: var108_upvr (readonly)
		[81]: StarterPlayer_upvr (readonly)
		[82]: Players_upvr (readonly)
		[83]: GetFFlagNewEventIngestPlayerScriptsDimensions_upvr (readonly)
		[84]: any_getFFlagSettingsHubIndependentBackgroundVisibility_result1_upvr (readonly)
		[85]: isInExperienceUIVREnabled_upvr (readonly)
		[86]: GuiService_upvr (readonly)
		[87]: GetFFlagUseMicPermForEnrollment_upvr (readonly)
		[88]: GetFFlagEnableConnectDisconnectButtonAnalytics_upvr (readonly)
		[89]: FFlagUIBloxMigrateBuilderIcon_upvr (readonly)
		[90]: RoactAppExperiment_upvr (readonly)
		[91]: IXPService_upvr (readonly)
		[92]: MenuBackButton_upvr (readonly)
		[93]: MenuFrontButton_upvr (readonly)
		[94]: AppFonts_upvr (readonly)
		[95]: tbl_20_upvr (readonly)
		[96]: FFlagTiltMenuShortcutBarPadding_upvr (readonly)
		[97]: FFlagIEMResumeButtonPressBugfix_upvr (readonly)
		[98]: ReactRoblox_upvr (readonly)
		[99]: MenuButtonsContainer_upvr (readonly)
		[100]: InExperienceAppChatModal_upvr (readonly)
		[101]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[102]: InExperienceCapabilities_upvr (readonly)
		[103]: FFlagEnableChromeShortcutBar_upvr (readonly)
		[104]: isSubjectToDesktopPolicies_upvr (readonly)
		[105]: SettingsFullScreenTitleBar_upvr (readonly)
		[106]: VRService_upvr (readonly)
		[107]: FFlagAddNextUpContainer_upvr (readonly)
		[108]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[109]: GameSettings_upvr (readonly)
		[110]: DevConsoleMaster_upvr (readonly)
		[111]: game_DefineFastFlag_result1_upvr (readonly)
		[112]: GetFFlagReportAbuseMenuEntrypointAnalytics_upvr (readonly)
		[113]: Cryo_upvr (readonly)
		[114]: FFlagRespawnChromeShortcutTelemetry_upvr (readonly)
		[115]: FFlagInExperienceMenuReorderFirstVariant_upvr (readonly)
		[116]: GetFStringInExperienceMenuIXPLayer_upvr (readonly)
		[117]: GetFStringInExperienceMenuIXPVar_upvr (readonly)
		[118]: IXPServiceWrapper_upvr (readonly)
		[119]: FFlagEnableExperienceMenuSessionTracking_upvr (readonly)
		[120]: ExperienceMenuSessionManagerInstance_upvr (readonly)
		[121]: MouseIconOverrideService_upvr (readonly)
		[122]: any_named_result1_upvr (readonly)
		[123]: game_DefineFastInt_result1_upvr (readonly)
		[124]: TweenService_upvr (readonly)
		[125]: var151_upvr (readonly)
		[126]: PerfUtils_upvr (readonly)
		[127]: var153_upvw (read and write)
		[128]: getFFlagAppChatCoreUIConflictFix_upvr (readonly)
		[129]: ChatSelector_upvr (readonly)
		[130]: var156_upvw (read and write)
		[131]: GetFFlagEnableAppChatInExperience_upvr (readonly)
		[132]: var158_upvw (read and write)
		[133]: game_DefineFastFlag_result1_upvr_6 (readonly)
		[134]: FFlagIEMEndFocusNavTiltMenuHidden_upvr (readonly)
		[135]: GetFFlagLuaInExperienceCoreScriptsGameInviteUnification_upvr (readonly)
		[136]: game_DefineFastFlag_result1_upvr_7 (readonly)
		[137]: GetFStringGameInviteMenuLayer_upvr (readonly)
		[138]: GameInviteInviteExperimentVariant_upvw (read and write)
		[139]: var25_upvw (read and write)
		[140]: var23_upvw (read and write)
		[141]: GameInviteModalManager_upvw (read and write)
		[142]: GameInviteConstants_upvw (read and write)
		[143]: CorePackages_3_upvr (readonly)
		[144]: game_DefineFastFlag_result1_upvr_5 (readonly)
		[145]: isNewInGameMenuEnabled_upvr (readonly)
		[146]: GetFFlagAbuseReportEnableReportSentPage_upvr (readonly)
		[147]: GetCorePackagesLoaded_upvr (readonly)
		[148]: GameInviteAnalytics_upvr (readonly)
		[149]: CapturesPolicy_upvr (readonly)
		[150]: CapturesApp_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 167 start (CF ANALYSIS FAILED)
	local module_upvr_3 = {
		Visible = false;
		Active = true;
		Pages = {
			CurrentPage = nil;
			PageTable = {};
		};
		MenuStack = {};
		TabHeaders = {};
		BottomBarButtons = {};
		BottomBarButtonsComponents = {};
		ResizedConnection = nil;
		BackBarVisibleConnection = nil;
	}
	local var499
	if var499 then
		var499 = nil
		module_upvr_3.FrontBarVisibleConnection = var499
	end
	var499 = nil
	module_upvr_3.PreferredTransparencyChangedConnection = var499
	var499 = nil
	module_upvr_3.TabConnection = var499
	var499 = require(RobloxGui_upvr.Modules.Settings.Pages.LeaveGame)
	module_upvr_3.LeaveGamePage = var499
	if GetFFlagEnableLeaveGameUpsellEntrypoint_upvr() then
		var499 = require(RobloxGui_upvr.Modules.Settings.Pages.LeaveGameUpsell.LeaveGameUpsell)
	else
		var499 = nil
	end
	module_upvr_3.LeaveGameUpsellPage = var499
	module_upvr_3.ResetCharacterPage = require(RobloxGui_upvr.Modules.Settings.Pages.ResetCharacter)
	if GetFFlagPackagifySettingsShowSignal_upvr() then
		-- KONSTANTWARNING: GOTO [109] #70
	end
	-- KONSTANTERROR: [0] 1. Error Block 167 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [105] 67. Error Block 120 start (CF ANALYSIS FAILED)
	module_upvr_3.SettingsShowSignal = Utility_upvr:CreateSignal()
	if GetFFlagPackagifySettingsShowSignal_upvr() then
	else
	end
	module_upvr_3.CurrentPageSignal = Utility_upvr:CreateSignal()
	module_upvr_3.OpenStateChangedCount = 0
	module_upvr_3.BottomButtonFrame = nil
	if FFlagRelocateMobileMenuButtons_upvr then
		module_upvr_3.addMenuKeyBindings = nil
		module_upvr_3.removeMenuKeyBindings = nil
	end
	module_upvr_3.hasMicPermissions = false
	if GetFFlagEnableLeaveGameUpsellEntrypoint_upvr() then
		module_upvr_3.checkedUpsell = false
		module_upvr_3.leaveGameUpsellProp = Constants_upvr.PHONE_UPSELL_VALUE_PROP.None
		module_upvr_3.sessionStartTime = os.time()
	end
	module_upvr_3.isFetchingMicPermissions = true
	if FFlagAddUILessMode_upvr and FIntAddUILessModeVariant_upvr ~= 0 then
		module_upvr_3.uiLessStore = Stores_upvr.GetUILessStore(false)
	end
	module_upvr_3.isMuted = nil
	module_upvr_3.lastVoiceRecordingIndicatorTextUpdated = nil
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		module_upvr_3.selfViewOpen = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
		module_upvr_3.toggleSelfViewSignal = toggleSelfViewSignal_upvr:connect(function() -- Line 382
			--[[ Upvalues[1]:
				[1]: module_upvr_3 (readonly)
			]]
			module_upvr_3.selfViewOpen = not module_upvr_3.selfViewOpen
		end)
		if StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView) then
		end
		module_upvr_3.selfViewOpen = publicApi_upvr.getSelfViewIsOpenAndVisible()
		module_upvr_3.selfViewVisibilitySignal = selfViewVisibilityUpdatedSignal_upvr:connect(function() -- Line 387
			--[[ Upvalues[2]:
				[1]: module_upvr_3 (readonly)
				[2]: publicApi_upvr (copied, readonly)
			]]
			module_upvr_3.selfViewOpen = publicApi_upvr.getSelfViewIsOpenAndVisible()
		end)
	end
	module_upvr_3.playSessionId = ""
	local var502
	if FFlagIEMSettingsAddPlaySessionID_upvr and game_GetEngineFeature_result1_upvr_2 then
		module_upvr_3.playSessionId = RbxAnalyticsService_upvr:GetPlaySessionId()
	end
	local BindableEvent_upvr = Instance.new("BindableEvent")
	BindableEvent_upvr.Name = "PoppedMenu"
	module_upvr_3.PoppedMenu = BindableEvent_upvr.Event
	local function _(arg1) -- Line 403, Named "shouldShowHubBar"
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		local var504
		if not var504 then
			var504 = module_upvr_3.Pages.CurrentPage
		end
		if var504.ShouldShowBottomBar ~= true then
			var504 = false
		else
			var504 = true
		end
		return var504
	end
	local function setBottomBarSelection_upvr(arg1) -- Line 408, Named "setBottomBarSelection"
		--[[ Upvalues[4]:
			[1]: module_upvr_3 (readonly)
			[2]: FFlagIEMFocusNavToButtons_upvr (copied, readonly)
			[3]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[4]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
		]]
		if not module_upvr_3.BottomButtonFrame and FFlagIEMFocusNavToButtons_upvr and not arg1 and (not FFlagRelocateMobileMenuButtons_upvr or FIntRelocateMobileMenuButtonsVariant_upvr == 0 or FIntRelocateMobileMenuButtonsVariant_upvr == 2) then
		else
			if module_upvr_3.ResumeButton then
				arg1.PageNextSelectionDown = module_upvr_3.ResumeButton
			end
			for _, v_6 in arg1.LastSelectableObjects do
				module_upvr_3.BottomButtonFrame.SelectionBehaviorUp = Enum.SelectionBehavior.Escape
				module_upvr_3.BottomButtonFrame.NextSelectionUp = v_6
				v_6.NextSelectionDown = arg1.PageNextSelectionDown
				local LeaveGameButton_5 = module_upvr_3.LeaveGameButton
				if LeaveGameButton_5 then
					LeaveGameButton_5.NextSelectionUp = v_6
				end
			end
			if #arg1.LastSelectableObjects < 1 then
				module_upvr_3.BottomButtonFrame.SelectionBehaviorUp = Enum.SelectionBehavior.Stop
				module_upvr_3.BottomButtonFrame.NextSelectionUp = nil
				local LeaveGameButton_2 = module_upvr_3.LeaveGameButton
				if LeaveGameButton_2 then
					LeaveGameButton_2.NextSelectionUp = nil
				end
			end
		end
	end
	local function shouldShowBottomBar_upvr(arg1) -- Line 440, Named "shouldShowBottomBar"
		--[[ Upvalues[6]:
			[1]: module_upvr_3 (readonly)
			[2]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[3]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[4]: Utility_upvr (copied, readonly)
			[5]: GetFFlagFixIGMBottomBarVisibility_upvr (copied, readonly)
			[6]: Theme_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 6. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 6. Error Block 3 end (CF ANALYSIS FAILED)
	end
	local function setBottomBarBindings_upvr() -- Line 459, Named "setBottomBarBindings"
		--[[ Upvalues[4]:
			[1]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[2]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[3]: module_upvr_3 (readonly)
			[4]: ContextActionService_upvr (copied, readonly)
		]]
		if not FFlagRelocateMobileMenuButtons_upvr or FIntRelocateMobileMenuButtonsVariant_upvr == 0 then
			if not module_upvr_3.Visible then return end
			for i_2 = 1, #module_upvr_3.BottomBarButtons do
				local var510 = module_upvr_3.BottomBarButtons[i_2]
				local _2_2 = var510[2]
				ContextActionService_upvr:BindCoreAction(var510[1], _2_2[1], false, unpack(_2_2[2]))
			end
			if module_upvr_3.BottomButtonFrame then
				module_upvr_3.BottomButtonFrame.Visible = true
			end
		end
	end
	local function removeBottomBarBindings_upvr(arg1) -- Line 477, Named "removeBottomBarBindings"
		--[[ Upvalues[4]:
			[1]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[2]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[3]: module_upvr_3 (readonly)
			[4]: ContextActionService_upvr (copied, readonly)
		]]
		if not FFlagRelocateMobileMenuButtons_upvr or FIntRelocateMobileMenuButtonsVariant_upvr == 0 then
			for i_3, var518 in pairs(module_upvr_3.BottomBarButtons) do
				ContextActionService_upvr:UnbindCoreAction(var518[1])
			end
			local OpenStateChangedCount_upvr = module_upvr_3.OpenStateChangedCount
			if arg1 then
				i_3 = arg1
				function var518() -- Line 484
					--[[ Upvalues[2]:
						[1]: module_upvr_3 (copied, readonly)
						[2]: OpenStateChangedCount_upvr (readonly)
					]]
					if module_upvr_3.OpenStateChangedCount == OpenStateChangedCount_upvr and module_upvr_3.BottomButtonFrame then
						module_upvr_3.BottomButtonFrame.Visible = false
					end
				end
				delay(i_3, var518)
				return
			end
			if module_upvr_3.OpenStateChangedCount == OpenStateChangedCount_upvr then
				if module_upvr_3.BottomButtonFrame then
					module_upvr_3.BottomButtonFrame.Visible = false
				end
			end
		end
	end
	local function _(arg1, arg2, arg3) -- Line 498, Named "updateButtonPosition"
		--[[ Upvalues[3]:
			[1]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[2]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[3]: module_upvr_3 (readonly)
		]]
		if not FFlagRelocateMobileMenuButtons_upvr or FIntRelocateMobileMenuButtonsVariant_upvr == 0 then
			local SOME_2 = module_upvr_3.BottomButtonFrame:FindFirstChild(arg1.."ButtonButton", true)
			if not SOME_2 then return end
			SOME_2.Position = arg2
			SOME_2.Size = arg3
		end
	end
	local function _(arg1) -- Line 511, Named "fnOrValue"
		local var520
		local function INLINED_8() -- Internal function, doesn't exist in bytecode
			var520 = arg1()
			return var520
		end
		if type(arg1) ~= "function" or not INLINED_8() then
			var520 = arg1
		end
		return var520
	end
	local function pollImage_upvr() -- Line 515, Named "pollImage"
		--[[ Upvalues[5]:
			[1]: default_upvr (copied, readonly)
			[2]: GetFFlagOldMenuUseSpeakerIcons_upvr (copied, readonly)
			[3]: PlayerMuteStatusIcons_upvr (copied, readonly)
			[4]: MuteStatusIcons_upvr (copied, readonly)
			[5]: GetFFlagPlayerListAnimateMic_upvr (copied, readonly)
		]]
		local localMuted = default_upvr.localMuted
		if localMuted == nil then
			if GetFFlagOldMenuUseSpeakerIcons_upvr() then
				return PlayerMuteStatusIcons_upvr.Loading
			end
			return MuteStatusIcons_upvr.Loading
		end
		if localMuted then
			if GetFFlagOldMenuUseSpeakerIcons_upvr() then
				return PlayerMuteStatusIcons_upvr.MicOff
			end
			return MuteStatusIcons_upvr.MicOff
		end
		if default_upvr.isTalking and GetFFlagPlayerListAnimateMic_upvr() then
			return default_upvr:GetIcon("Unmuted"..tostring(math.floor(0.5 + 5 * math.random()) * 20), "MicLight")
		end
		if GetFFlagOldMenuUseSpeakerIcons_upvr() then
			return PlayerMuteStatusIcons_upvr.MicOn
		end
		return MuteStatusIcons_upvr.MicOn
	end
	local function _() -- Line 535, Named "updateIcon"
		--[[ Upvalues[3]:
			[1]: var74_upvr (copied, readonly)
			[2]: module_upvr_3 (readonly)
			[3]: pollImage_upvr (readonly)
		]]
		if var74_upvr then
		else
			local MuteButtonHint_10 = module_upvr_3.BottomButtonFrame:FindFirstChild("MuteButtonHint", true)
			if MuteButtonHint_10 then
				MuteButtonHint_10.Image = pollImage_upvr()
			end
		end
	end
	local function hideVoiceUx_upvr() -- Line 545, Named "hideVoiceUx"
		--[[ Upvalues[5]:
			[1]: module_upvr_3 (readonly)
			[2]: any_IsEnabled_result1_upvr (copied, readonly)
			[3]: Theme_upvr (copied, readonly)
			[4]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[5]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 63 start (CF ANALYSIS FAILED)
		local MuteButtonButton = module_upvr_3.MuteButtonButton
		local var524
		if MuteButtonButton then
			MuteButtonButton.Visible = false
			MuteButtonButton:Destroy()
		end
		if any_IsEnabled_result1_upvr then
			var524 = 0
		else
			var524 = 0
		end
		-- KONSTANTERROR: [0] 1. Error Block 63 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 26. Error Block 8 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 26. Error Block 8 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 28. Error Block 66 start (CF ANALYSIS FAILED)
		if any_IsEnabled_result1_upvr then
			var524 = -160
		else
			var524 = -130
		end
		-- KONSTANTERROR: [34] 28. Error Block 66 end (CF ANALYSIS FAILED)
	end
	local function addBottomBarButtonOld_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 561, Named "addBottomBarButtonOld"
		--[[ Upvalues[10]:
			[1]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[2]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[3]: Theme_upvr (copied, readonly)
			[4]: any_IsEnabled_result1_upvr (copied, readonly)
			[5]: module_upvr_3 (readonly)
			[6]: Utility_upvr (copied, readonly)
			[7]: TouchEnabled_upvr (copied, readonly)
			[8]: UserInputService_upvr (copied, readonly)
			[9]: any_GetPlatform_result1_upvr (copied, readonly)
			[10]: Create_upvr (copied, readonly)
		]]
		local var525
		if not FFlagRelocateMobileMenuButtons_upvr or FIntRelocateMobileMenuButtonsVariant_upvr == 0 then
			var525 = "Button"
			local var526 = arg1..var525
			var525 = arg1
			local var527 = var525.."Text"
			var525 = UDim2.new(0, 260, 0, Theme_upvr.LargeButtonHeight)
			if any_IsEnabled_result1_upvr then
				var525 = UDim2.new(0, 320, 0, 72)
			end
			local any_MakeStyledButton_result1_2, any_MakeStyledButton_result2_2 = Utility_upvr:MakeStyledButton(arg1.."Button", arg2, var525, arg6, nil, module_upvr_3)
			module_upvr_3[var526] = any_MakeStyledButton_result1_2
			module_upvr_3[var527] = any_MakeStyledButton_result2_2
			module_upvr_3[var526].Position = arg5
			module_upvr_3[var526].Parent = module_upvr_3.BottomButtonFrame
			if any_IsEnabled_result1_upvr then
				module_upvr_3[var526].ImageTransparency = 1
			end
			module_upvr_3[var527].FontSize = Enum.FontSize.Size24
			if not TouchEnabled_upvr then
				module_upvr_3[var527].Size = UDim2.new(1, -51, 1, 0)
				module_upvr_3[var527].Position = UDim2.new(1, -9, 0, 0)
				module_upvr_3[var527].AnchorPoint = Vector2.new(1, 0)
				local var530 = ""
				if UserInputService_upvr:GetGamepadConnected(Enum.UserInputType.Gamepad1) or any_GetPlatform_result1_upvr == Enum.Platform.XBoxOne then
					var530 = arg3
				else
					var530 = arg4
				end
				local var532_upvw = Create_upvr("ImageLabel")({
					Name = arg1.."Hint";
					ZIndex = module_upvr_3.Shield.ZIndex + 2;
					BackgroundTransparency = 1;
					Image = var530;
					Parent = module_upvr_3[var526];
				})
				if var530 == arg4 then
					var532_upvw.ImageColor3 = Theme_upvr.color("WhiteButtonText", Color3.new(1, 1, 1))
					var532_upvw.ImageTransparency = Theme_upvr.transparency("WhiteButtonText", 1)
				end
				var532_upvw.Position = UDim2.new(0, 9, 0.5, 0)
				var532_upvw.Size = UDim2.new(0, 33, 0, 33)
				var532_upvw.AnchorPoint = Vector2.new(0, 0.5)
			end
			if any_IsEnabled_result1_upvr then
				module_upvr_3[var527].FontSize = Enum.FontSize.Size36
			end
			UserInputService_upvr.InputBegan:connect(function(arg1_10) -- Line 619
				--[[ Upvalues[3]:
					[1]: var532_upvw (read and write)
					[2]: arg3 (readonly)
					[3]: arg4 (readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [6] 4. Error Block 2 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [6] 4. Error Block 2 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [12] 7. Error Block 3 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [12] 7. Error Block 3 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [18] 10. Error Block 4 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [18] 10. Error Block 4 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [24] 13. Error Block 13 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [24] 13. Error Block 13 end (CF ANALYSIS FAILED)
			end)
			local tbl_13 = {function(arg1_11, arg2_3, arg3_3) -- Line 642
				--[[ Upvalues[1]:
					[1]: arg8 (readonly)
				]]
				if arg2_3 == Enum.UserInputState.Begin then
					arg8()
				end
			end}
			tbl_13[2] = arg7
			module_upvr_3.BottomBarButtons[#module_upvr_3.BottomBarButtons + 1] = {var526, tbl_13}
		end
	end
	local function addBottomBarButton_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 653, Named "addBottomBarButton"
		--[[ Upvalues[8]:
			[1]: any_IsEnabled_result1_upvr (copied, readonly)
			[2]: module_upvr_3 (readonly)
			[3]: Utility_upvr (copied, readonly)
			[4]: TouchEnabled_upvr (copied, readonly)
			[5]: any_GetFFlag_result1_upvr (copied, readonly)
			[6]: UserInputService_upvr (copied, readonly)
			[7]: any_GetPlatform_result1_upvr (copied, readonly)
			[8]: Create_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 9. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 9. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 15. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 15. Error Block 3 end (CF ANALYSIS FAILED)
	end
	var502 = ""
	if any_IsEnabled_result1_upvr then
		var502 = "@2x"
	end
	local var537_upvw
	local var538_upvw
	local var539_upvw
	if FFlagUpdateTiltMenuButtonIcons_upvr then
		var537_upvw = UserInputService_upvr:GetImageForKeyCode(Enum.KeyCode.ButtonB)
		var538_upvw = UserInputService_upvr:GetImageForKeyCode(Enum.KeyCode.ButtonX)
		var539_upvw = UserInputService_upvr:GetImageForKeyCode(Enum.KeyCode.ButtonY)
	else
		var537_upvw = "rbxasset://textures/ui/Controls/DesignSystem/ButtonB"..var502..".png"
		var538_upvw = "rbxasset://textures/ui/Controls/DesignSystem/ButtonX"..var502..".png"
		var539_upvw = "rbxasset://textures/ui/Controls/DesignSystem/ButtonY"..var502..".png"
	end
	local function appendMicButton_upvr() -- Line 756, Named "appendMicButton"
		--[[ Upvalues[12]:
			[1]: GetFFlagMuteButtonRaceConditionFix_upvr (copied, readonly)
			[2]: module_upvr_3 (readonly)
			[3]: addBottomBarButton_upvr (readonly)
			[4]: var537_upvw (read and write)
			[5]: pollImage_upvr (readonly)
			[6]: any_IsEnabled_result1_upvr (copied, readonly)
			[7]: default_upvr (copied, readonly)
			[8]: Theme_upvr (copied, readonly)
			[9]: var74_upvr (copied, readonly)
			[10]: GetFFlagPlayerListAnimateMic_upvr (copied, readonly)
			[11]: RunService_upvr (copied, readonly)
			[12]: Otter_upvr (copied, readonly)
		]]
		local var540
		if GetFFlagMuteButtonRaceConditionFix_upvr() and module_upvr_3.BottomButtonFrame:FindFirstChild("MuteButtonHint", true) then
		else
			if any_IsEnabled_result1_upvr then
				var540 = 300
			else
				var540 = 330
			end
			var540 = {}
			addBottomBarButton_upvr("MuteButton", "", var537_upvw, pollImage_upvr, UDim2.new(0.5, var540, 0.5, -25), function() -- Line 762
				--[[ Upvalues[1]:
					[1]: default_upvr (copied, readonly)
				]]
				default_upvr:ToggleMic("InGameMenu")
			end, var540, UDim2.new(0, Theme_upvr.LargeButtonHeight, 0, Theme_upvr.LargeButtonHeight), true)
			if not GetFFlagMuteButtonRaceConditionFix_upvr() then
				default_upvr.muteChanged.Event:Connect(function(arg1) -- Line 769
					--[[ Upvalues[3]:
						[1]: var74_upvr (copied, readonly)
						[2]: module_upvr_3 (copied, readonly)
						[3]: pollImage_upvr (copied, readonly)
					]]
					if var74_upvr then
					else
						local MuteButtonHint = module_upvr_3.BottomButtonFrame:FindFirstChild("MuteButtonHint", true)
						if MuteButtonHint then
							MuteButtonHint.Image = pollImage_upvr()
						end
					end
				end)
				if GetFFlagPlayerListAnimateMic_upvr() then
					module_upvr_3.SettingsShowSignal:connect(function(arg1) -- Line 775
						--[[ Upvalues[5]:
							[1]: RunService_upvr (copied, readonly)
							[2]: var74_upvr (copied, readonly)
							[3]: module_upvr_3 (copied, readonly)
							[4]: pollImage_upvr (copied, readonly)
							[5]: Otter_upvr (copied, readonly)
						]]
						if arg1 and not false then
							local var547_upvw = 0
							RunService_upvr:BindToRenderStep("settings-hub-renderstep", Enum.RenderPriority.Last.Value, function() -- Line 780
								--[[ Upvalues[4]:
									[1]: var547_upvw (read and write)
									[2]: var74_upvr (copied, readonly)
									[3]: module_upvr_3 (copied, readonly)
									[4]: pollImage_upvr (copied, readonly)
								]]
								var547_upvw += 1
								if var547_upvw % 3 == 0 then
									if var74_upvr then return end
									local MuteButtonHint_7 = module_upvr_3.BottomButtonFrame:FindFirstChild("MuteButtonHint", true)
									if MuteButtonHint_7 then
										MuteButtonHint_7.Image = pollImage_upvr()
									end
								end
							end)
						elseif true then
							RunService_upvr:UnbindFromRenderStep("settings-hub-renderstep")
						end
						if arg1 then
							module_upvr_3.lastVoiceRecordingIndicatorTextUpdated = tick()
							module_upvr_3.voiceRecordingIndicatorTextMotor:setGoal(Otter_upvr.instant(0))
						end
					end)
				end
			end
		end
	end
	local function addMuteButtonToBar_upvr() -- Line 801, Named "addMuteButtonToBar"
		--[[ Upvalues[7]:
			[1]: var74_upvr (copied, readonly)
			[2]: Theme_upvr (copied, readonly)
			[3]: appendMicButton_upvr (readonly)
			[4]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[5]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[6]: any_IsEnabled_result1_upvr (copied, readonly)
			[7]: module_upvr_3 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 3 start (CF ANALYSIS FAILED)
		appendMicButton_upvr()
		-- KONSTANTERROR: [3] 4. Error Block 3 end (CF ANALYSIS FAILED)
	end
	local var549_upvw = false
	local var550_upvw = false
	local var551_upvw
	local var552_upvw
	local function setupVoiceListeners() -- Line 819
		--[[ Upvalues[20]:
			[1]: var550_upvw (read and write)
			[2]: GetFFlagEnableShowVoiceUI_upvr (copied, readonly)
			[3]: var549_upvw (read and write)
			[4]: module_upvr_3 (readonly)
			[5]: default_upvr (copied, readonly)
			[6]: addMuteButtonToBar_upvr (readonly)
			[7]: GetFFlagEnableInExpJoinVoiceAnalytics_upvr (copied, readonly)
			[8]: getCamMicPermissions_upvr (copied, readonly)
			[9]: GetFFlagMuteButtonRaceConditionFix_upvr (copied, readonly)
			[10]: var551_upvw (read and write)
			[11]: var74_upvr (copied, readonly)
			[12]: pollImage_upvr (readonly)
			[13]: Otter_upvr (copied, readonly)
			[14]: RobloxTranslator_upvr (copied, readonly)
			[15]: GetFFlagPlayerListAnimateMic_upvr (copied, readonly)
			[16]: var552_upvw (read and write)
			[17]: RunService_upvr (copied, readonly)
			[18]: hideVoiceUx_upvr (readonly)
			[19]: GetFFlagVoiceChatUILogging_upvr (copied, readonly)
			[20]: any_new_result1_upvr (copied, readonly)
		]]
		if game:GetEngineFeature("VoiceChatSupported") and not var550_upvw then
			var550_upvw = true
			if GetFFlagEnableShowVoiceUI_upvr() then
				local function showUI() -- Line 825
					--[[ Upvalues[15]:
						[1]: var549_upvw (copied, read and write)
						[2]: module_upvr_3 (copied, readonly)
						[3]: default_upvr (copied, readonly)
						[4]: addMuteButtonToBar_upvr (copied, readonly)
						[5]: GetFFlagEnableInExpJoinVoiceAnalytics_upvr (copied, readonly)
						[6]: getCamMicPermissions_upvr (copied, readonly)
						[7]: GetFFlagMuteButtonRaceConditionFix_upvr (copied, readonly)
						[8]: var551_upvw (copied, read and write)
						[9]: var74_upvr (copied, readonly)
						[10]: pollImage_upvr (copied, readonly)
						[11]: Otter_upvr (copied, readonly)
						[12]: RobloxTranslator_upvr (copied, readonly)
						[13]: GetFFlagPlayerListAnimateMic_upvr (copied, readonly)
						[14]: var552_upvw (copied, read and write)
						[15]: RunService_upvr (copied, readonly)
					]]
					var549_upvw = true
					module_upvr_3.VoiceRecordingText.Visible = true
					default_upvr:getService().StateChanged:Connect(function(arg1, arg2) -- Line 829
						--[[ Upvalues[3]:
							[1]: var549_upvw (copied, read and write)
							[2]: addMuteButtonToBar_upvr (copied, readonly)
							[3]: module_upvr_3 (copied, readonly)
						]]
						if arg2 == Enum.VoiceChatState.Joined then
							if var549_upvw == false then
								addMuteButtonToBar_upvr()
							end
							module_upvr_3.VoiceRecordingText.Visible = true
						end
					end)
					default_upvr:SetupParticipantListeners()
					if GetFFlagEnableInExpJoinVoiceAnalytics_upvr() then
						getCamMicPermissions_upvr(function(arg1) -- Line 840
							--[[ Upvalues[1]:
								[1]: module_upvr_3 (copied, readonly)
							]]
							module_upvr_3.hasMicPermissions = arg1.hasMicPermissions
						end, nil, true, "PermissionsButtons.getPermissions")
					end
					addMuteButtonToBar_upvr()
					if GetFFlagMuteButtonRaceConditionFix_upvr() then
						var551_upvw = default_upvr.muteChanged.Event:Connect(function(arg1) -- Line 847
							--[[ Upvalues[5]:
								[1]: var74_upvr (copied, readonly)
								[2]: module_upvr_3 (copied, readonly)
								[3]: pollImage_upvr (copied, readonly)
								[4]: Otter_upvr (copied, readonly)
								[5]: RobloxTranslator_upvr (copied, readonly)
							]]
							if var74_upvr then
							else
								local MuteButtonHint_5 = module_upvr_3.BottomButtonFrame:FindFirstChild("MuteButtonHint", true)
								if MuteButtonHint_5 then
									MuteButtonHint_5.Image = pollImage_upvr()
								end
							end
							module_upvr_3.isMuted = arg1
							module_upvr_3.lastVoiceRecordingIndicatorTextUpdated = tick()
							module_upvr_3.voiceRecordingIndicatorTextMotor:setGoal(Otter_upvr.instant(0))
							if module_upvr_3.isMuted then
								local var557 = module_upvr_3
								if not RobloxTranslator_upvr then
									var557 = "Mic Off"
								else
									local pcall_result1_2, pcall_result2_2 = pcall(RobloxTranslator_upvr.FormatByKey, RobloxTranslator_upvr, "InGame.CommonUI.Label.MicOff")
									if pcall_result1_2 then
										var557 = pcall_result2_2
									else
										var557 = "Mic Off"
									end
								end
								var557.VoiceRecordingText.Text = var557
							else
								var557 = module_upvr_3
								local var560 = var557
								if not RobloxTranslator_upvr then
									var560 = "Mic On (recording audio)"
								else
									local pcall_result1_4, pcall_result2_4 = pcall(RobloxTranslator_upvr.FormatByKey, RobloxTranslator_upvr, "InGame.CommonUI.Label.MicOnRecording")
									if pcall_result1_4 then
										var560 = pcall_result2_4
									else
										var560 = "Mic On (recording audio)"
									end
								end
								var560.VoiceRecordingText.Text = var560
							end
						end)
						if GetFFlagPlayerListAnimateMic_upvr() then
							var552_upvw = module_upvr_3.SettingsShowSignal:connect(function(arg1) -- Line 861
								--[[ Upvalues[5]:
									[1]: RunService_upvr (copied, readonly)
									[2]: var74_upvr (copied, readonly)
									[3]: module_upvr_3 (copied, readonly)
									[4]: pollImage_upvr (copied, readonly)
									[5]: Otter_upvr (copied, readonly)
								]]
								if arg1 and not false then
									local var566_upvw = 0
									RunService_upvr:BindToRenderStep("settings-hub-renderstep", Enum.RenderPriority.Last.Value, function() -- Line 866
										--[[ Upvalues[4]:
											[1]: var566_upvw (read and write)
											[2]: var74_upvr (copied, readonly)
											[3]: module_upvr_3 (copied, readonly)
											[4]: pollImage_upvr (copied, readonly)
										]]
										var566_upvw += 1
										if var566_upvw % 3 == 0 then
											if var74_upvr then return end
											local MuteButtonHint_13 = module_upvr_3.BottomButtonFrame:FindFirstChild("MuteButtonHint", true)
											if MuteButtonHint_13 then
												MuteButtonHint_13.Image = pollImage_upvr()
											end
										end
									end)
								elseif true then
									RunService_upvr:UnbindFromRenderStep("settings-hub-renderstep")
								end
								if arg1 then
									module_upvr_3.lastVoiceRecordingIndicatorTextUpdated = tick()
									module_upvr_3.voiceRecordingIndicatorTextMotor:setGoal(Otter_upvr.instant(0))
								end
							end)
						end
					end
				end
				if default_upvr.voiceUIVisible then
					showUI()
				end
				default_upvr.showVoiceUI.Event:Connect(showUI)
				default_upvr.hideVoiceUI.Event:Connect(function() -- Line 886, Named "hideUI"
					--[[ Upvalues[5]:
						[1]: module_upvr_3 (copied, readonly)
						[2]: var549_upvw (copied, read and write)
						[3]: hideVoiceUx_upvr (copied, readonly)
						[4]: var551_upvw (copied, read and write)
						[5]: var552_upvw (copied, read and write)
					]]
					module_upvr_3.VoiceRecordingText.Visible = false
					var549_upvw = false
					hideVoiceUx_upvr()
					if var551_upvw then
						var551_upvw:Disconnect()
					end
					if var552_upvw then
						var552_upvw:Disconnect()
					end
				end)
				return
			end
			default_upvr:asyncInit():andThen(function() -- Line 904
				--[[ Upvalues[14]:
					[1]: var549_upvw (copied, read and write)
					[2]: module_upvr_3 (copied, readonly)
					[3]: default_upvr (copied, readonly)
					[4]: hideVoiceUx_upvr (copied, readonly)
					[5]: addMuteButtonToBar_upvr (copied, readonly)
					[6]: GetFFlagEnableInExpJoinVoiceAnalytics_upvr (copied, readonly)
					[7]: getCamMicPermissions_upvr (copied, readonly)
					[8]: GetFFlagMuteButtonRaceConditionFix_upvr (copied, readonly)
					[9]: var74_upvr (copied, readonly)
					[10]: pollImage_upvr (copied, readonly)
					[11]: Otter_upvr (copied, readonly)
					[12]: RobloxTranslator_upvr (copied, readonly)
					[13]: GetFFlagPlayerListAnimateMic_upvr (copied, readonly)
					[14]: RunService_upvr (copied, readonly)
				]]
				var549_upvw = true
				module_upvr_3.VoiceRecordingText.Visible = true
				default_upvr:getService().StateChanged:Connect(function(arg1, arg2) -- Line 908
					--[[ Upvalues[4]:
						[1]: module_upvr_3 (copied, readonly)
						[2]: var549_upvw (copied, read and write)
						[3]: hideVoiceUx_upvr (copied, readonly)
						[4]: addMuteButtonToBar_upvr (copied, readonly)
					]]
					if arg2 == Enum.VoiceChatState.Ended then
						module_upvr_3.VoiceRecordingText.Visible = false
						var549_upvw = false
						hideVoiceUx_upvr()
					elseif arg2 == Enum.VoiceChatState.Joined then
						if var549_upvw == false then
							addMuteButtonToBar_upvr()
						end
						module_upvr_3.VoiceRecordingText.Visible = true
					end
				end)
				default_upvr:SetupParticipantListeners()
				if GetFFlagEnableInExpJoinVoiceAnalytics_upvr() then
					getCamMicPermissions_upvr(function(arg1) -- Line 923
						--[[ Upvalues[1]:
							[1]: module_upvr_3 (copied, readonly)
						]]
						module_upvr_3.hasMicPermissions = arg1.hasMicPermissions
					end, nil, true, "PermissionsButtons.getPermissions")
				end
				addMuteButtonToBar_upvr()
				if GetFFlagMuteButtonRaceConditionFix_upvr() then
					default_upvr.muteChanged.Event:Connect(function(arg1) -- Line 930
						--[[ Upvalues[5]:
							[1]: var74_upvr (copied, readonly)
							[2]: module_upvr_3 (copied, readonly)
							[3]: pollImage_upvr (copied, readonly)
							[4]: Otter_upvr (copied, readonly)
							[5]: RobloxTranslator_upvr (copied, readonly)
						]]
						-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [3] 4. Error Block 27 start (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [3] 4. Error Block 27 end (CF ANALYSIS FAILED)
					end)
					if GetFFlagPlayerListAnimateMic_upvr() then
						module_upvr_3.SettingsShowSignal:connect(function(arg1) -- Line 944
							--[[ Upvalues[5]:
								[1]: RunService_upvr (copied, readonly)
								[2]: var74_upvr (copied, readonly)
								[3]: module_upvr_3 (copied, readonly)
								[4]: pollImage_upvr (copied, readonly)
								[5]: Otter_upvr (copied, readonly)
							]]
							if arg1 and not false then
								local var575_upvw = 0
								RunService_upvr:BindToRenderStep("settings-hub-renderstep", Enum.RenderPriority.Last.Value, function() -- Line 949
									--[[ Upvalues[4]:
										[1]: var575_upvw (read and write)
										[2]: var74_upvr (copied, readonly)
										[3]: module_upvr_3 (copied, readonly)
										[4]: pollImage_upvr (copied, readonly)
									]]
									var575_upvw += 1
									if var575_upvw % 3 == 0 then
										if var74_upvr then return end
										local MuteButtonHint_8 = module_upvr_3.BottomButtonFrame:FindFirstChild("MuteButtonHint", true)
										if MuteButtonHint_8 then
											MuteButtonHint_8.Image = pollImage_upvr()
										end
									end
								end)
							elseif true then
								RunService_upvr:UnbindFromRenderStep("settings-hub-renderstep")
							end
							if arg1 then
								module_upvr_3.lastVoiceRecordingIndicatorTextUpdated = tick()
								module_upvr_3.voiceRecordingIndicatorTextMotor:setGoal(Otter_upvr.instant(0))
							end
						end)
					end
				end
			end):catch(function(arg1) -- Line 969
				--[[ Upvalues[2]:
					[1]: GetFFlagVoiceChatUILogging_upvr (copied, readonly)
					[2]: any_new_result1_upvr (copied, readonly)
				]]
				if GetFFlagVoiceChatUILogging_upvr() then
					any_new_result1_upvr:warning("Failed to init VoiceChatServiceManager {}", arg1)
				end
			end)
		end
	end
	if not game_DefineFastFlag_result1_upvr_2 then
		setupVoiceListeners()
	end
	local var578_upvw = true
	local function setResetEnabled_upvr(arg1) -- Line 983, Named "setResetEnabled"
		--[[ Upvalues[2]:
			[1]: var578_upvw (read and write)
			[2]: module_upvr_3 (readonly)
		]]
		var578_upvw = arg1
		if module_upvr_3.ResetCharacterButton then
			module_upvr_3.ResetCharacterButton.Selectable = arg1
			module_upvr_3.ResetCharacterButton.Active = arg1
			module_upvr_3.ResetCharacterButton.Enabled.Value = arg1
			local ResetCharacterHint = module_upvr_3.ResetCharacterButton:FindFirstChild("ResetCharacterHint")
			local var580
			if ResetCharacterHint then
				local function INLINED_9() -- Internal function, doesn't exist in bytecode
					var580 = Color3.fromRGB(255, 255, 255)
					return var580
				end
				if not arg1 or not INLINED_9() then
					var580 = Color3.fromRGB(100, 100, 100)
				end
				ResetCharacterHint.ImageColor3 = var580
			end
			local ResetCharacterButtonTextLabel_2 = module_upvr_3.ResetCharacterButton:FindFirstChild("ResetCharacterButtonTextLabel")
			local var582
			if ResetCharacterButtonTextLabel_2 then
				local function INLINED_10() -- Internal function, doesn't exist in bytecode
					var582 = Color3.fromRGB(255, 255, 255)
					return var582
				end
				if not arg1 or not INLINED_10() then
					var582 = Color3.fromRGB(100, 100, 100)
				end
				ResetCharacterButtonTextLabel_2.TextColor3 = var582
			end
		end
	end
	local var583_upvw
	local function GetRespawnBehaviour(arg1) -- Line 1001
		--[[ Upvalues[5]:
			[1]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[2]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[3]: module_upvr_3 (readonly)
			[4]: var578_upvw (read and write)
			[5]: var583_upvw (read and write)
		]]
		if FFlagRelocateMobileMenuButtons_upvr and FIntRelocateMobileMenuButtonsVariant_upvr ~= 0 then
			return module_upvr_3:GetExperienceControlStore().getCanRespawn(false), module_upvr_3:GetExperienceControlStore().getCustomRespawnCallback(false)
		end
		return var578_upvw, var583_upvw
	end
	module_upvr_3.GetRespawnBehaviour = GetRespawnBehaviour
	module_upvr_3.RespawnBehaviourChangedEvent = Instance.new("BindableEvent")
	StarterGui_upvr:RegisterSetCore("ResetButtonCallback", function(arg1) -- Line 1011
		--[[ Upvalues[6]:
			[1]: module_upvr_3 (readonly)
			[2]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[3]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[4]: var578_upvw (read and write)
			[5]: setResetEnabled_upvr (readonly)
			[6]: var583_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 53 start (CF ANALYSIS FAILED)
		local var585 = false
		if typeof(arg1) == "Instance" then
			var585 = arg1:IsA("BindableEvent")
		end
		if var585 or type(arg1) == "boolean" then
			module_upvr_3.ResetCharacterPage:SetResetCallback(arg1)
		else
			warn("ResetButtonCallback must be set to a BindableEvent or a boolean")
		end
		if FFlagRelocateMobileMenuButtons_upvr and FIntRelocateMobileMenuButtonsVariant_upvr ~= 0 then
		else
		end
		-- KONSTANTERROR: [0] 1. Error Block 53 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [49] 38. Error Block 49 start (CF ANALYSIS FAILED)
		if FFlagRelocateMobileMenuButtons_upvr and FIntRelocateMobileMenuButtonsVariant_upvr ~= 0 then
			module_upvr_3:GetExperienceControlStore().setCanRespawn(false)
		else
			setResetEnabled_upvr(false)
		end
		-- KONSTANTERROR: [49] 38. Error Block 49 end (CF ANALYSIS FAILED)
	end)
	StarterGui_upvr:RegisterGetCore("ResetButtonCallback", function() -- Line 1046
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		local any_GetRespawnBehaviour_result1_2, _ = module_upvr_3:GetRespawnBehaviour()
		return any_GetRespawnBehaviour_result1_2
	end)
	local function createPermissionsButtons_upvr(arg1) -- Line 1053, Named "createPermissionsButtons"
		--[[ Upvalues[10]:
			[1]: GetFFlagRemovePermissionsButtons_upvr (copied, readonly)
			[2]: FFlagInExperienceUseAppStyleProvider_upvr (copied, readonly)
			[3]: React_upvr (copied, readonly)
			[4]: AppStyleProvider_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: PermissionsButtons_upvr (copied, readonly)
			[7]: any_IsEnabled_result1_upvr (copied, readonly)
			[8]: Utility_upvr (copied, readonly)
			[9]: module_upvr_3 (readonly)
			[10]: GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr (copied, readonly)
		]]
		if GetFFlagRemovePermissionsButtons_upvr() then return end
		if FFlagInExperienceUseAppStyleProvider_upvr then
			local module_4 = {}
			local tbl_33 = {
				isTenFootInterface = any_IsEnabled_result1_upvr;
				isPortrait = Utility_upvr:IsPortrait();
				isSmallTouchScreen = Utility_upvr:IsSmallTouchScreen();
				ZIndex = module_upvr_3.Shield.ZIndex;
				LayoutOrder = -1;
			}
			tbl_33.shouldFillScreen = arg1
			tbl_33.selfViewOpen = module_upvr_3.selfViewOpen
			local var591 = true
			tbl_33.useNewMenuTheme = var591
			if GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr() then
				var591 = module_upvr_3
			else
				var591 = nil
			end
			tbl_33.hubRef = var591
			module_4.PermissionsButtons = Roact_upvr.createElement(PermissionsButtons_upvr, tbl_33)
			return React_upvr.createElement(AppStyleProvider_upvr, {}, module_4)
		end
		local module_6 = {
			isTenFootInterface = any_IsEnabled_result1_upvr;
			isPortrait = Utility_upvr:IsPortrait();
			isSmallTouchScreen = Utility_upvr:IsSmallTouchScreen();
			ZIndex = module_upvr_3.Shield.ZIndex;
			LayoutOrder = -1;
		}
		module_6.shouldFillScreen = arg1
		module_6.selfViewOpen = module_upvr_3.selfViewOpen
		local var593 = true
		module_6.useNewMenuTheme = var593
		if GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr() then
			var593 = module_upvr_3
		else
			var593 = nil
		end
		module_6.hubRef = var593
		return Roact_upvr.createElement(PermissionsButtons_upvr, module_6)
	end
	local var95_result1_upvr_2, createSignal_upvr_result2_upvr_2 = createSignal_upvr(true)
	local var95_result1_upvr, var95_result2_upvr = createSignal_upvr(nil)
	local function GetExperienceControlStore(arg1) -- Line 1090
		--[[ Upvalues[16]:
			[1]: createSignal_upvr_result2_upvr_2 (readonly)
			[2]: module_upvr_3 (readonly)
			[3]: var95_result1_upvr_2 (readonly)
			[4]: var95_result1_upvr (readonly)
			[5]: var95_result2_upvr (readonly)
			[6]: GetFFlagEnableLeaveGameUpsellEntrypoint_upvr (copied, readonly)
			[7]: Constants_upvr (copied, readonly)
			[8]: TelemetryService_upvr (copied, readonly)
			[9]: MenuLeaveGameTelemetryConfig_upvr (copied, readonly)
			[10]: MenuResetCharacterTelemetryConfig_upvr (copied, readonly)
			[11]: FFlagAddUILessMode_upvr (copied, readonly)
			[12]: FIntAddUILessModeVariant_upvr (copied, readonly)
			[13]: RbxAnalyticsService_upvr (copied, readonly)
			[14]: module_upvr_2 (copied, readonly)
			[15]: FFlagIEMSettingsAddPlaySessionID_upvr (copied, readonly)
			[16]: MenuResumeTelemetryConfig_upvr (copied, readonly)
		]]
		return {
			getCanRespawn = var95_result1_upvr_2;
			getCustomRespawnCallback = var95_result1_upvr;
			setCanRespawn = function(arg1_12) -- Line 1091
				--[[ Upvalues[2]:
					[1]: createSignal_upvr_result2_upvr_2 (copied, readonly)
					[2]: module_upvr_3 (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				createSignal_upvr_result2_upvr_2(arg1_12)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [48] 36. Error Block 8 start (CF ANALYSIS FAILED)
				local ResetCharacterButtonTextLabel = module_upvr_3.ResetCharacterButton:FindFirstChild("ResetCharacterButtonTextLabel")
				-- KONSTANTERROR: [48] 36. Error Block 8 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [57] 43. Error Block 20 start (CF ANALYSIS FAILED)
				local Color3_fromRGB_result1_2 = Color3.fromRGB(255, 255, 255)
				if not Color3_fromRGB_result1_2 then
					-- KONSTANTERROR: [64] 49. Error Block 15 start (CF ANALYSIS FAILED)
					Color3_fromRGB_result1_2 = Color3.fromRGB(100, 100, 100)
					-- KONSTANTERROR: [64] 49. Error Block 15 end (CF ANALYSIS FAILED)
				end
				ResetCharacterButtonTextLabel.TextColor3 = Color3_fromRGB_result1_2
				-- KONSTANTERROR: [57] 43. Error Block 20 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [72] 55. Error Block 14 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [72] 55. Error Block 14 end (CF ANALYSIS FAILED)
			end;
			setCustomRespawnCallback = var95_result2_upvr;
			onLeaveGame = function(arg1_13) -- Line 1113, Named "onLeaveGame"
				--[[ Upvalues[5]:
					[1]: module_upvr_3 (copied, readonly)
					[2]: GetFFlagEnableLeaveGameUpsellEntrypoint_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
					[4]: TelemetryService_upvr (copied, readonly)
					[5]: MenuLeaveGameTelemetryConfig_upvr (copied, readonly)
				]]
				if not module_upvr_3:GetVisibility() then
				else
					module_upvr_3:AddToMenuStack(module_upvr_3.Pages.CurrentPage)
					module_upvr_3.HubBar.Visible = false
					if GetFFlagEnableLeaveGameUpsellEntrypoint_upvr() and module_upvr_3.leaveGameUpsellProp ~= Constants_upvr.PHONE_UPSELL_VALUE_PROP.None then
						module_upvr_3:SwitchToPage(module_upvr_3.LeaveGameUpsellPage, false)
					else
						module_upvr_3:SwitchToPage(module_upvr_3.LeaveGamePage, false)
					end
					local tbl_4 = {}
					local tbl_3 = {}
					tbl_3.source = arg1_13
					tbl_4.customFields = tbl_3
					TelemetryService_upvr:LogCounter(MenuLeaveGameTelemetryConfig_upvr, tbl_4)
				end
			end;
			onRespawn = function(arg1_14) -- Line 1132, Named "onRespawn"
				--[[ Upvalues[4]:
					[1]: var95_result1_upvr_2 (copied, readonly)
					[2]: module_upvr_3 (copied, readonly)
					[3]: TelemetryService_upvr (copied, readonly)
					[4]: MenuResetCharacterTelemetryConfig_upvr (copied, readonly)
				]]
				if not var95_result1_upvr_2(false) then
				else
					module_upvr_3:AddToMenuStack(module_upvr_3.Pages.CurrentPage)
					module_upvr_3.HubBar.Visible = false
					module_upvr_3:SwitchToPage(module_upvr_3.ResetCharacterPage, false)
					local tbl_6 = {}
					local tbl_18 = {}
					tbl_18.source = arg1_14
					tbl_6.customFields = tbl_18
					TelemetryService_upvr:LogCounter(MenuResetCharacterTelemetryConfig_upvr, tbl_6)
				end
			end;
			onResume = function(arg1_15) -- Line 1147, Named "onResume"
				--[[ Upvalues[8]:
					[1]: FFlagAddUILessMode_upvr (copied, readonly)
					[2]: module_upvr_3 (copied, readonly)
					[3]: FIntAddUILessModeVariant_upvr (copied, readonly)
					[4]: RbxAnalyticsService_upvr (copied, readonly)
					[5]: module_upvr_2 (copied, readonly)
					[6]: FFlagIEMSettingsAddPlaySessionID_upvr (copied, readonly)
					[7]: TelemetryService_upvr (copied, readonly)
					[8]: MenuResumeTelemetryConfig_upvr (copied, readonly)
				]]
				if FFlagAddUILessMode_upvr then
					module_upvr_3:SetVisibility(false, nil, nil, nil, arg1_15)
				else
					module_upvr_3:SetVisibility(false)
				end
				local var606
				if FFlagAddUILessMode_upvr and FIntAddUILessModeVariant_upvr ~= 0 and module_upvr_3.uiLessStore.getUILessModeEnabled(false) then
					module_upvr_3.uiLessStore.setUIVisible(false)
				end
				local tbl_17 = {}
				tbl_17.source = arg1_15
				if FFlagIEMSettingsAddPlaySessionID_upvr then
					var606 = module_upvr_3.playSessionId
				else
					var606 = nil
				end
				tbl_17.playsessionid = var606
				RbxAnalyticsService_upvr:SetRBXEventStream(module_upvr_2.AnalyticsTargetName, module_upvr_2.AnalyticsResumeGameName, module_upvr_2.AnalyticsMenuActionName, tbl_17)
				local tbl_10 = {}
				local tbl_32 = {}
				tbl_32.source = arg1_15
				tbl_10.customFields = tbl_32
				TelemetryService_upvr:LogCounter(MenuResumeTelemetryConfig_upvr, tbl_10)
			end;
		}
	end
	module_upvr_3.GetExperienceControlStore = GetExperienceControlStore
	local setVisibilityInternal_upvw
	local any_new_result1_upvr_3 = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId)
	local any_GetImageForKeyCode_result1_upvr_2 = UserInputService_upvr:GetImageForKeyCode(Enum.KeyCode.ButtonStart)
	local function resizeBottomBarButtons_upvr() -- Line 2344, Named "resizeBottomBarButtons"
		--[[ Upvalues[2]:
			[1]: module_upvr_3 (readonly)
			[2]: isInExperienceUIVREnabled_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local X = module_upvr_3.BottomButtonFrame.AbsoluteSize.X
		local len_2 = #module_upvr_3.BottomBarButtons
		if len_2 == 4 then
			X = X - 48 - 12
			len_2 -= 1
		end
		if isInExperienceUIVREnabled_upvr then
		end
		for i_4 = 1, #module_upvr_3.BottomBarButtons do
			local var644 = module_upvr_3.BottomBarButtons[i_4]
			local _1 = var644[1]
			if _1 ~= "MuteButtonButton" then
				module_upvr_3[_1].Size = UDim2.fromOffset(module_upvr_3.SettingsUIDelegate:getBottomButtonSize((X - (len_2 - 1) * 12 - 12) / len_2), module_upvr_3[var644[1]].Size.Y.Offset)
			end
		end
	end
	local function onScreenSizeChanged_upvr() -- Line 2367, Named "onScreenSizeChanged"
		--[[ Upvalues[23]:
			[1]: module_upvr_3 (readonly)
			[2]: Theme_upvr (copied, readonly)
			[3]: isInExperienceUIVREnabled_upvr (copied, readonly)
			[4]: RobloxGui_upvr (copied, readonly)
			[5]: Utility_upvr (copied, readonly)
			[6]: any_IsEnabled_result1_upvr (copied, readonly)
			[7]: VRService_upvr (copied, readonly)
			[8]: FFlagAddNextUpContainer_upvr (copied, readonly)
			[9]: game_GetEngineFeature_result1_upvr_3 (copied, readonly)
			[10]: GetFFlagRemovePermissionsButtons_upvr (copied, readonly)
			[11]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (copied, readonly)
			[12]: Roact_upvr (copied, readonly)
			[13]: createPermissionsButtons_upvr (readonly)
			[14]: game_DefineFastFlag_result1_upvr_4 (copied, readonly)
			[15]: RunService_upvr (copied, readonly)
			[16]: shouldShowBottomBar_upvr (readonly)
			[17]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[18]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[19]: setBottomBarBindings_upvr (readonly)
			[20]: FFlagIEMFocusNavToButtons_upvr (copied, readonly)
			[21]: setBottomBarSelection_upvr (readonly)
			[22]: removeBottomBarBindings_upvr (readonly)
			[23]: resizeBottomBarButtons_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 245 start (CF ANALYSIS FAILED)
		local function _() -- Line 2368, Named "getBackBarVisible"
			--[[ Upvalues[1]:
				[1]: module_upvr_3 (copied, readonly)
			]]
			if not module_upvr_3.BackBarRef:getValue() then
				return false
			end
			return module_upvr_3.BackBarRef:getValue().Visible
		end
		local function _() -- Line 2375, Named "getFrontBarVisible"
			--[[ Upvalues[1]:
				[1]: module_upvr_3 (copied, readonly)
			]]
			if not module_upvr_3.FrontBarRef:getValue() then
				return false
			end
			return module_upvr_3.FrontBarRef:getValue().Visible
		end
		local any_MenuContainerPosition_result1_3 = Theme_upvr.MenuContainerPosition(module_upvr_3.SettingsUIDelegate)
		local var655
		if isInExperienceUIVREnabled_upvr then
			var655 = module_upvr_3.SettingsUIDelegate:getFullScreenSize()
		else
			var655 = RobloxGui_upvr.AbsoluteSize.y
		end
		if any_IsEnabled_result1_upvr then
		elseif Utility_upvr:IsSmallTouchScreen() then
		elseif isInExperienceUIVREnabled_upvr and VRService_upvr.VREnabled then
		end
		if FFlagAddNextUpContainer_upvr then
			if module_upvr_3.Pages.CurrentPage then
				if module_upvr_3.Pages.CurrentPage.DisableTopPadding then
					if module_upvr_3.Pages.CurrentPage.MaintainVerticalSize then
					end
				end
			end
		end
		module_upvr_3.MenuContainer.Size = any_MenuContainerPosition_result1_3.Size
		module_upvr_3.MenuContainer.Position = any_MenuContainerPosition_result1_3.Position
		module_upvr_3.MenuContainer.AnchorPoint = any_MenuContainerPosition_result1_3.AnchorPoint
		local var656 = module_upvr_3.HubBar.Size.Y.Offset * 2
		if not module_upvr_3.BackBarRef:getValue() then
			var656 = false
		else
			var656 = module_upvr_3.BackBarRef:getValue().Visible
		end
		if var656 and module_upvr_3.BackBarRef:getValue() then
		end
		local var657 = game_GetEngineFeature_result1_upvr_3
		if var657 then
			if not module_upvr_3.FrontBarRef:getValue() then
				var657 = false
			else
				var657 = module_upvr_3.FrontBarRef:getValue().Visible
			end
			if var657 then
				var657 = module_upvr_3.FrontBarRef:getValue()
				if var657 then
					var657 = module_upvr_3.FrontBarRef:getValue().Size.Y.Offset
				end
			end
		end
		if Theme_upvr.EnableVerticalBottomBar then
			module_upvr_3.VerticalMenu.Visible = false
			module_upvr_3.VerticalMenuDivider.Visible = false
			for i_5 = 1, #module_upvr_3.BottomBarButtonsComponents do
				module_upvr_3.BottomBarButtonsComponents[i_5].Parent = module_upvr_3.BottomButtonFrame
			end
		end
		if Utility_upvr:IsPortrait() then
			module_upvr_3.HubBar.Position = UDim2.new(0.5, 0, 0, 10)
			module_upvr_3.HubBar.Size = UDim2.new(0, RobloxGui_upvr.AbsoluteSize.X - 40, 0, 54)
			-- KONSTANTWARNING: GOTO [424] #311
		end
		if any_IsEnabled_result1_upvr then
			module_upvr_3.HubBar.Size = UDim2.new(0, 1200, 0, 100)
			-- KONSTANTWARNING: GOTO [424] #311
		end
		-- KONSTANTERROR: [0] 1. Error Block 245 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [284] 206. Error Block 229 start (CF ANALYSIS FAILED)
		if Utility_upvr:IsSmallTouchScreen() then
			if Theme_upvr.EnableVerticalBottomBar then
				module_upvr_3.VerticalMenu.Visible = true
				module_upvr_3.VerticalMenuDivider.Visible = true
				for i_6 = 1, #module_upvr_3.BottomBarButtonsComponents do
					module_upvr_3.BottomBarButtonsComponents[i_6].Parent = module_upvr_3.VerticalMenu
				end
				module_upvr_3.HubBar.Size = UDim2.new(0, RobloxGui_upvr.AbsoluteSize.X - 60 - Theme_upvr.VerticalMenuWidth, 0, 52)
			else
				module_upvr_3.HubBar.Size = UDim2.new(0, RobloxGui_upvr.AbsoluteSize.X - 60, 0, 52)
			end
			-- KONSTANTWARNING: GOTO [424] #311
		end
		-- KONSTANTERROR: [284] 206. Error Block 229 end (CF ANALYSIS FAILED)
	end
	local function _() -- Line 2644, Named "onPreferredTransparencyChanged"
		--[[ Upvalues[3]:
			[1]: module_upvr_3 (readonly)
			[2]: Theme_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
		]]
		module_upvr_3.MenuContainer.BackgroundTransparency = Theme_upvr.transparency("MenuContainer", 1) * GuiService_upvr.PreferredTransparency
	end
	local var658_upvw = any_IsEnabled_result1_upvr
	local tbl_24_upvr = {
		[Enum.UserInputType.Gamepad1] = true;
		[Enum.UserInputType.Gamepad2] = true;
		[Enum.UserInputType.Gamepad3] = true;
		[Enum.UserInputType.Gamepad4] = true;
		[Enum.KeyCode.Left] = true;
		[Enum.KeyCode.Right] = true;
		[Enum.KeyCode.Up] = true;
		[Enum.KeyCode.Down] = true;
		[Enum.KeyCode.Tab] = true;
		[Enum.UserInputType.Touch] = false;
		[Enum.UserInputType.MouseButton1] = false;
		[Enum.UserInputType.MouseButton2] = false;
	}
	UserInputService_upvr.InputBegan:connect(function(arg1) -- Line 2690
		--[[ Upvalues[2]:
			[1]: tbl_24_upvr (readonly)
			[2]: var658_upvw (read and write)
		]]
		if arg1.UserInputType and tbl_24_upvr[arg1.UserInputType] ~= nil then
			var658_upvw = tbl_24_upvr[arg1.UserInputType]
		elseif arg1.KeyCode and tbl_24_upvr[arg1.KeyCode] then
			var658_upvw = tbl_24_upvr[arg1.KeyCode]
		end
	end)
	UserInputService_upvr.InputChanged:connect(function(arg1) -- Line 2697
		--[[ Upvalues[1]:
			[1]: var658_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 4. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 7. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 7. Error Block 12 end (CF ANALYSIS FAILED)
	end)
	local GetHeaderPosition_upvw
	local function var662_upvr(arg1, arg2) -- Line 2709
		--[[ Upvalues[2]:
			[1]: GetHeaderPosition_upvw (read and write)
			[2]: module_upvr_3 (readonly)
		]]
		local GetHeaderPosition_upvw_result1 = GetHeaderPosition_upvw(module_upvr_3.Pages.CurrentPage)
		if GetHeaderPosition_upvw_result1 < 0 then
		else
			local var669 = GetHeaderPosition_upvw_result1 + arg1
			if arg2 then
				if #module_upvr_3.TabHeaders < var669 then
					var669 = 1
				elseif var669 < 1 then
					var669 = #module_upvr_3.TabHeaders
				end
			end
			local var670 = module_upvr_3.TabHeaders[var669]
			if var670 then
				for i_12, _ in pairs(module_upvr_3.Pages.PageTable) do
					if i_12:GetTabHeader() == var670 then
						module_upvr_3:SwitchToPage(i_12, true, arg1)
						return
					end
				end
			end
		end
	end
	local function var674_upvr(arg1, arg2, arg3) -- Line 2733
		--[[ Upvalues[1]:
			[1]: var662_upvr (readonly)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
		else
			local var675 = 0
			if arg3.KeyCode == Enum.KeyCode.ButtonR1 then
				var675 = 1
			elseif arg3.KeyCode == Enum.KeyCode.ButtonL1 then
				var675 = -1
			end
			var662_upvr(var675, true)
		end
	end
	local function var676_upvr(arg1) -- Line 2746
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: var662_upvr (readonly)
		]]
		if arg1.KeyCode == Enum.KeyCode.Tab then
			local var677 = 0
			if UserInputService_upvr:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService_upvr:IsKeyDown(Enum.KeyCode.RightShift) then
				var677 = -1
			else
				var677 = 1
			end
			var662_upvr(var677, true)
		end
	end
	local function var678_upvr(arg1, arg2, arg3) -- Line 2759
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
		else
			local var679 = 0
			if arg3.KeyCode == Enum.KeyCode.PageUp then
				var679 = -100
			elseif arg3.KeyCode == Enum.KeyCode.PageDown then
				var679 = 100
			end
			module_upvr_3:ScrollPixels(var679)
		end
	end
	if isInExperienceUIVREnabled_upvr then
		module_upvr_3.SettingsUIDelegate = require(RobloxGui_upvr.Modules.Settings.SettingsUIDelegate).new(module_upvr_3)
	end
	;(function() -- Line 1177, Named "createGui"
		--[[ Upvalues[87]:
			[1]: Utility_upvr (copied, readonly)
			[2]: module_upvr_3 (readonly)
			[3]: Create_upvr (copied, readonly)
			[4]: udim2_upvr_2 (copied, readonly)
			[5]: udim2_upvr (copied, readonly)
			[6]: RobloxGui_upvr (copied, readonly)
			[7]: SHIELD_INACTIVE_POSITION_upvr (copied, readonly)
			[8]: any_transparency_result1_upvr (copied, readonly)
			[9]: any_color_result1_upvr (copied, readonly)
			[10]: var106_upvr (copied, readonly)
			[11]: GetFFlagDisplayServerChannel_upvr (copied, readonly)
			[12]: Theme_upvr (copied, readonly)
			[13]: any_IsEnabled_result1_upvr (copied, readonly)
			[14]: var107_upvr (copied, readonly)
			[15]: RobloxTranslator_upvr (copied, readonly)
			[16]: GetServerChannelBlocking_upvr (copied, readonly)
			[17]: var32_upvw (copied, read and write)
			[18]: var27_upvw (copied, read and write)
			[19]: RunService_upvr (copied, readonly)
			[20]: GetFFlagRemoveAssetVersionEndpoint_upvr (copied, readonly)
			[21]: HttpRbxApiService_upvr (copied, readonly)
			[22]: HttpService_upvr (copied, readonly)
			[23]: CachedPolicyService_upvr (copied, readonly)
			[24]: BaseUrl_upvr (copied, readonly)
			[25]: var108_upvr (copied, readonly)
			[26]: StarterPlayer_upvr (copied, readonly)
			[27]: Players_upvr (copied, readonly)
			[28]: RbxAnalyticsService_upvr (copied, readonly)
			[29]: module_upvr_2 (copied, readonly)
			[30]: GetFFlagNewEventIngestPlayerScriptsDimensions_upvr (copied, readonly)
			[31]: any_getFFlagSettingsHubIndependentBackgroundVisibility_result1_upvr (copied, readonly)
			[32]: isInExperienceUIVREnabled_upvr (copied, readonly)
			[33]: GuiService_upvr (copied, readonly)
			[34]: GetFFlagRemovePermissionsButtons_upvr (copied, readonly)
			[35]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (copied, readonly)
			[36]: Roact_upvr (copied, readonly)
			[37]: createPermissionsButtons_upvr (readonly)
			[38]: GetFFlagUseMicPermForEnrollment_upvr (copied, readonly)
			[39]: getCamMicPermissions_upvr (copied, readonly)
			[40]: GetFFlagEnableInExpJoinVoiceAnalytics_upvr (copied, readonly)
			[41]: GetFFlagEnableConnectDisconnectButtonAnalytics_upvr (copied, readonly)
			[42]: default_upvr (copied, readonly)
			[43]: game_GetEngineFeature_result1_upvr_2 (copied, readonly)
			[44]: game_GetEngineFeature_result1_upvr_3 (copied, readonly)
			[45]: FFlagUIBloxMigrateBuilderIcon_upvr (copied, readonly)
			[46]: RoactAppExperiment_upvr (copied, readonly)
			[47]: IXPService_upvr (copied, readonly)
			[48]: AppStyleProvider_upvr (copied, readonly)
			[49]: MenuBackButton_upvr (copied, readonly)
			[50]: MenuFrontButton_upvr (copied, readonly)
			[51]: var74_upvr (copied, readonly)
			[52]: AppFonts_upvr (copied, readonly)
			[53]: Otter_upvr (copied, readonly)
			[54]: tbl_20_upvr (copied, readonly)
			[55]: FFlagTiltMenuShortcutBarPadding_upvr (copied, readonly)
			[56]: UserInputService_upvr (copied, readonly)
			[57]: FFlagIEMFocusNavToButtons_upvr (copied, readonly)
			[58]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[59]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[60]: FFlagAddUILessMode_upvr (copied, readonly)
			[61]: setVisibilityInternal_upvw (read and write)
			[62]: FIntAddUILessModeVariant_upvr (copied, readonly)
			[63]: FFlagIEMSettingsAddPlaySessionID_upvr (copied, readonly)
			[64]: FFlagIEMResumeButtonPressBugfix_upvr (copied, readonly)
			[65]: ReactRoblox_upvr (copied, readonly)
			[66]: React_upvr (copied, readonly)
			[67]: MenuButtonsContainer_upvr (copied, readonly)
			[68]: InExperienceAppChatModal_upvr (copied, readonly)
			[69]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
			[70]: removeBottomBarBindings_upvr (readonly)
			[71]: GetFFlagEnableLeaveGameUpsellEntrypoint_upvr (copied, readonly)
			[72]: Constants_upvr (copied, readonly)
			[73]: InExperienceCapabilities_upvr (copied, readonly)
			[74]: addBottomBarButtonOld_upvr (readonly)
			[75]: var538_upvw (read and write)
			[76]: FFlagEnableChromeShortcutBar_upvr (copied, readonly)
			[77]: var578_upvw (read and write)
			[78]: any_new_result1_upvr_3 (readonly)
			[79]: var539_upvw (read and write)
			[80]: FFlagUpdateTiltMenuButtonIcons_upvr (copied, readonly)
			[81]: any_GetImageForKeyCode_result1_upvr_2 (readonly)
			[82]: var537_upvw (read and write)
			[83]: isSubjectToDesktopPolicies_upvr (copied, readonly)
			[84]: SettingsFullScreenTitleBar_upvr (copied, readonly)
			[85]: GetFFlagMuteButtonRaceConditionFix_upvr (copied, readonly)
			[86]: var549_upvw (read and write)
			[87]: addMuteButtonToBar_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 406 start (CF ANALYSIS FAILED)
		if Utility_upvr:IsSmallTouchScreen() then
		end
		module_upvr_3.ClippingShield = Create_upvr("Frame")({
			Name = "SettingsClippingShield";
			Size = udim2_upvr_2;
			Position = udim2_upvr;
			BorderSizePixel = 0;
			ClipsDescendants = true;
			BackgroundTransparency = 1;
			Visible = true;
			ZIndex = 2;
			Parent = RobloxGui_upvr;
		})
		module_upvr_3.CanvasGroup = Create_upvr("CanvasGroup")({
			Name = "CanvasGroup";
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			GroupTransparency = 0;
			Visible = false;
			Parent = module_upvr_3.ClippingShield;
		})
		module_upvr_3.Shield = Create_upvr("ImageButton")({
			Name = "SettingsShield";
			Size = UDim2.new(1, 0, 1, 0);
			Position = SHIELD_INACTIVE_POSITION_upvr;
			BackgroundTransparency = any_transparency_result1_upvr;
			BackgroundColor3 = any_color_result1_upvr;
			BorderSizePixel = 0;
			Visible = false;
			Active = true;
			ZIndex = 2;
			Parent = module_upvr_3.ClippingShield;
		})
		module_upvr_3.VRShield = Create_upvr("Frame")({
			Name = "VRBackground";
			Parent = module_upvr_3.Shield;
			BackgroundColor3 = any_color_result1_upvr;
			BackgroundTransparency = any_transparency_result1_upvr;
			Position = UDim2.new(0, -4, 0, 24);
			Size = UDim2.new(1, 8, 1, -40);
			BorderSizePixel = 0;
			Visible = false;
		})
		local game_GetEngineFeature_result1_upvr_4 = game:GetEngineFeature("CoreScriptVersionEnabled")
		if game_GetEngineFeature_result1_upvr_4 then
			module_upvr_3.VersionContainer = Create_upvr("ScrollingFrame")({
				Name = "VersionContainer";
				Parent = module_upvr_3.Shield;
				CanvasSize = UDim2.new(0, 0, 0, var106_upvr);
				BackgroundColor3 = any_color_result1_upvr;
				BackgroundTransparency = any_transparency_result1_upvr;
				Position = UDim2.new(0, 0, 1, 0);
				Size = UDim2.new(1, 0, 0, var106_upvr);
				AnchorPoint = Vector2.new(0, 1);
				BorderSizePixel = 0;
				AutoLocalize = false;
				ScrollingDirection = Enum.ScrollingDirection.X;
				ScrollBarThickness = 0;
				ZIndex = 5;
				Visible = false;
			})
		else
			module_upvr_3.VersionContainer = Create_upvr("Frame")({
				Name = "VersionContainer";
				Parent = module_upvr_3.Shield;
				BackgroundColor3 = any_color_result1_upvr;
				BackgroundTransparency = any_transparency_result1_upvr;
				Position = UDim2.new(0, 0, 1, 0);
				Size = UDim2.new(1, 0, 0, var106_upvr);
				AnchorPoint = Vector2.new(0, 1);
				BorderSizePixel = 0;
				AutoLocalize = false;
				ZIndex = 5;
				Visible = false;
			})
		end
		local _ = {
			Name = "VersionContainer";
			Parent = module_upvr_3.VersionContainer;
			Padding = UDim.new(0, 6);
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		}
		local function _(arg1) -- Line 1287, Named "addSizeToLabel"
			--[[ Upvalues[2]:
				[1]: game_GetEngineFeature_result1_upvr_4 (readonly)
				[2]: var106_upvr (copied, readonly)
			]]
			local var621
			local function INLINED_11() -- Internal function, doesn't exist in bytecode
				var621 = UDim2.new(0, arg1.TextBounds.X + 6, 0, var106_upvr)
				return var621
			end
			if not game_GetEngineFeature_result1_upvr_4 or not INLINED_11() then
				var621 = UDim2.new(0.2, -6, 1, 0)
			end
			arg1.Size = var621
		end
		-- KONSTANTERROR: [0] 1. Error Block 406 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [350] 254. Error Block 407 start (CF ANALYSIS FAILED)
		local tbl_16 = {
			Name = "ServerChannelLabel";
			Parent = module_upvr_3.VersionContainer;
			LayoutOrder = 3;
			BackgroundTransparency = 1;
			TextColor3 = Color3.new(1, 1, 1);
		}
		local var623 = Theme_upvr
		if any_IsEnabled_result1_upvr then
			var623 = 28
		elseif Utility_upvr:IsSmallTouchScreen() then
			var623 = 14
		else
			var623 = 20
		end
		tbl_16.TextSize = var623.textSize(var623)
		tbl_16.Text = "Server Channel: ..."
		tbl_16.Font = Theme_upvr.font(Enum.Font.SourceSans, "SettingsHub")
		tbl_16.TextXAlignment = Enum.TextXAlignment.Center
		tbl_16.TextYAlignment = Enum.TextYAlignment.Center
		tbl_16.ZIndex = 5
		module_upvr_3.ServerChannelLabel = Create_upvr("TextLabel")(tbl_16)
		spawn(function() -- Line 1306
			--[[ Upvalues[6]:
				[1]: var107_upvr (copied, readonly)
				[2]: RobloxTranslator_upvr (copied, readonly)
				[3]: module_upvr_3 (copied, readonly)
				[4]: GetServerChannelBlocking_upvr (copied, readonly)
				[5]: game_GetEngineFeature_result1_upvr_4 (readonly)
				[6]: var106_upvr (copied, readonly)
			]]
			local var625 = "Server Channel: "
			local var626
			if var107_upvr then
				if not RobloxTranslator_upvr then
					var625 = "Server Channel: "
				else
					var626 = RobloxTranslator_upvr
					var626 = RobloxTranslator_upvr
					local pcall_result1_5, pcall_result2_5 = pcall(var626.FormatByKey, var626, "InGame.HelpMenu.Label.ServerChannel")
					if pcall_result1_5 then
						var625 = pcall_result2_5
					else
						var625 = "Server Channel: "
					end
				end
			end
			var626 = var625
			module_upvr_3.ServerChannelLabel.Text = var626..GetServerChannelBlocking_upvr()
			local ServerChannelLabel = module_upvr_3.ServerChannelLabel
			var626 = 0.2
			local function INLINED_12() -- Internal function, doesn't exist in bytecode
				var626 = UDim2.new(0, ServerChannelLabel.TextBounds.X + 6, 0, var106_upvr)
				return var626
			end
			if not game_GetEngineFeature_result1_upvr_4 or not INLINED_12() then
				var626 = UDim2.new(var626, -6, 1, 0)
			end
			ServerChannelLabel.Size = var626
			var626 = game_GetEngineFeature_result1_upvr_4
			if not var626 then
				var626 = module_upvr_3.ServerChannelLabel.TextFits
			end
			module_upvr_3.ServerChannelLabel.TextScaled = not var626
		end)
		-- KONSTANTERROR: [350] 254. Error Block 407 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [431] 314. Error Block 408 start (CF ANALYSIS FAILED)
		local tbl_15 = {
			Name = "ServerVersionLabel";
			Parent = module_upvr_3.VersionContainer;
			LayoutOrder = 2;
			BackgroundTransparency = 1;
			TextColor3 = Color3.new(1, 1, 1);
		}
		local var631 = Theme_upvr
		if any_IsEnabled_result1_upvr then
			var631 = 28
		elseif Utility_upvr:IsSmallTouchScreen() then
			var631 = 14
		else
			var631 = 20
		end
		tbl_15.TextSize = var631.textSize(var631)
		tbl_15.Text = "Server Version: ..."
		tbl_15.Font = Theme_upvr.font(Enum.Font.SourceSans, "SettingsHub")
		tbl_15.TextXAlignment = Enum.TextXAlignment.Center
		tbl_15.TextYAlignment = Enum.TextYAlignment.Center
		tbl_15.ZIndex = 5
		module_upvr_3.ServerVersionLabel = Create_upvr("TextLabel")(tbl_15)
		spawn(function() -- Line 1330
			--[[ Upvalues[7]:
				[1]: var107_upvr (copied, readonly)
				[2]: RobloxTranslator_upvr (copied, readonly)
				[3]: module_upvr_3 (copied, readonly)
				[4]: var32_upvw (copied, read and write)
				[5]: var27_upvw (copied, read and write)
				[6]: game_GetEngineFeature_result1_upvr_4 (readonly)
				[7]: var106_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var633 = "Server Version: "
			local var634
			if var107_upvr then
				if not RobloxTranslator_upvr then
					var633 = "Server Version: "
				else
					var634 = "InGame.HelpMenu.Label.ServerVersion"
					local pcall_result1_3, pcall_result2_3 = pcall(RobloxTranslator_upvr.FormatByKey, RobloxTranslator_upvr, var634)
					if pcall_result1_3 then
						var633 = pcall_result2_3
					else
						var633 = "Server Version: "
					end
				end
			end
			if var32_upvw then
				var634 = var32_upvw
			else
				if not var27_upvw then
					repeat
						wait()
					until var27_upvw
				end
				var32_upvw = var27_upvw:InvokeServer()
				var634 = var32_upvw
			end
			module_upvr_3.ServerVersionLabel.Text = var633..var634
			local ServerVersionLabel = module_upvr_3.ServerVersionLabel
			var634 = -6
			var634 = game_GetEngineFeature_result1_upvr_4
			local function INLINED_13() -- Internal function, doesn't exist in bytecode
				var634 = 0
				return UDim2.new(var634, ServerVersionLabel.TextBounds.X + 6, 0, var106_upvr)
			end
			if not var634 or not INLINED_13() then
			end
			ServerVersionLabel.Size = UDim2.new(0.2, var634, 1, 0)
			if not game_GetEngineFeature_result1_upvr_4 then
				var634 = module_upvr_3.ServerVersionLabel
			end
			module_upvr_3.ServerVersionLabel.TextScaled = not var634.TextFits
		end)
		-- KONSTANTERROR: [431] 314. Error Block 408 end (CF ANALYSIS FAILED)
	end)()
	if game_DefineFastFlag_result1_upvr_2 then
		setupVoiceListeners()
	end
	function GetHeaderPosition_upvw(arg1) -- Line 2783, Named "GetHeaderPosition"
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		local any_GetTabHeader_result1 = arg1:GetTabHeader()
		if not any_GetTabHeader_result1 then
			return -1
		end
		for i_7, v_3 in pairs(module_upvr_3.TabHeaders) do
			if v_3 == any_GetTabHeader_result1 then
				return i_7
			end
		end
		return -1
	end
	local function var686_upvw(arg1, arg2) -- Line 2797
		--[[ Upvalues[1]:
			[1]: var686_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if arg2:IsA("GuiObject") then
			arg2.ZIndex = arg1
			local children_2 = arg2:GetChildren()
			for i_8 = 1, #children_2 do
				var686_upvw(arg1, children_2[i_8])
				local _
			end
		end
	end
	local function AddHeader_upvr(arg1, arg2) -- Line 2807, Named "AddHeader"
		--[[ Upvalues[2]:
			[1]: module_upvr_3 (readonly)
			[2]: var686_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if not arg1 then
		else
			table.insert(module_upvr_3.TabHeaders, arg1)
			arg2.TabPosition = #module_upvr_3.TabHeaders
			for i_13 = 1, #module_upvr_3.TabHeaders do
				module_upvr_3.TabHeaders[i_13].Size = UDim2.new(1 / #module_upvr_3.TabHeaders, 0, 1, 0)
				local _
			end
			var686_upvw(3, arg1)
			arg1.Parent = module_upvr_3.HubBarContainer
		end
	end
	local function RemoveHeader_upvr(arg1) -- Line 2823, Named "RemoveHeader"
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local _ = 1
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 19. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 19. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 8. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [23.3014926]
		-- KONSTANTERROR: [8] 8. Error Block 2 end (CF ANALYSIS FAILED)
	end
	function module_upvr_3.AddPage(arg1, arg2) -- Line 2846
		--[[ Upvalues[4]:
			[1]: module_upvr_3 (readonly)
			[2]: AddHeader_upvr (readonly)
			[3]: FFlagIEMFocusNavToButtons_upvr (copied, readonly)
			[4]: setBottomBarSelection_upvr (readonly)
		]]
		module_upvr_3.Pages.PageTable[arg2] = true
		AddHeader_upvr(arg2:GetTabHeader(), arg2)
		arg2.Page.Position = UDim2.new(arg2.TabPosition - 1, 0, 0, 0)
		if FFlagIEMFocusNavToButtons_upvr then
			arg2.LastSelectableObjectsUpdated:connect(function() -- Line 2851
				--[[ Upvalues[2]:
					[1]: setBottomBarSelection_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				setBottomBarSelection_upvr(arg2)
			end)
		end
	end
	function module_upvr_3.RemovePage(arg1, arg2) -- Line 2857
		--[[ Upvalues[3]:
			[1]: module_upvr_3 (readonly)
			[2]: RemoveHeader_upvr (readonly)
			[3]: FFlagIEMFocusNavToButtons_upvr (copied, readonly)
		]]
		module_upvr_3.Pages.PageTable[arg2] = nil
		RemoveHeader_upvr(arg2:GetTabHeader())
		if FFlagIEMFocusNavToButtons_upvr then
			arg2.LastSelectableObjectsUpdated:disconnect()
		end
	end
	module_upvr_3.bottomBarAnimating = false
	module_upvr_3.defaultPageViewClipperSize = module_upvr_3.PageViewClipper.Size
	module_upvr_3.showStickyBottomBar = true
	module_upvr_3.resetPageViewClipperSize = false
	function animateBottomBarComplete() -- Line 2870
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		if module_upvr_3.resetPageViewClipperSize then
			module_upvr_3.PageViewClipper.Size = module_upvr_3.defaultPageViewClipperSize
			module_upvr_3.resetPageViewClipperSize = false
		end
		module_upvr_3.bottomBarAnimating = false
	end
	function module_upvr_3.animateInBottomBar(arg1) -- Line 2879
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		if module_upvr_3.bottomBarAnimating or module_upvr_3.showStickyBottomBar == true then
		else
			module_upvr_3.bottomBarAnimating = true
			module_upvr_3.showStickyBottomBar = true
			module_upvr_3.resetPageViewClipperSize = false
			module_upvr_3.PageViewClipper:TweenSize(UDim2.new(module_upvr_3.defaultPageViewClipperSize.X.Scale, module_upvr_3.defaultPageViewClipperSize.X.Offset, module_upvr_3.defaultPageViewClipperSize.Y.Scale, module_upvr_3.defaultPageViewClipperSize.Y.Offset), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 0.3, true, animateBottomBarComplete)
		end
	end
	function module_upvr_3.animateOutBottomBar(arg1) -- Line 2907
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		if module_upvr_3.bottomBarAnimating or module_upvr_3.showStickyBottomBar == false then
		else
			module_upvr_3.bottomBarAnimating = true
			module_upvr_3.showStickyBottomBar = false
			module_upvr_3.resetPageViewClipperSize = false
			module_upvr_3.PageViewClipper:TweenSize(UDim2.new(module_upvr_3.defaultPageViewClipperSize.X.Scale, module_upvr_3.defaultPageViewClipperSize.X.Offset, module_upvr_3.defaultPageViewClipperSize.Y.Scale, module_upvr_3.defaultPageViewClipperSize.Y.Offset + 80), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 0.3, true, animateBottomBarComplete)
		end
	end
	function module_upvr_3.HideBar(arg1) -- Line 2935
		--[[ Upvalues[5]:
			[1]: module_upvr_3 (readonly)
			[2]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[3]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[4]: Utility_upvr (copied, readonly)
			[5]: removeBottomBarBindings_upvr (readonly)
		]]
		module_upvr_3.HubBar.Visible = false
		module_upvr_3.PageViewClipper.Visible = false
		if module_upvr_3.BottomButtonFrame then
			if FFlagRelocateMobileMenuButtons_upvr and (FIntRelocateMobileMenuButtonsVariant_upvr == 1 or FIntRelocateMobileMenuButtonsVariant_upvr == 3 or FIntRelocateMobileMenuButtonsVariant_upvr == 2 and not Utility_upvr:IsSmallTouchScreen()) then
				module_upvr_3.removeMenuKeyBindings()
				return
			end
			removeBottomBarBindings_upvr()
		end
	end
	function module_upvr_3.ShowBar(arg1) -- Line 2947
		--[[ Upvalues[8]:
			[1]: module_upvr_3 (readonly)
			[2]: shouldShowBottomBar_upvr (readonly)
			[3]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[4]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[5]: Utility_upvr (copied, readonly)
			[6]: setBottomBarBindings_upvr (readonly)
			[7]: FFlagIEMFocusNavToButtons_upvr (copied, readonly)
			[8]: setBottomBarSelection_upvr (readonly)
		]]
		module_upvr_3.HubBar.Visible = true
		module_upvr_3.PageViewClipper.Visible = true
		if module_upvr_3.BottomButtonFrame and shouldShowBottomBar_upvr() then
			if FFlagRelocateMobileMenuButtons_upvr and (FIntRelocateMobileMenuButtonsVariant_upvr == 1 or FIntRelocateMobileMenuButtonsVariant_upvr == 3 or FIntRelocateMobileMenuButtonsVariant_upvr == 2 and not Utility_upvr:IsSmallTouchScreen()) then
				module_upvr_3.addMenuKeyBindings()
				return
			end
			setBottomBarBindings_upvr()
			if FFlagIEMFocusNavToButtons_upvr then
				setBottomBarSelection_upvr(module_upvr_3.Pages.CurrentPage)
			end
		end
	end
	function module_upvr_3.ScrollPixels(arg1, arg2) -- Line 2962
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		module_upvr_3.PageView.CanvasPosition = Vector2.new(0, math.max(0, math.min(module_upvr_3.PageView.CanvasPosition.Y + arg2, module_upvr_3.PageView.CanvasSize.Y.Offset - module_upvr_3.PageViewClipper.AbsoluteSize.y)))
	end
	function module_upvr_3.ScrollToFrame(arg1, arg2, arg3) -- Line 2970
		--[[ Upvalues[2]:
			[1]: var658_upvw (read and write)
			[2]: module_upvr_3 (readonly)
		]]
		if var658_upvw or arg3 then
			local var700 = arg2.AbsolutePosition.y - module_upvr_3.Pages.CurrentPage.Page.AbsolutePosition.y
			local var701 = var700 + arg2.AbsoluteSize.y
			if var700 < module_upvr_3.PageView.CanvasPosition.y then
				module_upvr_3.PageView.CanvasPosition = Vector2.new(0, var700)
				return
			end
			if module_upvr_3.PageViewClipper.Size.Y.Offset < var701 - module_upvr_3.PageView.CanvasPosition.y then
				module_upvr_3.PageView.CanvasPosition = Vector2.new(0, var701 - module_upvr_3.PageViewClipper.Size.Y.Offset)
			end
		end
	end
	function module_upvr_3.GetFirstPageWithTabHeader(arg1) -- Line 2983
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local pairs_result1_6, pairs_result2_5, pairs_result3_2 = pairs(module_upvr_3.Pages.PageTable)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 15. Error Block 5 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 15. Error Block 5 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 8. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [21.7]
		-- KONSTANTERROR: [10] 8. Error Block 2 end (CF ANALYSIS FAILED)
	end
	local var706_upvw
	function module_upvr_3.InitInPage(arg1, arg2) -- Line 3002
		--[[ Upvalues[10]:
			[1]: module_upvr_3 (readonly)
			[2]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[3]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[4]: Utility_upvr (copied, readonly)
			[5]: shouldShowBottomBar_upvr (readonly)
			[6]: setBottomBarBindings_upvr (readonly)
			[7]: FFlagIEMFocusNavToButtons_upvr (copied, readonly)
			[8]: setBottomBarSelection_upvr (readonly)
			[9]: Theme_upvr (copied, readonly)
			[10]: var706_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local pairs_result1_5, _, pairs_result3_5 = pairs(module_upvr_3.Pages.PageTable)
		local var718
		for i_9, v_4 in pairs_result1_5, var718, pairs_result3_5 do
			if i_9 ~= arg2 then
				i_9:Hide(-1, arg2.TabPosition, true, nil, module_upvr_3.PageViewInnerFrame)
			end
		end
		local function INLINED_14() -- Internal function, doesn't exist in bytecode
			var718 = module_upvr_3
			return var718.BottomButtonFrame
		end
		if not FFlagRelocateMobileMenuButtons_upvr or FIntRelocateMobileMenuButtonsVariant_upvr == 0 or FIntRelocateMobileMenuButtonsVariant_upvr == 2 and Utility_upvr:IsSmallTouchScreen() or INLINED_14() then
			var718 = arg2
			if shouldShowBottomBar_upvr(var718) then
				setBottomBarBindings_upvr()
				if FFlagIEMFocusNavToButtons_upvr then
					var718 = arg2
					setBottomBarSelection_upvr(var718)
					-- KONSTANTWARNING: GOTO [60] #47
				end
			else
				var718 = module_upvr_3
				var718 = false
				var718.BottomButtonFrame.Visible = var718
			end
			var718 = module_upvr_3
			i_9 = arg2
			if not i_9 then
				v_4 = module_upvr_3.Pages
				i_9 = v_4.CurrentPage
			end
			i_9 = i_9.ShouldShowBottomBar
			if i_9 ~= true then
				var718 = false
			else
				var718 = true
			end
			var718.HubBar.Visible = var718
		end
		var718 = arg2.IsPageClipped
		if var718 ~= true then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		var718 = module_upvr_3.PageViewClipper
		var718.ClipsDescendants = true
		var718 = module_upvr_3.PageView
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var718.ClipsDescendants = true
		var718 = Theme_upvr.UseStickyBar()
		if var718 == false then
			var718 = module_upvr_3.PageViewInnerFrame
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var718.ClipsDescendants = true
		end
		var718 = module_upvr_3.Pages
		var718.CurrentPage = arg2
		var718 = module_upvr_3.Pages.CurrentPage
		var718.Active = true
		var718 = module_upvr_3.CurrentPageSignal
		if not module_upvr_3.Pages.CurrentPage or not module_upvr_3.Pages.CurrentPage.Page.Name then
		end
		var718 = var718:fire
		var718(nil)
		var718 = Theme_upvr.UseStickyBar()
		if var718 == false then
			var718 = module_upvr_3.Pages.CurrentPage:GetSize()
			module_upvr_3.PageView.CanvasSize = UDim2.new(0, 0, 0, var718.Y)
			var706_upvw = module_upvr_3.Pages.CurrentPage.Page.Changed:connect(function(arg1_16) -- Line 3044
				--[[ Upvalues[1]:
					[1]: module_upvr_3 (copied, readonly)
				]]
				if arg1_16 == "AbsoluteSize" then
					module_upvr_3.PageView.CanvasSize = UDim2.new(0, 0, 0, module_upvr_3.Pages.CurrentPage:GetSize().Y)
				end
			end)
		end
	end
	local function SwitchToPage(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 3053
		--[[ Upvalues[27]:
			[1]: module_upvr_3 (readonly)
			[2]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
			[3]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[4]: Utility_upvr (copied, readonly)
			[5]: Theme_upvr (copied, readonly)
			[6]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[7]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[8]: shouldShowBottomBar_upvr (readonly)
			[9]: RobloxGui_upvr (copied, readonly)
			[10]: var706_upvw (read and write)
			[11]: setBottomBarBindings_upvr (readonly)
			[12]: FFlagIEMFocusNavToButtons_upvr (copied, readonly)
			[13]: setBottomBarSelection_upvr (readonly)
			[14]: FFlagAddNextUpContainer_upvr (copied, readonly)
			[15]: onScreenSizeChanged_upvr (readonly)
			[16]: GetFFlagReportAbuseMenuEntrypointAnalytics_upvr (copied, readonly)
			[17]: Cryo_upvr (copied, readonly)
			[18]: FFlagRespawnChromeShortcutTelemetry_upvr (copied, readonly)
			[19]: FFlagIEMSettingsAddPlaySessionID_upvr (copied, readonly)
			[20]: RbxAnalyticsService_upvr (copied, readonly)
			[21]: module_upvr_2 (copied, readonly)
			[22]: FFlagInExperienceMenuReorderFirstVariant_upvr (copied, readonly)
			[23]: GetFStringInExperienceMenuIXPLayer_upvr (copied, readonly)
			[24]: GetFStringInExperienceMenuIXPVar_upvr (copied, readonly)
			[25]: IXPServiceWrapper_upvr (copied, readonly)
			[26]: FFlagEnableExperienceMenuSessionTracking_upvr (copied, readonly)
			[27]: ExperienceMenuSessionManagerInstance_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 193 start (CF ANALYSIS FAILED)
		if module_upvr_3.Pages.PageTable[arg2] == nil then return end
		local var729
		if game_DefineFastFlag_result1_upvr_3 and module_upvr_3:GetVisibility() == false then return end
		if game_DefineFastFlag_result1_upvr then
			if arg2.Page.Name == "ReportAbuseMenuNewContainerPage" then
				var729 = module_upvr_3
				var729 = 0
				var729.PageViewInnerFrame.UIPadding.PaddingTop = UDim.new(var729, 0)
			else
				var729 = module_upvr_3
				var729 = 0
				var729.PageViewInnerFrame.UIPadding.PaddingTop = UDim.new(var729, 5)
			end
		end
		var729 = 0
		local udim_2 = UDim.new(0, var729)
		var729 = 0
		local any_IsPortrait_result1 = Utility_upvr:IsPortrait()
		if not any_IsPortrait_result1 then
			any_IsPortrait_result1 = Utility_upvr:IsSmallTouchScreen()
		end
		var729 = not any_IsPortrait_result1
		if not var729 then
			var729 = Theme_upvr.AlwaysShowBottomBar()
		end
		if FFlagRelocateMobileMenuButtons_upvr then
			if FIntRelocateMobileMenuButtonsVariant_upvr == 1 or FIntRelocateMobileMenuButtonsVariant_upvr == 3 or FIntRelocateMobileMenuButtonsVariant_upvr == 2 and not Utility_upvr:IsSmallTouchScreen() then
				var729 = true
			end
		end
		if module_upvr_3.HubBar then
			local var732 = arg2
			if not var732 then
				var732 = module_upvr_3.Pages.CurrentPage
			end
			if var732.ShouldShowBottomBar ~= true then
			else
			end
			if not true then
				if not arg2.DisableTopPadding then
					udim_2 = UDim.new(0, module_upvr_3.HubBar.AbsoluteSize.Y)
				end
			end
		end
		local var733
		if module_upvr_3.BottomButtonFrame and var729 then
			if not shouldShowBottomBar_upvr(arg2) then
				var733 = UDim.new(0, module_upvr_3.BottomButtonFrame.AbsoluteSize.Y)
			end
		end
		local any_HubPadding_result1_2 = Theme_upvr.HubPadding()
		module_upvr_3.MenuContainerPadding.PaddingLeft = any_HubPadding_result1_2.PaddingLeft
		module_upvr_3.MenuContainerPadding.PaddingRight = any_HubPadding_result1_2.PaddingRight
		module_upvr_3.MenuContainerPadding.PaddingBottom = any_HubPadding_result1_2.PaddingBottom + var733
		module_upvr_3.MenuContainerPadding.PaddingTop = any_HubPadding_result1_2.PaddingTop + udim_2
		local any_MenuContainerPosition_result1_5 = Theme_upvr.MenuContainerPosition(module_upvr_3.SettingsUIDelegate)
		module_upvr_3.MenuContainer.Position = any_MenuContainerPosition_result1_5.Position
		module_upvr_3.MenuContainer.Size = any_MenuContainerPosition_result1_5.Size
		module_upvr_3.MenuContainer.AnchorPoint = any_MenuContainerPosition_result1_5.AnchorPoint
		local var736
		if module_upvr_3.VerticalMenu and not Utility_upvr:IsPortrait() then
			local any_IsSmallTouchScreen_result1_2 = Utility_upvr:IsSmallTouchScreen()
			if any_IsSmallTouchScreen_result1_2 then
				if not arg2 then
				end
				if module_upvr_3.Pages.CurrentPage.ShouldShowBottomBar ~= true then
					any_IsSmallTouchScreen_result1_2 = false
				else
					any_IsSmallTouchScreen_result1_2 = true
				end
				module_upvr_3.VerticalMenu.Visible = any_IsSmallTouchScreen_result1_2
				module_upvr_3.VerticalMenuDivider.Visible = any_IsSmallTouchScreen_result1_2
				if any_IsSmallTouchScreen_result1_2 then
					module_upvr_3.HubBar.Size = UDim2.new(0, RobloxGui_upvr.AbsoluteSize.X - 60 - Theme_upvr.VerticalMenuWidth, 0, 52)
				else
					module_upvr_3.HubBar.Size = UDim2.new(0, RobloxGui_upvr.AbsoluteSize.X - 60, 0, 52)
				end
				local Size_2 = module_upvr_3.PageViewClipper.Size
				module_upvr_3.PageViewClipper.Size = UDim2.new(Size_2.X.Scale, module_upvr_3.HubBar.Size.X.Offset, Size_2.Y.Scale, Size_2.Y.Offset)
			end
		end
		if var736 == nil then
			if module_upvr_3.Pages.CurrentPage then
				if module_upvr_3.Pages.CurrentPage.TabHeader and arg2 then
					local TabHeader = arg2.TabHeader
					if TabHeader then
						if module_upvr_3.Pages.CurrentPage.TabHeader.AbsolutePosition.x < arg2.TabHeader.AbsolutePosition.x then
							TabHeader = 1
						else
							TabHeader = -1
						end
						var736 = TabHeader
					end
				end
			end
		end
		if var736 == nil then
			var736 = 1
		end
		if module_upvr_3.Pages.CurrentPage then
			if var706_upvw ~= nil then
				var706_upvw:disconnect()
				module_upvr_3.Pages.CurrentPage.Active = false
			end
		end
		for i_10, v_5 in pairs(module_upvr_3.Pages.PageTable) do
			if i_10 ~= arg2 then
				local var743 = module_upvr_3
				if i_10 ~= module_upvr_3.Pages.CurrentPage then
					var743 = false
				else
					var743 = true
				end
				i_10:Hide(-var736, arg2.TabPosition, arg5, nil, var743.PageViewInnerFrame, var743)
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 193 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [429] 293. Error Block 198 start (CF ANALYSIS FAILED)
		if shouldShowBottomBar_upvr(arg2) then
			if FFlagRelocateMobileMenuButtons_upvr and FIntRelocateMobileMenuButtonsVariant_upvr ~= 0 and (FIntRelocateMobileMenuButtonsVariant_upvr ~= 2 or not Utility_upvr:IsSmallTouchScreen()) then
				module_upvr_3.addMenuKeyBindings()
				module_upvr_3.BottomButtonFrame.Visible = true
			else
				setBottomBarBindings_upvr()
				if FFlagIEMFocusNavToButtons_upvr then
					setBottomBarSelection_upvr(arg2)
					-- KONSTANTWARNING: GOTO [471] #327
				end
			end
		else
			module_upvr_3.BottomButtonFrame.Visible = false
		end
		i_10 = arg2
		if not i_10 then
			v_5 = module_upvr_3.Pages
			i_10 = v_5.CurrentPage
		end
		if i_10.ShouldShowBottomBar ~= true then
		else
		end
		module_upvr_3.HubBar.Visible = true
		-- KONSTANTERROR: [429] 293. Error Block 198 end (CF ANALYSIS FAILED)
	end
	module_upvr_3.SwitchToPage = SwitchToPage
	function module_upvr_3.SetActive(arg1, arg2) -- Line 3234
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		module_upvr_3.Active = arg2
		if module_upvr_3.Pages.CurrentPage then
			module_upvr_3.Pages.CurrentPage.Active = arg2
		end
	end
	function clearMenuStack() -- Line 3242
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		while module_upvr_3.MenuStack and 0 < #module_upvr_3.MenuStack do
			module_upvr_3:PopMenu()
		end
	end
	function setOverrideMouseIconBehavior() -- Line 3248
		--[[ Upvalues[5]:
			[1]: module_upvr_3 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: VRService_upvr (copied, readonly)
			[4]: MouseIconOverrideService_upvr (copied, readonly)
			[5]: any_named_result1_upvr (copied, readonly)
		]]
		if not module_upvr_3.Visible then
		else
			if UserInputService_upvr:GetLastInputType() == Enum.UserInputType.Gamepad1 or VRService_upvr.VREnabled then
				MouseIconOverrideService_upvr.push(any_named_result1_upvr, Enum.OverrideMouseIconBehavior.ForceHide)
				return
			end
			MouseIconOverrideService_upvr.push(any_named_result1_upvr, Enum.OverrideMouseIconBehavior.ForceShow)
		end
	end
	function checkLeaveGameUpsell() -- Line 3260
		--[[ Upvalues[5]:
			[1]: GetFFlagEnableLeaveGameUpsellEntrypoint_upvr (copied, readonly)
			[2]: module_upvr_3 (readonly)
			[3]: Constants_upvr (copied, readonly)
			[4]: default_upvr (copied, readonly)
			[5]: game_DefineFastInt_result1_upvr (copied, readonly)
		]]
		if not GetFFlagEnableLeaveGameUpsellEntrypoint_upvr() then
		else
			if not module_upvr_3.sessionStartTime then
				module_upvr_3.sessionStartTime = os.time()
			end
			if not module_upvr_3.sessionStartTime then return end
			if not module_upvr_3.checkedUpsell and module_upvr_3.leaveGameUpsellProp == Constants_upvr.PHONE_UPSELL_VALUE_PROP.None then
				module_upvr_3.checkedUpsell = true
				module_upvr_3.leaveGameUpsellProp = default_upvr:FetchPhoneVerificationUpsell(Constants_upvr.EXIT_CONFIRMATION_PHONE_UPSELL_IXP_LAYER, module_upvr_3.sessionStartTime, true)
				module_upvr_3.LeaveGameUpsellPage:SetUpsellProp(module_upvr_3.leaveGameUpsellProp)
				task.delay(game_DefineFastInt_result1_upvr, function() -- Line 3281
					--[[ Upvalues[1]:
						[1]: module_upvr_3 (copied, readonly)
					]]
					module_upvr_3.checkedUpsell = false
				end)
				return
			end
			if module_upvr_3.checkedUpsell then
				local any_FetchPhoneVerificationUpsell_result1 = default_upvr:FetchPhoneVerificationUpsell(Constants_upvr.EXIT_CONFIRMATION_PHONE_UPSELL_IXP_LAYER, module_upvr_3.sessionStartTime, false)
				if module_upvr_3.leaveGameUpsellProp ~= any_FetchPhoneVerificationUpsell_result1 then
					module_upvr_3.leaveGameUpsellProp = any_FetchPhoneVerificationUpsell_result1
					module_upvr_3.LeaveGameUpsellPage:SetUpsellProp(module_upvr_3.leaveGameUpsellProp)
				end
			end
		end
	end
	if any_getFFlagSettingsHubIndependentBackgroundVisibility_result1_upvr then
		local function var746_upvw(arg1, arg2) -- Line 3296
			--[[ Upvalues[6]:
				[1]: module_upvr_3 (readonly)
				[2]: InExperienceAppChatModal_upvr (copied, readonly)
				[3]: module_upvr_2 (copied, readonly)
				[4]: isInExperienceUIVREnabled_upvr (copied, readonly)
				[5]: Theme_upvr (copied, readonly)
				[6]: TweenService_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var747
			if not module_upvr_3.DarkenBackground then
			else
				local function INLINED_15() -- Internal function, doesn't exist in bytecode
					var747 = module_upvr_3
					return var747.DarkenBackground.Visible
				end
				if not arg1 and INLINED_15() and (InExperienceAppChatModal_upvr:getVisible() or module_upvr_3.Visible) then return end
				var747 = 0
				if module_upvr_2 then
					var747 = module_upvr_2.ShieldCloseAnimationTweenTime
				else
					var747 = 0.4
				end
				if arg1 then
					if isInExperienceUIVREnabled_upvr then
					else
					end
					if module_upvr_2 then
						var747 = module_upvr_2.ShieldOpenAnimationTweenTime
					else
						var747 = 0.5
					end
				end
				if arg2 then
					if module_upvr_3.DarkenBackgroundTween then
						module_upvr_3.DarkenBackgroundTween:Cancel()
						module_upvr_3.DarkenBackgroundTween = nil
					end
					module_upvr_3.DarkenBackground.BackgroundTransparency = Theme_upvr.transparency("DarkenBackground")
				else
					if module_upvr_3.DarkenBackgroundTween then
						module_upvr_3.DarkenBackgroundTween:Cancel()
					end
					local tbl_7 = {}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_7.BackgroundTransparency = Theme_upvr.transparency("DarkenBackground")
					module_upvr_3.DarkenBackgroundTween = TweenService_upvr:Create(module_upvr_3.DarkenBackground, TweenInfo.new(var747, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), tbl_7)
					module_upvr_3.DarkenBackgroundTween:Play()
				end
				module_upvr_3.DarkenBackground.Visible = arg1
			end
		end
	end
	function setVisibilityInternal_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 3343, Named "setVisibilityInternal"
		--[[ Upvalues[47]:
			[1]: isInExperienceUIVREnabled_upvr (copied, readonly)
			[2]: module_upvr_3 (readonly)
			[3]: var151_upvr (copied, readonly)
			[4]: PerfUtils_upvr (copied, readonly)
			[5]: game_GetEngineFeature_result1_upvr_3 (copied, readonly)
			[6]: RobloxGui_upvr (copied, readonly)
			[7]: any_getFFlagSettingsHubIndependentBackgroundVisibility_result1_upvr (copied, readonly)
			[8]: var746_upvw (read and write)
			[9]: onScreenSizeChanged_upvr (readonly)
			[10]: GuiService_upvr (copied, readonly)
			[11]: Theme_upvr (copied, readonly)
			[12]: FFlagEnableExperienceMenuSessionTracking_upvr (copied, readonly)
			[13]: ExperienceMenuSessionManagerInstance_upvr (copied, readonly)
			[14]: module_upvr_2 (copied, readonly)
			[15]: GameSettings_upvr (copied, readonly)
			[16]: TweenService_upvr (copied, readonly)
			[17]: ContextActionService_upvr (copied, readonly)
			[18]: var674_upvr (readonly)
			[19]: var678_upvr (readonly)
			[20]: shouldShowBottomBar_upvr (readonly)
			[21]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
			[22]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
			[23]: Utility_upvr (copied, readonly)
			[24]: setBottomBarBindings_upvr (readonly)
			[25]: FFlagIEMFocusNavToButtons_upvr (copied, readonly)
			[26]: setBottomBarSelection_upvr (readonly)
			[27]: var74_upvr (copied, readonly)
			[28]: FFlagEnableChromeShortcutBar_upvr (copied, readonly)
			[29]: UserInputService_upvr (copied, readonly)
			[30]: var676_upvr (readonly)
			[31]: var153_upvw (copied, read and write)
			[32]: VRService_upvr (copied, readonly)
			[33]: MouseIconOverrideService_upvr (copied, readonly)
			[34]: any_named_result1_upvr (copied, readonly)
			[35]: removeBottomBarBindings_upvr (readonly)
			[36]: getFFlagAppChatCoreUIConflictFix_upvr (copied, readonly)
			[37]: ChatSelector_upvr (copied, readonly)
			[38]: var156_upvw (copied, read and write)
			[39]: GetFFlagEnableAppChatInExperience_upvr (copied, readonly)
			[40]: InExperienceAppChatModal_upvr (copied, readonly)
			[41]: var158_upvw (copied, read and write)
			[42]: game_DefineFastFlag_result1_upvr_6 (copied, readonly)
			[43]: SHIELD_INACTIVE_POSITION_upvr (copied, readonly)
			[44]: FFlagIEMEndFocusNavTiltMenuHidden_upvr (copied, readonly)
			[45]: FFlagIEMSettingsAddPlaySessionID_upvr (copied, readonly)
			[46]: RbxAnalyticsService_upvr (copied, readonly)
			[47]: GetFFlagEnableLeaveGameUpsellEntrypoint_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 274 start (CF ANALYSIS FAILED)
		if isInExperienceUIVREnabled_upvr then
			local var750 = arg2
			if not var750 then
				var750 = not module_upvr_3.SettingsUIDelegate:isOpenCloseAnimationAllowed()
			end
		else
		end
		var750 = module_upvr_3
		local var751 = var750
		var751.OpenStateChangedCount = module_upvr_3.OpenStateChangedCount + 1
		if arg1 == module_upvr_3.Visible then
		else
		end
		module_upvr_3.Visible = arg1
		-- KONSTANTERROR: [0] 1. Error Block 274 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 28. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 28. Error Block 12 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 29. Error Block 13 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 29. Error Block 13 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 30. Error Block 14 start (CF ANALYSIS FAILED)
		PerfUtils_upvr.menuClose()
		-- KONSTANTERROR: [36] 30. Error Block 14 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [40] 33. Error Block 15 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [40] 33. Error Block 15 end (CF ANALYSIS FAILED)
	end
	local var749_upvw = setVisibilityInternal_upvw
	local function SetVisibility(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 3793
		--[[ Upvalues[2]:
			[1]: module_upvr_3 (readonly)
			[2]: var749_upvw (read and write)
		]]
		if module_upvr_3.Visible == arg2 then
		else
			var749_upvw(arg2, arg3, arg4, arg5, arg6)
		end
	end
	module_upvr_3.SetVisibility = SetVisibility
	local function SetBackgroundVisibility(arg1, arg2, arg3) -- Line 3799
		--[[ Upvalues[2]:
			[1]: module_upvr_3 (readonly)
			[2]: var746_upvw (read and write)
		]]
		if module_upvr_3.DarkenBackground.Visible == arg2 then
		else
			var746_upvw(arg2, arg3)
		end
	end
	module_upvr_3.SetBackgroundVisibility = SetBackgroundVisibility
	local function GetVisibility(arg1) -- Line 3805
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		return module_upvr_3.Visible
	end
	module_upvr_3.GetVisibility = GetVisibility
	local function ToggleVisibility(arg1, arg2, arg3) -- Line 3809
		--[[ Upvalues[2]:
			[1]: var749_upvw (read and write)
			[2]: module_upvr_3 (readonly)
		]]
		var749_upvw(not module_upvr_3.Visible, nil, nil, arg2, arg3)
	end
	module_upvr_3.ToggleVisibility = ToggleVisibility
	function module_upvr_3.AddToMenuStack(arg1, arg2) -- Line 3813
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		if module_upvr_3.MenuStack[#module_upvr_3.MenuStack] ~= arg2 then
			module_upvr_3.MenuStack[#module_upvr_3.MenuStack + 1] = arg2
		end
	end
	function module_upvr_3.InviteToGame(arg1) -- Line 3819
		--[[ Upvalues[11]:
			[1]: GetFFlagLuaInExperienceCoreScriptsGameInviteUnification_upvr (copied, readonly)
			[2]: game_DefineFastFlag_result1_upvr_7 (copied, readonly)
			[3]: GetFStringGameInviteMenuLayer_upvr (copied, readonly)
			[4]: IXPServiceWrapper_upvr (copied, readonly)
			[5]: GameInviteInviteExperimentVariant_upvw (copied, read and write)
			[6]: var25_upvw (copied, read and write)
			[7]: UserInputService_upvr (copied, readonly)
			[8]: var23_upvw (copied, read and write)
			[9]: module_upvr_3 (readonly)
			[10]: GameInviteModalManager_upvw (copied, read and write)
			[11]: GameInviteConstants_upvw (copied, read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 7. Error Block 25 start (CF ANALYSIS FAILED)
		local var162_result1_2 = GetFStringGameInviteMenuLayer_upvr()
		local any_GetLayerData_result1_2 = IXPServiceWrapper_upvr:GetLayerData(var162_result1_2)
		IXPServiceWrapper_upvr:LogUserLayerExposure(var162_result1_2)
		if any_GetLayerData_result1_2 and (any_GetLayerData_result1_2.inExperienceGameInviteUXRefresh2023 == GameInviteInviteExperimentVariant_upvw.UxRefresh or any_GetLayerData_result1_2.inExperienceGameInviteUXRefresh2023 == GameInviteInviteExperimentVariant_upvw.InviteLimit) then
		else
		end
		-- KONSTANTERROR: [6] 7. Error Block 25 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 29. Error Block 23 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 29. Error Block 23 end (CF ANALYSIS FAILED)
	end
	local function PopMenu(arg1, arg2, arg3, arg4) -- Line 3846
		--[[ Upvalues[6]:
			[1]: module_upvr_3 (readonly)
			[2]: BindableEvent_upvr (readonly)
			[3]: FFlagAddUILessMode_upvr (copied, readonly)
			[4]: var74_upvr (copied, readonly)
			[5]: FFlagEnableChromeShortcutBar_upvr (copied, readonly)
			[6]: RobloxGui_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [99] 78. Error Block 13 start (CF ANALYSIS FAILED)
		require(RobloxGui_upvr.Modules.Chrome.Service):setShortcutBar(require(RobloxGui_upvr.Modules.Chrome.ChromeShared.Unibar.Constants).TILTMENU_SHORTCUTBAR_ID)
		do
			return
		end
		-- KONSTANTERROR: [99] 78. Error Block 13 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [129] 96. Error Block 19 start (CF ANALYSIS FAILED)
		module_upvr_3.MenuStack = {}
		BindableEvent_upvr:Fire()
		if FFlagAddUILessMode_upvr then
			module_upvr_3:ToggleVisibility(nil, arg4)
			return
		end
		module_upvr_3:ToggleVisibility(arg4)
		-- KONSTANTERROR: [129] 96. Error Block 19 end (CF ANALYSIS FAILED)
	end
	module_upvr_3.PopMenu = PopMenu
	local function ShowShield(arg1) -- Line 3880
		--[[ Upvalues[3]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: any_transparency_result1_upvr (copied, readonly)
			[3]: module_upvr_3 (readonly)
		]]
		local var754 = 0
		if UserInputService_upvr.VREnabled then
			var754 = 1
		else
			var754 = any_transparency_result1_upvr
		end
		module_upvr_3.Shield.BackgroundTransparency = var754
	end
	module_upvr_3.ShowShield = ShowShield
	local function HideShield(arg1) -- Line 3889
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		module_upvr_3.Shield.BackgroundTransparency = 1
	end
	module_upvr_3.HideShield = HideShield
	module_upvr_3.GameSettingsPageReorderIXPFetched = false
	local var755_upvw
	local function enableVR_upvr() -- Line 3896, Named "enableVR"
		--[[ Upvalues[4]:
			[1]: RobloxGui_upvr (copied, readonly)
			[2]: CorePackages_3_upvr (copied, readonly)
			[3]: module_upvr_3 (readonly)
			[4]: var755_upvw (read and write)
		]]
		local VRHub_upvr = require(RobloxGui_upvr.Modules.VR.VRHub)
		local Panel3D_2 = require(CorePackages_3_upvr.Workspace.Packages.VrCommon).Panel3D
		local any_Get_result1_upvr_2 = Panel3D_2.Get("SettingsMenu")
		any_Get_result1_upvr_2:ResizeStuds(4, 4, 250)
		any_Get_result1_upvr_2:SetType(Panel3D_2.Type.Standard)
		any_Get_result1_upvr_2:SetVisible(false)
		any_Get_result1_upvr_2:SetCanFade(false)
		module_upvr_3.ClippingShield.Parent = any_Get_result1_upvr_2:GetGUI()
		module_upvr_3.Shield.Parent.ClipsDescendants = false
		module_upvr_3.VRShield.Visible = true
		module_upvr_3:HideShield()
		var755_upvw = module_upvr_3.SettingsShowSignal:connect(function(arg1) -- Line 3910
			--[[ Upvalues[2]:
				[1]: any_Get_result1_upvr_2 (readonly)
				[2]: VRHub_upvr (readonly)
			]]
			if arg1 then
				any_Get_result1_upvr_2:SetVisible(true)
				VRHub_upvr:FireModuleOpened("SettingsMenu")
			else
				any_Get_result1_upvr_2:SetVisible(false)
				VRHub_upvr:FireModuleClosed("SettingsMenu")
			end
		end)
		VRHub_upvr.ModuleOpened.Event:connect(function(arg1) -- Line 3922
			--[[ Upvalues[1]:
				[1]: module_upvr_3 (copied, readonly)
			]]
			if arg1 ~= "SettingsMenu" then
				module_upvr_3:SetVisibility(false)
			end
		end)
	end
	local var761_upvw
	local function disableVR_upvr() -- Line 3928, Named "disableVR"
		--[[ Upvalues[5]:
			[1]: module_upvr_3 (readonly)
			[2]: RobloxGui_upvr (copied, readonly)
			[3]: var755_upvw (read and write)
			[4]: var761_upvw (read and write)
			[5]: CorePackages_3_upvr (copied, readonly)
		]]
		module_upvr_3.ClippingShield.Parent = RobloxGui_upvr
		module_upvr_3.Shield.Parent.ClipsDescendants = true
		module_upvr_3.VRShield.Visible = false
		module_upvr_3:ShowShield()
		if var755_upvw then
			var755_upvw:disconnect()
			var755_upvw = nil
		end
		if var761_upvw then
			var761_upvw:disconnect()
			var761_upvw = nil
		end
		require(CorePackages_3_upvr.Workspace.Packages.VrCommon).Panel3D.Get("SettingsMenu"):SetVisible(false)
	end
	local function _() -- Line 3948, Named "refreshForSpatialUI"
		--[[ Upvalues[5]:
			[1]: onScreenSizeChanged_upvr (readonly)
			[2]: module_upvr_3 (readonly)
			[3]: Theme_upvr (copied, readonly)
			[4]: GuiService_upvr (copied, readonly)
			[5]: resizeBottomBarButtons_upvr (readonly)
		]]
		onScreenSizeChanged_upvr()
		module_upvr_3.MenuContainer.BackgroundTransparency = Theme_upvr.transparency("MenuContainer", 1) * GuiService_upvr.PreferredTransparency
		resizeBottomBarButtons_upvr()
	end
	local function OnVREnabled(arg1) -- Line 3954
		--[[ Upvalues[9]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: isInExperienceUIVREnabled_upvr (copied, readonly)
			[3]: module_upvr_3 (readonly)
			[4]: onScreenSizeChanged_upvr (readonly)
			[5]: Theme_upvr (copied, readonly)
			[6]: GuiService_upvr (copied, readonly)
			[7]: resizeBottomBarButtons_upvr (readonly)
			[8]: enableVR_upvr (readonly)
			[9]: disableVR_upvr (readonly)
		]]
		if arg1 == "VREnabled" then
			if UserInputService_upvr.VREnabled then
				if isInExperienceUIVREnabled_upvr then
					module_upvr_3.SettingsUIDelegate:enableVR()
					onScreenSizeChanged_upvr()
					module_upvr_3.MenuContainer.BackgroundTransparency = Theme_upvr.transparency("MenuContainer", 1) * GuiService_upvr.PreferredTransparency
					resizeBottomBarButtons_upvr()
				else
					enableVR_upvr()
				end
			end
			if isInExperienceUIVREnabled_upvr then
				module_upvr_3.SettingsUIDelegate:disableVR()
				onScreenSizeChanged_upvr()
				module_upvr_3.MenuContainer.BackgroundTransparency = Theme_upvr.transparency("MenuContainer", 1) * GuiService_upvr.PreferredTransparency
				resizeBottomBarButtons_upvr()
				return
			end
			disableVR_upvr()
		end
	end
	UserInputService_upvr.Changed:connect(OnVREnabled)
	OnVREnabled("VREnabled")
	if not game_DefineFastFlag_result1_upvr_5 and not isNewInGameMenuEnabled_upvr() and (not FFlagAddUILessMode_upvr or FIntAddUILessModeVariant_upvr == 0) then
		ContextActionService_upvr:BindCoreAction("RBXEscapeMainMenu", function(arg1, arg2, arg3) -- Line 3983
			--[[ Upvalues[3]:
				[1]: FFlagAddUILessMode_upvr (copied, readonly)
				[2]: module_upvr_3 (readonly)
				[3]: module_upvr_2 (copied, readonly)
			]]
			if arg2 ~= Enum.UserInputState.Begin then
			else
				if FFlagAddUILessMode_upvr then
					module_upvr_3:PopMenu(false, true, module_upvr_2.AnalyticsMenuOpenTypes.Keyboard)
					return
				end
				module_upvr_3:PopMenu(false, true)
			end
		end, false, Enum.KeyCode.Escape)
	end
	module_upvr_3.ResetCharacterPage:SetHub(module_upvr_3)
	if InExperienceCapabilities_upvr.canNavigateHome then
		module_upvr_3.LeaveGamePage:SetHub(module_upvr_3)
	end
	if GetFFlagEnableLeaveGameUpsellEntrypoint_upvr() then
		module_upvr_3.LeaveGameUpsellPage:SetHub(module_upvr_3)
	end
	module_upvr_3.GameSettingsPage = require(RobloxGui_upvr.Modules.Settings.Pages.GameSettingsWrapper)
	module_upvr_3.GameSettingsPage:SetHub(module_upvr_3)
	module_upvr_3.ReportAbusePage = require(RobloxGui_upvr.Modules.Settings.Pages.ReportAbuseMenuNewContainerPage)
	module_upvr_3.ReportAbusePage:SetHub(module_upvr_3)
	if GetFFlagAbuseReportEnableReportSentPage_upvr() then
		module_upvr_3.ReportSentPage = require(RobloxGui_upvr.Modules.Settings.Pages.ReportSentPage)
		module_upvr_3.ReportSentPage:SetHub(module_upvr_3)
	end
	module_upvr_3.ReportSentPageV2 = require(RobloxGui_upvr.Modules.Settings.Pages.ReportSentPageV2)
	module_upvr_3.ReportSentPageV2:SetHub(module_upvr_3)
	module_upvr_3.HelpPage = require(RobloxGui_upvr.Modules.Settings.Pages.Help)
	module_upvr_3.HelpPage:SetHub(module_upvr_3)
	if any_GetPlatform_result1_upvr == Enum.Platform.Windows and not CachedPolicyService_upvr:IsSubjectToChinaPolicies() then
		module_upvr_3.RecordPage = require(RobloxGui_upvr.Modules.Settings.Pages.Record)
		module_upvr_3.RecordPage:SetHub(module_upvr_3)
	end
	if InExperienceCapabilities_upvr.canListPeopleInSameServer then
		module_upvr_3.PlayersPage = require(RobloxGui_upvr.Modules.Settings.Pages.PeopleWrapper)
		module_upvr_3.PlayersPage:SetHub(module_upvr_3)
		if FFlagRelocateMobileMenuButtons_upvr and FIntRelocateMobileMenuButtonsVariant_upvr == 2 and Utility_upvr:IsSmallTouchScreen() then
			module_upvr_3.PlayersPage:CreateMenuButtonsContainer()
		end
	end
	if isSubjectToDesktopPolicies_upvr() then
		module_upvr_3.ExitModalPage = require(RobloxGui_upvr.Modules.Settings.Pages.ExitModal)
		module_upvr_3.ExitModalPage:SetHub(module_upvr_3)
	end
	if isSubjectToDesktopPolicies_upvr() and InExperienceCapabilities_upvr.canNavigateHome then
		module_upvr_3.LeaveGameToHomePage = require(RobloxGui_upvr.Modules.Settings.Pages.LeaveGameToHome)
		module_upvr_3.LeaveGameToHomePage:SetHub(module_upvr_3)
	end
	if not any_IsEnabled_result1_upvr then
		if GetCorePackagesLoaded_upvr({"Roact", "Rodux", "RoactRodux"}) then
			local CorePackages_2 = game:GetService("CorePackages")
			module_upvr_3.ShareGameApp = require(RobloxGui_upvr.Modules.Settings.ShareGameMaster).createApp(module_upvr_3.PageViewClipper, GameInviteAnalytics_upvr.new():withEventStream(require(CorePackages_2.Workspace.Packages.Analytics).AnalyticsReporters.EventStream.new(RbxAnalyticsService_upvr)):withDiag(require(CorePackages_2.Workspace.Packages.Analytics).AnalyticsReporters.Diag.new(RbxAnalyticsService_upvr)):withButtonName(GameInviteAnalytics_upvr.ButtonName.SettingsHub))
			module_upvr_3.ShareGamePage = require(RobloxGui_upvr.Modules.Settings.Pages.ShareGamePlaceholderPage)
			module_upvr_3.ShareGamePage:ConnectHubToApp(module_upvr_3, module_upvr_3.ShareGameApp)
			module_upvr_3:AddPage(module_upvr_3.ShareGamePage)
		end
	end
	CorePackages_2 = CapturesPolicy_upvr.PolicyImplementation
	local var765 = CorePackages_2
	if var765.read() then
		var765 = CapturesPolicy_upvr.Mapper(var765.read()).eligibleForCapturesFeature()
	else
		var765 = false
	end
	if var765 then
		local CapturesPageWrapper = require(RobloxGui_upvr.Modules.Settings.Pages.CapturesPageWrapper)
		module_upvr_3.CapturesApp = CapturesApp_upvr
		module_upvr_3.CapturesApp.mountMenuPage(CapturesPageWrapper.Page, function() -- Line 4085, Named "closeSettingsMenu"
			--[[ Upvalues[1]:
				[1]: module_upvr_3 (readonly)
			]]
			module_upvr_3:SetVisibility(false, true)
		end, var74_upvr)
		module_upvr_3.CapturesPage = CapturesPageWrapper
		module_upvr_3.CapturesPage:ConnectHubToApp(module_upvr_3, module_upvr_3.PageViewClipper, module_upvr_3.CapturesApp)
	end
	if module_upvr_3.PlayersPage then
		module_upvr_3:AddPage(module_upvr_3.PlayersPage)
	end
	module_upvr_3:AddPage(module_upvr_3.ResetCharacterPage)
	if module_upvr_3.LeaveGamePage then
		module_upvr_3:AddPage(module_upvr_3.LeaveGamePage)
	end
	if GetFFlagEnableLeaveGameUpsellEntrypoint_upvr() and module_upvr_3.LeaveGameUpsellPage then
		module_upvr_3:AddPage(module_upvr_3.LeaveGameUpsellPage)
	end
	module_upvr_3:AddPage(module_upvr_3.GameSettingsPage)
	if module_upvr_3.CapturesPage then
		module_upvr_3:AddPage(module_upvr_3.CapturesPage)
	end
	if module_upvr_3.ReportAbusePage then
		module_upvr_3:AddPage(module_upvr_3.ReportAbusePage)
	end
	if module_upvr_3.ReportSentPage then
		module_upvr_3:AddPage(module_upvr_3.ReportSentPage)
	end
	if module_upvr_3.ReportSentPageV2 then
		module_upvr_3:AddPage(module_upvr_3.ReportSentPageV2)
	end
	module_upvr_3:AddPage(module_upvr_3.HelpPage)
	if module_upvr_3.RecordPage and not module_upvr_3.CapturesPage then
		module_upvr_3:AddPage(module_upvr_3.RecordPage)
	end
	if module_upvr_3.ExitModalPage then
		module_upvr_3:AddPage(module_upvr_3.ExitModalPage)
	end
	if module_upvr_3.LeaveGameToHomePage then
		module_upvr_3:AddPage(module_upvr_3.LeaveGameToHomePage)
	end
	module_upvr_3:InitInPage(module_upvr_3:GetFirstPageWithTabHeader())
	if game_DefineFastFlag_result1_upvr_5 and not isNewInGameMenuEnabled_upvr() and (not FFlagAddUILessMode_upvr or FIntAddUILessModeVariant_upvr == 0) then
		ContextActionService_upvr:BindCoreAction("RBXEscapeMainMenu", function(arg1, arg2, arg3) -- Line 4146
			--[[ Upvalues[3]:
				[1]: FFlagAddUILessMode_upvr (copied, readonly)
				[2]: module_upvr_3 (readonly)
				[3]: module_upvr_2 (copied, readonly)
			]]
			if arg2 ~= Enum.UserInputState.Begin then
			else
				if FFlagAddUILessMode_upvr then
					module_upvr_3:PopMenu(false, true, module_upvr_2.AnalyticsMenuOpenTypes.Keyboard)
					return
				end
				module_upvr_3:PopMenu(false, true)
			end
		end, false, Enum.KeyCode.Escape)
	end
	GuiService_upvr.ShowLeaveConfirmation:connect(function() -- Line 4162
		--[[ Upvalues[2]:
			[1]: module_upvr_3 (readonly)
			[2]: module_upvr_2 (copied, readonly)
		]]
		if #module_upvr_3.MenuStack == 0 then
			module_upvr_3:SetVisibility(true, nil, nil, nil, module_upvr_2.AnalyticsMenuOpenTypes.GamepadLeaveGame)
			module_upvr_3:SwitchToPage(module_upvr_3:GetFirstPageWithTabHeader(), nil, 1)
		else
			module_upvr_3:PopMenu(false, true)
		end
	end)
	ContextActionService_upvr:BindCoreAction("Open Dev Console", function(arg1, arg2, arg3) -- Line 2664, Named "toggleDevConsole"
		--[[ Upvalues[1]:
			[1]: DevConsoleMaster_upvr (copied, readonly)
		]]
		if arg1 == "Open Dev Console" and arg2 and arg2 == Enum.UserInputState.Begin then
			DevConsoleMaster_upvr:ToggleVisibility()
		end
	end, false, Enum.KeyCode.F9)
	ContextActionService_upvr:BindCoreAction("Show Quick Profiler", function(arg1, arg2, arg3) -- Line 2648, Named "toggleQuickProfilerFromHotkey"
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: GameSettings_upvr (copied, readonly)
		]]
		if not UserInputService_upvr:IsKeyDown(Enum.KeyCode.LeftControl) and not UserInputService_upvr:IsKeyDown(Enum.KeyCode.RightControl) then
		elseif arg1 == "Show Quick Profiler" and arg2 and arg2 == Enum.UserInputState.Begin then
			GameSettings_upvr.PerformanceStatsVisible = not GameSettings_upvr.PerformanceStatsVisible
		end
	end, false, Enum.KeyCode.F7)
	UserInputService_upvr.InputBegan:connect(function(arg1) -- Line 4188
		--[[ Upvalues[2]:
			[1]: module_upvr_3 (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		if arg1.KeyCode == Enum.KeyCode.Left or arg1.KeyCode == Enum.KeyCode.Right or arg1.KeyCode == Enum.KeyCode.Up or arg1.KeyCode == Enum.KeyCode.Down then
			if module_upvr_3.Visible and module_upvr_3.Active and module_upvr_3.Pages.CurrentPage and GuiService_upvr.SelectedCoreObject == nil then
				module_upvr_3.Pages.CurrentPage:SelectARow()
			end
		end
	end)
	if module_upvr_3.ExitModalPage then
		local function showExitModal_upvw() -- Line 4202, Named "showExitModal"
			--[[ Upvalues[5]:
				[1]: module_upvr_3 (readonly)
				[2]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
				[3]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
				[4]: Utility_upvr (copied, readonly)
				[5]: removeBottomBarBindings_upvr (readonly)
			]]
			module_upvr_3.HubBar.Visible = false
			if FFlagRelocateMobileMenuButtons_upvr and (FIntRelocateMobileMenuButtonsVariant_upvr == 1 or FIntRelocateMobileMenuButtonsVariant_upvr == 3 or FIntRelocateMobileMenuButtonsVariant_upvr == 2 and not Utility_upvr:IsSmallTouchScreen()) then
				module_upvr_3.removeMenuKeyBindings()
			else
				removeBottomBarBindings_upvr()
			end
			if module_upvr_3:GetVisibility() then
				module_upvr_3:AddToMenuStack(module_upvr_3.Pages.CurrentPage)
				module_upvr_3:SwitchToPage(module_upvr_3.ExitModalPage, nil, 1, true)
			else
				module_upvr_3:SetVisibility(true, nil, module_upvr_3.ExitModalPage, false)
			end
		end
		local function handleNativeExit() -- Line 4216
			--[[ Upvalues[7]:
				[1]: module_upvr_3 (readonly)
				[2]: var151_upvr (copied, readonly)
				[3]: PerfUtils_upvr (copied, readonly)
				[4]: FFlagRelocateMobileMenuButtons_upvr (copied, readonly)
				[5]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
				[6]: Utility_upvr (copied, readonly)
				[7]: showExitModal_upvw (readonly)
			]]
			if module_upvr_3:GetVisibility() and module_upvr_3.Pages.CurrentPage == module_upvr_3.ExitModalPage then
				if var151_upvr then
					PerfUtils_upvr.leavingGame()
				end
				if FFlagRelocateMobileMenuButtons_upvr and (FIntRelocateMobileMenuButtonsVariant_upvr == 1 or FIntRelocateMobileMenuButtonsVariant_upvr == 3 or FIntRelocateMobileMenuButtonsVariant_upvr == 2 and not Utility_upvr:IsSmallTouchScreen()) then
					module_upvr_3.BottomButtonFrameRoot:unmount()
				end
				module_upvr_3.ExitModalPage.LeaveAppFunc(true)
			else
				showExitModal_upvw()
			end
		end
		game:GetService("GuiService").NativeClose:Connect(handleNativeExit)
		if module_upvr_3.FullScreenTitleBar then
			module_upvr_3.FullScreenTitleBar = SettingsFullScreenTitleBar_upvr.update(module_upvr_3.FullScreenTitleBar, {
				onClose = handleNativeExit;
			})
		end
	end
	showExitModal_upvw = GetFFlagEnableAppChatInExperience_upvr()
	if showExitModal_upvw then
		showExitModal_upvw = nil
		module_upvr_3.SettingsShowSignal:connect(function(arg1) -- Line 4242
			--[[ Upvalues[3]:
				[1]: showExitModal_upvw (read and write)
				[2]: InExperienceAppChatModal_upvr (copied, readonly)
				[3]: module_upvr_3 (readonly)
			]]
			if arg1 then
				showExitModal_upvw = InExperienceAppChatModal_upvr.default.visibilitySignal.Event:Connect(function(arg1_17) -- Line 4244
					--[[ Upvalues[1]:
						[1]: module_upvr_3 (copied, readonly)
					]]
					if arg1_17 and module_upvr_3.Visible then
						module_upvr_3:SetVisibility(false, true)
					end
				end)
			elseif showExitModal_upvw then
				showExitModal_upvw:Disconnect()
				showExitModal_upvw = nil
			end
		end)
	end
	do
		return module_upvr_3
	end
	-- KONSTANTERROR: [105] 67. Error Block 120 end (CF ANALYSIS FAILED)
end)()
function module_upvr.GetExperienceControlStore(arg1) -- Line 4284
	--[[ Upvalues[1]:
		[1]: CreateSettingsHub_result1_upvr (readonly)
	]]
	return CreateSettingsHub_result1_upvr:GetExperienceControlStore()
end
function module_upvr.SetVisibility(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 4288
	--[[ Upvalues[1]:
		[1]: CreateSettingsHub_result1_upvr (readonly)
	]]
	CreateSettingsHub_result1_upvr:SetVisibility(arg2, arg3, arg4, arg5, arg6)
end
function module_upvr.SetBackgroundVisibility(arg1, arg2, arg3) -- Line 4292
	--[[ Upvalues[1]:
		[1]: CreateSettingsHub_result1_upvr (readonly)
	]]
	CreateSettingsHub_result1_upvr:SetBackgroundVisibility(arg2, arg3)
end
function module_upvr.ToggleVisibility(arg1, arg2, arg3) -- Line 4296
	--[[ Upvalues[1]:
		[1]: CreateSettingsHub_result1_upvr (readonly)
	]]
	CreateSettingsHub_result1_upvr:ToggleVisibility(arg2, arg3)
end
function module_upvr.SwitchToPage(arg1, arg2, arg3) -- Line 4300
	--[[ Upvalues[1]:
		[1]: CreateSettingsHub_result1_upvr (readonly)
	]]
	CreateSettingsHub_result1_upvr:SwitchToPage(arg2, arg3, 1)
end
if FFlagAddUILessMode_upvr and FIntAddUILessModeVariant_upvr ~= 0 then
	function module_upvr.PopMenu(arg1, arg2, arg3, arg4) -- Line 4305
		--[[ Upvalues[1]:
			[1]: CreateSettingsHub_result1_upvr (readonly)
		]]
		return CreateSettingsHub_result1_upvr:PopMenu(arg2, arg3, arg4)
	end
end
function module_upvr.GetVisibility(arg1) -- Line 4310
	--[[ Upvalues[1]:
		[1]: CreateSettingsHub_result1_upvr (readonly)
	]]
	return CreateSettingsHub_result1_upvr.Visible
end
function module_upvr.ShowShield(arg1) -- Line 4314
	--[[ Upvalues[1]:
		[1]: CreateSettingsHub_result1_upvr (readonly)
	]]
	CreateSettingsHub_result1_upvr:ShowShield()
end
function module_upvr.HideShield(arg1) -- Line 4318
	--[[ Upvalues[1]:
		[1]: CreateSettingsHub_result1_upvr (readonly)
	]]
	CreateSettingsHub_result1_upvr:HideShield()
end
function module_upvr.GetRespawnBehaviour(arg1) -- Line 4322
	--[[ Upvalues[1]:
		[1]: CreateSettingsHub_result1_upvr (readonly)
	]]
	return CreateSettingsHub_result1_upvr:GetRespawnBehaviour()
end
module_upvr.RespawnBehaviourChangedEvent = CreateSettingsHub_result1_upvr.RespawnBehaviourChangedEvent
module_upvr.SettingsShowSignal = CreateSettingsHub_result1_upvr.SettingsShowSignal
module_upvr.CurrentPageSignal = CreateSettingsHub_result1_upvr.CurrentPageSignal
module_upvr.SettingsShowEvent = Instance.new("BindableEvent")
CreateSettingsHub_result1_upvr.SettingsShowSignal:connect(function(arg1) -- Line 4334
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.SettingsShowEvent:Fire(arg1)
end)
module_upvr.Instance = CreateSettingsHub_result1_upvr
do
	return module_upvr
end
-- KONSTANTERROR: [343] 203. Error Block 45 end (CF ANALYSIS FAILED)