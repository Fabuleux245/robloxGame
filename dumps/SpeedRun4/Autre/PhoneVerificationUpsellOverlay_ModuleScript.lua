-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:35
-- Luau version 6, Types version 3
-- Time taken: 0.033631 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local GetFStringAndroidPhoneVerificationLayer_upvr = require(Parent.SharedFlags).GetFStringAndroidPhoneVerificationLayer
local GetFStringIOSPhoneVerificationLayer_upvr = require(Parent.SharedFlags).GetFStringIOSPhoneVerificationLayer
local tbl_18_upvr = {
	name = "United States";
	code = "US";
	prefix = '1';
	localizedName = "United States";
}
local function var6() -- Line 140
end
local tbl_11_upvr = {
	onSuccess = var6;
	onFailure = var6;
	onCancelled = var6;
	origin = "";
	eventContext = "";
	addPhoneTitleKey = "Feature.VerificationUpsell.Action.AddPhone";
	addPhoneDescriptionKey = "Feature.VerificationUpsell.Description.VerificationCodeSmsFeesMayApply";
	extraButtonTextKey = "";
	onExtraButtonClick = var6;
	shouldAutofillAndroidPhoneNumberAtLaunch = false;
	isOTPInputTypeEnabled = false;
	isPhoneNumberTextTypeEnabled = false;
	alwaysShowAddPhoneLegalText = false;
	requireAddPhoneLegalTextCheckbox = false;
	closeUpsell = var6;
	showWebpage = function(arg1) -- Line 158, Named "showWebpage"
	end;
}
local mergeProps_upvr = require(PhoneUpsell.Utils.mergeProps)
local React_upvr = require(Parent.React)
local PhoneVerificationUpsellState_upvr = require(PhoneUpsell.Components.PhoneVerificationUpsellState)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local IdentityProtocol_upvr = require(Parent.IdentityProtocol).IdentityProtocol
local GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr = require(PhoneUpsell.Utils.GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix)
local UserInputService_upvr = game:GetService("UserInputService")
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local EventStreamConstants_upvr = require(PhoneUpsell.DuplicateAnalytics.EventStreamConstants)
local debounce_upvr = require(PhoneUpsell.Utils.debounce)
local LoadingSpinner_upvr = require(Parent.UIBlox).App.Loading.LoadingSpinner
local GetFFlagPhoneUseParentSizeForScreenSize_upvr = require(PhoneUpsell.Flags.GetFFlagPhoneUseParentSizeForScreenSize)
local Roact_upvr = require(Parent.Roact)
local EntryView_upvr = require(PhoneUpsell.Components.EntryView)
local AddPhoneView_upvr = require(PhoneUpsell.Components.AddPhoneView)
local GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr = require(PhoneUpsell.Flags.GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell)
local VerifyPhoneView_upvr = require(PhoneUpsell.Components.VerifyPhoneView)
local PhoneVerificationStatusOverlay_upvr = require(PhoneUpsell.Components.PhoneVerificationStatusOverlay)
local SetPhoneNumber_upvr = require(PhoneUpsell.Thunks.SetPhoneNumber)
local VerifyPhoneCode_upvr = require(PhoneUpsell.Thunks.VerifyPhoneCode)
local ResendPhoneCode_upvr = require(PhoneUpsell.Thunks.ResendPhoneCode)
local SetIsPhoneVerified_upvr = require(Parent.ContactImporter).Actions.SetIsPhoneVerified
return require(Parent.RoactAppExperiment).connectUserLayer({GetFStringAndroidPhoneVerificationLayer_upvr(), GetFStringIOSPhoneVerificationLayer_upvr()}, function(arg1, arg2) -- Line 736
	--[[ Upvalues[2]:
		[1]: GetFStringAndroidPhoneVerificationLayer_upvr (readonly)
		[2]: GetFStringIOSPhoneVerificationLayer_upvr (readonly)
	]]
	local var263 = arg1[GetFStringAndroidPhoneVerificationLayer_upvr()]
	if not var263 then
		var263 = {}
	end
	local var264 = arg1[GetFStringIOSPhoneVerificationLayer_upvr()]
	if not var264 then
		var264 = {}
	end
	return {
		isAutofillPhoneNumberEnabled = var263.IsAutofillPhoneNumberEnabled;
		isAutofillSMSOtpEnabled = var263.IsAutofillSMSOtpEnabled;
		isOTPInputTypeEnabled = var264.IsAutofillSMSOtpEnabled;
		isPhoneNumberTextTypeEnabled = var264.IsAutofillPhoneNumberEnabled;
	}
end)(require(Parent.RoactServices).RoactServices.connect({
	networking = require(Parent.RoactServiceTags).RoactNetworking;
	authEventAnalytics = require(PhoneUpsell.DuplicateAnalytics.RoactAnalyticsAuthEvents);
})(require(Parent.RoactRodux).connect(function(arg1, arg2) -- Line 707
	return {
		countryCodeList = arg1.CountryCodeList;
	}
end, function(arg1) -- Line 711
	--[[ Upvalues[4]:
		[1]: SetPhoneNumber_upvr (readonly)
		[2]: VerifyPhoneCode_upvr (readonly)
		[3]: ResendPhoneCode_upvr (readonly)
		[4]: SetIsPhoneVerified_upvr (readonly)
	]]
	return {
		setPhoneNumber = function(arg1_41, arg2, arg3, arg4) -- Line 713, Named "setPhoneNumber"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPhoneNumber_upvr (copied, readonly)
			]]
			return arg1(SetPhoneNumber_upvr(arg1_41, arg2, arg3, arg4, nil))
		end;
		verifyPhoneCode = function(arg1_42, arg2) -- Line 716, Named "verifyPhoneCode"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: VerifyPhoneCode_upvr (copied, readonly)
			]]
			return arg1(VerifyPhoneCode_upvr(arg1_42, arg2))
		end;
		resendPhoneCode = function(arg1_43) -- Line 719, Named "resendPhoneCode"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ResendPhoneCode_upvr (copied, readonly)
			]]
			return arg1(ResendPhoneCode_upvr(arg1_43))
		end;
		setIsPhoneVerified = function(arg1_44) -- Line 722, Named "setIsPhoneVerified"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetIsPhoneVerified_upvr (copied, readonly)
			]]
			return arg1(SetIsPhoneVerified_upvr(arg1_44))
		end;
	}
end)(function(arg1) -- Line 161, Named "PhoneVerificationUpsellOverlay"
	--[[ Upvalues[20]:
		[1]: mergeProps_upvr (readonly)
		[2]: tbl_11_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: PhoneVerificationUpsellState_upvr (readonly)
		[5]: tbl_18_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: IdentityProtocol_upvr (readonly)
		[8]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (readonly)
		[9]: UserInputService_upvr (readonly)
		[10]: useSelector_upvr (readonly)
		[11]: EventStreamConstants_upvr (readonly)
		[12]: debounce_upvr (readonly)
		[13]: LoadingSpinner_upvr (readonly)
		[14]: GetFFlagPhoneUseParentSizeForScreenSize_upvr (readonly)
		[15]: Roact_upvr (readonly)
		[16]: EntryView_upvr (readonly)
		[17]: AddPhoneView_upvr (readonly)
		[18]: GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr (readonly)
		[19]: VerifyPhoneView_upvr (readonly)
		[20]: PhoneVerificationStatusOverlay_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var8_result1_upvr_2 = mergeProps_upvr(tbl_11_upvr, arg1)
	local var142 = React_upvr
	local var245
	if var8_result1_upvr_2.entryConfig then
		var142 = PhoneVerificationUpsellState_upvr.Entry
	else
		var142 = PhoneVerificationUpsellState_upvr.AddPhone
	end
	local any_useState_result1_20_upvr, any_useState_result2_17_upvr = var142.useState(var142)
	local any_useState_result1_26_upvr, any_useState_result2_9_upvr = React_upvr.useState("")
	local any_useState_result1_11_upvr, any_useState_result2_upvr_7 = React_upvr.useState(tbl_18_upvr)
	local any_useState_result1_4_upvr, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useState_result1_12, any_useState_result2_upvr_5 = React_upvr.useState("")
	local any_useState_result1_21_upvr, any_useState_result2_upvr_3 = React_upvr.useState("")
	local any_useState_result1, any_useState_result2_16_upvr = React_upvr.useState("")
	local any_useState_result1_25, any_useState_result2_10_upvr = React_upvr.useState("")
	local any_useState_result1_28, any_useState_result2 = React_upvr.useState(false)
	local any_useState_result1_27_upvr, any_useState_result2_19_upvr = React_upvr.useState(false)
	local any_useState_result1_22_upvr, any_useState_result2_11_upvr = React_upvr.useState(false)
	local any_useState_result1_19, any_useState_result2_2_upvr = React_upvr.useState(false)
	local any_useState_result1_6, any_useState_result2_15_upvr = React_upvr.useState(0)
	local any_useState_result1_2, any_useState_result2_upvr_6 = React_upvr.useState(Vector2.new(400, 400))
	local any_useRef_result1_upvr_2 = React_upvr.useRef(false)
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		verifyingKey = "Feature.VerificationUpsell.Label.Verifying";
		invalidPhoneFormatKey = "Feature.VerificationUpsell.Response.ErrorPhoneFormatInvalid";
		invalidPhoneNumberKey = "Feature.VerificationUpsell.Response.InvalidPhoneNumberError";
		invalidVerificationCodeKey = "Feature.VerificationUpsell.Message.InvalidSmsCode";
		tooManyAccountsKey = "Feature.VerificationUpsell.Response.PhoneHasTooManyAssociatedAccounts";
		tooManyAttemptsKey = "Feature.VerificationUpsell.Response.TooManyAttemptsTryAgainLater";
		genericErrorKey = "Feature.VerificationUpsell.Response.ErrorTryAgain";
	})
	React_upvr.useEffect(function() -- Line 194
		--[[ Upvalues[4]:
			[1]: any_useState_result1_4_upvr (readonly)
			[2]: var8_result1_upvr_2 (readonly)
			[3]: any_useState_result2_upvr_7 (readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
		]]
		if not any_useState_result1_4_upvr and var8_result1_upvr_2.countryCodeList then
			if 0 < #var8_result1_upvr_2.countryCodeList then
				for _, v in var8_result1_upvr_2.countryCodeList do
					if v.isDefault then
						any_useState_result2_upvr_7(v)
					end
				end
				any_useState_result2_upvr_2(true)
			end
		end
	end, {var8_result1_upvr_2.countryCodeList, any_useState_result1_4_upvr})
	local function _() -- Line 206
		--[[ Upvalues[7]:
			[1]: IdentityProtocol_upvr (copied, readonly)
			[2]: var8_result1_upvr_2 (readonly)
			[3]: any_useState_result1_20_upvr (readonly)
			[4]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
			[5]: any_useState_result1_11_upvr (readonly)
			[6]: tbl_18_upvr (copied, readonly)
			[7]: any_useState_result2_9_upvr (readonly)
		]]
		local default_upvr_10 = IdentityProtocol_upvr.default
		default_upvr_10:supportsGetPhoneNumber():andThen(function(arg1_22) -- Line 208
			--[[ Upvalues[7]:
				[1]: var8_result1_upvr_2 (copied, readonly)
				[2]: any_useState_result1_20_upvr (copied, readonly)
				[3]: default_upvr_10 (readonly)
				[4]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
				[5]: any_useState_result1_11_upvr (copied, readonly)
				[6]: tbl_18_upvr (copied, readonly)
				[7]: any_useState_result2_9_upvr (copied, readonly)
			]]
			print("PhoneVerification: Autofill phone number supported: {}!", arg1_22)
			if not arg1_22 then
			else
				var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "phoneAutofillEligible", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
				local any_getPhoneNumber_result1_6 = default_upvr_10:getPhoneNumber()
				if not any_getPhoneNumber_result1_6 then return end
				any_getPhoneNumber_result1_6:andThen(function(arg1_23) -- Line 224
					--[[ Upvalues[6]:
						[1]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
						[2]: any_useState_result1_11_upvr (copied, readonly)
						[3]: tbl_18_upvr (copied, readonly)
						[4]: var8_result1_upvr_2 (copied, readonly)
						[5]: any_useState_result1_20_upvr (copied, readonly)
						[6]: any_useState_result2_9_upvr (copied, readonly)
					]]
					if arg1_23 and arg1_23 ~= "" then
						local GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result1_2, GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result2_5 = GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr(arg1_23, any_useState_result1_11_upvr.prefix)
						if GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result1_2 == tbl_18_upvr.prefix then
							var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "phoneAutofillUSFound", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
						end
						any_useState_result2_9_upvr(GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result2_5)
						var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "phoneAutofillSuccess", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
					else
						var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "phoneAutofillNull", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
					end
				end)
			end
		end)
	end
	local function _() -- Line 260
		--[[ Upvalues[5]:
			[1]: IdentityProtocol_upvr (copied, readonly)
			[2]: var8_result1_upvr_2 (readonly)
			[3]: any_useState_result1_20_upvr (readonly)
			[4]: any_useState_result2_upvr_5 (readonly)
			[5]: any_useState_result2_upvr_3 (readonly)
		]]
		local default_upvr_6 = IdentityProtocol_upvr.default
		default_upvr_6:supportsGetSMSOTP():andThen(function(arg1_24) -- Line 262
			--[[ Upvalues[5]:
				[1]: var8_result1_upvr_2 (copied, readonly)
				[2]: any_useState_result1_20_upvr (copied, readonly)
				[3]: default_upvr_6 (readonly)
				[4]: any_useState_result2_upvr_5 (copied, readonly)
				[5]: any_useState_result2_upvr_3 (copied, readonly)
			]]
			print("PhoneVerification: Autofill OTP supported: {}!", arg1_24)
			if arg1_24 then
				var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "codeAutofillEligible", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
				local any_getSMSOTP_result1_3 = default_upvr_6:getSMSOTP()
				if any_getSMSOTP_result1_3 then
					any_getSMSOTP_result1_3:andThen(function(arg1_25) -- Line 274
						--[[ Upvalues[4]:
							[1]: any_useState_result2_upvr_5 (copied, readonly)
							[2]: any_useState_result2_upvr_3 (copied, readonly)
							[3]: var8_result1_upvr_2 (copied, readonly)
							[4]: any_useState_result1_20_upvr (copied, readonly)
						]]
						if arg1_25 and arg1_25 ~= "" then
							any_useState_result2_upvr_5(arg1_25)
							any_useState_result2_upvr_3(arg1_25)
							var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "codeAutofillSuccess", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
						end
					end)
				end
			end
		end)
	end
	React_upvr.useEffect(function() -- Line 292
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useState_result1_27_upvr (readonly)
		]]
		return function() -- Line 293
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr_2 (copied, readonly)
				[2]: any_useState_result1_27_upvr (copied, readonly)
			]]
			any_useRef_result1_upvr_2.current = any_useState_result1_27_upvr
		end
	end, {any_useState_result1_27_upvr})
	local var195_upvw
	React_upvr.useEffect(function() -- Line 298
		--[[ Upvalues[13]:
			[1]: var195_upvw (read and write)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: any_useState_result2_2_upvr (readonly)
			[4]: any_useState_result2_15_upvr (readonly)
			[5]: var8_result1_upvr_2 (readonly)
			[6]: PhoneVerificationUpsellState_upvr (copied, readonly)
			[7]: IdentityProtocol_upvr (copied, readonly)
			[8]: any_useState_result1_20_upvr (readonly)
			[9]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
			[10]: any_useState_result1_11_upvr (readonly)
			[11]: tbl_18_upvr (copied, readonly)
			[12]: any_useState_result2_9_upvr (readonly)
			[13]: any_useRef_result1_upvr_2 (readonly)
		]]
		var195_upvw = UserInputService_upvr:GetPropertyChangedSignal("OnScreenKeyboardVisible"):Connect(function() -- Line 300
			--[[ Upvalues[3]:
				[1]: any_useState_result2_2_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
				[3]: any_useState_result2_15_upvr (copied, readonly)
			]]
			any_useState_result2_2_upvr(UserInputService_upvr.OnScreenKeyboardVisible)
			local var197
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var197 = UserInputService_upvr.OnScreenKeyboardSize.Y
				return var197
			end
			if not UserInputService_upvr.OnScreenKeyboardVisible or not INLINED_2() then
				var197 = 0
			end
			any_useState_result2_15_upvr(var197)
		end)
		var8_result1_upvr_2.authEventAnalytics.reportModalShownWithSection(var8_result1_upvr_2.eventContext, var8_result1_upvr_2.origin, PhoneVerificationUpsellState_upvr.AddPhone)
		if var8_result1_upvr_2.isAutofillPhoneNumberEnabled then
			local default_upvr = IdentityProtocol_upvr.default
			default_upvr:supportsGetPhoneNumber():andThen(function(arg1_26) -- Line 208
				--[[ Upvalues[7]:
					[1]: var8_result1_upvr_2 (copied, readonly)
					[2]: any_useState_result1_20_upvr (copied, readonly)
					[3]: default_upvr (readonly)
					[4]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
					[5]: any_useState_result1_11_upvr (copied, readonly)
					[6]: tbl_18_upvr (copied, readonly)
					[7]: any_useState_result2_9_upvr (copied, readonly)
				]]
				print("PhoneVerification: Autofill phone number supported: {}!", arg1_26)
				if not arg1_26 then
				else
					var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "phoneAutofillEligible", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
					local any_getPhoneNumber_result1_5 = default_upvr:getPhoneNumber()
					if not any_getPhoneNumber_result1_5 then return end
					any_getPhoneNumber_result1_5:andThen(function(arg1_27) -- Line 224
						--[[ Upvalues[6]:
							[1]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
							[2]: any_useState_result1_11_upvr (copied, readonly)
							[3]: tbl_18_upvr (copied, readonly)
							[4]: var8_result1_upvr_2 (copied, readonly)
							[5]: any_useState_result1_20_upvr (copied, readonly)
							[6]: any_useState_result2_9_upvr (copied, readonly)
						]]
						if arg1_27 and arg1_27 ~= "" then
							local var13_result1_2, GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result2 = GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr(arg1_27, any_useState_result1_11_upvr.prefix)
							if var13_result1_2 == tbl_18_upvr.prefix then
								var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "phoneAutofillUSFound", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
							end
							any_useState_result2_9_upvr(GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result2)
							var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "phoneAutofillSuccess", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
						else
							var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "phoneAutofillNull", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
						end
					end)
				end
			end)
		end
		function default_upvr() -- Line 315
			--[[ Upvalues[3]:
				[1]: var195_upvw (copied, read and write)
				[2]: any_useRef_result1_upvr_2 (copied, readonly)
				[3]: var8_result1_upvr_2 (copied, readonly)
			]]
			if var195_upvw then
				var195_upvw:Disconnect()
			end
			var195_upvw = nil
			if not any_useRef_result1_upvr_2.current then
				var8_result1_upvr_2.onCancelled()
			end
		end
		return default_upvr
	end, {})
	local function var205(arg1_28) -- Line 326
		return arg1_28.ScreenSize
	end
	local function handleCloseClick() -- Line 330
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr_2 (readonly)
			[2]: any_useState_result1_20_upvr (readonly)
		]]
		var8_result1_upvr_2.authEventAnalytics.reportModalDismissedWithSection(var8_result1_upvr_2.eventContext, var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
		var8_result1_upvr_2.closeUpsell()
	end
	local function _(arg1_29) -- Line 339, Named "handlePhoneErrors"
		--[[ Upvalues[1]:
			[1]: useLocalization_upvr_result1_upvr (readonly)
		]]
		if arg1_29 == 2 then
			return useLocalization_upvr_result1_upvr.invalidPhoneFormatKey
		end
		if arg1_29 == 6 then
			return useLocalization_upvr_result1_upvr.tooManyAttemptsKey
		end
		if arg1_29 == 7 then
			return useLocalization_upvr_result1_upvr.invalidVerificationCodeKey
		end
		if arg1_29 == 8 then
			return useLocalization_upvr_result1_upvr.invalidPhoneNumberKey
		end
		if arg1_29 == 9 then
			return useLocalization_upvr_result1_upvr.tooManyAccountsKey
		end
		return useLocalization_upvr_result1_upvr.genericErrorKey
	end
	local function handleVerifyPhone_upvr() -- Line 416, Named "handleVerifyPhone"
		--[[ Upvalues[8]:
			[1]: any_useState_result2_11_upvr (readonly)
			[2]: var8_result1_upvr_2 (readonly)
			[3]: any_useState_result1_21_upvr (readonly)
			[4]: any_useState_result2_19_upvr (readonly)
			[5]: EventStreamConstants_upvr (copied, readonly)
			[6]: PhoneVerificationUpsellState_upvr (copied, readonly)
			[7]: any_useState_result2_10_upvr (readonly)
			[8]: useLocalization_upvr_result1_upvr (readonly)
		]]
		any_useState_result2_11_upvr(true)
		local any_verifyPhoneCode_result1 = var8_result1_upvr_2.verifyPhoneCode(var8_result1_upvr_2.networking, any_useState_result1_21_upvr)
		if any_verifyPhoneCode_result1 then
			any_verifyPhoneCode_result1:andThen(function() -- Line 421
				--[[ Upvalues[1]:
					[1]: any_useState_result2_19_upvr (copied, readonly)
				]]
				any_useState_result2_19_upvr(true)
			end):catch(function(arg1_33) -- Line 424
				--[[ Upvalues[6]:
					[1]: var8_result1_upvr_2 (copied, readonly)
					[2]: EventStreamConstants_upvr (copied, readonly)
					[3]: PhoneVerificationUpsellState_upvr (copied, readonly)
					[4]: any_useState_result2_10_upvr (copied, readonly)
					[5]: useLocalization_upvr_result1_upvr (copied, readonly)
					[6]: any_useState_result2_11_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
				if not arg1_33 then
					var8_result1_upvr_2.authEventAnalytics.reportModalShownWithSectionAndError(var8_result1_upvr_2.eventContext, EventStreamConstants_upvr.Field.ErrorMessage, var8_result1_upvr_2.origin, PhoneVerificationUpsellState_upvr.VerifyPhone, "")
					any_useState_result2_10_upvr(useLocalization_upvr_result1_upvr.genericErrorKey)
					-- KONSTANTWARNING: GOTO [88] #61
				end
				-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [28] 21. Error Block 28 start (CF ANALYSIS FAILED)
				var8_result1_upvr_2.authEventAnalytics.reportModalShownWithSectionAndError(var8_result1_upvr_2.eventContext, EventStreamConstants_upvr.Field.ErrorMessage, var8_result1_upvr_2.origin, PhoneVerificationUpsellState_upvr.VerifyPhone, arg1_33.ErrorCode)
				local ErrorCode_6 = arg1_33.ErrorCode
				if ErrorCode_6 == 2 then
				elseif ErrorCode_6 == 6 then
				elseif ErrorCode_6 == 7 then
				elseif ErrorCode_6 == 8 then
				elseif ErrorCode_6 == 9 then
				else
				end
				any_useState_result2_10_upvr(useLocalization_upvr_result1_upvr.genericErrorKey)
				any_useState_result2_11_upvr(false)
				-- KONSTANTERROR: [28] 21. Error Block 28 end (CF ANALYSIS FAILED)
			end)
		end
		var8_result1_upvr_2.authEventAnalytics.reportInteractWithActionAndSection(var8_result1_upvr_2.eventContext, "", "", var8_result1_upvr_2.origin, EventStreamConstants_upvr.Button.AutoSubmit, PhoneVerificationUpsellState_upvr.VerifyPhone)
	end
	local debounce_upvr_result1_upvr = debounce_upvr(function(arg1_38) -- Line 575
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_3 (readonly)
		]]
		any_useState_result2_upvr_3(arg1_38)
	end, 0.5)
	React_upvr.useEffect(function() -- Line 604
		--[[ Upvalues[2]:
			[1]: any_useState_result1_21_upvr (readonly)
			[2]: handleVerifyPhone_upvr (readonly)
		]]
		if string.len(any_useState_result1_21_upvr) == 6 then
			handleVerifyPhone_upvr()
		end
	end, {any_useState_result1_21_upvr})
	React_upvr.useEffect(function() -- Line 611
		--[[ Upvalues[3]:
			[1]: any_useState_result1_27_upvr (readonly)
			[2]: var8_result1_upvr_2 (readonly)
			[3]: PhoneVerificationUpsellState_upvr (copied, readonly)
		]]
		if any_useState_result1_27_upvr then
			var8_result1_upvr_2.setIsPhoneVerified({
				isPhoneVerified = true;
			})
			var8_result1_upvr_2.authEventAnalytics.reportModalShownWithSection(var8_result1_upvr_2.eventContext, var8_result1_upvr_2.origin, PhoneVerificationUpsellState_upvr.Success)
			var8_result1_upvr_2.onSuccess()
		end
	end, {any_useState_result1_27_upvr})
	local tbl_12 = {}
	var245 = 48
	tbl_12.size = UDim2.fromOffset(48, var245)
	var245 = 0.5
	tbl_12.position = UDim2.fromScale(0.5, var245)
	var245 = 0.5
	tbl_12.anchorPoint = Vector2.new(0.5, var245)
	tbl_12 = React_upvr
	local var243 = tbl_12
	if GetFFlagPhoneUseParentSizeForScreenSize_upvr() then
		var243 = "Frame"
	else
		var243 = React_upvr.Fragment
	end
	if GetFFlagPhoneUseParentSizeForScreenSize_upvr() then
		local tbl_9 = {
			BackgroundTransparency = 1;
		}
		var245 = 1
		tbl_9.Size = UDim2.new(var245, 0, 1, 0)
		var245 = Roact_upvr.Change
		function var245(arg1_40) -- Line 635
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_6 (readonly)
			]]
			any_useState_result2_upvr_6(arg1_40.AbsoluteSize)
		end
		tbl_9[var245.AbsoluteSize] = var245
	else
	end
	local module_2 = {}
	var245 = false
	if any_useState_result1_20_upvr == PhoneVerificationUpsellState_upvr.Entry then
		var245 = var8_result1_upvr_2.entryConfig
		local var247
		if var245 then
			var245 = React_upvr.createElement
			local tbl_13 = {}
			if GetFFlagPhoneUseParentSizeForScreenSize_upvr() then
				var247 = any_useState_result1_2
			else
				var247 = useSelector_upvr(var205)
			end
			tbl_13.screenSize = var247
			tbl_13.onClose = handleCloseClick
			var247 = var8_result1_upvr_2.entryConfig.titleKey
			tbl_13.titleKey = var247
			var247 = var8_result1_upvr_2.entryConfig.descriptionKey
			tbl_13.descriptionKey = var247
			var247 = var8_result1_upvr_2.entryConfig.buttonKey
			tbl_13.buttonKey = var247
			function tbl_13.onButtonClick() -- Line 504, Named "proceedToAddPhone"
				--[[ Upvalues[4]:
					[1]: any_useState_result2_17_upvr (readonly)
					[2]: PhoneVerificationUpsellState_upvr (copied, readonly)
					[3]: var8_result1_upvr_2 (readonly)
					[4]: EventStreamConstants_upvr (copied, readonly)
				]]
				any_useState_result2_17_upvr(PhoneVerificationUpsellState_upvr.AddPhone)
				var8_result1_upvr_2.authEventAnalytics.reportInteractWithActionAndSection(var8_result1_upvr_2.eventContext, "", "", var8_result1_upvr_2.origin, EventStreamConstants_upvr.Button.Continue, PhoneVerificationUpsellState_upvr.Entry)
			end
			var247 = var8_result1_upvr_2.entryConfig.extraButtonConfig.extraButtonKey
			tbl_13.extraButtonKey = var247
			var247 = var8_result1_upvr_2.entryConfig.extraButtonConfig.onExtraButtonClick
			tbl_13.onExtraButtonClick = var247
			var245 = var245(EntryView_upvr, tbl_13)
		end
	end
	module_2.Entry = var245
	var245 = false
	if any_useState_result1_20_upvr == PhoneVerificationUpsellState_upvr.AddPhone then
		var245 = React_upvr.createElement
		local tbl_6 = {}
		if GetFFlagPhoneUseParentSizeForScreenSize_upvr() then
			var247 = any_useState_result1_2
		else
			var247 = useSelector_upvr(var205)
		end
		tbl_6.screenSize = var247
		tbl_6.countryCode = any_useState_result1_11_upvr
		tbl_6.setCountryCode = any_useState_result2_upvr_7
		tbl_6.phoneNumber = any_useState_result1_26_upvr
		tbl_6.errorMessage = any_useState_result1
		tbl_6.isDisabled = any_useState_result1_22_upvr
		function tbl_6.onPhoneNumberTextChange(arg1_35) -- Line 543
			--[[ Upvalues[3]:
				[1]: any_useState_result1_22_upvr (readonly)
				[2]: any_useState_result2_16_upvr (readonly)
				[3]: any_useState_result2_9_upvr (readonly)
			]]
			if not any_useState_result1_22_upvr then
				any_useState_result2_16_upvr("")
				any_useState_result2_9_upvr(arg1_35.Text)
			end
		end
		function tbl_6.onSetPhoneNumber() -- Line 355, Named "handleSetPhone"
			--[[ Upvalues[13]:
				[1]: any_useState_result2_11_upvr (readonly)
				[2]: var8_result1_upvr_2 (readonly)
				[3]: any_useState_result1_11_upvr (readonly)
				[4]: any_useState_result1_26_upvr (readonly)
				[5]: any_useState_result2_17_upvr (readonly)
				[6]: PhoneVerificationUpsellState_upvr (copied, readonly)
				[7]: IdentityProtocol_upvr (copied, readonly)
				[8]: any_useState_result1_20_upvr (readonly)
				[9]: any_useState_result2_upvr_5 (readonly)
				[10]: any_useState_result2_upvr_3 (readonly)
				[11]: EventStreamConstants_upvr (copied, readonly)
				[12]: any_useState_result2_16_upvr (readonly)
				[13]: useLocalization_upvr_result1_upvr (readonly)
			]]
			any_useState_result2_11_upvr(true)
			local any_setPhoneNumber_result1_2 = var8_result1_upvr_2.setPhoneNumber(var8_result1_upvr_2.networking, any_useState_result1_11_upvr.code, any_useState_result1_11_upvr.prefix, any_useState_result1_26_upvr)
			if any_setPhoneNumber_result1_2 then
				any_setPhoneNumber_result1_2:andThen(function() -- Line 360
					--[[ Upvalues[8]:
						[1]: any_useState_result2_17_upvr (copied, readonly)
						[2]: PhoneVerificationUpsellState_upvr (copied, readonly)
						[3]: any_useState_result2_11_upvr (copied, readonly)
						[4]: var8_result1_upvr_2 (copied, readonly)
						[5]: IdentityProtocol_upvr (copied, readonly)
						[6]: any_useState_result1_20_upvr (copied, readonly)
						[7]: any_useState_result2_upvr_5 (copied, readonly)
						[8]: any_useState_result2_upvr_3 (copied, readonly)
					]]
					any_useState_result2_17_upvr(PhoneVerificationUpsellState_upvr.VerifyPhone)
					any_useState_result2_11_upvr(false)
					var8_result1_upvr_2.authEventAnalytics.reportModalShownWithSection(var8_result1_upvr_2.eventContext, var8_result1_upvr_2.origin, PhoneVerificationUpsellState_upvr.VerifyPhone)
					if var8_result1_upvr_2.isAutofillSMSOtpEnabled then
						local default_upvr_8 = IdentityProtocol_upvr.default
						default_upvr_8:supportsGetSMSOTP():andThen(function(arg1_30) -- Line 262
							--[[ Upvalues[5]:
								[1]: var8_result1_upvr_2 (copied, readonly)
								[2]: any_useState_result1_20_upvr (copied, readonly)
								[3]: default_upvr_8 (readonly)
								[4]: any_useState_result2_upvr_5 (copied, readonly)
								[5]: any_useState_result2_upvr_3 (copied, readonly)
							]]
							print("PhoneVerification: Autofill OTP supported: {}!", arg1_30)
							if arg1_30 then
								var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "codeAutofillEligible", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
								local any_getSMSOTP_result1_4 = default_upvr_8:getSMSOTP()
								if any_getSMSOTP_result1_4 then
									any_getSMSOTP_result1_4:andThen(function(arg1_31) -- Line 274
										--[[ Upvalues[4]:
											[1]: any_useState_result2_upvr_5 (copied, readonly)
											[2]: any_useState_result2_upvr_3 (copied, readonly)
											[3]: var8_result1_upvr_2 (copied, readonly)
											[4]: any_useState_result1_20_upvr (copied, readonly)
										]]
										if arg1_31 and arg1_31 ~= "" then
											any_useState_result2_upvr_5(arg1_31)
											any_useState_result2_upvr_3(arg1_31)
											var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "codeAutofillSuccess", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
										end
									end)
								end
							end
						end)
					end
				end):catch(function(arg1_32) -- Line 374
					--[[ Upvalues[6]:
						[1]: var8_result1_upvr_2 (copied, readonly)
						[2]: EventStreamConstants_upvr (copied, readonly)
						[3]: PhoneVerificationUpsellState_upvr (copied, readonly)
						[4]: any_useState_result2_16_upvr (copied, readonly)
						[5]: useLocalization_upvr_result1_upvr (copied, readonly)
						[6]: any_useState_result2_11_upvr (copied, readonly)
					]]
					-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
					if not arg1_32 then
						var8_result1_upvr_2.authEventAnalytics.reportModalShownWithSectionAndError(var8_result1_upvr_2.eventContext, EventStreamConstants_upvr.Field.ErrorMessage, var8_result1_upvr_2.origin, PhoneVerificationUpsellState_upvr.AddPhone, "")
						any_useState_result2_16_upvr(useLocalization_upvr_result1_upvr.genericErrorKey)
						-- KONSTANTWARNING: GOTO [118] #82
					end
					-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [28] 21. Error Block 34 start (CF ANALYSIS FAILED)
					local var213
					if arg1_32.PhoneRegexFailed then
						var213 = var8_result1_upvr_2.authEventAnalytics
						var213 = var8_result1_upvr_2.eventContext
						var213.reportModalShownWithSectionAndError(var213, EventStreamConstants_upvr.Field.ErrorMessage, var8_result1_upvr_2.origin, PhoneVerificationUpsellState_upvr.AddPhone, "")
						var213 = useLocalization_upvr_result1_upvr.invalidPhoneFormatKey
						any_useState_result2_16_upvr(var213)
					else
						var213 = var8_result1_upvr_2.authEventAnalytics
						var213 = var8_result1_upvr_2.eventContext
						var213.reportModalShownWithSectionAndError(var213, EventStreamConstants_upvr.Field.ErrorMessage, var8_result1_upvr_2.origin, PhoneVerificationUpsellState_upvr.AddPhone, arg1_32.ErrorCode)
						local ErrorCode = arg1_32.ErrorCode
						if ErrorCode == 2 then
							var213 = useLocalization_upvr_result1_upvr.invalidPhoneFormatKey
						elseif ErrorCode == 6 then
							var213 = useLocalization_upvr_result1_upvr.tooManyAttemptsKey
						elseif ErrorCode == 7 then
							var213 = useLocalization_upvr_result1_upvr.invalidVerificationCodeKey
						elseif ErrorCode == 8 then
							var213 = useLocalization_upvr_result1_upvr.invalidPhoneNumberKey
						elseif ErrorCode == 9 then
							var213 = useLocalization_upvr_result1_upvr.tooManyAccountsKey
						else
							var213 = useLocalization_upvr_result1_upvr.genericErrorKey
						end
						any_useState_result2_16_upvr(var213)
					end
					any_useState_result2_11_upvr(false)
					-- KONSTANTERROR: [28] 21. Error Block 34 end (CF ANALYSIS FAILED)
				end)
			end
			var8_result1_upvr_2.authEventAnalytics.reportInteractWithActionAndSection(var8_result1_upvr_2.eventContext, "", "", var8_result1_upvr_2.origin, EventStreamConstants_upvr.Button.Continue, PhoneVerificationUpsellState_upvr.AddPhone)
		end
		tbl_6.onClose = handleCloseClick
		function tbl_6.onTermsOfUseClick() -- Line 516, Named "navigateToSMSTerms"
			--[[ Upvalues[4]:
				[1]: any_useState_result1_22_upvr (readonly)
				[2]: var8_result1_upvr_2 (readonly)
				[3]: EventStreamConstants_upvr (copied, readonly)
				[4]: any_useState_result1_20_upvr (readonly)
			]]
			if not any_useState_result1_22_upvr then
				var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, EventStreamConstants_upvr.Field.TermsOfService, "", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
				var8_result1_upvr_2.showWebpage("https://en.help.roblox.com/hc/articles/9483830673556-Roblox-SMS-Terms-of-Service")
			end
		end
		function tbl_6.onPrivacyPolicyClick() -- Line 529, Named "navigateToPrivacy"
			--[[ Upvalues[4]:
				[1]: any_useState_result1_22_upvr (readonly)
				[2]: var8_result1_upvr_2 (readonly)
				[3]: EventStreamConstants_upvr (copied, readonly)
				[4]: any_useState_result1_20_upvr (readonly)
			]]
			if not any_useState_result1_22_upvr then
				var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, EventStreamConstants_upvr.Field.PrivacyPolicy, "", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
				var8_result1_upvr_2.showWebpage("https://en.help.roblox.com/hc/articles/115004630823")
			end
		end
		function tbl_6.onPhoneInputFocus() -- Line 561
			--[[ Upvalues[9]:
				[1]: var8_result1_upvr_2 (readonly)
				[2]: EventStreamConstants_upvr (copied, readonly)
				[3]: PhoneVerificationUpsellState_upvr (copied, readonly)
				[4]: IdentityProtocol_upvr (copied, readonly)
				[5]: any_useState_result1_20_upvr (readonly)
				[6]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
				[7]: any_useState_result1_11_upvr (readonly)
				[8]: tbl_18_upvr (copied, readonly)
				[9]: any_useState_result2_9_upvr (readonly)
			]]
			var8_result1_upvr_2.authEventAnalytics.reportInteractWithActionAndSection(var8_result1_upvr_2.eventContext, EventStreamConstants_upvr.Field.PhoneNumber, EventStreamConstants_upvr.ActionType.Focus, var8_result1_upvr_2.origin, "", PhoneVerificationUpsellState_upvr.AddPhone)
			if not var8_result1_upvr_2.shouldAutofillAndroidPhoneNumberAtLaunch then
				local default_upvr_5 = IdentityProtocol_upvr.default
				default_upvr_5:supportsGetPhoneNumber():andThen(function(arg1_36) -- Line 208
					--[[ Upvalues[7]:
						[1]: var8_result1_upvr_2 (copied, readonly)
						[2]: any_useState_result1_20_upvr (copied, readonly)
						[3]: default_upvr_5 (readonly)
						[4]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
						[5]: any_useState_result1_11_upvr (copied, readonly)
						[6]: tbl_18_upvr (copied, readonly)
						[7]: any_useState_result2_9_upvr (copied, readonly)
					]]
					print("PhoneVerification: Autofill phone number supported: {}!", arg1_36)
					if not arg1_36 then
					else
						var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "phoneAutofillEligible", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
						local any_getPhoneNumber_result1_4 = default_upvr_5:getPhoneNumber()
						if not any_getPhoneNumber_result1_4 then return end
						any_getPhoneNumber_result1_4:andThen(function(arg1_37) -- Line 224
							--[[ Upvalues[6]:
								[1]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
								[2]: any_useState_result1_11_upvr (copied, readonly)
								[3]: tbl_18_upvr (copied, readonly)
								[4]: var8_result1_upvr_2 (copied, readonly)
								[5]: any_useState_result1_20_upvr (copied, readonly)
								[6]: any_useState_result2_9_upvr (copied, readonly)
							]]
							if arg1_37 and arg1_37 ~= "" then
								local GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result1_3, GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result2_3 = GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr(arg1_37, any_useState_result1_11_upvr.prefix)
								if GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result1_3 == tbl_18_upvr.prefix then
									var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "phoneAutofillUSFound", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
								end
								any_useState_result2_9_upvr(GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result2_3)
								var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "phoneAutofillSuccess", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
							else
								var8_result1_upvr_2.authEventAnalytics.reportModalActionWithSection(var8_result1_upvr_2.eventContext, "phoneAutofillNull", "autofill", var8_result1_upvr_2.origin, any_useState_result1_20_upvr)
							end
						end)
					end
				end)
			end
		end
		function tbl_6.onCountryCodeSelectorClick() -- Line 550
			--[[ Upvalues[3]:
				[1]: var8_result1_upvr_2 (readonly)
				[2]: EventStreamConstants_upvr (copied, readonly)
				[3]: PhoneVerificationUpsellState_upvr (copied, readonly)
			]]
			var8_result1_upvr_2.authEventAnalytics.reportInteractWithActionAndSection(var8_result1_upvr_2.eventContext, EventStreamConstants_upvr.Field.CountryPrefix, EventStreamConstants_upvr.ActionType.Focus, var8_result1_upvr_2.origin, "", PhoneVerificationUpsellState_upvr.AddPhone)
		end
		tbl_6.isKeyboardShowing = any_useState_result1_19
		tbl_6.keyboardHeight = any_useState_result1_6
		var247 = GetFFlagLuaUsePhoneNumberTextTypeForPhoneUpsell_upvr()
		if var247 then
			var247 = var8_result1_upvr_2.isPhoneNumberTextTypeEnabled
		end
		tbl_6.usePhoneNumberTextType = var247
		tbl_6.titleKey = var8_result1_upvr_2.addPhoneTitleKey
		tbl_6.descriptionKey = var8_result1_upvr_2.addPhoneDescriptionKey
		tbl_6.buttonKey = var8_result1_upvr_2.addPhoneButtonKey
		tbl_6.legalTextKey = var8_result1_upvr_2.addPhoneLegalTextKey
		tbl_6.extraButtonKey = var8_result1_upvr_2.extraButtonTextKey
		tbl_6.onExtraButtonClick = var8_result1_upvr_2.onExtraButtonClick
		tbl_6.alwaysShowLegalText = var8_result1_upvr_2.alwaysShowAddPhoneLegalText
		tbl_6.requireLegalTextCheckbox = var8_result1_upvr_2.requireAddPhoneLegalTextCheckbox
		var245 = var245(AddPhoneView_upvr, tbl_6)
	end
	module_2.AddPhone = var245
	if any_useState_result1_20_upvr == PhoneVerificationUpsellState_upvr.VerifyPhone then
		local tbl = {}
		if GetFFlagPhoneUseParentSizeForScreenSize_upvr() then
		else
		end
		tbl.screenSize = useSelector_upvr(var205)
		tbl.phoneNumber = any_useState_result1_26_upvr
		tbl.prefix = any_useState_result1_11_upvr.prefix
		tbl.code = any_useState_result1_12
		tbl.errorMessage = any_useState_result1_25
		function tbl.onCodeTextChange(arg1_39) -- Line 579
			--[[ Upvalues[3]:
				[1]: any_useState_result2_10_upvr (readonly)
				[2]: any_useState_result2_upvr_5 (readonly)
				[3]: debounce_upvr_result1_upvr (readonly)
			]]
			if string.len(arg1_39.Text) <= 6 then
				any_useState_result2_10_upvr("")
			end
			local string_sub_result1 = string.sub(arg1_39.Text, 1, 6)
			any_useState_result2_upvr_5(string_sub_result1)
			debounce_upvr_result1_upvr(string_sub_result1)
		end
		function tbl.onResendPhoneCode() -- Line 457, Named "handleResendCode"
			--[[ Upvalues[5]:
				[1]: var8_result1_upvr_2 (readonly)
				[2]: EventStreamConstants_upvr (copied, readonly)
				[3]: PhoneVerificationUpsellState_upvr (copied, readonly)
				[4]: any_useState_result2_10_upvr (readonly)
				[5]: useLocalization_upvr_result1_upvr (readonly)
			]]
			local any_resendPhoneCode_result1_2 = var8_result1_upvr_2.resendPhoneCode(var8_result1_upvr_2.networking)
			if any_resendPhoneCode_result1_2 then
				any_resendPhoneCode_result1_2:andThen(function() -- Line 460
				end):catch(function(arg1_34) -- Line 460
					--[[ Upvalues[5]:
						[1]: var8_result1_upvr_2 (copied, readonly)
						[2]: EventStreamConstants_upvr (copied, readonly)
						[3]: PhoneVerificationUpsellState_upvr (copied, readonly)
						[4]: any_useState_result2_10_upvr (copied, readonly)
						[5]: useLocalization_upvr_result1_upvr (copied, readonly)
					]]
					-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
					if not arg1_34 then
						var8_result1_upvr_2.authEventAnalytics.reportModalShownWithSectionAndError(var8_result1_upvr_2.eventContext, EventStreamConstants_upvr.Field.ErrorMessage, var8_result1_upvr_2.origin, PhoneVerificationUpsellState_upvr.VerifyPhone, "")
						any_useState_result2_10_upvr(useLocalization_upvr_result1_upvr.genericErrorKey)
						return
					end
					var8_result1_upvr_2.authEventAnalytics.reportModalShownWithSectionAndError(var8_result1_upvr_2.eventContext, EventStreamConstants_upvr.Field.ErrorMessage, var8_result1_upvr_2.origin, PhoneVerificationUpsellState_upvr.VerifyPhone, arg1_34.ErrorCode)
					local ErrorCode_5 = arg1_34.ErrorCode
					if ErrorCode_5 == 2 then
						-- KONSTANTWARNING: GOTO [87] #60
					end
					-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [59] 41. Error Block 22 start (CF ANALYSIS FAILED)
					if ErrorCode_5 == 6 then
						-- KONSTANTWARNING: GOTO [87] #60
					end
					-- KONSTANTERROR: [59] 41. Error Block 22 end (CF ANALYSIS FAILED)
				end)
			end
			var8_result1_upvr_2.authEventAnalytics.reportInteractWithActionAndSection(var8_result1_upvr_2.eventContext, "", "", var8_result1_upvr_2.origin, EventStreamConstants_upvr.Button.ResendCode, PhoneVerificationUpsellState_upvr.VerifyPhone)
		end
		tbl.onClose = handleCloseClick
		function tbl.returnToAddPhone() -- Line 492
			--[[ Upvalues[4]:
				[1]: any_useState_result2_17_upvr (readonly)
				[2]: PhoneVerificationUpsellState_upvr (copied, readonly)
				[3]: var8_result1_upvr_2 (readonly)
				[4]: EventStreamConstants_upvr (copied, readonly)
			]]
			any_useState_result2_17_upvr(PhoneVerificationUpsellState_upvr.AddPhone)
			var8_result1_upvr_2.authEventAnalytics.reportInteractWithActionAndSection(var8_result1_upvr_2.eventContext, "", "", var8_result1_upvr_2.origin, EventStreamConstants_upvr.Button.ChangePhoneNumber, PhoneVerificationUpsellState_upvr.VerifyPhone)
		end
		function tbl.onCodeInputFocus() -- Line 592
			--[[ Upvalues[3]:
				[1]: var8_result1_upvr_2 (readonly)
				[2]: EventStreamConstants_upvr (copied, readonly)
				[3]: PhoneVerificationUpsellState_upvr (copied, readonly)
			]]
			var8_result1_upvr_2.authEventAnalytics.reportInteractWithActionAndSection(var8_result1_upvr_2.eventContext, EventStreamConstants_upvr.Field.VerificationCode, EventStreamConstants_upvr.ActionType.Focus, var8_result1_upvr_2.origin, "", PhoneVerificationUpsellState_upvr.VerifyPhone)
		end
		tbl.isKeyboardShowing = any_useState_result1_19
		tbl.keyboardHeight = any_useState_result1_6
		tbl.useOTPInputType = var8_result1_upvr_2.isOTPInputTypeEnabled
		tbl.extraButtonKey = var8_result1_upvr_2.verifyPhoneExtraButtonKey
		tbl.onExtraButtonClick = var8_result1_upvr_2.onVerifyPhoneExtraButtonClick
	end
	module_2.VerifyPhone = React_upvr.createElement(VerifyPhoneView_upvr, tbl)
	if any_useState_result1_28 then
	end
	module_2.LoadingOverlay = React_upvr.createElement(PhoneVerificationStatusOverlay_upvr, {
		image = React_upvr.createElement(LoadingSpinner_upvr, tbl_12);
		text = useLocalization_upvr_result1_upvr.verifyingKey;
	})
	return var243.createElement(var243, nil, module_2)
end)))