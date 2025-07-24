-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:00
-- Luau version 6, Types version 3
-- Time taken: 0.004151 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local Constants_upvr = require(Parent.Constants)
local getEditableMeshFromContext_upvr = require(Parent.util.getEditableMeshFromContext)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local function DEPRECATED_getMeshInfoHelper_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 24, Named "DEPRECATED_getMeshInfoHelper"
	--[[ Upvalues[1]:
		[1]: getEditableMeshFromContext_upvr (readonly)
	]]
	local module = {
		fullName = arg1:GetFullName();
	}
	module.contentId = arg3
	module.fieldName = arg2
	module.context = arg5
	module.scale = arg4
	local getEditableMeshFromContext_upvr_result1_2, getEditableMeshFromContext_upvr_result2_2 = getEditableMeshFromContext_upvr(arg1, arg2, arg6)
	if not getEditableMeshFromContext_upvr_result1_2 then
		return false, module
	end
	module.editableMesh = getEditableMeshFromContext_upvr_result2_2
	return true, module
end
local function DEPRECATED_getMeshInfo_upvr(arg1, arg2, arg3) -- Line 51, Named "DEPRECATED_getMeshInfo"
	--[[ Upvalues[1]:
		[1]: DEPRECATED_getMeshInfoHelper_upvr (readonly)
	]]
	if arg1:IsA("WrapTarget") then
		return DEPRECATED_getMeshInfoHelper_upvr(arg1, "CageMeshId", arg1.CageMeshId, arg2, arg1.ClassName, arg3)
	end
	if arg1:IsA("MeshPart") then
		return DEPRECATED_getMeshInfoHelper_upvr(arg1, "MeshId", arg1.MeshId, arg2, arg1.Name, arg3)
	end
	return false
end
local getFFlagUGCValidationConsolidateGetMeshInfos_upvr = require(Parent.flags.getFFlagUGCValidationConsolidateGetMeshInfos)
local getMeshInfo_upvr = require(Parent.util.getMeshInfo)
local validateMeshComparison_upvr = require(Parent.validation.validateMeshComparison)
local function validateWrapTargetComparison_upvr(arg1, arg2, arg3) -- Line 79, Named "validateWrapTargetComparison"
	--[[ Upvalues[5]:
		[1]: getFFlagUGCValidationConsolidateGetMeshInfos_upvr (readonly)
		[2]: getMeshInfo_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: DEPRECATED_getMeshInfo_upvr (readonly)
		[5]: validateMeshComparison_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var12
	local var13
	local var14
	if getFFlagUGCValidationConsolidateGetMeshInfos_upvr() then
		local getMeshInfo_upvr_result1, getMeshInfo_upvr_result2, getMeshInfo_upvr_result3_2 = getMeshInfo_upvr(arg2, Constants_upvr.MESH_CONTENT_TYPE.RENDER_MESH, arg3)
		var12 = getMeshInfo_upvr_result1
		var14 = getMeshInfo_upvr_result2
		var13 = getMeshInfo_upvr_result3_2
	else
		local DEPRECATED_getMeshInfo_result1, DEPRECATED_getMeshInfo_result2 = DEPRECATED_getMeshInfo_upvr(arg2, arg1, arg3)
		var12 = DEPRECATED_getMeshInfo_result1
		var13 = DEPRECATED_getMeshInfo_result2
	end
	if not var12 then
		local var20 = false
		if getFFlagUGCValidationConsolidateGetMeshInfos_upvr() then
			return var20, var14
		end
		return var20, {"Failed to load mesh data"}
	end
	local class_WrapTarget = arg2:FindFirstChildWhichIsA("WrapTarget")
	assert(class_WrapTarget, "Missing WrapTarget child for "..arg2.Name)
	local var23
	local var24
	if getFFlagUGCValidationConsolidateGetMeshInfos_upvr() then
		local getMeshInfo_upvr_result1_2, getMeshInfo_upvr_result2_2, getMeshInfo_upvr_result3 = getMeshInfo_upvr(class_WrapTarget, Constants_upvr.MESH_CONTENT_TYPE.OUTER_CAGE, arg3)
		var23 = getMeshInfo_upvr_result1_2
		var24 = getMeshInfo_upvr_result3
	else
		local DEPRECATED_getMeshInfo_result1_2, DEPRECATED_getMeshInfo_result2_2 = DEPRECATED_getMeshInfo_upvr(class_WrapTarget, arg1, arg3)
		var23 = DEPRECATED_getMeshInfo_result1_2
		var24 = DEPRECATED_getMeshInfo_result2_2
	end
	if not var23 then
		local var30 = false
		if getFFlagUGCValidationConsolidateGetMeshInfos_upvr() then
			return var30, getMeshInfo_upvr_result2_2
		end
		return var30, {"Failed to load mesh data"}
	end
	if getFFlagUGCValidationConsolidateGetMeshInfos_upvr() then
		var13.scale = arg1
		var24.scale = arg1
	end
	return validateMeshComparison_upvr(var13, var24, Constants_upvr.RenderVsWrapMeshMaxDiff, arg3)
end
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local getMeshSize_upvr = require(Parent.util.getMeshSize)
local function calculateMeshSize_upvr(arg1, arg2) -- Line 125, Named "calculateMeshSize"
	--[[ Upvalues[4]:
		[1]: getEditableMeshFromContext_upvr (readonly)
		[2]: pcallDeferred_upvr (readonly)
		[3]: getMeshSize_upvr (readonly)
		[4]: Analytics_upvr (readonly)
	]]
	local module_2_upvr = {
		fullName = arg1:GetFullName();
		fieldName = "MeshId";
		contentId = arg1.MeshId;
		context = arg1.Name;
	}
	local getEditableMeshFromContext_upvr_result1, getEditableMeshFromContext_upvr_result2 = getEditableMeshFromContext_upvr(arg1, "MeshId", arg2)
	if not getEditableMeshFromContext_upvr_result1 then
		return false, {string.format("Mesh for '%s' failed to load. Make sure the mesh exists and try again.", module_2_upvr.fullName)}
	end
	module_2_upvr.editableMesh = getEditableMeshFromContext_upvr_result2
	local var32_result1, var32_result2 = pcallDeferred_upvr(function() -- Line 149
		--[[ Upvalues[2]:
			[1]: getMeshSize_upvr (copied, readonly)
			[2]: module_2_upvr (readonly)
		]]
		return getMeshSize_upvr(module_2_upvr)
	end, arg2)
	if not var32_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateBodyPartMeshBounds_FailedToLoadMesh, nil, arg2)
		if arg2.isServer then
			error("Failed to read mesh")
		end
		return false, {"Failed to read mesh"}
	end
	return true, nil, var32_result2
end
local getExpectedPartSize_upvr = require(Parent.util.getExpectedPartSize)
local function validateInternal_upvr(arg1, arg2) -- Line 167, Named "validateInternal"
	--[[ Upvalues[5]:
		[1]: calculateMeshSize_upvr (readonly)
		[2]: getExpectedPartSize_upvr (readonly)
		[3]: FailureReasonsAccumulator_upvr (readonly)
		[4]: validateWrapTargetComparison_upvr (readonly)
		[5]: Analytics_upvr (readonly)
	]]
	local calculateMeshSize_upvr_result1, calculateMeshSize_upvr_result2, calculateMeshSize_upvr_result3 = calculateMeshSize_upvr(arg1, arg2)
	if not calculateMeshSize_upvr_result1 or not calculateMeshSize_upvr_result3 then
		return calculateMeshSize_upvr_result1, calculateMeshSize_upvr_result2
	end
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	any_new_result1:updateReasons(validateWrapTargetComparison_upvr(getExpectedPartSize_upvr(arg1, arg2) / calculateMeshSize_upvr_result3, arg1, arg2))
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return any_new_result1:getFinalResults()
end
return function(arg1, arg2) -- Line 188, Named "validateBodyPartMeshBounds"
	--[[ Upvalues[3]:
		[1]: Constants_upvr (readonly)
		[2]: validateInternal_upvr (readonly)
		[3]: FailureReasonsAccumulator_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assetTypeEnum = arg2.assetTypeEnum
	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return validateInternal_upvr(arg1, arg2)
	end
	for i in pairs(Constants_upvr.ASSET_TYPE_INFO[assetTypeEnum].subParts) do
		local SOME = arg1:FindFirstChild(i)
		assert(SOME)
		FailureReasonsAccumulator_upvr.new():updateReasons(validateInternal_upvr(SOME, arg2))
		local var57
	end
	return var57:getFinalResults()
end