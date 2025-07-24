-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:00
-- Luau version 6, Types version 3
-- Time taken: 0.009305 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local VOICE_STATE_upvr = require(CorePackages.Workspace.Packages.VoiceChat).Constants.VOICE_STATE
local var4
while not var4 do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	var4 = Players.LocalPlayer
end
if not var4 or not var4.UserId then
end
if game:GetEngineFeature("VoiceChatSupported") then
	local _ = Enum.VoiceChatState
else
	local tbl_upvw = {
		Idle = 1;
		Joining = 2;
		JoiningRetry = 3;
		Joined = 4;
		Leaving = 5;
		Ended = 6;
		Failed = 7;
	}
end
local module_upvr = {
	[tbl_upvw.Idle] = VOICE_STATE_upvr.HIDDEN;
}
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
module_upvr[tbl_upvw.Joining] = VOICE_STATE_upvr.CONNECTING
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
module_upvr[tbl_upvw.JoiningRetry] = VOICE_STATE_upvr.CONNECTING
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
module_upvr[tbl_upvw.Joined] = VOICE_STATE_upvr.MUTED
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
module_upvr[tbl_upvw.Leaving] = VOICE_STATE_upvr.MUTED
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
module_upvr[tbl_upvw.Ended] = VOICE_STATE_upvr.HIDDEN
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
module_upvr[tbl_upvw.Failed] = VOICE_STATE_upvr.ERROR
local function _(arg1) -- Line 74, Named "mapVoiceChatStateToVoiceState"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: VOICE_STATE_upvr (readonly)
	]]
	if not module_upvr[arg1] then
		return VOICE_STATE_upvr.MUTED
	end
	return module_upvr[arg1]
end
local function _(arg1) -- Line 82, Named "mapParticipantStateToVoiceState"
	--[[ Upvalues[1]:
		[1]: VOICE_STATE_upvr (readonly)
	]]
	local var8
	if arg1.subscriptionFailed then
		var8 = VOICE_STATE_upvr.ERROR
		return var8
	end
	if not arg1.subscriptionCompleted then
		var8 = VOICE_STATE_upvr.CONNECTING
		return var8
	end
	if arg1.isMutedLocally then
		var8 = VOICE_STATE_upvr.LOCAL_MUTED
		return var8
	end
	if arg1.isMuted then
		var8 = VOICE_STATE_upvr.MUTED
		return var8
	end
	if arg1.isSignalActive then
		var8 = VOICE_STATE_upvr.TALKING
	end
	return var8
end
local default_upvr = require(script.Parent.Parent.VoiceChatServiceManager).default
local React_upvr = require(CorePackages.Packages.React)
local VoiceStateContext_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.VoiceChat.VoiceStateContext)
local const_number_upvr = 0
local any_GetBlockedStatusChangedEvent_result1_upvr = require(CorePackages.Workspace.Packages.BlockingUtility):GetBlockedStatusChangedEvent()
return function(arg1, arg2, arg3) -- Line 98, Named "useVoiceState"
	--[[ Upvalues[8]:
		[1]: default_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: VoiceStateContext_upvr (readonly)
		[4]: VOICE_STATE_upvr (readonly)
		[5]: const_number_upvr (readonly)
		[6]: module_upvr (readonly)
		[7]: tbl_upvw (read and write)
		[8]: any_GetBlockedStatusChangedEvent_result1_upvr (readonly)
	]]
	if not arg3 or not arg3.voiceChatServiceManager then
	end
	local any_useContext_result1_upvr = React_upvr.useContext(VoiceStateContext_upvr.Context)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(VOICE_STATE_upvr.HIDDEN)
	local tbl = {}
	if arg2 ~= true then
	else
	end
	tbl[1] = arg1
	tbl[2] = any_useContext_result1_upvr.voiceState
	tbl[3] = true
	React_upvr.useEffect(function() -- Line 103
		--[[ Upvalues[11]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: any_useState_result2_upvr (readonly)
			[5]: VOICE_STATE_upvr (copied, readonly)
			[6]: const_number_upvr (copied, readonly)
			[7]: any_useState_result1_upvr (readonly)
			[8]: module_upvr (copied, readonly)
			[9]: default_upvr (readonly)
			[10]: tbl_upvw (copied, read and write)
			[11]: any_GetBlockedStatusChangedEvent_result1_upvr (copied, readonly)
		]]
		if not any_useContext_result1_upvr.voiceEnabled or not arg1 or arg2 then
			any_useState_result2_upvr(VOICE_STATE_upvr.HIDDEN)
			return function() -- Line 106
			end
		end
		local tonumber_result1_upvr = tonumber(arg1)
		local var20_upvr = arg1
		local tostring_result1_upvr = tostring(var20_upvr)
		if const_number_upvr ~= tonumber_result1_upvr then
			var20_upvr = false
		else
			var20_upvr = true
		end
		local var22_upvw
		local tbl_2_upvr = {}
		local var24_upvw = false
		local function _(arg1_2) -- Line 117, Named "updateVoiceState"
			--[[ Upvalues[2]:
				[1]: var24_upvw (read and write)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			if not var24_upvw then
				any_useState_result2_upvr(arg1_2)
			end
		end
		local function setVoiceEnabled_upvr(arg1_3) -- Line 123, Named "setVoiceEnabled"
			--[[ Upvalues[10]:
				[1]: any_useState_result1_upvr (copied, readonly)
				[2]: var20_upvr (readonly)
				[3]: module_upvr (copied, readonly)
				[4]: VOICE_STATE_upvr (copied, readonly)
				[5]: default_upvr (copied, readonly)
				[6]: tostring_result1_upvr (readonly)
				[7]: var22_upvw (read and write)
				[8]: tbl_upvw (copied, read and write)
				[9]: var24_upvw (read and write)
				[10]: any_useState_result2_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [13] 13. Error Block 6 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [13] 13. Error Block 6 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 67 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [13.2]
			if nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not nil then
				else
				end
			else
				local var25 = default_upvr.participants[tostring_result1_upvr]
				if var25 and not var22_upvw then
					local INACTIVE = VOICE_STATE_upvr.INACTIVE
					if var25.subscriptionFailed then
						INACTIVE = VOICE_STATE_upvr.ERROR
					elseif not var25.subscriptionCompleted then
						INACTIVE = VOICE_STATE_upvr.CONNECTING
					elseif var25.isMutedLocally then
						INACTIVE = VOICE_STATE_upvr.LOCAL_MUTED
					elseif var25.isMuted then
						INACTIVE = VOICE_STATE_upvr.MUTED
					elseif var25.isSignalActive then
						INACTIVE = VOICE_STATE_upvr.TALKING
					end
				end
			end
			-- KONSTANTERROR: [0] 1. Error Block 67 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [60] 48. Error Block 62 start (CF ANALYSIS FAILED)
			if arg1_3 == tbl_upvw.Failed then
				if not var20_upvr then
					-- KONSTANTWARNING: GOTO [101] #78
				end
			elseif arg1_3 == tbl_upvw.Joined and not default_upvr.localMuted and var20_upvr then
				if default_upvr.isTalking then
				elseif default_upvr.localMuted then
				else
				end
			end
			if not var24_upvw then
				any_useState_result2_upvr(VOICE_STATE_upvr.INACTIVE)
			end
			-- KONSTANTERROR: [60] 48. Error Block 62 end (CF ANALYSIS FAILED)
		end
		setVoiceEnabled_upvr(any_useContext_result1_upvr.voiceState)
		delay(0, function() -- Line 157
			--[[ Upvalues[12]:
				[1]: var24_upvw (read and write)
				[2]: setVoiceEnabled_upvr (readonly)
				[3]: any_useContext_result1_upvr (copied, readonly)
				[4]: var20_upvr (readonly)
				[5]: tbl_2_upvr (readonly)
				[6]: default_upvr (copied, readonly)
				[7]: VOICE_STATE_upvr (copied, readonly)
				[8]: any_useState_result2_upvr (copied, readonly)
				[9]: tostring_result1_upvr (readonly)
				[10]: var22_upvw (read and write)
				[11]: tonumber_result1_upvr (readonly)
				[12]: any_GetBlockedStatusChangedEvent_result1_upvr (copied, readonly)
			]]
			if var24_upvw then
			else
				setVoiceEnabled_upvr(any_useContext_result1_upvr.voiceState)
				if var20_upvr then
					table.insert(tbl_2_upvr, default_upvr.talkingChanged.Event:Connect(function(arg1_4) -- Line 168
						--[[ Upvalues[3]:
							[1]: VOICE_STATE_upvr (copied, readonly)
							[2]: var24_upvw (copied, read and write)
							[3]: any_useState_result2_upvr (copied, readonly)
						]]
						if arg1_4 then
						else
						end
						if not var24_upvw then
							any_useState_result2_upvr(VOICE_STATE_upvr.INACTIVE)
						end
					end))
					table.insert(tbl_2_upvr, default_upvr.muteChanged.Event:Connect(function(arg1_5) -- Line 175
						--[[ Upvalues[3]:
							[1]: VOICE_STATE_upvr (copied, readonly)
							[2]: var24_upvw (copied, read and write)
							[3]: any_useState_result2_upvr (copied, readonly)
						]]
						if arg1_5 then
						else
						end
						if not var24_upvw then
							any_useState_result2_upvr(VOICE_STATE_upvr.INACTIVE)
						end
					end))
					return
				end
				table.insert(tbl_2_upvr, default_upvr.participantsUpdate.Event:Connect(function(arg1_6) -- Line 183
					--[[ Upvalues[5]:
						[1]: tostring_result1_upvr (copied, readonly)
						[2]: var22_upvw (copied, read and write)
						[3]: VOICE_STATE_upvr (copied, readonly)
						[4]: var24_upvw (copied, read and write)
						[5]: any_useState_result2_upvr (copied, readonly)
					]]
					-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [3] 4. Error Block 2 start (CF ANALYSIS FAILED)
					local var31 = var22_upvw
					-- KONSTANTERROR: [3] 4. Error Block 2 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [45] 35. Error Block 18 start (CF ANALYSIS FAILED)
					any_useState_result2_upvr(var31)
					do
						return
					end
					-- KONSTANTERROR: [45] 35. Error Block 18 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [49] 39. Error Block 22 start (CF ANALYSIS FAILED)
					if not var24_upvw then
						any_useState_result2_upvr(VOICE_STATE_upvr.HIDDEN)
					end
					-- KONSTANTERROR: [49] 39. Error Block 22 end (CF ANALYSIS FAILED)
				end))
				table.insert(tbl_2_upvr, default_upvr.participantLeft.Event:Connect(function(arg1_7, arg2_2) -- Line 195
					--[[ Upvalues[4]:
						[1]: tonumber_result1_upvr (copied, readonly)
						[2]: VOICE_STATE_upvr (copied, readonly)
						[3]: var24_upvw (copied, read and write)
						[4]: any_useState_result2_upvr (copied, readonly)
					]]
					if arg2_2 == tonumber_result1_upvr and not var24_upvw then
						any_useState_result2_upvr(VOICE_STATE_upvr.HIDDEN)
					end
				end))
				table.insert(tbl_2_upvr, default_upvr.participantJoined.Event:Connect(function(arg1_8, arg2_3) -- Line 204
					--[[ Upvalues[4]:
						[1]: tonumber_result1_upvr (copied, readonly)
						[2]: VOICE_STATE_upvr (copied, readonly)
						[3]: var24_upvw (copied, read and write)
						[4]: any_useState_result2_upvr (copied, readonly)
					]]
					if arg2_3 == tonumber_result1_upvr and not var24_upvw then
						any_useState_result2_upvr(VOICE_STATE_upvr.HIDDEN)
					end
				end))
				table.insert(tbl_2_upvr, any_GetBlockedStatusChangedEvent_result1_upvr:Connect(function(arg1_9, arg2_4) -- Line 215
					--[[ Upvalues[7]:
						[1]: tonumber_result1_upvr (copied, readonly)
						[2]: var22_upvw (copied, read and write)
						[3]: VOICE_STATE_upvr (copied, readonly)
						[4]: var24_upvw (copied, read and write)
						[5]: any_useState_result2_upvr (copied, readonly)
						[6]: default_upvr (copied, readonly)
						[7]: tostring_result1_upvr (copied, readonly)
					]]
					-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
					var22_upvw = true
					-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [60] 47. Error Block 20 start (CF ANALYSIS FAILED)
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [60.4]
					-- KONSTANTERROR: [60] 47. Error Block 20 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [67] 54. Error Block 25 start (CF ANALYSIS FAILED)
					if not var24_upvw then
						any_useState_result2_upvr(VOICE_STATE_upvr.HIDDEN)
					end
					-- KONSTANTERROR: [67] 54. Error Block 25 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [75] 61. Error Block 24 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [75] 61. Error Block 24 end (CF ANALYSIS FAILED)
				end))
			end
		end)
		return function() -- Line 235
			--[[ Upvalues[2]:
				[1]: var24_upvw (read and write)
				[2]: tbl_2_upvr (readonly)
			]]
			var24_upvw = true
			delay(0, function() -- Line 238
				--[[ Upvalues[1]:
					[1]: tbl_2_upvr (copied, readonly)
				]]
				for _, v in tbl_2_upvr do
					v:disconnect()
				end
			end)
		end
	end, tbl)
	return any_useState_result1_upvr
end