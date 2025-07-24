-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:01
-- Luau version 6, Types version 3
-- Time taken: 0.005381 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Players_upvr = game:GetService("Players")
local VoiceStateChanged_upvr = require(script.Parent.Actions.VoiceStateChanged)
local default_upvr = require(script.Parent.VoiceChatServiceManager).default
local var6_upvw = require(RobloxGui.Modules.InGameChat.BubbleChat.Logger)(script.Name)
if require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)() then
	var6_upvw = require(RobloxGui.Modules.VoiceChat.Logger)(script.Name)
end
local var7_upvw
if require(RobloxGui.Modules.Flags.FFlagEnableVoiceChatStorybookFix)() then
	var7_upvw = require(CorePackages.Workspace.Packages.VoiceChat).Constants.VOICE_STATE
else
	var7_upvw = default_upvr.VOICE_STATE
end
local function _(arg1) -- Line 33, Named "shorten"
	return "..."..string.sub(tostring(arg1), -4)
end
local var8_upvw
local VoiceEnabledChanged_upvr = require(script.Parent.Actions.VoiceEnabledChanged)
local GetFFlagLocalMutedNilFix_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLocalMutedNilFix
local function setVoiceEnabled_upvr(arg1, arg2) -- Line 39, Named "setVoiceEnabled"
	--[[ Upvalues[8]:
		[1]: Players_upvr (readonly)
		[2]: VoiceEnabledChanged_upvr (readonly)
		[3]: var8_upvw (read and write)
		[4]: var6_upvw (read and write)
		[5]: VoiceStateChanged_upvr (readonly)
		[6]: var7_upvw (read and write)
		[7]: GetFFlagLocalMutedNilFix_upvr (readonly)
		[8]: default_upvr (readonly)
	]]
	local UserId = Players_upvr.LocalPlayer.UserId
	if arg1 == Enum.VoiceChatState.Ended then
		UserId = false
	else
		UserId = true
	end
	arg2:dispatch(VoiceEnabledChanged_upvr(UserId))
	if not var8_upvw[arg1] then
		var6_upvw:warning("LOCAL_STATE_MAP does not exist for {} state", arg1)
		arg2:dispatch(VoiceStateChanged_upvr(tostring(UserId), var7_upvw.MUTED))
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2:dispatch(VoiceStateChanged_upvr(tostring(UserId), var8_upvw[arg1]))
	end
	if arg1 == Enum.VoiceChatState.Failed then
		local pairs_result1, pairs_result2, pairs_result3 = pairs(Players_upvr:GetPlayers())
		for i, v in pairs_result1, pairs_result2, pairs_result3 do
			if v ~= Players_upvr.LocalPlayer then
				arg2:dispatch(VoiceStateChanged_upvr(tostring(v.UserId), var7_upvw.HIDDEN))
			end
		end
	else
		pairs_result1 = Enum.VoiceChatState.Joined
		local var19 = pairs_result1
		if arg1 == var19 then
			if GetFFlagLocalMutedNilFix_upvr then
				if default_upvr.localMuted ~= false then
					var19 = false
				else
					var19 = true
				end
			else
				var19 = not default_upvr.localMuted
			end
			if var19 then
				i = tostring(UserId)
				v = var7_upvw.INACTIVE
				var19 = arg2:dispatch
				var19(VoiceStateChanged_upvr(i, v))
			end
		end
	end
end
local ParticipantAdded_upvr = require(script.Parent.Actions.ParticipantAdded)
local PlayerRemoved_upvr = require(script.Parent.Actions.PlayerRemoved)
local ParticipantRemoved_upvr = require(script.Parent.Actions.ParticipantRemoved)
local GetFFlagSubscriptionFailureUX_upvr = require(RobloxGui.Modules.Flags.GetFFlagSubscriptionFailureUX)
local BlockingUtility_upvr = require(CorePackages.Workspace.Packages.BlockingUtility)
local function var20_upvr(arg1) -- Line 69
	--[[ Upvalues[12]:
		[1]: var8_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: default_upvr (readonly)
		[4]: var6_upvw (read and write)
		[5]: Players_upvr (readonly)
		[6]: ParticipantAdded_upvr (readonly)
		[7]: PlayerRemoved_upvr (readonly)
		[8]: ParticipantRemoved_upvr (readonly)
		[9]: VoiceStateChanged_upvr (readonly)
		[10]: GetFFlagSubscriptionFailureUX_upvr (readonly)
		[11]: BlockingUtility_upvr (readonly)
		[12]: setVoiceEnabled_upvr (readonly)
	]]
	var8_upvw = {
		[Enum.VoiceChatState.Idle] = var7_upvw.HIDDEN;
		[Enum.VoiceChatState.Joining] = var7_upvw.CONNECTING;
		[Enum.VoiceChatState.JoiningRetry] = var7_upvw.CONNECTING;
		[Enum.VoiceChatState.Joined] = var7_upvw.MUTED;
		[Enum.VoiceChatState.Leaving] = var7_upvw.MUTED;
		[Enum.VoiceChatState.Ended] = var7_upvw.HIDDEN;
		[Enum.VoiceChatState.Failed] = var7_upvw.ERROR;
	}
	local any_getService_result1 = default_upvr:getService()
	if not any_getService_result1 then
		var6_upvw:debug("VoiceChatService is not available")
	else
		local UserId_2_upvr = Players_upvr.LocalPlayer.UserId
		for _, v_2 in pairs(Players_upvr:GetPlayers()) do
			var6_upvw:trace("Adding existing player {}", "..."..string.sub(tostring(v_2.UserId), -4))
			arg1:dispatch(ParticipantAdded_upvr(tostring(v_2.UserId)))
		end
		Players_upvr.PlayerAdded:Connect(function(arg1_2) -- Line 93
			--[[ Upvalues[3]:
				[1]: var6_upvw (copied, read and write)
				[2]: arg1 (readonly)
				[3]: ParticipantAdded_upvr (copied, readonly)
			]]
			var6_upvw:trace("Adding joining player {}", "..."..string.sub(tostring(arg1_2.UserId), -4))
			arg1:dispatch(ParticipantAdded_upvr(tostring(arg1_2.userId)))
		end)
		Players_upvr.PlayerRemoving:Connect(function(arg1_3) -- Line 98
			--[[ Upvalues[4]:
				[1]: var6_upvw (copied, read and write)
				[2]: arg1 (readonly)
				[3]: PlayerRemoved_upvr (copied, readonly)
				[4]: ParticipantRemoved_upvr (copied, readonly)
			]]
			var6_upvw:trace("Removing player {}", "..."..string.sub(tostring(arg1_3.UserId), -4))
			arg1:dispatch(PlayerRemoved_upvr(tostring(arg1_3.userId)))
			arg1:dispatch(ParticipantRemoved_upvr(tostring(arg1_3.userId)))
		end)
		arg1:dispatch(VoiceStateChanged_upvr(UserId_2_upvr, var7_upvw.HIDDEN))
		default_upvr.muteChanged.Event:Connect(function(arg1_4) -- Line 106
			--[[ Upvalues[5]:
				[1]: var6_upvw (copied, read and write)
				[2]: var7_upvw (copied, read and write)
				[3]: arg1 (readonly)
				[4]: VoiceStateChanged_upvr (copied, readonly)
				[5]: UserId_2_upvr (readonly)
			]]
			var6_upvw:debug("Mute changed to {}", arg1_4)
			local var37
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var37 = var7_upvw.MUTED
				return var37
			end
			if not arg1_4 or not INLINED() then
				var37 = var7_upvw.INACTIVE
			end
			arg1:dispatch(VoiceStateChanged_upvr(UserId_2_upvr, var37))
		end)
		default_upvr.participantsUpdate.Event:Connect(function(arg1_5) -- Line 112
			--[[ Upvalues[5]:
				[1]: var7_upvw (copied, read and write)
				[2]: GetFFlagSubscriptionFailureUX_upvr (copied, readonly)
				[3]: var6_upvw (copied, read and write)
				[4]: arg1 (readonly)
				[5]: VoiceStateChanged_upvr (copied, readonly)
			]]
			for i_3, v_3 in pairs(arg1_5) do
				local var46
				if v_3.subscriptionFailed and GetFFlagSubscriptionFailureUX_upvr() then
					var46 = var7_upvw.ERROR
				elseif not v_3.subscriptionCompleted then
					var46 = var7_upvw.CONNECTING
				elseif v_3.isMutedLocally then
					var46 = var7_upvw.LOCAL_MUTED
				elseif v_3.isMuted then
					var46 = var7_upvw.MUTED
				elseif v_3.isSignalActive then
					var46 = var7_upvw.TALKING
				end
				var6_upvw:trace("Participant update for {}, voice state {}", i_3, var46)
				arg1:dispatch(VoiceStateChanged_upvr(i_3, var46))
			end
		end)
		default_upvr.talkingChanged.Event:Connect(function(arg1_6) -- Line 133
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: VoiceStateChanged_upvr (copied, readonly)
				[3]: UserId_2_upvr (readonly)
				[4]: var7_upvw (copied, read and write)
			]]
			if arg1_6 then
				arg1:dispatch(VoiceStateChanged_upvr(UserId_2_upvr, var7_upvw.TALKING))
			else
				arg1:dispatch(VoiceStateChanged_upvr(UserId_2_upvr, var7_upvw.INACTIVE))
			end
		end)
		BlockingUtility_upvr:GetBlockedStatusChangedEvent():Connect(function(arg1_7, arg2) -- Line 144
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: ParticipantRemoved_upvr (copied, readonly)
				[3]: ParticipantAdded_upvr (copied, readonly)
			]]
			if arg2 then
				arg1:dispatch(ParticipantRemoved_upvr(tostring(arg1_7)))
			else
				arg1:dispatch(ParticipantAdded_upvr(tostring(arg1_7)))
			end
		end)
		var6_upvw:debug("Initial voice state is {}", any_getService_result1.VoiceChatState)
		setVoiceEnabled_upvr(any_getService_result1.VoiceChatState, arg1)
		any_getService_result1.StateChanged:Connect(function(arg1_8, arg2) -- Line 154
			--[[ Upvalues[3]:
				[1]: var6_upvw (copied, read and write)
				[2]: setVoiceEnabled_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			var6_upvw:debug("Voice state changed to {}", arg2)
			setVoiceEnabled_upvr(arg2, arg1)
		end)
	end
end
return function(arg1) -- Line 160
	--[[ Upvalues[3]:
		[1]: default_upvr (readonly)
		[2]: var20_upvr (readonly)
		[3]: var6_upvw (read and write)
	]]
	if game:GetEngineFeature("VoiceChatSupported") then
		default_upvr:asyncInit():andThen(function() -- Line 163
			--[[ Upvalues[3]:
				[1]: default_upvr (copied, readonly)
				[2]: var20_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			default_upvr:SetupParticipantListeners()
			var20_upvr(arg1)
		end):catch(function() -- Line 167
			--[[ Upvalues[1]:
				[1]: var6_upvw (copied, read and write)
			]]
			var6_upvw:warning("Failed to init VoiceChatServiceManager")
		end)
	end
end