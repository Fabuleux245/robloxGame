-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:17
-- Luau version 6, Types version 3
-- Time taken: 0.001902 seconds

local Parent = script:FindFirstAncestor("GamePlayButton").Parent
local RoactUtils = require(Parent.RoactUtils)
local VoiceChat = require(Parent.VoiceChat)
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local React_upvr = require(Parent.React)
local GetFFlagLogExposureForExperienceUpsell_upvr = VoiceChat.Flags.GetFFlagLogExposureForExperienceUpsell
local GetFStringVoiceUpsellLayer_upvr = require(Parent.SharedFlags).GetFStringVoiceUpsellLayer
local IXPService_upvr = game:GetService("IXPService")
local OpenCentralOverlayForVerifiedEnableVoice_upvr = VoiceChat.AgeVerificationOverlay.OpenCentralOverlayForVerifiedEnableVoice
local ApiPostRecordUserSeenModal_upvr = VoiceChat.AgeVerificationOverlay.ApiPostRecordUserSeenModal
local SetShowAgeVerificationOverlay_upvr = VoiceChat.AgeVerificationOverlay.SetShowAgeVerificationOverlay
return function(arg1, arg2, arg3) -- Line 23
	--[[ Upvalues[12]:
		[1]: useRoactService_upvr (readonly)
		[2]: RoactNetworking_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useAppPolicy_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: GetFFlagLogExposureForExperienceUpsell_upvr (readonly)
		[8]: GetFStringVoiceUpsellLayer_upvr (readonly)
		[9]: IXPService_upvr (readonly)
		[10]: OpenCentralOverlayForVerifiedEnableVoice_upvr (readonly)
		[11]: ApiPostRecordUserSeenModal_upvr (readonly)
		[12]: SetShowAgeVerificationOverlay_upvr (readonly)
	]]
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	local useAppPolicy_upvr_result1_upvr = useAppPolicy_upvr(function(arg1_2) -- Line 30
		return {
			RequireExplicitVoiceConsent = arg1_2.RequireExplicitVoiceConsent();
			showVoiceOptInOverlayEnabled = arg1_2.getShowVoiceUpsellV2();
		}
	end)
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_3) -- Line 37
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_3.ShowAgeVerificationOverlay[arg1] ~= nil then
			return arg1_3.ShowAgeVerificationOverlay[arg1]
		end
		return {}
	end)
	local isPlaceEnabledForVoice_upvr = useSelector_upvr_result1.isPlaceEnabledForVoice
	local isUniverseEnabledForVoice_upvr = useSelector_upvr_result1.isUniverseEnabledForVoice
	local showVoiceOptInOverlay_upvr = useSelector_upvr_result1.showVoiceOptInOverlay
	local elegibleToSeeVoiceUpsell_upvr = useSelector_upvr_result1.elegibleToSeeVoiceUpsell
	local var8_result1_upvr = useDispatch_upvr()
	local module = {useRoactService_upvr_result1_upvr}
	module[2] = arg1
	module[3] = isPlaceEnabledForVoice_upvr
	module[4] = isUniverseEnabledForVoice_upvr
	module[5] = showVoiceOptInOverlay_upvr
	module[6] = useAppPolicy_upvr_result1_upvr.showVoiceOptInOverlayEnabled
	module[7] = useAppPolicy_upvr_result1_upvr.RequireExplicitVoiceConsent
	module[8] = useSelector_upvr_result1.isVoiceEnabled
	module[9] = arg2
	module[10] = arg3
	module[11] = elegibleToSeeVoiceUpsell_upvr
	return React_upvr.useCallback(function(arg1_4) -- Line 50
		--[[ Upvalues[16]:
			[1]: GetFFlagLogExposureForExperienceUpsell_upvr (copied, readonly)
			[2]: isUniverseEnabledForVoice_upvr (readonly)
			[3]: elegibleToSeeVoiceUpsell_upvr (readonly)
			[4]: GetFStringVoiceUpsellLayer_upvr (copied, readonly)
			[5]: IXPService_upvr (copied, readonly)
			[6]: showVoiceOptInOverlay_upvr (readonly)
			[7]: useAppPolicy_upvr_result1_upvr (readonly)
			[8]: var8_result1_upvr (readonly)
			[9]: OpenCentralOverlayForVerifiedEnableVoice_upvr (copied, readonly)
			[10]: arg2 (readonly)
			[11]: ApiPostRecordUserSeenModal_upvr (copied, readonly)
			[12]: useRoactService_upvr_result1_upvr (readonly)
			[13]: SetShowAgeVerificationOverlay_upvr (copied, readonly)
			[14]: arg1 (readonly)
			[15]: isPlaceEnabledForVoice_upvr (readonly)
			[16]: arg3 (readonly)
		]]
		if GetFFlagLogExposureForExperienceUpsell_upvr() and isUniverseEnabledForVoice_upvr and elegibleToSeeVoiceUpsell_upvr and GetFStringVoiceUpsellLayer_upvr() ~= "" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			IXPService_upvr:LogUserLayerExposure(GetFStringVoiceUpsellLayer_upvr())
		end
		if showVoiceOptInOverlay_upvr and useAppPolicy_upvr_result1_upvr.showVoiceOptInOverlayEnabled then
			var8_result1_upvr(OpenCentralOverlayForVerifiedEnableVoice_upvr({
				launchGame = function() -- Line 59, Named "launchGame"
					--[[ Upvalues[2]:
						[1]: arg2 (copied, readonly)
						[2]: arg1_4 (readonly)
					]]
					arg2(arg1_4)
				end;
				RequireExplicitVoiceConsent = useAppPolicy_upvr_result1_upvr.RequireExplicitVoiceConsent;
				postUserSeenModal = function() -- Line 63, Named "postUserSeenModal"
					--[[ Upvalues[3]:
						[1]: var8_result1_upvr (copied, readonly)
						[2]: ApiPostRecordUserSeenModal_upvr (copied, readonly)
						[3]: useRoactService_upvr_result1_upvr (copied, readonly)
					]]
					return var8_result1_upvr(ApiPostRecordUserSeenModal_upvr.Fetch(useRoactService_upvr_result1_upvr))
				end;
				setShowVoiceOptIn = function(arg1_5) -- Line 66, Named "setShowVoiceOptIn"
					--[[ Upvalues[5]:
						[1]: var8_result1_upvr (copied, readonly)
						[2]: SetShowAgeVerificationOverlay_upvr (copied, readonly)
						[3]: arg1 (copied, readonly)
						[4]: isPlaceEnabledForVoice_upvr (copied, readonly)
						[5]: isUniverseEnabledForVoice_upvr (copied, readonly)
					]]
					var8_result1_upvr(SetShowAgeVerificationOverlay_upvr(arg1, isPlaceEnabledForVoice_upvr, isUniverseEnabledForVoice_upvr, arg1_5.voiceEnabled, arg1_5.showVoiceOptInOverlay))
				end;
			}))
		else
			arg3(arg1_4)
		end
	end, module)
end