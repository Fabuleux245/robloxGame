-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:54
-- Luau version 6, Types version 3
-- Time taken: 0.007119 seconds

local Parent = script.Parent.Parent
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
local Constants_upvr = require(Parent.Constants)
local util = Parent.util
local pcallDeferred_upvr = require(util.pcallDeferred)
local getEditableMeshFromContext_upvr = require(util.getEditableMeshFromContext)
local getExpectedPartSize_upvr = require(util.getExpectedPartSize)
local getMeshInfo_upvr = require(util.getMeshInfo)
local GetFStringUGCValidationMaxCageDistance_upvr = require(Parent.flags.GetFStringUGCValidationMaxCageDistance)
local getFFlagUGCValidationConsolidateGetMeshInfos_upvr = require(Parent.flags.getFFlagUGCValidationConsolidateGetMeshInfos)
local module_6 = {}
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 30, Named "DEPRECATED_getMeshInfo"
	--[[ Upvalues[1]:
		[1]: getEditableMeshFromContext_upvr (readonly)
	]]
	local module_2 = {
		fullName = arg1:GetFullName();
	}
	module_2.contentId = arg3
	module_2.fieldName = arg2
	module_2.context = arg4
	local var7_result1_3, var7_result2_4 = getEditableMeshFromContext_upvr(arg1, arg2, arg5)
	if not var7_result1_3 then
		return false, module_2
	end
	module_2.editableMesh = var7_result2_4
	return true, module_2
end
local function validateInternal_upvr(arg1, arg2) -- Line 54, Named "validateInternal"
	--[[ Upvalues[9]:
		[1]: getFFlagUGCValidationConsolidateGetMeshInfos_upvr (readonly)
		[2]: getMeshInfo_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: getEditableMeshFromContext_upvr (readonly)
		[5]: getExpectedPartSize_upvr (readonly)
		[6]: pcallDeferred_upvr (readonly)
		[7]: UGCValidationService_upvr (readonly)
		[8]: Analytics_upvr (readonly)
		[9]: GetFStringUGCValidationMaxCageDistance_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 52 start (CF ANALYSIS FAILED)
	local var16
	if var16 then
		var16 = getMeshInfo_upvr(arg1, Constants_upvr.MESH_CONTENT_TYPE.RENDER_MESH, arg2)
		local getMeshInfo_upvr_result1_upvr, var9_result2_2, _ = getMeshInfo_upvr(arg1, Constants_upvr.MESH_CONTENT_TYPE.RENDER_MESH, arg2)
		-- KONSTANTWARNING: GOTO [51] #42
	end
	-- KONSTANTERROR: [0] 1. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 18. Error Block 55 start (CF ANALYSIS FAILED)
	local module_5_upvw = {
		fullName = arg1:GetFullName();
		contentId = arg1.MeshId;
		fieldName = "MeshId";
		context = arg1.Name;
	}
	local var7_result1, var7_result2_3 = getEditableMeshFromContext_upvr(arg1, "MeshId", arg2)
	if not var7_result1 then
		getMeshInfo_upvr_result1_upvr = false
	else
		module_5_upvw.editableMesh = var7_result2_3
		getMeshInfo_upvr_result1_upvr = true
	end
	if not getMeshInfo_upvr_result1_upvr then
		getMeshInfo_upvr_result1_upvr = getFFlagUGCValidationConsolidateGetMeshInfos_upvr()
		if getMeshInfo_upvr_result1_upvr then
			getMeshInfo_upvr_result1_upvr = false
			return getMeshInfo_upvr_result1_upvr, var9_result2_2
		end
		getMeshInfo_upvr_result1_upvr = false
		return getMeshInfo_upvr_result1_upvr, {"Failed to load "..arg1.Name.."'s render mesh data"}
	end
	getMeshInfo_upvr_result1_upvr = arg1:FindFirstChildWhichIsA("WrapTarget")
	assert(getMeshInfo_upvr_result1_upvr, "Missing WrapTarget child for "..arg1.Name)
	if getFFlagUGCValidationConsolidateGetMeshInfos_upvr() then
		local _, var9_result2_3, _ = getMeshInfo_upvr(getMeshInfo_upvr_result1_upvr, Constants_upvr.MESH_CONTENT_TYPE.OUTER_CAGE, arg2)
		-- KONSTANTWARNING: GOTO [136] #110
	end
	local module_3_upvw = {
		fullName = getMeshInfo_upvr_result1_upvr:GetFullName();
		contentId = getMeshInfo_upvr_result1_upvr.CageMeshId;
		fieldName = "CageMeshId";
		context = getMeshInfo_upvr_result1_upvr.ClassName;
	}
	local getEditableMeshFromContext_upvr_result1, var7_result2_5 = getEditableMeshFromContext_upvr(getMeshInfo_upvr_result1_upvr, "CageMeshId", arg2)
	if not getEditableMeshFromContext_upvr_result1 then
	else
		module_3_upvw.editableMesh = var7_result2_5
	end
	if not true then
		if getFFlagUGCValidationConsolidateGetMeshInfos_upvr() then
			return false, var9_result2_3
		end
		return false, {"Failed to load "..arg1.Name.."'s WrapTarget's cage mesh data"}
	end
	local var32_upvr = getExpectedPartSize_upvr(arg1, arg2) / getExpectedPartSize_upvr(arg1, arg2, true)
	local var6_result1, var6_result2 = pcallDeferred_upvr(function() -- Line 101
		--[[ Upvalues[5]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: module_3_upvw (read and write)
			[3]: module_5_upvw (read and write)
			[4]: getMeshInfo_upvr_result1_upvr (readonly)
			[5]: var32_upvr (readonly)
		]]
		return UGCValidationService_upvr:CalculateBodyPartMaxCageDistance(module_3_upvw.editableMesh, module_5_upvw.editableMesh, getMeshInfo_upvr_result1_upvr.CageOrigin, var32_upvr)
	end, arg2)
	if not var6_result1 then
		local formatted = `Failed to execute body part max cage distance check. Make sure {arg1.Name}'s render mesh and its WrapTarget's cage mesh exist, and try again.`
		if arg2.isServer ~= nil and arg2.isServer then
			error(formatted)
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateBodyPartCage_FailedToExecute, nil, arg2)
		return false, {formatted}
	end
	if GetFStringUGCValidationMaxCageDistance_upvr.asNumber() < var6_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh, nil, arg2)
		return false, {string.format("Cage mesh verts referenced in %s.%s.CageMeshId were found that are %.2f studs outside the %s render mesh. %s studs is the maximum. Reduce the size of your cage mesh.", arg1.Name, getMeshInfo_upvr_result1_upvr.Name, var6_result2, arg1.Name, GetFStringUGCValidationMaxCageDistance_upvr.asString())}
	end
	do
		return true
	end
	-- KONSTANTERROR: [19] 18. Error Block 55 end (CF ANALYSIS FAILED)
end
local FailureReasonsAccumulator_upvr = require(util.FailureReasonsAccumulator)
function module_6.validateSingleBodyPart(arg1, arg2) -- Line 144
	--[[ Upvalues[4]:
		[1]: Constants_upvr (readonly)
		[2]: FailureReasonsAccumulator_upvr (readonly)
		[3]: validateInternal_upvr (readonly)
		[4]: Analytics_upvr (readonly)
	]]
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	if Enum.AssetType.DynamicHead == arg2.assetTypeEnum then
		return validateInternal_upvr(arg1, arg2)
	end
	for i in pairs(Constants_upvr.ASSET_TYPE_INFO[arg2.assetTypeEnum].subParts) do
		local SOME = arg1:FindFirstChild(i)
		assert(SOME, "expected parts have been checked for existance before calling this function")
		any_new_result1:updateReasons(validateInternal_upvr(SOME, arg2))
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return any_new_result1:getFinalResults()
end
local AssetCalculator_upvr = require(util.AssetCalculator)
local getFFlagUGCValidationHyperlinksInCageQuality_upvr = require(Parent.flags.getFFlagUGCValidationHyperlinksInCageQuality)
function module_6.validateFullBody(arg1, arg2) -- Line 167
	--[[ Upvalues[11]:
		[1]: AssetCalculator_upvr (readonly)
		[2]: getFFlagUGCValidationConsolidateGetMeshInfos_upvr (readonly)
		[3]: getMeshInfo_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: getEditableMeshFromContext_upvr (readonly)
		[6]: getExpectedPartSize_upvr (readonly)
		[7]: pcallDeferred_upvr (readonly)
		[8]: UGCValidationService_upvr (readonly)
		[9]: Analytics_upvr (readonly)
		[10]: GetFStringUGCValidationMaxCageDistance_upvr (readonly)
		[11]: getFFlagUGCValidationHyperlinksInCageQuality_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var48
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 29. Error Block 61 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [33.9]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local tbl = {
		fullName = nil:GetFullName();
		contentId = nil.MeshId;
		fieldName = "MeshId";
		context = nil.Name;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var7_result1_2, var7_result2_2 = getEditableMeshFromContext_upvr(nil, "MeshId", arg2)
	if not var7_result1_2 then
		var48 = false
	else
		tbl.editableMesh = var7_result2_2
		var48 = true
	end
	if not var48 then
		var48 = getFFlagUGCValidationConsolidateGetMeshInfos_upvr()
		if var48 then
			var48 = false
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [70.11]
			return var48, nil
		end
		var48 = false
		local module_4 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_4[1] = "Failed to load "..nil.Name.."'s render mesh data"
		return var48, module_4
	end
	var48 = nil:FindFirstChildWhichIsA("WrapTarget")
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	assert(var48, "Missing WrapTarget child for "..nil.Name)
	if getFFlagUGCValidationConsolidateGetMeshInfos_upvr() then
		local _, var9_result2, _ = getMeshInfo_upvr(var48, Constants_upvr.MESH_CONTENT_TYPE.OUTER_CAGE, arg2)
		-- KONSTANTWARNING: GOTO [148] #119
	end
	local tbl_3 = {
		fullName = var48:GetFullName();
		contentId = var48.CageMeshId;
		fieldName = "CageMeshId";
		context = var48.ClassName;
	}
	local var7_result1_4, var7_result2 = getEditableMeshFromContext_upvr(var48, "CageMeshId", arg2)
	if not var7_result1_4 then
	else
		tbl_3.editableMesh = var7_result2
	end
	if not true then
		if getFFlagUGCValidationConsolidateGetMeshInfos_upvr() then
			return false, var9_result2
		end
		local module = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module[1] = "Failed to load "..nil.Name.."'s WrapTarget's cage mesh data"
		return false, module
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	local tbl_2 = {
		renderMesh = tbl.editableMesh;
		outerCage = tbl_3.editableMesh;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_2.renderMeshTransform = AssetCalculator_upvr.calculateAllTransformsForFullBody(arg1)[nil.Name]
	tbl_2.outerCageLocalTransform = var48.CageOrigin
	tbl_2.scale = getExpectedPartSize_upvr(nil, arg2) / getExpectedPartSize_upvr(nil, arg2, true)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_2.name = nil.Name
	table.insert({}, tbl_2)
	-- KONSTANTERROR: [33] 29. Error Block 61 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 58 start (CF ANALYSIS FAILED)
	if var48 then
		-- KONSTANTWARNING: GOTO [65] #53
	end
	-- KONSTANTERROR: [14] 12. Error Block 58 end (CF ANALYSIS FAILED)
end
return module_6