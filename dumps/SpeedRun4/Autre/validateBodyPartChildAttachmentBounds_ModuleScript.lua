-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:57
-- Luau version 6, Types version 3
-- Time taken: 0.005725 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local BoundsDataUtils_upvr = require(Parent.util.BoundsDataUtils)
local getFFlagUGCValidatePreciseAttachmentErrorMessage_upvr = require(Parent.flags.getFFlagUGCValidatePreciseAttachmentErrorMessage)
local MeshSpaceUtils_upvr = require(Parent.util.MeshSpaceUtils)
local prettyPrintVector3_upvr = require(Parent.util.prettyPrintVector3)
local getFStringUGCValidationAttachmentErrorLink_upvr = require(Parent.flags.getFStringUGCValidationAttachmentErrorLink)
local function validateInMeshSpace_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 21, Named "validateInMeshSpace"
	--[[ Upvalues[6]:
		[1]: BoundsDataUtils_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: getFFlagUGCValidatePreciseAttachmentErrorMessage_upvr (readonly)
		[4]: MeshSpaceUtils_upvr (readonly)
		[5]: prettyPrintVector3_upvr (readonly)
		[6]: getFStringUGCValidationAttachmentErrorLink_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_calculateBoundsCenters_result1 = BoundsDataUtils_upvr.calculateBoundsCenters(arg5.boundsData)
	local any_calculateBoundsDimensions_result1 = BoundsDataUtils_upvr.calculateBoundsDimensions(arg5.boundsData)
	if not any_calculateBoundsCenters_result1 or not any_calculateBoundsDimensions_result1 then
		return false, {"Missing mesh data for "..arg2.Name}
	end
	for _, v in {'X', 'Y', 'Z'} do
		local var22
		if var22 < arg3.min[v] or arg3.max[v] < (((arg5.cframe * arg1.CFrame).Position - any_calculateBoundsCenters_result1) / (any_calculateBoundsDimensions_result1 / 2))[v] then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition, nil, arg4)
			if getFFlagUGCValidatePreciseAttachmentErrorMessage_upvr() then
				assert(any_calculateBoundsCenters_result1 and any_calculateBoundsDimensions_result1, "meshCenterOpt and meshDimensionsOpt must be defined")
				local any_calculateAcceptableBoundsLocalSpace_result1, any_calculateAcceptableBoundsLocalSpace_result2 = MeshSpaceUtils_upvr.calculateAcceptableBoundsLocalSpace(arg3, arg5, any_calculateBoundsDimensions_result1, any_calculateBoundsCenters_result1)
				local var25 = any_calculateAcceptableBoundsLocalSpace_result1
				local any_ToOrientation_result1_2, any_ToOrientation_result2, any_ToOrientation_result3 = var25.Rotation:ToOrientation()
			end
			local module = {}
			if getFFlagUGCValidatePreciseAttachmentErrorMessage_upvr() then
				local var30 = any_calculateAcceptableBoundsLocalSpace_result2
				if getFStringUGCValidationAttachmentErrorLink_upvr() ~= "" then
					var30 = ". See "..getFStringUGCValidationAttachmentErrorLink_upvr().." for further explanation"
				else
					var30 = ""
				end
				local _ = string.format("Attachment (%s) in %s is placed at position [%s] that is outside the valid range. The closest valid position is [%s]. (the attachment must be within the oriented bounding box - Position: [%s], Orientation: [%s], Size: [%s]%s)", arg1.Name, arg2.Name, prettyPrintVector3_upvr(arg1.CFrame.Position, 3), prettyPrintVector3_upvr(MeshSpaceUtils_upvr.clampAttachmentToBounds(arg1, arg5, arg3, 0.001).Position, 3), prettyPrintVector3_upvr(var25.Position, 3), prettyPrintVector3_upvr(Vector3.new(math.deg(any_ToOrientation_result1_2), math.deg(any_ToOrientation_result2), math.deg(any_ToOrientation_result3)), 3), prettyPrintVector3_upvr(var30, 3), var30)
			else
			end
			module[1] = string.format("Attachment (%s) in %s is placed at a position [%s] that is outside the valid range. You need to adjust the attachment position.", arg1.Name, arg2.Name, prettyPrintVector3_upvr(arg1.CFrame.Position))
			return false, module
		end
	end
	return true
end
local function checkAll_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 102, Named "checkAll"
	--[[ Upvalues[2]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: validateInMeshSpace_upvr (readonly)
	]]
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	local SOME_2 = arg1:FindFirstChild(arg3.rigAttachmentToParent.name)
	assert(SOME_2)
	any_new_result1:updateReasons(validateInMeshSpace_upvr(SOME_2, arg1, arg3.rigAttachmentToParent.bounds, arg4, arg5))
	for i_2, v_2 in pairs(arg3.otherAttachments) do
		local SOME_3 = arg1:FindFirstChild(i_2)
		assert(SOME_3)
		any_new_result1:updateReasons(validateInMeshSpace_upvr(SOME_3, arg1, v_2.bounds, arg4, arg5))
	end
	return any_new_result1:getFinalResults()
end
local floatEquals_upvr = require(Parent.util.floatEquals)
local function validateAttachmentRotation_upvr(arg1, arg2) -- Line 142, Named "validateAttachmentRotation"
	--[[ Upvalues[3]:
		[1]: Analytics_upvr (readonly)
		[2]: FailureReasonsAccumulator_upvr (readonly)
		[3]: floatEquals_upvr (readonly)
	]]
	assert(Analytics_upvr.ErrorType.validateBodyPartChildAttachmentBounds_AttachmentRotated)
	for _, v_3 in arg1:GetDescendants() do
		local var50
		if v_3.ClassName == "Attachment" then
			var50 = string.find(v_3.Name, "RigAttachment")
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			local any_ToOrientation_result1, any_ToOrientation_result2_2, any_ToOrientation_result3_2 = v_3.CFrame:ToOrientation()
			return floatEquals_upvr(any_ToOrientation_result1, 0)
		end
		if var50 and (not INLINED() or not floatEquals_upvr(any_ToOrientation_result2_2, 0) or not floatEquals_upvr(any_ToOrientation_result3_2, 0)) then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateBodyPartChildAttachmentBounds_AttachmentRotated, nil, arg2)
			FailureReasonsAccumulator_upvr.new():updateReasons(false, {string.format("Detected rotation in Attachment '%s'. You must reset all rotation values for this attachment to zero.", v_3:GetFullName())})
		end
	end
	return FailureReasonsAccumulator_upvr.new():getFinalResults()
end
local Constants_upvr = require(Parent.Constants)
local getFFlagRefactorBodyAttachmentOrientationsCheck_upvr = require(Parent.flags.getFFlagRefactorBodyAttachmentOrientationsCheck)
local BoundsCalculator_upvr = require(Parent.util.BoundsCalculator)
return function(arg1, arg2) -- Line 175, Named "validateBodyPartChildAttachmentBounds"
	--[[ Upvalues[7]:
		[1]: Constants_upvr (readonly)
		[2]: FailureReasonsAccumulator_upvr (readonly)
		[3]: getFFlagRefactorBodyAttachmentOrientationsCheck_upvr (readonly)
		[4]: validateAttachmentRotation_upvr (readonly)
		[5]: BoundsCalculator_upvr (readonly)
		[6]: checkAll_upvr (readonly)
		[7]: Analytics_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assetTypeEnum = arg2.assetTypeEnum
	local isServer = arg2.isServer
	assert(assetTypeEnum)
	local var68 = Constants_upvr.ASSET_TYPE_INFO[assetTypeEnum]
	assert(var68)
	local any_new_result1_2 = FailureReasonsAccumulator_upvr.new()
	if not getFFlagRefactorBodyAttachmentOrientationsCheck_upvr() then
		any_new_result1_2:updateReasons(validateAttachmentRotation_upvr(arg1, arg2))
	end
	local any_calculateIndividualAssetPartsData_result1, any_calculateIndividualAssetPartsData_result2, any_calculateIndividualAssetPartsData_result3 = BoundsCalculator_upvr.calculateIndividualAssetPartsData(arg1, arg2)
	if not any_calculateIndividualAssetPartsData_result1 then
		return any_calculateIndividualAssetPartsData_result1, any_calculateIndividualAssetPartsData_result2
	end
	if Enum.AssetType.DynamicHead == assetTypeEnum then
		any_new_result1_2:updateReasons(checkAll_upvr(arg1, isServer, var68.subParts.Head, arg2, any_calculateIndividualAssetPartsData_result3[arg1.Name]))
	else
		for i_4, v_4 in pairs(var68.subParts) do
			local SOME = arg1:FindFirstChild(i_4)
			assert(SOME)
			any_new_result1_2:updateReasons(checkAll_upvr(SOME, isServer, v_4, arg2, any_calculateIndividualAssetPartsData_result3[i_4]))
			local _
		end
	end
	i_4 = arg2
	Analytics_upvr.recordScriptTime(script.Name, tick(), i_4)
	return any_new_result1_2:getFinalResults()
end