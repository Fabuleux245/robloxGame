-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:53
-- Luau version 6, Types version 3
-- Time taken: 0.007330 seconds

local HttpService_upvr = game:GetService("HttpService")
local CrossExperience = script:FindFirstAncestor("CrossExperience")
local dependencies = require(CrossExperience.dependencies)
local Communication_upvr = require(CrossExperience.Communication)
local Constants_upvr = require(CrossExperience.Constants)
local Actions_upvr = require(CrossExperience.Actions)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableCrossExpEventLogging", false)
local SharedFlags = dependencies.SharedFlags
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local EventQueue_upvr = require(CrossExperience.Utils.EventQueue)
function module_2_upvr.new(arg1, arg2) -- Line 99
	--[[ Upvalues[2]:
		[1]: EventQueue_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local module = {
		observers = {};
	}
	module.experienceType = arg1
	module.isSubscribed = false
	module.eventQueue = EventQueue_upvr.new(arg2)
	setmetatable(module, module_2_upvr)
	return module
end
local function _(arg1) -- Line 110
	return {
		userId = tonumber(arg1.userId) or -1;
		isLocalUser = arg1.isLocalUser;
	}
end
local var14_upvw = 0
local any_GenerateGUID_result1_upvr = HttpService_upvr:GenerateGUID(false)
function module_2_upvr.notify(arg1, arg2, arg3) -- Line 117
	--[[ Upvalues[3]:
		[1]: var14_upvw (read and write)
		[2]: any_GenerateGUID_result1_upvr (readonly)
		[3]: Communication_upvr (readonly)
	]]
	if not arg3 then
		local tbl_2 = {}
	end
	var14_upvw += 1
	tbl_2._seq = var14_upvw
	tbl_2._origin = any_GenerateGUID_result1_upvr
	Communication_upvr.notify(arg2, tbl_2)
end
function module_2_upvr.removeObserver(arg1, arg2, arg3) -- Line 128
	--[[ Upvalues[1]:
		[1]: Communication_upvr (readonly)
	]]
	Communication_upvr.removeObserver(arg1.experienceType, arg3, arg2)
end
function module_2_upvr.addObserver(arg1, arg2, arg3) -- Line 132
	--[[ Upvalues[1]:
		[1]: Communication_upvr (readonly)
	]]
	local tbl = {
		id = Communication_upvr.addObserver(arg1.experienceType, arg2, function(arg1_2) -- Line 133
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
			]]
			arg1.eventQueue:process(arg2, arg1_2, arg3)
		end);
	}
	tbl.event = arg2
	table.insert(arg1.observers, tbl)
end
local Cryo_upvr = dependencies.Cryo
local Models_upvr = require(CrossExperience.Models)
local FFlagPartyVoiceMuteOthers_upvr = SharedFlags.FFlagPartyVoiceMuteOthers
local FFlagPartyVoiceBlockSync_upvr = SharedFlags.FFlagPartyVoiceBlockSync
function module_2_upvr.subscribe(arg1, arg2, arg3) -- Line 148
	--[[ Upvalues[7]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Actions_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: Models_upvr (readonly)
		[6]: FFlagPartyVoiceMuteOthers_upvr (readonly)
		[7]: FFlagPartyVoiceBlockSync_upvr (readonly)
	]]
	if arg1.isSubscribed then
	else
		arg1.isSubscribed = true
		if arg3 and game_DefineFastFlag_result1_upvr then
			arg3:info("{}: Subscribing to the CEV Store", arg1.experienceType)
		end
		arg1:addObserver(Constants_upvr.EVENTS.PARTY_VOICE_GAME_JOIN_FAILED, function(arg1_3) -- Line 161
			--[[ Upvalues[6]:
				[1]: arg3 (readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
				[5]: Actions_upvr (copied, readonly)
				[6]: Constants_upvr (copied, readonly)
			]]
			if arg3 and game_DefineFastFlag_result1_upvr then
				arg3:info("{}: Experience Party Voice Game Join Failed: {}", arg1.experienceType, arg1_3.state)
			end
			arg2:dispatch(Actions_upvr.VoiceStatusChanged({
				status = Constants_upvr.VOICE_STATUS.ERROR_RCC_CONNECTING;
			}))
		end)
		arg1:addObserver(Constants_upvr.EVENTS.PARTY_VOICE_STATUS_CHANGED, function(arg1_4) -- Line 174
			--[[ Upvalues[6]:
				[1]: arg3 (readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: Constants_upvr (copied, readonly)
				[5]: arg2 (readonly)
				[6]: Actions_upvr (copied, readonly)
			]]
			if arg3 and game_DefineFastFlag_result1_upvr then
				arg3:info("{}: Experience Voice Status Changed: {}, {}, {}, {}", arg1.experienceType, arg1_4.status, arg1_4.detail, arg1_4.voiceChannelId, arg1_4.voiceSessionId)
			end
			if arg1_4.status == Constants_upvr.VOICE_STATUS.VOICE_CONNECTED then
				if not arg1_4.voiceChannelId and arg3 then
					arg3:warning("Voice channel id is expected")
				end
				if not arg1_4.voiceSessionId then
					arg3:warning("Voice session id is expected")
				end
			end
			arg2:dispatch(Actions_upvr.VoiceStatusChanged({
				status = arg1_4.status;
				voiceChannelId = arg1_4.voiceChannelId;
				voiceSessionId = arg1_4.voiceSessionId;
			}))
		end)
		arg1:addObserver(Constants_upvr.EVENTS.PARTY_VOICE_EXPERIENCE_JOINED, function(arg1_5) -- Line 206
			--[[ Upvalues[6]:
				[1]: arg3 (readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: Cryo_upvr (copied, readonly)
				[5]: arg2 (readonly)
				[6]: Actions_upvr (copied, readonly)
			]]
			if arg3 and game_DefineFastFlag_result1_upvr then
				arg3:info("{}: Experience joined JobID: {}, GameID: {}, PlaceId: {}", arg1.experienceType, arg1_5.jobId, arg1_5.gameId, arg1_5.placeId)
			end
			local any_getBackgroundStateSnapshot_result1_2 = arg1:getBackgroundStateSnapshot()
			local var30
			if any_getBackgroundStateSnapshot_result1_2 and any_getBackgroundStateSnapshot_result1_2.Participants then
				var30 = Cryo_upvr.Dictionary.join(var30, any_getBackgroundStateSnapshot_result1_2.Participants)
			end
			arg2:dispatch(Actions_upvr.ExperienceJoined(var30))
		end)
		arg1:addObserver(Constants_upvr.EVENTS.PARTY_VOICE_PARTICIPANT_AUDIO_FOCUS_CHANGED, function(arg1_6) -- Line 228
			--[[ Upvalues[5]:
				[1]: arg3 (readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
				[5]: Actions_upvr (copied, readonly)
			]]
			if arg3 and game_DefineFastFlag_result1_upvr then
				arg3:info("{}: Participant Audio Focus Changed {} = {}", arg1.experienceType, arg1_6.userId, arg1_6.contextId)
			end
			arg2:dispatch(Actions_upvr.ParticipantAudioFocusChanged({
				userId = arg1_6.userId;
				contextId = arg1_6.contextId;
				contextIds = arg1_6.contextIds;
			}))
		end)
		arg1:addObserver(Constants_upvr.EVENTS.PARTY_VOICE_PARTICIPANT_ADDED, function(arg1_7) -- Line 248
			--[[ Upvalues[6]:
				[1]: arg3 (readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: Models_upvr (copied, readonly)
				[5]: arg2 (readonly)
				[6]: Actions_upvr (copied, readonly)
			]]
			if arg3 and game_DefineFastFlag_result1_upvr then
				arg3:info("{}: Participant added {}", arg1.experienceType, arg1_7.userId)
			end
			arg2:dispatch(Actions_upvr.ParticipantAdded(Models_upvr.ParticipantModel.format({
				userId = arg1_7.userId;
				isLocalUser = arg1_7.isLocalUser;
				username = arg1_7.username;
				displayname = arg1_7.displayname;
				isActive = false;
				isMuted = false;
				isMutedLocally = false;
			})))
		end)
		arg1:addObserver(Constants_upvr.EVENTS.PARTY_VOICE_PARTICIPANT_REMOVED, function(arg1_8) -- Line 267
			--[[ Upvalues[5]:
				[1]: arg3 (readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
				[5]: Actions_upvr (copied, readonly)
			]]
			if arg3 and game_DefineFastFlag_result1_upvr then
				arg3:info("{}: Participant removed {}", arg1.experienceType, arg1_8.userId)
			end
			arg2:dispatch(Actions_upvr.ParticipantRemoved({
				userId = tonumber(arg1_8.userId) or -1;
				isLocalUser = arg1_8.isLocalUser;
			}))
		end)
		arg1:addObserver(Constants_upvr.EVENTS.PARTY_VOICE_PARTICIPANT_IS_ACTIVE, function(arg1_9) -- Line 277
			--[[ Upvalues[5]:
				[1]: arg3 (readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
				[5]: Actions_upvr (copied, readonly)
			]]
			if arg3 and game_DefineFastFlag_result1_upvr then
				arg3:info("{}: Participant is active {}", arg1.experienceType, arg1_9.userId)
			end
			arg2:dispatch(Actions_upvr.ParticipantIsActive({
				userId = tonumber(arg1_9.userId) or -1;
				isLocalUser = arg1_9.isLocalUser;
			}))
		end)
		arg1:addObserver(Constants_upvr.EVENTS.PARTY_VOICE_PARTICIPANT_IS_INACTIVE, function(arg1_10) -- Line 287
			--[[ Upvalues[5]:
				[1]: arg3 (readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
				[5]: Actions_upvr (copied, readonly)
			]]
			if arg3 and game_DefineFastFlag_result1_upvr then
				arg3:info("{}: Participant is inactive {}", arg1.experienceType, arg1_10.userId)
			end
			arg2:dispatch(Actions_upvr.ParticipantIsInactive({
				userId = tonumber(arg1_10.userId) or -1;
				isLocalUser = arg1_10.isLocalUser;
			}))
		end)
		arg1:addObserver(Constants_upvr.EVENTS.PARTY_VOICE_PARTICIPANT_WAS_MUTED, function(arg1_11) -- Line 297
			--[[ Upvalues[5]:
				[1]: arg3 (readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
				[5]: Actions_upvr (copied, readonly)
			]]
			if arg3 and game_DefineFastFlag_result1_upvr then
				arg3:info("{}: Participant is was muted {}", arg1.experienceType, arg1_11.userId)
			end
			arg2:dispatch(Actions_upvr.ParticipantWasMuted({
				userId = tonumber(arg1_11.userId) or -1;
				isLocalUser = arg1_11.isLocalUser;
			}))
		end)
		arg1:addObserver(Constants_upvr.EVENTS.PARTY_VOICE_PARTICIPANT_WAS_UNMUTED, function(arg1_12) -- Line 307
			--[[ Upvalues[5]:
				[1]: arg3 (readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
				[5]: Actions_upvr (copied, readonly)
			]]
			if arg3 and game_DefineFastFlag_result1_upvr then
				arg3:info("{}: Participant is was unmuted {}", arg1.experienceType, arg1_12.userId)
			end
			arg2:dispatch(Actions_upvr.ParticipantWasUnmuted({
				userId = tonumber(arg1_12.userId) or -1;
				isLocalUser = arg1_12.isLocalUser;
			}))
		end)
		if FFlagPartyVoiceMuteOthers_upvr then
			arg1:addObserver(Constants_upvr.EVENTS.MUTE_PARTY_VOICE_PARTICIPANT, function(arg1_13) -- Line 318
				--[[ Upvalues[5]:
					[1]: arg3 (readonly)
					[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[3]: arg1 (readonly)
					[4]: arg2 (readonly)
					[5]: Actions_upvr (copied, readonly)
				]]
				if arg3 and game_DefineFastFlag_result1_upvr then
					arg3:info("{}: Participant is muted locally {}", arg1.experienceType, arg1_13.userId)
				end
				arg2:dispatch(Actions_upvr.MuteParticipant({
					userId = tonumber(arg1_13.userId) or -1;
					isLocalUser = arg1_13.isLocalUser;
				}))
			end)
			arg1:addObserver(Constants_upvr.EVENTS.UNMUTE_PARTY_VOICE_PARTICIPANT, function(arg1_14) -- Line 328
				--[[ Upvalues[5]:
					[1]: arg3 (readonly)
					[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[3]: arg1 (readonly)
					[4]: arg2 (readonly)
					[5]: Actions_upvr (copied, readonly)
				]]
				if arg3 and game_DefineFastFlag_result1_upvr then
					arg3:info("{}: Participant is unmuted locally {}", arg1.experienceType, arg1_14.userId)
				end
				arg2:dispatch(Actions_upvr.UnmuteParticipant({
					userId = tonumber(arg1_14.userId) or -1;
					isLocalUser = arg1_14.isLocalUser;
				}))
			end)
		end
		if FFlagPartyVoiceBlockSync_upvr then
			arg1:addObserver(Constants_upvr.EVENTS.PARTY_VOICE_BLOCK_PARTICIPANT, function(arg1_15) -- Line 340
				--[[ Upvalues[3]:
					[1]: arg3 (readonly)
					[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[3]: arg1 (readonly)
				]]
				if arg3 and game_DefineFastFlag_result1_upvr then
					arg3:info("{}: Participant was blocked {} from party voice", arg1.experienceType, arg1_15.userId)
				end
			end)
			arg1:addObserver(Constants_upvr.EVENTS.PARTY_VOICE_UNBLOCK_PARTICIPANT, function(arg1_16) -- Line 349
				--[[ Upvalues[3]:
					[1]: arg3 (readonly)
					[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[3]: arg1 (readonly)
				]]
				if arg3 and game_DefineFastFlag_result1_upvr then
					arg3:info("{}: Participant was unblocked {} from party voice", arg1.experienceType, arg1_16.userId)
				end
			end)
		end
	end
end
local var51_upvr = require(CrossExperience.Middlewares.createPersistenceMiddleware)({
	storeKey = Constants_upvr.STORAGE_CEV_STORE_KEY;
})
local Utils_upvr = require(CrossExperience.Utils)
function module_2_upvr.getBackgroundStateSnapshot(arg1) -- Line 358
	--[[ Upvalues[2]:
		[1]: var51_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	local any_restore_result1 = var51_upvr.restore()
	if any_restore_result1 and any_restore_result1.Squad and any_restore_result1.Squad.CrossExperienceVoice then
		return {
			Experience = any_restore_result1.Squad.CrossExperienceVoice.Experience;
			Participants = {
				participants = Utils_upvr.stringMapToNumberMap(any_restore_result1.Squad.CrossExperienceVoice.Participants.participants);
				activeUserIds = any_restore_result1.Squad.CrossExperienceVoice.Participants.activeUserIds;
				publicVoiceFocusedUserIds = Utils_upvr.stringMapToNumberMap(any_restore_result1.Squad.CrossExperienceVoice.Participants.publicVoiceFocusedUserIds);
			};
		}
	end
	return nil
end
function module_2_upvr.restoreStateFromBackground(arg1, arg2, arg3) -- Line 376
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: Actions_upvr (readonly)
	]]
	local any_getBackgroundStateSnapshot_result1 = arg1:getBackgroundStateSnapshot()
	if any_getBackgroundStateSnapshot_result1 then
		if arg3 and game_DefineFastFlag_result1_upvr then
			arg3:info("{}: Restoring state from background {}", arg1.experienceType, HttpService_upvr:JSONEncode(any_getBackgroundStateSnapshot_result1))
		end
		arg2:dispatch(Actions_upvr.RestoreState(any_getBackgroundStateSnapshot_result1))
	end
end
function module_2_upvr.unsubscribe(arg1, arg2, arg3) -- Line 386
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: Actions_upvr (readonly)
	]]
	if arg3 and game_DefineFastFlag_result1_upvr then
		arg3:info("{}: Unsubscribing from the CEV Store", arg1.experienceType)
	end
	arg2:dispatch(Actions_upvr.ExperienceLeft())
	for _, v in ipairs(arg1.observers) do
		arg1:removeObserver(v.id, v.event)
	end
	arg1.isSubscribed = false
	arg1.observers = {}
	arg1.eventQueue:reset()
end
return module_2_upvr