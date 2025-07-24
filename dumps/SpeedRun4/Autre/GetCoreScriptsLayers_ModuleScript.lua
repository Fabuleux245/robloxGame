-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:04
-- Luau version 6, Types version 3
-- Time taken: 0.002110 seconds

local CorePackages = game:GetService("CorePackages")
local getFStringDesktopToastNotificationLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).getFStringDesktopToastNotificationLayer
local FStringReportMenuIXPLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FStringReportMenuIXPLayer
local FStringReportingIXPLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FStringReportingIXPLayer
local FStringEARReportMenuIXPLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FStringEARReportMenuIXPLayer
local FStringSocialCaptureIXPLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FStringSocialCaptureIXPLayer
local FStringSocialCaptureTakenIXPLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FStringSocialCaptureTakenIXPLayer
local IsExperienceMenuABTestEnabled_upvr = require(script.Parent.Parent.IsExperienceMenuABTestEnabled)
local GetFFlagEnableNewInviteMenuIXP_upvr = require(script.Parent.Parent.Flags.GetFFlagEnableNewInviteMenuIXP)
local GetFFlagReportTabShareIXPLayerWithMenu_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportTabShareIXPLayerWithMenu
local GetFStringLuaAppExperienceMenuLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringLuaAppExperienceMenuLayer
local GetFStringLuaAppConsoleExperienceMenuLayer_upvr = require(script.Parent.Parent.Flags.GetFStringLuaAppConsoleExperienceMenuLayer)
local GetFStringLargerRobuxUpsellIxpLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringLargerRobuxUpsellIxpLayer
local GetFFlagReportAnythingAnnotationIXP_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportAnythingAnnotationIXP
local GetFStringReportAnythingAnnotationIXPLayerName_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringReportAnythingAnnotationIXPLayerName
local GetFFlagChatTranslationSettingEnabled_upvr = require(script.Parent.Parent.Flags.GetFFlagChatTranslationSettingEnabled)
local GetFStringChatTranslationLayerName_upvr = require(script.Parent.Parent.Flags.GetFStringChatTranslationLayerName)
local GetFFlagVoiceUserAgencyEnableIXP_upvr = require(script.Parent.Parent.Flags.GetFFlagVoiceUserAgencyEnableIXP)
local GetFStringVoiceUserAgencyIXPLayerName_upvr = require(script.Parent.Parent.Flags.GetFStringVoiceUserAgencyIXPLayerName)
local GetFFlagLuaInExperienceCoreScriptsGameInviteUnification_upvr = require(script.Parent.Parent.Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification)
local GetFStringGameInviteMenuLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringGameInviteMenuLayer
local GetFFlagUXForCameraPerformanceIXPEnabled_upvr = require(script.Parent.Parent.Flags.GetFFlagUXForCameraPerformanceIXPEnabled)
local GetFStringUXForCameraPerformanceIXPLayerName_upvr = require(script.Parent.Parent.Flags.GetFStringUXForCameraPerformanceIXPLayerName)
local GetFFlagAddVoiceExposureLayer_upvr = require(script.Parent.Parent.Flags.GetFFlagAddVoiceExposureLayer)
local GetFStringVoiceExposureIXPLayerName_upvr = require(script.Parent.Parent.Flags.GetFStringVoiceExposureIXPLayerName)
local GetFStringAndroidPhoneVerificationLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringAndroidPhoneVerificationLayer
local GetFStringIOSPhoneVerificationLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringIOSPhoneVerificationLayer
local GetFFlagEnableAppChatInExperience_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableAppChatInExperience
local getFStringAppChatInExperienceIXPLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).getFStringAppChatInExperienceIXPLayer
return function() -- Line 46
	--[[ Upvalues[28]:
		[1]: getFStringDesktopToastNotificationLayer_upvr (readonly)
		[2]: FStringReportMenuIXPLayer_upvr (readonly)
		[3]: FStringReportingIXPLayer_upvr (readonly)
		[4]: FStringEARReportMenuIXPLayer_upvr (readonly)
		[5]: FStringSocialCaptureIXPLayer_upvr (readonly)
		[6]: FStringSocialCaptureTakenIXPLayer_upvr (readonly)
		[7]: IsExperienceMenuABTestEnabled_upvr (readonly)
		[8]: GetFFlagEnableNewInviteMenuIXP_upvr (readonly)
		[9]: GetFFlagReportTabShareIXPLayerWithMenu_upvr (readonly)
		[10]: GetFStringLuaAppExperienceMenuLayer_upvr (readonly)
		[11]: GetFStringLuaAppConsoleExperienceMenuLayer_upvr (readonly)
		[12]: GetFStringLargerRobuxUpsellIxpLayer_upvr (readonly)
		[13]: GetFFlagReportAnythingAnnotationIXP_upvr (readonly)
		[14]: GetFStringReportAnythingAnnotationIXPLayerName_upvr (readonly)
		[15]: GetFFlagChatTranslationSettingEnabled_upvr (readonly)
		[16]: GetFStringChatTranslationLayerName_upvr (readonly)
		[17]: GetFFlagVoiceUserAgencyEnableIXP_upvr (readonly)
		[18]: GetFStringVoiceUserAgencyIXPLayerName_upvr (readonly)
		[19]: GetFFlagLuaInExperienceCoreScriptsGameInviteUnification_upvr (readonly)
		[20]: GetFStringGameInviteMenuLayer_upvr (readonly)
		[21]: GetFFlagUXForCameraPerformanceIXPEnabled_upvr (readonly)
		[22]: GetFStringUXForCameraPerformanceIXPLayerName_upvr (readonly)
		[23]: GetFFlagAddVoiceExposureLayer_upvr (readonly)
		[24]: GetFStringVoiceExposureIXPLayerName_upvr (readonly)
		[25]: GetFStringAndroidPhoneVerificationLayer_upvr (readonly)
		[26]: GetFStringIOSPhoneVerificationLayer_upvr (readonly)
		[27]: GetFFlagEnableAppChatInExperience_upvr (readonly)
		[28]: getFStringAppChatInExperienceIXPLayer_upvr (readonly)
	]]
	local module = {"AbuseReports", getFStringDesktopToastNotificationLayer_upvr(), FStringReportMenuIXPLayer_upvr, FStringReportingIXPLayer_upvr, FStringEARReportMenuIXPLayer_upvr, FStringSocialCaptureIXPLayer_upvr, FStringSocialCaptureTakenIXPLayer_upvr}
	if IsExperienceMenuABTestEnabled_upvr() or GetFFlagEnableNewInviteMenuIXP_upvr() or GetFFlagReportTabShareIXPLayerWithMenu_upvr() then
		table.insert(module, GetFStringLuaAppExperienceMenuLayer_upvr())
		table.insert(module, GetFStringLuaAppConsoleExperienceMenuLayer_upvr())
	end
	if GetFStringLargerRobuxUpsellIxpLayer_upvr() then
		table.insert(module, GetFStringLargerRobuxUpsellIxpLayer_upvr())
	end
	if GetFFlagReportAnythingAnnotationIXP_upvr() then
		table.insert(module, GetFStringReportAnythingAnnotationIXPLayerName_upvr())
	end
	if GetFFlagChatTranslationSettingEnabled_upvr() and 0 < #GetFStringChatTranslationLayerName_upvr() then
		table.insert(module, GetFStringChatTranslationLayerName_upvr())
	end
	if GetFFlagVoiceUserAgencyEnableIXP_upvr() then
		table.insert(module, GetFStringVoiceUserAgencyIXPLayerName_upvr())
	end
	if GetFFlagLuaInExperienceCoreScriptsGameInviteUnification_upvr() then
		table.insert(module, GetFStringGameInviteMenuLayer_upvr())
	end
	if GetFFlagUXForCameraPerformanceIXPEnabled_upvr() then
		table.insert(module, GetFStringUXForCameraPerformanceIXPLayerName_upvr())
	end
	if GetFFlagAddVoiceExposureLayer_upvr() then
		table.insert(module, GetFStringVoiceExposureIXPLayerName_upvr())
	end
	if GetFStringAndroidPhoneVerificationLayer_upvr() then
		table.insert(module, GetFStringAndroidPhoneVerificationLayer_upvr())
	end
	if GetFStringIOSPhoneVerificationLayer_upvr() then
		table.insert(module, GetFStringIOSPhoneVerificationLayer_upvr())
	end
	if GetFFlagEnableAppChatInExperience_upvr() then
		table.insert(module, getFStringAppChatInExperienceIXPLayer_upvr())
	end
	return module
end