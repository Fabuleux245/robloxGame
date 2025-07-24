-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:56
-- Luau version 6, Types version 3
-- Time taken: 0.029118 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local ConstantsTransparencyValidation_upvr = require(Parent.ConstantsTransparencyValidation)
local getEngineFeatureEditableImageDrawTriangleEnabled_upvr = require(Parent.flags.getEngineFeatureEditableImageDrawTriangleEnabled)
local getFFlagRefactorValidateAssetTransparency_upvr = require(Parent.flags.getFFlagRefactorValidateAssetTransparency)
local getFFlagUGCValidateFixTransparencyReporting_upvr = require(Parent.flags.getFFlagUGCValidateFixTransparencyReporting)
local function _() -- Line 40, Named "checkFlags"
	--[[ Upvalues[2]:
		[1]: getEngineFeatureEditableImageDrawTriangleEnabled_upvr (readonly)
		[2]: getFFlagRefactorValidateAssetTransparency_upvr (readonly)
	]]
	local var4_result1_2 = getEngineFeatureEditableImageDrawTriangleEnabled_upvr()
	if var4_result1_2 then
		var4_result1_2 = getFFlagRefactorValidateAssetTransparency_upvr()
	end
	return var4_result1_2
end
local function getViews_upvr() -- Line 44, Named "getViews"
	--[[ Upvalues[2]:
		[1]: getFFlagUGCValidateFixTransparencyReporting_upvr (readonly)
		[2]: ConstantsTransparencyValidation_upvr (readonly)
	]]
	local module_4 = {}
	local tbl_12 = {
		axis1 = Vector3.new(1, 0, 0);
	}
	local var10 = Vector3.new(0, 1, 0)
	tbl_12.axis2 = var10
	local var11
	if var11 then
		var10 = Vector3.new(0, 0, 1)
	else
		var10 = Vector3.new(0, 0, -1)
	end
	tbl_12.normal = var10
	var11 = ConstantsTransparencyValidation_upvr.CAMERA_ANGLES
	tbl_12.viewId = var11.Front
	local tbl_13 = {}
	var11 = Vector3.new(1, 0, 0)
	tbl_13.axis1 = var11
	var11 = Vector3.new(0, 1, 0)
	tbl_13.axis2 = var11
	if getFFlagUGCValidateFixTransparencyReporting_upvr() then
		var11 = Vector3.new(0, 0, -1)
	else
		var11 = Vector3.new(0, 0, 1)
	end
	tbl_13.normal = var11
	var11 = ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Back
	tbl_13.viewId = var11
	var11 = {}
	var11.axis1 = Vector3.new(0, 0, 1)
	var11.axis2 = Vector3.new(0, 1, 0)
	var11.normal = Vector3.new(-1, 0, 0)
	var11.viewId = ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Left
	module_4[1] = tbl_12
	module_4[2] = tbl_13
	module_4[3] = var11
	module_4[4] = {
		axis1 = Vector3.new(0, 0, 1);
		axis2 = Vector3.new(0, 1, 0);
		normal = Vector3.new(1, 0, 0);
		viewId = ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Right;
	}
	module_4[5] = {
		axis1 = Vector3.new(1, 0, 0);
		axis2 = Vector3.new(0, 0, 1);
		normal = Vector3.new(0, -1, 0);
		viewId = ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Top;
	}
	module_4[6] = {
		axis1 = Vector3.new(1, 0, 0);
		axis2 = Vector3.new(0, 0, 1);
		normal = Vector3.new(0, 1, 0);
		viewId = ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Bottom;
	}
	return module_4
end
local function _(arg1) -- Line 89, Named "getAvatarPartScaleType"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var16
	local AvatarPartScaleType = arg1:FindFirstChild("AvatarPartScaleType", true)
	if AvatarPartScaleType and AvatarPartScaleType:IsA("StringValue") and Constants_upvr.AvatarPartScaleTypes[AvatarPartScaleType.Value] then
		var16 = AvatarPartScaleType.Value
	end
	return var16
end
local function _(arg1, arg2) -- Line 101, Named "getAssetTypeMinSize"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var18
	local AvatarPartScaleType_4 = arg1:FindFirstChild("AvatarPartScaleType", true)
	if AvatarPartScaleType_4 and AvatarPartScaleType_4:IsA("StringValue") and Constants_upvr.AvatarPartScaleTypes[AvatarPartScaleType_4.Value] then
		var18 = AvatarPartScaleType_4.Value
	end
	local var20 = var18
	if not var20 then
		var18 = nil
		return var18
	end
	var18 = Constants_upvr.ASSET_TYPE_INFO[arg2].bounds[var20].minSize
	return var18
end
local function _(arg1, arg2) -- Line 109, Named "getBoundingBoxFace"
	local var21 = CFrame.fromMatrix(Vector3.new(0, 0, 0), arg2.axis1, arg2.axis2, arg2.normal:Abs()) * arg1
	return Vector2.new(var21.X, var21.Y)
end
local function _(arg1, arg2) -- Line 115, Named "calculateTargetPixelsPerStud"
	--[[ Upvalues[1]:
		[1]: ConstantsTransparencyValidation_upvr (readonly)
	]]
	return math.min(math.sqrt((ConstantsTransparencyValidation_upvr.AREA_OF_INTEREST_TARGET_PIXELS) / (arg1.X * arg1.Y)), ConstantsTransparencyValidation_upvr.ASSET_TRANSPARENCY_MAX_RASTER_SIZE / math.max(arg2.X, arg2.Y))
end
local function _(arg1, arg2) -- Line 126, Named "rasterSizeFromViewSpaceSize"
	local var22 = arg2 * arg1
	return Vector2.new(math.floor(var22.X + 0.001), math.floor(var22.Y + 0.001))
end
local function _(arg1, arg2) -- Line 134, Named "getAspectRatio"
	--[[ Upvalues[1]:
		[1]: ConstantsTransparencyValidation_upvr (readonly)
	]]
	if arg2 == ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Front or arg2 == ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Back then
		return arg1.X / arg1.Y
	end
	if arg2 == ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Left or arg2 == ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Right then
		return arg1.Z / arg1.Y
	end
	return arg1.X / arg1.Z
end
local function getScaleFactor_upvr(arg1, arg2) -- Line 152, Named "getScaleFactor"
	--[[ Upvalues[1]:
		[1]: ConstantsTransparencyValidation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var23
	if arg2 == ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Front or arg2 == ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Back then
		var23 = arg1.X / arg1.Y
	elseif arg2 == ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Left or arg2 == ConstantsTransparencyValidation_upvr.CAMERA_ANGLES.Right then
		var23 = arg1.Z / arg1.Y
	else
		var23 = arg1.X / arg1.Z
	end
	if 1 < var23 then
	elseif var23 < 1 then
	else
	end
	local vector2_3 = Vector2.new(ConstantsTransparencyValidation_upvr.ASSET_TRANSPARENCY_RASTER_SIZE / ConstantsTransparencyValidation_upvr.ASSET_TRANSPARENCY_RASTER_SIZE, ConstantsTransparencyValidation_upvr.ASSET_TRANSPARENCY_RASTER_SIZE / ConstantsTransparencyValidation_upvr.ASSET_TRANSPARENCY_RASTER_SIZE)
	local maximum = math.max(vector2_3.X, vector2_3.Y)
	if 1 < maximum then
		return vector2_3 / maximum
	end
	return vector2_3
end
local TransparencyUtil_upvr = require(Parent.util.TransparencyUtil)
local function addTransformedTriangle_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 179, Named "addTransformedTriangle"
	--[[ Upvalues[2]:
		[1]: getFFlagUGCValidateFixTransparencyReporting_upvr (readonly)
		[2]: TransparencyUtil_upvr (readonly)
	]]
	local module_5 = {
		orderedVerts = {};
	}
	local any_GetFaceVertices_result1 = arg1:GetFaceVertices(arg3)
	local any_GetPosition_result1_2 = arg1:GetPosition(any_GetFaceVertices_result1[1])
	local any_GetPosition_result1_3 = arg1:GetPosition(any_GetFaceVertices_result1[2])
	local any_GetPosition_result1 = arg1:GetPosition(any_GetFaceVertices_result1[3])
	if getFFlagUGCValidateFixTransparencyReporting_upvr() then
		local any_transformTriangleToWorld_result1, any_transformTriangleToWorld_result2, any_transformTriangleToWorld_result3, any_transformTriangleToWorld_result4 = TransparencyUtil_upvr.transformTriangleToWorld(any_GetPosition_result1_2, any_GetPosition_result1_3, any_GetPosition_result1, arg4, arg5)
		table.insert(module_5.orderedVerts, any_transformTriangleToWorld_result1)
		table.insert(module_5.orderedVerts, any_transformTriangleToWorld_result2)
		table.insert(module_5.orderedVerts, any_transformTriangleToWorld_result3)
		module_5.normal = any_transformTriangleToWorld_result4
	else
		module_5.normal = any_GetPosition_result1_3 - any_GetPosition_result1_2:Cross(any_GetPosition_result1 - any_GetPosition_result1_2).Unit
		table.insert(module_5.orderedVerts, arg4 * any_GetPosition_result1_2)
		table.insert(module_5.orderedVerts, arg4 * any_GetPosition_result1_3)
		table.insert(module_5.orderedVerts, arg4 * any_GetPosition_result1)
	end
	table.insert(arg2, module_5)
	return module_5
end
local function updateMinMaxBounds_upvr(arg1, arg2) -- Line 222, Named "updateMinMaxBounds"
	local _1 = arg2.orderedVerts[1]
	local _2 = arg2.orderedVerts[2]
	local _3 = arg2.orderedVerts[3]
	arg1.min = Vector3.new(math.min(_1.X, _2.X, _3.X, arg1.min.X), math.min(_1.Y, _2.Y, _3.Y, arg1.min.Y), math.min(_1.Z, _2.Z, _3.Z, arg1.min.Z))
	arg1.max = Vector3.new(math.max(_1.X, _2.X, _3.X, arg1.max.X), math.max(_1.Y, _2.Y, _3.Y, arg1.max.Y), math.max(_1.Z, _2.Z, _3.Z, arg1.max.Z))
end
local tryYield_upvr = require(Parent.util.tryYield)
local function getCombinedMeshData_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 245, Named "getCombinedMeshData"
	--[[ Upvalues[4]:
		[1]: addTransformedTriangle_upvr (readonly)
		[2]: getFFlagUGCValidateFixTransparencyReporting_upvr (readonly)
		[3]: updateMinMaxBounds_upvr (readonly)
		[4]: tryYield_upvr (readonly)
	]]
	for _, v in arg1:GetFaces(), nil do
		local var44
		if getFFlagUGCValidateFixTransparencyReporting_upvr() then
			var44 = arg5
		else
			var44 = nil
		end
		updateMinMaxBounds_upvr(arg4, addTransformedTriangle_upvr(arg1, arg2, v, arg3, var44))
		tryYield_upvr(arg6)
	end
end
local function getOpacity_upvr(arg1) -- Line 268, Named "getOpacity"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_ReadPixelsBuffer_result1 = arg1:ReadPixelsBuffer(Vector2.new(0, 0), arg1.Size)
	local var50
	for i_2 = 0, buffer.len(any_ReadPixelsBuffer_result1) - 1, 4 do
		if buffer.readu8(any_ReadPixelsBuffer_result1, i_2) == 0 and buffer.readu8(any_ReadPixelsBuffer_result1, i_2 + 1) == 0 and buffer.readu8(any_ReadPixelsBuffer_result1, i_2 + 2) == 0 then
		end
		var50 += 1
	end
	if var50 == 0 then
		return false, 0
	end
	return true, 1 - (0 + 1) / var50
end
local function getSubregionVisibility_upvr(arg1, arg2, arg3, arg4) -- Line 291, Named "getSubregionVisibility"
	--[[ Upvalues[1]:
		[1]: ConstantsTransparencyValidation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var56
	if arg4 then
		local var57 = Vector2.one - arg4
		local any_Dot_result1_2 = arg2:Dot(arg4)
		local any_Dot_result1 = arg2:Dot(var57)
		var56 = Vector2.one
		var56 = ConstantsTransparencyValidation_upvr.DISTRIBUTION_SLICE_MAX
		local var60 = any_Dot_result1 * var56
		var56 = 0
		for i_3 = 0, any_Dot_result1_2 do
			var56 += math.min(arg3:GetAreaDensity(arg1 + arg4 * i_3, var57 * any_Dot_result1:Max(var56)), var60)
			local var61
		end
		local DISTRIBUTION_SCORE_WEIGHT = ConstantsTransparencyValidation_upvr.DISTRIBUTION_SCORE_WEIGHT
	end
	return (var56) / (var60 * any_Dot_result1_2) * DISTRIBUTION_SCORE_WEIGHT + (arg3:GetAreaDensity(arg1, arg2)) / (arg2.X * arg2.Y) * (1 - DISTRIBUTION_SCORE_WEIGHT)
end
local SummedAreaTable_upvr = require(Parent.util.SummedAreaTable)
local function getHighestSubregionVisibility_upvr(arg1, arg2, arg3) -- Line 327, Named "getHighestSubregionVisibility"
	--[[ Upvalues[3]:
		[1]: SummedAreaTable_upvr (readonly)
		[2]: ConstantsTransparencyValidation_upvr (readonly)
		[3]: getSubregionVisibility_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var72
	if arg2.X * arg2.Y <= 0 then
		return 0
	end
	var72 = SummedAreaTable_upvr
	var72 = arg1.Size
	local any_new_result1 = var72.new(var72, function(arg1_2) -- Line 333
		if 0 < arg1_2.R or 0 < arg1_2.G or 0 < arg1_2.B then
			return 1
		end
		return 0
	end)
	var72 = any_new_result1:BuildSummedAreaTable
	var72(arg1)
	var72 = nil
	if ConstantsTransparencyValidation_upvr.DISTRIBUTION_ASPECT_CUTOFF then
		if ConstantsTransparencyValidation_upvr.DISTRIBUTION_ASPECT_CUTOFF <= arg2.X / arg2.Y then
			var72 = Vector2.xAxis
		elseif ConstantsTransparencyValidation_upvr.DISTRIBUTION_ASPECT_CUTOFF <= arg2.Y / arg2.X then
			var72 = Vector2.yAxis
		end
	end
	for i_4 = 0, arg1.Size.Y - arg2.Y do
		for i_5 = 0, arg1.Size.X - arg2.X do
			local getSubregionVisibility_result1 = getSubregionVisibility_upvr(Vector2.new(i_5, i_4), arg2, any_new_result1, var72)
			if arg3 <= getSubregionVisibility_result1 then
				return getSubregionVisibility_result1
			end
		end
	end
	return math.max(0, getSubregionVisibility_result1)
end
local function checkPartsTransparency_upvr(arg1) -- Line 370, Named "checkPartsTransparency"
	local tbl_4 = {}
	for i_6, v_2 in arg1 do
		if v_2.Transparency ~= 0 then
			table.insert(tbl_4, v_2.Name)
		end
	end
	if 0 < #tbl_4 then
		local module_3 = {}
		i_6 = "The following parts have a non-zero transparency: %s. Part transparency should always be exactly zero."
		v_2 = table.concat(tbl_4, ", ")
		module_3[1] = string.format(i_6, v_2)
		return false, module_3
	end
	return true, {}
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixNonZeroTransparency", false)
local BoundsCalculator_upvr = require(Parent.util.BoundsCalculator)
local getEditableMeshFromContext_upvr = require(Parent.util.getEditableMeshFromContext)
local getExpectedPartSize_upvr = require(Parent.util.getExpectedPartSize)
local getFFlagUGCValidateMinBoundsVisibility_upvr = require(Parent.flags.getFFlagUGCValidateMinBoundsVisibility)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local RasterUtil_upvr = require(Parent.util.RasterUtil)
local getFFlagReportVisibilityAndIslandTelemetry_upvr = require(Parent.flags.getFFlagReportVisibilityAndIslandTelemetry)
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 391, Named "validateAssetTransparency"
	--[[ Upvalues[20]:
		[1]: getEngineFeatureEditableImageDrawTriangleEnabled_upvr (readonly)
		[2]: getFFlagRefactorValidateAssetTransparency_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: checkPartsTransparency_upvr (readonly)
		[5]: BoundsCalculator_upvr (readonly)
		[6]: getEditableMeshFromContext_upvr (readonly)
		[7]: getFFlagUGCValidateFixTransparencyReporting_upvr (readonly)
		[8]: getExpectedPartSize_upvr (readonly)
		[9]: getCombinedMeshData_upvr (readonly)
		[10]: getFFlagUGCValidateMinBoundsVisibility_upvr (readonly)
		[11]: Constants_upvr (readonly)
		[12]: FailureReasonsAccumulator_upvr (readonly)
		[13]: getViews_upvr (readonly)
		[14]: ConstantsTransparencyValidation_upvr (readonly)
		[15]: RasterUtil_upvr (readonly)
		[16]: getHighestSubregionVisibility_upvr (readonly)
		[17]: getFFlagReportVisibilityAndIslandTelemetry_upvr (readonly)
		[18]: Analytics_upvr (readonly)
		[19]: getScaleFactor_upvr (readonly)
		[20]: getOpacity_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var4_result1 = getEngineFeatureEditableImageDrawTriangleEnabled_upvr()
	if var4_result1 then
		var4_result1 = getFFlagRefactorValidateAssetTransparency_upvr()
	end
	if not var4_result1 then
		return true
	end
	local assetTypeEnum = arg2.assetTypeEnum
	local tbl_5 = {}
	if arg1:IsA("MeshPart") then
		if arg2.assetTypeEnum == Enum.AssetType.DynamicHead then
			table.insert(tbl_5, arg1)
			-- KONSTANTWARNING: GOTO [83] #61
		end
	end
	if arg1:IsA("Folder") then
		if arg2.assetTypeEnum == Enum.AssetType.DynamicHead then
		else
		end
	end
	assert(true, string.format("BodyPart %s is not in the correct format.", arg1:GetFullName()))
	for i_7, v_3 in arg1:GetChildren() do
		assert(v_3:IsA("MeshPart"), string.format("BodyPart %s contained child that is not a MeshPart.", arg1:GetFullName()))
		table.insert(tbl_5, v_3)
		local var207
	end
	if game_DefineFastFlag_result1_upvr then
		i_7 = var207
		local checkPartsTransparency_result1_2, checkPartsTransparency_result2_2 = checkPartsTransparency_upvr(i_7)
		if not checkPartsTransparency_result1_2 then
			checkPartsTransparency_result2_2 = checkPartsTransparency_result2_2
			return false, checkPartsTransparency_result2_2
		end
	end
	local any_calculateIndividualAssetPartsData_result1_2, any_calculateIndividualAssetPartsData_result2, any_calculateIndividualAssetPartsData_result3_2 = BoundsCalculator_upvr.calculateIndividualAssetPartsData(arg1, arg2)
	if not any_calculateIndividualAssetPartsData_result1_2 then
		return false, any_calculateIndividualAssetPartsData_result2
	end
	local tbl_6 = {}
	local tbl = {
		min = Vector3.new(math.huge, math.huge, math.huge);
		max = Vector3.new((-math.huge), (-math.huge), (-math.huge));
	}
	for _, v_4 in var207 do
		local getEditableMeshFromContext_upvr_result1, getEditableMeshFromContext_upvr_result2 = getEditableMeshFromContext_upvr(v_4, "MeshId", arg2)
		if not getEditableMeshFromContext_upvr_result1 then
			return false, {string.format("Failed to load mesh for MeshPart '%s'. Make sure mesh exists and try again.", v_4.Name)}
		end
		getEditableMeshFromContext_upvr_result2:Triangulate()
		local var218
		if getFFlagUGCValidateFixTransparencyReporting_upvr() then
			var218 = getExpectedPartSize_upvr(v_4, arg2) / getExpectedPartSize_upvr(v_4, arg2, true)
		end
		getCombinedMeshData_upvr(getEditableMeshFromContext_upvr_result2, tbl_6, any_calculateIndividualAssetPartsData_result3_2[v_4.Name].cframe, tbl, var218, arg2)
	end
	if (tbl.max - tbl.min).Magnitude == 0 then
		return false, {string.format("Meshes %s should not have zero size", assetTypeEnum.Name)}
	end
	if getFFlagUGCValidateMinBoundsVisibility_upvr() then
		local var220 = tbl.max - tbl.min
		local min_2 = tbl.min
		local AvatarPartScaleType_3 = arg1:FindFirstChild("AvatarPartScaleType", true)
		if AvatarPartScaleType_3 and AvatarPartScaleType_3:IsA("StringValue") and Constants_upvr.AvatarPartScaleTypes[AvatarPartScaleType_3.Value] then
		end
		local Value = AvatarPartScaleType_3.Value
		if not Value then
			min_2 = nil
		else
			min_2 = Constants_upvr.ASSET_TYPE_INFO[assetTypeEnum].bounds[Value].minSize
		end
		if not min_2 then
			return false, {}
		end
		local any_Max_result1 = var220:Max(min_2)
		for i_9, v_5 in getViews_upvr(), nil do
			if #tbl_6 == 0 then
				FailureReasonsAccumulator_upvr.new():updateReasons(false, {string.format("Mesh for %s has no triangles.", assetTypeEnum.Name)})
			else
				local var226 = CFrame.fromMatrix(Vector3.new(0, 0, 0), v_5.axis1, v_5.axis2, v_5.normal:Abs()) * any_Max_result1
				local vector2_4 = Vector2.new(var226.X, var226.Y)
				local var228 = CFrame.fromMatrix(Vector3.new(0, 0, 0), v_5.axis1, v_5.axis2, v_5.normal:Abs()) * min_2
				local vector2_5 = Vector2.new(var228.X, var228.Y)
				local minimum_2 = math.min(math.sqrt((ConstantsTransparencyValidation_upvr.AREA_OF_INTEREST_TARGET_PIXELS) / (vector2_5.X * vector2_5.Y)), ConstantsTransparencyValidation_upvr.ASSET_TRANSPARENCY_MAX_RASTER_SIZE / math.max(vector2_4.X, vector2_4.Y))
				local var231 = vector2_4 * minimum_2
				local var232 = vector2_5 * minimum_2
				local any_rasterMesh_result1_3 = RasterUtil_upvr.rasterMesh(tbl_6, Vector2.new(math.floor(var231.X + 0.001), math.floor(var231.Y + 0.001)), v_5, min_2 + var220 / 2, any_Max_result1, arg2)
				local var234 = ConstantsTransparencyValidation_upvr.ASSET_TRANSPARENCY_THRESHOLDS[assetTypeEnum][v_5.viewId]
				local getHighestSubregionVisibility_result1_2 = getHighestSubregionVisibility_upvr(any_rasterMesh_result1_3, Vector2.new(math.floor(var232.X + 0.001), math.floor(var232.Y + 0.001)), var234)
				any_rasterMesh_result1_3:Destroy()
				if getHighestSubregionVisibility_result1_2 == 0 and 0 < var234 then
					FailureReasonsAccumulator_upvr.new():updateReasons(false, {string.format("Mesh for %s is completely invisible from the %s.", assetTypeEnum.Name, v_5.viewId)})
				elseif getHighestSubregionVisibility_result1_2 < var234 then
					FailureReasonsAccumulator_upvr.new():updateReasons(false, {string.format("%s is not visible enough from the %s. The most visible region found, scored %.2f but needs to be above %.2f.", assetTypeEnum.Name, v_5.viewId, getHighestSubregionVisibility_result1_2, var234)})
				end
			end
		end
		if getFFlagReportVisibilityAndIslandTelemetry_upvr() and not FailureReasonsAccumulator_upvr.new():getFinalResults() then
			i_9 = Analytics_upvr
			i_9 = arg2
			Analytics_upvr.reportFailure(i_9.ErrorType.validateAssetTransparency_AssetTransparencyThresholds, nil, i_9)
		end
		return FailureReasonsAccumulator_upvr.new():getFinalResults()
	end
	for i_10, v_6 in getViews_upvr(), nil do
		if #tbl_6 == 0 then
			i_9 = false
			v_5 = {}
			local var238 = v_5
			var238[1] = string.format("Mesh for %s has no triangles.", assetTypeEnum.Name)
			FailureReasonsAccumulator_upvr.new():updateReasons(i_9, var238)
		else
			local var239 = tbl.max - tbl.min
			local any_rasterMesh_result1 = RasterUtil_upvr.rasterMesh(tbl_6, Vector2.new(ConstantsTransparencyValidation_upvr.ASSET_TRANSPARENCY_RASTER_SIZE, ConstantsTransparencyValidation_upvr.ASSET_TRANSPARENCY_RASTER_SIZE) * getScaleFactor_upvr(var239, v_6.viewId), v_6, tbl.min + var239 / 2, var239, arg2)
			local var241 = ConstantsTransparencyValidation_upvr.ASSET_TRANSPARENCY_THRESHOLDS[assetTypeEnum][v_6.viewId]
			local getOpacity_upvr_result1, getOpacity_upvr_result2 = getOpacity_upvr(any_rasterMesh_result1)
			if not getOpacity_upvr_result1 then
				FailureReasonsAccumulator_upvr.new():updateReasons(false, {string.format("Mesh for %s is completely invisible.", assetTypeEnum.Name)})
				any_rasterMesh_result1:Destroy()
				local var245
			else
				if getOpacity_upvr_result2 < var241 then
					local tbl_10 = {}
					if getFFlagUGCValidateFixTransparencyReporting_upvr() then
						var245 = string.format("%s is not opaque enough from the %s. Opacity is %.2f but needs to be above %.2f.", assetTypeEnum.Name, v_6.viewId, getOpacity_upvr_result2, var241)
						local var247 = var245
					else
						var247 = string.format("%s is not opague enough. Opacity is %f but needs to be above %f.", assetTypeEnum.Name, getOpacity_upvr_result2, var241)
					end
					tbl_10[1] = var247
					FailureReasonsAccumulator_upvr.new():updateReasons(false, tbl_10)
				end
				any_rasterMesh_result1:Destroy()
			end
		end
	end
	if getFFlagReportVisibilityAndIslandTelemetry_upvr() and not FailureReasonsAccumulator_upvr.new():getFinalResults() then
		i_10 = Analytics_upvr
		i_10 = arg2
		Analytics_upvr.reportFailure(i_10.ErrorType.validateAssetTransparency_AssetTransparencyThresholds, nil, i_10)
	end
	return FailureReasonsAccumulator_upvr.new():getFinalResults()
end