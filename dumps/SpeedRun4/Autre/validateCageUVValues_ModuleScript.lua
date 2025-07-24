-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:04
-- Luau version 6, Types version 3
-- Time taken: 0.001297 seconds

local Parent = script.Parent.Parent
local getEngineFeatureEngineUGCValidateBodyParts_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getEngineFeatureEngineUGCValidateUVValuesInReference_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateUVValuesInReference)
local WrapTargetCageUVReferenceValues_upvr = require(Parent.WrapTargetCageUVReferenceValues)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2, arg3) -- Line 23, Named "validateCageUVValues"
	--[[ Upvalues[6]:
		[1]: getEngineFeatureEngineUGCValidateBodyParts_upvr (readonly)
		[2]: getEngineFeatureEngineUGCValidateUVValuesInReference_upvr (readonly)
		[3]: WrapTargetCageUVReferenceValues_upvr (readonly)
		[4]: pcallDeferred_upvr (readonly)
		[5]: UGCValidationService_upvr (readonly)
		[6]: Analytics_upvr (readonly)
	]]
	if not getEngineFeatureEngineUGCValidateBodyParts_upvr() then
		return true
	end
	if not getEngineFeatureEngineUGCValidateUVValuesInReference_upvr() then
		return true
	end
	local assert_result1_upvr = assert(WrapTargetCageUVReferenceValues_upvr[arg2.Parent.Name], "WrapTarget is not parented to a MeshPart")
	local var5_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 44
		--[[ Upvalues[3]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: assert_result1_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:ValidateEditableMeshUVValuesInReference(assert_result1_upvr, arg1.editableMesh)
	end, arg3)
	if not var5_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageUVValues_FailedToLoadMesh, nil, arg3)
		local formatted = string.format("Failed to load UVs for '%s'. Make sure the UV map exists and try again.", arg2:GetFullName())
		if arg3.isServer then
			error(formatted)
		end
		return false, {formatted}
	end
	if not pcallDeferred_upvr_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageUVValues_UnexpectedUVValue, nil, arg3)
		return false, {string.format("Found invalid UV value outside [0, 1] range for '%s'. You need to edit the UV map to fix this issue.", arg2:GetFullName())}
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg3)
	return true
end