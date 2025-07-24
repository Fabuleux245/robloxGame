-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:22
-- Luau version 6, Types version 3
-- Time taken: 0.002029 seconds

local Parent = script.Parent.Parent
local getFFlagFixValidateMeshComparisonErrorFormat_upvr = require(Parent.flags.getFFlagFixValidateMeshComparisonErrorFormat)
local ParseContentIds_upvr = require(Parent.util.ParseContentIds)
local function formatError_upvr(arg1, arg2, arg3) -- Line 15, Named "formatError"
	--[[ Upvalues[2]:
		[1]: getFFlagFixValidateMeshComparisonErrorFormat_upvr (readonly)
		[2]: ParseContentIds_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local function _(arg1_2) -- Line 16, Named "getContext"
		--[[ Upvalues[2]:
			[1]: getFFlagFixValidateMeshComparisonErrorFormat_upvr (copied, readonly)
			[2]: ParseContentIds_upvr (copied, readonly)
		]]
		local var4
		if var4 then
			var4 = arg1_2.fullName..'.'..arg1_2.fieldName
			return var4
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var4 = arg1_2.context.." mesh "
			return var4
		end
		if not arg1_2.context or not INLINED() then
			var4 = "mesh "
		end
		var4 = var4..ParseContentIds_upvr.tryGetAssetIdFromContentId(arg1_2.contentId)
		return var4
	end
	local var5
	if var5 then
		var5 = arg1.fullName
	else
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var5 = arg1.context.." mesh "
			return var5
		end
		if not arg1.context or not INLINED_2() then
			var5 = "mesh "
		end
		var5 = var5..ParseContentIds_upvr.tryGetAssetIdFromContentId(arg1.contentId)
	end
	local var6
	var6 = var6()
	if var6 then
		var6 = arg2.fullName
		var5 = var6..'.'..arg2.fieldName
	else
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var6 = arg2.context.." mesh "
			return var6
		end
		if not arg2.context or not INLINED_3() then
			var6 = "mesh "
		end
		var6 = var6..ParseContentIds_upvr.tryGetAssetIdFromContentId(arg2.contentId)
		var5 = var6
	end
	var6 = string.format("%s is more than max difference %.2f in size compared to the other mesh %s. You need to edit the model to adjust its size", var5, arg3, var5)
	return var6
end
local getMeshMinMax_upvr = require(Parent.util.getMeshMinMax)
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2, arg3, arg4) -- Line 37, Named "validateMeshComparison"
	--[[ Upvalues[3]:
		[1]: getMeshMinMax_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: formatError_upvr (readonly)
	]]
	local getMeshMinMax_upvr_result1_2, var7_result2, getMeshMinMax_upvr_result3, var7_result4_2 = getMeshMinMax_upvr(arg1, arg4)
	if not getMeshMinMax_upvr_result1_2 then
		return getMeshMinMax_upvr_result1_2, var7_result2
	end
	local getMeshMinMax_upvr_result1, getMeshMinMax_upvr_result2, var7_result3, var7_result4 = getMeshMinMax_upvr(arg2, arg4)
	if not getMeshMinMax_upvr_result1 then
		return getMeshMinMax_upvr_result1, getMeshMinMax_upvr_result2
	end
	if arg3 < (getMeshMinMax_upvr_result3 - var7_result3).Magnitude or arg3 < (var7_result4_2 - var7_result4).Magnitude then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshComparison, nil, arg4)
		return false, {formatError_upvr(arg1, arg2, arg3)}
	end
	return true
end