-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:21
-- Luau version 6, Types version 3
-- Time taken: 0.001096 seconds

local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
local getFIntUGCValidationVertexDensityThreshold_upvr = require(Parent.flags.getFIntUGCValidationVertexDensityThreshold)
return function(arg1, arg2, arg3) -- Line 11, Named "validateMaxCubeDensity"
	--[[ Upvalues[4]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: getFIntUGCValidationVertexDensityThreshold_upvr (readonly)
	]]
	local isServer = arg2.isServer
	local var2_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 19
		--[[ Upvalues[3]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg3 (readonly)
		]]
		return UGCValidationService_upvr:GetEditableMeshMaxNearbyVerticesCollisions(arg1.editableMesh, arg3)
	end, arg2)
	if not var2_result1 then
		if isServer ~= nil and isServer then
			error(string.format("Failed to execute vertex density check for '%s'. Make sure mesh exists and try again.", arg1.fullName))
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateVertexDensity_FailedToExecute, nil, arg2)
		return false, {string.format("Failed to execute vertex density check for '%s'. Make sure mesh exists and try again.", arg1.fullName)}
	end
	if getFIntUGCValidationVertexDensityThreshold_upvr() < pcallDeferred_upvr_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateVertexDensity_MaxDensityExceeded, nil, arg2)
		return false, {"The maximum vertex density has been exceeded. Reduce the number of vertices that are very close to each other."}
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return true
end