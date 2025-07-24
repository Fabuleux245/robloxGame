-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:22
-- Luau version 6, Types version 3
-- Time taken: 0.003750 seconds

local GenericChallenges = script:FindFirstAncestor("GenericChallenges")
local ChallengeType_upvr = require(GenericChallenges.Types.ChallengeType)
local Parent = GenericChallenges.Parent
local NotificationService_upvr = game:GetService("NotificationService")
local function _() -- Line 23, Named "getUserDarkModeSettingQueryParam"
	--[[ Upvalues[1]:
		[1]: NotificationService_upvr (readonly)
	]]
	local var5
	if string.lower(NotificationService_upvr.SelectedTheme) ~= "dark" then
		var5 = false
	else
		var5 = true
	end
	if var5 then
		return "true"
	end
	return "false"
end
local UserInputService_upvr = game:GetService("UserInputService")
local function getUserAppTypeQueryParam_upvr() -- Line 30, Named "getUserAppTypeQueryParam"
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
	local var8
	if any_GetPlatform_result1 == Enum.Platform.Android then
		var8 = "android"
		return var8
	end
	if any_GetPlatform_result1 == Enum.Platform.IOS then
		var8 = "ios"
		return var8
	end
	if any_GetPlatform_result1 == Enum.Platform.Windows then
		var8 = "windows"
		return var8
	end
	if any_GetPlatform_result1 == Enum.Platform.OSX then
		var8 = "osx"
		return var8
	end
	if any_GetPlatform_result1 == Enum.Platform.UWP then
		var8 = "uwp"
		return var8
	end
	if any_GetPlatform_result1 == Enum.Platform.XBoxOne then
		var8 = "xbox"
	end
	return var8
end
local CaptchaActionType_upvr = require(GenericChallenges.Types.CaptchaActionType)
local TwoStepVerificationActionType_upvr = require(GenericChallenges.Types.TwoStepVerificationActionType)
local function getChallengeTypeQueryParameters_upvr(arg1, arg2) -- Line 49, Named "getChallengeTypeQueryParameters"
	--[[ Upvalues[3]:
		[1]: ChallengeType_upvr (readonly)
		[2]: CaptchaActionType_upvr (readonly)
		[3]: TwoStepVerificationActionType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var11
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 90 start (CF ANALYSIS FAILED)
	if arg2.actionType == nil then
		var11 = false
	else
		var11 = true
	end
	assert(var11, "actionType must be provided to render captcha")
	if arg2.dataExchangeBlob == nil then
		var11 = false
		-- KONSTANTWARNING: GOTO [23] #16
	end
	-- KONSTANTERROR: [5] 4. Error Block 90 end (CF ANALYSIS FAILED)
end
local constants_upvr = require(GenericChallenges.Utils.constants)
local Base64_upvr = require(Parent.AuthCommon).Utils.Base64
local UrlBuilder_upvr = require(Parent.UrlBuilder).UrlBuilder
local UrlBase_upvr = require(Parent.UrlBuilder).UrlBase
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2, arg3) -- Line 104
	--[[ Upvalues[9]:
		[1]: ChallengeType_upvr (readonly)
		[2]: constants_upvr (readonly)
		[3]: getUserAppTypeQueryParam_upvr (readonly)
		[4]: NotificationService_upvr (readonly)
		[5]: getChallengeTypeQueryParameters_upvr (readonly)
		[6]: Base64_upvr (readonly)
		[7]: UrlBuilder_upvr (readonly)
		[8]: UrlBase_upvr (readonly)
		[9]: Cryo_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 16. Error Block 54 start (CF ANALYSIS FAILED)
	assert(true, "challenge id does not exist")
	if arg1.challengeType.typed == nil then
	else
	end
	assert(true, "challenge is of an unknown type")
	-- KONSTANTERROR: [22] 16. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 30. Error Block 57 start (CF ANALYSIS FAILED)
	local var18
	if arg2 ~= nil then
		if ChallengeType_upvr.toRawValue(arg2) == nil then
			var18 = false
		else
			var18 = true
		end
		assert(var18, "challenge type is not valid")
	end
	local tbl = {
		[constants_upvr.appTypeQueryParam] = getUserAppTypeQueryParam_upvr();
	}
	local var21 = arg2
	tbl[constants_upvr.challengeTypeQueryParam] = ChallengeType_upvr.toRawValue(var21)
	if string.lower(NotificationService_upvr.SelectedTheme) ~= "dark" then
		var21 = false
	else
		var21 = true
	end
	if var21 then
	else
	end
	tbl[constants_upvr.darkModeQueryParam] = "false"
	if arg3 ~= nil then
	else
		if arg1 == nil then
		else
		end
		assert(true, "challenge headers must be defined for generic challenge rendering")
	end
	do
		return UrlBuilder_upvr.new({
			base = UrlBase_upvr.WWW;
			path = "challenge/cdn/hybrid";
			query = Cryo_upvr.Dictionary.join(tbl, {
				[constants_upvr.genericChallengeIdQueryParam] = arg1.challengeId;
				[constants_upvr.genericChallengeTypeQueryParam] = arg1.challengeType.raw;
				[constants_upvr.challengeMetadataJsonQueryParam] = Base64_upvr.EncodeUrl(arg1.challengeMetadata.decoded);
			});
		})()
	end
	-- KONSTANTERROR: [43] 30. Error Block 57 end (CF ANALYSIS FAILED)
end