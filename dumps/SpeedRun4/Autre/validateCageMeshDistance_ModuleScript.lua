-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:01
-- Luau version 6, Types version 3
-- Time taken: 0.002188 seconds

local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
local getFIntUGCValidateCageMeshDistanceThreshold_upvr = require(Parent.flags.getFIntUGCValidateCageMeshDistanceThreshold)
local getFFlagUGCValidationHyperlinksInCageQuality_upvr = require(Parent.flags.getFFlagUGCValidationHyperlinksInCageQuality)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 17, Named "validateCageMeshDistance"
	--[[ Upvalues[5]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: getFIntUGCValidateCageMeshDistanceThreshold_upvr (readonly)
		[5]: getFFlagUGCValidationHyperlinksInCageQuality_upvr (readonly)
	]]
	local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 25
		--[[ Upvalues[6]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg4 (readonly)
			[6]: arg5 (readonly)
		]]
		return UGCValidationService_upvr:CalculateAverageEditableCageMeshDistance(arg1.editableMesh, arg2.editableMesh, arg3.editableMesh, arg4, arg5)
	end, arg6)
	if not pcallDeferred_upvr_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageMeshDistance_FailedToExecute, nil, arg6)
		local tbl = {string.format("Failed to execute cage mesh distance validation for '%s'. Make sure the cage mesh exists and try again.", arg3.fullName)}
		return false, tbl
	end
	tbl = true
	local var11 = tbl
	if getFIntUGCValidateCageMeshDistanceThreshold_upvr() < pcallDeferred_upvr_result2 * 100 or pcallDeferred_upvr_result2 < 0 then
		var11 = false
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageMeshDistance_OuterCageToMeshDistance, nil, arg6)
		if pcallDeferred_upvr_result2 < 0 then
			local var12 = "Average distance between outer cage to mesh is too high. Mesh seems to be outside of the outer cage."
			if getFFlagUGCValidationHyperlinksInCageQuality_upvr() then
				var12 = var12.."[Read more](https://create.roblox.com/docs/art/validation-errors#cageMeshDistance)"
			end
			table.insert({}, var12)
		else
			local formatted = string.format("Average distance between outer cage to mesh is too high (%.2f). Make adjustment to cage to fit the mesh better.", pcallDeferred_upvr_result2)
			if getFFlagUGCValidationHyperlinksInCageQuality_upvr() then
				formatted = formatted.."[Read more](https://create.roblox.com/docs/art/validation-errors#cageMeshDistance)"
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, formatted)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return var11, {}
end