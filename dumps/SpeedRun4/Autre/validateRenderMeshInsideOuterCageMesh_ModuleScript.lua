-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:30
-- Luau version 6, Types version 3
-- Time taken: 0.002090 seconds

local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
local getFIntUGCValidateRenderMeshInsideOuterCageMeshThreshold_upvr = require(Parent.flags.getFIntUGCValidateRenderMeshInsideOuterCageMeshThreshold)
local getFFlagUGCValidationHyperlinksInCageQuality_upvr = require(Parent.flags.getFFlagUGCValidationHyperlinksInCageQuality)
return function(arg1, arg2, arg3, arg4) -- Line 18, Named "validateRenderMeshInsideOuterCageMesh"
	--[[ Upvalues[5]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: getFIntUGCValidateRenderMeshInsideOuterCageMeshThreshold_upvr (readonly)
		[5]: getFFlagUGCValidationHyperlinksInCageQuality_upvr (readonly)
	]]
	local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 29
		--[[ Upvalues[4]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
			[4]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:CalculateEditableMeshInsideMeshPercentage(arg2.editableMesh, arg3.editableMesh, arg1.CageOrigin:Inverse(), Vector3.new(1, 1, 1))
	end, arg4)
	if not pcallDeferred_upvr_result1 then
		local formatted = string.format("Failed to execute render mesh inside outer mesh check for '%s' and '%s'. Make sure the meshes exists and try again.", arg2.fullName, arg3.fullName)
		if arg4.isServer then
			error(formatted)
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateRenderMeshInsideOuterCageMesh_FailedToExecute, nil, arg4)
		return false, {formatted}
	end
	local var12 = pcallDeferred_upvr_result2 * 100
	if var12 < getFIntUGCValidateRenderMeshInsideOuterCageMeshThreshold_upvr() then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded, nil, arg4)
		local formatted_2 = string.format("Validation detected %d%% of the accessory is outside its outer cage. Make adjustments to have more of the accessory placed between the cages", 100 - math.floor(var12))
		if getFFlagUGCValidationHyperlinksInCageQuality_upvr() then
			formatted_2 = formatted_2.."[Read more](https://create.roblox.com/docs/art/validation-errors#cageInsideMesh)"
		end
		return false, {formatted_2}
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg4)
	return true
end