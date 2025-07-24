-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:37
-- Luau version 6, Types version 3
-- Time taken: 0.014158 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local tbl_upvr = {
	name = "United States";
	code = "US";
	prefix = '1';
	localizedName = "United States";
}
local function var4() -- Line 114
end
local tbl_upvr_2 = {
	onSuccess = var4;
	onFailure = var4;
	onCancelled = var4;
	origin = "";
	eventContext = "";
	addPhoneTitleKey = "Feature.VerificationUpsell.Action.AddPhone";
	addPhoneDescriptionKey = "Feature.VerificationUpsell.Description.VerificationCodeSmsFeesMayApply";
	extraButtonTextKey = "";
	onExtraButtonClick = var4;
	shouldAutofillAndroidPhoneNumberAtLaunch = false;
	alwaysShowAddPhoneLegalText = false;
	requireAddPhoneLegalTextCheckbox = false;
	closeUpsell = var4;
	showWebpage = function(arg1) -- Line 130, Named "showWebpage"
	end;
}
local mergeProps_upvr = require(PhoneUpsell.Utils.mergeProps)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local SetPhoneNumber_upvr = require(PhoneUpsell.Thunks.SetPhoneNumber)
local VerifyPhoneCode_upvr = require(PhoneUpsell.Thunks.VerifyPhoneCode)
local ResendPhoneCode_upvr = require(PhoneUpsell.Thunks.ResendPhoneCode)
local SetIsPhoneVerified_upvr = require(Parent.ContactImporter).Actions.SetIsPhoneVerified
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local RoactAnalyticsAuthEvents_upvr = require(PhoneUpsell.DuplicateAnalytics.RoactAnalyticsAuthEvents)
local useUserExperiment_upvr = require(Parent.RoactAppExperiment).useUserExperiment
local GetFStringAndroidPhoneVerificationLayer_upvr = require(Parent.SharedFlags).GetFStringAndroidPhoneVerificationLayer
local GetFStringIOSPhoneVerificationLayer_upvr = require(Parent.SharedFlags).GetFStringIOSPhoneVerificationLayer
local React_upvr = require(Parent.React)
local PhoneVerificationUpsellState_upvr = require(PhoneUpsell.Components.PhoneVerificationUpsellState)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local IdentityProtocol_upvr = require(Parent.IdentityProtocol).IdentityProtocol
local GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr = require(PhoneUpsell.Utils.GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix)
local UserInputService_upvr = game:GetService("UserInputService")
local GetFFlagAddMorePhoneUpsellEvents_upvr = require(Parent.SharedFlags).GetFFlagAddMorePhoneUpsellEvents
local EventStreamConstants_upvr = require(PhoneUpsell.DuplicateAnalytics.EventStreamConstants)
local Constants_upvr = require(PhoneUpsell.Constants)
local debounce_upvr = require(PhoneUpsell.Utils.debounce)
local GetFFlagPhoneUseParentSizeForScreenSize_upvr = require(PhoneUpsell.Flags.GetFFlagPhoneUseParentSizeForScreenSize)
return function(arg1) -- Line 133, Named "usePhoneVerificationUpsellProps"
	--[[ Upvalues[26]:
		[1]: mergeProps_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: SetPhoneNumber_upvr (readonly)
		[6]: VerifyPhoneCode_upvr (readonly)
		[7]: ResendPhoneCode_upvr (readonly)
		[8]: SetIsPhoneVerified_upvr (readonly)
		[9]: useRoactService_upvr (readonly)
		[10]: RoactNetworking_upvr (readonly)
		[11]: RoactAnalyticsAuthEvents_upvr (readonly)
		[12]: useUserExperiment_upvr (readonly)
		[13]: GetFStringAndroidPhoneVerificationLayer_upvr (readonly)
		[14]: GetFStringIOSPhoneVerificationLayer_upvr (readonly)
		[15]: React_upvr (readonly)
		[16]: PhoneVerificationUpsellState_upvr (readonly)
		[17]: tbl_upvr (readonly)
		[18]: useLocalization_upvr (readonly)
		[19]: IdentityProtocol_upvr (readonly)
		[20]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (readonly)
		[21]: UserInputService_upvr (readonly)
		[22]: GetFFlagAddMorePhoneUpsellEvents_upvr (readonly)
		[23]: EventStreamConstants_upvr (readonly)
		[24]: Constants_upvr (readonly)
		[25]: debounce_upvr (readonly)
		[26]: GetFFlagPhoneUseParentSizeForScreenSize_upvr (readonly)
	]]
	local mergeProps_upvr_result1_upvr = mergeProps_upvr(tbl_upvr_2, arg1)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 136
		return arg1_2.CountryCodeList
	end)
	local var8_result1_upvr = useDispatch_upvr()
	local function _(arg1_3, arg2, arg3, arg4) -- Line 141
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: SetPhoneNumber_upvr (copied, readonly)
		]]
		return var8_result1_upvr(SetPhoneNumber_upvr(arg1_3, arg2, arg3, arg4, nil))
	end
	local function _(arg1_4, arg2) -- Line 144
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: VerifyPhoneCode_upvr (copied, readonly)
		]]
		return var8_result1_upvr(VerifyPhoneCode_upvr(arg1_4, arg2))
	end
	local function _(arg1_5) -- Line 147
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: ResendPhoneCode_upvr (copied, readonly)
		]]
		return var8_result1_upvr(ResendPhoneCode_upvr(arg1_5))
	end
	local function _(arg1_6) -- Line 150
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: SetIsPhoneVerified_upvr (copied, readonly)
		]]
		return var8_result1_upvr(SetIsPhoneVerified_upvr(arg1_6))
	end
	local var13_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	local var13_result1_upvr_2 = useRoactService_upvr(RoactAnalyticsAuthEvents_upvr)
	local var16_result1_upvr, useUserExperiment_upvr_result2_upvr, var16_result3, useUserExperiment_upvr_result4 = useUserExperiment_upvr({GetFStringAndroidPhoneVerificationLayer_upvr(), GetFStringIOSPhoneVerificationLayer_upvr()}, function(arg1_7) -- Line 159
		--[[ Upvalues[2]:
			[1]: GetFStringAndroidPhoneVerificationLayer_upvr (copied, readonly)
			[2]: GetFStringIOSPhoneVerificationLayer_upvr (copied, readonly)
		]]
		local var42 = arg1_7[GetFStringAndroidPhoneVerificationLayer_upvr()]
		if not var42 then
			var42 = {}
		end
		local var43 = arg1_7[GetFStringIOSPhoneVerificationLayer_upvr()]
		if not var43 then
			var43 = {}
		end
		return var42.IsAutofillPhoneNumberEnabled, var42.IsAutofillSMSOtpEnabled, var43.IsAutofillSMSOtpEnabled, var43.IsAutofillPhoneNumberEnabled
	end)
	local var48 = React_upvr
	if mergeProps_upvr_result1_upvr.entryConfig then
		var48 = PhoneVerificationUpsellState_upvr.Entry
	else
		var48 = PhoneVerificationUpsellState_upvr.AddPhone
	end
	local any_useState_result1_upvr, any_useState_result2_7_upvr = var48.useState(var48)
	local any_useState_result1_upvr_2, any_useState_result2_9_upvr = React_upvr.useState("")
	local any_useState_result1_5_upvr, any_useState_result2_upvr = React_upvr.useState(tbl_upvr)
	local any_useState_result1_8_upvr, any_useState_result2_3_upvr = React_upvr.useState(false)
	local any_useState_result1_11, any_useState_result2_4_upvr = React_upvr.useState("")
	local any_useState_result1_2_upvr, any_useState_result2_8_upvr = React_upvr.useState("")
	local any_useState_result1_6, any_useState_result2_upvr_2 = React_upvr.useState("")
	local any_useState_result1_9, any_useState_result2_upvr_3 = React_upvr.useState("")
	local any_useState_result1, _ = React_upvr.useState(false)
	local any_useState_result1_3_upvr, any_useState_result2_10_upvr = React_upvr.useState(false)
	local any_useState_result1_7_upvr, any_useState_result2_2_upvr = React_upvr.useState(false)
	local any_useState_result1_10, any_useState_result2_5_upvr = React_upvr.useState(false)
	local any_useState_result1_4, any_useState_result2_6_upvr = React_upvr.useState(0)
	local any_useState_result1_12, any_useState_result2 = React_upvr.useState(Vector2.new(400, 400))
	local any_useRef_result1_upvr = React_upvr.useRef(false)
	local var21_result1_upvr = useLocalization_upvr({
		verifyingKey = "Feature.VerificationUpsell.Label.Verifying";
		invalidPhoneFormatKey = "Feature.VerificationUpsell.Response.ErrorPhoneFormatInvalid";
		invalidPhoneNumberKey = "Feature.VerificationUpsell.Response.InvalidPhoneNumberError";
		invalidVerificationCodeKey = "Feature.VerificationUpsell.Message.InvalidSmsCode";
		tooManyAccountsKey = "Feature.VerificationUpsell.Response.PhoneHasTooManyAssociatedAccounts";
		tooManyAttemptsKey = "Feature.VerificationUpsell.Response.TooManyAttemptsTryAgainLater";
		genericErrorKey = "Feature.VerificationUpsell.Response.ErrorTryAgain";
	})
	React_upvr.useEffect(function() -- Line 200
		--[[ Upvalues[4]:
			[1]: any_useState_result1_8_upvr (readonly)
			[2]: useSelector_upvr_result1_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: any_useState_result2_3_upvr (readonly)
		]]
		if not any_useState_result1_8_upvr and useSelector_upvr_result1_upvr and 0 < #useSelector_upvr_result1_upvr then
			for _, v in useSelector_upvr_result1_upvr do
				if v.isDefault then
					any_useState_result2_upvr(v)
				end
			end
			any_useState_result2_3_upvr(true)
		end
	end, {useSelector_upvr_result1_upvr, any_useState_result1_8_upvr})
	local function _() -- Line 212
		--[[ Upvalues[8]:
			[1]: IdentityProtocol_upvr (copied, readonly)
			[2]: var13_result1_upvr_2 (readonly)
			[3]: mergeProps_upvr_result1_upvr (readonly)
			[4]: any_useState_result1_upvr (readonly)
			[5]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
			[6]: any_useState_result1_5_upvr (readonly)
			[7]: tbl_upvr (copied, readonly)
			[8]: any_useState_result2_9_upvr (readonly)
		]]
		local default_upvr_4 = IdentityProtocol_upvr.default
		default_upvr_4:supportsGetPhoneNumber():andThen(function(arg1_8) -- Line 214
			--[[ Upvalues[8]:
				[1]: var13_result1_upvr_2 (copied, readonly)
				[2]: mergeProps_upvr_result1_upvr (copied, readonly)
				[3]: any_useState_result1_upvr (copied, readonly)
				[4]: default_upvr_4 (readonly)
				[5]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
				[6]: any_useState_result1_5_upvr (copied, readonly)
				[7]: tbl_upvr (copied, readonly)
				[8]: any_useState_result2_9_upvr (copied, readonly)
			]]
			print("PhoneVerification: Autofill phone number supported: {}!", arg1_8)
			if not arg1_8 then
			else
				var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "phoneAutofillEligible", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
				local any_getPhoneNumber_result1_2 = default_upvr_4:getPhoneNumber()
				if not any_getPhoneNumber_result1_2 then return end
				any_getPhoneNumber_result1_2:andThen(function(arg1_9) -- Line 230
					--[[ Upvalues[7]:
						[1]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
						[2]: any_useState_result1_5_upvr (copied, readonly)
						[3]: tbl_upvr (copied, readonly)
						[4]: var13_result1_upvr_2 (copied, readonly)
						[5]: mergeProps_upvr_result1_upvr (copied, readonly)
						[6]: any_useState_result1_upvr (copied, readonly)
						[7]: any_useState_result2_9_upvr (copied, readonly)
					]]
					if arg1_9 and arg1_9 ~= "" then
						local GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result1_2, GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result2 = GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr(arg1_9, any_useState_result1_5_upvr.prefix)
						if GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result1_2 == tbl_upvr.prefix then
							var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "phoneAutofillUSFound", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
						end
						any_useState_result2_9_upvr(GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result2)
						var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "phoneAutofillSuccess", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
					else
						var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "phoneAutofillNull", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
					end
				end)
			end
		end)
	end
	local function _() -- Line 266
		--[[ Upvalues[6]:
			[1]: IdentityProtocol_upvr (copied, readonly)
			[2]: var13_result1_upvr_2 (readonly)
			[3]: mergeProps_upvr_result1_upvr (readonly)
			[4]: any_useState_result1_upvr (readonly)
			[5]: any_useState_result2_4_upvr (readonly)
			[6]: any_useState_result2_8_upvr (readonly)
		]]
		local default_upvr_5 = IdentityProtocol_upvr.default
		default_upvr_5:supportsGetSMSOTP():andThen(function(arg1_10) -- Line 268
			--[[ Upvalues[6]:
				[1]: var13_result1_upvr_2 (copied, readonly)
				[2]: mergeProps_upvr_result1_upvr (copied, readonly)
				[3]: any_useState_result1_upvr (copied, readonly)
				[4]: default_upvr_5 (readonly)
				[5]: any_useState_result2_4_upvr (copied, readonly)
				[6]: any_useState_result2_8_upvr (copied, readonly)
			]]
			print("PhoneVerification: Autofill OTP supported: {}!", arg1_10)
			if arg1_10 then
				var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "codeAutofillEligible", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
				local any_getSMSOTP_result1_3 = default_upvr_5:getSMSOTP()
				if any_getSMSOTP_result1_3 then
					any_getSMSOTP_result1_3:andThen(function(arg1_12) -- Line 280
						--[[ Upvalues[5]:
							[1]: any_useState_result2_4_upvr (copied, readonly)
							[2]: any_useState_result2_8_upvr (copied, readonly)
							[3]: var13_result1_upvr_2 (copied, readonly)
							[4]: mergeProps_upvr_result1_upvr (copied, readonly)
							[5]: any_useState_result1_upvr (copied, readonly)
						]]
						if arg1_12 and arg1_12 ~= "" then
							any_useState_result2_4_upvr(arg1_12)
							any_useState_result2_8_upvr(arg1_12)
							var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "codeAutofillSuccess", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
						end
					end)
				end
			end
		end)
	end
	React_upvr.useEffect(function() -- Line 298
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useState_result1_3_upvr (readonly)
		]]
		return function() -- Line 299
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr (copied, readonly)
				[2]: any_useState_result1_3_upvr (copied, readonly)
			]]
			any_useRef_result1_upvr.current = any_useState_result1_3_upvr
		end
	end, {any_useState_result1_3_upvr})
	local var102_upvw
	React_upvr.useEffect(function() -- Line 304
		--[[ Upvalues[16]:
			[1]: var102_upvw (read and write)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: any_useState_result2_5_upvr (readonly)
			[4]: any_useState_result2_6_upvr (readonly)
			[5]: var13_result1_upvr_2 (readonly)
			[6]: mergeProps_upvr_result1_upvr (readonly)
			[7]: GetFFlagAddMorePhoneUpsellEvents_upvr (copied, readonly)
			[8]: any_useState_result1_upvr (readonly)
			[9]: PhoneVerificationUpsellState_upvr (copied, readonly)
			[10]: var16_result1_upvr (readonly)
			[11]: IdentityProtocol_upvr (copied, readonly)
			[12]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
			[13]: any_useState_result1_5_upvr (readonly)
			[14]: tbl_upvr (copied, readonly)
			[15]: any_useState_result2_9_upvr (readonly)
			[16]: any_useRef_result1_upvr (readonly)
		]]
		var102_upvw = UserInputService_upvr:GetPropertyChangedSignal("OnScreenKeyboardVisible"):Connect(function() -- Line 306
			--[[ Upvalues[3]:
				[1]: any_useState_result2_5_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
				[3]: any_useState_result2_6_upvr (copied, readonly)
			]]
			any_useState_result2_5_upvr(UserInputService_upvr.OnScreenKeyboardVisible)
			local var104
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var104 = UserInputService_upvr.OnScreenKeyboardSize.Y
				return var104
			end
			if not UserInputService_upvr.OnScreenKeyboardVisible or not INLINED() then
				var104 = 0
			end
			any_useState_result2_6_upvr(var104)
		end)
		local var105 = mergeProps_upvr_result1_upvr
		if GetFFlagAddMorePhoneUpsellEvents_upvr() then
			var105 = any_useState_result1_upvr
		else
			var105 = PhoneVerificationUpsellState_upvr.AddPhone
		end
		var13_result1_upvr_2.reportModalShownWithSection(mergeProps_upvr_result1_upvr.eventContext, var105.origin, var105)
		if var16_result1_upvr then
			local default_upvr_3 = IdentityProtocol_upvr.default
			default_upvr_3:supportsGetPhoneNumber():andThen(function(arg1_13) -- Line 214
				--[[ Upvalues[8]:
					[1]: var13_result1_upvr_2 (copied, readonly)
					[2]: mergeProps_upvr_result1_upvr (copied, readonly)
					[3]: any_useState_result1_upvr (copied, readonly)
					[4]: default_upvr_3 (readonly)
					[5]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
					[6]: any_useState_result1_5_upvr (copied, readonly)
					[7]: tbl_upvr (copied, readonly)
					[8]: any_useState_result2_9_upvr (copied, readonly)
				]]
				print("PhoneVerification: Autofill phone number supported: {}!", arg1_13)
				if not arg1_13 then
				else
					var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "phoneAutofillEligible", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
					local any_getPhoneNumber_result1 = default_upvr_3:getPhoneNumber()
					if not any_getPhoneNumber_result1 then return end
					any_getPhoneNumber_result1:andThen(function(arg1_14) -- Line 230
						--[[ Upvalues[7]:
							[1]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
							[2]: any_useState_result1_5_upvr (copied, readonly)
							[3]: tbl_upvr (copied, readonly)
							[4]: var13_result1_upvr_2 (copied, readonly)
							[5]: mergeProps_upvr_result1_upvr (copied, readonly)
							[6]: any_useState_result1_upvr (copied, readonly)
							[7]: any_useState_result2_9_upvr (copied, readonly)
						]]
						if arg1_14 and arg1_14 ~= "" then
							local GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result1, GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result2_3 = GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr(arg1_14, any_useState_result1_5_upvr.prefix)
							if GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result1 == tbl_upvr.prefix then
								var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "phoneAutofillUSFound", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
							end
							any_useState_result2_9_upvr(GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result2_3)
							var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "phoneAutofillSuccess", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
						else
							var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "phoneAutofillNull", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
						end
					end)
				end
			end)
		end
		function default_upvr_3() -- Line 321
			--[[ Upvalues[3]:
				[1]: var102_upvw (copied, read and write)
				[2]: any_useRef_result1_upvr (copied, readonly)
				[3]: mergeProps_upvr_result1_upvr (copied, readonly)
			]]
			if var102_upvw then
				var102_upvw:Disconnect()
			end
			var102_upvw = nil
			if not any_useRef_result1_upvr.current then
				mergeProps_upvr_result1_upvr.onCancelled()
			end
		end
		return default_upvr_3
	end, {})
	local function _(arg1_16) -- Line 341, Named "handlePhoneErrors"
		--[[ Upvalues[1]:
			[1]: var21_result1_upvr (readonly)
		]]
		if arg1_16 == 2 then
			return var21_result1_upvr.invalidPhoneFormatKey
		end
		if arg1_16 == 6 then
			return var21_result1_upvr.tooManyAttemptsKey
		end
		if arg1_16 == 7 then
			return var21_result1_upvr.invalidVerificationCodeKey
		end
		if arg1_16 == 8 then
			return var21_result1_upvr.invalidPhoneNumberKey
		end
		if arg1_16 == 9 then
			return var21_result1_upvr.tooManyAccountsKey
		end
		return var21_result1_upvr.genericErrorKey
	end
	local function handleVerifyPhone_upvr() -- Line 418, Named "handleVerifyPhone"
		--[[ Upvalues[12]:
			[1]: any_useState_result2_2_upvr (readonly)
			[2]: var13_result1_upvr (readonly)
			[3]: any_useState_result1_2_upvr (readonly)
			[4]: var8_result1_upvr (readonly)
			[5]: VerifyPhoneCode_upvr (copied, readonly)
			[6]: any_useState_result2_10_upvr (readonly)
			[7]: var13_result1_upvr_2 (readonly)
			[8]: mergeProps_upvr_result1_upvr (readonly)
			[9]: EventStreamConstants_upvr (copied, readonly)
			[10]: PhoneVerificationUpsellState_upvr (copied, readonly)
			[11]: any_useState_result2_upvr_3 (readonly)
			[12]: var21_result1_upvr (readonly)
		]]
		any_useState_result2_2_upvr(true)
		local var8_result1_upvr_result1 = var8_result1_upvr(VerifyPhoneCode_upvr(var13_result1_upvr, any_useState_result1_2_upvr))
		if var8_result1_upvr_result1 then
			var8_result1_upvr_result1:andThen(function() -- Line 423
				--[[ Upvalues[1]:
					[1]: any_useState_result2_10_upvr (copied, readonly)
				]]
				any_useState_result2_10_upvr(true)
			end):catch(function(arg1_20) -- Line 426
				--[[ Upvalues[7]:
					[1]: var13_result1_upvr_2 (copied, readonly)
					[2]: mergeProps_upvr_result1_upvr (copied, readonly)
					[3]: EventStreamConstants_upvr (copied, readonly)
					[4]: PhoneVerificationUpsellState_upvr (copied, readonly)
					[5]: any_useState_result2_upvr_3 (copied, readonly)
					[6]: var21_result1_upvr (copied, readonly)
					[7]: any_useState_result2_2_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
				if not arg1_20 then
					var13_result1_upvr_2.reportModalShownWithSectionAndError(mergeProps_upvr_result1_upvr.eventContext, EventStreamConstants_upvr.Field.ErrorMessage, mergeProps_upvr_result1_upvr.origin, PhoneVerificationUpsellState_upvr.VerifyPhone, "")
					any_useState_result2_upvr_3(var21_result1_upvr.genericErrorKey)
					-- KONSTANTWARNING: GOTO [84] #59
				end
				-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [26] 20. Error Block 28 start (CF ANALYSIS FAILED)
				var13_result1_upvr_2.reportModalShownWithSectionAndError(mergeProps_upvr_result1_upvr.eventContext, EventStreamConstants_upvr.Field.ErrorMessage, mergeProps_upvr_result1_upvr.origin, PhoneVerificationUpsellState_upvr.VerifyPhone, arg1_20.ErrorCode)
				local ErrorCode = arg1_20.ErrorCode
				if ErrorCode == 2 then
				elseif ErrorCode == 6 then
				elseif ErrorCode == 7 then
				elseif ErrorCode == 8 then
				elseif ErrorCode == 9 then
				else
				end
				any_useState_result2_upvr_3(var21_result1_upvr.genericErrorKey)
				any_useState_result2_2_upvr(false)
				-- KONSTANTERROR: [26] 20. Error Block 28 end (CF ANALYSIS FAILED)
			end)
		end
		var13_result1_upvr_2.reportInteractWithActionAndSection(mergeProps_upvr_result1_upvr.eventContext, "", "", mergeProps_upvr_result1_upvr.origin, EventStreamConstants_upvr.Button.AutoSubmit, PhoneVerificationUpsellState_upvr.VerifyPhone)
	end
	local debounce_upvr_result1_upvr = debounce_upvr(function(arg1_25) -- Line 578
		--[[ Upvalues[1]:
			[1]: any_useState_result2_8_upvr (readonly)
		]]
		any_useState_result2_8_upvr(arg1_25)
	end, 0.5)
	React_upvr.useEffect(function() -- Line 607
		--[[ Upvalues[2]:
			[1]: any_useState_result1_2_upvr (readonly)
			[2]: handleVerifyPhone_upvr (readonly)
		]]
		if string.len(any_useState_result1_2_upvr) == 6 then
			handleVerifyPhone_upvr()
		end
	end, {any_useState_result1_2_upvr})
	local function var147() -- Line 614
		--[[ Upvalues[6]:
			[1]: any_useState_result1_3_upvr (readonly)
			[2]: var8_result1_upvr (readonly)
			[3]: SetIsPhoneVerified_upvr (copied, readonly)
			[4]: var13_result1_upvr_2 (readonly)
			[5]: mergeProps_upvr_result1_upvr (readonly)
			[6]: PhoneVerificationUpsellState_upvr (copied, readonly)
		]]
		if any_useState_result1_3_upvr then
			local _ = {
				isPhoneVerified = true;
			}
			var13_result1_upvr_2.reportModalShownWithSection(mergeProps_upvr_result1_upvr.eventContext, mergeProps_upvr_result1_upvr.origin, PhoneVerificationUpsellState_upvr.Success)
			mergeProps_upvr_result1_upvr.onSuccess()
		end
	end
	React_upvr.useEffect(var147, {any_useState_result1_3_upvr})
	local module = {
		phoneUpsellState = any_useState_result1_upvr;
	}
	if GetFFlagPhoneUseParentSizeForScreenSize_upvr() then
		var147 = any_useState_result1_12
	else
		var147 = useSelector_upvr(function(arg1_15) -- Line 332
			return arg1_15.ScreenSize
		end)
	end
	module.screenSize = var147
	module.setParentSize = any_useState_result2
	function module.handleCloseClick() -- Line 336
		--[[ Upvalues[3]:
			[1]: var13_result1_upvr_2 (readonly)
			[2]: mergeProps_upvr_result1_upvr (readonly)
			[3]: any_useState_result1_upvr (readonly)
		]]
		var13_result1_upvr_2.reportModalDismissedWithSection(mergeProps_upvr_result1_upvr.eventContext, mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
		mergeProps_upvr_result1_upvr.closeUpsell()
	end
	function module.proceedToAddPhone() -- Line 507
		--[[ Upvalues[5]:
			[1]: any_useState_result2_7_upvr (readonly)
			[2]: PhoneVerificationUpsellState_upvr (copied, readonly)
			[3]: var13_result1_upvr_2 (readonly)
			[4]: mergeProps_upvr_result1_upvr (readonly)
			[5]: EventStreamConstants_upvr (copied, readonly)
		]]
		any_useState_result2_7_upvr(PhoneVerificationUpsellState_upvr.AddPhone)
		var13_result1_upvr_2.reportInteractWithActionAndSection(mergeProps_upvr_result1_upvr.eventContext, "", "", mergeProps_upvr_result1_upvr.origin, EventStreamConstants_upvr.Button.Continue, PhoneVerificationUpsellState_upvr.Entry)
	end
	module.countryCode = any_useState_result1_5_upvr
	module.setCountryCode = any_useState_result2_upvr
	module.phoneNumber = any_useState_result1_upvr_2
	module.addPhoneErrorMessage = any_useState_result1_6
	module.isDisabled = any_useState_result1_7_upvr
	function module.onPhoneNumberTextChange(arg1_22) -- Line 546
		--[[ Upvalues[3]:
			[1]: any_useState_result1_7_upvr (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: any_useState_result2_9_upvr (readonly)
		]]
		if not any_useState_result1_7_upvr then
			any_useState_result2_upvr_2("")
			any_useState_result2_9_upvr(arg1_22.Text)
		end
	end
	function module.handleSetPhone() -- Line 357
		--[[ Upvalues[18]:
			[1]: any_useState_result2_2_upvr (readonly)
			[2]: var13_result1_upvr (readonly)
			[3]: any_useState_result1_5_upvr (readonly)
			[4]: any_useState_result1_upvr_2 (readonly)
			[5]: var8_result1_upvr (readonly)
			[6]: SetPhoneNumber_upvr (copied, readonly)
			[7]: any_useState_result2_7_upvr (readonly)
			[8]: PhoneVerificationUpsellState_upvr (copied, readonly)
			[9]: var13_result1_upvr_2 (readonly)
			[10]: mergeProps_upvr_result1_upvr (readonly)
			[11]: useUserExperiment_upvr_result2_upvr (readonly)
			[12]: IdentityProtocol_upvr (copied, readonly)
			[13]: any_useState_result1_upvr (readonly)
			[14]: any_useState_result2_4_upvr (readonly)
			[15]: any_useState_result2_8_upvr (readonly)
			[16]: EventStreamConstants_upvr (copied, readonly)
			[17]: any_useState_result2_upvr_2 (readonly)
			[18]: var21_result1_upvr (readonly)
		]]
		any_useState_result2_2_upvr(true)
		local var8_result1_upvr_result1_2 = var8_result1_upvr(SetPhoneNumber_upvr(var13_result1_upvr, any_useState_result1_5_upvr.code, any_useState_result1_5_upvr.prefix, any_useState_result1_upvr_2, nil))
		if var8_result1_upvr_result1_2 then
			var8_result1_upvr_result1_2:andThen(function() -- Line 362
				--[[ Upvalues[10]:
					[1]: any_useState_result2_7_upvr (copied, readonly)
					[2]: PhoneVerificationUpsellState_upvr (copied, readonly)
					[3]: any_useState_result2_2_upvr (copied, readonly)
					[4]: var13_result1_upvr_2 (copied, readonly)
					[5]: mergeProps_upvr_result1_upvr (copied, readonly)
					[6]: useUserExperiment_upvr_result2_upvr (copied, readonly)
					[7]: IdentityProtocol_upvr (copied, readonly)
					[8]: any_useState_result1_upvr (copied, readonly)
					[9]: any_useState_result2_4_upvr (copied, readonly)
					[10]: any_useState_result2_8_upvr (copied, readonly)
				]]
				any_useState_result2_7_upvr(PhoneVerificationUpsellState_upvr.VerifyPhone)
				any_useState_result2_2_upvr(false)
				var13_result1_upvr_2.reportModalShownWithSection(mergeProps_upvr_result1_upvr.eventContext, mergeProps_upvr_result1_upvr.origin, PhoneVerificationUpsellState_upvr.VerifyPhone)
				if useUserExperiment_upvr_result2_upvr then
					local default_upvr = IdentityProtocol_upvr.default
					default_upvr:supportsGetSMSOTP():andThen(function(arg1_17) -- Line 268
						--[[ Upvalues[6]:
							[1]: var13_result1_upvr_2 (copied, readonly)
							[2]: mergeProps_upvr_result1_upvr (copied, readonly)
							[3]: any_useState_result1_upvr (copied, readonly)
							[4]: default_upvr (readonly)
							[5]: any_useState_result2_4_upvr (copied, readonly)
							[6]: any_useState_result2_8_upvr (copied, readonly)
						]]
						print("PhoneVerification: Autofill OTP supported: {}!", arg1_17)
						if arg1_17 then
							var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "codeAutofillEligible", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
							local any_getSMSOTP_result1_2 = default_upvr:getSMSOTP()
							if any_getSMSOTP_result1_2 then
								any_getSMSOTP_result1_2:andThen(function(arg1_18) -- Line 280
									--[[ Upvalues[5]:
										[1]: any_useState_result2_4_upvr (copied, readonly)
										[2]: any_useState_result2_8_upvr (copied, readonly)
										[3]: var13_result1_upvr_2 (copied, readonly)
										[4]: mergeProps_upvr_result1_upvr (copied, readonly)
										[5]: any_useState_result1_upvr (copied, readonly)
									]]
									if arg1_18 and arg1_18 ~= "" then
										any_useState_result2_4_upvr(arg1_18)
										any_useState_result2_8_upvr(arg1_18)
										var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "codeAutofillSuccess", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
									end
								end)
							end
						end
					end)
				end
			end):catch(function(arg1_19) -- Line 376
				--[[ Upvalues[7]:
					[1]: var13_result1_upvr_2 (copied, readonly)
					[2]: mergeProps_upvr_result1_upvr (copied, readonly)
					[3]: EventStreamConstants_upvr (copied, readonly)
					[4]: PhoneVerificationUpsellState_upvr (copied, readonly)
					[5]: any_useState_result2_upvr_2 (copied, readonly)
					[6]: var21_result1_upvr (copied, readonly)
					[7]: any_useState_result2_2_upvr (copied, readonly)
				]]
				if not arg1_19 then
					var13_result1_upvr_2.reportModalShownWithSectionAndError(mergeProps_upvr_result1_upvr.eventContext, EventStreamConstants_upvr.Field.ErrorMessage, mergeProps_upvr_result1_upvr.origin, PhoneVerificationUpsellState_upvr.AddPhone, "")
					any_useState_result2_upvr_2(var21_result1_upvr.genericErrorKey)
				else
					local var121
					if arg1_19.PhoneRegexFailed then
						var121 = var13_result1_upvr_2
						var121 = mergeProps_upvr_result1_upvr.eventContext
						var121.reportModalShownWithSectionAndError(var121, EventStreamConstants_upvr.Field.ErrorMessage, mergeProps_upvr_result1_upvr.origin, PhoneVerificationUpsellState_upvr.AddPhone, "")
						var121 = var21_result1_upvr.invalidPhoneFormatKey
						any_useState_result2_upvr_2(var121)
					else
						var121 = var13_result1_upvr_2
						var121 = mergeProps_upvr_result1_upvr.eventContext
						var121.reportModalShownWithSectionAndError(var121, EventStreamConstants_upvr.Field.ErrorMessage, mergeProps_upvr_result1_upvr.origin, PhoneVerificationUpsellState_upvr.AddPhone, arg1_19.ErrorCode)
						local ErrorCode_2 = arg1_19.ErrorCode
						if ErrorCode_2 == 2 then
							var121 = var21_result1_upvr.invalidPhoneFormatKey
						elseif ErrorCode_2 == 6 then
							var121 = var21_result1_upvr.tooManyAttemptsKey
						elseif ErrorCode_2 == 7 then
							var121 = var21_result1_upvr.invalidVerificationCodeKey
						elseif ErrorCode_2 == 8 then
							var121 = var21_result1_upvr.invalidPhoneNumberKey
						elseif ErrorCode_2 == 9 then
							var121 = var21_result1_upvr.tooManyAccountsKey
						else
							var121 = var21_result1_upvr.genericErrorKey
						end
						any_useState_result2_upvr_2(var121)
					end
				end
				var121 = false
				any_useState_result2_2_upvr(var121)
			end)
		end
		var13_result1_upvr_2.reportInteractWithActionAndSection(mergeProps_upvr_result1_upvr.eventContext, "", "", mergeProps_upvr_result1_upvr.origin, EventStreamConstants_upvr.Button.Continue, PhoneVerificationUpsellState_upvr.AddPhone)
	end
	function module.navigateToSMSTerms() -- Line 519
		--[[ Upvalues[6]:
			[1]: any_useState_result1_7_upvr (readonly)
			[2]: var13_result1_upvr_2 (readonly)
			[3]: mergeProps_upvr_result1_upvr (readonly)
			[4]: EventStreamConstants_upvr (copied, readonly)
			[5]: any_useState_result1_upvr (readonly)
			[6]: Constants_upvr (copied, readonly)
		]]
		if not any_useState_result1_7_upvr then
			var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, EventStreamConstants_upvr.Field.TermsOfService, "", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
			mergeProps_upvr_result1_upvr.showWebpage(Constants_upvr.TERMS_OF_SERVICE_URL)
		end
	end
	function module.navigateToPrivacy() -- Line 532
		--[[ Upvalues[6]:
			[1]: any_useState_result1_7_upvr (readonly)
			[2]: var13_result1_upvr_2 (readonly)
			[3]: mergeProps_upvr_result1_upvr (readonly)
			[4]: EventStreamConstants_upvr (copied, readonly)
			[5]: any_useState_result1_upvr (readonly)
			[6]: Constants_upvr (copied, readonly)
		]]
		if not any_useState_result1_7_upvr then
			var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, EventStreamConstants_upvr.Field.PrivacyPolicy, "", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
			mergeProps_upvr_result1_upvr.showWebpage(Constants_upvr.PRIVACY_POLICY_URL)
		end
	end
	function module.onPhoneInputFocus() -- Line 564
		--[[ Upvalues[10]:
			[1]: var13_result1_upvr_2 (readonly)
			[2]: mergeProps_upvr_result1_upvr (readonly)
			[3]: EventStreamConstants_upvr (copied, readonly)
			[4]: PhoneVerificationUpsellState_upvr (copied, readonly)
			[5]: IdentityProtocol_upvr (copied, readonly)
			[6]: any_useState_result1_upvr (readonly)
			[7]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
			[8]: any_useState_result1_5_upvr (readonly)
			[9]: tbl_upvr (copied, readonly)
			[10]: any_useState_result2_9_upvr (readonly)
		]]
		var13_result1_upvr_2.reportInteractWithActionAndSection(mergeProps_upvr_result1_upvr.eventContext, EventStreamConstants_upvr.Field.PhoneNumber, EventStreamConstants_upvr.ActionType.Focus, mergeProps_upvr_result1_upvr.origin, "", PhoneVerificationUpsellState_upvr.AddPhone)
		if not mergeProps_upvr_result1_upvr.shouldAutofillAndroidPhoneNumberAtLaunch then
			local default_upvr_2 = IdentityProtocol_upvr.default
			default_upvr_2:supportsGetPhoneNumber():andThen(function(arg1_23) -- Line 214
				--[[ Upvalues[8]:
					[1]: var13_result1_upvr_2 (copied, readonly)
					[2]: mergeProps_upvr_result1_upvr (copied, readonly)
					[3]: any_useState_result1_upvr (copied, readonly)
					[4]: default_upvr_2 (readonly)
					[5]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
					[6]: any_useState_result1_5_upvr (copied, readonly)
					[7]: tbl_upvr (copied, readonly)
					[8]: any_useState_result2_9_upvr (copied, readonly)
				]]
				print("PhoneVerification: Autofill phone number supported: {}!", arg1_23)
				if not arg1_23 then
				else
					var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "phoneAutofillEligible", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
					local any_getPhoneNumber_result1_3 = default_upvr_2:getPhoneNumber()
					if not any_getPhoneNumber_result1_3 then return end
					any_getPhoneNumber_result1_3:andThen(function(arg1_24) -- Line 230
						--[[ Upvalues[7]:
							[1]: GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr (copied, readonly)
							[2]: any_useState_result1_5_upvr (copied, readonly)
							[3]: tbl_upvr (copied, readonly)
							[4]: var13_result1_upvr_2 (copied, readonly)
							[5]: mergeProps_upvr_result1_upvr (copied, readonly)
							[6]: any_useState_result1_upvr (copied, readonly)
							[7]: any_useState_result2_9_upvr (copied, readonly)
						]]
						if arg1_24 and arg1_24 ~= "" then
							local var23_result1, GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result2_2 = GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr(arg1_24, any_useState_result1_5_upvr.prefix)
							if var23_result1 == tbl_upvr.prefix then
								var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "phoneAutofillUSFound", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
							end
							any_useState_result2_9_upvr(GetPrefixAndNationalNumberFromRawPhoneAndDefaultPrefix_upvr_result2_2)
							var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "phoneAutofillSuccess", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
						else
							var13_result1_upvr_2.reportModalActionWithSection(mergeProps_upvr_result1_upvr.eventContext, "phoneAutofillNull", "autofill", mergeProps_upvr_result1_upvr.origin, any_useState_result1_upvr)
						end
					end)
				end
			end)
		end
	end
	function module.onCountryCodeSelectorClick() -- Line 553
		--[[ Upvalues[4]:
			[1]: var13_result1_upvr_2 (readonly)
			[2]: mergeProps_upvr_result1_upvr (readonly)
			[3]: EventStreamConstants_upvr (copied, readonly)
			[4]: PhoneVerificationUpsellState_upvr (copied, readonly)
		]]
		var13_result1_upvr_2.reportInteractWithActionAndSection(mergeProps_upvr_result1_upvr.eventContext, EventStreamConstants_upvr.Field.CountryPrefix, EventStreamConstants_upvr.ActionType.Focus, mergeProps_upvr_result1_upvr.origin, "", PhoneVerificationUpsellState_upvr.AddPhone)
	end
	module.isKeyboardShowing = any_useState_result1_10
	module.onScreenKeyboardHeight = any_useState_result1_4
	module.code = any_useState_result1_11
	module.verifyPhoneErrorMessage = any_useState_result1_9
	function module.onCodeTextChange(arg1_26) -- Line 582
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr_3 (readonly)
			[2]: any_useState_result2_4_upvr (readonly)
			[3]: debounce_upvr_result1_upvr (readonly)
		]]
		if string.len(arg1_26.Text) <= 6 then
			any_useState_result2_upvr_3("")
		end
		local string_sub_result1 = string.sub(arg1_26.Text, 1, 6)
		any_useState_result2_4_upvr(string_sub_result1)
		debounce_upvr_result1_upvr(string_sub_result1)
	end
	function module.handleResendCode() -- Line 459
		--[[ Upvalues[9]:
			[1]: any_useState_result2_upvr_3 (readonly)
			[2]: var13_result1_upvr (readonly)
			[3]: var8_result1_upvr (readonly)
			[4]: ResendPhoneCode_upvr (copied, readonly)
			[5]: var13_result1_upvr_2 (readonly)
			[6]: mergeProps_upvr_result1_upvr (readonly)
			[7]: EventStreamConstants_upvr (copied, readonly)
			[8]: PhoneVerificationUpsellState_upvr (copied, readonly)
			[9]: var21_result1_upvr (readonly)
		]]
		any_useState_result2_upvr_3("")
		local var33_result1 = var8_result1_upvr(ResendPhoneCode_upvr(var13_result1_upvr))
		if var33_result1 then
			var33_result1:andThen(function() -- Line 463
			end):catch(function(arg1_21) -- Line 463
				--[[ Upvalues[6]:
					[1]: var13_result1_upvr_2 (copied, readonly)
					[2]: mergeProps_upvr_result1_upvr (copied, readonly)
					[3]: EventStreamConstants_upvr (copied, readonly)
					[4]: PhoneVerificationUpsellState_upvr (copied, readonly)
					[5]: any_useState_result2_upvr_3 (copied, readonly)
					[6]: var21_result1_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
				if not arg1_21 then
					var13_result1_upvr_2.reportModalShownWithSectionAndError(mergeProps_upvr_result1_upvr.eventContext, EventStreamConstants_upvr.Field.ErrorMessage, mergeProps_upvr_result1_upvr.origin, PhoneVerificationUpsellState_upvr.VerifyPhone, "")
					any_useState_result2_upvr_3(var21_result1_upvr.genericErrorKey)
					return
				end
				var13_result1_upvr_2.reportModalShownWithSectionAndError(mergeProps_upvr_result1_upvr.eventContext, EventStreamConstants_upvr.Field.ErrorMessage, mergeProps_upvr_result1_upvr.origin, PhoneVerificationUpsellState_upvr.VerifyPhone, arg1_21.ErrorCode)
				local ErrorCode_3 = arg1_21.ErrorCode
				if ErrorCode_3 == 2 then
					-- KONSTANTWARNING: GOTO [83] #58
				end
				-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [55] 39. Error Block 22 start (CF ANALYSIS FAILED)
				if ErrorCode_3 == 6 then
					-- KONSTANTWARNING: GOTO [83] #58
				end
				-- KONSTANTERROR: [55] 39. Error Block 22 end (CF ANALYSIS FAILED)
			end)
		end
		var13_result1_upvr_2.reportInteractWithActionAndSection(mergeProps_upvr_result1_upvr.eventContext, "", "", mergeProps_upvr_result1_upvr.origin, EventStreamConstants_upvr.Button.ResendCode, PhoneVerificationUpsellState_upvr.VerifyPhone)
	end
	function module.returnToAddPhone() -- Line 495
		--[[ Upvalues[5]:
			[1]: any_useState_result2_7_upvr (readonly)
			[2]: PhoneVerificationUpsellState_upvr (copied, readonly)
			[3]: var13_result1_upvr_2 (readonly)
			[4]: mergeProps_upvr_result1_upvr (readonly)
			[5]: EventStreamConstants_upvr (copied, readonly)
		]]
		any_useState_result2_7_upvr(PhoneVerificationUpsellState_upvr.AddPhone)
		var13_result1_upvr_2.reportInteractWithActionAndSection(mergeProps_upvr_result1_upvr.eventContext, "", "", mergeProps_upvr_result1_upvr.origin, EventStreamConstants_upvr.Button.ChangePhoneNumber, PhoneVerificationUpsellState_upvr.VerifyPhone)
	end
	function module.onCodeInputFocus() -- Line 595
		--[[ Upvalues[4]:
			[1]: var13_result1_upvr_2 (readonly)
			[2]: mergeProps_upvr_result1_upvr (readonly)
			[3]: EventStreamConstants_upvr (copied, readonly)
			[4]: PhoneVerificationUpsellState_upvr (copied, readonly)
		]]
		var13_result1_upvr_2.reportInteractWithActionAndSection(mergeProps_upvr_result1_upvr.eventContext, EventStreamConstants_upvr.Field.VerificationCode, EventStreamConstants_upvr.ActionType.Focus, mergeProps_upvr_result1_upvr.origin, "", PhoneVerificationUpsellState_upvr.VerifyPhone)
	end
	module.isLoading = any_useState_result1
	module.verifyingKey = var21_result1_upvr.verifyingKey
	module.isOTPInputTypeEnabled = var16_result3
	module.isPhoneNumberTextTypeEnabled = useUserExperiment_upvr_result4
	return module
end