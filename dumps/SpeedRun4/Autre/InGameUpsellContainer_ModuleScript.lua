-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:31
-- Luau version 6, Types version 3
-- Time taken: 0.005187 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local function var3() -- Line 85
end
local tbl_5_upvr = {
	onSuccess = var3;
	onFailure = var3;
	onCancelled = var3;
	origin = "";
	eventContext = "";
	addPhoneTitleKey = "Feature.VerificationUpsell.Action.AddPhone";
	addPhoneDescriptionKey = "Feature.VerificationUpsell.Description.VerificationCodeSmsFeesMayApply";
	extraButtonTextKey = "";
	onExtraButtonClick = var3;
	shouldAutofillAndroidPhoneNumberAtLaunch = false;
	isOTPInputTypeEnabled = false;
	isPhoneNumberTextTypeEnabled = false;
	alwaysShowAddPhoneLegalText = false;
	requireAddPhoneLegalTextCheckbox = false;
	closeUpsell = var3;
	showWebpage = function(arg1) -- Line 103, Named "showWebpage"
	end;
}
local mergeProps_upvr = require(PhoneUpsell.Utils.mergeProps)
local usePhoneVerificationUpsellProps_upvr = require(PhoneUpsell.Components.usePhoneVerificationUpsellProps)
local React_upvr = require(Parent.React)
local GetFFlagPhoneUseParentSizeForScreenSize_upvr = require(PhoneUpsell.Flags.GetFFlagPhoneUseParentSizeForScreenSize)
local Roact_upvr = require(Parent.Roact)
local PhoneVerificationUpsellState_upvr = require(PhoneUpsell.Components.PhoneVerificationUpsellState)
local InGameEntryView_upvr = require(PhoneUpsell.Components.InGame.InGameEntryView)
local InGameAddPhoneView_upvr = require(PhoneUpsell.Components.InGame.InGameAddPhoneView)
local GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr = require(PhoneUpsell.Flags.GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell)
local InGameVerifyPhoneView_upvr = require(PhoneUpsell.Components.InGame.InGameVerifyPhoneView)
local GetFFlagFixIosOtpAutofill_upvr = require(PhoneUpsell.Flags.GetFFlagFixIosOtpAutofill)
return function(arg1) -- Line 106, Named "InGameUpsellContainer"
	--[[ Upvalues[12]:
		[1]: mergeProps_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: usePhoneVerificationUpsellProps_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: GetFFlagPhoneUseParentSizeForScreenSize_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: PhoneVerificationUpsellState_upvr (readonly)
		[8]: InGameEntryView_upvr (readonly)
		[9]: InGameAddPhoneView_upvr (readonly)
		[10]: GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr (readonly)
		[11]: InGameVerifyPhoneView_upvr (readonly)
		[12]: GetFFlagFixIosOtpAutofill_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local mergeProps_upvr_result1 = mergeProps_upvr(tbl_5_upvr, arg1)
	local usePhoneVerificationUpsellProps_upvr_result1_upvr_2 = usePhoneVerificationUpsellProps_upvr(mergeProps_upvr_result1)
	local var32 = React_upvr
	local var35
	if GetFFlagPhoneUseParentSizeForScreenSize_upvr() then
		var32 = "Frame"
	else
		var32 = React_upvr.Fragment
	end
	if GetFFlagPhoneUseParentSizeForScreenSize_upvr() then
		local tbl = {
			BackgroundTransparency = 1;
		}
		var35 = 1
		tbl.Size = UDim2.new(var35, 0, 1, 0)
		var35 = Roact_upvr.Change
		function var35(arg1_3) -- Line 117
			--[[ Upvalues[1]:
				[1]: usePhoneVerificationUpsellProps_upvr_result1_upvr_2 (readonly)
			]]
			usePhoneVerificationUpsellProps_upvr_result1_upvr_2.setParentSize(arg1_3.AbsoluteSize)
		end
		tbl[var35.AbsoluteSize] = var35
	else
	end
	local module = {}
	var35 = false
	if usePhoneVerificationUpsellProps_upvr_result1_upvr_2.phoneUpsellState == PhoneVerificationUpsellState_upvr.Entry then
		var35 = mergeProps_upvr_result1.entryConfig
		if var35 then
			var35 = React_upvr.createElement
			var35 = var35(InGameEntryView_upvr, {
				screenSize = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.screenSize;
				onClose = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.handleCloseClick;
				titleKey = mergeProps_upvr_result1.entryConfig.titleKey;
				descriptionKey = mergeProps_upvr_result1.entryConfig.descriptionKey;
				buttonKey = mergeProps_upvr_result1.entryConfig.buttonKey;
				onButtonClick = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.proceedToAddPhone;
				extraButtonKey = mergeProps_upvr_result1.entryConfig.extraButtonConfig.extraButtonKey;
				onExtraButtonClick = mergeProps_upvr_result1.closeUpsell;
				countryCode = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.countryCode;
				onTermsOfUseClick = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.navigateToSMSTerms;
				onPrivacyPolicyClick = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.navigateToPrivacy;
				legalTextKey = mergeProps_upvr_result1.entryConfig.legalTextKey;
			})
		end
	end
	module.Entry = var35
	var35 = false
	if usePhoneVerificationUpsellProps_upvr_result1_upvr_2.phoneUpsellState == PhoneVerificationUpsellState_upvr.AddPhone then
		var35 = React_upvr.createElement
		local tbl_4 = {
			screenSize = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.screenSize;
			countryCode = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.countryCode;
			setCountryCode = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.setCountryCode;
			phoneNumber = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.phoneNumber;
			errorMessage = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.addPhoneErrorMessage;
			isDisabled = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.isDisabled;
			onPhoneNumberTextChange = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.onPhoneNumberTextChange;
			onSetPhoneNumber = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.handleSetPhone;
			onClose = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.handleCloseClick;
			onCountryCodeSelectorClick = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.onCountryCodeSelectorClick;
			isKeyboardShowing = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.isKeyboardShowing;
			keyboardHeight = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.onScreenKeyboardHeight;
			titleKey = mergeProps_upvr_result1.addPhoneTitleKey;
			buttonKey = mergeProps_upvr_result1.addPhoneButtonKey;
			extraButtonKey = "Feature.VerificationUpsell.Action.NotNow";
			onExtraButtonClick = mergeProps_upvr_result1.closeUpsell;
		}
		local GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr_result1 = GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr()
		if GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr_result1 then
			GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr_result1 = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.isPhoneNumberTextTypeEnabled
		end
		tbl_4.usePhoneNumberTextType = GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr_result1
		tbl_4.descriptionKey = mergeProps_upvr_result1.addPhoneDescriptionKey
		tbl_4.legalTextKey = mergeProps_upvr_result1.addPhoneLegalTextKey
		tbl_4.onPhoneInputFocus = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.onPhoneInputFocus
		var35 = var35(InGameAddPhoneView_upvr, tbl_4)
	end
	module.AddPhone = var35
	if usePhoneVerificationUpsellProps_upvr_result1_upvr_2.phoneUpsellState == PhoneVerificationUpsellState_upvr.VerifyPhone then
		local tbl_3 = {
			screenSize = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.screenSize;
			phoneNumber = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.phoneNumber;
			prefix = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.countryCode.prefix;
			code = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.code;
			errorMessage = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.verifyPhoneErrorMessage;
			onCodeTextChange = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.onCodeTextChange;
			onResendPhoneCode = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.handleResendCode;
			onClose = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.handleCloseClick;
			returnToAddPhone = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.returnToAddPhone;
			onCodeInputFocus = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.onCodeInputFocus;
			isKeyboardShowing = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.isKeyboardShowing;
		}
		local onScreenKeyboardHeight_2 = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.onScreenKeyboardHeight
		tbl_3.keyboardHeight = onScreenKeyboardHeight_2
		if GetFFlagFixIosOtpAutofill_upvr() then
			onScreenKeyboardHeight_2 = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.isOTPInputTypeEnabled
		else
			onScreenKeyboardHeight_2 = mergeProps_upvr_result1.isOTPInputTypeEnabled
		end
		tbl_3.useOTPInputType = onScreenKeyboardHeight_2
		tbl_3.extraButtonKey = "Feature.VerificationUpsell.Action.EditPhoneNumber"
		tbl_3.onExtraButtonClick = usePhoneVerificationUpsellProps_upvr_result1_upvr_2.returnToAddPhone
	end
	module.VerifyPhone = React_upvr.createElement(InGameVerifyPhoneView_upvr, tbl_3)
	return var32.createElement(var32, nil, module)
end