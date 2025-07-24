-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:09
-- Luau version 6, Types version 3
-- Time taken: 0.001918 seconds

local Parent = script.Parent.Parent
local validateSingleInstance_upvr = require(Parent.validation.validateSingleInstance)
local validateMeshPartBodyPart_upvr = require(Parent.validation.validateMeshPartBodyPart)
local createDynamicHeadMeshPartSchema_upvr = require(Parent.util.createDynamicHeadMeshPartSchema)
local getFFlagValidateFacialBounds_upvr = require(Parent.flags.getFFlagValidateFacialBounds)
local getFFlagUGCValidateDynamicHeadMoodRCC_upvr = require(Parent.flags.getFFlagUGCValidateDynamicHeadMoodRCC)
local getFFlagUGCValidateDynamicHeadMoodClient_upvr = require(Parent.flags.getFFlagUGCValidateDynamicHeadMoodClient)
local validateDynamicHeadMood_upvr = require(Parent.validation.validateDynamicHeadMood)
local Analytics_upvr = require(Parent.Analytics)
local validateDynamicHeadData_upvr = require(Parent.validation.validateDynamicHeadData)
return function(arg1) -- Line 17, Named "validateDynamicHeadMeshPartFormat"
	--[[ Upvalues[9]:
		[1]: validateSingleInstance_upvr (readonly)
		[2]: validateMeshPartBodyPart_upvr (readonly)
		[3]: createDynamicHeadMeshPartSchema_upvr (readonly)
		[4]: getFFlagValidateFacialBounds_upvr (readonly)
		[5]: getFFlagUGCValidateDynamicHeadMoodRCC_upvr (readonly)
		[6]: getFFlagUGCValidateDynamicHeadMoodClient_upvr (readonly)
		[7]: validateDynamicHeadMood_upvr (readonly)
		[8]: Analytics_upvr (readonly)
		[9]: validateDynamicHeadData_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var11
	if arg1.instances == nil then
		var11 = false
	else
		var11 = true
	end
	assert(var11, "instances required in validationContext for validateDynamicHeadMeshPartFormat")
	local instances = arg1.instances
	var11 = arg1.isServer
	if arg1.bypassFlags then
	else
	end
	local validateSingleInstance_upvr_result1, validateSingleInstance_upvr_result2 = validateSingleInstance_upvr(instances, arg1)
	if not validateSingleInstance_upvr_result1 then
		return validateSingleInstance_upvr_result1, validateSingleInstance_upvr_result2
	end
	local _1 = instances[1]
	local var3_result1, validateMeshPartBodyPart_upvr_result2 = validateMeshPartBodyPart_upvr(_1, createDynamicHeadMeshPartSchema_upvr(arg1), arg1)
	if not var3_result1 then
		return false, validateMeshPartBodyPart_upvr_result2
	end
	local var18
	if not getFFlagValidateFacialBounds_upvr() then
		if var11 and getFFlagUGCValidateDynamicHeadMoodRCC_upvr() or not var11 and getFFlagUGCValidateDynamicHeadMoodClient_upvr() or not false then
			if var11 ~= nil then
				var18 = var11
			else
				var18 = false
			end
			local var8_result1, validateDynamicHeadMood_upvr_result2 = validateDynamicHeadMood_upvr(_1, var18)
			var18 = tick()
			Analytics_upvr.recordScriptTime("validateDynamicHeadMood", var18, arg1)
			if not var8_result1 then
				return false, validateDynamicHeadMood_upvr_result2
			end
		end
	end
	return validateDynamicHeadData_upvr(_1, arg1)
end