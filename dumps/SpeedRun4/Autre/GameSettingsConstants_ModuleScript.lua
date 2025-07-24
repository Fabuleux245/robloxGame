-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:49
-- Luau version 6, Types version 3
-- Time taken: 0.003502 seconds

local Modules = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules
local CorePackages = game:GetService("CorePackages")
local game_GetEngineFeature_result1 = game:GetEngineFeature("PartyVoiceVolume")
local FFlagInExperienceMenuReorderFirstVariant_upvr = require(Modules.Settings.Flags.FFlagInExperienceMenuReorderFirstVariant)
local FFlagOverrideInExperienceMenuReorderFirstVariant_upvr = require(Modules.Settings.Flags.FFlagOverrideInExperienceMenuReorderFirstVariant)
local isInExperienceUIVREnabled = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local tbl_2_upvr = {
	OverscanAdjustButton = 1;
	ShiftLockFrame = 10;
	CameraModeFrame = 11;
	MovementModeFrame = 12;
	FramerateCap = 13;
	GamepadSensitivityFrame = 14;
	CameraInvertedFrame = 90;
	CameraDeviceFrame = 91;
	MouseAdvancedFrame = 50;
	VoiceConnectFrame = 18;
	VoiceDisconnectFrame = 19;
	LanguageSelectorFrame = 20;
	FeedbackModeButton = 30;
	ChatTranslationFrame = 40;
	ChatLanguageSelectorFrame = 41;
	ChatTranslationToggleFrame = 42;
}
local var8_upvr
if isInExperienceUIVREnabled then
	var8_upvr = 54
	tbl_2_upvr.VRComfortSettingFrame = var8_upvr
	var8_upvr = 55
	tbl_2_upvr.VRVignetteEnabledFrame = var8_upvr
	var8_upvr = 56
	tbl_2_upvr.VRSteppedRotationEnabledFrame = var8_upvr
	var8_upvr = 57
	tbl_2_upvr.VRThirdPersonFixedCamEnabledFrame = var8_upvr
	var8_upvr = 58
	tbl_2_upvr.VRSafetyBubbleModeFrame = var8_upvr
end
var8_upvr = 60
tbl_2_upvr.DeviceFrameInput = var8_upvr
var8_upvr = 61
tbl_2_upvr.DeviceFrameOutput = var8_upvr
var8_upvr = 62
tbl_2_upvr.VolumeFrame = var8_upvr
if game_GetEngineFeature_result1 then
	var8_upvr = 63
	tbl_2_upvr.PartyVoiceVolumeFrame = var8_upvr
end
if game_GetEngineFeature_result1 then
	var8_upvr = 64
else
	var8_upvr = 63
end
tbl_2_upvr.HapticsFrame = var8_upvr
var8_upvr = 70
tbl_2_upvr.FullScreenFrame = var8_upvr
var8_upvr = 71
tbl_2_upvr.GraphicsEnablerFrame = var8_upvr
var8_upvr = 72
tbl_2_upvr.GraphicsQualityFrame = var8_upvr
var8_upvr = 73
tbl_2_upvr.ReducedMotionFrame = var8_upvr
var8_upvr = 74
tbl_2_upvr.PreferredTransparencyFrame = var8_upvr
var8_upvr = 75
tbl_2_upvr.PreferredTextSizeFrame = var8_upvr
var8_upvr = 76
tbl_2_upvr.UiNavigationKeyBindEnabledFrame = var8_upvr
var8_upvr = 80
tbl_2_upvr.PerformanceStatsFrame = var8_upvr
var8_upvr = 81
tbl_2_upvr.MicroProfilerFrame = var8_upvr
var8_upvr = 100
tbl_2_upvr.VREnabledFrame = var8_upvr
var8_upvr = 101
tbl_2_upvr.DeveloperConsoleButton = var8_upvr
var8_upvr = 200
tbl_2_upvr.UiToggleRow = var8_upvr
var8_upvr = 200
tbl_2_upvr.UiToggleRowCustom = var8_upvr
var8_upvr = 201
tbl_2_upvr.UiToggleRowBillboards = var8_upvr
var8_upvr = 202
tbl_2_upvr.UiToggleRowNameplates = var8_upvr
var8_upvr = 203
tbl_2_upvr.FreecamToggleRow = var8_upvr
var8_upvr = 999
tbl_2_upvr.InformationFrame = var8_upvr
var8_upvr = {}
var8_upvr.OverscanAdjustButton = 1
if isInExperienceUIVREnabled then
	var8_upvr.VRComfortSettingFrame = 4
	var8_upvr.VRVignetteEnabledFrame = 5
	var8_upvr.VRSteppedRotationEnabledFrame = 6
	var8_upvr.VRThirdPersonFixedCamEnabledFrame = 7
	var8_upvr.VRSafetyBubbleModeFrame = 8
end
var8_upvr.VolumeFrame = 10
if game_GetEngineFeature_result1 then
	var8_upvr.PartyVoiceVolumeFrame = 11
end
var8_upvr.VoiceConnectFrame = 20
var8_upvr.VoiceDisconnectFrame = 21
var8_upvr.MouseAdvancedFrame = 40
var8_upvr.GamepadSensitivityFrame = 41
var8_upvr.ShiftLockFrame = 45
var8_upvr.CameraModeFrame = 46
var8_upvr.MovementModeFrame = 47
var8_upvr.CameraInvertedFrame = 48
var8_upvr.GraphicsEnablerFrame = 60
var8_upvr.GraphicsQualityFrame = 61
var8_upvr.FramerateCap = 65
var8_upvr.LanguageSelectorFrame = 80
var8_upvr.ChatTranslationFrame = 81
var8_upvr.ChatTranslationToggleFrame = 82
var8_upvr.ChatLanguageSelectorFrame = 83
var8_upvr.FeedbackModeButton = 84
var8_upvr.PreferredTransparencyFrame = 95
var8_upvr.ReducedMotionFrame = 96
var8_upvr.HapticsFrame = 97
var8_upvr.UiNavigationKeyBindEnabledFrame = 98
var8_upvr.PreferredTextSizeFrame = 99
var8_upvr.CameraDeviceFrame = 110
var8_upvr.FullScreenFrame = 111
var8_upvr.DeviceFrameOutput = 112
var8_upvr.DeviceFrameInput = 113
var8_upvr.VREnabledFrame = 120
var8_upvr.PerformanceStatsFrame = 130
var8_upvr.MicroProfilerFrame = 131
var8_upvr.DeveloperConsoleButton = 132
var8_upvr.UiToggleRow = 200
var8_upvr.UiToggleRowCustom = 200
var8_upvr.UiToggleRowBillboards = 201
var8_upvr.UiToggleRowNameplates = 202
var8_upvr.FreecamToggleRow = 203
var8_upvr.InformationFrame = 999
local GetFStringInExperienceMenuIXPLayer_upvr = require(Modules.Settings.Flags.GetFStringInExperienceMenuIXPLayer)
local GetFStringInExperienceMenuIXPVar_upvr = require(Modules.Settings.Flags.GetFStringInExperienceMenuIXPVar)
local IXPServiceWrapper_upvr = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local function LayoutReOrderIXP_upvr() -- Line 151, Named "LayoutReOrderIXP"
	--[[ Upvalues[6]:
		[1]: GetFStringInExperienceMenuIXPLayer_upvr (readonly)
		[2]: GetFStringInExperienceMenuIXPVar_upvr (readonly)
		[3]: IXPServiceWrapper_upvr (readonly)
		[4]: FFlagInExperienceMenuReorderFirstVariant_upvr (readonly)
		[5]: var8_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
	]]
	local tbl_3_upvr = {
		ixp_variant = -1;
		variants = {
			DEFAULT = 1;
			VARIANT = 2;
		};
	}
	local function _() -- Line 160, Named "fetchSettingReorderIXPVariant"
		--[[ Upvalues[4]:
			[1]: GetFStringInExperienceMenuIXPLayer_upvr (copied, readonly)
			[2]: GetFStringInExperienceMenuIXPVar_upvr (copied, readonly)
			[3]: IXPServiceWrapper_upvr (copied, readonly)
			[4]: tbl_3_upvr (readonly)
		]]
		local GetFStringInExperienceMenuIXPVar_upvr_result1_2 = GetFStringInExperienceMenuIXPVar_upvr()
		local any_GetLayerData_result1_2 = IXPServiceWrapper_upvr:GetLayerData(GetFStringInExperienceMenuIXPLayer_upvr())
		local var16
		if any_GetLayerData_result1_2 ~= nil and any_GetLayerData_result1_2[GetFStringInExperienceMenuIXPVar_upvr_result1_2] ~= nil then
			var16 = any_GetLayerData_result1_2[GetFStringInExperienceMenuIXPVar_upvr_result1_2]
		end
		return var16
	end
	function tbl_3_upvr.__index(arg1, arg2) -- Line 171
		--[[ Upvalues[7]:
			[1]: tbl_3_upvr (readonly)
			[2]: GetFStringInExperienceMenuIXPLayer_upvr (copied, readonly)
			[3]: GetFStringInExperienceMenuIXPVar_upvr (copied, readonly)
			[4]: IXPServiceWrapper_upvr (copied, readonly)
			[5]: FFlagInExperienceMenuReorderFirstVariant_upvr (copied, readonly)
			[6]: var8_upvr (copied, readonly)
			[7]: tbl_2_upvr (copied, readonly)
		]]
		if tbl_3_upvr.ixp_variant == -1 then
			local GetFStringInExperienceMenuIXPVar_upvr_result1 = GetFStringInExperienceMenuIXPVar_upvr()
			local any_GetLayerData_result1 = IXPServiceWrapper_upvr:GetLayerData(GetFStringInExperienceMenuIXPLayer_upvr())
			local var20
			if any_GetLayerData_result1 ~= nil and any_GetLayerData_result1[GetFStringInExperienceMenuIXPVar_upvr_result1] ~= nil then
				var20 = any_GetLayerData_result1[GetFStringInExperienceMenuIXPVar_upvr_result1]
			end
			tbl_3_upvr.ixp_variant = var20
		end
		if FFlagInExperienceMenuReorderFirstVariant_upvr and tbl_3_upvr.ixp_variant == tbl_3_upvr.variants.VARIANT then
			return var8_upvr[arg2]
		end
		return tbl_2_upvr[arg2]
	end
	local module_2 = {}
	setmetatable(module_2, tbl_3_upvr)
	return module_2
end
local function _() -- Line 190, Named "getLayoutOrder"
	--[[ Upvalues[5]:
		[1]: FFlagOverrideInExperienceMenuReorderFirstVariant_upvr (readonly)
		[2]: var8_upvr (readonly)
		[3]: FFlagInExperienceMenuReorderFirstVariant_upvr (readonly)
		[4]: LayoutReOrderIXP_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
	]]
	if FFlagOverrideInExperienceMenuReorderFirstVariant_upvr then
		return var8_upvr
	end
	if FFlagInExperienceMenuReorderFirstVariant_upvr then
		return LayoutReOrderIXP_upvr()
	end
	return tbl_2_upvr
end
local module = {}
local tbl = {}
if FFlagOverrideInExperienceMenuReorderFirstVariant_upvr then
	tbl = var8_upvr
elseif FFlagInExperienceMenuReorderFirstVariant_upvr then
	tbl = LayoutReOrderIXP_upvr()
else
	tbl = tbl_2_upvr
end
module.SETTINGS_MENU_LAYOUT_ORDER = tbl
return module