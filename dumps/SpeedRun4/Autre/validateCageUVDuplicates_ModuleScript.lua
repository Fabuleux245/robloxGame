-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:02
-- Luau version 6, Types version 3
-- Time taken: 0.001674 seconds

local Parent = script.Parent.Parent
local WrapTargetCageUVReferenceValues_upvr = require(Parent.WrapTargetCageUVReferenceValues)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
local getFIntUGCValidateCageDuplicateUVThreshold_upvr = require(Parent.flags.getFIntUGCValidateCageDuplicateUVThreshold)
local getFFlagUGCValidationHyperlinksInCageQuality_upvr = require(Parent.flags.getFFlagUGCValidationHyperlinksInCageQuality)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
return function(arg1, arg2, arg3, arg4) -- Line 19, Named "validateCageUVDuplicates"
	--[[ Upvalues[7]:
		[1]: WrapTargetCageUVReferenceValues_upvr (readonly)
		[2]: pcallDeferred_upvr (readonly)
		[3]: UGCValidationService_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: getFIntUGCValidateCageDuplicateUVThreshold_upvr (readonly)
		[6]: getFFlagUGCValidationHyperlinksInCageQuality_upvr (readonly)
		[7]: FailureReasonsAccumulator_upvr (readonly)
	]]
	local tbl = {}
	for _, v in pairs(WrapTargetCageUVReferenceValues_upvr) do
		for _, v_2 in pairs(v) do
			table.insert(tbl, v_2)
		end
	end
	local function checkCageUV(arg1_2, arg2_2, arg3_2) -- Line 32
		--[[ Upvalues[7]:
			[1]: pcallDeferred_upvr (copied, readonly)
			[2]: UGCValidationService_upvr (copied, readonly)
			[3]: arg4 (readonly)
			[4]: Analytics_upvr (copied, readonly)
			[5]: arg3 (readonly)
			[6]: getFIntUGCValidateCageDuplicateUVThreshold_upvr (copied, readonly)
			[7]: getFFlagUGCValidationHyperlinksInCageQuality_upvr (copied, readonly)
		]]
		local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 37
			--[[ Upvalues[3]:
				[1]: UGCValidationService_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: arg2_2 (readonly)
			]]
			return UGCValidationService_upvr:ValidateEditableMeshUVDuplicates(arg1_2, arg2_2.editableMesh)
		end, arg4)
		if not pcallDeferred_upvr_result1 then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageUVDuplicate_FailedToExecute, nil, arg4)
			return false, {string.format("Failed to load UVs for Inner cage of '%s'. Make sure the UV map exists and try again.", arg3.fullName)}
		end
		local var28
		if var28 < pcallDeferred_upvr_result2 then
			var28 = Analytics_upvr.reportFailure
			local var29 = arg4
			var28(Analytics_upvr.ErrorType.validateCageUVDuplicate_UnexpectedUVValue, nil, var29)
			var28 = string.format
			if arg3_2 then
				var29 = "inner"
			else
				var29 = "outer"
			end
			var28 = var28("There are %d UV values in %s cage that do not belong to the template. Please correct the cage UV.", pcallDeferred_upvr_result2, var29)
			if getFFlagUGCValidationHyperlinksInCageQuality_upvr() then
				var28 = var28.."[Read more](https://create.roblox.com/docs/art/validation-errors#cageExtraUvs)"
			end
			return false, {var28}
		end
		return true
	end
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	any_new_result1:updateReasons(checkCageUV(tbl, arg1, true))
	any_new_result1:updateReasons(checkCageUV(tbl, arg2, false))
	return any_new_result1:getFinalResults()
end