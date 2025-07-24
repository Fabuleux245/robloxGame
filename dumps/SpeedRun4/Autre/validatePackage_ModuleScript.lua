-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:29
-- Luau version 6, Types version 3
-- Time taken: 0.001140 seconds

local Parent = script.Parent.Parent
local validateSingleInstance_upvr = require(Parent.validation.validateSingleInstance)
local ParseContentIds_upvr = require(Parent.util.ParseContentIds)
local Constants_upvr = require(Parent.Constants)
local Analytics_upvr = require(Parent.Analytics)
local validateAssetCreator_upvr = require(Parent.validation.validateAssetCreator)
return function(arg1) -- Line 12, Named "validatePackage"
	--[[ Upvalues[5]:
		[1]: validateSingleInstance_upvr (readonly)
		[2]: ParseContentIds_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: validateAssetCreator_upvr (readonly)
	]]
	local var7
	if arg1.instances == nil then
		var7 = false
	else
		var7 = true
	end
	assert(var7, "instances required in validationContext for validatePackage")
	local instances = arg1.instances
	var7 = arg1.restrictedUserIds
	local validateSingleInstance_upvr_result1, validateSingleInstance_upvr_result2 = validateSingleInstance_upvr(instances, arg1)
	if not validateSingleInstance_upvr_result1 then
		return validateSingleInstance_upvr_result1, validateSingleInstance_upvr_result2
	end
	local _1 = instances[1]
	local module = {}
	if not var7 or #var7 == 0 then
		return true
	end
	if not ParseContentIds_upvr.parseWithErrorCheck({}, module, _1, Constants_upvr.PACKAGE_CONTENT_ID_FIELDS, nil, arg1) then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validatePackage_FailedToParse, nil, arg1)
		return false, {string.format("Failed to parse package data for model '%s'. Make sure the packageId is valid and try again.", _1:GetFullName())}
	end
	return validateAssetCreator_upvr(module, arg1)
end