-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:17
-- Luau version 6, Types version 3
-- Time taken: 0.001974 seconds

local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
local getFIntUGCLCCagingRelevancyMinimum_upvr = require(Parent.flags.getFIntUGCLCCagingRelevancyMinimum)
local getFFlagUGCValidationHyperlinksInCageQuality_upvr = require(Parent.flags.getFFlagUGCValidationHyperlinksInCageQuality)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 12, Named "validateLCCagingRelevancy"
	--[[ Upvalues[5]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: getFIntUGCLCCagingRelevancyMinimum_upvr (readonly)
		[5]: getFFlagUGCValidationHyperlinksInCageQuality_upvr (readonly)
	]]
	local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2, pcallDeferred_upvr_result3 = pcallDeferred_upvr(function() -- Line 20
		--[[ Upvalues[6]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg4 (readonly)
			[6]: arg5 (readonly)
		]]
		return UGCValidationService_upvr:GetEditableCagingRelevancyMetrics(arg1.editableMesh, arg2.editableMesh, arg3.editableMesh, arg4, arg5)
	end, arg6)
	if not pcallDeferred_upvr_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCagingRelevancy_FailedToExecute, nil, arg6)
		return false, {string.format("Failed to execute cage relevancy detection for '%s'. Make sure the cage mesh exists and try again.", arg3.fullName)}
	end
	if pcallDeferred_upvr_result3 == 0 then
		return true
	end
	local floored = math.floor(100 * pcallDeferred_upvr_result2 / pcallDeferred_upvr_result3)
	if floored < getFIntUGCLCCagingRelevancyMinimum_upvr() then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCagingRelevancy_IrrelevantCaging, nil, arg6)
		local var13 = "Validation detected %d%% of the outer cage edits do not cover the accessory. Make sure you are moving the outer cage only where needed."
		if getFFlagUGCValidationHyperlinksInCageQuality_upvr() then
			var13 = var13.."[Read more](https://create.roblox.com/docs/art/validation-errors#cageRelevancy)"
		end
		return false, {string.format(var13, 100 - floored)}
	end
	return true
end