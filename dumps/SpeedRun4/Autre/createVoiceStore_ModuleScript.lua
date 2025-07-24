-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:42
-- Luau version 6, Types version 3
-- Time taken: 0.003001 seconds

local Parent = script:FindFirstAncestor("ExpChat").Parent
local Signals = require(Parent.Signals)
local createSignal_upvr = Signals.createSignal
local createComputed_upvr = Signals.createComputed
local VOICE_STATE_upvr = require(Parent.VoiceChat).Constants.VOICE_STATE
return function() -- Line 26, Named "createVoiceStore"
	--[[ Upvalues[3]:
		[1]: createSignal_upvr (readonly)
		[2]: createComputed_upvr (readonly)
		[3]: VOICE_STATE_upvr (readonly)
	]]
	local createSignal_upvr_result1_upvr, createSignal_upvr_result2_upvr = createSignal_upvr({})
	local tbl_upvr = {}
	local function _(arg1) -- Line 32, Named "getKey"
		return tostring(arg1)
	end
	return {
		getOrCreateVoiceState = function(arg1) -- Line 36, Named "getOrCreateVoiceState"
			--[[ Upvalues[3]:
				[1]: tbl_upvr (readonly)
				[2]: createComputed_upvr (copied, readonly)
				[3]: createSignal_upvr_result1_upvr (readonly)
			]]
			local tostring_result1_upvr_2 = tostring(arg1)
			if not tbl_upvr[tostring_result1_upvr_2] then
				tbl_upvr[tostring_result1_upvr_2] = createComputed_upvr(function(arg1_2) -- Line 39
					--[[ Upvalues[2]:
						[1]: createSignal_upvr_result1_upvr (copied, readonly)
						[2]: tostring_result1_upvr_2 (readonly)
					]]
					return createSignal_upvr_result1_upvr(arg1_2)[tostring_result1_upvr_2]
				end)
			end
			return tbl_upvr[tostring_result1_upvr_2]
		end;
		getVoiceParticipants = createSignal_upvr_result1_upvr;
		handleVoiceParticipantAdded = function(arg1) -- Line 48, Named "handleVoiceParticipantAdded"
			--[[ Upvalues[2]:
				[1]: createSignal_upvr_result2_upvr (readonly)
				[2]: VOICE_STATE_upvr (copied, readonly)
			]]
			local tostring_result1_upvr_3 = tostring(arg1)
			createSignal_upvr_result2_upvr(function(arg1_3) -- Line 51
				--[[ Upvalues[2]:
					[1]: tostring_result1_upvr_3 (readonly)
					[2]: VOICE_STATE_upvr (copied, readonly)
				]]
				local clone_4 = table.clone(arg1_3)
				local var14 = clone_4[tostring_result1_upvr_3]
				if not var14 then
					var14 = VOICE_STATE_upvr.HIDDEN
				end
				clone_4[tostring_result1_upvr_3] = var14
				return clone_4
			end)
		end;
		handleVoiceParticipantRemoved = function(arg1) -- Line 61, Named "handleVoiceParticipantRemoved"
			--[[ Upvalues[2]:
				[1]: createSignal_upvr_result2_upvr (readonly)
				[2]: tbl_upvr (readonly)
			]]
			local tostring_result1_upvr = tostring(arg1)
			createSignal_upvr_result2_upvr(function(arg1_4) -- Line 64
				--[[ Upvalues[2]:
					[1]: tbl_upvr (copied, readonly)
					[2]: tostring_result1_upvr (readonly)
				]]
				if tbl_upvr[tostring_result1_upvr] then
					tbl_upvr[tostring_result1_upvr] = nil
				end
				local clone_2 = table.clone(arg1_4)
				clone_2[tostring_result1_upvr] = nil
				return clone_2
			end)
		end;
		handleVoiceParticipantsChanged = function(arg1) -- Line 75, Named "handleVoiceParticipantsChanged"
			--[[ Upvalues[2]:
				[1]: createSignal_upvr_result2_upvr (readonly)
				[2]: VOICE_STATE_upvr (copied, readonly)
			]]
			createSignal_upvr_result2_upvr(function(arg1_5) -- Line 76
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: VOICE_STATE_upvr (copied, readonly)
				]]
				local clone_3 = table.clone(arg1_5)
				for i, v in arg1 do
					local INACTIVE = VOICE_STATE_upvr.INACTIVE
					if not v.subscriptionCompleted then
						INACTIVE = VOICE_STATE_upvr.CONNECTING
					elseif v.isMutedLocally then
						INACTIVE = VOICE_STATE_upvr.LOCAL_MUTED
					elseif v.isMuted then
						INACTIVE = VOICE_STATE_upvr.MUTED
					elseif v.isSignalActive then
						INACTIVE = VOICE_STATE_upvr.TALKING
					end
					clone_3[tostring(i)] = INACTIVE
				end
				return clone_3
			end)
		end;
		handleVoiceStateChanged = function(arg1, arg2) -- Line 96, Named "handleVoiceStateChanged"
			--[[ Upvalues[1]:
				[1]: createSignal_upvr_result2_upvr (readonly)
			]]
			local tostring_result1_upvr_4 = tostring(arg1)
			createSignal_upvr_result2_upvr(function(arg1_6) -- Line 99
				--[[ Upvalues[2]:
					[1]: tostring_result1_upvr_4 (readonly)
					[2]: arg2 (readonly)
				]]
				if arg1_6[tostring_result1_upvr_4] then
					local clone = table.clone(arg1_6)
					clone[tostring_result1_upvr_4] = arg2
					return clone
				end
				return arg1_6
			end)
		end;
	}
end