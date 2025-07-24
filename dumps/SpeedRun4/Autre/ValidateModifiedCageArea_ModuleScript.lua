-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:28
-- Luau version 6, Types version 3
-- Time taken: 0.009254 seconds

local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local WrapTargetCageUVReferenceValues_upvr = require(Parent.WrapTargetCageUVReferenceValues)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local StringUtil_upvr = require(Parent.util.StringUtil)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UGCValidateModifiedAreaUsePadding", false)
local var8_upvw
if game_DefineFastFlag_result1_upvr then
	var8_upvw = tonumber(game:DefineFastString("UGCValidateModifiedAreaPaddingModifier", "1.1"))
end
local module_upvr = {}
local tbl_upvr = {
	[Enum.AssetType.LeftShoeAccessory] = {
		allowedParts = {
			LeftFoot = true;
			LeftLowerLeg = true;
			LeftUpperLeg = true;
		};
		mainParts = {
			LeftFoot = true;
		};
	};
	[Enum.AssetType.RightShoeAccessory] = {
		allowedParts = {
			RightFoot = true;
			RightLowerLeg = true;
			RightUpperLeg = true;
		};
		mainParts = {
			RightFoot = true;
		};
	};
}
local function reportTestFailedToExecute_upvr(arg1, arg2, arg3) -- Line 62, Named "reportTestFailedToExecute"
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if arg3.isServer ~= nil and arg3.isServer then
		error(arg1)
	end
	Analytics_upvr.reportFailure(arg2, nil, arg3)
	local module = {}
	module[1] = arg1
	return false, module
end
local function gatherUVs_upvr(arg1) -- Line 77, Named "gatherUVs"
	--[[ Upvalues[1]:
		[1]: WrapTargetCageUVReferenceValues_upvr (readonly)
	]]
	local module_2 = {}
	for i in arg1 do
		for _, v in assert(WrapTargetCageUVReferenceValues_upvr[i], "Body area not found in UV reference values"), nil do
			table.insert(module_2, v)
		end
	end
	return module_2
end
local function lazyGetUVsExcludedForAssetType_upvr(arg1) -- Line 91, Named "lazyGetUVsExcludedForAssetType"
	--[[ Upvalues[2]:
		[1]: WrapTargetCageUVReferenceValues_upvr (readonly)
		[2]: gatherUVs_upvr (readonly)
	]]
	if not arg1.uVsDisallowedForAssetType then
		for i_3 in WrapTargetCageUVReferenceValues_upvr do
			if not arg1.allowedParts[i_3] then
				({})[i_3] = true
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.uVsDisallowedForAssetType = gatherUVs_upvr({})
	end
	return arg1.uVsDisallowedForAssetType
end
local function _(arg1) -- Line 106, Named "lazyGetUVsForAssetType"
	--[[ Upvalues[1]:
		[1]: gatherUVs_upvr (readonly)
	]]
	if not arg1.uVsForAssetType then
		arg1.uVsForAssetType = gatherUVs_upvr(arg1.allowedParts)
	end
	return arg1.uVsForAssetType
end
local function _(arg1) -- Line 114, Named "lazyGetMainUVsForAssetType"
	--[[ Upvalues[1]:
		[1]: gatherUVs_upvr (readonly)
	]]
	if not arg1.mainUVsForAssetType then
		arg1.mainUVsForAssetType = gatherUVs_upvr(arg1.mainParts)
	end
	return arg1.mainUVsForAssetType
end
local game_DefineFastInt_result1_upvr = game:DefineFastInt("UGCValidateExcludedUVModifyRequirements", 14)
function module_upvr.validateExcludedModifiedUVs(arg1, arg2, arg3, arg4, arg5) -- Line 125
	--[[ Upvalues[8]:
		[1]: tbl_upvr (readonly)
		[2]: lazyGetUVsExcludedForAssetType_upvr (readonly)
		[3]: pcallDeferred_upvr (readonly)
		[4]: UGCValidationService_upvr (readonly)
		[5]: reportTestFailedToExecute_upvr (readonly)
		[6]: Analytics_upvr (readonly)
		[7]: game_DefineFastInt_result1_upvr (readonly)
		[8]: StringUtil_upvr (readonly)
	]]
	local assert_result1_4 = assert(tbl_upvr[arg5.assetTypeEnum], "bodyArea should be defined")
	local lazyGetUVsExcludedForAssetType_upvr_result1_upvr = lazyGetUVsExcludedForAssetType_upvr(assert_result1_4)
	local var29
	if #lazyGetUVsExcludedForAssetType_upvr_result1_upvr == 0 then
		return true
	end
	local var5_result1_2, pcallDeferred_upvr_result2_2, pcallDeferred_upvr_result3_2, var5_result4 = pcallDeferred_upvr(function() -- Line 140
		--[[ Upvalues[6]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: lazyGetUVsExcludedForAssetType_upvr_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: arg3 (readonly)
			[6]: arg4 (readonly)
		]]
		return UGCValidationService_upvr:CalculateEditableMeshNumModifiedCageUVsInSet(lazyGetUVsExcludedForAssetType_upvr_result1_upvr, arg1.editableMesh, arg2, arg3.editableMesh, arg4)
	end, arg5)
	if not var5_result1_2 then
		var29 = "Failed to execute excluded modified cage UV check. Make sure both cage meshes exists and try again."
		return reportTestFailedToExecute_upvr(var29, Analytics_upvr.ErrorType.validateExcludedModifiedCageUVs_FailedToExecute, arg5)
	end
	if pcallDeferred_upvr_result2_2 ~= #lazyGetUVsExcludedForAssetType_upvr_result1_upvr then
		var29 = false
	else
		var29 = true
	end
	assert(var29, "all the UVs in allExcludedUVsForBodyArea sent in to CalculateEditableMeshNumModifiedCageUVsInSet should be unique")
	if pcallDeferred_upvr_result3_2 == 0 then
		return true
	end
	var29 = var5_result4 / pcallDeferred_upvr_result3_2
	local var35 = var29 * 100
	if game_DefineFastInt_result1_upvr >= var35 then
		var29 = false
	else
		var29 = true
	end
	if var29 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateExcludedModifiedCageUVs_UnexpectedUVValue, nil, arg5)
		return false, {string.format("%d%% of modified cage UVs in WrapLayer CageMesh (outer mesh) are outside the expected region of the body. For a %s no more than %d%% of the modified UVs can be outside the %s area. Move your asset to the correct area of the body.", math.floor(var35), arg5.assetTypeEnum.Name, game_DefineFastInt_result1_upvr, StringUtil_upvr.keysToString(assert_result1_4.allowedParts, '/'))}
	end
	return true
end
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("UGCValidatePartUVModifyRequirements", 45)
function module_upvr.validateMainModifiedUVs(arg1, arg2, arg3, arg4, arg5) -- Line 194
	--[[ Upvalues[8]:
		[1]: tbl_upvr (readonly)
		[2]: gatherUVs_upvr (readonly)
		[3]: pcallDeferred_upvr (readonly)
		[4]: UGCValidationService_upvr (readonly)
		[5]: reportTestFailedToExecute_upvr (readonly)
		[6]: Analytics_upvr (readonly)
		[7]: game_DefineFastInt_result1_upvr_3 (readonly)
		[8]: StringUtil_upvr (readonly)
	]]
	local assert_result1_2 = assert(tbl_upvr[arg5.assetTypeEnum], "bodyArea should be defined")
	local var39
	if not assert_result1_2.mainUVsForAssetType then
		assert_result1_2.mainUVsForAssetType = gatherUVs_upvr(assert_result1_2.mainParts)
	end
	local mainUVsForAssetType_upvr = assert_result1_2.mainUVsForAssetType
	if #mainUVsForAssetType_upvr == 0 then
		return true
	end
	local pcallDeferred_upvr_result1_2, pcallDeferred_upvr_result2, _, pcallDeferred_upvr_result4 = pcallDeferred_upvr(function() -- Line 209
		--[[ Upvalues[6]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: mainUVsForAssetType_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: arg3 (readonly)
			[6]: arg4 (readonly)
		]]
		return UGCValidationService_upvr:CalculateEditableMeshNumModifiedCageUVsInSet(mainUVsForAssetType_upvr, arg1.editableMesh, arg2, arg3.editableMesh, arg4)
	end, arg5)
	if not pcallDeferred_upvr_result1_2 then
		var39 = "Failed to execute main modified cage UV check. Make sure both cage meshes exists and try again."
		return reportTestFailedToExecute_upvr(var39, Analytics_upvr.ErrorType.validateMainModifiedCageUVs_FailedToExecute, arg5)
	end
	if pcallDeferred_upvr_result2 ~= #mainUVsForAssetType_upvr then
		var39 = false
	else
		var39 = true
	end
	assert(var39, "all the UVs in allUVsForBodyArea sent in to CalculateEditableMeshNumModifiedCageUVsInSet should be unique")
	var39 = pcallDeferred_upvr_result4 / pcallDeferred_upvr_result2
	local var46 = var39 * 100
	if game_DefineFastInt_result1_upvr_3 > var46 then
		var39 = false
	else
		var39 = true
	end
	if not var39 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMainModifiedCageUVs_TooFewModifiedUVsFound, nil, arg5)
		return false, {string.format("The WrapLayer CageMesh (outer mesh) for a %s must modify %d%% of the cage UVs in the %s area. Currently only %d%% are modified. Move your asset to the correct area of the body.", arg5.assetTypeEnum.Name, game_DefineFastInt_result1_upvr_3, StringUtil_upvr.keysToString(assert_result1_2.mainParts, '/'), math.floor(var46))}
	end
	return true
end
local getMeshVerts_upvr = require(Parent.util.getMeshVerts)
local CollisionTestUtil_upvr = require(Parent.util.CollisionTestUtil)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("UGCValidateRenderMeshInsideModifiedArea", 70)
function module_upvr.validateRenderMeshInsideModifiedOuterCageArea(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 255
	--[[ Upvalues[12]:
		[1]: tbl_upvr (readonly)
		[2]: gatherUVs_upvr (readonly)
		[3]: pcallDeferred_upvr (readonly)
		[4]: UGCValidationService_upvr (readonly)
		[5]: getMeshVerts_upvr (readonly)
		[6]: reportTestFailedToExecute_upvr (readonly)
		[7]: Analytics_upvr (readonly)
		[8]: game_DefineFastFlag_result1_upvr (readonly)
		[9]: var8_upvw (read and write)
		[10]: CollisionTestUtil_upvr (readonly)
		[11]: game_DefineFastInt_result1_upvr_2 (readonly)
		[12]: StringUtil_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assert_result1_3 = assert(tbl_upvr[arg6.assetTypeEnum], "bodyArea should be defined")
	local var82
	if not assert_result1_3.uVsForAssetType then
		assert_result1_3.uVsForAssetType = gatherUVs_upvr(assert_result1_3.allowedParts)
	end
	local uVsForAssetType_upvr_2 = assert_result1_3.uVsForAssetType
	if #uVsForAssetType_upvr_2 == 0 then
		return true
	end
	var82 = arg6
	local pcallDeferred_upvr_result1, var5_result2, pcallDeferred_upvr_result3 = pcallDeferred_upvr(function() -- Line 271
		--[[ Upvalues[6]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: uVsForAssetType_upvr_2 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg4 (readonly)
			[6]: arg5 (readonly)
		]]
		return UGCValidationService_upvr:CalculateEditableMeshModifiedCageBoundingBox(uVsForAssetType_upvr_2, arg2.editableMesh, arg3, arg4.editableMesh, arg5)
	end, var82)
	local var88
	if pcallDeferred_upvr_result1 then
		local var48_result1, _, var48_result3 = getMeshVerts_upvr(arg1, arg6)
		pcallDeferred_upvr_result1 = var48_result1
		local var92 = var48_result3
		if pcallDeferred_upvr_result1 then
			if var92 and 0 < #var92 then
				var88 = var92
			else
				pcallDeferred_upvr_result1 = false
			end
		end
	end
	if not pcallDeferred_upvr_result1 then
		return reportTestFailedToExecute_upvr("Failed to execute testing render mesh inside bounding box of outer cage modified area. Make sure both cage meshes and render mesh exist and try again.", Analytics_upvr.ErrorType.validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute, arg6)
	end
	if game_DefineFastFlag_result1_upvr then
		pcallDeferred_upvr_result3 *= var8_upvw
	end
	for i_4, v_2 in var88 do
		if CollisionTestUtil_upvr.pointInAxisAlignedBounds(v_2, var5_result2, pcallDeferred_upvr_result3) then
		end
	end
	local var93 = (0 + 1) / #var88 * 100
	if game_DefineFastInt_result1_upvr_2 > var93 then
	else
	end
	if not true then
		i_4 = Analytics_upvr
		v_2 = Analytics_upvr.ErrorType
		i_4 = v_2.validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly
		v_2 = nil
		i_4.reportFailure(i_4, v_2, arg6)
		i_4 = StringUtil_upvr
		i_4 = assert_result1_3.allowedParts
		v_2 = '/'
		local any_keysToString_result1 = i_4.keysToString(i_4, v_2)
		i_4 = false
		v_2 = {}
		v_2[1] = string.format("Only %d%% of the render mesh verts are situated in the modified %s area of the WrapLayer CageMesh (outer mesh). %d%% is required. Move the render mesh to be within the modified %s area of the WrapLayer CageMesh (outer mesh).", math.floor(var93), any_keysToString_result1, game_DefineFastInt_result1_upvr_2, any_keysToString_result1)
		return i_4, v_2
	end
	return true
end
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
function module_upvr.validate(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 335
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: FailureReasonsAccumulator_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local var96
	if arg6.assetTypeEnum then
		var96 = tbl_upvr[arg6.assetTypeEnum]
	else
		var96 = nil
	end
	if not var96 then
		return true
	end
	assert(var96.allowedParts, "bodyArea.allowedParts should be defined")
	assert(var96.mainParts, "bodyArea.mainParts should be defined")
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	any_new_result1:updateReasons(module_upvr.validateExcludedModifiedUVs(arg1, arg2, arg3, arg4, arg6))
	any_new_result1:updateReasons(module_upvr.validateMainModifiedUVs(arg1, arg2, arg3, arg4, arg6))
	any_new_result1:updateReasons(module_upvr.validateRenderMeshInsideModifiedOuterCageArea(arg5, arg1, arg2, arg3, arg4, arg6))
	return any_new_result1:getFinalResults()
end
return module_upvr