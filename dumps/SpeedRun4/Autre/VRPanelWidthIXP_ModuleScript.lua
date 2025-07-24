-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:21
-- Luau version 6, Types version 3
-- Time taken: 0.002907 seconds

local Parent = script.Parent.Parent
local SharedFlags = require(Parent.SharedFlags)
game:DefineFastInt("VrAvatarPanelsSpreadMultiplierPercentageOverride", 96)
game:DefineFastInt("SystemBarHeightMultiplierPercentageOverride", 80)
game:DefineFastString("VrAvatarPanelsDistanceOffsetOverride", "-1.8")
local any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr = SharedFlags.GetFFlagVRPanelWidthIXPLocalOverrideEnabled()
local module = {
	name = "PlatformExcellence.QualityImprovement.App.VR.AppPanelWidth";
	layer = require(Parent.ExperimentLayers).AppUserLayers.PlatformExcellenceQualityImprovementVR;
	recordExposure = false;
	getDependentFlagsEnabled = function() -- Line 37, Named "getDependentFlagsEnabled"
		return true
	end;
}
local GetFFlagVRPanelWidthIXPEnabled_upvr = SharedFlags.GetFFlagVRPanelWidthIXPEnabled
function module.getEnabledFlag() -- Line 41
	--[[ Upvalues[1]:
		[1]: GetFFlagVRPanelWidthIXPEnabled_upvr (readonly)
	]]
	return GetFFlagVRPanelWidthIXPEnabled_upvr()
end
function module.getEnabledForAllFlag() -- Line 45
	return false
end
local tbl = {}
local any_GetFIntVrAppPanelWidthMultiplierPercentageOverride_result1_upvr = SharedFlags.GetFIntVrAppPanelWidthMultiplierPercentageOverride()
function tbl.VrAppPanelWidthMultiplier(arg1, arg2) -- Line 51
	--[[ Upvalues[2]:
		[1]: any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr (readonly)
		[2]: any_GetFIntVrAppPanelWidthMultiplierPercentageOverride_result1_upvr (readonly)
	]]
	if any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr then
		return any_GetFIntVrAppPanelWidthMultiplierPercentageOverride_result1_upvr / 100
	end
	local tonumber_result1_2 = tonumber(arg1.vr_app_panel_width_multiplier_percentage)
	if tonumber_result1_2 then
		return tonumber_result1_2 / 100
	end
	return nil
end
local any_GetFIntVrAppPanelCurvatureOverride_result1_upvr = SharedFlags.GetFIntVrAppPanelCurvatureOverride()
function tbl.VrAppPanelCurvature(arg1, arg2) -- Line 60
	--[[ Upvalues[2]:
		[1]: any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr (readonly)
		[2]: any_GetFIntVrAppPanelCurvatureOverride_result1_upvr (readonly)
	]]
	if any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr then
		return any_GetFIntVrAppPanelCurvatureOverride_result1_upvr
	end
	return tonumber(arg1.vr_app_panel_curvature) or nil
end
local game_GetFastInt_result1_upvr_2 = game:GetFastInt("VrAvatarPanelsSpreadMultiplierPercentageOverride")
function tbl.VrAvatarPanelsSpreadMultiplier(arg1, arg2) -- Line 67
	--[[ Upvalues[2]:
		[1]: any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr (readonly)
		[2]: game_GetFastInt_result1_upvr_2 (readonly)
	]]
	if any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr then
		return game_GetFastInt_result1_upvr_2 / 100
	end
	local tonumber_result1_3 = tonumber(arg1.vr_avatar_panels_spread_multiplier_percentage)
	if tonumber_result1_3 then
		return tonumber_result1_3 / 100
	end
	return nil
end
local game_GetFastString_result1_upvr = game:GetFastString("VrAvatarPanelsDistanceOffsetOverride")
function tbl.VrAvatarPanelsDistanceOffset(arg1, arg2) -- Line 77
	--[[ Upvalues[2]:
		[1]: any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr (readonly)
		[2]: game_GetFastString_result1_upvr (readonly)
	]]
	if any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr then
		return tonumber(game_GetFastString_result1_upvr)
	end
	return tonumber(arg1.vr_avatar_panels_distance_offset) or nil
end
local any_GetFStringVrSystemBarXOffSetOverride_result1_upvr = SharedFlags.GetFStringVrSystemBarXOffSetOverride()
function tbl.VrSystemBarXOffSet(arg1, arg2) -- Line 84
	--[[ Upvalues[2]:
		[1]: any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr (readonly)
		[2]: any_GetFStringVrSystemBarXOffSetOverride_result1_upvr (readonly)
	]]
	if any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr then
		return tonumber(any_GetFStringVrSystemBarXOffSetOverride_result1_upvr)
	end
	return tonumber(arg1.vr_system_bar_x_offset) or nil
end
local any_GetFStringVrSystemBarYOffSetOverride_result1_upvr = SharedFlags.GetFStringVrSystemBarYOffSetOverride()
function tbl.VrSystemBarYOffSet(arg1, arg2) -- Line 91
	--[[ Upvalues[2]:
		[1]: any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr (readonly)
		[2]: any_GetFStringVrSystemBarYOffSetOverride_result1_upvr (readonly)
	]]
	if any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr then
		return tonumber(any_GetFStringVrSystemBarYOffSetOverride_result1_upvr)
	end
	return tonumber(arg1.vr_system_bar_y_offset) or nil
end
local any_GetFStringVrSystemBarZOffSetOverride_result1_upvr = SharedFlags.GetFStringVrSystemBarZOffSetOverride()
function tbl.VrSystemBarZOffSet(arg1, arg2) -- Line 98
	--[[ Upvalues[2]:
		[1]: any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr (readonly)
		[2]: any_GetFStringVrSystemBarZOffSetOverride_result1_upvr (readonly)
	]]
	if any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr then
		return tonumber(any_GetFStringVrSystemBarZOffSetOverride_result1_upvr)
	end
	return tonumber(arg1.vr_system_bar_z_offset) or nil
end
local game_GetFastInt_result1_upvr = game:GetFastInt("SystemBarHeightMultiplierPercentageOverride")
function tbl.SystemBarHeightMultiplier(arg1, arg2) -- Line 105
	--[[ Upvalues[2]:
		[1]: any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr (readonly)
		[2]: game_GetFastInt_result1_upvr (readonly)
	]]
	if any_GetFFlagVRPanelWidthIXPLocalOverrideEnabled_result1_upvr then
		return game_GetFastInt_result1_upvr / 100
	end
	local tonumber_result1 = tonumber(arg1.system_bar_height_percentage)
	if tonumber_result1 then
		return tonumber_result1 / 100
	end
	return nil
end
module.variables = tbl
return require(Parent.IxpUtils).defineIXPTest(module)