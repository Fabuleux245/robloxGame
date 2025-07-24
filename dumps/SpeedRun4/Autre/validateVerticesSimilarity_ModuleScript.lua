-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:39
-- Luau version 6, Types version 3
-- Time taken: 0.002078 seconds

local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
local getFIntUGCLCCageVerticesSimilarityMaximum_upvr = require(Parent.flags.getFIntUGCLCCageVerticesSimilarityMaximum)
local getFFlagUGCValidationHyperlinksInCageQuality_upvr = require(Parent.flags.getFFlagUGCValidationHyperlinksInCageQuality)
return function(arg1, arg2, arg3, arg4) -- Line 15, Named "validateVerticesSimilarity"
	--[[ Upvalues[5]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: getFIntUGCLCCageVerticesSimilarityMaximum_upvr (readonly)
		[5]: getFFlagUGCValidationHyperlinksInCageQuality_upvr (readonly)
	]]
	local isServer = arg2.isServer
	local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 25
		--[[ Upvalues[3]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg3 (readonly)
		]]
		return UGCValidationService_upvr:GetEditableMeshVerticesSimilarityRate(arg1.editableMesh, arg3)
	end, arg2)
	if not pcallDeferred_upvr_result1 then
		if isServer ~= nil and isServer then
			error(string.format("Failed to execute similarity mesh vertex check for '%s'. Make sure mesh exists and try again.", arg1.fullName))
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateVerticesSimilarity_FailedToExecute, nil, arg2)
		return false, {string.format("Failed to execute similarity mesh vertex check for '%s'. Make sure mesh exists and try again.", arg1.fullName)}
	end
	local floored = math.floor(pcallDeferred_upvr_result2 * 100)
	if getFIntUGCLCCageVerticesSimilarityMaximum_upvr() < floored then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateVerticesSimilarity_MaxSimilarityExceeded, nil, arg2)
		local formatted = string.format("%s has %d%% of vertices too close to each other. Please edit the vertices to have at most %d%% coincident or close to one another.", arg4, floored, getFIntUGCLCCageVerticesSimilarityMaximum_upvr())
		if getFFlagUGCValidationHyperlinksInCageQuality_upvr() then
			formatted = formatted.."[Read more](https://create.roblox.com/docs/art/validation-errors#cageDensity)"
		end
		return false, {formatted}
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return true
end