-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:04
-- Luau version 6, Types version 3
-- Time taken: 0.001143 seconds

local Parent = script.Parent.Parent
local getEngineFeatureEngineUGCValidateCageUVTriangleArea_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateCageUVTriangleArea)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 15, Named "validateCageUVTriangleArea"
	--[[ Upvalues[4]:
		[1]: getEngineFeatureEngineUGCValidateCageUVTriangleArea_upvr (readonly)
		[2]: pcallDeferred_upvr (readonly)
		[3]: UGCValidationService_upvr (readonly)
		[4]: Analytics_upvr (readonly)
	]]
	if getEngineFeatureEngineUGCValidateCageUVTriangleArea_upvr() then
		local pcallDeferred_upvr_result1, var3_result2 = pcallDeferred_upvr(function() -- Line 24
			--[[ Upvalues[2]:
				[1]: UGCValidationService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return UGCValidationService_upvr:ValidateEditableMeshCageUVTriangleArea(arg1.editableMesh)
		end, arg2)
		if not pcallDeferred_upvr_result1 then
			if arg2.isServer then
				error(string.format("Failed to load UVs for '%s'. Make sure the model has a valid UV map and try again.", arg1.fullName))
			end
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageUVTriangleArea_FailedToLoadMesh, nil, arg2)
			return false, {string.format("Failed to load UVs for '%s'. Make sure the model has a valid UV map and try again.", arg1.fullName)}
		end
		if not var3_result2 then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageUVTriangleArea_ZeroAreaTriangle, nil, arg2)
			return false, {string.format("Detected zero-area triangle in UV map of '%s'. You need to edit the UV map to fix this issue.", arg1.fullName)}
		end
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return true
end