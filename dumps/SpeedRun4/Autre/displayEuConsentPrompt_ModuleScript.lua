-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:26
-- Luau version 6, Types version 3
-- Time taken: 0.001058 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local SquadPromptType_upvr = require(SquadsCore.Enums.SquadPromptType)
local setTableAppStorageKey_upvr = require(SquadsCore.Utils.appStorageAccess).setTableAppStorageKey
local SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr = require(SquadsCore.Common.Constants).SQUAD_VOICE_EU_MODAL_SEEN_KEY
local HttpService_upvr = game:GetService("HttpService")
local SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr = require(SquadsCore.Common.Constants).SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY
local default_upvr = require(SquadsCore.Parent.CrossExperienceVoice).CrossExperienceVoiceManager.default
return function(arg1, arg2, arg3, arg4) -- Line 13
	--[[ Upvalues[6]:
		[1]: SquadPromptType_upvr (readonly)
		[2]: setTableAppStorageKey_upvr (readonly)
		[3]: SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr (readonly)
		[6]: default_upvr (readonly)
	]]
	return function(arg1_2) -- Line 19
		--[[ Upvalues[10]:
			[1]: arg1 (readonly)
			[2]: SquadPromptType_upvr (copied, readonly)
			[3]: arg3 (readonly)
			[4]: arg2 (readonly)
			[5]: arg4 (readonly)
			[6]: setTableAppStorageKey_upvr (copied, readonly)
			[7]: SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr (copied, readonly)
			[8]: HttpService_upvr (copied, readonly)
			[9]: SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr (copied, readonly)
			[10]: default_upvr (copied, readonly)
		]]
		arg1(arg1_2, {
			promptType = SquadPromptType_upvr.EuVoiceConsentPrompt;
			onConfirm = function() -- Line 22, Named "onConfirm"
				--[[ Upvalues[8]:
					[1]: arg3 (copied, readonly)
					[2]: arg2 (copied, readonly)
					[3]: arg4 (copied, readonly)
					[4]: setTableAppStorageKey_upvr (copied, readonly)
					[5]: SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr (copied, readonly)
					[6]: HttpService_upvr (copied, readonly)
					[7]: SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr (copied, readonly)
					[8]: default_upvr (copied, readonly)
				]]
				arg3[arg2] = true
				arg4[arg2] = true
				setTableAppStorageKey_upvr(SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr, HttpService_upvr:JSONEncode(arg3))
				setTableAppStorageKey_upvr(SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr, HttpService_upvr:JSONEncode(arg4))
				default_upvr.default.VoiceEuModalConsented:Fire()
			end;
			onCancel = function() -- Line 32, Named "onCancel"
				--[[ Upvalues[6]:
					[1]: arg3 (copied, readonly)
					[2]: arg2 (copied, readonly)
					[3]: setTableAppStorageKey_upvr (copied, readonly)
					[4]: SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr (copied, readonly)
					[5]: HttpService_upvr (copied, readonly)
					[6]: default_upvr (copied, readonly)
				]]
				arg3[arg2] = true
				setTableAppStorageKey_upvr(SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr, HttpService_upvr:JSONEncode(arg3))
				default_upvr.default.VoiceEuModalRefused:Fire()
			end;
		})
	end
end