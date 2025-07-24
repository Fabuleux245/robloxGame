-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:39
-- Luau version 6, Types version 3
-- Time taken: 0.004501 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	onSuccess = function() -- Line 39, Named "onSuccess"
	end;
	closeUpsell = function() -- Line 40, Named "closeUpsell"
	end;
	addPhoneTitleKey = "Feature.VerificationUpsell.Action.AddPhoneVoice";
	addPhoneDescriptionKey = "Feature.VerificationUpsell.Description.AddPhoneBodyVoice";
}
local mergeProps_upvr = require(PhoneUpsell.Utils.mergeProps)
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local React_upvr = require(Parent.React)
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local PostUserOptIn_upvr = require(Parent.VoiceChat).PostUserOptIn
local FFlagFixUpsellVerificationToNavigateToOverlays_upvr = require(PhoneUpsell.Flags.FFlagFixUpsellVerificationToNavigateToOverlays)
local Logging_upvr = require(Parent.AppCommonLib).Logging
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local UpsellContainer_upvr = require(PhoneUpsell.Components.UpsellContainer)
local Cryo_upvr = require(Parent.Cryo)
local PhoneVerificationStatusOverlay_upvr = require(PhoneUpsell.Components.PhoneVerificationStatusOverlay)
return function(arg1) -- Line 47, Named "VoicePhoneVerificationUpsellOverlayWrapper"
	--[[ Upvalues[15]:
		[1]: mergeProps_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useRoactService_upvr (readonly)
		[4]: RoactNetworking_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: useAppPolicy_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: Images_upvr (readonly)
		[9]: PostUserOptIn_upvr (readonly)
		[10]: FFlagFixUpsellVerificationToNavigateToOverlays_upvr (readonly)
		[11]: Logging_upvr (readonly)
		[12]: useLocalization_upvr (readonly)
		[13]: UpsellContainer_upvr (readonly)
		[14]: Cryo_upvr (readonly)
		[15]: PhoneVerificationStatusOverlay_upvr (readonly)
	]]
	local mergeProps_upvr_result1_upvr = mergeProps_upvr(tbl_upvr, arg1)
	local any_useState_result1_2, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local useAppPolicy_upvr_result1 = useAppPolicy_upvr(function(arg1_2) -- Line 54
		return arg1_2.RequireExplicitVoiceConsent()
	end)
	local any_createElement_result1 = React_upvr.createElement(ImageSetLabel_upvr, {
		Size = UDim2.fromOffset(40, 40);
		Image = Images_upvr["icons/status/success_large"];
		BackgroundTransparency = 1;
	})
	local var6_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	local useLocalization_upvr_result1 = useLocalization_upvr({
		verifySuccessKey = "Feature.VerificationUpsell.Heading.VoiceChatEnabledMobile";
		voiceErrorKey = "Feature.VerificationUpsell.Heading.VoiceChatError";
	})
	local module = {}
	local tbl = {
		onSuccess = function() -- Line 64
			--[[ Upvalues[7]:
				[1]: PostUserOptIn_upvr (copied, readonly)
				[2]: var6_result1_upvr (readonly)
				[3]: any_useState_result2_upvr_2 (readonly)
				[4]: FFlagFixUpsellVerificationToNavigateToOverlays_upvr (copied, readonly)
				[5]: mergeProps_upvr_result1_upvr (readonly)
				[6]: any_useState_result2_upvr (readonly)
				[7]: Logging_upvr (copied, readonly)
			]]
			PostUserOptIn_upvr(var6_result1_upvr, true, false):andThen(function(arg1_3) -- Line 66
				--[[ Upvalues[5]:
					[1]: any_useState_result2_upvr_2 (copied, readonly)
					[2]: FFlagFixUpsellVerificationToNavigateToOverlays_upvr (copied, readonly)
					[3]: mergeProps_upvr_result1_upvr (copied, readonly)
					[4]: any_useState_result2_upvr (copied, readonly)
					[5]: Logging_upvr (copied, readonly)
				]]
				if arg1_3 then
					any_useState_result2_upvr_2(true)
					task.delay(3, function() -- Line 69
						--[[ Upvalues[2]:
							[1]: FFlagFixUpsellVerificationToNavigateToOverlays_upvr (copied, readonly)
							[2]: mergeProps_upvr_result1_upvr (copied, readonly)
						]]
						if FFlagFixUpsellVerificationToNavigateToOverlays_upvr then
							mergeProps_upvr_result1_upvr.closeUpsell()
							mergeProps_upvr_result1_upvr.onSuccess()
						else
							mergeProps_upvr_result1_upvr.onSuccess()
							mergeProps_upvr_result1_upvr.closeUpsell()
						end
					end)
				else
					any_useState_result2_upvr(true)
					task.delay(5, function() -- Line 80
						--[[ Upvalues[2]:
							[1]: FFlagFixUpsellVerificationToNavigateToOverlays_upvr (copied, readonly)
							[2]: mergeProps_upvr_result1_upvr (copied, readonly)
						]]
						if FFlagFixUpsellVerificationToNavigateToOverlays_upvr then
							mergeProps_upvr_result1_upvr.closeUpsell()
							mergeProps_upvr_result1_upvr.onSuccess()
						else
							mergeProps_upvr_result1_upvr.onSuccess()
							mergeProps_upvr_result1_upvr.closeUpsell()
						end
					end)
					Logging_upvr.warn("Error getting UserOptIn. "..tostring(arg1_3))
				end
			end):catch(function() -- Line 92
				--[[ Upvalues[4]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: FFlagFixUpsellVerificationToNavigateToOverlays_upvr (copied, readonly)
					[3]: mergeProps_upvr_result1_upvr (copied, readonly)
					[4]: Logging_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(true)
				task.delay(5, function() -- Line 94
					--[[ Upvalues[2]:
						[1]: FFlagFixUpsellVerificationToNavigateToOverlays_upvr (copied, readonly)
						[2]: mergeProps_upvr_result1_upvr (copied, readonly)
					]]
					if FFlagFixUpsellVerificationToNavigateToOverlays_upvr then
						mergeProps_upvr_result1_upvr.closeUpsell()
						mergeProps_upvr_result1_upvr.onSuccess()
					else
						mergeProps_upvr_result1_upvr.onSuccess()
						mergeProps_upvr_result1_upvr.closeUpsell()
					end
				end)
				Logging_upvr.warn("Exception posting PostUserOptIn")
			end)
		end;
		addPhoneTitleKey = mergeProps_upvr_result1_upvr.addPhoneTitleKey;
		addPhoneDescriptionKey = mergeProps_upvr_result1_upvr.addPhoneDescriptionKey;
	}
	local var39 = "Feature.VerificationUpsell.Action.EnableVoice"
	tbl.addPhoneButtonKey = var39
	if useAppPolicy_upvr_result1 then
		var39 = "Feature.VerificationUpsell.Description.VoiceLegalConsent"
	else
		var39 = "Feature.VerificationUpsell.Description.VoiceLegalDisclaimer"
	end
	tbl.addPhoneLegalTextKey = var39
	tbl.alwaysShowAddPhoneLegalText = true
	tbl.requireAddPhoneLegalTextCheckbox = useAppPolicy_upvr_result1
	module.PhoneVerificationUpsellOverlay = React_upvr.createElement(UpsellContainer_upvr, Cryo_upvr.Dictionary.join(mergeProps_upvr_result1_upvr, tbl))
	local var40 = any_useState_result1_2
	if var40 then
		var40 = React_upvr.createElement
		var40 = var40(PhoneVerificationStatusOverlay_upvr, {
			image = any_createElement_result1;
			text = useLocalization_upvr_result1.verifySuccessKey;
		})
	end
	module.SuccessOverlay = var40
	var40 = any_useState_result1
	local var42 = var40
	if var42 then
		var42 = React_upvr.createElement
		var42 = var42(PhoneVerificationStatusOverlay_upvr, {
			image = any_createElement_result1;
			text = useLocalization_upvr_result1.voiceErrorKey;
		})
	end
	module.ErrorOverlay = var42
	return React_upvr.createElement(React_upvr.Fragment, nil, module)
end