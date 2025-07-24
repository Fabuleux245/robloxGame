-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:07
-- Luau version 6, Types version 3
-- Time taken: 0.004945 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local validateCanLoad_upvr = require(Parent.validation.validateCanLoad)
local function validateExistance_upvr(arg1, arg2) -- Line 28, Named "validateExistance"
	--[[ Upvalues[1]:
		[1]: validateCanLoad_upvr (readonly)
	]]
	for _, v in pairs(arg1) do
		if not validateCanLoad_upvr(v.instance[v.fieldName], arg2) then
			error(string.format("Failed to load children assets (Meshes, Textures, etc.) for '%s'. Make sure the assets exist and try again.", v.instance.Name))
		end
	end
end
local tbl_2_upvr = {
	MODERATION_STATE_REVIEWING = {
		MODERATION_STATE_REVIEWING = true;
		Reviewing = true;
	};
	MODERATION_STATE_APPROVED = {
		MODERATION_STATE_APPROVED = true;
		Approved = true;
	};
}
local function validateCreatorId_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 49, Named "validateCreatorId"
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if not arg1[tonumber(arg2)] then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDependencies_IsRestrictedUserId, nil, arg6)
		return false, {`{arg3:GetFullName()}.{arg4} ( {arg5} ) is not owned by the current user. You can only validate assets that you or a group you belong to owns.`}
	end
	return true
end
local function validateModerationState_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 67, Named "validateModerationState"
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	if tbl_2_upvr.MODERATION_STATE_REVIEWING[arg1] then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDependencies_IsReviewing, nil, arg5)
		error("Failed to load asset {instance:GetFullName()}.{fieldName} ( {id} ) that is still going through the review process. Please, wait for a notification of completion from the review process and try again.")
	end
	if not tbl_2_upvr.MODERATION_STATE_APPROVED[arg1] then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDependencies_IsNotApproved, nil, arg5)
		return false, {`{arg2:GetFullName()}.{arg3} ( {arg4} ) is not owned by the current user. You can only validate assets that you or a group you belong to owns.`}
	end
	return true
end
local getAssetCreationDetailsRCC_upvr = require(Parent.util.getAssetCreationDetailsRCC)
local getFFlagUGCValidationAnalytics_upvr = require(Parent.flags.getFFlagUGCValidationAnalytics)
local function validateModerationRCC_upvr(arg1, arg2, arg3) -- Line 96, Named "validateModerationRCC"
	--[[ Upvalues[6]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: getAssetCreationDetailsRCC_upvr (readonly)
		[3]: getFFlagUGCValidationAnalytics_upvr (readonly)
		[4]: validateCreatorId_upvr (readonly)
		[5]: validateModerationState_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
	]]
	if not arg1 or #arg1 == 0 then
		return true
	end
	for _, v_2 in ipairs(arg1) do
		({})[tonumber(v_2.id)] = true
		local var28
	end
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	for i_3, v_3 in pairs(arg2) do
		local var15_result1, getAssetCreationDetailsRCC_upvr_result2 = getAssetCreationDetailsRCC_upvr(i_3)
		local var35
		if not var15_result1 then
			var35 = "Failed to load asset"
			error(var35)
		end
		var35 = getAssetCreationDetailsRCC_upvr_result2.creationContext
		local creator = var35.creator
		if creator.userId then
			var35 = creator.userId
		else
			var35 = creator.groupId
		end
		if getFFlagUGCValidationAnalytics_upvr() then
			any_new_result1:updateReasons(validateCreatorId_upvr(var28, var35, v_3.instance, v_3.fieldName, i_3, arg3))
			any_new_result1:updateReasons(validateModerationState_upvr(getAssetCreationDetailsRCC_upvr_result2.moderationResult.moderationState, v_3.instance, v_3.fieldName, i_3, arg3))
		else
			local formatted = string.format("%s.%s ( %s ) is not owned by the developer", v_3.instance:GetFullName(), v_3.fieldName, i_3)
			any_new_result1:updateReasons(var28[tonumber(var35)], {formatted})
			if tbl_2_upvr.MODERATION_STATE_REVIEWING[getAssetCreationDetailsRCC_upvr_result2.moderationResult.moderationState] then
				error("Asset is under review")
			end
			any_new_result1:updateReasons(tbl_2_upvr.MODERATION_STATE_APPROVED[getAssetCreationDetailsRCC_upvr_result2.moderationResult.moderationState], {formatted})
		end
	end
	return any_new_result1:getFinalResults()
end
local validateAssetCreator_upvr = require(Parent.validation.validateAssetCreator)
local function validateAssetCreatorsRCC_upvr(arg1, arg2) -- Line 162, Named "validateAssetCreatorsRCC"
	--[[ Upvalues[1]:
		[1]: validateAssetCreator_upvr (readonly)
	]]
	assert(arg2.isServer, "isServer must be true for validateAssetCreatorsRCC")
	return validateAssetCreator_upvr(arg1, arg2)
end
local ParseContentIds_upvr = require(Parent.util.ParseContentIds)
local Constants_upvr = require(Parent.Constants)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("NoStudioOwnershipCheck", false)
local RunService_upvr = game:GetService("RunService")
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("ValidateUserAndUniverseNoModeration", false)
local getFFlagUGCValidateBodyPartsModeration_upvr = require(Parent.flags.getFFlagUGCValidateBodyPartsModeration)
local validateModeration_upvr = require(Parent.validation.validateModeration)
return function(arg1, arg2) -- Line 167, Named "validateDependencies"
	--[[ Upvalues[12]:
		[1]: ParseContentIds_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: validateExistance_upvr (readonly)
		[5]: FailureReasonsAccumulator_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr (readonly)
		[7]: RunService_upvr (readonly)
		[8]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[9]: validateAssetCreatorsRCC_upvr (readonly)
		[10]: validateModerationRCC_upvr (readonly)
		[11]: getFFlagUGCValidateBodyPartsModeration_upvr (readonly)
		[12]: validateModeration_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 52 start (CF ANALYSIS FAILED)
	local var48
	if arg2 then
		var48 = arg2.isServer
	else
		var48 = nil
	end
	if arg2 then
	else
	end
	if arg2 then
		-- KONSTANTWARNING: GOTO [20] #16
	end
	-- KONSTANTERROR: [0] 1. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 59 start (CF ANALYSIS FAILED)
	if arg2 then
	else
	end
	local tbl = {}
	local any_parseWithErrorCheck_result1, any_parseWithErrorCheck_result2 = ParseContentIds_upvr.parseWithErrorCheck({}, tbl, arg1, nil, Constants_upvr.CONTENT_ID_REQUIRED_FIELDS, arg2)
	if not any_parseWithErrorCheck_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDependencies_ParseFailure, nil, arg2)
		return false, any_parseWithErrorCheck_result2
	end
	if var48 and not arg2.allowEditableInstances then
		validateExistance_upvr(tbl, arg2)
	end
	if not game_DefineFastFlag_result1_upvr or game_DefineFastFlag_result1_upvr and not RunService_upvr:IsStudio() or var48 then
		if game_DefineFastFlag_result1_upvr_2 and nil then
			FailureReasonsAccumulator_upvr.new():updateReasons(validateAssetCreatorsRCC_upvr(tbl, arg2))
		else
			FailureReasonsAccumulator_upvr.new():updateReasons(validateModerationRCC_upvr(nil, tbl, arg2))
		end
	end
	if not getFFlagUGCValidateBodyPartsModeration_upvr() then
		local var52 = not var48
		if nil then
			var52 = false
		end
		if var52 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			FailureReasonsAccumulator_upvr.new():updateReasons(validateModeration_upvr(arg1, nil, arg2))
		end
	end
	if arg2 then
		Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	end
	do
		return FailureReasonsAccumulator_upvr.new():getFinalResults()
	end
	-- KONSTANTERROR: [19] 15. Error Block 59 end (CF ANALYSIS FAILED)
end