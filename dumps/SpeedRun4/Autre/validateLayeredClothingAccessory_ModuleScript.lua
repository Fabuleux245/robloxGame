-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:14
-- Luau version 6, Types version 3
-- Time taken: 0.022199 seconds

local Parent = script.Parent.Parent
local RigidOrLayeredAllowed_upvr = require(Parent.util.RigidOrLayeredAllowed)
local Analytics_upvr = require(Parent.Analytics)
local Constants_upvr = require(Parent.Constants)
local validateSingleInstance_upvr = require(Parent.validation.validateSingleInstance)
local createLayeredClothingSchema_upvr = require(Parent.util.createLayeredClothingSchema)
local validateInstanceTree_upvr = require(Parent.validation.validateInstanceTree)
local getFFlagUGCValidationNameCheck_upvr = require(Parent.flags.getFFlagUGCValidationNameCheck)
local validateAccessoryName_upvr = require(Parent.validation.validateAccessoryName)
local getEditableMeshFromContext_upvr = require(Parent.util.getEditableMeshFromContext)
local getEditableImageFromContext_upvr = require(Parent.util.getEditableImageFromContext)
local getFFlagUGCValidationRefactorMeshScale_upvr = require(Parent.flags.getFFlagUGCValidationRefactorMeshScale)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local getMeshSize_upvr = require(Parent.util.getMeshSize)
local getExpectedPartSize_upvr = require(Parent.util.getExpectedPartSize)
local getFFlagUGCValidateLCHandleScale_upvr = require(Parent.flags.getFFlagUGCValidateLCHandleScale)
local getFIntUGCValidationLCHandleScaleOffsetMaximum_upvr = require(Parent.flags.getFIntUGCValidationLCHandleScaleOffsetMaximum)
local getAttachment_upvr = require(Parent.util.getAttachment)
local validateMaterials_upvr = require(Parent.validation.validateMaterials)
local validatePropertyRequirements_upvr = require(Parent.validation.validatePropertyRequirements)
local validateTags_upvr = require(Parent.validation.validateTags)
local validateAttributes_upvr = require(Parent.validation.validateAttributes)
local validateTextureSize_upvr = require(Parent.validation.validateTextureSize)
local validateScaleType_upvr = require(Parent.validation.validateScaleType)
local getFFlagUGCValidateThumbnailConfiguration_upvr = require(Parent.flags.getFFlagUGCValidateThumbnailConfiguration)
local validateThumbnailConfiguration_upvr = require(Parent.validation.validateThumbnailConfiguration)
local validateHSR_upvr = require(Parent.validation.validateHSR)
local validateModeration_upvr = require(Parent.validation.validateModeration)
local validateTotalSurfaceArea_upvr = require(Parent.validation.validateTotalSurfaceArea)
local validateMeshBounds_upvr = require(Parent.validation.validateMeshBounds)
local validateMeshTriangles_upvr = require(Parent.validation.validateMeshTriangles)
local getFFlagUGCValidateMeshVertColors_upvr = require(Parent.flags.getFFlagUGCValidateMeshVertColors)
local validateMeshVertColors_upvr = require(Parent.validation.validateMeshVertColors)
local validateCoplanarIntersection_upvr = require(Parent.validation.validateCoplanarIntersection)
local getEngineFeatureEngineUGCValidationMaxVerticesCollision_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidationMaxVerticesCollision)
local validateMaxCubeDensity_upvr = require(Parent.validation.validateMaxCubeDensity)
local getFFlagUGCValidateLCCagesQuality_upvr = require(Parent.flags.getFFlagUGCValidateLCCagesQuality)
local validateLCCageQuality_upvr = require(Parent.validation.validateLCCageQuality)
local getFFlagValidateDeformedLayeredClothingIsInBounds_upvr = require(Parent.flags.getFFlagValidateDeformedLayeredClothingIsInBounds)
local validateLayeredClothingInRenderBounds_upvr = require(Parent.validation.validateLayeredClothingInRenderBounds)
return function(arg1) -- Line 54, Named "validateLayeredClothingAccessory"
	--[[ Upvalues[39]:
		[1]: RigidOrLayeredAllowed_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: validateSingleInstance_upvr (readonly)
		[5]: createLayeredClothingSchema_upvr (readonly)
		[6]: validateInstanceTree_upvr (readonly)
		[7]: getFFlagUGCValidationNameCheck_upvr (readonly)
		[8]: validateAccessoryName_upvr (readonly)
		[9]: getEditableMeshFromContext_upvr (readonly)
		[10]: getEditableImageFromContext_upvr (readonly)
		[11]: getFFlagUGCValidationRefactorMeshScale_upvr (readonly)
		[12]: pcallDeferred_upvr (readonly)
		[13]: getMeshSize_upvr (readonly)
		[14]: getExpectedPartSize_upvr (readonly)
		[15]: getFFlagUGCValidateLCHandleScale_upvr (readonly)
		[16]: getFIntUGCValidationLCHandleScaleOffsetMaximum_upvr (readonly)
		[17]: getAttachment_upvr (readonly)
		[18]: validateMaterials_upvr (readonly)
		[19]: validatePropertyRequirements_upvr (readonly)
		[20]: validateTags_upvr (readonly)
		[21]: validateAttributes_upvr (readonly)
		[22]: validateTextureSize_upvr (readonly)
		[23]: validateScaleType_upvr (readonly)
		[24]: getFFlagUGCValidateThumbnailConfiguration_upvr (readonly)
		[25]: validateThumbnailConfiguration_upvr (readonly)
		[26]: validateHSR_upvr (readonly)
		[27]: validateModeration_upvr (readonly)
		[28]: validateTotalSurfaceArea_upvr (readonly)
		[29]: validateMeshBounds_upvr (readonly)
		[30]: validateMeshTriangles_upvr (readonly)
		[31]: getFFlagUGCValidateMeshVertColors_upvr (readonly)
		[32]: validateMeshVertColors_upvr (readonly)
		[33]: validateCoplanarIntersection_upvr (readonly)
		[34]: getEngineFeatureEngineUGCValidationMaxVerticesCollision_upvr (readonly)
		[35]: validateMaxCubeDensity_upvr (readonly)
		[36]: getFFlagUGCValidateLCCagesQuality_upvr (readonly)
		[37]: validateLCCageQuality_upvr (readonly)
		[38]: getFFlagValidateDeformedLayeredClothingIsInBounds_upvr (readonly)
		[39]: validateLayeredClothingInRenderBounds_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local instances_2 = arg1.instances
	local assetTypeEnum = arg1.assetTypeEnum
	local isServer = arg1.isServer
	if not RigidOrLayeredAllowed_upvr.isLayeredClothingAllowed(assetTypeEnum) then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing, nil, arg1)
		return false, {string.format("Asset type '%s' is not a layered clothing category. It can only be used with rigid accessories.", assetTypeEnum.Name)}
	end
	local var129 = Constants_upvr.ASSET_TYPE_INFO[assetTypeEnum]
	local validateSingleInstance_upvr_result1, var5_result2_2 = validateSingleInstance_upvr(instances_2, arg1)
	if not validateSingleInstance_upvr_result1 then
		return false, var5_result2_2
	end
	local _1_2 = instances_2[1]
	local validateInstanceTree_upvr_result1, var7_result2 = validateInstanceTree_upvr(createLayeredClothingSchema_upvr(var129.attachmentNames), _1_2, arg1)
	if not validateInstanceTree_upvr_result1 then
		return false, var7_result2
	end
	local var135
	if getFFlagUGCValidationNameCheck_upvr() and isServer then
		local validateAccessoryName_upvr_result1, validateAccessoryName_upvr_result2 = validateAccessoryName_upvr(_1_2, arg1)
		if not validateAccessoryName_upvr_result1 then
			return false, validateAccessoryName_upvr_result2
		end
	end
	local tbl_3 = {}
	local Handle_2 = _1_2:FindFirstChild("Handle")
	local tbl_4_upvr = {
		fullName = Handle_2:GetFullName();
		fieldName = "MeshId";
		contentId = Handle_2.MeshId;
		context = _1_2.Name;
	}
	if tbl_4_upvr.contentId ~= nil then
		if tbl_4_upvr.contentId == "" then
		else
		end
	end
	local var10_result1_2, getEditableMeshFromContext_upvr_result2_2 = getEditableMeshFromContext_upvr(Handle_2, "MeshId", arg1)
	if not var10_result1_2 then
		if not tbl_4_upvr.contentId then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLayeredClothingAccessory_NoMeshId, nil, arg1)
			local tbl_7 = {}
			var135 = _1_2.Name
			tbl_7[1] = string.format("Missing meshId on layered clothing accessory '%s'. Make sure you are using a valid meshId and try again.\n", var135)
			table.insert(tbl_3, tbl_7)
		else
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLayeredClothingAccessory_FailedToLoadMesh, nil, arg1)
			return false, {string.format("Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again.", _1_2.Name)}
		end
	end
	tbl_4_upvr.editableMesh = getEditableMeshFromContext_upvr_result2_2
	local TextureID_2 = Handle_2.TextureID
	local tbl_8 = {
		fullName = Handle_2:GetFullName();
		fieldName = "TextureID";
		contentId = TextureID_2;
	}
	if TextureID_2 ~= "" then
		var135 = Handle_2
		local var11_result1, var11_result2 = getEditableImageFromContext_upvr(var135, "TextureID", arg1)
		if not var11_result1 then
			var11_result2 = {}
			var11_result2[1] = string.format("Failed to load texture for layered clothing accessory '%s'. Make sure texture exists and try again.", _1_2.Name)
			return false, var11_result2
		end
		tbl_8.editableImage = var11_result2
	end
	var11_result2 = nil
	if getFFlagUGCValidationRefactorMeshScale_upvr() then
		var11_result2 = Handle_2.meshSize
	else
		local var13_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 175
			--[[ Upvalues[2]:
				[1]: getMeshSize_upvr (copied, readonly)
				[2]: tbl_4_upvr (readonly)
			]]
			return getMeshSize_upvr(tbl_4_upvr)
		end, arg1)
		var11_result2 = pcallDeferred_upvr_result2
		if not var13_result1 then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLayeredClothingAccessory_FailedToLoadMesh, nil, arg1)
			return false, {string.format("Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again.", _1_2.Name)}
		end
	end
	local var153 = getExpectedPartSize_upvr(Handle_2, arg1) / var11_result2
	if getFFlagUGCValidateLCHandleScale_upvr() and not var153:FuzzyEq(Vector3.new(1, 1, 1), getFIntUGCValidationLCHandleScaleOffsetMaximum_upvr() / 1000) then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLayeredClothingAccessory_HandleIsScaled, nil, arg1)
		table.insert(tbl_3, string.format("%s has been scaled, but mesh parts with wrap layers do not support scaling. You need to change the Size property to match the MeshSize property.", Handle_2.Name))
	end
	local getAttachment_upvr_result1 = getAttachment_upvr(Handle_2, var129.attachmentNames)
	local var19_result1, var19_result2 = validateMaterials_upvr(_1_2, arg1)
	if not var19_result1 then
		table.insert(tbl_3, table.concat(var19_result2, '\n'))
	end
	local var20_result1_2, var20_result2_2 = validatePropertyRequirements_upvr(_1_2, nil, arg1)
	if not var20_result1_2 then
		table.insert(tbl_3, table.concat(var20_result2_2, '\n'))
	end
	local var21_result1, validateTags_upvr_result2 = validateTags_upvr(_1_2, arg1)
	if not var21_result1 then
		table.insert(tbl_3, table.concat(validateTags_upvr_result2, '\n'))
	end
	local validateAttributes_upvr_result1, validateAttributes_upvr_result2_2 = validateAttributes_upvr(_1_2, arg1)
	if not validateAttributes_upvr_result1 then
		table.insert(tbl_3, table.concat(validateAttributes_upvr_result2_2, '\n'))
	end
	local validateTextureSize_upvr_result1_2, validateTextureSize_upvr_result2 = validateTextureSize_upvr(tbl_8, true, arg1)
	if not validateTextureSize_upvr_result1_2 then
		table.insert(tbl_3, table.concat(validateTextureSize_upvr_result2, '\n'))
	end
	local AvatarPartScaleType = Handle_2:FindFirstChild("AvatarPartScaleType")
	local var166
	if AvatarPartScaleType and AvatarPartScaleType:IsA("StringValue") then
		local var24_result1_2, var24_result2_2 = validateScaleType_upvr(AvatarPartScaleType, arg1)
		if not var24_result1_2 then
			table.insert(tbl_3, table.concat(var24_result2_2, '\n'))
			var166 = false
		end
	end
	if getFFlagUGCValidateThumbnailConfiguration_upvr() then
		local validateThumbnailConfiguration_upvr_result1, validateThumbnailConfiguration_upvr_result2 = validateThumbnailConfiguration_upvr(_1_2, Handle_2, tbl_4_upvr, var153, arg1)
		if not validateThumbnailConfiguration_upvr_result1 then
			table.insert(tbl_3, table.concat(validateThumbnailConfiguration_upvr_result2, '\n'))
			var166 = false
		end
	end
	local class_WrapLayer = Handle_2:FindFirstChildOfClass("WrapLayer")
	if class_WrapLayer == nil then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLayeredClothingAccessory_NoWrapLayer, nil, arg1)
		table.insert(tbl_3, string.format("Missing WrapLayer on layered clothing accessory %s. You need to create a child WrapLayer and try again.", _1_2.Name))
		var166 = false
	else
		local var27_result1_2, var27_result2 = validateHSR_upvr(class_WrapLayer, arg1)
		if not var27_result1_2 then
			table.insert(tbl_3, table.concat(var27_result2, '\n'))
			var166 = false
		end
	end
	class_WrapLayer = not isServer
	local var174 = class_WrapLayer
	if arg1.allowUnreviewedAssets then
		var174 = false
	end
	if var174 then
		local var28_result1, var28_result2_2 = validateModeration_upvr(_1_2, {}, arg1)
		if not var28_result1 then
			table.insert(tbl_3, table.concat(var28_result2_2, '\n'))
			var166 = false
		end
	end
	if true then
		local validateTotalSurfaceArea_upvr_result1, var29_result2_2 = validateTotalSurfaceArea_upvr(tbl_4_upvr, var153, arg1)
		if not validateTotalSurfaceArea_upvr_result1 then
			table.insert(tbl_3, table.concat(var29_result2_2, '\n'))
			var166 = false
		end
		local var30_result1, var30_result2 = validateMeshBounds_upvr(Handle_2, getAttachment_upvr_result1, tbl_4_upvr, var153, var129.bounds[getAttachment_upvr_result1.Name], assetTypeEnum.Name, arg1)
		if not var30_result1 then
			table.insert(tbl_3, table.concat(var30_result2, '\n'))
			var166 = false
		end
		local var31_result1_2, validateMeshTriangles_upvr_result2_2 = validateMeshTriangles_upvr(tbl_4_upvr, nil, arg1)
		if not var31_result1_2 then
			table.insert(tbl_3, table.concat(validateMeshTriangles_upvr_result2_2, '\n'))
			var166 = false
		end
		if getFFlagUGCValidateMeshVertColors_upvr() then
			local validateMeshVertColors_upvr_result1, validateMeshVertColors_upvr_result2 = validateMeshVertColors_upvr(tbl_4_upvr, false, arg1)
			if not validateMeshVertColors_upvr_result1 then
				table.insert(tbl_3, table.concat(validateMeshVertColors_upvr_result2, '\n'))
				var166 = false
			end
		end
		local validateCoplanarIntersection_upvr_result1, validateCoplanarIntersection_upvr_result2 = validateCoplanarIntersection_upvr(tbl_4_upvr, var153, arg1)
		if not validateCoplanarIntersection_upvr_result1 then
			table.insert(tbl_3, table.concat(validateCoplanarIntersection_upvr_result2, '\n'))
			var166 = false
		end
	end
	if getEngineFeatureEngineUGCValidationMaxVerticesCollision_upvr() then
		local var36_result1, validateMaxCubeDensity_upvr_result2 = validateMaxCubeDensity_upvr(tbl_4_upvr, arg1, var153)
		if not var36_result1 then
			table.insert(tbl_3, table.concat(validateMaxCubeDensity_upvr_result2, '\n'))
			var166 = false
		end
	end
	if getFFlagUGCValidateLCCagesQuality_upvr() then
		local var38_result1, var38_result2 = validateLCCageQuality_upvr(_1_2, tbl_4_upvr, arg1)
		if not var38_result1 then
			for _, v in var38_result2 do
				table.insert(tbl_3, v)
				local var191
			end
			var166 = false
		end
	end
	if getFFlagValidateDeformedLayeredClothingIsInBounds_upvr() then
		local var40_result1_2, var40_result2_2 = validateLayeredClothingInRenderBounds_upvr(_1_2, arg1)
		if not var40_result1_2 then
			table.insert(var191, table.concat(var40_result2_2, '\n'))
			var166 = false
		end
	end
	return var166, var191
end