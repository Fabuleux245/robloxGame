-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:54
-- Luau version 6, Types version 3
-- Time taken: 0.000991 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local Constants_upvr = require(RobloxGui.Modules.VoiceChat.Constants)
local GetFFlagEnableSeamlessVoiceV2_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableSeamlessVoiceV2
local ExpChat_upvr = require(CorePackages.Workspace.Packages.ExpChat)
local GetFFlagSeamlessVoiceFTUX_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSeamlessVoiceFTUX
return function() -- Line 14
	--[[ Upvalues[6]:
		[1]: GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: GetFFlagEnableSeamlessVoiceV2_upvr (readonly)
		[5]: ExpChat_upvr (readonly)
		[6]: GetFFlagSeamlessVoiceFTUX_upvr (readonly)
	]]
	if GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr() and default_upvr:FetchPhoneVerificationUpsell(Constants_upvr.IN_EXP_PHONE_UPSELL_IXP_LAYER) == Constants_upvr.PHONE_UPSELL_VALUE_PROP.VoiceChat then
		default_upvr:ShowInExperiencePhoneVoiceUpsell(Constants_upvr.IN_EXP_UPSELL_ENTRYPOINTS.LIKELY_SPEAKING, Constants_upvr.IN_EXP_PHONE_UPSELL_IXP_LAYER)
	else
		if GetFFlagEnableSeamlessVoiceV2_upvr() and default_upvr:IsSeamlessVoice() then
			default_upvr:JoinVoice()
			ExpChat_upvr.Events.ShowLikelySpeakingBubblesChanged(false)
			default_upvr:RecordUserSeenModal("m3-likely-speaking-bubble-upsell")
			return
		end
		if GetFFlagSeamlessVoiceFTUX_upvr() and default_upvr.isShowingFTUX then
			default_upvr:HideFTUX(game:GetService("AppStorageService"))
			return
		end
		default_upvr:ShowInExperienceVoiceUpsell(Constants_upvr.IN_EXP_UPSELL_ENTRYPOINTS.LIKELY_SPEAKING)
	end
end