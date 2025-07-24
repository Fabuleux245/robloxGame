-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:49
-- Luau version 6, Types version 3
-- Time taken: 0.004172 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local GetFFlagTweakedMicPinning_upvr = require(Chrome.Flags.GetFFlagTweakedMicPinning)
local var6_upvr = game:GetEngineFeature("AudioFocusManagement") and game:DefineFastFlag("EnableChromeAudioFocusManagement", false)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local var8_upvw
if require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceMuteAnalytics)() then
	var8_upvw = require(RobloxGui.Modules.Settings.Analytics.VoiceAnalytics).new(game:GetService("RbxAnalyticsService"), "Chrome.Integrations.ToggleMic")
end
local any_new_result1_upvr = require(RobloxGui.Modules.SelfView.Analytics).new()
local function var9_upvr(arg1) -- Line 35
	--[[ Upvalues[3]:
		[1]: default_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: var8_upvw (read and write)
	]]
	default_upvr:ToggleMic("ChromeIntegrationsToggleMic")
	any_new_result1_upvr:setLastCtx("SelfView")
	if var8_upvw then
		var8_upvw:onToggleMuteSelf(not default_upvr.localMuted)
	end
end
local function var11_upvr(arg1) -- Line 43
	--[[ Upvalues[1]:
		[1]: default_upvr (readonly)
	]]
	default_upvr:RejoinPreviousChannel()
end
local function var12_upvr(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: default_upvr (readonly)
	]]
	default_upvr:ShowVoiceChatLoadingMessage()
end
local tbl_2 = {
	id = "toggle_mic_mute";
	label = "CoreScripts.TopBar.ToggleMic";
	activated = var9_upvr;
}
local tbl = {}
local React_upvr = require(CorePackages.Packages.React)
local udim2_upvr = UDim2.new(0, Constants.ICON_SIZE, 0, Constants.ICON_SIZE)
local VoiceIndicatorFunc_upvr = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicatorFunc)
local Players_upvr = game:GetService("Players")
local RedVoiceDot_upvr = require(Chrome.Integrations.RedVoiceDot)
function tbl.Icon(arg1) -- Line 57
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: udim2_upvr (readonly)
		[3]: VoiceIndicatorFunc_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: RedVoiceDot_upvr (readonly)
	]]
	return React_upvr.createElement("Frame", {
		Size = udim2_upvr;
		BackgroundTransparency = 1;
	}, {React_upvr.createElement(VoiceIndicatorFunc_upvr, {
		userId = tostring(Players_upvr.LocalPlayer.UserId);
		hideOnError = false;
		iconStyle = "MicLight";
		selectable = false;
		size = udim2_upvr;
		showConnectingShimmer = true;
	}), React_upvr.createElement(RedVoiceDot_upvr, {
		position = UDim2.new(1, -7, 1, -7);
	})})
end
tbl_2.components = tbl
local any_register_result1_upvw = require(Chrome.Service):register(tbl_2)
local function applyVoiceUIVisibility_upvr() -- Line 78, Named "applyVoiceUIVisibility"
	--[[ Upvalues[3]:
		[1]: default_upvr (readonly)
		[2]: GetFFlagTweakedMicPinning_upvr (readonly)
		[3]: any_register_result1_upvw (read and write)
	]]
	if default_upvr.voiceUIVisible then
		if GetFFlagTweakedMicPinning_upvr() then
			any_register_result1_upvw.availability:pinned()
		else
			any_register_result1_upvw.availability:available()
		end
	end
	any_register_result1_upvw.availability:unavailable()
end
local function updateVoiceState_upvr(arg1, arg2) -- Line 90, Named "updateVoiceState"
	--[[ Upvalues[7]:
		[1]: var6_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: GetFFlagTweakedMicPinning_upvr (readonly)
		[4]: any_register_result1_upvw (read and write)
		[5]: var11_upvr (readonly)
		[6]: var12_upvr (readonly)
		[7]: var9_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
	local var25
	if arg2 == Enum.VoiceChatState.Ended then
		var25 = false
	else
		var25 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 8. Error Block 52 start (CF ANALYSIS FAILED)
	if var6_upvr then
		if default_upvr.voiceUIVisible then
			if GetFFlagTweakedMicPinning_upvr() then
				any_register_result1_upvw.availability:pinned()
			else
				any_register_result1_upvw.availability:available()
			end
		else
			any_register_result1_upvw.availability:unavailable()
		end
		-- KONSTANTWARNING: GOTO [64] #48
	end
	-- KONSTANTERROR: [11] 8. Error Block 52 end (CF ANALYSIS FAILED)
end
if game:GetEngineFeature("VoiceChatSupported") then
	if require(CorePackages.Workspace.Packages.SharedFlags).FFlagFixTopBarSlowLoad then
		task.spawn(function() -- Line 121
			--[[ Upvalues[6]:
				[1]: default_upvr (readonly)
				[2]: updateVoiceState_upvr (readonly)
				[3]: var6_upvr (readonly)
				[4]: applyVoiceUIVisibility_upvr (readonly)
				[5]: GetFFlagTweakedMicPinning_upvr (readonly)
				[6]: any_register_result1_upvw (read and write)
			]]
			default_upvr:asyncInit():andThen(function() -- Line 123
				--[[ Upvalues[6]:
					[1]: default_upvr (copied, readonly)
					[2]: updateVoiceState_upvr (copied, readonly)
					[3]: var6_upvr (copied, readonly)
					[4]: applyVoiceUIVisibility_upvr (copied, readonly)
					[5]: GetFFlagTweakedMicPinning_upvr (copied, readonly)
					[6]: any_register_result1_upvw (copied, read and write)
				]]
				local any_getService_result1_2 = default_upvr:getService()
				if any_getService_result1_2 then
					any_getService_result1_2.StateChanged:Connect(updateVoiceState_upvr)
					default_upvr:SetupParticipantListeners()
					if var6_upvr then
						default_upvr.showVoiceUI.Event:Connect(applyVoiceUIVisibility_upvr)
						default_upvr.hideVoiceUI.Event:Connect(applyVoiceUIVisibility_upvr)
						if default_upvr.voiceUIVisible then
							if GetFFlagTweakedMicPinning_upvr() then
								any_register_result1_upvw.availability:pinned()
							else
								any_register_result1_upvw.availability:available()
							end
						end
						any_register_result1_upvw.availability:unavailable()
						return
					end
					if GetFFlagTweakedMicPinning_upvr() then
						any_register_result1_upvw.availability:pinned()
						return
					end
					any_register_result1_upvw.availability:available()
				end
			end):catch(function() -- Line 141
			end)
		end)
	else
		default_upvr:asyncInit():andThen(function() -- Line 145
			--[[ Upvalues[6]:
				[1]: default_upvr (readonly)
				[2]: updateVoiceState_upvr (readonly)
				[3]: var6_upvr (readonly)
				[4]: applyVoiceUIVisibility_upvr (readonly)
				[5]: GetFFlagTweakedMicPinning_upvr (readonly)
				[6]: any_register_result1_upvw (read and write)
			]]
			local any_getService_result1 = default_upvr:getService()
			if any_getService_result1 then
				any_getService_result1.StateChanged:Connect(updateVoiceState_upvr)
				default_upvr:SetupParticipantListeners()
				if var6_upvr then
					default_upvr.showVoiceUI.Event:Connect(applyVoiceUIVisibility_upvr)
					default_upvr.hideVoiceUI.Event:Connect(applyVoiceUIVisibility_upvr)
					if default_upvr.voiceUIVisible then
						if GetFFlagTweakedMicPinning_upvr() then
							any_register_result1_upvw.availability:pinned()
						else
							any_register_result1_upvw.availability:available()
						end
					end
					any_register_result1_upvw.availability:unavailable()
					return
				end
				if GetFFlagTweakedMicPinning_upvr() then
					any_register_result1_upvw.availability:pinned()
					return
				end
				any_register_result1_upvw.availability:available()
			end
		end):catch(function() -- Line 163
		end)
	end
end
return any_register_result1_upvw