-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:03
-- Luau version 6, Types version 3
-- Time taken: 0.002077 seconds

local Parent = script.Parent.Parent
local getEngineFeatureEngineUGCValidateBodyParts_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateBodyParts)
local Constants_upvr = require(Parent.Constants)
local getEngineFeatureEngineUGCValidateCalculateUniqueUV_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateCalculateUniqueUV)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local getFIntUniqueUVTolerance_upvr = require(Parent.flags.getFIntUniqueUVTolerance)
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2, arg3) -- Line 20, Named "validateCageUVs"
	--[[ Upvalues[7]:
		[1]: getEngineFeatureEngineUGCValidateBodyParts_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: getEngineFeatureEngineUGCValidateCalculateUniqueUV_upvr (readonly)
		[4]: pcallDeferred_upvr (readonly)
		[5]: UGCValidationService_upvr (readonly)
		[6]: getFIntUniqueUVTolerance_upvr (readonly)
		[7]: Analytics_upvr (readonly)
	]]
	if not getEngineFeatureEngineUGCValidateBodyParts_upvr() then
		return true
	end
	local var9
	local var10
	if getEngineFeatureEngineUGCValidateCalculateUniqueUV_upvr() then
		local var12_upvw
		local assert_result1_upvr = assert(Constants_upvr.WRAP_TARGET_CAGE_MESH_UV_COUNTS[arg2.Parent.Name], "WrapTarget is not parented to a MeshPart")
		local pcallDeferred_upvr_result1_2, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 41
			--[[ Upvalues[5]:
				[1]: var12_upvw (read and write)
				[2]: UGCValidationService_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: assert_result1_upvr (readonly)
				[5]: getFIntUniqueUVTolerance_upvr (copied, readonly)
			]]
			local any_CalculateEditableMeshUniqueUVCount_result1 = UGCValidationService_upvr:CalculateEditableMeshUniqueUVCount(arg1.editableMesh)
			var12_upvw = any_CalculateEditableMeshUniqueUVCount_result1
			if math.abs(var12_upvw - assert_result1_upvr) > getFIntUniqueUVTolerance_upvr() then
				any_CalculateEditableMeshUniqueUVCount_result1 = false
			else
				any_CalculateEditableMeshUniqueUVCount_result1 = true
			end
			return any_CalculateEditableMeshUniqueUVCount_result1
		end, arg3)
		var9 = pcallDeferred_upvr_result1_2
		var10 = pcallDeferred_upvr_result2
	else
		local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2_2 = pcallDeferred_upvr(function() -- Line 47
			--[[ Upvalues[4]:
				[1]: getFIntUniqueUVTolerance_upvr (copied, readonly)
				[2]: UGCValidationService_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: assert_result1_upvr (readonly)
			]]
			for i = 0, getFIntUniqueUVTolerance_upvr() do
				if UGCValidationService_upvr:ValidateEditableMeshUniqueUVCount(arg1.editableMesh, assert_result1_upvr + i) then
					return true
				end
				if i ~= 0 and assert_result1_upvr - i >= 0 and UGCValidationService_upvr:ValidateEditableMeshUniqueUVCount(arg1.editableMesh, assert_result1_upvr - i) then
					return true
				end
			end
			return false
		end, arg3)
		var9 = pcallDeferred_upvr_result1
		var10 = pcallDeferred_upvr_result2_2
	end
	if not var9 then
		local formatted = string.format("Failed to execute UV check for '%s'. Make sure the UV map exists and try again.", arg2:GetFullName())
		if arg3.isServer then
			error(formatted)
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageUVs_TestExecutedSuccessfully, nil, arg3)
		do
			return false, {formatted}
		end
		local var23
	end
	if not var10 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageUVs_TestPassed, nil, arg3)
		local module = {}
		if arg1.contentId then
			var23 = arg1.contentId
		else
			var23 = ""
		end
		module[1] = string.format("%s.%s ( %s ) should have %d unique UVs, but has %d. Please make sure the mesh has the required number of unique UVs and try again.", arg2:GetFullName(), arg1.fieldName, var23, assert_result1_upvr, var12_upvw)
		return false, module
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg3)
	return true
end