-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:14
-- Luau version 6, Types version 3
-- Time taken: 0.010157 seconds

local Parent = script.Parent.Parent
local ConstantsInterface_upvr = require(Parent.ConstantsInterface)
local AssetCalculator_upvr = require(Parent.util.AssetCalculator)
local BoundsDataUtils_upvr = require(Parent.util.BoundsDataUtils)
local getFFlagUGCValidateUseDataCache_upvr = require(Parent.flags.getFFlagUGCValidateUseDataCache)
local module_3 = {}
local function orientSingleAssetToWorldAxes_upvr(arg1, arg2, arg3) -- Line 34, Named "orientSingleAssetToWorldAxes"
	--[[ Upvalues[1]:
		[1]: AssetCalculator_upvr (readonly)
	]]
	if arg2 ~= Enum.AssetType.LeftArm and arg2 ~= Enum.AssetType.RightArm and arg2 ~= Enum.AssetType.LeftLeg and arg2 ~= Enum.AssetType.RightLeg then
	else
		for var7, var8 in AssetCalculator_upvr.calculateStraightenedLimb(arg2, arg1, arg3), nil do
			arg1[var7] = var8
		end
	end
end
local getPartNamesInHierarchyOrder_upvr = require(Parent.util.getPartNamesInHierarchyOrder)
local function orientFullBodyArmsLegsToWorldAxes_upvr(arg1, arg2) -- Line 55, Named "orientFullBodyArmsLegsToWorldAxes"
	--[[ Upvalues[3]:
		[1]: orientSingleAssetToWorldAxes_upvr (readonly)
		[2]: getPartNamesInHierarchyOrder_upvr (readonly)
		[3]: ConstantsInterface_upvr (readonly)
	]]
	local function orientAndMoveParts(arg1_2, arg2_2) -- Line 56
		--[[ Upvalues[5]:
			[1]: orientSingleAssetToWorldAxes_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: getPartNamesInHierarchyOrder_upvr (copied, readonly)
			[5]: ConstantsInterface_upvr (copied, readonly)
		]]
		orientSingleAssetToWorldAxes_upvr(arg1, arg1_2, arg2)
		local getPartNamesInHierarchyOrder_upvr_result1 = getPartNamesInHierarchyOrder_upvr(arg1_2)
		local arg2_result1_2 = arg2(getPartNamesInHierarchyOrder_upvr_result1[1])
		local any_getRigAttachmentToParent_result1 = ConstantsInterface_upvr.getRigAttachmentToParent(arg1_2, arg2_result1_2.Name)
		local SOME = arg2_result1_2:FindFirstChild(any_getRigAttachmentToParent_result1)
		assert(SOME)
		local arg2_result1 = arg2(arg2_2)
		assert(arg2_result1)
		local SOME_2 = arg2_result1:FindFirstChild(any_getRigAttachmentToParent_result1)
		assert(SOME_2)
		local var20 = (arg1[arg2_result1.Name] * SOME_2.CFrame).Position - (arg1[arg2_result1_2.Name] * SOME.CFrame).Position
		for _, v in getPartNamesInHierarchyOrder_upvr_result1 do
			arg1[v] = CFrame.new(arg1[v].Position + var20) * arg1[v].Rotation
		end
	end
	orientAndMoveParts(Enum.AssetType.LeftArm, "UpperTorso")
	orientAndMoveParts(Enum.AssetType.RightArm, "UpperTorso")
	orientAndMoveParts(Enum.AssetType.LeftLeg, "LowerTorso")
	orientAndMoveParts(Enum.AssetType.RightLeg, "LowerTorso")
end
local getFFlagUGCValidateUseMeshSizeProperty_upvr = require(Parent.flags.getFFlagUGCValidateUseMeshSizeProperty)
local getMeshMinMax_upvr = require(Parent.util.getMeshMinMax)
local getExpectedPartSize_upvr = require(Parent.util.getExpectedPartSize)
local getMeshVerts_upvr = require(Parent.util.getMeshVerts)
local getFFlagUGCValidateCalculateScaleToValidateBounds_upvr = require(Parent.flags.getFFlagUGCValidateCalculateScaleToValidateBounds)
local function calculateBoundsDataForPart_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 87, Named "calculateBoundsDataForPart"
	--[[ Upvalues[8]:
		[1]: getFFlagUGCValidateUseDataCache_upvr (readonly)
		[2]: getFFlagUGCValidateUseMeshSizeProperty_upvr (readonly)
		[3]: getMeshMinMax_upvr (readonly)
		[4]: getExpectedPartSize_upvr (readonly)
		[5]: getMeshVerts_upvr (readonly)
		[6]: BoundsDataUtils_upvr (readonly)
		[7]: ConstantsInterface_upvr (readonly)
		[8]: getFFlagUGCValidateCalculateScaleToValidateBounds_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 107 start (CF ANALYSIS FAILED)
	local var58
	if getFFlagUGCValidateUseDataCache_upvr() then
		if arg1 == nil then
			var58 = false
		else
			var58 = true
		end
		if arg5 == nil then
		else
		end
		if var58 == true then
		else
		end
		assert(true)
	end
	local var59
	if getFFlagUGCValidateUseMeshSizeProperty_upvr() then
		var59 = arg2.MeshSize
	else
		if getFFlagUGCValidateUseDataCache_upvr() and arg5 then
			if arg5.meshData then
				var58 = arg5.meshData
				if var58[arg2.MeshId] then
					var58 = arg5.meshData[arg2.MeshId]
					local meshMin = var58.meshMin
					var58 = arg5.meshData[arg2.MeshId].meshMax
					if meshMin and var58 then
						var59 = var58 - meshMin
					end
				end
			end
			if not var59 then
				var58 = {}
				var58[1] = "Mesh bounds not found in data cache"
				return false, var58
			end
		end
		if not getFFlagUGCValidateUseDataCache_upvr() or not var59 then
			var58 = arg1
			local getMeshMinMax_upvr_result1, var22_result2, getMeshMinMax_upvr_result3, var22_result4 = getMeshMinMax_upvr(var58, arg4)
			if not getMeshMinMax_upvr_result1 then
				return getMeshMinMax_upvr_result1, var22_result2
			end
			var59 = var22_result4 - getMeshMinMax_upvr_result3
		end
	end
	var22_result2 = arg2
	var22_result2 = getExpectedPartSize_upvr(var22_result2, arg4) / var59
	if getFFlagUGCValidateUseDataCache_upvr() and arg5 then
		if arg5.meshData then
			if arg5.meshData[arg2.MeshId] then
				local verts = arg5.meshData[arg2.MeshId].verts
				if verts then
					local var66 = verts
				end
			end
		end
		if not var66 then
			return false, {"Verts not found in data cache"}
		end
	end
	if not getFFlagUGCValidateUseDataCache_upvr() or not var66 then
		local getMeshVerts_upvr_result1, var24_result2_2, var24_result3 = getMeshVerts_upvr(arg1, arg4)
		if not getMeshVerts_upvr_result1 then
			return getMeshVerts_upvr_result1, var24_result2_2
		end
	end
	for _, v_2 in var24_result3 do
		BoundsDataUtils_upvr.expandMeshBounds({}, arg3:PointToWorldSpace(v_2 * var22_result2))
		local _
	end
	local any_getAttachments_result1_2, any_getAttachments_result2, any_getAttachments_result3_2 = ConstantsInterface_upvr.getAttachments(nil, arg2.Name)
	-- KONSTANTERROR: [0] 1. Error Block 107 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [203] 162. Error Block 61 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [203] 162. Error Block 61 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [147] 118. Error Block 48 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [147] 118. Error Block 48 end (CF ANALYSIS FAILED)
end
local getFFlagUGCValidationConsolidateGetMeshInfos_upvr = require(Parent.flags.getFFlagUGCValidationConsolidateGetMeshInfos)
local getMeshInfo_upvr = require(Parent.util.getMeshInfo)
local Constants_upvr = require(Parent.Constants)
local function calculateAllPartsBoundsData_upvr(arg1, arg2, arg3, arg4) -- Line 184, Named "calculateAllPartsBoundsData"
	--[[ Upvalues[5]:
		[1]: getFFlagUGCValidateUseDataCache_upvr (readonly)
		[2]: getFFlagUGCValidationConsolidateGetMeshInfos_upvr (readonly)
		[3]: getMeshInfo_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: calculateBoundsDataForPart_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	for i_3, v_3 in arg1 do
		local var87
		local var88
		if not var88 or not arg4 then
			var88 = nil
			local var89 = var88
			if getFFlagUGCValidationConsolidateGetMeshInfos_upvr() then
				local var76_result1, _, _ = getMeshInfo_upvr(arg2(i_3), Constants_upvr.MESH_CONTENT_TYPE.RENDER_MESH, arg3)
				var89 = var76_result1
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local getMeshInfo_upvr_result1, var76_result2, var76_result3 = getMeshInfo_upvr(arg2(i_3), arg3)
				var89 = getMeshInfo_upvr_result1
			end
			if not var89 then
				return var89, var76_result2
			end
			var87 = var76_result3
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local calculateBoundsDataForPart_upvr_result1, calculateBoundsDataForPart_result2, calculateBoundsDataForPart_result3 = calculateBoundsDataForPart_upvr(var87, arg2(i_3), v_3, arg3, arg4)
		if not calculateBoundsDataForPart_upvr_result1 then
			return calculateBoundsDataForPart_upvr_result1, calculateBoundsDataForPart_result2
		end
		module[i_3] = calculateBoundsDataForPart_result3
	end
	return true, nil, module
end
local function calculateTotalBoundsForAsset_upvr(arg1, arg2, arg3) -- Line 219, Named "calculateTotalBoundsForAsset"
	--[[ Upvalues[2]:
		[1]: calculateAllPartsBoundsData_upvr (readonly)
		[2]: BoundsDataUtils_upvr (readonly)
	]]
	local calculateAllPartsBoundsData_result1, calculateAllPartsBoundsData_result2_3, calculateAllPartsBoundsData_result3_3 = calculateAllPartsBoundsData_upvr(arg1, arg2, arg3)
	local var106
	if not calculateAllPartsBoundsData_result1 then
		return calculateAllPartsBoundsData_result1, calculateAllPartsBoundsData_result2_3
	end
	var106 = {}
	for _, v_4 in calculateAllPartsBoundsData_result3_3 do
		var106 = BoundsDataUtils_upvr.combineBounds(var106, v_4)
	end
	return true, nil, var106
end
local function calculatePartBounds_upvr(arg1, arg2) -- Line 238, Named "calculatePartBounds"
	--[[ Upvalues[1]:
		[1]: calculateTotalBoundsForAsset_upvr (readonly)
	]]
	local function findMeshHandle(arg1_3) -- Line 243
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var108
		if arg1_3 ~= arg1.Name then
			var108 = false
		else
			var108 = true
		end
		assert(var108)
		return arg1
	end
	local calculateTotalBoundsForAsset_result1_3, calculateTotalBoundsForAsset_result2_2, calculateTotalBoundsForAsset_upvr_result3 = calculateTotalBoundsForAsset_upvr({
		[arg1.Name] = CFrame.new();
	}, findMeshHandle, arg2)
	if not calculateTotalBoundsForAsset_result1_3 then
		return calculateTotalBoundsForAsset_result1_3, calculateTotalBoundsForAsset_result2_2
	end
	return true, nil, calculateTotalBoundsForAsset_upvr_result3
end
function module_3.calculateAssetBounds(arg1, arg2) -- Line 257
	--[[ Upvalues[4]:
		[1]: calculatePartBounds_upvr (readonly)
		[2]: AssetCalculator_upvr (readonly)
		[3]: orientSingleAssetToWorldAxes_upvr (readonly)
		[4]: calculateTotalBoundsForAsset_upvr (readonly)
	]]
	local assetTypeEnum = arg2.assetTypeEnum
	assert(assetTypeEnum)
	if assetTypeEnum == Enum.AssetType.DynamicHead then
		return calculatePartBounds_upvr(arg1, arg2)
	end
	local any_calculateAllTransformsForAsset_result1_2 = AssetCalculator_upvr.calculateAllTransformsForAsset(assetTypeEnum, arg1)
	local function findMeshHandle(arg1_4) -- Line 270
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:FindFirstChild(arg1_4)
	end
	orientSingleAssetToWorldAxes_upvr(any_calculateAllTransformsForAsset_result1_2, assetTypeEnum, findMeshHandle)
	local calculateTotalBoundsForAsset_result1, calculateTotalBoundsForAsset_result2, calculateTotalBoundsForAsset_result3 = calculateTotalBoundsForAsset_upvr(any_calculateAllTransformsForAsset_result1_2, findMeshHandle, arg2)
	if not calculateTotalBoundsForAsset_result1 then
		return calculateTotalBoundsForAsset_result1, calculateTotalBoundsForAsset_result2
	end
	return true, nil, calculateTotalBoundsForAsset_result3
end
function module_3.calculateIndividualAssetPartsData(arg1, arg2) -- Line 286
	--[[ Upvalues[3]:
		[1]: AssetCalculator_upvr (readonly)
		[2]: orientSingleAssetToWorldAxes_upvr (readonly)
		[3]: calculateAllPartsBoundsData_upvr (readonly)
	]]
	local assetTypeEnum_2_upvr = arg2.assetTypeEnum
	assert(assetTypeEnum_2_upvr)
	local any_calculateAllTransformsForAsset_result1 = AssetCalculator_upvr.calculateAllTransformsForAsset(assetTypeEnum_2_upvr, arg1)
	local function findMeshHandle(arg1_5) -- Line 295
		--[[ Upvalues[2]:
			[1]: assetTypeEnum_2_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if assetTypeEnum_2_upvr == Enum.AssetType.DynamicHead then
			return arg1
		end
		return arg1:FindFirstChild(arg1_5)
	end
	orientSingleAssetToWorldAxes_upvr(any_calculateAllTransformsForAsset_result1, assetTypeEnum_2_upvr, findMeshHandle)
	local calculateAllPartsBoundsData_result1_2, calculateAllPartsBoundsData_result2, calculateAllPartsBoundsData_result3 = calculateAllPartsBoundsData_upvr(any_calculateAllTransformsForAsset_result1, findMeshHandle, arg2)
	if not calculateAllPartsBoundsData_result1_2 then
		return calculateAllPartsBoundsData_result1_2, calculateAllPartsBoundsData_result2
	end
	for i_5, v_5 in calculateAllPartsBoundsData_result3 do
		({})[i_5] = {
			boundsData = v_5;
			cframe = any_calculateAllTransformsForAsset_result1[i_5];
		}
		local var128
	end
	return true, nil, var128
end
function module_3.calculateIndividualFullBodyPartsData(arg1, arg2, arg3) -- Line 320
	--[[ Upvalues[3]:
		[1]: AssetCalculator_upvr (readonly)
		[2]: orientFullBodyArmsLegsToWorldAxes_upvr (readonly)
		[3]: calculateAllPartsBoundsData_upvr (readonly)
	]]
	local function findMeshHandle(arg1_6) -- Line 325
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1[arg1_6]
	end
	local any_calculateAllTransformsForFullBody_result1_2 = AssetCalculator_upvr.calculateAllTransformsForFullBody(arg1)
	orientFullBodyArmsLegsToWorldAxes_upvr(any_calculateAllTransformsForFullBody_result1_2, findMeshHandle)
	local calculateAllPartsBoundsData_result1_3, calculateAllPartsBoundsData_result2_2, calculateAllPartsBoundsData_result3_2 = calculateAllPartsBoundsData_upvr(any_calculateAllTransformsForFullBody_result1_2, findMeshHandle, arg2, arg3)
	if not calculateAllPartsBoundsData_result1_3 then
		return calculateAllPartsBoundsData_result1_3, calculateAllPartsBoundsData_result2_2
	end
	for i_6, v_6 in calculateAllPartsBoundsData_result3_2 do
		({})[i_6] = {
			boundsData = v_6;
			cframe = any_calculateAllTransformsForFullBody_result1_2[i_6];
		}
		local var139
	end
	return true, nil, var139
end
function module_3.calculateFullBodyBounds(arg1, arg2) -- Line 346
	--[[ Upvalues[3]:
		[1]: AssetCalculator_upvr (readonly)
		[2]: orientFullBodyArmsLegsToWorldAxes_upvr (readonly)
		[3]: calculateTotalBoundsForAsset_upvr (readonly)
	]]
	local function findMeshHandle(arg1_7) -- Line 350
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1[arg1_7]
	end
	local any_calculateAllTransformsForFullBody_result1 = AssetCalculator_upvr.calculateAllTransformsForFullBody(arg1)
	orientFullBodyArmsLegsToWorldAxes_upvr(any_calculateAllTransformsForFullBody_result1, findMeshHandle)
	local calculateTotalBoundsForAsset_result1_2, calculateTotalBoundsForAsset_result2_3, calculateTotalBoundsForAsset_result3_2 = calculateTotalBoundsForAsset_upvr(any_calculateAllTransformsForFullBody_result1, findMeshHandle, arg2)
	if not calculateTotalBoundsForAsset_result1_2 then
		return calculateTotalBoundsForAsset_result1_2, calculateTotalBoundsForAsset_result2_3
	end
	return true, nil, calculateTotalBoundsForAsset_result3_2
end
return module_3