-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:23
-- Luau version 6, Types version 3
-- Time taken: 0.008973 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local validateSingleInstance_upvr = require(Parent.validation.validateSingleInstance)
local createMeshPartAccessorySchema_upvr = require(Parent.util.createMeshPartAccessorySchema)
local validateInstanceTree_upvr = require(Parent.validation.validateInstanceTree)
local getFFlagUGCValidationNameCheck_upvr = require(Parent.flags.getFFlagUGCValidationNameCheck)
local validateAccessoryName_upvr = require(Parent.validation.validateAccessoryName)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local getEditableMeshFromContext_upvr = require(Parent.util.getEditableMeshFromContext)
local Analytics_upvr = require(Parent.Analytics)
local getEditableImageFromContext_upvr = require(Parent.util.getEditableImageFromContext)
local getFFlagMeshPartAccessoryPBRSupport_upvr = require(Parent.flags.getFFlagMeshPartAccessoryPBRSupport)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local getMeshSize_upvr = require(Parent.util.getMeshSize)
local getExpectedPartSize_upvr = require(Parent.util.getExpectedPartSize)
local getAttachment_upvr = require(Parent.util.getAttachment)
local validateMaterials_upvr = require(Parent.validation.validateMaterials)
local validatePropertyRequirements_upvr = require(Parent.validation.validatePropertyRequirements)
local validateTags_upvr = require(Parent.validation.validateTags)
local validateAttributes_upvr = require(Parent.validation.validateAttributes)
local validateTextureSize_upvr = require(Parent.validation.validateTextureSize)
local getFFlagUGCValidateThumbnailConfiguration_upvr = require(Parent.flags.getFFlagUGCValidateThumbnailConfiguration)
local validateThumbnailConfiguration_upvr = require(Parent.validation.validateThumbnailConfiguration)
local validateModeration_upvr = require(Parent.validation.validateModeration)
local validateTotalSurfaceArea_upvr = require(Parent.validation.validateTotalSurfaceArea)
local validateMeshBounds_upvr = require(Parent.validation.validateMeshBounds)
local validateMeshTriangles_upvr = require(Parent.validation.validateMeshTriangles)
local getFFlagUGCValidateMeshVertColors_upvr = require(Parent.flags.getFFlagUGCValidateMeshVertColors)
local validateMeshVertColors_upvr = require(Parent.validation.validateMeshVertColors)
local validateCoplanarIntersection_upvr = require(Parent.validation.validateCoplanarIntersection)
local validateSurfaceAppearances_upvr = require(Parent.validation.validateSurfaceAppearances)
local validateSurfaceAppearanceTextureSize_upvr = require(Parent.validation.validateSurfaceAppearanceTextureSize)
local validateSurfaceAppearanceTransparency_upvr = require(Parent.validation.validateSurfaceAppearanceTransparency)
local getEngineFeatureEngineUGCValidateRigidNonSkinned_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateRigidNonSkinned)
local validateRigidMeshNotSkinned_upvr = require(Parent.validation.validateRigidMeshNotSkinned)
local validateScaleType_upvr = require(Parent.validation.validateScaleType)
return function(arg1) -- Line 45, Named "validateMeshPartAccessory"
	--[[ Upvalues[35]:
		[1]: Constants_upvr (readonly)
		[2]: validateSingleInstance_upvr (readonly)
		[3]: createMeshPartAccessorySchema_upvr (readonly)
		[4]: validateInstanceTree_upvr (readonly)
		[5]: getFFlagUGCValidationNameCheck_upvr (readonly)
		[6]: validateAccessoryName_upvr (readonly)
		[7]: FailureReasonsAccumulator_upvr (readonly)
		[8]: getEditableMeshFromContext_upvr (readonly)
		[9]: Analytics_upvr (readonly)
		[10]: getEditableImageFromContext_upvr (readonly)
		[11]: getFFlagMeshPartAccessoryPBRSupport_upvr (readonly)
		[12]: pcallDeferred_upvr (readonly)
		[13]: getMeshSize_upvr (readonly)
		[14]: getExpectedPartSize_upvr (readonly)
		[15]: getAttachment_upvr (readonly)
		[16]: validateMaterials_upvr (readonly)
		[17]: validatePropertyRequirements_upvr (readonly)
		[18]: validateTags_upvr (readonly)
		[19]: validateAttributes_upvr (readonly)
		[20]: validateTextureSize_upvr (readonly)
		[21]: getFFlagUGCValidateThumbnailConfiguration_upvr (readonly)
		[22]: validateThumbnailConfiguration_upvr (readonly)
		[23]: validateModeration_upvr (readonly)
		[24]: validateTotalSurfaceArea_upvr (readonly)
		[25]: validateMeshBounds_upvr (readonly)
		[26]: validateMeshTriangles_upvr (readonly)
		[27]: getFFlagUGCValidateMeshVertColors_upvr (readonly)
		[28]: validateMeshVertColors_upvr (readonly)
		[29]: validateCoplanarIntersection_upvr (readonly)
		[30]: validateSurfaceAppearances_upvr (readonly)
		[31]: validateSurfaceAppearanceTextureSize_upvr (readonly)
		[32]: validateSurfaceAppearanceTransparency_upvr (readonly)
		[33]: getEngineFeatureEngineUGCValidateRigidNonSkinned_upvr (readonly)
		[34]: validateRigidMeshNotSkinned_upvr (readonly)
		[35]: validateScaleType_upvr (readonly)
	]]
	local var66
	if arg1.assetTypeEnum == nil then
		var66 = false
	else
		var66 = true
	end
	assert(var66, "assetTypeEnum required in validationContext for validateMeshPartAccessory")
	local instances = arg1.instances
	var66 = arg1.assetTypeEnum
	local var68 = Constants_upvr.ASSET_TYPE_INFO[var66]
	local validateSingleInstance_upvr_result1_2, validateSingleInstance_upvr_result2 = validateSingleInstance_upvr(instances, arg1)
	if not validateSingleInstance_upvr_result1_2 then
		return false, validateSingleInstance_upvr_result2
	end
	local _1_2 = instances[1]
	local validateInstanceTree_upvr_result1, validateInstanceTree_upvr_result2 = validateInstanceTree_upvr(createMeshPartAccessorySchema_upvr(var68.attachmentNames), _1_2, arg1)
	if not validateInstanceTree_upvr_result1 then
		return false, validateInstanceTree_upvr_result2
	end
	if getFFlagUGCValidationNameCheck_upvr() and arg1.isServer then
		local var7_result1_2, validateAccessoryName_upvr_result2 = validateAccessoryName_upvr(_1_2, arg1)
		if not var7_result1_2 then
			return false, validateAccessoryName_upvr_result2
		end
	end
	local Handle = _1_2:FindFirstChild("Handle")
	local tbl_2_upvr = {
		fullName = Handle:GetFullName();
		fieldName = "MeshId";
		contentId = Handle.MeshId;
		context = _1_2.Name;
	}
	local any_new_result1_2 = FailureReasonsAccumulator_upvr.new()
	if tbl_2_upvr.contentId ~= nil then
		if tbl_2_upvr.contentId == "" then
		else
		end
	end
	local var9_result1, var9_result2_2 = getEditableMeshFromContext_upvr(Handle, "MeshId", arg1)
	if not var9_result1 then
		if not tbl_2_upvr.contentId then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshPartAccessory_NoMeshId, nil, arg1)
			any_new_result1_2:updateReasons(false, {string.format("Accessory MeshPart '%s' must contain a valid meshId. Make sure the mesh referred to by the meshId exists and try again.", Handle:GetFullName())})
		else
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshPartAccessory_FailedToLoadMesh, nil, arg1)
			return false, {string.format("Failed to load mesh for accessory '%s'. Make sure mesh exists and try again.", _1_2.Name)}
		end
	end
	tbl_2_upvr.editableMesh = var9_result2_2
	local tbl_4 = {
		fullName = Handle:GetFullName();
		fieldName = "TextureID";
		contentId = Handle.TextureID;
	}
	local getEditableImageFromContext_upvr_result1, getEditableImageFromContext_upvr_result2 = getEditableImageFromContext_upvr(Handle, "TextureID", arg1)
	if not getEditableImageFromContext_upvr_result1 and not getFFlagMeshPartAccessoryPBRSupport_upvr() then
		return false, {string.format("Failed to load texture for accessory '%s'. Make sure texture exists and try again.", _1_2.Name)}
	end
	tbl_4.editableImage = getEditableImageFromContext_upvr_result2
	local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 142
		--[[ Upvalues[2]:
			[1]: getMeshSize_upvr (copied, readonly)
			[2]: tbl_2_upvr (readonly)
		]]
		return getMeshSize_upvr(tbl_2_upvr)
	end, arg1)
	if not pcallDeferred_upvr_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshPartAccessory_FailedToLoadMesh, nil, arg1)
		return false, {string.format("Failed to load mesh for accessory '%s'. Make sure mesh exists and try again.", _1_2.Name)}
	end
	local var91 = getExpectedPartSize_upvr(Handle, arg1) / pcallDeferred_upvr_result2
	local getAttachment_upvr_result1 = getAttachment_upvr(Handle, var68.attachmentNames)
	assert(getAttachment_upvr_result1)
	any_new_result1_2:updateReasons(validateMaterials_upvr(_1_2, arg1))
	any_new_result1_2:updateReasons(validatePropertyRequirements_upvr(_1_2, nil, arg1))
	any_new_result1_2:updateReasons(validateTags_upvr(_1_2, arg1))
	any_new_result1_2:updateReasons(validateAttributes_upvr(_1_2, arg1))
	any_new_result1_2:updateReasons(validateTextureSize_upvr(tbl_4, getFFlagMeshPartAccessoryPBRSupport_upvr(), arg1))
	if getFFlagUGCValidateThumbnailConfiguration_upvr() then
		any_new_result1_2:updateReasons(validateThumbnailConfiguration_upvr(_1_2, Handle, tbl_2_upvr, var91, arg1))
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var93 = not arg1.isServer
	if arg1.allowUnreviewedAssets then
		var93 = false
	end
	if var93 then
		any_new_result1_2:updateReasons(validateModeration_upvr(_1_2, {}, arg1))
	end
	if true then
		any_new_result1_2:updateReasons(validateTotalSurfaceArea_upvr(tbl_2_upvr, var91, arg1))
		any_new_result1_2:updateReasons(validateMeshBounds_upvr(Handle, getAttachment_upvr_result1, tbl_2_upvr, var91, assert(var68.bounds[getAttachment_upvr_result1.Name], "Could not find bounds for "..getAttachment_upvr_result1.Name), var66.Name, arg1))
		any_new_result1_2:updateReasons(validateMeshTriangles_upvr(tbl_2_upvr, nil, arg1))
		if getFFlagUGCValidateMeshVertColors_upvr() then
			any_new_result1_2:updateReasons(validateMeshVertColors_upvr(tbl_2_upvr, false, arg1))
		end
		any_new_result1_2:updateReasons(validateCoplanarIntersection_upvr(tbl_2_upvr, var91, arg1))
	end
	if getFFlagMeshPartAccessoryPBRSupport_upvr() then
		any_new_result1_2:updateReasons(validateSurfaceAppearances_upvr(_1_2, arg1))
		any_new_result1_2:updateReasons(validateSurfaceAppearanceTextureSize_upvr(_1_2, arg1))
		any_new_result1_2:updateReasons(validateSurfaceAppearanceTransparency_upvr(_1_2, arg1))
	end
	if getEngineFeatureEngineUGCValidateRigidNonSkinned_upvr() and not arg1.allowEditableInstances then
		any_new_result1_2:updateReasons(validateRigidMeshNotSkinned_upvr(tbl_2_upvr.contentId, arg1))
	end
	local AvatarPartScaleType_2 = Handle:FindFirstChild("AvatarPartScaleType")
	if AvatarPartScaleType_2 and AvatarPartScaleType_2:IsA("StringValue") then
		any_new_result1_2:updateReasons(validateScaleType_upvr(AvatarPartScaleType_2, arg1))
	end
	return any_new_result1_2:getFinalResults()
end