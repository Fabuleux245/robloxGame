-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:10
-- Luau version 6, Types version 3
-- Time taken: 0.001581 seconds

local Parent = script.Parent.Parent
local util = Parent.util
local flags = Parent.flags
local getEngineFeatureUGCValidationFullBodyFacs_upvr = require(flags.getEngineFeatureUGCValidationFullBodyFacs)
local getFIntUGCValidationAcceptableBodyFacsExpansion_upvr = require(flags.getFIntUGCValidationAcceptableBodyFacsExpansion)
local getExpectedPartSize_upvr = require(Parent.util.getExpectedPartSize)
local getEditableMeshFromContext_upvr = require(Parent.util.getEditableMeshFromContext)
local FailureReasonsAccumulator_upvr = require(util.FailureReasonsAccumulator)
local Analytics_upvr = require(Parent.Analytics)
local pcallDeferred_upvr = require(util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
return function(arg1, arg2) -- Line 21
	--[[ Upvalues[8]:
		[1]: getEngineFeatureUGCValidationFullBodyFacs_upvr (readonly)
		[2]: getFIntUGCValidationAcceptableBodyFacsExpansion_upvr (readonly)
		[3]: getExpectedPartSize_upvr (readonly)
		[4]: getEditableMeshFromContext_upvr (readonly)
		[5]: FailureReasonsAccumulator_upvr (readonly)
		[6]: Analytics_upvr (readonly)
		[7]: pcallDeferred_upvr (readonly)
		[8]: UGCValidationService_upvr (readonly)
	]]
	assert(getEngineFeatureUGCValidationFullBodyFacs_upvr())
	local Head = arg1.Head
	local var8_result1, var8_result2_upvr = getEditableMeshFromContext_upvr(Head, "MeshId", arg2)
	if not var8_result1 then
		return false, {"Could not load editable mesh for body FACS test."}
	end
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	for i, v in arg1 do
		if i ~= "Head" then
			local getEditableMeshFromContext_upvr_result1, var8_result2_upvr_2 = getEditableMeshFromContext_upvr(v, "MeshId", arg2)
			if not getEditableMeshFromContext_upvr_result1 then
				Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateEachBodyPartFacsBounds_FailedToExecute, nil, arg2)
				return false, {`Could not load {i} editable mesh for body FACS test.`}
			end
			local var24_upvr = getExpectedPartSize_upvr(Head, arg2) / getExpectedPartSize_upvr(Head, arg2, true)
			local var25_upvr = getExpectedPartSize_upvr(v, arg2) / getExpectedPartSize_upvr(v, arg2, true)
			local var26_upvr = getFIntUGCValidationAcceptableBodyFacsExpansion_upvr() / 100
			local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 59
				--[[ Upvalues[6]:
					[1]: UGCValidationService_upvr (copied, readonly)
					[2]: var8_result2_upvr (readonly)
					[3]: var8_result2_upvr_2 (readonly)
					[4]: var24_upvr (readonly)
					[5]: var25_upvr (readonly)
					[6]: var26_upvr (readonly)
				]]
				return UGCValidationService_upvr:ValidatePartBBoxAfterFullFacs(var8_result2_upvr, var8_result2_upvr_2, var24_upvr, var25_upvr, var26_upvr)
			end, arg2)
			if not pcallDeferred_upvr_result1 then
				Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateEachBodyPartFacsBounds_FailedToExecute, nil, arg2)
				return false, {`Could not get post-facs size of {i}.`}
			end
			if not pcallDeferred_upvr_result2 then
				any_new_result1:updateReasons(false, {`{i} is skinned to face joints in a way that can result in expanded size for some facial expressions. Please adjust your skinning or facial animation data.`})
			end
		end
	end
	local any_getFinalResults_result1, any_getFinalResults_result2 = any_new_result1:getFinalResults()
	if not any_getFinalResults_result1 then
		i = Analytics_upvr
		var25_upvr = Analytics_upvr
		v = var25_upvr.ErrorType
		i = v.validateEachBodyPartFacsBounds_ExtendedBounds
		v = nil
		var25_upvr = arg2
		i.reportFailure(i, v, var25_upvr)
	end
	return any_new_result1:getFinalResults()
end