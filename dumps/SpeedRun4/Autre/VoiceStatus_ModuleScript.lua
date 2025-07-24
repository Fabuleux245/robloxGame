-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:03
-- Luau version 6, Types version 3
-- Time taken: 0.001255 seconds

local CrossExperience = script:FindFirstAncestor("CrossExperience")
local VOICE_STATUS_upvr = require(CrossExperience.Constants).VOICE_STATUS
local tbl_upvr_2 = {
	[VOICE_STATUS_upvr.ERROR_VOICE_INIT] = true;
	[VOICE_STATUS_upvr.ERROR_VOICE_SETUP] = true;
	[VOICE_STATUS_upvr.ERROR_VOICE_JOIN] = true;
	[VOICE_STATUS_upvr.ERROR_VOICE_MIC_REJECTED] = true;
	[VOICE_STATUS_upvr.ERROR_VOICE_MODERATED] = true;
	[VOICE_STATUS_upvr.ERROR_VOICE_FAILED] = true;
}
local tbl_upvr = {
	[VOICE_STATUS_upvr.ERROR_START_BACKGROUND_DM] = true;
	[VOICE_STATUS_upvr.ERROR_RCC_CONNECTING] = true;
	[VOICE_STATUS_upvr.ERROR_VOICE_DISCONNECTED] = true;
	[VOICE_STATUS_upvr.ERROR_RCC_TIMEOUT] = true;
}
if require(CrossExperience.dependencies).SharedFlags.FFlagPartyVoiceEnableMicPermissionsBanner then
	tbl_upvr_2[VOICE_STATUS_upvr.ERROR_VOICE_MIC_REJECTED] = nil
end
function isVoiceRetriableErrorByGameJoin(arg1) -- Line 35
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1 == nil then
		return false
	end
	if tbl_upvr[arg1] ~= true then
	else
	end
	return true
end
function isMicPermissionsError(arg1) -- Line 42
	--[[ Upvalues[1]:
		[1]: VOICE_STATUS_upvr (readonly)
	]]
	if arg1 == nil then
		return false
	end
	if arg1 ~= VOICE_STATUS_upvr.ERROR_VOICE_MIC_REJECTED then
	else
	end
	return true
end
function isVoiceRetriableErrorByVoiceJoin(arg1) -- Line 49
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	if arg1 == nil then
		return false
	end
	if tbl_upvr_2[arg1] ~= true then
	else
	end
	return true
end
function isVoiceRetriableError(arg1) -- Line 57
	local isVoiceRetriableErrorByGameJoin_result1 = isVoiceRetriableErrorByGameJoin(arg1)
	if not isVoiceRetriableErrorByGameJoin_result1 then
		isVoiceRetriableErrorByGameJoin_result1 = isVoiceRetriableErrorByVoiceJoin(arg1)
	end
	return isVoiceRetriableErrorByGameJoin_result1
end
return {
	isVoiceRetriableError = isVoiceRetriableError;
	isVoiceRetriableErrorByGameJoin = isVoiceRetriableErrorByGameJoin;
	isVoiceRetriableErrorByVoiceJoin = isVoiceRetriableErrorByVoiceJoin;
	isMicPermissionsError = isMicPermissionsError;
}