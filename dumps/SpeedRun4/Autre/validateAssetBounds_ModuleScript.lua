-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:55
-- Luau version 6, Types version 3
-- Time taken: 0.006732 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local Constants_upvr = require(Parent.Constants)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local function forEachMeshPart_upvr(arg1, arg2, arg3, arg4) -- Line 16, Named "forEachMeshPart"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
	local var13
	if arg1 == nil then
		var13 = false
	else
		var13 = true
	end
	if (arg2 and arg3) == nil then
	else
	end
	if var13 == true then
	else
	end
	assert(true)
	-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 40 start (CF ANALYSIS FAILED)
	var13 = nil
	for _, v in arg1, nil, var13 do
		if not arg4(v) then
			return false
		end
	end
	do
		return true
	end
	-- KONSTANTERROR: [18] 15. Error Block 40 end (CF ANALYSIS FAILED)
end
local validateScaleType_upvr = require(Parent.validation.validateScaleType)
local function getScaleType_upvr(arg1, arg2, arg3, arg4) -- Line 50, Named "getScaleType"
	--[[ Upvalues[3]:
		[1]: forEachMeshPart_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: validateScaleType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var15
	if arg1 == nil then
		var15 = false
	else
		var15 = true
	end
	if (arg2 and arg3) == nil then
	else
	end
	if var15 == true then
	else
	end
	assert(true)
	local var16_upvw
	var15 = arg1
	if not forEachMeshPart_upvr(var15, arg2, arg3, function(arg1_2) -- Line 60
		--[[ Upvalues[1]:
			[1]: var16_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
		local AvatarPartScaleType = arg1_2:FindFirstChild("AvatarPartScaleType")
		assert(AvatarPartScaleType)
		local var19
		if not var19 then
			var16_upvw = AvatarPartScaleType
			-- KONSTANTWARNING: GOTO [23] #19
		end
		-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 12. Error Block 14 start (CF ANALYSIS FAILED)
		if var16_upvw.Value ~= AvatarPartScaleType.Value then
			var19 = false
		else
			var19 = true
		end
		do
			return var19
		end
		var19 = true
		do
			return var19
		end
		-- KONSTANTERROR: [13] 12. Error Block 14 end (CF ANALYSIS FAILED)
	end) then
		var15 = Analytics_upvr.reportFailure
		var15(Analytics_upvr.ErrorType.validateAssetBounds_InconsistentAvatarPartScaleType, nil, arg4)
		var15 = false
		return var15, {"All MeshParts must have the same value in their AvatarPartScaleType child. Please verify the values match."}, nil
	end
	var15 = validateScaleType_upvr(var16_upvw, arg4)
	local var14_result1, var14_result2 = validateScaleType_upvr(var16_upvw, arg4)
	if var14_result1 then
	else
	end
	return var14_result1, var14_result2, nil
end
local function validateMinBoundsInternal_upvr(arg1, arg2, arg3, arg4) -- Line 88, Named "validateMinBoundsInternal"
	--[[ Upvalues[2]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	local any_new_result1_2 = FailureReasonsAccumulator_upvr.new()
	for _, v_2 in {'X', 'Y', 'Z'} do
		local var29 = (arg3.maxMeshCorner - arg3.minMeshCorner)[v_2]
		local var30 = arg1[v_2]
		local var31
		if var30 > var29 then
			var31 = false
		else
			var31 = true
			local var32
		end
		if not var31 and not false then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateAssetBounds_AssetSizeTooSmall, nil, arg4)
		end
		local tbl = {}
		if arg2 then
			var32 = arg2.Name
		else
			var32 = "Full body"
		end
		tbl[1] = string.format("%s meshes %s axis size of '%.2f' is smaller than the min allowed bounding box %s axis size of '%.2f'. You need to scale up the meshes.", var32, v_2, var29, v_2, var30)
		any_new_result1_2:updateReasons(var31, tbl)
	end
	return any_new_result1_2:getFinalResults()
end
local function validateMaxBoundsInternal_upvr(arg1, arg2, arg3, arg4) -- Line 126, Named "validateMaxBoundsInternal"
	--[[ Upvalues[2]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	for _, v_3 in {'X', 'Y', 'Z'} do
		local var40 = (arg3.maxOverall - arg3.minOverall)[v_3]
		local var41 = arg1[v_3]
		local var42
		if var40 > var41 then
			var42 = false
		else
			var42 = true
			local var43
		end
		if not var42 and not false then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateAssetBounds_AssetSizeTooBig, nil, arg4)
		end
		local tbl_2 = {}
		if arg2 then
			var43 = arg2.Name
		else
			var43 = "Full body"
		end
		tbl_2[1] = string.format("%s meshes and joints %s axis size of '%.2f' is larger than the max allowed bounding box %s axis size of '%.2f'. You need to scale down the meshes/joints", var43, v_3, var40, v_3, var41)
		any_new_result1:updateReasons(var42, tbl_2)
	end
	return any_new_result1:getFinalResults()
end
local BoundsCalculator_upvr = require(Parent.util.BoundsCalculator)
return function(arg1, arg2, arg3) -- Line 164, Named "validateAssetBounds"
	--[[ Upvalues[7]:
		[1]: BoundsCalculator_upvr (readonly)
		[2]: getScaleType_upvr (readonly)
		[3]: FailureReasonsAccumulator_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: validateMinBoundsInternal_upvr (readonly)
		[6]: validateMaxBoundsInternal_upvr (readonly)
		[7]: Analytics_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assetTypeEnum = arg3.assetTypeEnum
	local var47
	if arg1 == nil then
		var47 = false
	else
		var47 = true
	end
	if (arg2 and assetTypeEnum) == nil then
	else
	end
	if var47 == true then
	else
	end
	assert(true)
	var47 = nil
	if arg1 then
		local _, _, any_calculateFullBodyBounds_result3 = BoundsCalculator_upvr.calculateFullBodyBounds(arg1, arg3)
		var47 = any_calculateFullBodyBounds_result3
		-- KONSTANTWARNING: GOTO [45] #38
	end
	local any_calculateAssetBounds_result1, any_calculateAssetBounds_result2, any_calculateAssetBounds_result3 = BoundsCalculator_upvr.calculateAssetBounds(arg2, arg3)
	local var54 = any_calculateAssetBounds_result1
	var47 = any_calculateAssetBounds_result3
	if not var54 then
		return var54, any_calculateAssetBounds_result2
	end
	local var55 = var47
	local getScaleType_upvr_result1, getScaleType_upvr_result2, getScaleType_result3 = getScaleType_upvr(arg1, arg2, assetTypeEnum, arg3)
	local var59 = getScaleType_upvr_result1
	local var60 = getScaleType_result3
	if not var59 then
		return var59, getScaleType_upvr_result2
	end
	local any_new_result1_3 = FailureReasonsAccumulator_upvr.new()
	local var62
	getScaleType_result3 = nil
	local var63 = getScaleType_result3
	if arg1 then
		var62 = Constants_upvr.FULL_BODY_BOUNDS[var60].minSize
		var63 = Constants_upvr.FULL_BODY_BOUNDS[var60].maxSize
	else
		var62 = Constants_upvr.ASSET_TYPE_INFO[assetTypeEnum].bounds[var60].minSize
		var63 = Constants_upvr.ASSET_TYPE_INFO[assetTypeEnum].bounds[var60].maxSize
	end
	any_new_result1_3:updateReasons(validateMinBoundsInternal_upvr(var62, assetTypeEnum, var55, arg3))
	any_new_result1_3:updateReasons(validateMaxBoundsInternal_upvr(var63, assetTypeEnum, var55, arg3))
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg3)
	return any_new_result1_3:getFinalResults()
end