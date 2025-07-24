-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:57
-- Luau version 6, Types version 3
-- Time taken: 0.001577 seconds

local Parent = script.Parent
local getFIntUGCValidationHeadThreshold = require(Parent.flags.getFIntUGCValidationHeadThreshold)
local getFIntUGCValidationTorsoThresholdSide = require(Parent.flags.getFIntUGCValidationTorsoThresholdSide)
local getFIntUGCValidationTorsoThresholdTopBottom = require(Parent.flags.getFIntUGCValidationTorsoThresholdTopBottom)
local getFIntUGCValidationArmThresholdSide = require(Parent.flags.getFIntUGCValidationArmThresholdSide)
local getFIntUGCValidationArmThresholdTopBottom = require(Parent.flags.getFIntUGCValidationArmThresholdTopBottom)
local getFIntUGCValidationLegThresholdSide = require(Parent.flags.getFIntUGCValidationLegThresholdSide)
local getFIntUGCValidationLegThresholdTopBottom = require(Parent.flags.getFIntUGCValidationLegThresholdTopBottom)
local module = {
	CAMERA_ANGLES = {
		Front = "Front";
		Back = "Back";
		Left = "Left";
		Right = "Right";
		Top = "Top";
		Bottom = "Bottom";
	};
	ASSET_TRANSPARENCY_THRESHOLDS = {};
}
module.ASSET_TRANSPARENCY_THRESHOLDS[Enum.AssetType.DynamicHead] = {
	[module.CAMERA_ANGLES.Front] = getFIntUGCValidationHeadThreshold() / 100;
	[module.CAMERA_ANGLES.Back] = getFIntUGCValidationHeadThreshold() / 100;
	[module.CAMERA_ANGLES.Left] = getFIntUGCValidationHeadThreshold() / 100;
	[module.CAMERA_ANGLES.Right] = getFIntUGCValidationHeadThreshold() / 100;
	[module.CAMERA_ANGLES.Top] = getFIntUGCValidationHeadThreshold() / 100;
	[module.CAMERA_ANGLES.Bottom] = getFIntUGCValidationHeadThreshold() / 100;
}
module.ASSET_TRANSPARENCY_THRESHOLDS[Enum.AssetType.Torso] = {
	[module.CAMERA_ANGLES.Front] = require(Parent.flags.getFIntUGCValidationTorsoThresholdFront)() / 100;
	[module.CAMERA_ANGLES.Back] = require(Parent.flags.getFIntUGCValidationTorsoThresholdBack)() / 100;
	[module.CAMERA_ANGLES.Left] = getFIntUGCValidationTorsoThresholdSide() / 100;
	[module.CAMERA_ANGLES.Right] = getFIntUGCValidationTorsoThresholdSide() / 100;
	[module.CAMERA_ANGLES.Top] = getFIntUGCValidationTorsoThresholdTopBottom() / 100;
	[module.CAMERA_ANGLES.Bottom] = getFIntUGCValidationTorsoThresholdTopBottom() / 100;
}
local tbl = {
	[module.CAMERA_ANGLES.Front] = require(Parent.flags.getFIntUGCValidationArmThresholdFront)() / 100;
	[module.CAMERA_ANGLES.Back] = require(Parent.flags.getFIntUGCValidationArmThresholdBack)() / 100;
	[module.CAMERA_ANGLES.Left] = getFIntUGCValidationArmThresholdSide() / 100;
	[module.CAMERA_ANGLES.Right] = getFIntUGCValidationArmThresholdSide() / 100;
	[module.CAMERA_ANGLES.Top] = getFIntUGCValidationArmThresholdTopBottom() / 100;
	[module.CAMERA_ANGLES.Bottom] = getFIntUGCValidationArmThresholdTopBottom() / 100;
}
module.ASSET_TRANSPARENCY_THRESHOLDS[Enum.AssetType.LeftArm] = tbl
module.ASSET_TRANSPARENCY_THRESHOLDS[Enum.AssetType.RightArm] = tbl
local tbl_2 = {
	[module.CAMERA_ANGLES.Front] = require(Parent.flags.getFIntUGCValidationLegThresholdFront)() / 100;
	[module.CAMERA_ANGLES.Back] = require(Parent.flags.getFIntUGCValidationLegThresholdBack)() / 100;
	[module.CAMERA_ANGLES.Left] = getFIntUGCValidationLegThresholdSide() / 100;
	[module.CAMERA_ANGLES.Right] = getFIntUGCValidationLegThresholdSide() / 100;
	[module.CAMERA_ANGLES.Top] = getFIntUGCValidationLegThresholdTopBottom() / 100;
	[module.CAMERA_ANGLES.Bottom] = getFIntUGCValidationLegThresholdTopBottom() / 100;
}
module.ASSET_TRANSPARENCY_THRESHOLDS[Enum.AssetType.LeftLeg] = tbl_2
module.ASSET_TRANSPARENCY_THRESHOLDS[Enum.AssetType.RightLeg] = tbl_2
module.ASSET_TRANSPARENCY_RASTER_SIZE = 100
if require(Parent.flags.getFFlagUGCValidateMinBoundsVisibility)() then
	module.AREA_OF_INTEREST_TARGET_PIXELS = 600
	module.ASSET_TRANSPARENCY_MAX_RASTER_SIZE = 300
	module.DISTRIBUTION_ASPECT_CUTOFF = tonumber(require(Parent.flags.getFStringUGCValidationVisibilityDistributionAspect)())
	module.DISTRIBUTION_SLICE_MAX = require(Parent.flags.getFIntUGCValidationVisibilityDistributionSliceMax)() / 100
	module.DISTRIBUTION_SCORE_WEIGHT = require(Parent.flags.getFIntUGCValidationVisibilityDistributionWeight)() / 100
end
return module