-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:13
-- Luau version 6, Types version 3
-- Time taken: 0.004617 seconds

local CrossExperienceVoice = script:FindFirstAncestor("CrossExperienceVoice")
local dependencies = require(CrossExperienceVoice.dependencies)
local Analytics_upvr = require(CrossExperienceVoice.Analytics)
local Flags_upvr = require(CrossExperienceVoice.Flags)
local LoggingProtocol_upvr = dependencies.LoggingProtocol
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 78
	--[[ Upvalues[2]:
		[1]: Analytics_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local module = {
		previousStatus = nil;
		connections = {};
		isInitialized = false;
		eventManager = nil;
		analytics = Analytics_upvr.Analytics();
	}
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.initialize(arg1, arg2) -- Line 90
	arg1.eventManager = arg2
	arg1.isInitialized = true
end
local CrossExperience_upvr = dependencies.CrossExperience
local Players_upvr = game:GetService("Players")
function module_upvr.logPartyVoiceTimeout(arg1, arg2) -- Line 95
	--[[ Upvalues[3]:
		[1]: Analytics_upvr (readonly)
		[2]: CrossExperience_upvr (readonly)
		[3]: Players_upvr (readonly)
	]]
	if not arg1.isInitialized then
	else
		local tbl = {
			partyId = arg2 or "";
			status = CrossExperience_upvr.Constants.VOICE_STATUS.ERROR_RCC_TIMEOUT;
		}
		local var11 = arg1.previousStatus or ""
		tbl.previousStatus = var11
		if Players_upvr.LocalPlayer then
			var11 = Players_upvr.LocalPlayer.UserId
		else
			var11 = 0
		end
		tbl.userId = var11
		arg1.analytics.fireAnalyticsEvent(Analytics_upvr.EventNames.PartyVoiceStateChanged, tbl)
	end
end
function module_upvr.logPartyVoiceStatusChanged(arg1, arg2, arg3, arg4) -- Line 108
	--[[ Upvalues[2]:
		[1]: Flags_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	if not arg1.isInitialized then
	else
		if arg1.previousStatus ~= arg2.status then
			if Flags_upvr.FFlagEnablePartyVoiceStatusChangedDetailAnalytics then
				if Flags_upvr.FFlagPartyVoiceLogActiveDM then
					arg1.analytics.fireAnalyticsEvent(Analytics_upvr.EventNames.PartyVoiceStateChanged, {
						partyId = arg3 or "";
						status = arg2.status;
						detail = arg2.detail or "";
						previousStatus = arg1.previousStatus or "";
						voiceChannelId = arg2.voiceChannelId;
						voiceSessionId = arg2.voiceSessionId;
						userId = arg2.userId;
						activeDm = arg4 or "";
					})
				else
					arg1.analytics.fireAnalyticsEvent(Analytics_upvr.EventNames.PartyVoiceStateChanged, {
						partyId = arg3 or "";
						status = arg2.status;
						detail = arg2.detail or "";
						previousStatus = arg1.previousStatus or "";
						voiceChannelId = arg2.voiceChannelId;
						voiceSessionId = arg2.voiceSessionId;
						userId = arg2.userId;
						activeDm = "";
					})
				end
			else
				arg1.analytics.fireAnalyticsEvent(Analytics_upvr.EventNames.PartyVoiceStateChanged, {
					partyId = arg3 or "";
					status = arg2.status;
					previousStatus = arg1.previousStatus or "";
					voiceChannelId = arg2.voiceChannelId;
					voiceSessionId = arg2.voiceSessionId;
					userId = arg2.userId;
				})
			end
		end
		arg1.previousStatus = arg2.status
	end
end
function module_upvr.logPartyVoiceConnectedState(arg1, arg2, arg3, arg4) -- Line 160
	--[[ Upvalues[2]:
		[1]: Flags_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_upvr.logPartyVoiceJoinAttempt(arg1, arg2) -- Line 197
	--[[ Upvalues[2]:
		[1]: Flags_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_upvr.logLaunchFlowBeginEvent(arg1) -- Line 223
	--[[ Upvalues[1]:
		[1]: LoggingProtocol_upvr (readonly)
	]]
	LoggingProtocol_upvr.default:logEvent("party_voice_launch_flow_begin")
end
function module_upvr.logLaunchFlowEndEvent(arg1) -- Line 227
	--[[ Upvalues[1]:
		[1]: LoggingProtocol_upvr (readonly)
	]]
	LoggingProtocol_upvr.default:logEvent("party_voice_launch_flow_end")
end
function module_upvr.logPartyVoiceJoinFailure(arg1, arg2, arg3, arg4) -- Line 231
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if not arg1.isInitialized then
	else
		local tbl_3 = {}
		tbl_3.partyId = arg2
		tbl_3.errorMessage = arg3 or ""
		tbl_3.userId = arg4 or 0
		arg1.analytics.fireAnalyticsEvent(Analytics_upvr.EventNames.PartyVoiceJoinFailure, tbl_3)
	end
end
function module_upvr.logPartyVoiceUnmuteParticipant(arg1, arg2, arg3) -- Line 243
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if not arg1.isInitialized then
	else
		local tbl_2 = {}
		tbl_2.partyId = arg2
		tbl_2.userId = arg3 or 0
		arg1.analytics.fireAnalyticsEvent(Analytics_upvr.EventNames.PartyVoiceUnmuteParticipant, tbl_2)
	end
end
function module_upvr.logPartyVoiceMuteParticipant(arg1, arg2, arg3) -- Line 254
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if not arg1.isInitialized then
	else
		local tbl_8 = {}
		tbl_8.partyId = arg2
		tbl_8.userId = arg3 or 0
		arg1.analytics.fireAnalyticsEvent(Analytics_upvr.EventNames.PartyVoiceMuteParticipant, tbl_8)
	end
end
function module_upvr.logPartyVoiceBlockParticipant(arg1, arg2, arg3) -- Line 265
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if not arg1.isInitialized then
	else
		local tbl_7 = {}
		tbl_7.partyId = arg2
		tbl_7.userId = arg3 or 0
		arg1.analytics.fireAnalyticsEvent(Analytics_upvr.EventNames.PartyVoiceBlockParticipant, tbl_7)
	end
end
function module_upvr.logPartyVoiceUnblockParticipant(arg1, arg2, arg3) -- Line 276
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if not arg1.isInitialized then
	else
		local tbl_5 = {}
		tbl_5.partyId = arg2
		tbl_5.userId = arg3 or 0
		arg1.analytics.fireAnalyticsEvent(Analytics_upvr.EventNames.PartyVoiceUnblockParticipant, tbl_5)
	end
end
function module_upvr.logPartyVoiceOnCrossExperienceStartedSignalReceived(arg1, arg2, arg3) -- Line 287
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if not arg1.isInitialized then
	else
		local tbl_6 = {}
		tbl_6.hasExperienceStarted = arg2
		tbl_6.isActiveDM = arg3
		arg1.analytics.fireAnalyticsEvent(Analytics_upvr.EventNames.PartyVoiceOnCrossExperienceStartedSignalReceived, tbl_6)
	end
end
function module_upvr.logPartyVoiceStateChangeHandlerRun(arg1, arg2, arg3) -- Line 300
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if not arg1.isInitialized then
	else
		local tbl_4 = {}
		tbl_4.isActiveDM = arg2
		tbl_4.status = arg3.status
		tbl_4.detail = arg3.detail or ""
		arg1.analytics.fireAnalyticsEvent(Analytics_upvr.EventNames.PartyVoiceStateChangeHandlerRun, tbl_4)
	end
end
function module_upvr.reset(arg1) -- Line 314
	arg1.previousStatus = nil
end
module_upvr.default = module_upvr.new()
return module_upvr