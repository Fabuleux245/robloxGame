-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:11
-- Luau version 6, Types version 3
-- Time taken: 0.003528 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local util = Parent.util
local validation = Parent.validation
local validateSingleInstance_upvr = require(validation.validateSingleInstance)
local flags = Parent.flags
local module_2_upvr = {}
local function reportError_upvr(arg1, arg2, arg3) -- Line 31, Named "reportError"
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if arg3.isServer ~= nil and arg3.isServer then
		error(arg1)
	end
	Analytics_upvr.reportFailure(arg2, nil, arg3)
	local module = {}
	module[1] = arg1
	return false, module
end
local validateInstanceTree_upvr = require(validation.validateInstanceTree)
local createEmoteSchema_upvr = require(util.createEmoteSchema)
function module_2_upvr.validateStructure(arg1) -- Line 46
	--[[ Upvalues[3]:
		[1]: validateSingleInstance_upvr (readonly)
		[2]: validateInstanceTree_upvr (readonly)
		[3]: createEmoteSchema_upvr (readonly)
	]]
	local instances = arg1.instances
	if not instances then
		instances = {}
	end
	local var5_result1, var5_result2 = validateSingleInstance_upvr(instances, arg1)
	if not var5_result1 then
		return false, var5_result2
	end
	local _1 = arg1.instances[1]
	local validateInstanceTree_upvr_result1, var9_result2 = validateInstanceTree_upvr(createEmoteSchema_upvr(), _1, arg1)
	if not validateInstanceTree_upvr_result1 then
		return false, var9_result2
	end
	return true, nil, _1
end
local getFFlagUGCValidateEmoteAnimationExtendedTests_upvr = require(flags.getFFlagUGCValidateEmoteAnimationExtendedTests)
local validateDependencies_upvr = require(validation.validateDependencies)
local getFFlagUGCValidateAccurateCurveFrames_upvr = require(flags.getFFlagUGCValidateAccurateCurveFrames)
local validateModeration_upvr = require(validation.validateModeration)
local pcallDeferred_upvr = require(util.pcallDeferred)
local FailureReasonsAccumulator_upvr = require(util.FailureReasonsAccumulator)
local validateTags_upvr = require(validation.validateTags)
local validateAttributes_upvr = require(validation.validateAttributes)
local ValidateCurveAnimation_upvr = require(validation.ValidateCurveAnimation)
function module_2_upvr.validate(arg1) -- Line 67
	--[[ Upvalues[13]:
		[1]: getFFlagUGCValidateEmoteAnimationExtendedTests_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: validateDependencies_upvr (readonly)
		[4]: getFFlagUGCValidateAccurateCurveFrames_upvr (readonly)
		[5]: validateModeration_upvr (readonly)
		[6]: pcallDeferred_upvr (readonly)
		[7]: reportError_upvr (readonly)
		[8]: Analytics_upvr (readonly)
		[9]: FailureReasonsAccumulator_upvr (readonly)
		[10]: validateTags_upvr (readonly)
		[11]: validateAttributes_upvr (readonly)
		[12]: ValidateCurveAnimation_upvr (readonly)
		[13]: validateSingleInstance_upvr (readonly)
	]]
	if getFFlagUGCValidateEmoteAnimationExtendedTests_upvr() then
		local any_validateStructure_result1_2, any_validateStructure_result2, any_validateStructure_result3 = module_2_upvr.validateStructure(arg1)
		if not any_validateStructure_result1_2 then
			return false, any_validateStructure_result2
		end
		local var44_upvw = any_validateStructure_result3
		local var18_result1, var18_result2 = validateDependencies_upvr(var44_upvw, arg1)
		if not var18_result1 then
			return false, var18_result2
		end
		if getFFlagUGCValidateAccurateCurveFrames_upvr() then
			local var20_result1, validateModeration_upvr_result2 = validateModeration_upvr(var44_upvw, arg1.restrictedUserIds, arg1)
			if not var20_result1 then
				return false, validateModeration_upvr_result2
			end
		end
		local var21_result1, var21_result2_2 = pcallDeferred_upvr(function() -- Line 97
			--[[ Upvalues[1]:
				[1]: var44_upvw (read and write)
			]]
			local game_GetObjectsAllOrNone_result1 = game:GetObjectsAllOrNone(var44_upvw.AnimationId)
			if game_GetObjectsAllOrNone_result1 and 0 < #game_GetObjectsAllOrNone_result1 then
				return game_GetObjectsAllOrNone_result1[1]
			end
			return nil
		end, arg1)
		if not var21_result1 or not var21_result2_2 then
			return reportError_upvr("Could not download Curve animation.", Analytics_upvr.ErrorType.validateEmoteAnimation_FailedToDownloadCurveAnimation, arg1)
		end
		local any_new_result1_4 = FailureReasonsAccumulator_upvr.new()
		any_new_result1_4:updateReasons(validateTags_upvr(var44_upvw, arg1))
		any_new_result1_4:updateReasons(validateAttributes_upvr(var44_upvw, arg1))
		any_new_result1_4:updateReasons(ValidateCurveAnimation_upvr.validate(var21_result2_2, var44_upvw.AnimationId, arg1))
		if not getFFlagUGCValidateAccurateCurveFrames_upvr() then
			any_new_result1_4:updateReasons(validateModeration_upvr(var44_upvw, arg1.restrictedUserIds, arg1))
		end
		return any_new_result1_4:getFinalResults()
	end
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	local instances_2 = arg1.instances
	if not instances_2 then
		instances_2 = {}
	end
	any_new_result1:updateReasons(validateSingleInstance_upvr(instances_2, arg1))
	return any_new_result1:getFinalResults()
end
return module_2_upvr