-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:59
-- Luau version 6, Types version 3
-- Time taken: 0.006054 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local getFFlagUGCValidateBBoxOrderingsInArms = require(Parent.flags.getFFlagUGCValidateBBoxOrderingsInArms)
local getFFlagUGCValidateBBoxOrderingsInLegs = require(Parent.flags.getFFlagUGCValidateBBoxOrderingsInLegs)
local tbl_upvr = {
	[Enum.AssetType.Torso] = require(Parent.flags.getFFlagUGCValidateBBoxOrderingsInTorso)();
	[Enum.AssetType.LeftArm] = getFFlagUGCValidateBBoxOrderingsInArms();
	[Enum.AssetType.RightArm] = getFFlagUGCValidateBBoxOrderingsInArms();
	[Enum.AssetType.RightLeg] = getFFlagUGCValidateBBoxOrderingsInLegs();
	[Enum.AssetType.LeftLeg] = getFFlagUGCValidateBBoxOrderingsInLegs();
}
local tbl_upvr_3 = {
	UpperTorso = true;
}
local tbl_upvr_2 = {
	[Enum.AssetType.LeftLeg] = true;
	[Enum.AssetType.RightLeg] = true;
}
local function reportFailure_lowerAboveUpper_upvr(arg1, arg2, arg3, arg4) -- Line 39, Named "reportFailure_lowerAboveUpper"
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateBodyAttPosRelativeToParent_PartAboveParent, nil, arg4)
	return false, {string.format("%s cannot extend above %s. You can adjust how the parts are put together by moving %s", arg2.Name, arg1.Name, arg3)}
end
local function reportFailure_upperBelowLower_upvr(arg1, arg2, arg3, arg4) -- Line 62, Named "reportFailure_upperBelowLower"
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateBodyAttPosRelativeToParent_ParentBelowPart, nil, arg4)
	return false, {string.format("%s cannot extend below %s. You can adjust how the parts are put together by moving %s", arg1.Name, arg2.Name, arg3)}
end
local module_upvr = {
	validateSinglePartBasedOnBBoxes = function(arg1, arg2, arg3, arg4, arg5) -- Line 85, Named "validateSinglePartBasedOnBBoxes"
		--[[ Upvalues[3]:
			[1]: FailureReasonsAccumulator_upvr (readonly)
			[2]: reportFailure_lowerAboveUpper_upvr (readonly)
			[3]: reportFailure_upperBelowLower_upvr (readonly)
		]]
		local any_new_result1_3 = FailureReasonsAccumulator_upvr.new()
		local boundsData_2 = arg3[arg1.Name].boundsData
		local boundsData = arg3[arg2.Name].boundsData
		if boundsData.maxOverall and boundsData_2.maxOverall and boundsData_2.maxOverall.Y < boundsData.maxOverall.Y then
			any_new_result1_3:updateReasons(reportFailure_lowerAboveUpper_upvr(arg1, arg2, arg4, arg5))
		end
		if boundsData_2.minOverall and boundsData.minOverall and boundsData_2.minOverall.Y < boundsData.minOverall.Y then
			any_new_result1_3:updateReasons(reportFailure_upperBelowLower_upvr(arg1, arg2, arg4, arg5))
		end
		return any_new_result1_3:getFinalResults()
	end;
}
local getExpectedPartSize_upvr = require(Parent.util.getExpectedPartSize)
function module_upvr.validateSinglePartBasedOnAttachmentYPos(arg1, arg2, arg3, arg4) -- Line 111
	--[[ Upvalues[4]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: getExpectedPartSize_upvr (readonly)
		[3]: reportFailure_lowerAboveUpper_upvr (readonly)
		[4]: reportFailure_upperBelowLower_upvr (readonly)
	]]
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	local SOME_2 = arg2:FindFirstChild(arg3)
	local SOME = arg1:FindFirstChild(arg3)
	assert(SOME_2)
	assert(SOME)
	local getExpectedPartSize_upvr_result1 = getExpectedPartSize_upvr(arg2, arg4)
	local getExpectedPartSize_upvr_result1_2 = getExpectedPartSize_upvr(arg1, arg4)
	if (getExpectedPartSize_upvr_result1_2 / 2 - SOME.Position).Y < (getExpectedPartSize_upvr_result1 / 2 - SOME_2.Position).Y then
		any_new_result1:updateReasons(reportFailure_lowerAboveUpper_upvr(arg1, arg2, arg3, arg4))
	end
	if (getExpectedPartSize_upvr_result1 / 2 + SOME_2.Position).Y < (getExpectedPartSize_upvr_result1_2 / 2 + SOME.Position).Y then
		any_new_result1:updateReasons(reportFailure_upperBelowLower_upvr(arg1, arg2, arg3, arg4))
	end
	return any_new_result1:getFinalResults()
end
local Constants_upvr = require(Parent.Constants)
local BoundsCalculator_upvr = require(Parent.util.BoundsCalculator)
local getFFlagUGCValidatePrimativeBBoxes_upvr = require(Parent.flags.getFFlagUGCValidatePrimativeBBoxes)
function module_upvr.runValidation(arg1, arg2) -- Line 146
	--[[ Upvalues[9]:
		[1]: Constants_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: BoundsCalculator_upvr (readonly)
		[4]: FailureReasonsAccumulator_upvr (readonly)
		[5]: tbl_upvr_3 (readonly)
		[6]: module_upvr (readonly)
		[7]: getFFlagUGCValidatePrimativeBBoxes_upvr (readonly)
		[8]: tbl_upvr_2 (readonly)
		[9]: Analytics_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assetTypeEnum = arg2.assetTypeEnum
	assert(assetTypeEnum)
	local var33 = Constants_upvr.ASSET_TYPE_INFO[assetTypeEnum]
	assert(var33)
	if not tbl_upvr[assetTypeEnum] then
		return true
	end
	local any_calculateIndividualAssetPartsData_result1, any_calculateIndividualAssetPartsData_result2, any_calculateIndividualAssetPartsData_result3 = BoundsCalculator_upvr.calculateIndividualAssetPartsData(arg1, arg2)
	if not any_calculateIndividualAssetPartsData_result1 then
		return false, any_calculateIndividualAssetPartsData_result2
	end
	assert(any_calculateIndividualAssetPartsData_result3)
	local any_new_result1_2 = FailureReasonsAccumulator_upvr.new()
	for i, v in pairs(var33.subParts) do
		local var41 = Constants_upvr.BODYPART_TO_PARENT[i]
		local var42
		if var41 ~= nil then
			var42 = i
			local SOME_4 = arg1:FindFirstChild(var42)
			local SOME_3 = arg1:FindFirstChild(var41)
			var42 = assert
			var42(SOME_4)
			var42 = assert
			var42(SOME_3)
			var42 = SOME_3
			if tbl_upvr_3[i] then
				var42 = SOME_4
				local var45 = SOME_3
			end
			local name = v.rigAttachmentToParent.name
			local any_validateSinglePartBasedOnBBoxes_result1, any_validateSinglePartBasedOnBBoxes_result2 = module_upvr.validateSinglePartBasedOnBBoxes(var42, var45, any_calculateIndividualAssetPartsData_result3, name, arg2)
			any_new_result1_2:updateReasons(any_validateSinglePartBasedOnBBoxes_result1, any_validateSinglePartBasedOnBBoxes_result2)
			if getFFlagUGCValidatePrimativeBBoxes_upvr() and any_validateSinglePartBasedOnBBoxes_result1 and tbl_upvr_2[assetTypeEnum] then
				any_new_result1_2:updateReasons(module_upvr.validateSinglePartBasedOnAttachmentYPos(var42, var45, name, arg2))
			end
		end
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return any_new_result1_2:getFinalResults()
end
return module_upvr