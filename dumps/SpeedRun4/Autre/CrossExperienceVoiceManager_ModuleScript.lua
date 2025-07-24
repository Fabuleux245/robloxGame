-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:14
-- Luau version 6, Types version 3
-- Time taken: 0.019854 seconds

local CrossExperienceVoice = script:FindFirstAncestor("CrossExperienceVoice")
local ExperienceService_upvr = game:GetService("ExperienceService")
local Players_upvr = game:GetService("Players")
local dependencies = require(CrossExperienceVoice.dependencies)
local CrossExperience_upvr = dependencies.CrossExperience
local Communication_upvr = CrossExperience_upvr.Communication
local SharedFlags = dependencies.SharedFlags
local LuauPolyfill = dependencies.LuauPolyfill
local Logger_upvr = require(CrossExperienceVoice.Logger)
local module_upvr = {}
module_upvr.__index = module_upvr
local getFFlagEnableCrossExpVoiceMemoryCheck_upvr = SharedFlags.getFFlagEnableCrossExpVoiceMemoryCheck
local GetFFlagEnableCrossExperienceVoiceCaptureMute_upvr = SharedFlags.GetFFlagEnableCrossExperienceVoiceCaptureMute
local clearTimeout_upvr = LuauPolyfill.clearTimeout
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("PartyVoiceControlsAnalytics", false)
local function var16_upvr() -- Line 54
end
local function _() -- Line 118
	--[[ Upvalues[1]:
		[1]: CrossExperience_upvr (readonly)
	]]
	if game.PlaceId == 0 then
		return CrossExperience_upvr.Constants.EXPERIENCE_TYPE_LUAAPP
	end
	return CrossExperience_upvr.Constants.EXPERIENCE_TYPE_UGC
end
local CrossExperienceVoiceAnalytics_upvr = require(CrossExperienceVoice.CrossExperienceVoiceAnalytics)
function module_upvr.new() -- Line 124
	--[[ Upvalues[3]:
		[1]: CrossExperience_upvr (readonly)
		[2]: CrossExperienceVoiceAnalytics_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local module = {
		joinRequestPulseCheckId = nil;
		connections = {};
		isInitialized = false;
		isConnected = false;
		shouldIgnoreMemoryWarning = false;
		hasExperienceStarted = false;
		ExperienceJoined = Instance.new("BindableEvent");
		ExperienceJoinFailed = Instance.new("BindableEvent");
		ExperienceLeft = Instance.new("BindableEvent");
		JoinFeasibilityCheckPerformed = Instance.new("BindableEvent");
		JoinRequestPulseCheck = Instance.new("BindableEvent");
		JoinRequested = Instance.new("BindableEvent");
		JoinRequestSubmitted = Instance.new("BindableEvent");
		MemoryLow = Instance.new("BindableEvent");
		VoiceEuModalConsented = Instance.new("BindableEvent");
		VoiceEuModalRefused = Instance.new("BindableEvent");
	}
	local EventManager = CrossExperience_upvr.EventManager
	if game.PlaceId == 0 then
		EventManager = CrossExperience_upvr.Constants.EXPERIENCE_TYPE_LUAAPP
	else
		EventManager = CrossExperience_upvr.Constants.EXPERIENCE_TYPE_UGC
	end
	module.cevEventManager = EventManager.new(EventManager, false)
	module.voiceAnalytics = CrossExperienceVoiceAnalytics_upvr.default
	module.isActiveDM = true
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.logPartyVoiceTimeout(arg1) -- Line 155
	arg1.voiceAnalytics:logPartyVoiceTimeout(arg1.currentPartyId)
end
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("FixCevStartedSignal", false)
local FFlagEnableCEVErrorRCCTimeoutLogs_upvr = SharedFlags.FFlagEnableCEVErrorRCCTimeoutLogs
local Flags_upvr = require(CrossExperienceVoice.Flags)
local game_DefineFastFlag_result1_upvr_4 = game:DefineFastFlag("LogPartyVoiceGameJoinFailure2", false)
local NotificationService_upvr = game:GetService("NotificationService")
function module_upvr.initialize(arg1) -- Line 159
	--[[ Upvalues[9]:
		[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[2]: ExperienceService_upvr (readonly)
		[3]: CrossExperience_upvr (readonly)
		[4]: FFlagEnableCEVErrorRCCTimeoutLogs_upvr (readonly)
		[5]: Flags_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[7]: Players_upvr (readonly)
		[8]: getFFlagEnableCrossExpVoiceMemoryCheck_upvr (readonly)
		[9]: NotificationService_upvr (readonly)
	]]
	arg1.voiceAnalytics:initialize(arg1.cevEventManager)
	if game_DefineFastFlag_result1_upvr_2 then
		if arg1.isInitialized == true then return end
		table.insert(arg1.connections, ExperienceService_upvr:RegisterForExperienceJoin(function() -- Line 169
			--[[ Upvalues[2]:
				[1]: CrossExperience_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			local var27
			if game.PlaceId == 0 then
				var27 = CrossExperience_upvr.Constants.EXPERIENCE_TYPE_LUAAPP
			else
				var27 = CrossExperience_upvr.Constants.EXPERIENCE_TYPE_UGC
			end
			if var27 == CrossExperience_upvr.Constants.EXPERIENCE_TYPE_LUAAPP then
				var27 = arg1
				var27.isActiveDM = false
			end
		end))
		table.insert(arg1.connections, ExperienceService_upvr:RegisterForExperienceLeave(function() -- Line 179
			--[[ Upvalues[2]:
				[1]: CrossExperience_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			local var29
			if game.PlaceId == 0 then
				var29 = CrossExperience_upvr.Constants.EXPERIENCE_TYPE_LUAAPP
			else
				var29 = CrossExperience_upvr.Constants.EXPERIENCE_TYPE_UGC
			end
			if var29 == CrossExperience_upvr.Constants.EXPERIENCE_TYPE_LUAAPP then
				var29 = arg1
				var29.isActiveDM = true
			end
		end))
	end
	table.insert(arg1.connections, ExperienceService_upvr.OnCrossExperienceStarted:Connect(function(arg1_2, arg2) -- Line 190
		--[[ Upvalues[8]:
			[1]: FFlagEnableCEVErrorRCCTimeoutLogs_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
			[4]: CrossExperience_upvr (copied, readonly)
			[5]: Flags_upvr (copied, readonly)
			[6]: game_DefineFastFlag_result1_upvr_4 (copied, readonly)
			[7]: Players_upvr (copied, readonly)
			[8]: getFFlagEnableCrossExpVoiceMemoryCheck_upvr (copied, readonly)
		]]
		if FFlagEnableCEVErrorRCCTimeoutLogs_upvr then
			arg1.voiceAnalytics:logPartyVoiceOnCrossExperienceStartedSignalReceived(arg1.hasExperienceStarted, arg1.isActiveDM)
		end
		if not game_DefineFastFlag_result1_upvr_2 then
			arg1.hasExperienceStarted = true
		end
		if game_DefineFastFlag_result1_upvr_2 and arg1.hasExperienceStarted then
		else
			arg1.cevEventManager:addObserver(CrossExperience_upvr.Constants.EVENTS.PARTY_VOICE_STATUS_CHANGED, function(arg1_3) -- Line 207
				--[[ Upvalues[5]:
					[1]: FFlagEnableCEVErrorRCCTimeoutLogs_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
					[4]: Flags_upvr (copied, readonly)
					[5]: CrossExperience_upvr (copied, readonly)
				]]
				if FFlagEnableCEVErrorRCCTimeoutLogs_upvr then
					arg1.voiceAnalytics:logPartyVoiceStateChangeHandlerRun(arg1.isActiveDM, arg1_3)
				end
				if game_DefineFastFlag_result1_upvr_2 and not arg1.isActiveDM then
				else
					local var32
					if var32 then
						if arg1.isActiveDM then
							var32 = CrossExperience_upvr.Constants.EXPERIENCE_TYPE_LUAAPP
						else
							var32 = CrossExperience_upvr.Constants.EXPERIENCE_TYPE_UGC
						end
						if arg1_3.status == CrossExperience_upvr.Constants.VOICE_STATUS.VOICE_CONNECTED then
							arg1.voiceAnalytics:logPartyVoiceConnectedState(arg1_3, arg1.currentPartyId, var32)
						end
						arg1.voiceAnalytics:logPartyVoiceStatusChanged(arg1_3, arg1.currentPartyId, var32)
					else
						var32 = arg1_3.status
						if var32 == CrossExperience_upvr.Constants.VOICE_STATUS.VOICE_CONNECTED then
							var32 = arg1.voiceAnalytics:logPartyVoiceConnectedState
							var32(arg1_3, arg1.currentPartyId, "")
						end
						var32 = arg1.voiceAnalytics:logPartyVoiceStatusChanged
						var32(arg1_3, arg1.currentPartyId, "")
					end
					if arg1_3.status == CrossExperience_upvr.Constants.VOICE_STATUS.ERROR_VOICE_DISCONNECTED then
						arg1:leave()
					end
				end
			end)
			arg1.cevEventManager:addObserver(CrossExperience_upvr.Constants.EVENTS.PARTY_VOICE_GAME_JOIN_FAILED, function(arg1_4) -- Line 242
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: game_DefineFastFlag_result1_upvr_4 (copied, readonly)
					[3]: Players_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				arg1.ExperienceJoinFailed:Fire()
				local var34
				if var34 then
					if Players_upvr.LocalPlayer then
						var34 = Players_upvr.LocalPlayer.UserId
					else
						var34 = 0
					end
					local var35
					if arg1_4 and arg1_4.state then
						var35 = "PARTY_VOICE_GAME_JOIN_FAILED:"..tostring(arg1_4.state)
					end
					arg1.voiceAnalytics:logPartyVoiceJoinFailure(arg1.currentPartyId, var35, var34)
				end
			end)
			if getFFlagEnableCrossExpVoiceMemoryCheck_upvr() then
				arg1.cevEventManager:addObserver(CrossExperience_upvr.Constants.EVENTS.PARTY_VOICE_MEMORY_LOW, function() -- Line 255
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1:ignoreMemoryWarning()
					if not arg1.shouldIgnoreMemoryWarning then
						arg1.MemoryLow:Fire()
						arg1.shouldIgnoreMemoryWarning = true
					end
				end)
			end
			arg1.ExperienceJoined:Fire()
			if game_DefineFastFlag_result1_upvr_2 then
				arg1.hasExperienceStarted = true
			end
		end
	end))
	table.insert(arg1.connections, ExperienceService_upvr.OnCrossExperienceStopped:Connect(function(arg1_5, arg2) -- Line 272
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:disconnect()
		arg1.ExperienceLeft:Fire()
	end))
	table.insert(arg1.connections, NotificationService_upvr.RobloxEventReceived:Connect(function(arg1_6) -- Line 283
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_6.detailType == "SignOut" then
			arg1:onUserLogout()
		end
	end))
	arg1.isInitialized = true
end
function module_upvr.onUserLogout(arg1) -- Line 292
	if arg1.hasExperienceStarted then
		arg1:leave()
	end
	if arg1.isConnected then
		arg1:disconnect()
		arg1.ExperienceLeft:Fire()
	end
end
function module_upvr.getIsConnected(arg1) -- Line 302
	return arg1.isConnected
end
local FFlagDisconnectOnBackgroundDmPassiveState_upvr = SharedFlags.FFlagDisconnectOnBackgroundDmPassiveState
function module_upvr.setAsDisconnected(arg1) -- Line 306
	--[[ Upvalues[1]:
		[1]: FFlagDisconnectOnBackgroundDmPassiveState_upvr (readonly)
	]]
	if FFlagDisconnectOnBackgroundDmPassiveState_upvr then
		arg1.isConnected = false
		arg1.hasExperienceStarted = false
		if arg1.ExperienceLeft then
			arg1.ExperienceLeft:Fire()
		end
	end
end
function module_upvr.setAsConnected(arg1) -- Line 316
	if not arg1.isInitialized then
		arg1:initialize()
	end
	arg1.isConnected = true
	arg1.hasExperienceStarted = true
	arg1.ExperienceJoined:Fire()
end
local Promise_upvr = dependencies.Promise
local BACKGROUND_DM_STATUS_upvr = CrossExperience_upvr.Constants.BACKGROUND_DM_STATUS
function module_upvr.getIsBackgroundDMActive(arg1) -- Line 325
	--[[ Upvalues[4]:
		[1]: Promise_upvr (readonly)
		[2]: Communication_upvr (readonly)
		[3]: CrossExperience_upvr (readonly)
		[4]: BACKGROUND_DM_STATUS_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_7, arg2) -- Line 326
		--[[ Upvalues[3]:
			[1]: Communication_upvr (copied, readonly)
			[2]: CrossExperience_upvr (copied, readonly)
			[3]: BACKGROUND_DM_STATUS_upvr (copied, readonly)
		]]
		Communication_upvr.execute(CrossExperience_upvr.Constants.COMMUNICATIONS.EXECUTE_GET_BACKGROUND_DM_STATE, {}, function(arg1_8) -- Line 330
			--[[ Upvalues[2]:
				[1]: arg1_7 (readonly)
				[2]: BACKGROUND_DM_STATUS_upvr (copied, readonly)
			]]
			local var44 = true
			if arg1_8.status ~= BACKGROUND_DM_STATUS_upvr.ACTIVE then
				if arg1_8.status ~= BACKGROUND_DM_STATUS_upvr.BACKGROUND then
					var44 = false
				else
					var44 = true
				end
			end
			arg1_7(var44)
		end, function() -- Line 333
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			arg2()
		end)
	end)
end
function module_upvr.performJoinFeasibilityCheck(arg1) -- Line 341
	--[[ Upvalues[3]:
		[1]: getFFlagEnableCrossExpVoiceMemoryCheck_upvr (readonly)
		[2]: CrossExperience_upvr (readonly)
		[3]: Logger_upvr (readonly)
	]]
	if not getFFlagEnableCrossExpVoiceMemoryCheck_upvr() then
		return true
	end
	local pcall_result1_2, pcall_result2_3_upvr = pcall(function() -- Line 345
		return game:GetService("PerformanceControlService")
	end)
	if not pcall_result1_2 or not pcall_result2_3_upvr then
		arg1.JoinFeasibilityCheckPerformed:Fire(false)
		return false
	end
	local pcall_result1_4, pcall_result2_2 = pcall(function() -- Line 354
		--[[ Upvalues[2]:
			[1]: pcall_result2_3_upvr (readonly)
			[2]: CrossExperience_upvr (copied, readonly)
		]]
		return pcall_result2_3_upvr:IsCrossExperienceLaunchFeasible(CrossExperience_upvr.Constants.EXPERIENCE_TYPE_VOICE)
	end)
	if not pcall_result1_4 then
		Logger_upvr:warn("performJoinFeasibilityCheck() - failed to check feasibility", pcall_result2_2)
		arg1.JoinFeasibilityCheckPerformed:Fire(false)
		return false
	end
	arg1.JoinFeasibilityCheckPerformed:Fire(pcall_result2_2)
	return pcall_result2_2
end
function module_upvr.ignoreMemoryWarning(arg1) -- Line 370
	--[[ Upvalues[4]:
		[1]: getFFlagEnableCrossExpVoiceMemoryCheck_upvr (readonly)
		[2]: Communication_upvr (readonly)
		[3]: CrossExperience_upvr (readonly)
		[4]: var16_upvr (readonly)
	]]
	if not getFFlagEnableCrossExpVoiceMemoryCheck_upvr() then
	else
		Communication_upvr.execute(CrossExperience_upvr.Constants.COMMUNICATIONS.EXECUTE_PARTY_VOICE_IGNORE_LOW_MEMORY, {}, var16_upvr, var16_upvr)
	end
end
local game_DefineFastString_result1_upvr = game:DefineFastString("CrossExpVoicePlaceId", tostring(require(CrossExperienceVoice.Common.Constants).DEFAULT_EXPERIENCE_PLACE_ID))
local FIntPartyVoiceJoinRequestPulseCheckTimeout_upvr = SharedFlags.FIntPartyVoiceJoinRequestPulseCheckTimeout
local setTimeout_upvr = LuauPolyfill.setTimeout
local getFFlagJoinCrossExpVoiceWithPartyId_upvr = SharedFlags.getFFlagJoinCrossExpVoiceWithPartyId
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LogPartyVoiceJoinFailure", false)
function module_upvr.join(arg1, arg2) -- Line 383
	--[[ Upvalues[10]:
		[1]: game_DefineFastString_result1_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: CrossExperience_upvr (readonly)
		[4]: FIntPartyVoiceJoinRequestPulseCheckTimeout_upvr (readonly)
		[5]: clearTimeout_upvr (readonly)
		[6]: setTimeout_upvr (readonly)
		[7]: getFFlagJoinCrossExpVoiceWithPartyId_upvr (readonly)
		[8]: Logger_upvr (readonly)
		[9]: ExperienceService_upvr (readonly)
		[10]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 69 start (CF ANALYSIS FAILED)
	if arg2.shouldIgnoreMemoryWarning then
		arg1.shouldIgnoreMemoryWarning = true
	end
	if not arg1.isInitialized then
		arg1:initialize()
	end
	local tonumber_result1_upvr = tonumber(game_DefineFastString_result1_upvr)
	local var73
	if arg1.isConnected and not arg2.force then
		print("CrossExperienceVoiceManager:join() - already connected, returning early.")
		arg1.JoinRequestSubmitted:Fire(true)
	else
		if game:GetEngineFeature("CEVGetBackgroundState") then
			local any_await_result1_2, any_await_result2_2 = arg1:getIsBackgroundDMActive():await()
			if any_await_result1_2 and any_await_result2_2 and not arg2.force then
				arg1:setAsConnected()
				arg1.JoinRequestSubmitted:Fire(true)
				return
			end
		end
		local tbl_2 = {}
		var73 = arg1.isConnected
		tbl_2.isConnected = var73
		tbl_2.targetPlaceId = tonumber_result1_upvr
		var73 = arg2.partyId
		tbl_2.partyId = var73
		if Players_upvr.LocalPlayer then
			var73 = Players_upvr.LocalPlayer.UserId
		else
			var73 = 0
		end
		tbl_2.userId = var73
		if arg1.isActiveDM then
		else
		end
		tbl_2.activeDm = CrossExperience_upvr.Constants.EXPERIENCE_TYPE_UGC
		arg1.voiceAnalytics:logPartyVoiceJoinAttempt(tbl_2)
		arg1.JoinRequested:Fire()
		if 0 < FIntPartyVoiceJoinRequestPulseCheckTimeout_upvr then
			if arg1.joinRequestPulseCheckId then
				clearTimeout_upvr(arg1.joinRequestPulseCheckId)
				arg1.joinRequestPulseCheckId = nil
			end
			arg1.joinRequestPulseCheckId = setTimeout_upvr(function() -- Line 425
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.JoinRequestPulseCheck:Fire()
			end, FIntPartyVoiceJoinRequestPulseCheckTimeout_upvr)
		end
		arg1.isConnected = true
		if getFFlagJoinCrossExpVoiceWithPartyId_upvr() then
			if not arg2 or not arg2.partyId then
				Logger_upvr:warn("CrossExperienceVoiceManager:join() - params.partyId is required to join cross experience voice")
				arg1.isConnected = false
				arg1.currentPartyId = nil
				arg1.JoinRequestSubmitted:Fire(arg1.isConnected)
				return
			end
			arg1.currentPartyId = arg2.partyId
			local pcall_result1_3, pcall_result2_6 = pcall(function() -- Line 444
				--[[ Upvalues[5]:
					[1]: Logger_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: ExperienceService_upvr (copied, readonly)
					[4]: CrossExperience_upvr (copied, readonly)
					[5]: tonumber_result1_upvr (readonly)
				]]
				Logger_upvr:info("CrossExperienceVoiceManager:join() - starting cross experience voice with partyId "..arg2.partyId)
				ExperienceService_upvr:StartCrossExperience(CrossExperience_upvr.Constants.EXPERIENCE_TYPE_VOICE, {
					partyId = arg2.partyId;
					placeId = tonumber_result1_upvr;
				})
			end)
			if not pcall_result1_3 then
				Logger_upvr:warn("Failed to join cross experience voice with partyId "..arg2.partyId, pcall_result2_6)
				local var82 = game_DefineFastFlag_result1_upvr
				if var82 then
					if Players_upvr.LocalPlayer then
						var82 = Players_upvr.LocalPlayer.UserId
					else
						var82 = 0
					end
					arg1.voiceAnalytics:logPartyVoiceJoinFailure(arg2.partyId, pcall_result2_6, var82)
				end
				arg1.currentPartyId = nil
				-- KONSTANTWARNING: GOTO [232] #167
			end
		else
			local pcall_result1_7, pcall_result2_4 = pcall(function() -- Line 464
				--[[ Upvalues[4]:
					[1]: Logger_upvr (copied, readonly)
					[2]: ExperienceService_upvr (copied, readonly)
					[3]: CrossExperience_upvr (copied, readonly)
					[4]: tonumber_result1_upvr (readonly)
				]]
				Logger_upvr:info("CrossExperienceVoiceManager:join() - starting cross experience voice")
				ExperienceService_upvr:StartCrossExperience(CrossExperience_upvr.Constants.EXPERIENCE_TYPE_VOICE, {
					placeId = tonumber_result1_upvr;
				})
			end)
			if not pcall_result1_7 then
				Logger_upvr:warn("Failed to join cross experience voice: ", pcall_result2_4)
				arg1.isConnected = false
				arg1.currentPartyId = nil
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 69 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [232] 167. Error Block 41 start (CF ANALYSIS FAILED)
		arg1.JoinRequestSubmitted:Fire(arg1.isConnected)
		-- KONSTANTERROR: [232] 167. Error Block 41 end (CF ANALYSIS FAILED)
	end
end
function module_upvr.changeInputDevice(arg1, arg2, arg3) -- Line 481
	--[[ Upvalues[3]:
		[1]: Communication_upvr (readonly)
		[2]: CrossExperience_upvr (readonly)
		[3]: var16_upvr (readonly)
	]]
	local tbl_6 = {}
	tbl_6.deviceName = arg2
	tbl_6.deviceGuid = arg3
	Communication_upvr.execute(CrossExperience_upvr.Constants.COMMUNICATIONS.EXECUTE_CHANGE_PARTY_VOICE_INPUT_DEVICE, tbl_6, var16_upvr, var16_upvr)
end
function module_upvr.changeOutputDevice(arg1, arg2, arg3) -- Line 488
	--[[ Upvalues[3]:
		[1]: Communication_upvr (readonly)
		[2]: CrossExperience_upvr (readonly)
		[3]: var16_upvr (readonly)
	]]
	local tbl_12 = {}
	tbl_12.deviceName = arg2
	tbl_12.deviceGuid = arg3
	Communication_upvr.execute(CrossExperience_upvr.Constants.COMMUNICATIONS.EXECUTE_CHANGE_PARTY_VOICE_OUTPUT_DEVICE, tbl_12, var16_upvr, var16_upvr)
end
function module_upvr.muteVoiceParticipant(arg1, arg2) -- Line 495
	--[[ Upvalues[2]:
		[1]: CrossExperience_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_3 (readonly)
	]]
	local tbl_10 = {}
	tbl_10.userId = arg2
	arg1.cevEventManager:notify(CrossExperience_upvr.Constants.EVENTS.MUTE_PARTY_VOICE_PARTICIPANT, tbl_10)
	if game_DefineFastFlag_result1_upvr_3 then
		arg1.voiceAnalytics:logPartyVoiceMuteParticipant(arg1.currentPartyId, arg2)
	end
end
function module_upvr.unmuteVoiceParticipant(arg1, arg2) -- Line 505
	--[[ Upvalues[2]:
		[1]: CrossExperience_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_3 (readonly)
	]]
	local tbl_8 = {}
	tbl_8.userId = arg2
	arg1.cevEventManager:notify(CrossExperience_upvr.Constants.EVENTS.UNMUTE_PARTY_VOICE_PARTICIPANT, tbl_8)
	if game_DefineFastFlag_result1_upvr_3 then
		arg1.voiceAnalytics:logPartyVoiceUnmuteParticipant(arg1.currentPartyId, arg2)
	end
end
function module_upvr.blockVoiceParticipant(arg1, arg2) -- Line 515
	--[[ Upvalues[2]:
		[1]: CrossExperience_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_3 (readonly)
	]]
	if arg1.isConnected then
		local tbl_9 = {}
		tbl_9.userId = arg2
		arg1.cevEventManager:notify(CrossExperience_upvr.Constants.EVENTS.PARTY_VOICE_BLOCK_PARTICIPANT, tbl_9)
		if game_DefineFastFlag_result1_upvr_3 then
			arg1.voiceAnalytics:logPartyVoiceBlockParticipant(arg1.currentPartyId, arg2)
		end
	end
end
function module_upvr.unblockVoiceParticipant(arg1, arg2) -- Line 527
	--[[ Upvalues[2]:
		[1]: CrossExperience_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_3 (readonly)
	]]
	if arg1.isConnected then
		local tbl_4 = {}
		tbl_4.userId = arg2
		arg1.cevEventManager:notify(CrossExperience_upvr.Constants.EVENTS.PARTY_VOICE_UNBLOCK_PARTICIPANT, tbl_4)
		if game_DefineFastFlag_result1_upvr_3 then
			arg1.voiceAnalytics:logPartyVoiceUnblockParticipant(arg1.currentPartyId, arg2)
		end
	end
end
function module_upvr.dumpDebugData(arg1) -- Line 539
	--[[ Upvalues[1]:
		[1]: CrossExperience_upvr (readonly)
	]]
	arg1.cevEventManager:notify(CrossExperience_upvr.Constants.EVENTS.DEBUG_COMMAND, {
		name = "dump_session";
	})
end
function module_upvr.leave(arg1) -- Line 545
	--[[ Upvalues[3]:
		[1]: ExperienceService_upvr (readonly)
		[2]: CrossExperience_upvr (readonly)
		[3]: clearTimeout_upvr (readonly)
	]]
	ExperienceService_upvr:StopCrossExperience(CrossExperience_upvr.Constants.EXPERIENCE_TYPE_VOICE, {})
	if arg1.joinRequestPulseCheckId then
		clearTimeout_upvr(arg1.joinRequestPulseCheckId)
		arg1.joinRequestPulseCheckId = nil
	end
	arg1.voiceAnalytics:reset()
end
function module_upvr.rejoinVoice(arg1) -- Line 556
	--[[ Upvalues[1]:
		[1]: CrossExperience_upvr (readonly)
	]]
	arg1.cevEventManager:notify(CrossExperience_upvr.Constants.EVENTS.PARTY_VOICE_RECONNECT_REQUESTED, {})
end
local any_createPersistenceMiddleware_result1_upvr = CrossExperience_upvr.Middlewares.createPersistenceMiddleware({
	storeKey = CrossExperience_upvr.Constants.STORAGE_CEV_STORE_KEY;
})
function module_upvr.disconnect(arg1) -- Line 560
	--[[ Upvalues[2]:
		[1]: clearTimeout_upvr (readonly)
		[2]: any_createPersistenceMiddleware_result1_upvr (readonly)
	]]
	arg1.isConnected = false
	arg1.currentPartyId = nil
	arg1.hasExperienceStarted = false
	arg1.shouldIgnoreMemoryWarning = false
	if arg1.joinRequestPulseCheckId then
		clearTimeout_upvr(arg1.joinRequestPulseCheckId)
		arg1.joinRequestPulseCheckId = nil
	end
	any_createPersistenceMiddleware_result1_upvr.clean()
end
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("AudioFocusManagement")
function module_upvr.getAudioFocusService(arg1) -- Line 575
	--[[ Upvalues[1]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	if not game_GetEngineFeature_result1_upvr then
		return nil
	end
	local pcall_result1_5, pcall_result2 = pcall(function() -- Line 581
		return game:GetService("AudioFocusService")
	end)
	if not pcall_result1_5 or not pcall_result2 then
		return nil
	end
	return pcall_result2
end
function module_upvr.getCurrentAudioContext(arg1) -- Line 591
	local any_getAudioFocusService_result1_2 = arg1:getAudioFocusService()
	if any_getAudioFocusService_result1_2 == nil then
		return -1
	end
	return any_getAudioFocusService_result1_2:GetFocusedContextId()
end
local AUDIO_FOCUS_MANAGEMENT_upvr = CrossExperience_upvr.Constants.AUDIO_FOCUS_MANAGEMENT
function module_upvr.toggleAudioFocus(arg1) -- Line 600
	--[[ Upvalues[1]:
		[1]: AUDIO_FOCUS_MANAGEMENT_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_getAudioFocusService_result1 = arg1:getAudioFocusService()
	local var110
	if any_getAudioFocusService_result1 == nil then
	else
		var110 = false
		for i, _ in pairs(any_getAudioFocusService_result1:GetRegisteredContexts()) do
			if i == AUDIO_FOCUS_MANAGEMENT_upvr.CEV.CONTEXT_ID then
				var110 = true
			end
			if i == AUDIO_FOCUS_MANAGEMENT_upvr.UGC.CONTEXT_ID then
			end
		end
		if not var110 or not true then return end
		if any_getAudioFocusService_result1:GetFocusedContextId() ~= AUDIO_FOCUS_MANAGEMENT_upvr.CEV.CONTEXT_ID or not AUDIO_FOCUS_MANAGEMENT_upvr.UGC.CONTEXT_ID then
		end
		any_getAudioFocusService_result1:AcquireFocus(AUDIO_FOCUS_MANAGEMENT_upvr.CEV.CONTEXT_ID)
	end
end
function module_upvr.muteAll(arg1, arg2) -- Line 629
	--[[ Upvalues[2]:
		[1]: GetFFlagEnableCrossExperienceVoiceCaptureMute_upvr (readonly)
		[2]: CrossExperience_upvr (readonly)
	]]
	if not GetFFlagEnableCrossExperienceVoiceCaptureMute_upvr() then
	elseif arg1.isConnected then
		local tbl_7 = {}
		tbl_7.context = arg2
		arg1.cevEventManager:notify(CrossExperience_upvr.Constants.EVENTS.PARTY_VOICE_MUTE_ALL, tbl_7)
	end
end
function module_upvr.unmuteAll(arg1, arg2) -- Line 640
	--[[ Upvalues[2]:
		[1]: GetFFlagEnableCrossExperienceVoiceCaptureMute_upvr (readonly)
		[2]: CrossExperience_upvr (readonly)
	]]
	if not GetFFlagEnableCrossExperienceVoiceCaptureMute_upvr() then
	elseif arg1.isConnected then
		local tbl_11 = {}
		tbl_11.context = arg2
		arg1.cevEventManager:notify(CrossExperience_upvr.Constants.EVENTS.PARTY_VOICE_UNMUTE_ALL, tbl_11)
	end
end
function module_upvr.signalCevReadinessSync(arg1) -- Line 651
	--[[ Upvalues[1]:
		[1]: CrossExperience_upvr (readonly)
	]]
	if not game:GetEngineFeature("CevReadinessSync") then
	else
		arg1.cevEventManager:notify(CrossExperience_upvr.Constants.EVENTS.FOREGROUND_UI_READY, {})
	end
end
module_upvr.default = module_upvr.new()
return module_upvr