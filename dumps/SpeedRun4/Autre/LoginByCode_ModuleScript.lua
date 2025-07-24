-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:01
-- Luau version 6, Types version 3
-- Time taken: 0.008228 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local LoginRequests_upvr = require(AuthCommon.Http.Requests.LoginRequests)
local getAppFeaturePolicies_upvr = require(Parent.UniversalAppPolicy).getAppFeaturePolicies
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 27, Named "loginRequest"
	--[[ Upvalues[2]:
		[1]: getAppFeaturePolicies_upvr (readonly)
		[2]: LoginRequests_upvr (readonly)
	]]
	if getAppFeaturePolicies_upvr().getUseSingleSignOn() then
		return LoginRequests_upvr.singleSignOnConnectWithCode(arg1, arg2, arg3)
	end
	return LoginRequests_upvr.loginWithCode(arg1, arg2, arg3, arg4, arg5)
end
local LoginResult_upvr = require(AuthCommon.Models.LoginResult)
local FFlagEnableLastLoginMethodTracking_upvr = require(Parent.SharedFlags).FFlagEnableLastLoginMethodTracking
local AppStorageUtilities_upvr = require(AuthCommon.Utils.AppStorageUtilities)
local LoginMethods_upvr = require(AuthCommon.Enums.LoginMethods)
local HttpService_upvr = game:GetService("HttpService")
local LoginErrorCodes_upvr = require(AuthCommon.Enums.LoginErrorCodes)
local GetDxBlob_upvr = require(AuthCommon.Utils.GetDxBlob)
local GetCaptchaDataJson_upvr = require(AuthCommon.Utils.GetCaptchaDataJson)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr = require(Parent.SharedFlags).GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin
local GetLoginByUsernameErrorMessage_upvr = require(AuthCommon.Utils.GetLoginByUsernameErrorMessage)
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local LoginByUsernameSSOErrorsTelemetry_upvr = require(AuthCommon.Utils.LoginByUsernameSSOErrorsTelemetry)
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 36, Named "loginByCode"
	--[[ Upvalues[17]:
		[1]: getAppFeaturePolicies_upvr (readonly)
		[2]: LoginRequests_upvr (readonly)
		[3]: LoginResult_upvr (readonly)
		[4]: FFlagEnableLastLoginMethodTracking_upvr (readonly)
		[5]: AppStorageUtilities_upvr (readonly)
		[6]: LoginMethods_upvr (readonly)
		[7]: HttpService_upvr (readonly)
		[8]: LoginErrorCodes_upvr (readonly)
		[9]: GetDxBlob_upvr (readonly)
		[10]: GetCaptchaDataJson_upvr (readonly)
		[11]: AppPage_upvr (readonly)
		[12]: NavigateDown_upvr (readonly)
		[13]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (readonly)
		[14]: GetLoginByUsernameErrorMessage_upvr (readonly)
		[15]: LoggingProtocol_upvr (readonly)
		[16]: LoginByUsernameSSOErrorsTelemetry_upvr (readonly)
		[17]: Promise_upvr (readonly)
	]]
	return function(arg1_2) -- Line 45
		--[[ Upvalues[24]:
			[1]: getAppFeaturePolicies_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg5 (readonly)
			[6]: arg7 (readonly)
			[7]: LoginRequests_upvr (copied, readonly)
			[8]: LoginResult_upvr (copied, readonly)
			[9]: FFlagEnableLastLoginMethodTracking_upvr (copied, readonly)
			[10]: AppStorageUtilities_upvr (copied, readonly)
			[11]: LoginMethods_upvr (copied, readonly)
			[12]: HttpService_upvr (copied, readonly)
			[13]: LoginErrorCodes_upvr (copied, readonly)
			[14]: GetDxBlob_upvr (copied, readonly)
			[15]: GetCaptchaDataJson_upvr (copied, readonly)
			[16]: AppPage_upvr (copied, readonly)
			[17]: arg4 (readonly)
			[18]: NavigateDown_upvr (copied, readonly)
			[19]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (copied, readonly)
			[20]: GetLoginByUsernameErrorMessage_upvr (copied, readonly)
			[21]: LoggingProtocol_upvr (copied, readonly)
			[22]: LoginByUsernameSSOErrorsTelemetry_upvr (copied, readonly)
			[23]: Promise_upvr (copied, readonly)
			[24]: arg6 (readonly)
		]]
		local getAppFeaturePolicies_upvr_result1 = getAppFeaturePolicies_upvr()
		if getAppFeaturePolicies_upvr().getUseSingleSignOn() then
			getAppFeaturePolicies_upvr_result1 = LoginRequests_upvr.singleSignOnConnectWithCode(arg1, arg2, arg3)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
			getAppFeaturePolicies_upvr_result1 = LoginRequests_upvr.loginWithCode(arg1, arg2, arg3, arg5, arg7)
		end
		local any_getUseSingleSignOn_result1_upvr = getAppFeaturePolicies_upvr_result1.getUseSingleSignOn()
		return getAppFeaturePolicies_upvr_result1:andThen(function(arg1_3) -- Line 48
			--[[ Upvalues[4]:
				[1]: LoginResult_upvr (copied, readonly)
				[2]: FFlagEnableLastLoginMethodTracking_upvr (copied, readonly)
				[3]: AppStorageUtilities_upvr (copied, readonly)
				[4]: LoginMethods_upvr (copied, readonly)
			]]
			local var23 = arg1_3
			assert(var23, "no login attempt result")
			if #arg1_3 ~= 1 then
				var23 = false
			else
				var23 = true
			end
			assert(var23, "no result or more than one result")
			assert(LoginResult_upvr.fromJsonData(arg1_3[1]), "result invalid")
			if FFlagEnableLastLoginMethodTracking_upvr then
				AppStorageUtilities_upvr.setLastSuccessfulSignInMethod(LoginMethods_upvr.QuickLogin)
			end
			return LoginResult_upvr.fromJsonData(arg1_3[1])
		end, function(arg1_4) -- Line 57
			--[[ Upvalues[16]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: LoginErrorCodes_upvr (copied, readonly)
				[3]: GetDxBlob_upvr (copied, readonly)
				[4]: GetCaptchaDataJson_upvr (copied, readonly)
				[5]: AppPage_upvr (copied, readonly)
				[6]: arg4 (copied, readonly)
				[7]: arg2 (copied, readonly)
				[8]: arg1_2 (readonly)
				[9]: NavigateDown_upvr (copied, readonly)
				[10]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (copied, readonly)
				[11]: any_getUseSingleSignOn_result1_upvr (readonly)
				[12]: GetLoginByUsernameErrorMessage_upvr (copied, readonly)
				[13]: LoggingProtocol_upvr (copied, readonly)
				[14]: LoginByUsernameSSOErrorsTelemetry_upvr (copied, readonly)
				[15]: Promise_upvr (copied, readonly)
				[16]: arg6 (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local any_JSONDecode_result1_3 = HttpService_upvr:JSONDecode(arg1_4.Body)
			local var39 = any_JSONDecode_result1_3
			if var39 then
				var39 = any_JSONDecode_result1_3.errors
				if var39 then
					var39 = any_JSONDecode_result1_3.errors[1]
					if var39 then
						var39 = any_JSONDecode_result1_3.errors[1].code
					end
				end
			end
			local var40
			if var39 == LoginErrorCodes_upvr.Captcha then
				local var12_result1_2, var12_result2 = GetCaptchaDataJson_upvr(any_JSONDecode_result1_3)
				local tbl_2 = {
					name = AppPage_upvr.CaptchaNative;
					detail = "";
				}
				local tbl = {}
				tbl.captchaCallback = arg4
				tbl.captchaType = "login"
				tbl.cvalueType = "authToken"
				tbl.captchaId = var12_result1_2
				tbl.cvalue = arg2
				tbl.dxBlob = var12_result2
				tbl.backNavigationDisabledWhileLoading = true
				tbl_2.extraProps = tbl
				arg1_2:dispatch(NavigateDown_upvr(tbl_2))
			elseif GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() and var39 == LoginErrorCodes_upvr.SecurityQuestions and any_JSONDecode_result1_3.errors[1].fieldData then
				local any_JSONDecode_result1_2 = HttpService_upvr:JSONDecode(any_JSONDecode_result1_3.errors[1].fieldData)
				if any_JSONDecode_result1_2.sessionId and any_JSONDecode_result1_2.userId then
					var40 = any_JSONDecode_result1_2
				end
			end
			if any_getUseSingleSignOn_result1_upvr then
				warn("Login ErrorCode:", var39)
				local var16_result1_2 = GetLoginByUsernameErrorMessage_upvr(var39)
				local var47 = var16_result1_2
				if var47[1] then
					var16_result1_2 = var47[1]
				else
					var16_result1_2 = var47
				end
				LoggingProtocol_upvr.default:logRobloxTelemetryEvent(LoginByUsernameSSOErrorsTelemetry_upvr, nil, {
					ssoErrorCode = var39;
					msgShown = var16_result1_2;
				})
			end
			local module = {
				errorKey = var47;
				errorCode = var39;
				securityQuestionsData = var40;
			}
			module.securityQuestionsCallback = arg6
			return Promise_upvr.reject(module)
		end)
	end
end