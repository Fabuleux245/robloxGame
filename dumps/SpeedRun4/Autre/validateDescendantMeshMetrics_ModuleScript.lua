-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:07
-- Luau version 6, Types version 3
-- Time taken: 0.008093 seconds

local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local Constants_upvr = require(Parent.Constants)
local getEditableMeshFromContext_upvr = require(Parent.util.getEditableMeshFromContext)
local getEngineFeatureEngineUGCValidateBodyParts_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getEngineFeatureEngineEditableMeshAvatarPublish_upvr = require(Parent.flags.getEngineFeatureEngineEditableMeshAvatarPublish)
local getMeshIdForSkinningValidation_upvr = require(Parent.util.getMeshIdForSkinningValidation)
local function validateIsSkinned_upvr(arg1, arg2, arg3, arg4) -- Line 42, Named "validateIsSkinned"
	--[[ Upvalues[7]:
		[1]: Constants_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: getEngineFeatureEngineUGCValidateBodyParts_upvr (readonly)
		[4]: getEngineFeatureEngineEditableMeshAvatarPublish_upvr (readonly)
		[5]: getEditableMeshFromContext_upvr (readonly)
		[6]: UGCValidationService_upvr (readonly)
		[7]: getMeshIdForSkinningValidation_upvr (readonly)
	]]
	local attribute = arg1:GetAttribute(Constants_upvr.AlternateMeshIdAttributeName)
	if not arg1.HasSkinnedMesh and (attribute == nil or attribute == "" or not arg3) then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDescendantMeshMetrics_NoSkinningInfo, nil, arg4)
		return false, {`Missing skinning data for {arg1.Name}.MeshId. You need to skin your model.`}
	end
	if not getEngineFeatureEngineUGCValidateBodyParts_upvr() then
		return true
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 64
		--[[ Upvalues[7]:
			[1]: getEngineFeatureEngineEditableMeshAvatarPublish_upvr (copied, readonly)
			[2]: getEditableMeshFromContext_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg4 (readonly)
			[5]: UGCValidationService_upvr (copied, readonly)
			[6]: getMeshIdForSkinningValidation_upvr (copied, readonly)
			[7]: arg3 (readonly)
		]]
		if getEngineFeatureEngineEditableMeshAvatarPublish_upvr() then
			local getEditableMeshFromContext_upvr_result1_3, var5_result2 = getEditableMeshFromContext_upvr(arg1, "MeshId", arg4)
			if not getEditableMeshFromContext_upvr_result1_3 then
				error("Failed to retrieve MeshContent")
			end
			return UGCValidationService_upvr:ValidateSkinnedEditableMesh(var5_result2)
		end
		return UGCValidationService_upvr:ValidateSkinnedMesh(getMeshIdForSkinningValidation_upvr(arg1, arg3))
	end)
	if not pcall_result1 then
		if arg2 then
			error("Failed to retrieve mesh data to validate skinned mesh")
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDescendantMeshMetrics_FailedToLoadMesh, nil, arg4)
		return false, {"Failed to retrieve mesh data to validate skinned mesh"}
	end
	if not pcall_result2 then
		local formatted = `Detected mismatch between model and skinned data for {arg1.Name}. You need to re-skin your model to fix this issue.`
		if arg2 then
			error(formatted)
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDescendantMeshMetrics_HasSkinnedMeshMismatch, nil, arg4)
		return false, {formatted}
	end
	return true
end
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local getFFlagUGCValidateAllowFlexibleTriangleLimit_upvr = require(Parent.flags.getFFlagUGCValidateAllowFlexibleTriangleLimit)
local getFIntUGCValidateTriangleLimitTolerance_upvr = require(Parent.flags.getFIntUGCValidateTriangleLimitTolerance)
local function validateTotalAssetTriangles_upvr(arg1, arg2, arg3) -- Line 111, Named "validateTotalAssetTriangles"
	--[[ Upvalues[7]:
		[1]: Constants_upvr (readonly)
		[2]: getEditableMeshFromContext_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: pcallDeferred_upvr (readonly)
		[5]: UGCValidationService_upvr (readonly)
		[6]: getFFlagUGCValidateAllowFlexibleTriangleLimit_upvr (readonly)
		[7]: getFIntUGCValidateTriangleLimitTolerance_upvr (readonly)
	]]
	local assert_result1 = assert(Constants_upvr.ASSET_RENDER_MESH_MAX_TRIANGLES[arg2.Name])
	local calculateTotalAssetTriangles_result1, calculateTotalAssetTriangles_result2, calculateTotalAssetTriangles_result3 = (function() -- Line 119, Named "calculateTotalAssetTriangles"
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: getEditableMeshFromContext_upvr (copied, readonly)
			[3]: arg3 (readonly)
			[4]: Analytics_upvr (copied, readonly)
			[5]: pcallDeferred_upvr (copied, readonly)
			[6]: UGCValidationService_upvr (copied, readonly)
		]]
		local var27
		for _, v in arg1 do
			local instance = v.instance
			if instance.ClassName == "MeshPart" then
				if v.fieldName ~= "MeshId" then
					instance = false
				else
					instance = true
				end
				assert(instance)
				instance = v.instance
				local getEditableMeshFromContext_upvr_result1_2, getEditableMeshFromContext_upvr_result2_2_upvr = getEditableMeshFromContext_upvr(instance, v.fieldName, arg3)
				if not getEditableMeshFromContext_upvr_result1_2 then
					Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDescendantMeshMetrics_FailedToLoadMesh, nil, arg3)
					return false, string.format("Failed to load mesh for '%s'. Make sure mesh exists and try again.", v.instance.Name)
				end
				local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 142
					--[[ Upvalues[2]:
						[1]: UGCValidationService_upvr (copied, readonly)
						[2]: getEditableMeshFromContext_upvr_result2_2_upvr (readonly)
					]]
					return UGCValidationService_upvr:GetEditableMeshTriCount(getEditableMeshFromContext_upvr_result2_2_upvr)
				end, arg3)
				if not pcallDeferred_upvr_result1 then
					return false, string.format("Failed to execute check for triangle face information for mesh '%s'. Make sure mesh exists and try again.", v.instance.Name)
				end
				var27 += pcallDeferred_upvr_result2
			end
		end
		return true, nil, var27
	end)()
	if not calculateTotalAssetTriangles_result1 then
		if arg3.isServer then
			error(calculateTotalAssetTriangles_result2)
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDescendantMeshMetrics_FailedToCalculateTriangles, nil, arg3)
		return false, {calculateTotalAssetTriangles_result2}
	end
	local var38 = assert_result1
	if getFFlagUGCValidateAllowFlexibleTriangleLimit_upvr() then
		var38 = assert_result1 + (assert_result1) * (getFIntUGCValidateTriangleLimitTolerance_upvr() / 100)
	end
	if var38 < calculateTotalAssetTriangles_result3 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDescendantMeshMetrics_TooManyTriangles, nil, arg3)
		return false, {string.format("Mesh resolution of '%d' for '%s' is higher than max supported number of triangles '%d'. You need to retopologize your model to reduce the triangle count.", calculateTotalAssetTriangles_result3, arg2.Name, assert_result1)}
	end
	return true
end
local function validateMeshIsAtOrigin_upvr(arg1, arg2, arg3, arg4) -- Line 200, Named "validateMeshIsAtOrigin"
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if 0.001 < (arg2 + (arg3 - arg2) / 2).Magnitude then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDescendantMeshMetrics_TooFarFromOrigin, nil, arg4)
		return false, {string.format("Bounds for the mesh '%s' are not centered at the origin. The max allowed distance is '%f'", arg1.fullName, 0.001)}
	end
	return true
end
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local ParseContentIds_upvr = require(Parent.util.ParseContentIds)
local getMeshMinMax_upvr = require(Parent.util.getMeshMinMax)
local floatEquals_upvr = require(Parent.util.floatEquals)
local getExpectedPartSize_upvr = require(Parent.util.getExpectedPartSize)
local validateTotalSurfaceArea_upvr = require(Parent.validation.validateTotalSurfaceArea)
local getFFlagUGCValidateCoplanarTriTestBody_upvr = require(Parent.flags.getFFlagUGCValidateCoplanarTriTestBody)
local validateCoplanarIntersection_upvr = require(Parent.validation.validateCoplanarIntersection)
local validateMeshVertColors_upvr = require(Parent.validation.validateMeshVertColors)
local validateMeshTriangleArea_upvr = require(Parent.validation.validateMeshTriangleArea)
local getFFlagUGCValidateBodyPartsExtendedMeshTests_upvr = require(Parent.flags.getFFlagUGCValidateBodyPartsExtendedMeshTests)
local validateFullBodyCageDeletion_upvr = require(Parent.validation.validateFullBodyCageDeletion)
local validateCageUVs_upvr = require(Parent.validation.validateCageUVs)
local getFFlagUGCValidateCageUVTriangleArea_upvr = require(Parent.flags.getFFlagUGCValidateCageUVTriangleArea)
local validateCageUVTriangleArea_upvr = require(Parent.validation.validateCageUVTriangleArea)
local getFFlagUGCValidateUVValuesInReference_upvr = require(Parent.flags.getFFlagUGCValidateUVValuesInReference)
local validateCageUVValues_upvr = require(Parent.validation.validateCageUVValues)
local validateOverlappingVertices_upvr = require(Parent.validation.validateOverlappingVertices)
return function(arg1, arg2) -- Line 231, Named "validateDescendantMeshMetrics"
	--[[ Upvalues[24]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: ParseContentIds_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: validateTotalAssetTriangles_upvr (readonly)
		[5]: Analytics_upvr (readonly)
		[6]: getEditableMeshFromContext_upvr (readonly)
		[7]: getMeshMinMax_upvr (readonly)
		[8]: validateMeshIsAtOrigin_upvr (readonly)
		[9]: floatEquals_upvr (readonly)
		[10]: getExpectedPartSize_upvr (readonly)
		[11]: validateTotalSurfaceArea_upvr (readonly)
		[12]: getFFlagUGCValidateCoplanarTriTestBody_upvr (readonly)
		[13]: validateCoplanarIntersection_upvr (readonly)
		[14]: validateMeshVertColors_upvr (readonly)
		[15]: validateIsSkinned_upvr (readonly)
		[16]: validateMeshTriangleArea_upvr (readonly)
		[17]: getFFlagUGCValidateBodyPartsExtendedMeshTests_upvr (readonly)
		[18]: validateFullBodyCageDeletion_upvr (readonly)
		[19]: validateCageUVs_upvr (readonly)
		[20]: getFFlagUGCValidateCageUVTriangleArea_upvr (readonly)
		[21]: validateCageUVTriangleArea_upvr (readonly)
		[22]: getFFlagUGCValidateUVValuesInReference_upvr (readonly)
		[23]: validateCageUVValues_upvr (readonly)
		[24]: validateOverlappingVertices_upvr (readonly)
	]]
	local var63
	if arg2.assetTypeEnum == nil then
		var63 = false
	else
		var63 = true
	end
	assert(var63, "assetTypeEnum required in validationContext for validateDescendantMeshMetrics")
	var63 = arg2.allowEditableInstances
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	local any_parse_result1 = ParseContentIds_upvr.parse(arg1, Constants_upvr.MESH_CONTENT_ID_FIELDS, arg2)
	any_new_result1:updateReasons(validateTotalAssetTriangles_upvr(any_parse_result1, arg2.assetTypeEnum, arg2))
	Analytics_upvr.recordScriptTime("validateTotalAssetTriangles", tick(), arg2)
	for _, v_2 in any_parse_result1 do
		local tbl = {
			fullName = v_2.instance:GetFullName();
			fieldName = v_2.fieldName;
			contentId = v_2.instance[v_2.fieldName];
			context = v_2.instance.Name;
		}
		local getEditableMeshFromContext_upvr_result1, getEditableMeshFromContext_upvr_result2 = getEditableMeshFromContext_upvr(v_2.instance, v_2.fieldName, arg2)
		if not getEditableMeshFromContext_upvr_result1 then
			return false, {string.format("Failed to load mesh for '%s'. Make sure mesh exists and try again.", v_2.instance.Name)}
		end
		tbl.editableMesh = getEditableMeshFromContext_upvr_result2
		local var70
		if v_2.instance.ClassName == "MeshPart" then
			if v_2.fieldName ~= "MeshId" then
				var70 = false
			else
				var70 = true
			end
			assert(var70)
			var70 = tbl
			local var43_result1, var43_result2, var43_result3, var43_result4 = getMeshMinMax_upvr(var70, arg2)
			if not var43_result1 then
				any_new_result1:updateReasons(false, var43_result2)
			end
			if var43_result1 then
				any_new_result1:updateReasons(validateMeshIsAtOrigin_upvr(tbl, var43_result3, var43_result4, arg2))
				Analytics_upvr.recordScriptTime("validateMeshIsAtOrigin", tick(), arg2)
			end
			if var43_result3 and var43_result4 then
				local var75 = var43_result4 - var43_result3
				if floatEquals_upvr(var75.X, 0) or floatEquals_upvr(var75.Y, 0) or floatEquals_upvr(var75.Z, 0) then
					any_new_result1:updateReasons(false, {"Mesh size is zero for "..tbl.fullName..". You need to rescale your mesh."})
				else
					local var77 = getExpectedPartSize_upvr(v_2.instance, arg2) / var75
					any_new_result1:updateReasons(validateTotalSurfaceArea_upvr(tbl, var77, arg2))
					if getFFlagUGCValidateCoplanarTriTestBody_upvr() then
						any_new_result1:updateReasons(validateCoplanarIntersection_upvr(tbl, var77, arg2))
					end
				end
			end
			any_new_result1:updateReasons(validateMeshVertColors_upvr(tbl, true, arg2))
			any_new_result1:updateReasons(validateIsSkinned_upvr(v_2.instance, arg2.isServer, var63, arg2))
			Analytics_upvr.recordScriptTime("validateIsSkinned", tick(), arg2)
			any_new_result1:updateReasons(validateMeshTriangleArea_upvr(tbl, arg2))
		else
			var43_result2 = v_2.instance
			if var43_result2.ClassName == "WrapTarget" then
				if v_2.fieldName ~= "CageMeshId" then
				else
				end
				assert(true)
				tbl.fullName ..= "OuterCage"
				if getFFlagUGCValidateBodyPartsExtendedMeshTests_upvr() then
					any_new_result1:updateReasons(validateFullBodyCageDeletion_upvr(tbl, arg2))
				end
				any_new_result1:updateReasons(validateCageUVs_upvr(tbl, v_2.instance, arg2))
				if getFFlagUGCValidateCageUVTriangleArea_upvr() then
					any_new_result1:updateReasons(validateCageUVTriangleArea_upvr(tbl, arg2))
				end
				if getFFlagUGCValidateUVValuesInReference_upvr() then
					any_new_result1:updateReasons(validateCageUVValues_upvr(tbl, v_2.instance, arg2))
				end
				any_new_result1:updateReasons(validateMeshTriangleArea_upvr(tbl, arg2))
			end
		end
		if getFFlagUGCValidateBodyPartsExtendedMeshTests_upvr() then
			any_new_result1:updateReasons(validateOverlappingVertices_upvr(tbl, arg2))
		end
	end
	return any_new_result1:getFinalResults()
end