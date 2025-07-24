-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:43
-- Luau version 6, Types version 3
-- Time taken: 0.008058 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Promise_upvr = require(Parent.Promise)
local getSingleSignOnUrls_upvr = require(AuthCommon.Utils.getSingleSignOnUrls)
local ConsoleAuthRequestWrapper_upvr = require(Parent.Http).Utils.ConsoleAuthRequestWrapper
local HttpService_upvr = game:GetService("HttpService")
local AppStorageUtilities_upvr = require(AuthCommon.Utils.AppStorageUtilities)
local LoginErrorCodes_upvr = require(AuthCommon.Enums.LoginErrorCodes)
local GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr = require(Parent.SharedFlags).GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin
local GetFFlagEnableLoginAccountSelector_upvr = require(Parent.SharedFlags).GetFFlagEnableLoginAccountSelector
local FFlagEnableLuaAccountSwitch_upvr = require(Parent.SharedFlags).FFlagEnableLuaAccountSwitch
local FFlagAddLinkedAuthEndpoints_upvr = require(Parent.SharedFlags).FFlagAddLinkedAuthEndpoints
local module_2 = {}
local Url_upvr = require(Parent.Http).Url
function getLoginUrl() -- Line 29
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return string.format("%sv2/login", Url_upvr.AUTH_URL)
end
function module_2.logByPasskey(arg1, arg2, arg3) -- Line 33
	--[[ Upvalues[3]:
		[1]: HttpService_upvr (readonly)
		[2]: FFlagEnableLuaAccountSwitch_upvr (readonly)
		[3]: AppStorageUtilities_upvr (readonly)
	]]
	local tbl_6 = {
		ctype = "Passkey";
		cvalue = HttpService_upvr:JSONEncode(arg2);
	}
	tbl_6.password = arg3
	local var17
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var17 = AppStorageUtilities_upvr.getAccountBlob()
		return var17
	end
	if not FFlagEnableLuaAccountSwitch_upvr or not INLINED() then
		var17 = nil
	end
	tbl_6.accountBlob = var17
	var17 = "POST"
	return arg1(getLoginUrl(), var17, {
		postBody = HttpService_upvr:JSONEncode(tbl_6);
		maxRetryCount = 0;
	})
end
function module_2.logByUsername(arg1, arg2, arg3, arg4, arg5) -- Line 43
	--[[ Upvalues[4]:
		[1]: HttpService_upvr (readonly)
		[2]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (readonly)
		[3]: FFlagEnableLuaAccountSwitch_upvr (readonly)
		[4]: AppStorageUtilities_upvr (readonly)
	]]
	local tbl_9 = {
		ctype = "Username";
	}
	tbl_9.cvalue = arg2
	tbl_9.password = arg3
	local var21
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var21 = arg4.captchaToken
		return var21
	end
	if not arg4 or not INLINED_2() then
		var21 = nil
	end
	tbl_9.captchaToken = var21
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var21 = arg4.captchaProvider
		return var21
	end
	if not arg4 or not INLINED_3() then
		var21 = nil
	end
	tbl_9.captchaProvider = var21
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var21 = arg4.captchaId
		return var21
	end
	if not arg4 or not INLINED_4() then
		var21 = nil
	end
	tbl_9.captchaId = var21
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		var21 = arg5.sessionId
		return var21
	end
	if not GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() or not arg5 or not INLINED_5() then
		var21 = nil
	end
	tbl_9.securityQuestionSessionId = var21
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		var21 = arg5.redemptionToken
		return var21
	end
	if not GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() or not arg5 or not INLINED_6() then
		var21 = nil
	end
	tbl_9.securityQuestionRedemptionToken = var21
	local function INLINED_7() -- Internal function, doesn't exist in bytecode
		var21 = AppStorageUtilities_upvr.getAccountBlob()
		return var21
	end
	if not FFlagEnableLuaAccountSwitch_upvr or not INLINED_7() then
		var21 = nil
	end
	tbl_9.accountBlob = var21
	var21 = "POST"
	return arg1(getLoginUrl(), var21, {
		postBody = HttpService_upvr:JSONEncode(tbl_9);
		maxRetryCount = 0;
	})
end
function module_2.logByEmail(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 64
	--[[ Upvalues[5]:
		[1]: HttpService_upvr (readonly)
		[2]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (readonly)
		[3]: GetFFlagEnableLoginAccountSelector_upvr (readonly)
		[4]: FFlagEnableLuaAccountSwitch_upvr (readonly)
		[5]: AppStorageUtilities_upvr (readonly)
	]]
	local tbl_8 = {
		ctype = "Email";
	}
	tbl_8.cvalue = arg2
	tbl_8.password = arg3
	local var25
	local function INLINED_8() -- Internal function, doesn't exist in bytecode
		var25 = arg4.captchaToken
		return var25
	end
	if not arg4 or not INLINED_8() then
		var25 = nil
	end
	tbl_8.captchaToken = var25
	local function INLINED_9() -- Internal function, doesn't exist in bytecode
		var25 = arg4.captchaProvider
		return var25
	end
	if not arg4 or not INLINED_9() then
		var25 = nil
	end
	tbl_8.captchaProvider = var25
	local function INLINED_10() -- Internal function, doesn't exist in bytecode
		var25 = arg4.captchaId
		return var25
	end
	if not arg4 or not INLINED_10() then
		var25 = nil
	end
	tbl_8.captchaId = var25
	local function INLINED_11() -- Internal function, doesn't exist in bytecode
		var25 = arg5.sessionId
		return var25
	end
	if not GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() or not arg5 or not INLINED_11() then
		var25 = nil
	end
	tbl_8.securityQuestionSessionId = var25
	local function INLINED_12() -- Internal function, doesn't exist in bytecode
		var25 = arg5.redemptionToken
		return var25
	end
	if not GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() or not arg5 or not INLINED_12() then
		var25 = nil
	end
	tbl_8.securityQuestionRedemptionToken = var25
	local function INLINED_13() -- Internal function, doesn't exist in bytecode
		var25 = arg6
		return var25
	end
	if not GetFFlagEnableLoginAccountSelector_upvr() or not INLINED_13() then
		var25 = nil
	end
	tbl_8.userId = var25
	local function INLINED_14() -- Internal function, doesn't exist in bytecode
		var25 = AppStorageUtilities_upvr.getAccountBlob()
		return var25
	end
	if not FFlagEnableLuaAccountSwitch_upvr or not INLINED_14() then
		var25 = nil
	end
	tbl_8.accountBlob = var25
	var25 = "POST"
	return arg1(getLoginUrl(), var25, {
		postBody = HttpService_upvr:JSONEncode(tbl_8);
		maxRetryCount = 0;
	})
end
function module_2.logByPhone(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 86
	--[[ Upvalues[5]:
		[1]: HttpService_upvr (readonly)
		[2]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (readonly)
		[3]: GetFFlagEnableLoginAccountSelector_upvr (readonly)
		[4]: FFlagEnableLuaAccountSwitch_upvr (readonly)
		[5]: AppStorageUtilities_upvr (readonly)
	]]
	local tbl_4 = {
		ctype = "PhoneNumber";
	}
	tbl_4.cvalue = arg2
	tbl_4.password = arg3
	local var29
	local function INLINED_15() -- Internal function, doesn't exist in bytecode
		var29 = arg4.captchaToken
		return var29
	end
	if not arg4 or not INLINED_15() then
		var29 = nil
	end
	tbl_4.captchaToken = var29
	local function INLINED_16() -- Internal function, doesn't exist in bytecode
		var29 = arg4.captchaProvider
		return var29
	end
	if not arg4 or not INLINED_16() then
		var29 = nil
	end
	tbl_4.captchaProvider = var29
	local function INLINED_17() -- Internal function, doesn't exist in bytecode
		var29 = arg4.captchaId
		return var29
	end
	if not arg4 or not INLINED_17() then
		var29 = nil
	end
	tbl_4.captchaId = var29
	local function INLINED_18() -- Internal function, doesn't exist in bytecode
		var29 = arg5.sessionId
		return var29
	end
	if not GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() or not arg5 or not INLINED_18() then
		var29 = nil
	end
	tbl_4.securityQuestionSessionId = var29
	local function INLINED_19() -- Internal function, doesn't exist in bytecode
		var29 = arg5.redemptionToken
		return var29
	end
	if not GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() or not arg5 or not INLINED_19() then
		var29 = nil
	end
	tbl_4.securityQuestionRedemptionToken = var29
	local function INLINED_20() -- Internal function, doesn't exist in bytecode
		var29 = arg6
		return var29
	end
	if not GetFFlagEnableLoginAccountSelector_upvr() or not INLINED_20() then
		var29 = nil
	end
	tbl_4.userId = var29
	local function INLINED_21() -- Internal function, doesn't exist in bytecode
		var29 = AppStorageUtilities_upvr.getAccountBlob()
		return var29
	end
	if not FFlagEnableLuaAccountSwitch_upvr or not INLINED_21() then
		var29 = nil
	end
	tbl_4.accountBlob = var29
	var29 = "POST"
	return arg1(getLoginUrl(), var29, {
		postBody = HttpService_upvr:JSONEncode(tbl_4);
		maxRetryCount = 0;
	})
end
function module_2.loginWithCode(arg1, arg2, arg3, arg4, arg5) -- Line 108
	--[[ Upvalues[4]:
		[1]: HttpService_upvr (readonly)
		[2]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (readonly)
		[3]: FFlagEnableLuaAccountSwitch_upvr (readonly)
		[4]: AppStorageUtilities_upvr (readonly)
	]]
	local tbl_10 = {
		ctype = "AuthToken";
	}
	tbl_10.cvalue = arg2
	tbl_10.password = arg3
	local var33
	local function INLINED_22() -- Internal function, doesn't exist in bytecode
		var33 = arg4.captchaToken
		return var33
	end
	if not arg4 or not INLINED_22() then
		var33 = nil
	end
	tbl_10.captchaToken = var33
	local function INLINED_23() -- Internal function, doesn't exist in bytecode
		var33 = arg4.captchaProvider
		return var33
	end
	if not arg4 or not INLINED_23() then
		var33 = nil
	end
	tbl_10.captchaProvider = var33
	local function INLINED_24() -- Internal function, doesn't exist in bytecode
		var33 = arg4.captchaId
		return var33
	end
	if not arg4 or not INLINED_24() then
		var33 = nil
	end
	tbl_10.captchaId = var33
	local function INLINED_25() -- Internal function, doesn't exist in bytecode
		var33 = arg5.sessionId
		return var33
	end
	if not GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() or not arg5 or not INLINED_25() then
		var33 = nil
	end
	tbl_10.securityQuestionSessionId = var33
	local function INLINED_26() -- Internal function, doesn't exist in bytecode
		var33 = arg5.redemptionToken
		return var33
	end
	if not GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() or not arg5 or not INLINED_26() then
		var33 = nil
	end
	tbl_10.securityQuestionRedemptionToken = var33
	local function INLINED_27() -- Internal function, doesn't exist in bytecode
		var33 = AppStorageUtilities_upvr.getAccountBlob()
		return var33
	end
	if not FFlagEnableLuaAccountSwitch_upvr or not INLINED_27() then
		var33 = nil
	end
	tbl_10.accountBlob = var33
	var33 = "POST"
	return arg1(getLoginUrl(), var33, {
		postBody = HttpService_upvr:JSONEncode(tbl_10);
		maxRetryCount = 0;
	})
end
function module_2.logByOtp(arg1, arg2, arg3, arg4, arg5) -- Line 129
	--[[ Upvalues[5]:
		[1]: HttpService_upvr (readonly)
		[2]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (readonly)
		[3]: GetFFlagEnableLoginAccountSelector_upvr (readonly)
		[4]: FFlagEnableLuaAccountSwitch_upvr (readonly)
		[5]: AppStorageUtilities_upvr (readonly)
	]]
	local tbl_7 = {
		ctype = "EmailOtpSessionToken";
	}
	tbl_7.cvalue = arg2
	tbl_7.password = arg3
	local var37
	local function INLINED_28() -- Internal function, doesn't exist in bytecode
		var37 = arg4.sessionId
		return var37
	end
	if not GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() or not arg4 or not INLINED_28() then
		var37 = nil
	end
	tbl_7.securityQuestionSessionId = var37
	local function INLINED_29() -- Internal function, doesn't exist in bytecode
		var37 = arg4.redemptionToken
		return var37
	end
	if not GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() or not arg4 or not INLINED_29() then
		var37 = nil
	end
	tbl_7.securityQuestionRedemptionToken = var37
	local function INLINED_30() -- Internal function, doesn't exist in bytecode
		var37 = arg5
		return var37
	end
	if not GetFFlagEnableLoginAccountSelector_upvr() or not INLINED_30() then
		var37 = nil
	end
	tbl_7.userId = var37
	local function INLINED_31() -- Internal function, doesn't exist in bytecode
		var37 = AppStorageUtilities_upvr.getAccountBlob()
		return var37
	end
	if not FFlagEnableLuaAccountSwitch_upvr or not INLINED_31() then
		var37 = nil
	end
	tbl_7.accountBlob = var37
	var37 = "POST"
	return arg1(getLoginUrl(), var37, {
		postBody = HttpService_upvr:JSONEncode(tbl_7);
		maxRetryCount = 0;
	})
end
function module_2.singleSignOnLogin(arg1) -- Line 148
	--[[ Upvalues[6]:
		[1]: getSingleSignOnUrls_upvr (readonly)
		[2]: FFlagAddLinkedAuthEndpoints_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: ConsoleAuthRequestWrapper_upvr (readonly)
		[5]: Promise_upvr (readonly)
		[6]: LoginErrorCodes_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local getSingleSignOnUrls_upvr_result1_2 = getSingleSignOnUrls_upvr()
	local login = getSingleSignOnUrls_upvr_result1_2.login
	local var42
	if login then
		var42 = nil
		if FFlagAddLinkedAuthEndpoints_upvr then
			var42 = HttpService_upvr:JSONEncode({
				accountLinkParameters = {
					LinkingPlatform = getSingleSignOnUrls_upvr_result1_2.linkingPlatform;
				};
			})
		end
		local module = {}
		if FFlagAddLinkedAuthEndpoints_upvr then
		else
		end
		module.postBody = "{}"
		module.maxRetryCount = 0
		return ConsoleAuthRequestWrapper_upvr(arg1, login(), "POST", module)
	end
	return Promise_upvr.reject({
		errorCode = LoginErrorCodes_upvr.ServiceUnavailable;
	})
end
function module_2.singleSignOnConnectWithCode(arg1, arg2, arg3) -- Line 174
	--[[ Upvalues[6]:
		[1]: getSingleSignOnUrls_upvr (readonly)
		[2]: FFlagAddLinkedAuthEndpoints_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: ConsoleAuthRequestWrapper_upvr (readonly)
		[5]: Promise_upvr (readonly)
		[6]: LoginErrorCodes_upvr (readonly)
	]]
	local getSingleSignOnUrls_upvr_result1 = getSingleSignOnUrls_upvr()
	local connect_2 = getSingleSignOnUrls_upvr_result1.connect
	local var50
	if FFlagAddLinkedAuthEndpoints_upvr then
		local tbl_3 = {
			ctype = "AuthToken";
		}
		tbl_3.cvalue = arg2
		tbl_3.password = arg3
		tbl_3.accountLinkParameters = {
			LinkingPlatform = getSingleSignOnUrls_upvr_result1.linkingPlatform;
		}
		var50 = HttpService_upvr:JSONEncode(tbl_3)
	else
		local tbl_5 = {
			ctype = "AuthToken";
		}
		tbl_5.cvalue = arg2
		tbl_5.password = arg3
		var50 = HttpService_upvr:JSONEncode(tbl_5)
	end
	if connect_2 then
		return ConsoleAuthRequestWrapper_upvr(arg1, connect_2(), "POST", {
			postBody = var50;
			maxRetryCount = 0;
		})
	end
	return Promise_upvr.reject({
		errorCode = LoginErrorCodes_upvr.ServiceUnavailable;
	})
end
function module_2.singleSignOnConnectWithCredential(arg1, arg2, arg3, arg4) -- Line 209
	--[[ Upvalues[6]:
		[1]: getSingleSignOnUrls_upvr (readonly)
		[2]: FFlagAddLinkedAuthEndpoints_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: ConsoleAuthRequestWrapper_upvr (readonly)
		[5]: Promise_upvr (readonly)
		[6]: LoginErrorCodes_upvr (readonly)
	]]
	local getSingleSignOnUrls_upvr_result1_3 = getSingleSignOnUrls_upvr()
	local connect = getSingleSignOnUrls_upvr_result1_3.connect
	local var59
	if FFlagAddLinkedAuthEndpoints_upvr then
		local tbl_2 = {}
		tbl_2.ctype = arg4
		tbl_2.cvalue = arg2
		tbl_2.password = arg3
		tbl_2.accountLinkParameters = {
			LinkingPlatform = getSingleSignOnUrls_upvr_result1_3.linkingPlatform;
		}
		var59 = HttpService_upvr:JSONEncode(tbl_2)
	else
		local tbl = {}
		tbl.ctype = arg4
		tbl.cvalue = arg2
		tbl.password = arg3
		var59 = HttpService_upvr:JSONEncode(tbl)
	end
	if connect then
		return ConsoleAuthRequestWrapper_upvr(arg1, connect(), "POST", {
			postBody = var59;
			maxRetryCount = 0;
		})
	end
	return Promise_upvr.reject({
		errorCode = LoginErrorCodes_upvr.ServiceUnavailable;
	})
end
return module_2