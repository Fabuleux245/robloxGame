-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:27
-- Luau version 6, Types version 3
-- Time taken: 0.002351 seconds

local Parent = script.Parent.Parent
local function validateUser_upvr(arg1, arg2, arg3) -- Line 14, Named "validateUser"
	if not arg1 or #arg1 == 0 then
		return true
	end
	for _, v in ipairs(arg1) do
		({})[tonumber(v.id)] = true
		local var14
	end
	for _, v_2 in ipairs(arg2) do
		if not var14[tonumber(v_2.creatorTargetId)] then
			local var18 = arg3[tostring(v_2.assetId)]
			assert(var18)
			return false, {string.format("Failed to validate current user owns %s.%s ( %s ). Make sure you own the assets being validated and try again.", var18.instance:GetFullName(), var18.fieldName, tostring(v_2.assetId))}
		end
	end
	return true
end
local getFFlagUGCValidateEmoteAnimationExtendedTests_upvr = require(Parent.flags.getFFlagUGCValidateEmoteAnimationExtendedTests)
local ParseContentIds_upvr = require(Parent.util.ParseContentIds)
local Analytics_upvr = require(Parent.Analytics)
local getAssetCreationDetails_upvr = require(Parent.util.getAssetCreationDetails)
local Constants_upvr = require(Parent.Constants)
return function(arg1, arg2, arg3) -- Line 48, Named "validateModeration"
	--[[ Upvalues[6]:
		[1]: getFFlagUGCValidateEmoteAnimationExtendedTests_upvr (readonly)
		[2]: ParseContentIds_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: getAssetCreationDetails_upvr (readonly)
		[5]: validateUser_upvr (readonly)
		[6]: Constants_upvr (readonly)
	]]
	if getFFlagUGCValidateEmoteAnimationExtendedTests_upvr() and (arg3.isServer or arg3.allowUnreviewedAssets) then
		return true
	end
	local tbl = {}
	local tbl_3 = {}
	local any_parseWithErrorCheck_result1, any_parseWithErrorCheck_result2 = ParseContentIds_upvr.parseWithErrorCheck(tbl_3, tbl, arg1, nil, nil, arg3)
	if not any_parseWithErrorCheck_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateModeration_FailedToParse, nil, arg3)
		return false, any_parseWithErrorCheck_result2
	end
	local tbl_2 = {}
	local var23_result1, var23_result2 = getAssetCreationDetails_upvr(tbl_3)
	if not var23_result1 or #var23_result2 ~= #tbl_3 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateModeration_CouldNotFetchModerationDetails, nil, arg3)
		return false, {string.format("Failed to fetch moderation results for %s. Make sure all assets are owned by the current user.", arg1:GetFullName())}
	end
	local validateUser_result1, validateUser_result2 = validateUser_upvr(arg2, var23_result2, tbl)
	if not validateUser_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateModeration_ValidateUser, nil, arg3)
		return validateUser_result1, validateUser_result2
	end
	for _, v_3 in pairs(var23_result2) do
		if v_3.status == Constants_upvr.ASSET_STATUS.UNKNOWN or v_3.status == Constants_upvr.ASSET_STATUS.REVIEW_PENDING or v_3.status == Constants_upvr.ASSET_STATUS.MODERATED then
			table.insert(tbl_2, v_3.assetId)
		end
	end
	if 0 < #tbl_2 then
		for i_4, v_4 in pairs(tbl_2) do
			local var45 = tbl[v_4]
			if var45 then
				({})[i_4] = string.format("%s.%s ( %s )", var45.instance:GetFullName(), var45.fieldName, v_4)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({})[i_4] = v_4
			end
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateModeration_AssetsHaveNotPassedModeration, nil, arg3)
		local module = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module[1] = "Asset(s) failed to pass moderation:"
		module[2] = unpack({})
		return false, module
	end
	return true
end