-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:41
-- Luau version 6, Types version 3
-- Time taken: 0.004695 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local Enabled_upvr = Chrome.Enabled
if require(Enabled_upvr)() then
	Enabled_upvr = require(Chrome.ChromeShared.Service)
else
	Enabled_upvr = nil
end
local Constants_upvr = require(RobloxGui.Modules.VoiceChat.Constants)
local useIsVoiceFocused_upvr = CrossExperienceVoice.Hooks.useIsVoiceFocused
local useIsVoiceConnecting_upvr = CrossExperienceVoice.Hooks.useIsVoiceConnecting
local React_upvr = require(CorePackages.Packages.React)
local dependencyArray_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.dependencyArray
local GetFFlagIntegratePhoneUpsellJoinVoice_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIntegratePhoneUpsellJoinVoice
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local isVoiceFocused_upvr = require(CorePackages.Workspace.Packages.CrossExperience).Utils.isVoiceFocused
local VOICE_JOIN_PROGRESS_upvr = Constants_upvr.VOICE_JOIN_PROGRESS
local PromptType_upvr = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)
local GetFFlagEnableConnectDisconnectInSettingsAndChrome_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableConnectDisconnectInSettingsAndChrome)
return function() -- Line 32, Named "JoinVoiceBinder"
	--[[ Upvalues[12]:
		[1]: useIsVoiceFocused_upvr (readonly)
		[2]: useIsVoiceConnecting_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: dependencyArray_upvr (readonly)
		[5]: Enabled_upvr (readonly)
		[6]: GetFFlagIntegratePhoneUpsellJoinVoice_upvr (readonly)
		[7]: default_upvr (readonly)
		[8]: isVoiceFocused_upvr (readonly)
		[9]: VOICE_JOIN_PROGRESS_upvr (readonly)
		[10]: Constants_upvr (readonly)
		[11]: PromptType_upvr (readonly)
		[12]: GetFFlagEnableConnectDisconnectInSettingsAndChrome_upvr (readonly)
	]]
	local var7_result1_upvr = useIsVoiceFocused_upvr()
	local var8_result1_upvr = useIsVoiceConnecting_upvr()
	local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 35
		--[[ Upvalues[2]:
			[1]: var7_result1_upvr (readonly)
			[2]: var8_result1_upvr (readonly)
		]]
		local var20 = var7_result1_upvr
		if not var20 then
			var20 = var8_result1_upvr
		end
		return var20
	end, dependencyArray_upvr(var8_result1_upvr, var7_result1_upvr))
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 39
		--[[ Upvalues[1]:
			[1]: Enabled_upvr (copied, readonly)
		]]
		if Enabled_upvr then
			return Enabled_upvr:integrations().join_voice
		end
		return nil
	end, {})
	local any_useCallback_result1_upvr_5 = React_upvr.useCallback(function(arg1) -- Line 46
		--[[ Upvalues[3]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: Enabled_upvr (copied, readonly)
			[3]: var7_result1_upvr (readonly)
		]]
		if not any_useMemo_result1_upvr or not Enabled_upvr then
		elseif not var7_result1_upvr then
			if arg1 == Enabled_upvr.AvailabilitySignal.Available then
				any_useMemo_result1_upvr.availability:available()
				return
			end
			if arg1 == Enabled_upvr.AvailabilitySignal.Unavailable then
				any_useMemo_result1_upvr.availability:unavailable()
			end
		end
	end, {})
	local any_useCallback_result1_upvr_6 = React_upvr.useCallback(function() -- Line 60
		--[[ Upvalues[6]:
			[1]: Enabled_upvr (copied, readonly)
			[2]: GetFFlagIntegratePhoneUpsellJoinVoice_upvr (copied, readonly)
			[3]: default_upvr (copied, readonly)
			[4]: any_useMemo_result1_upvr_2 (readonly)
			[5]: isVoiceFocused_upvr (copied, readonly)
			[6]: any_useCallback_result1_upvr_5 (readonly)
		]]
		if not Enabled_upvr then
		else
			if GetFFlagIntegratePhoneUpsellJoinVoice_upvr() then
				task.spawn(function() -- Line 66
					--[[ Upvalues[5]:
						[1]: default_upvr (copied, readonly)
						[2]: any_useMemo_result1_upvr_2 (copied, readonly)
						[3]: isVoiceFocused_upvr (copied, readonly)
						[4]: any_useCallback_result1_upvr_5 (copied, readonly)
						[5]: Enabled_upvr (copied, readonly)
					]]
					if default_upvr:ShouldShowJoinVoice() and not any_useMemo_result1_upvr_2 and not isVoiceFocused_upvr() then
						any_useCallback_result1_upvr_5(Enabled_upvr.AvailabilitySignal.Available)
					end
				end)
				return
			end
			if default_upvr:ShouldShowJoinVoice() and not any_useMemo_result1_upvr_2 and not isVoiceFocused_upvr() then
				any_useCallback_result1_upvr_5(Enabled_upvr.AvailabilitySignal.Available)
			end
		end
	end, dependencyArray_upvr(any_useMemo_result1_upvr, any_useMemo_result1_upvr_2))
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function(arg1) -- Line 82
		--[[ Upvalues[8]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: any_useMemo_result1_upvr_2 (readonly)
			[3]: isVoiceFocused_upvr (copied, readonly)
			[4]: VOICE_JOIN_PROGRESS_upvr (copied, readonly)
			[5]: any_useCallback_result1_upvr_6 (readonly)
			[6]: default_upvr (copied, readonly)
			[7]: Constants_upvr (copied, readonly)
			[8]: PromptType_upvr (copied, readonly)
		]]
		if not any_useMemo_result1_upvr then
		else
			if any_useMemo_result1_upvr_2 or isVoiceFocused_upvr() then
				any_useMemo_result1_upvr.availability:unavailable()
				return
			end
			if arg1 == VOICE_JOIN_PROGRESS_upvr.Idle then
				any_useCallback_result1_upvr_6()
				return
			end
			if arg1 == VOICE_JOIN_PROGRESS_upvr.Suspended then
				any_useMemo_result1_upvr.availability:available()
				return
			end
			if arg1 == VOICE_JOIN_PROGRESS_upvr.Joined then
				any_useMemo_result1_upvr.availability:unavailable()
				if default_upvr.inExpUpsellEntrypoint == Constants_upvr.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE then
					default_upvr:ToggleMic()
					default_upvr:showPrompt(PromptType_upvr.VoiceConsentAcceptedToast)
				end
			end
		end
	end, dependencyArray_upvr(any_useMemo_result1_upvr, any_useMemo_result1_upvr_2))
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 103
		--[[ Upvalues[1]:
			[1]: any_useMemo_result1_upvr (readonly)
		]]
		any_useMemo_result1_upvr.availability:unavailable()
	end, dependencyArray_upvr(any_useMemo_result1_upvr))
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 107
		--[[ Upvalues[3]:
			[1]: any_useMemo_result1_upvr_2 (readonly)
			[2]: isVoiceFocused_upvr (copied, readonly)
			[3]: any_useMemo_result1_upvr (readonly)
		]]
		if any_useMemo_result1_upvr_2 or isVoiceFocused_upvr() then
			any_useMemo_result1_upvr.availability:unavailable()
		else
			any_useMemo_result1_upvr.availability:available()
		end
	end, dependencyArray_upvr(any_useMemo_result1_upvr, any_useMemo_result1_upvr_2))
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function() -- Line 115
		--[[ Upvalues[5]:
			[1]: default_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr_4 (readonly)
			[3]: GetFFlagEnableConnectDisconnectInSettingsAndChrome_upvr (copied, readonly)
			[4]: any_useCallback_result1_upvr_2 (readonly)
			[5]: any_useCallback_result1_upvr (readonly)
		]]
		local var36_upvw
		local var37_upvw
		if GetFFlagEnableConnectDisconnectInSettingsAndChrome_upvr() then
			var36_upvw = default_upvr.showVoiceUI.Event:Connect(any_useCallback_result1_upvr_2)
			var37_upvw = default_upvr.hideVoiceUI.Event:Connect(any_useCallback_result1_upvr)
		end
		local any_Connect_result1_upvr = default_upvr.VoiceJoinProgressChanged.Event:Connect(any_useCallback_result1_upvr_4)
		return function() -- Line 125
			--[[ Upvalues[3]:
				[1]: any_Connect_result1_upvr (readonly)
				[2]: var36_upvw (read and write)
				[3]: var37_upvw (read and write)
			]]
			if any_Connect_result1_upvr then
				any_Connect_result1_upvr:Disconnect()
			end
			if var36_upvw then
				var36_upvw:Disconnect()
			end
			if var37_upvw then
				var37_upvw:Disconnect()
			end
		end
	end, {})
	React_upvr.useEffect(function() -- Line 138
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvr_6 (readonly)
			[2]: any_useCallback_result1_upvr_3 (readonly)
		]]
		any_useCallback_result1_upvr_6()
		any_useCallback_result1_upvr_3()
	end, {})
	React_upvr.useEffect(function() -- Line 143
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvr_4 (readonly)
			[2]: default_upvr (copied, readonly)
		]]
		any_useCallback_result1_upvr_4(default_upvr.VoiceJoinProgress)
	end, {any_useMemo_result1_upvr_2})
	return nil
end