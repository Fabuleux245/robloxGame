-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:11
-- Luau version 6, Types version 3
-- Time taken: 0.004670 seconds

local longstring1 = "Full body check did not receive the correct set of body part Asset Types (i.e. Head, Torso, LeftArm, RightArm, LeftLeg, RightLeg). Make sure the body model is valid and try again."
local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local function _(arg1, arg2) -- Line 31, Named "getInstance"
	for _, v in arg1 do
		if v.Name == arg2 then
			return v
		end
	end
	return nil
end
local validateSingleInstance_upvr = require(Parent.validation.validateSingleInstance)
local validateWithSchema_upvr = require(Parent.util.validateWithSchema)
local createDynamicHeadMeshPartSchema_upvr = require(Parent.util.createDynamicHeadMeshPartSchema)
local createLimbsAndTorsoSchema_upvr = require(Parent.util.createLimbsAndTorsoSchema)
local function validateAllAssetsWithSchema_upvr(arg1, arg2, arg3) -- Line 42, Named "validateAllAssetsWithSchema"
	--[[ Upvalues[4]:
		[1]: validateSingleInstance_upvr (readonly)
		[2]: validateWithSchema_upvr (readonly)
		[3]: createDynamicHeadMeshPartSchema_upvr (readonly)
		[4]: createLimbsAndTorsoSchema_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [72] 60. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [72] 60. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 30 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.8]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.9]
	if nil == nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
		end
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.10]
		if not nil then
			-- KONSTANTWARNING: GOTO [72] #60
		end
		-- KONSTANTWARNING: GOTO [72] #60
	end
	-- KONSTANTERROR: [4] 5. Error Block 30 end (CF ANALYSIS FAILED)
end
local ConstantsInterface_upvr = require(Parent.ConstantsInterface)
local function validateCorrectAssetTypesExist_upvr(arg1) -- Line 81, Named "validateCorrectAssetTypesExist"
	--[[ Upvalues[1]:
		[1]: ConstantsInterface_upvr (readonly)
	]]
	local tbl = {}
	local var15 = arg1
	local var16
	for _, v_2 in var15 do
		if not ConstantsInterface_upvr.isBodyPart(v_2.assetTypeEnum) then
			return false
		end
		if tbl[v_2.assetTypeEnum] then
			return false
		end
		tbl[v_2.assetTypeEnum] = true
		var16 += 1
	end
	if var16 ~= #ConstantsInterface_upvr.getBodyPartAssets() then
		var15 = false
	else
		var15 = true
	end
	return var15
end
local function createAllBodyPartsTable_upvr(arg1, arg2) -- Line 99, Named "createAllBodyPartsTable"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 33. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 33. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [46.8]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [46.9]
	if nil == nil then
		-- KONSTANTWARNING: GOTO [46] #33
	end
	-- KONSTANTERROR: [6] 6. Error Block 18 end (CF ANALYSIS FAILED)
end
local ParseContentIds_upvr = require(Parent.util.ParseContentIds)
local function validateMeshIds_upvr(arg1, arg2) -- Line 114, Named "validateMeshIds"
	--[[ Upvalues[2]:
		[1]: ParseContentIds_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	for _, v_3 in arg1 do
		for _, v_4 in v_3.allSelectedInstances do
			if not ParseContentIds_upvr.parseWithErrorCheck({}, {}, v_4, {
				MeshPart = {"MeshId"};
			}, {
				MeshPart = {
					MeshId = true;
				};
			}, arg2) then
				Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateFullBody_MeshIdsMissing, nil, arg2)
				return false, {"Unable to run full body validation due to previous errors detected while processing individual body parts"}
			end
		end
	end
	return true
end
local function validateInstanceHierarchy_upvr(arg1, arg2, arg3) -- Line 151, Named "validateInstanceHierarchy"
	--[[ Upvalues[4]:
		[1]: validateCorrectAssetTypesExist_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: validateAllAssetsWithSchema_upvr (readonly)
		[4]: validateMeshIds_upvr (readonly)
	]]
	if arg3 then
	else
	end
	if not validateCorrectAssetTypesExist_upvr(arg1) then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateFullBody_IncorrectAssetTypeSet, nil, arg3)
		if nil then
			error(longstring1)
		end
		return false, {longstring1}
	end
	if not validateAllAssetsWithSchema_upvr(arg1, arg2, arg3) then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateFullBody_InstancesMissing, nil, arg3)
		return false, {"Unable to run full body validation due to previous errors detected while processing individual body parts."}
	end
	local validateMeshIds_result1, validateMeshIds_result2 = validateMeshIds_upvr(arg1, arg3)
	if not validateMeshIds_result1 then
		return false, validateMeshIds_result2
	end
	return true
end
local resetPhysicsData_upvr = require(Parent.util.resetPhysicsData)
local function resetAllPhysicsData_upvr(arg1) -- Line 185, Named "resetAllPhysicsData"
	--[[ Upvalues[1]:
		[1]: resetPhysicsData_upvr (readonly)
	]]
	for _, v_5 in arg1.fullBodyData do
		local resetPhysicsData_upvr_result1, var31_result2 = resetPhysicsData_upvr(v_5.allSelectedInstances, arg1)
		if not resetPhysicsData_upvr_result1 then
			return false, {var31_result2}
		end
	end
	return true
end
local Constants_upvr = require(Parent.Constants)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local getFFlagUGCValidateMeshMin_upvr = require(Parent.flags.getFFlagUGCValidateMeshMin)
local ValidateBodyBlockingTests_upvr = require(Parent.util.ValidateBodyBlockingTests)
local getEngineFeatureUGCValidateBodyMaxCageMeshDistance_upvr = require(Parent.flags.getEngineFeatureUGCValidateBodyMaxCageMeshDistance)
local ValidateAssetBodyPartCages_upvr = require(Parent.validation.ValidateAssetBodyPartCages)
local validateAssetBounds_upvr = require(Parent.validation.validateAssetBounds)
local getEngineFeatureUGCValidationFullBodyFacs_upvr = require(Parent.flags.getEngineFeatureUGCValidationFullBodyFacs)
local ValidateEachBodyPartFacsBounds_upvr = require(Parent.validation.ValidateEachBodyPartFacsBounds)
return function(arg1) -- Line 198, Named "validateFullBody"
	--[[ Upvalues[13]:
		[1]: Constants_upvr (readonly)
		[2]: validateInstanceHierarchy_upvr (readonly)
		[3]: resetAllPhysicsData_upvr (readonly)
		[4]: FailureReasonsAccumulator_upvr (readonly)
		[5]: createAllBodyPartsTable_upvr (readonly)
		[6]: getFFlagUGCValidateMeshMin_upvr (readonly)
		[7]: ValidateBodyBlockingTests_upvr (readonly)
		[8]: Analytics_upvr (readonly)
		[9]: getEngineFeatureUGCValidateBodyMaxCageMeshDistance_upvr (readonly)
		[10]: ValidateAssetBodyPartCages_upvr (readonly)
		[11]: validateAssetBounds_upvr (readonly)
		[12]: getEngineFeatureUGCValidationFullBodyFacs_upvr (readonly)
		[13]: ValidateEachBodyPartFacsBounds_upvr (readonly)
	]]
	local var50
	if arg1.fullBodyData == nil then
		var50 = false
	else
		var50 = true
	end
	assert(var50, "fullBodyData required in validationContext for validateFullBody")
	local fullBodyData = arg1.fullBodyData
	var50 = arg1.requireAllFolders
	local tbl_2 = {Constants_upvr.FOLDER_NAMES.R15ArtistIntent}
	if var50 then
		table.insert(tbl_2, Constants_upvr.FOLDER_NAMES.R15Fixed)
	end
	local validateInstanceHierarchy_result1, validateInstanceHierarchy_upvr_result2 = validateInstanceHierarchy_upvr(fullBodyData, tbl_2, arg1)
	if not validateInstanceHierarchy_result1 then
		return false, validateInstanceHierarchy_upvr_result2
	end
	local resetAllPhysicsData_upvr_result1, resetAllPhysicsData_upvr_result2 = resetAllPhysicsData_upvr(arg1)
	if not resetAllPhysicsData_upvr_result1 then
		return false, resetAllPhysicsData_upvr_result2
	end
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	for _, v_6 in tbl_2 do
		local createAllBodyPartsTable_result1 = createAllBodyPartsTable_upvr(v_6, fullBodyData)
		assert(createAllBodyPartsTable_result1)
		if getFFlagUGCValidateMeshMin_upvr() and not ValidateBodyBlockingTests_upvr.validateAll(createAllBodyPartsTable_result1, arg1) then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateFullBody_ZeroMeshSize, nil, arg1)
			return false, {"Unable to run full body validation due to previous errors detected while processing individual body parts."}
		end
		if getEngineFeatureUGCValidateBodyMaxCageMeshDistance_upvr() then
			any_new_result1:updateReasons(ValidateAssetBodyPartCages_upvr.validateFullBody(createAllBodyPartsTable_result1, arg1))
		end
		any_new_result1:updateReasons(validateAssetBounds_upvr(createAllBodyPartsTable_result1, nil, arg1))
		if getEngineFeatureUGCValidationFullBodyFacs_upvr() then
			any_new_result1:updateReasons(ValidateEachBodyPartFacsBounds_upvr(createAllBodyPartsTable_result1, arg1))
		end
	end
	return any_new_result1:getFinalResults()
end