-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:18
-- Luau version 6, Types version 3
-- Time taken: 0.015037 seconds

local Parent = script.Parent.Parent
local RigidOrLayeredAllowed_upvr = require(Parent.util.RigidOrLayeredAllowed)
local Analytics_upvr = require(Parent.Analytics)
local Constants_upvr = require(Parent.Constants)
local validateSingleInstance_upvr = require(Parent.validation.validateSingleInstance)
local createAccessorySchema_upvr = require(Parent.util.createAccessorySchema)
local validateInstanceTree_upvr = require(Parent.validation.validateInstanceTree)
local getFFlagUGCValidationNameCheck_upvr = require(Parent.flags.getFFlagUGCValidationNameCheck)
local validateAccessoryName_upvr = require(Parent.validation.validateAccessoryName)
local getAttachment_upvr = require(Parent.util.getAttachment)
local getEditableMeshFromContext_upvr = require(Parent.util.getEditableMeshFromContext)
local getEditableImageFromContext_upvr = require(Parent.util.getEditableImageFromContext)
local validateMaterials_upvr = require(Parent.validation.validateMaterials)
local validatePropertyRequirements_upvr = require(Parent.validation.validatePropertyRequirements)
local validateTags_upvr = require(Parent.validation.validateTags)
local validateAttributes_upvr = require(Parent.validation.validateAttributes)
local validateTextureSize_upvr = require(Parent.validation.validateTextureSize)
local validateScaleType_upvr = require(Parent.validation.validateScaleType)
local getFFlagUGCValidateThumbnailConfiguration_upvr = require(Parent.flags.getFFlagUGCValidateThumbnailConfiguration)
local validateThumbnailConfiguration_upvr = require(Parent.validation.validateThumbnailConfiguration)
local validateModeration_upvr = require(Parent.validation.validateModeration)
local validateTotalSurfaceArea_upvr = require(Parent.validation.validateTotalSurfaceArea)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LegacyAccessoryCheckAvatarPartScaleType", false)
local getAccessoryScale_upvr = require(Parent.util.getAccessoryScale)
local validateMeshBounds_upvr = require(Parent.validation.validateMeshBounds)
local validateMeshTriangles_upvr = require(Parent.validation.validateMeshTriangles)
local getFFlagUGCValidateMeshVertColors_upvr = require(Parent.flags.getFFlagUGCValidateMeshVertColors)
local validateMeshVertColors_upvr = require(Parent.validation.validateMeshVertColors)
local validateCoplanarIntersection_upvr = require(Parent.validation.validateCoplanarIntersection)
local getEngineFeatureEngineUGCValidateRigidNonSkinned_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateRigidNonSkinned)
local validateRigidMeshNotSkinned_upvr = require(Parent.validation.validateRigidMeshNotSkinned)
return function(arg1) -- Line 43, Named "validateLegacyAccessory"
	--[[ Upvalues[30]:
		[1]: RigidOrLayeredAllowed_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: validateSingleInstance_upvr (readonly)
		[5]: createAccessorySchema_upvr (readonly)
		[6]: validateInstanceTree_upvr (readonly)
		[7]: getFFlagUGCValidationNameCheck_upvr (readonly)
		[8]: validateAccessoryName_upvr (readonly)
		[9]: getAttachment_upvr (readonly)
		[10]: getEditableMeshFromContext_upvr (readonly)
		[11]: getEditableImageFromContext_upvr (readonly)
		[12]: validateMaterials_upvr (readonly)
		[13]: validatePropertyRequirements_upvr (readonly)
		[14]: validateTags_upvr (readonly)
		[15]: validateAttributes_upvr (readonly)
		[16]: validateTextureSize_upvr (readonly)
		[17]: validateScaleType_upvr (readonly)
		[18]: getFFlagUGCValidateThumbnailConfiguration_upvr (readonly)
		[19]: validateThumbnailConfiguration_upvr (readonly)
		[20]: validateModeration_upvr (readonly)
		[21]: validateTotalSurfaceArea_upvr (readonly)
		[22]: game_DefineFastFlag_result1_upvr (readonly)
		[23]: getAccessoryScale_upvr (readonly)
		[24]: validateMeshBounds_upvr (readonly)
		[25]: validateMeshTriangles_upvr (readonly)
		[26]: getFFlagUGCValidateMeshVertColors_upvr (readonly)
		[27]: validateMeshVertColors_upvr (readonly)
		[28]: validateCoplanarIntersection_upvr (readonly)
		[29]: getEngineFeatureEngineUGCValidateRigidNonSkinned_upvr (readonly)
		[30]: validateRigidMeshNotSkinned_upvr (readonly)
	]]
	local instances = arg1.instances
	local assetTypeEnum = arg1.assetTypeEnum
	local isServer = arg1.isServer
	if not RigidOrLayeredAllowed_upvr.isRigidAccessoryAllowed(assetTypeEnum) then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory, nil, arg1)
		return false, {string.format("Asset type '%s' is not a rigid accessory category. It can only be used with layered clothing.", assetTypeEnum.Name)}
	end
	local var97 = Constants_upvr.ASSET_TYPE_INFO[assetTypeEnum]
	local var5_result1, var5_result2 = validateSingleInstance_upvr(instances, arg1)
	if not var5_result1 then
		return false, var5_result2
	end
	local _1 = instances[1]
	local validateInstanceTree_upvr_result1, validateInstanceTree_upvr_result2 = validateInstanceTree_upvr(createAccessorySchema_upvr(var97.attachmentNames), _1, arg1)
	if not validateInstanceTree_upvr_result1 then
		return false, validateInstanceTree_upvr_result2
	end
	if getFFlagUGCValidationNameCheck_upvr() and isServer then
		local var9_result1, validateAccessoryName_upvr_result2 = validateAccessoryName_upvr(_1, arg1)
		if not var9_result1 then
			return false, validateAccessoryName_upvr_result2
		end
	end
	local Handle = _1:FindFirstChild("Handle")
	local class_SpecialMesh_2 = Handle:FindFirstChildOfClass("SpecialMesh")
	local tbl_4 = {
		fullName = class_SpecialMesh_2:GetFullName();
		fieldName = "MeshId";
		contentId = class_SpecialMesh_2.MeshId;
		context = _1.Name;
	}
	local Scale = class_SpecialMesh_2.Scale
	local var10_result1_2 = getAttachment_upvr(Handle, var97.attachmentNames)
	local module_3 = {}
	if tbl_4.contentId ~= nil then
		if tbl_4.contentId == "" then
		else
		end
	end
	local getEditableMeshFromContext_upvr_result1_2, getEditableMeshFromContext_upvr_result2_2 = getEditableMeshFromContext_upvr(class_SpecialMesh_2, "MeshId", arg1)
	if not getEditableMeshFromContext_upvr_result1_2 then
		if not tbl_4.contentId then
			table.insert(module_3, {string.format("Missing meshId on legacy accessory '%s'. Make sure you are using a valid meshId and try again.\n", _1.Name)})
		else
			return false, {string.format("Failed to load mesh for legacy accessory '%s'. Make sure mesh exists and try again.", _1.Name)}
		end
	end
	tbl_4.editableMesh = getEditableMeshFromContext_upvr_result2_2
	local tbl_2 = {
		fullName = class_SpecialMesh_2:GetFullName();
		fieldName = "TextureId";
		contentId = class_SpecialMesh_2.TextureId;
	}
	local var12_result1, var12_result2_2 = getEditableImageFromContext_upvr(class_SpecialMesh_2, "TextureId", arg1)
	if not var12_result1 then
		return false, {string.format("Failed to load texture for legacy accessory '%s'. Make sure texture exists and try again.", _1.Name)}
	end
	tbl_2.editableImage = var12_result2_2
	local validateMaterials_upvr_result1, var13_result2 = validateMaterials_upvr(_1, arg1)
	if not validateMaterials_upvr_result1 then
		table.insert(module_3, table.concat(var13_result2, '\n'))
	end
	local validatePropertyRequirements_upvr_result1_2, validatePropertyRequirements_upvr_result2 = validatePropertyRequirements_upvr(_1, nil, arg1)
	if not validatePropertyRequirements_upvr_result1_2 then
		table.insert(module_3, table.concat(validatePropertyRequirements_upvr_result2, '\n'))
	end
	local var15_result1_2, var15_result2 = validateTags_upvr(_1, arg1)
	if not var15_result1_2 then
		table.insert(module_3, table.concat(var15_result2, '\n'))
	end
	local validateAttributes_upvr_result1, validateAttributes_upvr_result2 = validateAttributes_upvr(_1, arg1)
	if not validateAttributes_upvr_result1 then
		table.insert(module_3, table.concat(validateAttributes_upvr_result2, '\n'))
	end
	local var17_result1, validateTextureSize_upvr_result2 = validateTextureSize_upvr(tbl_2, nil, arg1)
	if not var17_result1 then
		table.insert(module_3, table.concat(validateTextureSize_upvr_result2, '\n'))
	end
	local AvatarPartScaleType = Handle:FindFirstChild("AvatarPartScaleType")
	local var130
	if AvatarPartScaleType and AvatarPartScaleType:IsA("StringValue") then
		local validateScaleType_upvr_result1_2, validateScaleType_upvr_result2_2 = validateScaleType_upvr(AvatarPartScaleType, arg1)
		if not validateScaleType_upvr_result1_2 then
			table.insert(module_3, table.concat(validateScaleType_upvr_result2_2, '\n'))
			var130 = false
		end
	end
	if getFFlagUGCValidateThumbnailConfiguration_upvr() then
		local var20_result1_2, var20_result2 = validateThumbnailConfiguration_upvr(_1, Handle, tbl_4, Scale, arg1)
		if not var20_result1_2 then
			table.insert(module_3, table.concat(var20_result2, '\n'))
			var130 = false
		end
	end
	local var135 = not isServer
	if arg1.allowUnreviewedAssets then
		var135 = false
	end
	if var135 then
		local validateModeration_upvr_result1, validateModeration_upvr_result2 = validateModeration_upvr(_1, {}, arg1)
		if not validateModeration_upvr_result1 then
			table.insert(module_3, table.concat(validateModeration_upvr_result2, '\n'))
			var130 = false
		end
	end
	if true then
		local var22_result1, validateTotalSurfaceArea_upvr_result2 = validateTotalSurfaceArea_upvr(tbl_4, Scale, arg1)
		if not var22_result1 then
			table.insert(module_3, table.concat(validateTotalSurfaceArea_upvr_result2, '\n'))
			var130 = false
		end
		local var140
		if game_DefineFastFlag_result1_upvr and Handle:FindFirstChild("AvatarPartScaleType") then
			local var24_result1 = getAccessoryScale_upvr(Handle, var10_result1_2)
			local tbl_7 = {}
			local var143 = var140.size / var24_result1
			tbl_7.size = var143
			if var140.offset then
				var143 = var140.offset / var24_result1
			else
				var143 = nil
			end
			tbl_7.offset = var143
			var140 = tbl_7
		end
		local validateMeshBounds_upvr_result1, validateMeshBounds_upvr_result2 = validateMeshBounds_upvr(Handle, var10_result1_2, tbl_4, Scale, var140, assetTypeEnum.Name, arg1)
		if not validateMeshBounds_upvr_result1 then
			table.insert(module_3, table.concat(validateMeshBounds_upvr_result2, '\n'))
			var130 = false
		end
		local validateMeshTriangles_upvr_result1, validateMeshTriangles_upvr_result2 = validateMeshTriangles_upvr(tbl_4, nil, arg1)
		if not validateMeshTriangles_upvr_result1 then
			table.insert(module_3, table.concat(validateMeshTriangles_upvr_result2, '\n'))
			var130 = false
		end
		if getFFlagUGCValidateMeshVertColors_upvr() then
			local var28_result1_2, var28_result2 = validateMeshVertColors_upvr(tbl_4, false, arg1)
			if not var28_result1_2 then
				table.insert(module_3, table.concat(var28_result2, '\n'))
				var130 = false
			end
		end
		local var29_result1, var29_result2_2 = validateCoplanarIntersection_upvr(tbl_4, Scale, arg1)
		if not var29_result1 then
			table.insert(module_3, table.concat(var29_result2_2, '\n'))
			var130 = false
		end
		if getEngineFeatureEngineUGCValidateRigidNonSkinned_upvr() then
			local validateRigidMeshNotSkinned_upvr_result1_2, var31_result2 = validateRigidMeshNotSkinned_upvr(tbl_4.contentId, arg1)
			if not validateRigidMeshNotSkinned_upvr_result1_2 then
				table.insert(module_3, table.concat(var31_result2, '\n'))
				var130 = false
			end
		end
	end
	return var130, module_3
end