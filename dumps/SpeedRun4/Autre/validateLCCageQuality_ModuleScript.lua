-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:17
-- Luau version 6, Types version 3
-- Time taken: 0.007679 seconds

local Parent = script.Parent.Parent
local getCageMeshInfos_upvr = require(Parent.validation.getCageMeshInfos)
local getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity)
local validateVerticesSimilarity_upvr = require(Parent.validation.validateVerticesSimilarity)
local getEngineFeatureEngineUGCValidateLCCagingRelevancy_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateLCCagingRelevancy)
local validateLCCagingRelevancy_upvr = require(Parent.validation.validateLCCagingRelevancy)
local validateRenderMeshInsideOuterCageMesh_upvr = require(Parent.validation.validateRenderMeshInsideOuterCageMesh)
local getEngineFeatureUGCValidateCageMeshDistance_upvr = require(Parent.flags.getEngineFeatureUGCValidateCageMeshDistance)
local validateCageMeshDistance_upvr = require(Parent.validation.validateCageMeshDistance)
local getEngineFeatureEngineUGCValidationCageUVDuplicates_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidationCageUVDuplicates)
local validateCageUVDuplicates_upvr = require(Parent.validation.validateCageUVDuplicates)
local getEngineFeatureUGCValidateExtraShoesTests_upvr = require(Parent.flags.getEngineFeatureUGCValidateExtraShoesTests)
local ValidateModifiedCageArea_upvr = require(Parent.validation.ValidateModifiedCageArea)
local getFStringLCCageQualityDocumentationLink_upvr = require(Parent.flags.getFStringLCCageQualityDocumentationLink)
local getFFlagUGCValidationHyperlinksInCageQuality_upvr = require(Parent.flags.getFFlagUGCValidationHyperlinksInCageQuality)
return function(arg1, arg2, arg3) -- Line 26, Named "validateLCCageQuality"
	--[[ Upvalues[14]:
		[1]: getCageMeshInfos_upvr (readonly)
		[2]: getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity_upvr (readonly)
		[3]: validateVerticesSimilarity_upvr (readonly)
		[4]: getEngineFeatureEngineUGCValidateLCCagingRelevancy_upvr (readonly)
		[5]: validateLCCagingRelevancy_upvr (readonly)
		[6]: validateRenderMeshInsideOuterCageMesh_upvr (readonly)
		[7]: getEngineFeatureUGCValidateCageMeshDistance_upvr (readonly)
		[8]: validateCageMeshDistance_upvr (readonly)
		[9]: getEngineFeatureEngineUGCValidationCageUVDuplicates_upvr (readonly)
		[10]: validateCageUVDuplicates_upvr (readonly)
		[11]: getEngineFeatureUGCValidateExtraShoesTests_upvr (readonly)
		[12]: ValidateModifiedCageArea_upvr (readonly)
		[13]: getFStringLCCageQualityDocumentationLink_upvr (readonly)
		[14]: getFFlagUGCValidationHyperlinksInCageQuality_upvr (readonly)
	]]
	local module = {}
	local class_WrapLayer = arg1:FindFirstChild("Handle"):FindFirstChildOfClass("WrapLayer")
	assert(class_WrapLayer, "calling validateInstanceTree() means we would not get this far if there was no WrapLayer")
	local getCageMeshInfos_upvr_result1, var2_result2, var2_result3 = getCageMeshInfos_upvr(arg1, arg3)
	local var67
	if not getCageMeshInfos_upvr_result1 or var2_result3 == nil then
		return false, var2_result2
	end
	local tbl_2 = {var2_result3[1], var2_result3[2]}
	local unpack_result1_2, unpack_result2_2 = unpack(tbl_2)
	if getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity_upvr() then
		for i, v in tbl_2 do
			local validateVerticesSimilarity_upvr_result1_2, validateVerticesSimilarity_upvr_result2 = validateVerticesSimilarity_upvr(v, arg3, Vector3.new(1, 1, 1), v.fullName)
			if not validateVerticesSimilarity_upvr_result1_2 and validateVerticesSimilarity_upvr_result2 ~= nil then
				var67 = false
				for _, v_2 in validateVerticesSimilarity_upvr_result2 do
					table.insert(module, v_2)
				end
			end
		end
	end
	if getEngineFeatureEngineUGCValidateLCCagingRelevancy_upvr() then
		i = arg2
		v = class_WrapLayer.ReferenceOrigin.Position
		local var6_result1, var6_result2_2 = validateLCCagingRelevancy_upvr(unpack_result1_2, unpack_result2_2, i, v, class_WrapLayer.CageOrigin.Position, arg3)
		if not var6_result1 and var6_result2_2 ~= nil then
			var67 = false
			i = nil
			v = nil
			for _, v_3 in var6_result2_2, i, v do
				table.insert(module, v_3)
			end
		end
	end
	local validateRenderMeshInsideOuterCageMesh_upvr_result1, var7_result2 = validateRenderMeshInsideOuterCageMesh_upvr(class_WrapLayer, unpack_result2_2, arg2, arg3)
	if not validateRenderMeshInsideOuterCageMesh_upvr_result1 then
		table.insert(module, table.concat(var7_result2, '\n'))
		var67 = false
	end
	if getEngineFeatureUGCValidateCageMeshDistance_upvr() then
		local var9_result1, validateCageMeshDistance_upvr_result2_2 = validateCageMeshDistance_upvr(unpack_result1_2, unpack_result2_2, arg2, class_WrapLayer.ReferenceOrigin, class_WrapLayer.CageOrigin, arg3)
		if not var9_result1 then
			table.insert(module, table.concat(validateCageMeshDistance_upvr_result2_2, '\n'))
			var67 = false
		end
	end
	if getEngineFeatureEngineUGCValidationCageUVDuplicates_upvr() then
		local var11_result1, var11_result2_2 = validateCageUVDuplicates_upvr(unpack_result1_2, unpack_result2_2, arg2, arg3)
		if not var11_result1 then
			table.insert(module, table.concat(var11_result2_2, '\n'))
			var67 = false
		end
	end
	if getEngineFeatureUGCValidateExtraShoesTests_upvr() then
		local any_validate_result1, any_validate_result2_2 = ValidateModifiedCageArea_upvr.validate(unpack_result1_2, class_WrapLayer.ReferenceOrigin, unpack_result2_2, class_WrapLayer.CageOrigin, arg2, arg3)
		if not any_validate_result1 then
			table.insert(module, table.concat(any_validate_result2_2, '\n'))
			var67 = false
		end
	end
	if not var67 then
		if getFStringLCCageQualityDocumentationLink_upvr() ~= "" then
			local var83
			if getFFlagUGCValidationHyperlinksInCageQuality_upvr() then
				var83 = string.format("[Caging best practices](%s)", getFStringLCCageQualityDocumentationLink_upvr())
			else
				var83 = string.format("To better understand caging requirements, please visit %s", getFStringLCCageQualityDocumentationLink_upvr())
			end
			table.insert(module, var83)
		end
		return false, module
	end
	return true
end