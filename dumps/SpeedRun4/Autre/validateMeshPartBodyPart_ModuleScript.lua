-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:24
-- Luau version 6, Types version 3
-- Time taken: 0.005994 seconds

local Parent = script.Parent.Parent
local validateWithSchema_upvr = require(Parent.util.validateWithSchema)
local Analytics_upvr = require(Parent.Analytics)
local getFFlagDebugUGCDisableSurfaceAppearanceTests_upvr = require(Parent.flags.getFFlagDebugUGCDisableSurfaceAppearanceTests)
local validateSurfaceAppearances_upvr = require(Parent.validation.validateSurfaceAppearances)
local validateDependencies_upvr = require(Parent.validation.validateDependencies)
local resetPhysicsData_upvr = require(Parent.util.resetPhysicsData)
local getFFlagUGCValidateMeshMin_upvr = require(Parent.flags.getFFlagUGCValidateMeshMin)
local ValidateBodyBlockingTests_upvr = require(Parent.util.ValidateBodyBlockingTests)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local validateBodyPartMeshBounds_upvr = require(Parent.validation.validateBodyPartMeshBounds)
local getEngineFeatureUGCValidateBodyPartCageMeshDistance_upvr = require(Parent.flags.getEngineFeatureUGCValidateBodyPartCageMeshDistance)
local ValidateAssetBodyPartCages_upvr = require(Parent.validation.ValidateAssetBodyPartCages)
local validateBodyPartChildAttachmentBounds_upvr = require(Parent.validation.validateBodyPartChildAttachmentBounds)
local getFFlagUGCValidateIndividualPartBBoxes_upvr = require(Parent.flags.getFFlagUGCValidateIndividualPartBBoxes)
local validateBodyPartExtentsRelativeToParent_upvr = require(Parent.validation.validateBodyPartExtentsRelativeToParent)
local getFFlagRefactorBodyAttachmentOrientationsCheck_upvr = require(Parent.flags.getFFlagRefactorBodyAttachmentOrientationsCheck)
local validateBodyPartChildAttachmentOrientations_upvr = require(Parent.validation.validateBodyPartChildAttachmentOrientations)
local validatePose_upvr = require(Parent.validation.validatePose)
local validateAssetBounds_upvr = require(Parent.validation.validateAssetBounds)
local getFFlagUGCValidateBoundsManipulation_upvr = require(Parent.flags.getFFlagUGCValidateBoundsManipulation)
local validateAccurateBoundingBox_upvr = require(Parent.validation.validateAccurateBoundingBox)
local validateDescendantMeshMetrics_upvr = require(Parent.validation.validateDescendantMeshMetrics)
local validateDescendantTextureMetrics_upvr = require(Parent.validation.validateDescendantTextureMetrics)
local validateHSR_upvr = require(Parent.validation.validateHSR)
local getFFlagRefactorValidateAssetTransparency_upvr = require(Parent.flags.getFFlagRefactorValidateAssetTransparency)
local validateAssetTransparency_upvr = require(Parent.validation.validateAssetTransparency)
local DEPRECATED_validateAssetTransparency_upvr = require(Parent.validation.DEPRECATED_validateAssetTransparency)
local validateMaterials_upvr = require(Parent.validation.validateMaterials)
local validatePropertyRequirements_upvr = require(Parent.validation.validatePropertyRequirements)
local getFFlagUGCValidateBodyPartsCollisionFidelity_upvr = require(Parent.flags.getFFlagUGCValidateBodyPartsCollisionFidelity)
local validateBodyPartCollisionFidelity_upvr = require(Parent.validation.validateBodyPartCollisionFidelity)
local validateTags_upvr = require(Parent.validation.validateTags)
local validateAttributes_upvr = require(Parent.validation.validateAttributes)
local getFFlagUGCValidateBodyPartsModeration_upvr = require(Parent.flags.getFFlagUGCValidateBodyPartsModeration)
local validateModeration_upvr = require(Parent.validation.validateModeration)
return function(arg1, arg2, arg3) -- Line 49, Named "validateMeshPartBodyPart"
	--[[ Upvalues[35]:
		[1]: validateWithSchema_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: getFFlagDebugUGCDisableSurfaceAppearanceTests_upvr (readonly)
		[4]: validateSurfaceAppearances_upvr (readonly)
		[5]: validateDependencies_upvr (readonly)
		[6]: resetPhysicsData_upvr (readonly)
		[7]: getFFlagUGCValidateMeshMin_upvr (readonly)
		[8]: ValidateBodyBlockingTests_upvr (readonly)
		[9]: FailureReasonsAccumulator_upvr (readonly)
		[10]: validateBodyPartMeshBounds_upvr (readonly)
		[11]: getEngineFeatureUGCValidateBodyPartCageMeshDistance_upvr (readonly)
		[12]: ValidateAssetBodyPartCages_upvr (readonly)
		[13]: validateBodyPartChildAttachmentBounds_upvr (readonly)
		[14]: getFFlagUGCValidateIndividualPartBBoxes_upvr (readonly)
		[15]: validateBodyPartExtentsRelativeToParent_upvr (readonly)
		[16]: getFFlagRefactorBodyAttachmentOrientationsCheck_upvr (readonly)
		[17]: validateBodyPartChildAttachmentOrientations_upvr (readonly)
		[18]: validatePose_upvr (readonly)
		[19]: validateAssetBounds_upvr (readonly)
		[20]: getFFlagUGCValidateBoundsManipulation_upvr (readonly)
		[21]: validateAccurateBoundingBox_upvr (readonly)
		[22]: validateDescendantMeshMetrics_upvr (readonly)
		[23]: validateDescendantTextureMetrics_upvr (readonly)
		[24]: validateHSR_upvr (readonly)
		[25]: getFFlagRefactorValidateAssetTransparency_upvr (readonly)
		[26]: validateAssetTransparency_upvr (readonly)
		[27]: DEPRECATED_validateAssetTransparency_upvr (readonly)
		[28]: validateMaterials_upvr (readonly)
		[29]: validatePropertyRequirements_upvr (readonly)
		[30]: getFFlagUGCValidateBodyPartsCollisionFidelity_upvr (readonly)
		[31]: validateBodyPartCollisionFidelity_upvr (readonly)
		[32]: validateTags_upvr (readonly)
		[33]: validateAttributes_upvr (readonly)
		[34]: getFFlagUGCValidateBodyPartsModeration_upvr (readonly)
		[35]: validateModeration_upvr (readonly)
	]]
	local var52
	if arg3.bypassFlags then
		var52 = arg3.bypassFlags.skipSnapshot
	else
		var52 = false
	end
	local var2_result1 = validateWithSchema_upvr(arg2, arg1, arg3)
	if not var2_result1.success then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshPartBodyPart_ValidateWithSchema, nil, arg3)
		return false, {string.format("Body part '%s' does not follow R15 schema. The specific issues are: ", arg1.Name), var2_result1.message}
	end
	if not getFFlagDebugUGCDisableSurfaceAppearanceTests_upvr() then
		local validateSurfaceAppearances_upvr_result1_2, validateSurfaceAppearances_upvr_result2_2 = validateSurfaceAppearances_upvr(arg1, arg3)
		if not validateSurfaceAppearances_upvr_result1_2 then
			return validateSurfaceAppearances_upvr_result1_2, validateSurfaceAppearances_upvr_result2_2
		end
	end
	local var6_result1_2, var6_result2 = validateDependencies_upvr(arg1, arg3)
	if not var6_result1_2 then
		return var6_result1_2, var6_result2
	end
	local tbl = {}
	tbl[1] = arg1
	local var7_result1, var7_result2_2 = resetPhysicsData_upvr(tbl, arg3)
	if not var7_result1 then
		return false, {var7_result2_2}
	end
	if getFFlagUGCValidateMeshMin_upvr() then
		local any_validate_result1, any_validate_result2_2 = ValidateBodyBlockingTests_upvr.validate(arg1, arg3)
		if not any_validate_result1 then
			return false, any_validate_result2_2
		end
	end
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	any_new_result1:updateReasons(validateBodyPartMeshBounds_upvr(arg1, arg3))
	if getEngineFeatureUGCValidateBodyPartCageMeshDistance_upvr() then
		any_new_result1:updateReasons(ValidateAssetBodyPartCages_upvr.validateSingleBodyPart(arg1, arg3))
	end
	any_new_result1:updateReasons(validateBodyPartChildAttachmentBounds_upvr(arg1, arg3))
	if getFFlagUGCValidateIndividualPartBBoxes_upvr() then
		any_new_result1:updateReasons(validateBodyPartExtentsRelativeToParent_upvr.runValidation(arg1, arg3))
	end
	if getFFlagRefactorBodyAttachmentOrientationsCheck_upvr() then
		any_new_result1:updateReasons(validateBodyPartChildAttachmentOrientations_upvr.runValidation(arg1, arg3))
	end
	any_new_result1:updateReasons(validatePose_upvr(arg1, arg3))
	any_new_result1:updateReasons(validateAssetBounds_upvr(nil, arg1, arg3))
	if getFFlagUGCValidateBoundsManipulation_upvr() then
		any_new_result1:updateReasons(validateAccurateBoundingBox_upvr(arg1, arg3))
	end
	any_new_result1:updateReasons(validateDescendantMeshMetrics_upvr(arg1, arg3))
	any_new_result1:updateReasons(validateDescendantTextureMetrics_upvr(arg1, arg3))
	any_new_result1:updateReasons(validateHSR_upvr(arg1, arg3))
	if getFFlagRefactorValidateAssetTransparency_upvr() then
		any_new_result1:updateReasons(validateAssetTransparency_upvr(arg1, arg3))
		Analytics_upvr.recordScriptTime("validateAssetTransparency", tick(), arg3)
	elseif not var52 then
		any_new_result1:updateReasons(DEPRECATED_validateAssetTransparency_upvr(arg1, arg3.assetTypeEnum, arg3.isServer, arg3))
		Analytics_upvr.recordScriptTime("validateAssetTransparency", tick(), arg3)
	end
	any_new_result1:updateReasons(validateMaterials_upvr(arg1, arg3))
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	any_new_result1:updateReasons(validatePropertyRequirements_upvr(arg1, arg3.assetTypeEnum, arg3))
	if getFFlagUGCValidateBodyPartsCollisionFidelity_upvr() then
		any_new_result1:updateReasons(validateBodyPartCollisionFidelity_upvr(arg1, arg3))
	end
	any_new_result1:updateReasons(validateTags_upvr(arg1, arg3))
	any_new_result1:updateReasons(validateAttributes_upvr(arg1, arg3))
	if getFFlagUGCValidateBodyPartsModeration_upvr() then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local var66 = not arg3.isServer
		if arg3.allowUnreviewedAssets then
			var66 = false
		end
		if var66 then
			any_new_result1:updateReasons(validateModeration_upvr(arg1, arg3.restrictedUserIds, arg3))
		end
	end
	return any_new_result1:getFinalResults()
end