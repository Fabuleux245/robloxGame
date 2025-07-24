-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:54
-- Luau version 6, Types version 3
-- Time taken: 0.011596 seconds

local Parent = script.Parent.Parent
local function _(arg1, arg2) -- Line 31, Named "calculateExtentsUnion"
	return {
		min = arg1.min:Min(arg2.min);
		max = arg1.max:Max(arg2.max);
	}
end
local function checkExtentsValid_upvr(arg1) -- Line 38, Named "checkExtentsValid"
	for _, v in {'X', 'Y', 'Z'} do
		if arg1.max[v] < arg1.min[v] then
			return false
		end
	end
	return true
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 47, Named "validationSpaceToWorldSpace"
	return (arg4) * (arg2:Inverse() * arg1 / arg3 * arg5)
end
local function calculateAmountInflated_upvr(arg1, arg2) -- Line 60, Named "calculateAmountInflated"
	local tbl = {
		min = arg1.min:Min(arg2.min);
		max = arg1.max:Max(arg2.max);
	}
	local var11 = tbl
	tbl = 0
	local var12 = tbl
	for _, v_2 in {'X', 'Y', 'Z'} do
		var12 = math.max(var12, math.abs(math.abs(var11.max[v_2] - var11.min[v_2]) - math.abs(arg1.max[v_2] - arg1.min[v_2])))
	end
	return var12
end
local function getPartNamesInAsset_upvr(arg1, arg2) -- Line 77, Named "getPartNamesInAsset"
	local module_3 = {}
	if arg2 == Enum.AssetType.DynamicHead then
		table.insert(module_3, arg1.Name)
		return module_3
	end
	for _, v_3 in arg1:GetChildren() do
		if v_3:IsA("MeshPart") then
			table.insert(module_3, v_3.Name)
		end
	end
	return module_3
end
local getExpectedPartSize_upvr = require(Parent.util.getExpectedPartSize)
local function calculateMeshScales_upvr(arg1, arg2, arg3) -- Line 93, Named "calculateMeshScales"
	--[[ Upvalues[1]:
		[1]: getExpectedPartSize_upvr (readonly)
	]]
	local module_4 = {}
	for _, v_4 in arg1 do
		local arg3_result1 = arg3(v_4)
		module_4[v_4] = getExpectedPartSize_upvr(arg3_result1, arg2) / getExpectedPartSize_upvr(arg3_result1, arg2, true)
	end
	return module_4
end
local getFStringUGCValidateBoundsInflationThreshold_upvr = require(Parent.flags.getFStringUGCValidateBoundsInflationThreshold)
local function checkInflatingGeo_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 109, Named "checkInflatingGeo"
	--[[ Upvalues[2]:
		[1]: calculateAmountInflated_upvr (readonly)
		[2]: getFStringUGCValidateBoundsInflationThreshold_upvr (readonly)
	]]
	local tbl_2 = {}
	for i_5, v_5 in arg2 do
		table.insert(tbl_2, {
			extents = v_5.extents;
			inflated = calculateAmountInflated_upvr(arg1, v_5.extents);
			worldSpacePosition = v_5.worldSpacePosition;
		})
	end
	table.sort(tbl_2, function(arg1_2, arg2_2) -- Line 126
		local var37
		if arg2_2.inflated >= arg1_2.inflated then
			var37 = false
		else
			var37 = true
		end
		return var37
	end)
	local tbl_6 = {}
	local const_number = 1
	while true do
		i_5 = #tbl_2
		if const_number > i_5 then break end
		v_5 = tbl_2[const_number]
		i_5 = v_5.inflated
		if tonumber(getFStringUGCValidateBoundsInflationThreshold_upvr()) >= i_5 then break end
		i_5 = #tbl_6
		if i_5 >= arg3 then break end
		v_5 = tbl_6
		i_5 = table.insert
		i_5(v_5, tbl_2[const_number])
	end
	if 0 < #tbl_6 then
		for i_6 = 1, #tbl_6 do
			local var40
			if 1 < i_6 then
				if i_6 == #tbl_6 then
					var40 = var40..", and "
				else
					var40 = var40..", "
				end
			end
			local worldSpacePosition = tbl_6[i_6].worldSpacePosition
			var40 = var40..string.format("{%.4f, %.4f, %.4f}", worldSpacePosition.X, worldSpacePosition.Y, worldSpacePosition.Z)
		end
		arg6:updateReasons(false, {string.format("Detected %s centered around: %s that increases %s bounding box. Remove the geometry or increase its size so that it is more visible", arg4, var40, arg5.Name)})
	end
end
local function getWorldPositions_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 168, Named "getWorldPositions"
	local module = {}
	for _, v_6 in arg5 do
		local arg6_result1 = arg6(v_6)
		local CFrame = arg6_result1.CFrame
		local var54 = arg6_result1.Size / arg6_result1.MeshSize
		for _, v_7 in arg1[v_6][arg4] do
			table.insert(module, {
				extents = v_7;
				worldSpacePosition = (CFrame) * ((arg2[v_6]:Inverse()) * ((v_7.min + v_7.max) / 2) / arg3[v_6] * var54);
			})
		end
	end
	return module
end
local AssetCalculator_upvr = require(Parent.util.AssetCalculator)
local getEditableMeshFromContext_upvr = require(Parent.util.getEditableMeshFromContext)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local getFFlagReportVisibilityAndIslandTelemetry_upvr = require(Parent.flags.getFFlagReportVisibilityAndIslandTelemetry)
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 203, Named "validateAccurateBoundingBox"
	--[[ Upvalues[12]:
		[1]: getPartNamesInAsset_upvr (readonly)
		[2]: AssetCalculator_upvr (readonly)
		[3]: calculateMeshScales_upvr (readonly)
		[4]: getEditableMeshFromContext_upvr (readonly)
		[5]: pcallDeferred_upvr (readonly)
		[6]: UGCValidationService_upvr (readonly)
		[7]: checkExtentsValid_upvr (readonly)
		[8]: getWorldPositions_upvr (readonly)
		[9]: FailureReasonsAccumulator_upvr (readonly)
		[10]: checkInflatingGeo_upvr (readonly)
		[11]: getFFlagReportVisibilityAndIslandTelemetry_upvr (readonly)
		[12]: Analytics_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assetTypeEnum_upvr_2 = arg2.assetTypeEnum
	assert(assetTypeEnum_upvr_2)
	local getPartNamesInAsset_upvr_result1 = getPartNamesInAsset_upvr(arg1, assetTypeEnum_upvr_2)
	local any_calculateAllTransformsForAsset_result1 = AssetCalculator_upvr.calculateAllTransformsForAsset(assetTypeEnum_upvr_2, arg1)
	local function findMeshHandle(arg1_4) -- Line 214
		--[[ Upvalues[2]:
			[1]: assetTypeEnum_upvr_2 (readonly)
			[2]: arg1 (readonly)
		]]
		if assetTypeEnum_upvr_2 == Enum.AssetType.DynamicHead then
			return arg1
		end
		return arg1:FindFirstChild(arg1_4)
	end
	if assetTypeEnum_upvr_2 ~= Enum.AssetType.DynamicHead and assetTypeEnum_upvr_2 ~= Enum.AssetType.Torso then
		for i_9, v_8 in AssetCalculator_upvr.calculateStraightenedLimb(assetTypeEnum_upvr_2, any_calculateAllTransformsForAsset_result1, findMeshHandle), nil do
			any_calculateAllTransformsForAsset_result1[i_9] = v_8
		end
	end
	local calculateMeshScales_upvr_result1 = calculateMeshScales_upvr(getPartNamesInAsset_upvr_result1, arg2, findMeshHandle)
	local tbl_5 = {}
	for _, v_9 in getPartNamesInAsset_upvr_result1 do
		local var153
		if assetTypeEnum_upvr_2 == Enum.AssetType.DynamicHead then
			var153 = arg1
		else
			var153 = arg1:FindFirstChild(v_9)
		end
		local var57_result1, var57_result2 = getEditableMeshFromContext_upvr(var153, "MeshId", arg2)
		if not var57_result1 then
			return false, {string.format("Failed to load mesh for '%s'. Make sure mesh exists and try again.", var153.Name)}
		end
		tbl_5[v_9] = var57_result2
	end
	local module_11_upvr = {}
	local module_7_upvr = {}
	local module_5_upvr = {}
	for i_11, v_10 in getPartNamesInAsset_upvr_result1 do
		table.insert(module_11_upvr, tbl_5[v_10])
		table.insert(module_7_upvr, any_calculateAllTransformsForAsset_result1[v_10])
		table.insert(module_5_upvr, calculateMeshScales_upvr_result1[v_10])
		local _
	end
	local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 255
		--[[ Upvalues[4]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: module_11_upvr (readonly)
			[3]: module_7_upvr (readonly)
			[4]: module_5_upvr (readonly)
		]]
		return UGCValidationService_upvr:GetBoundingBoxManipulationData(module_11_upvr, module_7_upvr, module_5_upvr)
	end, arg2)
	if not pcallDeferred_upvr_result1 then
		i_11 = "Could not get bounding box manipulation metrics for %s"
		v_10 = assetTypeEnum_upvr_2.Name
		i_11 = arg2.isServer
		if i_11 then
			i_11 = error
			v_10 = string.format(i_11, v_10)
			i_11(v_10)
		else
			i_11 = false
			v_10 = {}
			v_10[1] = string.format(i_11, v_10)
			return i_11, v_10
		end
	end
	local tbl_3 = {
		min = pcallDeferred_upvr_result2.minValidExtents;
		max = pcallDeferred_upvr_result2.maxValidExtents;
	}
	if not checkExtentsValid_upvr(tbl_3) then
		return false, {string.format("%s mesh is too small or made of disconnected pieces that are too small", assetTypeEnum_upvr_2.Name)}
	end
	for i_12, v_11 in pcallDeferred_upvr_result2.partsProblemGeos do
		({})[getPartNamesInAsset_upvr_result1[i_12]] = v_11
		local var167
	end
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	checkInflatingGeo_upvr(tbl_3, getWorldPositions_upvr(var167, any_calculateAllTransformsForAsset_result1, calculateMeshScales_upvr_result1, "smallIslands", getPartNamesInAsset_upvr_result1, findMeshHandle), 3, "small geometry", assetTypeEnum_upvr_2, any_new_result1)
	checkInflatingGeo_upvr(tbl_3, getWorldPositions_upvr(var167, any_calculateAllTransformsForAsset_result1, calculateMeshScales_upvr_result1, "skinnyTris", getPartNamesInAsset_upvr_result1, findMeshHandle), 3, "skinny triangle(s)", assetTypeEnum_upvr_2, any_new_result1)
	if getFFlagReportVisibilityAndIslandTelemetry_upvr() then
		if not any_new_result1:getFinalResults() then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateAccurateBoundingBox, nil, arg2)
		end
	end
	return any_new_result1:getFinalResults()
end