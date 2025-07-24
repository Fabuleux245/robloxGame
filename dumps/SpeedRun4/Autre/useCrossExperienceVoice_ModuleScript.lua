-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:18
-- Luau version 6, Types version 3
-- Time taken: 0.006677 seconds

local CrossExperienceVoice = script:FindFirstAncestor("CrossExperienceVoice")
local dependencies = require(CrossExperienceVoice.dependencies)
local CrossExperience_upvr = dependencies.CrossExperience
local React_upvr = dependencies.React
local RoactUtils = dependencies.RoactUtils
local SharedFlags = dependencies.SharedFlags
local function _() -- Line 32
	--[[ Upvalues[1]:
		[1]: CrossExperience_upvr (readonly)
	]]
	if game.PlaceId == 0 then
		return CrossExperience_upvr.Constants.EXPERIENCE_TYPE_LUAAPP
	end
	return CrossExperience_upvr.Constants.EXPERIENCE_TYPE_UGC
end
local useStore_upvr = RoactUtils.Hooks.RoactRodux.useStore
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local Logger_upvr = require(CrossExperienceVoice.Logger)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DisableCrossExperienceVoiceExpListenersTeardown", false)
local default_upvr = require(CrossExperienceVoice.CrossExperienceVoiceManager).default
local VoiceStatusChanged_upvr = CrossExperience_upvr.Actions.VoiceStatusChanged
local FFlagCevAdditionalStatusLogging_upvr = SharedFlags.FFlagCevAdditionalStatusLogging
local default_upvr_2 = require(CrossExperienceVoice.CrossExperienceVoiceAnalytics).default
local Players_upvr = game:GetService("Players")
local FIntPartyVoiceJoinRequestPulseCheckTimeout_upvr = SharedFlags.FIntPartyVoiceJoinRequestPulseCheckTimeout
local getFFlagEnableCrossExpVoiceMemoryCheck_upvr = SharedFlags.getFFlagEnableCrossExpVoiceMemoryCheck
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("CevReadinessSync")
local ExperienceService_upvr = dependencies.ExperienceService.ExperienceService
local useEffect_upvr = React_upvr.useEffect
return function(arg1) -- Line 42, Named "useCrossExperienceVoice"
	--[[ Upvalues[16]:
		[1]: useStore_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: CrossExperience_upvr (readonly)
		[5]: Logger_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr (readonly)
		[7]: default_upvr (readonly)
		[8]: VoiceStatusChanged_upvr (readonly)
		[9]: FFlagCevAdditionalStatusLogging_upvr (readonly)
		[10]: default_upvr_2 (readonly)
		[11]: Players_upvr (readonly)
		[12]: FIntPartyVoiceJoinRequestPulseCheckTimeout_upvr (readonly)
		[13]: getFFlagEnableCrossExpVoiceMemoryCheck_upvr (readonly)
		[14]: game_GetEngineFeature_result1_upvr (readonly)
		[15]: ExperienceService_upvr (readonly)
		[16]: useEffect_upvr (readonly)
	]]
	local var8_result1_upvr = useStore_upvr()
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_7 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_9 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_5 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_6 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_3 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_4 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_8 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 55
		--[[ Upvalues[1]:
			[1]: CrossExperience_upvr (copied, readonly)
		]]
		local EventManager = CrossExperience_upvr.EventManager
		if game.PlaceId == 0 then
			EventManager = CrossExperience_upvr.Constants.EXPERIENCE_TYPE_LUAAPP
		else
			EventManager = CrossExperience_upvr.Constants.EXPERIENCE_TYPE_UGC
		end
		return EventManager.new(EventManager, true)
	end, {})
	local function _() -- Line 59
		--[[ Upvalues[3]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: var8_result1_upvr (readonly)
			[3]: Logger_upvr (copied, readonly)
		]]
		any_useMemo_result1_upvr:subscribe(var8_result1_upvr, Logger_upvr)
	end
	local function _() -- Line 63
		--[[ Upvalues[3]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: var8_result1_upvr (readonly)
			[3]: Logger_upvr (copied, readonly)
		]]
		any_useMemo_result1_upvr:unsubscribe(var8_result1_upvr, Logger_upvr)
	end
	local function var37_upvr() -- Line 67
		--[[ Upvalues[13]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: var8_result1_upvr (readonly)
			[3]: Logger_upvr (copied, readonly)
			[4]: any_useRef_result1_upvr_7 (readonly)
			[5]: any_useRef_result1_upvr_9 (readonly)
			[6]: any_useRef_result1_upvr_5 (readonly)
			[7]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[8]: any_useRef_result1_upvr_6 (readonly)
			[9]: any_useRef_result1_upvr_3 (readonly)
			[10]: any_useRef_result1_upvr_4 (readonly)
			[11]: any_useRef_result1_upvr_8 (readonly)
			[12]: any_useRef_result1_upvr (readonly)
			[13]: any_useRef_result1_upvr_2 (readonly)
		]]
		any_useMemo_result1_upvr:unsubscribe(var8_result1_upvr, Logger_upvr)
		if any_useRef_result1_upvr_7.current then
			any_useRef_result1_upvr_7.current:Disconnect()
			any_useRef_result1_upvr_7.current = nil
		end
		if any_useRef_result1_upvr_9.current then
			any_useRef_result1_upvr_9.current:Disconnect()
			any_useRef_result1_upvr_9.current = nil
		end
		if any_useRef_result1_upvr_5.current then
			any_useRef_result1_upvr_5.current:Disconnect()
			any_useRef_result1_upvr_5.current = nil
		end
		if not game_DefineFastFlag_result1_upvr then
			if any_useRef_result1_upvr_6.current then
				any_useRef_result1_upvr_6.current:Disconnect()
				any_useRef_result1_upvr_6.current = nil
			end
			if any_useRef_result1_upvr_3.current then
				any_useRef_result1_upvr_3.current:Disconnect()
				any_useRef_result1_upvr_3.current = nil
			end
		end
		if any_useRef_result1_upvr_4.current then
			any_useRef_result1_upvr_4.current:Disconnect()
			any_useRef_result1_upvr_4.current = nil
		end
		if any_useRef_result1_upvr_8.current then
			any_useRef_result1_upvr_8.current:Disconnect()
			any_useRef_result1_upvr_8.current = nil
		end
		if any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current:Disconnect()
			any_useRef_result1_upvr.current = nil
		end
		if any_useRef_result1_upvr_2.current then
			any_useRef_result1_upvr_2.current:Disconnect()
			any_useRef_result1_upvr_2.current = nil
		end
	end
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local function var38_upvr() -- Line 111
		--[[ Upvalues[24]:
			[1]: any_useRef_result1_upvr_4 (readonly)
			[2]: default_upvr (copied, readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: VoiceStatusChanged_upvr (copied, readonly)
			[5]: CrossExperience_upvr (copied, readonly)
			[6]: FFlagCevAdditionalStatusLogging_upvr (copied, readonly)
			[7]: default_upvr_2 (copied, readonly)
			[8]: Players_upvr (copied, readonly)
			[9]: FIntPartyVoiceJoinRequestPulseCheckTimeout_upvr (copied, readonly)
			[10]: any_useRef_result1_upvr_2 (readonly)
			[11]: var8_result1_upvr (readonly)
			[12]: arg1 (readonly)
			[13]: any_useRef_result1_upvr_8 (readonly)
			[14]: getFFlagEnableCrossExpVoiceMemoryCheck_upvr (copied, readonly)
			[15]: any_useRef_result1_upvr (readonly)
			[16]: any_useRef_result1_upvr_7 (readonly)
			[17]: any_useMemo_result1_upvr (readonly)
			[18]: Logger_upvr (copied, readonly)
			[19]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[20]: any_useRef_result1_upvr_9 (readonly)
			[21]: any_useRef_result1_upvr_5 (readonly)
			[22]: ExperienceService_upvr (copied, readonly)
			[23]: any_useRef_result1_upvr_6 (readonly)
			[24]: any_useRef_result1_upvr_3 (readonly)
		]]
		any_useRef_result1_upvr_4.current = default_upvr.JoinRequested.Event:Connect(function() -- Line 112
			--[[ Upvalues[6]:
				[1]: useDispatch_upvr_result1_upvr (copied, readonly)
				[2]: VoiceStatusChanged_upvr (copied, readonly)
				[3]: CrossExperience_upvr (copied, readonly)
				[4]: FFlagCevAdditionalStatusLogging_upvr (copied, readonly)
				[5]: default_upvr_2 (copied, readonly)
				[6]: Players_upvr (copied, readonly)
			]]
			useDispatch_upvr_result1_upvr(VoiceStatusChanged_upvr({
				status = CrossExperience_upvr.Constants.VOICE_STATUS.RCC_CONNECTING;
			}))
			if FFlagCevAdditionalStatusLogging_upvr then
				local tbl_5 = {
					status = CrossExperience_upvr.Constants.VOICE_STATUS.RCC_CONNECTING;
					voiceChannelId = nil;
				}
				local var43
				tbl_5.voiceSessionId = var43
				if Players_upvr.LocalPlayer then
					var43 = tostring(Players_upvr.LocalPlayer.UserId)
				else
					var43 = ""
				end
				tbl_5.userId = var43
				default_upvr_2:logPartyVoiceStatusChanged(tbl_5)
			end
		end)
		if 0 < FIntPartyVoiceJoinRequestPulseCheckTimeout_upvr then
			any_useRef_result1_upvr_2.current = default_upvr.JoinRequestPulseCheck.Event:Connect(function() -- Line 128
				--[[ Upvalues[6]:
					[1]: var8_result1_upvr (copied, readonly)
					[2]: CrossExperience_upvr (copied, readonly)
					[3]: useDispatch_upvr_result1_upvr (copied, readonly)
					[4]: VoiceStatusChanged_upvr (copied, readonly)
					[5]: arg1 (copied, readonly)
					[6]: default_upvr (copied, readonly)
				]]
				local any_getState_result1 = var8_result1_upvr:getState()
				if any_getState_result1 and any_getState_result1.Squad and any_getState_result1.Squad.CrossExperienceVoice and any_getState_result1.Squad.CrossExperienceVoice.Experience.voiceStatus == CrossExperience_upvr.Constants.VOICE_STATUS.RCC_CONNECTING then
					useDispatch_upvr_result1_upvr(VoiceStatusChanged_upvr({
						status = CrossExperience_upvr.Constants.VOICE_STATUS.ERROR_RCC_TIMEOUT;
					}))
					if arg1 and arg1.handleRCCConnectionTimeout then
						default_upvr:logPartyVoiceTimeout()
						default_upvr:leave()
					end
				end
			end)
		end
		any_useRef_result1_upvr_8.current = default_upvr.JoinRequestSubmitted.Event:Connect(function(arg1_2) -- Line 151
			--[[ Upvalues[6]:
				[1]: useDispatch_upvr_result1_upvr (copied, readonly)
				[2]: VoiceStatusChanged_upvr (copied, readonly)
				[3]: CrossExperience_upvr (copied, readonly)
				[4]: FFlagCevAdditionalStatusLogging_upvr (copied, readonly)
				[5]: default_upvr_2 (copied, readonly)
				[6]: Players_upvr (copied, readonly)
			]]
			if not arg1_2 then
				useDispatch_upvr_result1_upvr(VoiceStatusChanged_upvr({
					status = CrossExperience_upvr.Constants.VOICE_STATUS.ERROR_START_BACKGROUND_DM;
				}))
				if FFlagCevAdditionalStatusLogging_upvr then
					local tbl_6 = {
						status = CrossExperience_upvr.Constants.VOICE_STATUS.ERROR_START_BACKGROUND_DM;
						voiceChannelId = nil;
					}
					local var55
					tbl_6.voiceSessionId = var55
					if Players_upvr.LocalPlayer then
						var55 = tostring(Players_upvr.LocalPlayer.UserId)
					else
						var55 = ""
					end
					tbl_6.userId = var55
					default_upvr_2:logPartyVoiceStatusChanged(tbl_6)
				end
			end
		end)
		if getFFlagEnableCrossExpVoiceMemoryCheck_upvr() then
			any_useRef_result1_upvr.current = default_upvr.JoinFeasibilityCheckPerformed.Event:Connect(function(arg1_3) -- Line 170
				--[[ Upvalues[6]:
					[1]: useDispatch_upvr_result1_upvr (copied, readonly)
					[2]: VoiceStatusChanged_upvr (copied, readonly)
					[3]: CrossExperience_upvr (copied, readonly)
					[4]: FFlagCevAdditionalStatusLogging_upvr (copied, readonly)
					[5]: default_upvr_2 (copied, readonly)
					[6]: Players_upvr (copied, readonly)
				]]
				if not arg1_3 then
					useDispatch_upvr_result1_upvr(VoiceStatusChanged_upvr({
						status = CrossExperience_upvr.Constants.VOICE_STATUS.ERROR_JOIN_FEASIBILITY_CHECK_FAILED;
					}))
					if FFlagCevAdditionalStatusLogging_upvr then
						local tbl = {
							status = CrossExperience_upvr.Constants.VOICE_STATUS.ERROR_JOIN_FEASIBILITY_CHECK_FAILED;
							voiceChannelId = nil;
						}
						local var59
						tbl.voiceSessionId = var59
						if Players_upvr.LocalPlayer then
							var59 = tostring(Players_upvr.LocalPlayer.UserId)
						else
							var59 = ""
						end
						tbl.userId = var59
						default_upvr_2:logPartyVoiceStatusChanged(tbl)
					end
				end
			end)
		end
		any_useRef_result1_upvr_7.current = default_upvr.ExperienceJoined.Event:Connect(function() -- Line 188
			--[[ Upvalues[5]:
				[1]: any_useMemo_result1_upvr (copied, readonly)
				[2]: var8_result1_upvr (copied, readonly)
				[3]: Logger_upvr (copied, readonly)
				[4]: game_GetEngineFeature_result1_upvr (copied, readonly)
				[5]: default_upvr (copied, readonly)
			]]
			any_useMemo_result1_upvr:subscribe(var8_result1_upvr, Logger_upvr)
			if game_GetEngineFeature_result1_upvr then
				default_upvr:signalCevReadinessSync()
			end
		end)
		any_useRef_result1_upvr_9.current = default_upvr.ExperienceJoinFailed.Event:Connect(function() -- Line 196
			--[[ Upvalues[3]:
				[1]: any_useMemo_result1_upvr (copied, readonly)
				[2]: var8_result1_upvr (copied, readonly)
				[3]: Logger_upvr (copied, readonly)
			]]
			any_useMemo_result1_upvr:unsubscribe(var8_result1_upvr, Logger_upvr)
		end)
		any_useRef_result1_upvr_5.current = default_upvr.ExperienceLeft.Event:Connect(function() -- Line 200
			--[[ Upvalues[3]:
				[1]: any_useMemo_result1_upvr (copied, readonly)
				[2]: var8_result1_upvr (copied, readonly)
				[3]: Logger_upvr (copied, readonly)
			]]
			any_useMemo_result1_upvr:unsubscribe(var8_result1_upvr, Logger_upvr)
		end)
		if ExperienceService_upvr then
			any_useRef_result1_upvr_6.current = ExperienceService_upvr:RegisterForExperienceJoin(function() -- Line 206
				--[[ Upvalues[3]:
					[1]: any_useMemo_result1_upvr (copied, readonly)
					[2]: var8_result1_upvr (copied, readonly)
					[3]: Logger_upvr (copied, readonly)
				]]
				if game.PlaceId == 0 then
					any_useMemo_result1_upvr:unsubscribe(var8_result1_upvr, Logger_upvr)
				end
			end)
			any_useRef_result1_upvr_3.current = ExperienceService_upvr:RegisterForExperienceLeave(function() -- Line 212
				--[[ Upvalues[3]:
					[1]: any_useMemo_result1_upvr (copied, readonly)
					[2]: var8_result1_upvr (copied, readonly)
					[3]: Logger_upvr (copied, readonly)
				]]
				if game.PlaceId == 0 then
					any_useMemo_result1_upvr:restoreStateFromBackground(var8_result1_upvr, Logger_upvr)
				end
			end)
		end
	end
	useEffect_upvr(function() -- Line 221
		--[[ Upvalues[2]:
			[1]: var38_upvr (readonly)
			[2]: var37_upvr (readonly)
		]]
		var38_upvr()
		return function() -- Line 223
			--[[ Upvalues[1]:
				[1]: var37_upvr (copied, readonly)
			]]
			var37_upvr()
		end
	end, {})
	return nil
end