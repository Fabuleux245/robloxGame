-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:49
-- Luau version 6, Types version 3
-- Time taken: 0.002753 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local util = Parent.util
local FailureReasonsAccumulator_upvr = require(util.FailureReasonsAccumulator)
local module_2_upvr = {}
local floatEquals_upvr = require(util.floatEquals)
function module_2_upvr.validateMeshMin(arg1, arg2) -- Line 23
	--[[ Upvalues[1]:
		[1]: floatEquals_upvr (readonly)
	]]
	local var12
	for i, v in {'X', 'Y', 'Z'} do
		local var13
		if floatEquals_upvr(arg1[v], 0, 0.0001) then
			if 0 < #var13 then
				var13 = var13..". "
			else
				var13 = ""
			end
			var13 = var13.."Size on "..v.." axis is zero"
		end
	end
	if not nil then
		local module = {}
		i = "Render mesh for "
		v = arg2
		module[1] = i..v..": "..var13..". Increase the size of the mesh"
		return false, module
	end
	return true
end
local getExpectedPartSize_upvr = require(util.getExpectedPartSize)
local getFFlagUGCValidateMeshMin_upvr = require(Parent.flags.getFFlagUGCValidateMeshMin)
function module_2_upvr.validateInternal(arg1, arg2, arg3) -- Line 42
	--[[ Upvalues[5]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: getExpectedPartSize_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: getFFlagUGCValidateMeshMin_upvr (readonly)
		[5]: Analytics_upvr (readonly)
	]]
	local any_new_result1_2 = FailureReasonsAccumulator_upvr.new()
	local any_validateMeshMin_result1, any_validateMeshMin_result2 = module_2_upvr.validateMeshMin(getExpectedPartSize_upvr(arg1, arg2, true), arg1.Name)
	any_new_result1_2:updateReasons(any_validateMeshMin_result1, any_validateMeshMin_result2)
	if not any_validateMeshMin_result1 and getFFlagUGCValidateMeshMin_upvr() and arg3 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateBodyBlockingTests_ZeroMeshSize, nil, arg2)
	end
	return any_new_result1_2:getFinalResults()
end
function module_2_upvr.validateAll(arg1, arg2) -- Line 66
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 23. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 23. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 8. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [26.9]
	-- KONSTANTERROR: [8] 8. Error Block 2 end (CF ANALYSIS FAILED)
end
local Constants_upvr = require(Parent.Constants)
function module_2_upvr.validate(arg1, arg2) -- Line 86
	--[[ Upvalues[4]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: Analytics_upvr (readonly)
	]]
	local assetTypeEnum = arg2.assetTypeEnum
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	if Enum.AssetType.DynamicHead == assetTypeEnum then
		any_new_result1:updateReasons(module_2_upvr.validateInternal(arg1, arg2, true))
	else
		for i_2 in pairs(Constants_upvr.ASSET_TYPE_INFO[assetTypeEnum].subParts) do
			local SOME = arg1:FindFirstChild(i_2)
			assert(SOME)
			any_new_result1:updateReasons(module_2_upvr.validateInternal(SOME, arg2, true))
		end
	end
	i_2 = arg2
	Analytics_upvr.recordScriptTime(script.Name, tick(), i_2)
	return any_new_result1:getFinalResults()
end
return module_2_upvr