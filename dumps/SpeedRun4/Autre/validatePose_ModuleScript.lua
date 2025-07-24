-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:29
-- Luau version 6, Types version 3
-- Time taken: 0.007501 seconds

local longstring1 = "Failed to calculate %s asset CFrame. Make sure the character is in I pose, A pose, or T pose, and the parts are not all in the same position"
local Parent = script.Parent.Parent
local AssetCalculator_upvr = require(Parent.util.AssetCalculator)
local canBeNormalized_upvr = require(Parent.util.canBeNormalized)
local getFFlagUGCValidateStraightenLimbsPose_upvr = require(Parent.flags.getFFlagUGCValidateStraightenLimbsPose)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local game_DefineFastInt_result1_upvr_10 = game:DefineFastInt("UGCValidatePoseArmMinDegFromXVectorOnXYPlane", -90)
local game_DefineFastInt_result1_upvr_9 = game:DefineFastInt("UGCValidatePoseArmMaxDegFromXVectorOnXYPlane", 30)
local game_DefineFastInt_result1_upvr_8 = game:DefineFastInt("UGCValidatePoseLegMinDegFromXVectorOnXYPlane", -93)
local game_DefineFastInt_result1_upvr_5 = game:DefineFastInt("UGCValidatePoseLegMaxDegFromXVectorOnXYPlane", -60)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("UGCValidatePartDegFromXYPlane", 30)
local game_DefineFastInt_result1_upvr_6 = game:DefineFastInt("UGCValidatePoseDegFromXYPlane", 20)
local function validateAngleFromXYPlane_upvr(arg1, arg2, arg3, arg4) -- Line 38, Named "validateAngleFromXYPlane"
	--[[ Upvalues[4]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: getFFlagUGCValidateStraightenLimbsPose_upvr (readonly)
		[3]: game_DefineFastInt_result1_upvr (readonly)
		[4]: game_DefineFastInt_result1_upvr_6 (readonly)
	]]
	local any_new_result1_5 = FailureReasonsAccumulator_upvr.new()
	local degrees_2 = math.deg(math.acos(arg2:Dot(arg3)))
	local var14
	if getFFlagUGCValidateStraightenLimbsPose_upvr() and arg4 then
		var14 = game_DefineFastInt_result1_upvr
	else
		var14 = game_DefineFastInt_result1_upvr_6
	end
	if var14 < degrees_2 then
		local tbl_2 = {}
		local var16
		if getFFlagUGCValidateStraightenLimbsPose_upvr() and arg4 then
			var16 = arg1.Name.." ("..arg4..')'
		else
			var16 = arg1.Name
		end
		tbl_2[1] = string.format("%s is at a %d degree angle from the X,Y plane, it must be within %d degrees. Make sure the character is in I pose, A pose, or T pose", var16, degrees_2, var14)
		any_new_result1_5:updateReasons(false, tbl_2)
	end
	return any_new_result1_5:getFinalResults()
end
local prettyPrintVector3_upvr = require(Parent.util.prettyPrintVector3)
local function validateAngleFromWorldXVectorOnXYPlane_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 65, Named "validateAngleFromWorldXVectorOnXYPlane"
	--[[ Upvalues[3]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: getFFlagUGCValidateStraightenLimbsPose_upvr (readonly)
		[3]: prettyPrintVector3_upvr (readonly)
	]]
	local degrees = math.deg(math.acos(arg2:Dot(arg3)))
	if 0 < arg2.Y then
	else
		degrees = -degrees
	end
	local any_new_result1_3 = FailureReasonsAccumulator_upvr.new()
	if degrees < arg4 or arg5 < degrees then
		local var20
		local tbl = {}
		if getFFlagUGCValidateStraightenLimbsPose_upvr() and arg6 then
			var20 = arg1.Name.." ("..arg6..')'
		else
			var20 = arg1.Name
		end
		tbl[1] = string.format("%s is at a %d angle of the [%s] vector on the X,Y plane, it must be between %d and %d degrees. Make sure the character is in I pose, A pose, or T pose", var20, degrees, prettyPrintVector3_upvr(arg3), arg4, arg5)
		any_new_result1_3:updateReasons(false, tbl)
	end
	return any_new_result1_3:getFinalResults()
end
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("UGCValidatePartArmMinDegFromXVectorOnXYPlane", -110)
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("UGCValidatePartArmMaxDegFromXVectorOnXYPlane", 40)
local game_DefineFastInt_result1_upvr_7 = game:DefineFastInt("UGCValidatePartLegMinDegFromXVectorOnXYPlane", -93)
local game_DefineFastInt_result1_upvr_4 = game:DefineFastInt("UGCValidatePartLegMaxDegFromXVectorOnXYPlane", -60)
local function validateInternal_upvr(arg1, arg2, arg3) -- Line 95, Named "validateInternal"
	--[[ Upvalues[12]:
		[1]: canBeNormalized_upvr (readonly)
		[2]: FailureReasonsAccumulator_upvr (readonly)
		[3]: validateAngleFromXYPlane_upvr (readonly)
		[4]: game_DefineFastInt_result1_upvr_2 (readonly)
		[5]: game_DefineFastInt_result1_upvr_3 (readonly)
		[6]: game_DefineFastInt_result1_upvr_7 (readonly)
		[7]: game_DefineFastInt_result1_upvr_4 (readonly)
		[8]: game_DefineFastInt_result1_upvr_10 (readonly)
		[9]: game_DefineFastInt_result1_upvr_9 (readonly)
		[10]: game_DefineFastInt_result1_upvr_8 (readonly)
		[11]: game_DefineFastInt_result1_upvr_5 (readonly)
		[12]: validateAngleFromWorldXVectorOnXYPlane_upvr (readonly)
	]]
	if not arg2 then
		local module_3 = {}
		if arg3 then
		else
		end
		module_3[1] = string.format(longstring1, arg1.Name)
		return false, module_3
	end
	local var27 = arg2.YVector.Unit - Vector3.new(0, 0, 1) * arg2.YVector.Unit:Dot(Vector3.new(0, 0, 1))
	local var28
	if not canBeNormalized_upvr(var27) then
		local module_2 = {}
		if arg3 then
			var28 = arg1.Name.." ("..arg3..')'
		else
			var28 = arg1.Name
		end
		module_2[1] = string.format("%s is pointing along the world Z vector. Make sure the character is in I pose, A pose, or T pose", var28)
		return false, module_2
	end
	local var30 = -var27.Unit
	local any_new_result1_2 = FailureReasonsAccumulator_upvr.new()
	any_new_result1_2:updateReasons(validateAngleFromXYPlane_upvr(arg1, var30, -arg2.YVector.Unit, arg3))
	if arg1 == Enum.AssetType.RightArm or arg1 == Enum.AssetType.RightLeg then
	else
	end
	if arg3 then
		if arg1 == Enum.AssetType.RightArm or arg1 == Enum.AssetType.LeftArm then
		else
		end
	elseif arg1 == Enum.AssetType.RightArm or arg1 == Enum.AssetType.LeftArm then
	else
	end
	any_new_result1_2:updateReasons(validateAngleFromWorldXVectorOnXYPlane_upvr(arg1, var30, Vector3.new(-1, -0, -0), game_DefineFastInt_result1_upvr_8, game_DefineFastInt_result1_upvr_5, arg3))
	return any_new_result1_2:getFinalResults()
end
local getPartNamesInHierarchyOrder_upvr = require(Parent.util.getPartNamesInHierarchyOrder)
local AssetTraversalUtils_upvr = require(Parent.util.AssetTraversalUtils)
local function validateAssetParts_upvr(arg1, arg2) -- Line 164, Named "validateAssetParts"
	--[[ Upvalues[5]:
		[1]: AssetCalculator_upvr (readonly)
		[2]: FailureReasonsAccumulator_upvr (readonly)
		[3]: getPartNamesInHierarchyOrder_upvr (readonly)
		[4]: AssetTraversalUtils_upvr (readonly)
		[5]: validateInternal_upvr (readonly)
	]]
	for _, v in getPartNamesInHierarchyOrder_upvr(arg1) do
		if AssetTraversalUtils_upvr.getAssetRigChild(arg1, v) then
			FailureReasonsAccumulator_upvr.new():updateReasons(validateInternal_upvr(arg1, AssetCalculator_upvr.calculatePartCFrameFromRigAttachments(arg1, arg2:FindFirstChild(v), AssetCalculator_upvr.calculateAllTransformsForAsset(arg1, arg2)[v]), v))
		end
	end
	return FailureReasonsAccumulator_upvr.new():getFinalResults()
end
return function(arg1, arg2) -- Line 182, Named "validatePose"
	--[[ Upvalues[12]:
		[1]: AssetCalculator_upvr (readonly)
		[2]: getFFlagUGCValidateStraightenLimbsPose_upvr (readonly)
		[3]: FailureReasonsAccumulator_upvr (readonly)
		[4]: validateInternal_upvr (readonly)
		[5]: validateAssetParts_upvr (readonly)
		[6]: canBeNormalized_upvr (readonly)
		[7]: validateAngleFromXYPlane_upvr (readonly)
		[8]: game_DefineFastInt_result1_upvr_10 (readonly)
		[9]: game_DefineFastInt_result1_upvr_9 (readonly)
		[10]: game_DefineFastInt_result1_upvr_8 (readonly)
		[11]: game_DefineFastInt_result1_upvr_5 (readonly)
		[12]: validateAngleFromWorldXVectorOnXYPlane_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assetTypeEnum = arg2.assetTypeEnum
	assert(assetTypeEnum)
	local var50
	if assetTypeEnum ~= Enum.AssetType.LeftArm then
		if assetTypeEnum ~= Enum.AssetType.RightArm and assetTypeEnum ~= Enum.AssetType.LeftLeg and assetTypeEnum ~= Enum.AssetType.RightLeg then
			return true
		end
	end
	local any_calculateAssetCFrame_result1 = AssetCalculator_upvr.calculateAssetCFrame(assetTypeEnum, arg1)
	if getFFlagUGCValidateStraightenLimbsPose_upvr() then
		local any_new_result1_6 = FailureReasonsAccumulator_upvr.new()
		var50 = assetTypeEnum
		any_new_result1_6:updateReasons(validateInternal_upvr(var50, any_calculateAssetCFrame_result1))
		var50 = assetTypeEnum
		any_new_result1_6:updateReasons(validateAssetParts_upvr(var50, arg1))
		return any_new_result1_6:getFinalResults()
	end
	if not any_calculateAssetCFrame_result1 then
		local module = {}
		var50 = assetTypeEnum.Name
		module[1] = string.format(longstring1, var50)
		return false, module
	end
	var50 = any_calculateAssetCFrame_result1.YVector.Unit:Dot(Vector3.new(0, 0, 1))
	local var54 = any_calculateAssetCFrame_result1.YVector.Unit - Vector3.new(0, 0, 1) * var50
	if not canBeNormalized_upvr(var54) then
		local module_5 = {}
		var50 = "%s is pointing along the world Z vector. Make sure the character is in I pose, A pose, or T pose"
		module_5[1] = string.format(var50, assetTypeEnum.Name)
		return false, module_5
	end
	local var56 = -var54.Unit
	var50 = any_calculateAssetCFrame_result1.YVector
	var50 = FailureReasonsAccumulator_upvr
	local any_new_result1_7 = var50.new()
	var50 = any_new_result1_7:updateReasons
	var50(validateAngleFromXYPlane_upvr(assetTypeEnum, var56, -var50.Unit))
	if assetTypeEnum == Enum.AssetType.RightArm or assetTypeEnum == Enum.AssetType.RightLeg then
		var50 = Vector3.new(1, 0, 0)
	else
		var50 = Vector3.new(-1, -0, -0)
	end
	local var58
	if assetTypeEnum == Enum.AssetType.RightArm or assetTypeEnum == Enum.AssetType.LeftArm then
		var58 = game_DefineFastInt_result1_upvr_10
	else
		var58 = game_DefineFastInt_result1_upvr_8
	end
	any_new_result1_7:updateReasons(validateAngleFromWorldXVectorOnXYPlane_upvr(assetTypeEnum, var56, var50, var58, game_DefineFastInt_result1_upvr_5))
	return any_new_result1_7:getFinalResults()
end