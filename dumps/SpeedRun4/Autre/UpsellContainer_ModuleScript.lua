-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:37
-- Luau version 6, Types version 3
-- Time taken: 0.009834 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local function var3() -- Line 102
end
local tbl_2_upvr = {
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
	showWebpage = function(arg1) -- Line 120, Named "showWebpage"
	end;
}
local mergeProps_upvr = require(PhoneUpsell.Utils.mergeProps)
local usePhoneVerificationUpsellProps_upvr = require(PhoneUpsell.Components.usePhoneVerificationUpsellProps)
local React_upvr = require(Parent.React)
local LoadingSpinner_upvr = require(Parent.UIBlox).App.Loading.LoadingSpinner
local GetFFlagPhoneUseParentSizeForScreenSize_upvr = require(PhoneUpsell.Flags.GetFFlagPhoneUseParentSizeForScreenSize)
local Roact_upvr = require(Parent.Roact)
local PhoneVerificationUpsellState_upvr = require(PhoneUpsell.Components.PhoneVerificationUpsellState)
local EntryView_upvr = require(PhoneUpsell.Components.EntryView)
local AddPhoneView_upvr = require(PhoneUpsell.Components.AddPhoneView)
local GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr = require(PhoneUpsell.Flags.GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell)
local VerifyPhoneView_upvr = require(PhoneUpsell.Components.VerifyPhoneView)
local GetFFlagDisableVerifyPhoneViewOnSuccess_upvr = require(PhoneUpsell.Flags.GetFFlagDisableVerifyPhoneViewOnSuccess)
local GetFFlagFixIosOtpAutofill_upvr = require(PhoneUpsell.Flags.GetFFlagFixIosOtpAutofill)
local PhoneVerificationStatusOverlay_upvr = require(PhoneUpsell.Components.PhoneVerificationStatusOverlay)
return function(arg1) -- Line 123, Named "UpsellContainer"
	--[[ Upvalues[15]:
		[1]: mergeProps_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: usePhoneVerificationUpsellProps_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: LoadingSpinner_upvr (readonly)
		[6]: GetFFlagPhoneUseParentSizeForScreenSize_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: PhoneVerificationUpsellState_upvr (readonly)
		[9]: EntryView_upvr (readonly)
		[10]: AddPhoneView_upvr (readonly)
		[11]: GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr (readonly)
		[12]: VerifyPhoneView_upvr (readonly)
		[13]: GetFFlagDisableVerifyPhoneViewOnSuccess_upvr (readonly)
		[14]: GetFFlagFixIosOtpAutofill_upvr (readonly)
		[15]: PhoneVerificationStatusOverlay_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5_result1 = mergeProps_upvr(tbl_2_upvr, arg1)
	local usePhoneVerificationUpsellProps_upvr_result1_upvr = usePhoneVerificationUpsellProps_upvr(var5_result1)
	local tbl_9 = {
		size = UDim2.fromOffset(48, 48);
		position = UDim2.fromScale(0.5, 0.5);
		anchorPoint = Vector2.new(0.5, 0.5);
	}
	tbl_9 = React_upvr
	local var39 = tbl_9
	local var42
	if GetFFlagPhoneUseParentSizeForScreenSize_upvr() then
		var39 = "Frame"
	else
		var39 = React_upvr.Fragment
	end
	if GetFFlagPhoneUseParentSizeForScreenSize_upvr() then
		local tbl_7 = {
			BackgroundTransparency = 1;
		}
		var42 = 1
		tbl_7.Size = UDim2.new(var42, 0, 1, 0)
		var42 = Roact_upvr.Change
		function var42(arg1_3) -- Line 140
			--[[ Upvalues[1]:
				[1]: usePhoneVerificationUpsellProps_upvr_result1_upvr (readonly)
			]]
			usePhoneVerificationUpsellProps_upvr_result1_upvr.setParentSize(arg1_3.AbsoluteSize)
		end
		tbl_7[var42.AbsoluteSize] = var42
	else
	end
	local module = {}
	var42 = false
	if usePhoneVerificationUpsellProps_upvr_result1_upvr.phoneUpsellState == PhoneVerificationUpsellState_upvr.Entry then
		var42 = var5_result1.entryConfig
		if var42 then
			var42 = React_upvr.createElement
			var42 = var42(EntryView_upvr, {
				screenSize = usePhoneVerificationUpsellProps_upvr_result1_upvr.screenSize;
				onClose = usePhoneVerificationUpsellProps_upvr_result1_upvr.handleCloseClick;
				titleKey = var5_result1.entryConfig.titleKey;
				descriptionKey = var5_result1.entryConfig.descriptionKey;
				buttonKey = var5_result1.entryConfig.buttonKey;
				onButtonClick = usePhoneVerificationUpsellProps_upvr_result1_upvr.proceedToAddPhone;
				extraButtonKey = var5_result1.entryConfig.extraButtonConfig.extraButtonKey;
				onExtraButtonClick = var5_result1.entryConfig.extraButtonConfig.onExtraButtonClick;
			})
		end
	end
	module.Entry = var42
	var42 = false
	if usePhoneVerificationUpsellProps_upvr_result1_upvr.phoneUpsellState == PhoneVerificationUpsellState_upvr.AddPhone then
		var42 = React_upvr.createElement
		local tbl_6 = {
			screenSize = usePhoneVerificationUpsellProps_upvr_result1_upvr.screenSize;
			countryCode = usePhoneVerificationUpsellProps_upvr_result1_upvr.countryCode;
			setCountryCode = usePhoneVerificationUpsellProps_upvr_result1_upvr.setCountryCode;
			phoneNumber = usePhoneVerificationUpsellProps_upvr_result1_upvr.phoneNumber;
			errorMessage = usePhoneVerificationUpsellProps_upvr_result1_upvr.addPhoneErrorMessage;
			isDisabled = usePhoneVerificationUpsellProps_upvr_result1_upvr.isDisabled;
			onPhoneNumberTextChange = usePhoneVerificationUpsellProps_upvr_result1_upvr.onPhoneNumberTextChange;
			onSetPhoneNumber = usePhoneVerificationUpsellProps_upvr_result1_upvr.handleSetPhone;
			onClose = usePhoneVerificationUpsellProps_upvr_result1_upvr.handleCloseClick;
			onTermsOfUseClick = usePhoneVerificationUpsellProps_upvr_result1_upvr.navigateToSMSTerms;
			onPrivacyPolicyClick = usePhoneVerificationUpsellProps_upvr_result1_upvr.navigateToPrivacy;
			onPhoneInputFocus = usePhoneVerificationUpsellProps_upvr_result1_upvr.onPhoneInputFocus;
			onCountryCodeSelectorClick = usePhoneVerificationUpsellProps_upvr_result1_upvr.onCountryCodeSelectorClick;
			isKeyboardShowing = usePhoneVerificationUpsellProps_upvr_result1_upvr.isKeyboardShowing;
			keyboardHeight = usePhoneVerificationUpsellProps_upvr_result1_upvr.onScreenKeyboardHeight;
		}
		local GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr_result1_2 = GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr()
		if GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr_result1_2 then
			GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr_result1_2 = usePhoneVerificationUpsellProps_upvr_result1_upvr.isPhoneNumberTextTypeEnabled
		end
		tbl_6.usePhoneNumberTextType = GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr_result1_2
		tbl_6.titleKey = var5_result1.addPhoneTitleKey
		tbl_6.descriptionKey = var5_result1.addPhoneDescriptionKey
		tbl_6.buttonKey = var5_result1.addPhoneButtonKey
		tbl_6.legalTextKey = var5_result1.addPhoneLegalTextKey
		tbl_6.extraButtonKey = var5_result1.extraButtonTextKey
		tbl_6.onExtraButtonClick = var5_result1.onExtraButtonClick
		tbl_6.alwaysShowLegalText = var5_result1.alwaysShowAddPhoneLegalText
		tbl_6.requireLegalTextCheckbox = var5_result1.requireAddPhoneLegalTextCheckbox
		var42 = var42(AddPhoneView_upvr, tbl_6)
	end
	module.AddPhone = var42
	local var47
	if usePhoneVerificationUpsellProps_upvr_result1_upvr.phoneUpsellState == PhoneVerificationUpsellState_upvr.VerifyPhone then
		local tbl_10 = {}
		var47 = usePhoneVerificationUpsellProps_upvr_result1_upvr.screenSize
		tbl_10.screenSize = var47
		var47 = usePhoneVerificationUpsellProps_upvr_result1_upvr.phoneNumber
		tbl_10.phoneNumber = var47
		var47 = usePhoneVerificationUpsellProps_upvr_result1_upvr.countryCode.prefix
		tbl_10.prefix = var47
		var47 = usePhoneVerificationUpsellProps_upvr_result1_upvr.code
		tbl_10.code = var47
		var47 = usePhoneVerificationUpsellProps_upvr_result1_upvr.verifyPhoneErrorMessage
		tbl_10.errorMessage = var47
		if GetFFlagDisableVerifyPhoneViewOnSuccess_upvr() then
			var47 = usePhoneVerificationUpsellProps_upvr_result1_upvr.isDisabled
		else
			var47 = nil
		end
		tbl_10.isDisabled = var47
		tbl_10.onCodeTextChange = usePhoneVerificationUpsellProps_upvr_result1_upvr.onCodeTextChange
		tbl_10.onResendPhoneCode = usePhoneVerificationUpsellProps_upvr_result1_upvr.handleResendCode
		tbl_10.onClose = usePhoneVerificationUpsellProps_upvr_result1_upvr.handleCloseClick
		tbl_10.returnToAddPhone = usePhoneVerificationUpsellProps_upvr_result1_upvr.returnToAddPhone
		tbl_10.onCodeInputFocus = usePhoneVerificationUpsellProps_upvr_result1_upvr.onCodeInputFocus
		tbl_10.isKeyboardShowing = usePhoneVerificationUpsellProps_upvr_result1_upvr.isKeyboardShowing
		tbl_10.keyboardHeight = usePhoneVerificationUpsellProps_upvr_result1_upvr.onScreenKeyboardHeight
		if GetFFlagFixIosOtpAutofill_upvr() then
		else
		end
		tbl_10.useOTPInputType = var5_result1.isOTPInputTypeEnabled
		tbl_10.extraButtonKey = var5_result1.verifyPhoneExtraButtonKey
		tbl_10.onExtraButtonClick = var5_result1.onVerifyPhoneExtraButtonClick
	end
	module.VerifyPhone = React_upvr.createElement(VerifyPhoneView_upvr, tbl_10)
	if usePhoneVerificationUpsellProps_upvr_result1_upvr.isLoading then
	end
	module.LoadingOverlay = React_upvr.createElement(PhoneVerificationStatusOverlay_upvr, {
		image = React_upvr.createElement(LoadingSpinner_upvr, tbl_9);
		text = usePhoneVerificationUpsellProps_upvr_result1_upvr.verifyingKey;
	})
	return var39.createElement(var39, nil, module)
end