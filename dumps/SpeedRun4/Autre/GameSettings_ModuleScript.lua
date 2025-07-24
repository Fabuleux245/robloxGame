-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:01
-- Luau version 6, Types version 3
-- Time taken: 0.004511 seconds

-- KONSTANTERROR: [0] 1. Error Block 107 start (CF ANALYSIS FAILED)
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local _ = UserSettings()
if game:GetEngineFeature("CaptureModeEnabled") then
end
local isInExperienceUIVREnabled = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
if require(RobloxGui.Modules.Flags.GetFFlagEnableConnectDisconnectInSettingsAndChrome)() or isInExperienceUIVREnabled then
end
if require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableCrossExpVoiceVolumeIXPCheck() and require(CorePackages.Workspace.Packages.CrossExperienceVoice).IXPManager.default then
end
local tbl = {
	["Enum.SavedQualitySetting.Automatic"] = 0;
	["Enum.SavedQualitySetting.QualityLevel1"] = 1;
	["Enum.SavedQualitySetting.QualityLevel2"] = 2;
	["Enum.SavedQualitySetting.QualityLevel3"] = 3;
	["Enum.SavedQualitySetting.QualityLevel4"] = 4;
	["Enum.SavedQualitySetting.QualityLevel5"] = 5;
	["Enum.SavedQualitySetting.QualityLevel6"] = 6;
	["Enum.SavedQualitySetting.QualityLevel7"] = 7;
	["Enum.SavedQualitySetting.QualityLevel8"] = 8;
	["Enum.SavedQualitySetting.QualityLevel9"] = 9;
	["Enum.SavedQualitySetting.QualityLevel10"] = 10;
}
local _ = {
	DevComputerMovementMode = true;
	DevComputerCameraMode = true;
	DevEnableMouseLock = true;
}
local _ = {
	DevTouchMovementMode = true;
	DevTouchCameraMode = true;
}
if UserInputService.TouchEnabled then
else
end
local _ = {
	Input = "Input";
	Output = "Output";
}
if UserInputService.TouchEnabled then
	-- KONSTANTWARNING: GOTO [440] #276
end
if UserInputService.TouchEnabled then
	-- KONSTANTWARNING: GOTO [446] #281
end
if require(RobloxGui.Modules.Settings.Flags.FFlagInExperienceMenuReorderFirstVariant) or require(RobloxGui.Modules.Settings.Flags.FFlagOverrideInExperienceMenuReorderFirstVariant) then
	-- KONSTANTWARNING: GOTO [612] #398
end
if isInExperienceUIVREnabled then
	-- KONSTANTWARNING: GOTO [509] #324
end
-- KONSTANTERROR: [0] 1. Error Block 107 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [508] 323. Error Block 115 start (CF ANALYSIS FAILED)
;({
	OverscanAdjustButton = 1;
	ShiftLockFrame = 10;
	CameraModeFrame = 11;
	MovementModeFrame = 12;
	GamepadSensitivityFrame = 13;
	VoiceConnectFrame = 18;
	VoiceDisconnectFrame = 19;
	LanguageSelectorFrame = 20;
	FeedbackModeButton = 30;
	ChatTranslationFrame = 40;
	ChatLanguageSelectorFrame = 41;
	ChatTranslationToggleFrame = 42;
	MouseAdvancedFrame = 50;
}).VRComfortSettingFrame = nil
if isInExperienceUIVREnabled then
	-- KONSTANTWARNING: GOTO [515] #329
end
-- KONSTANTERROR: [508] 323. Error Block 115 end (CF ANALYSIS FAILED)