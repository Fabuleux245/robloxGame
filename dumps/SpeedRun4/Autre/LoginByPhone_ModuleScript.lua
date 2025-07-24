-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:04
-- Luau version 6, Types version 3
-- Time taken: 0.005496 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local LoginRequests_upvr = require(AuthCommon.Http.Requests.LoginRequests)
local LoginResult_upvr = require(AuthCommon.Models.LoginResult)
local FFlagEnableLastLoginMethodTracking_upvr = require(Parent.SharedFlags).FFlagEnableLastLoginMethodTracking
local AppStorageUtilities_upvr = require(AuthCommon.Utils.AppStorageUtilities)
local LoginMethods_upvr = require(AuthCommon.Enums.LoginMethods)
local HttpService_upvr = game:GetService("HttpService")
local LoginErrorCodes_upvr = require(AuthCommon.Enums.LoginErrorCodes)
local GetDxBlob_upvr = require(AuthCommon.Utils.GetDxBlob)
local GetCaptchaDataJson_upvr = require(AuthCommon.Utils.GetCaptchaDataJson)
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr = require(Parent.SharedFlags).GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin
local GetFFlagEnableLoginAccountSelector_upvr = require(Parent.SharedFlags).GetFFlagEnableLoginAccountSelector
local GetMultipleUsersPerCredentialErrorData_upvr = require(AuthCommon.Utils.GetMultipleUsersPerCredentialErrorData)
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 24, Named "loginByPhone"
	--[[ Upvalues[15]:
		[1]: LoginRequests_upvr (readonly)
		[2]: LoginResult_upvr (readonly)
		[3]: FFlagEnableLastLoginMethodTracking_upvr (readonly)
		[4]: AppStorageUtilities_upvr (readonly)
		[5]: LoginMethods_upvr (readonly)
		[6]: HttpService_upvr (readonly)
		[7]: LoginErrorCodes_upvr (readonly)
		[8]: GetDxBlob_upvr (readonly)
		[9]: GetCaptchaDataJson_upvr (readonly)
		[10]: NavigateDown_upvr (readonly)
		[11]: AppPage_upvr (readonly)
		[12]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (readonly)
		[13]: GetFFlagEnableLoginAccountSelector_upvr (readonly)
		[14]: GetMultipleUsersPerCredentialErrorData_upvr (readonly)
		[15]: Promise_upvr (readonly)
	]]
	return function(arg1_2) -- Line 34
		--[[ Upvalues[23]:
			[1]: LoginRequests_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg5 (readonly)
			[6]: arg7 (readonly)
			[7]: arg8 (readonly)
			[8]: LoginResult_upvr (copied, readonly)
			[9]: FFlagEnableLastLoginMethodTracking_upvr (copied, readonly)
			[10]: AppStorageUtilities_upvr (copied, readonly)
			[11]: LoginMethods_upvr (copied, readonly)
			[12]: HttpService_upvr (copied, readonly)
			[13]: LoginErrorCodes_upvr (copied, readonly)
			[14]: GetDxBlob_upvr (copied, readonly)
			[15]: GetCaptchaDataJson_upvr (copied, readonly)
			[16]: NavigateDown_upvr (copied, readonly)
			[17]: AppPage_upvr (copied, readonly)
			[18]: arg4 (readonly)
			[19]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (copied, readonly)
			[20]: GetFFlagEnableLoginAccountSelector_upvr (copied, readonly)
			[21]: GetMultipleUsersPerCredentialErrorData_upvr (copied, readonly)
			[22]: Promise_upvr (copied, readonly)
			[23]: arg6 (readonly)
		]]
		return LoginRequests_upvr.logByPhone(arg1, arg2, arg3, arg5, arg7, arg8):andThen(function(arg1_3) -- Line 43
			--[[ Upvalues[4]:
				[1]: LoginResult_upvr (copied, readonly)
				[2]: FFlagEnableLastLoginMethodTracking_upvr (copied, readonly)
				[3]: AppStorageUtilities_upvr (copied, readonly)
				[4]: LoginMethods_upvr (copied, readonly)
			]]
			local var20 = arg1_3
			assert(var20, "no login attempt result")
			if #arg1_3 ~= 1 then
				var20 = false
			else
				var20 = true
			end
			assert(var20, "no result or more than one result")
			assert(LoginResult_upvr.fromJsonData(arg1_3[1]), "result invalid")
			if FFlagEnableLastLoginMethodTracking_upvr then
				AppStorageUtilities_upvr.setLastSuccessfulSignInMethod(LoginMethods_upvr.Phone)
			end
			return LoginResult_upvr.fromJsonData(arg1_3[1])
		end, function(arg1_4) -- Line 51
			--[[ Upvalues[14]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: LoginErrorCodes_upvr (copied, readonly)
				[3]: GetDxBlob_upvr (copied, readonly)
				[4]: GetCaptchaDataJson_upvr (copied, readonly)
				[5]: arg1_2 (readonly)
				[6]: NavigateDown_upvr (copied, readonly)
				[7]: AppPage_upvr (copied, readonly)
				[8]: arg4 (copied, readonly)
				[9]: arg2 (copied, readonly)
				[10]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (copied, readonly)
				[11]: GetFFlagEnableLoginAccountSelector_upvr (copied, readonly)
				[12]: GetMultipleUsersPerCredentialErrorData_upvr (copied, readonly)
				[13]: Promise_upvr (copied, readonly)
				[14]: arg6 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
			local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(arg1_4.Body)
			local var34
			local code = any_JSONDecode_result1.errors[1].code
			local var36
			if code == LoginErrorCodes_upvr.IncorrectCValueOrPassword then
				var34 = "Authentication.Login.Response.IncorrectPhoneOrPassword"
			elseif code == LoginErrorCodes_upvr.Captcha then
				local var11_result1, var11_result2_2 = GetCaptchaDataJson_upvr(any_JSONDecode_result1)
				local tbl_3 = {
					name = AppPage_upvr.CaptchaNative;
					detail = "";
				}
				local tbl_2 = {}
				tbl_2.captchaCallback = arg4
				tbl_2.captchaType = "login"
				tbl_2.captchaId = var11_result1
				tbl_2.cvalueType = "phonenumber"
				tbl_2.cvalue = arg2
				tbl_2.dxBlob = var11_result2_2
				tbl_2.backNavigationDisabledWhileLoading = true
				tbl_3.extraProps = tbl_2
				arg1_2:dispatch(NavigateDown_upvr(tbl_3))
			elseif GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() and code == LoginErrorCodes_upvr.SecurityQuestions then
				var34 = "Authentication.Login.Response.SomethingWentWrong"
				if any_JSONDecode_result1.errors[1].fieldData then
					local any_JSONDecode_result1_2 = HttpService_upvr:JSONDecode(any_JSONDecode_result1.errors[1].fieldData)
					if any_JSONDecode_result1_2.sessionId and any_JSONDecode_result1_2.userId then
						var36 = any_JSONDecode_result1_2
						var34 = nil
						-- KONSTANTWARNING: GOTO [141] #103
					end
					-- KONSTANTWARNING: GOTO [141] #103
				end
			else
				if GetFFlagEnableLoginAccountSelector_upvr() then
					if code == LoginErrorCodes_upvr.MultipleUsersPerCredential then
						return Promise_upvr.reject({
							errorKey = var34;
							errorCode = code;
							usersData = GetMultipleUsersPerCredentialErrorData_upvr(any_JSONDecode_result1);
						})
					end
				end
				if code == LoginErrorCodes_upvr.ServiceUnavailable then
					var34 = "Authentication.Login.Response.ServiceUnavailable"
				elseif code ~= LoginErrorCodes_upvr.AccountLocked then
					var34 = "Authentication.Login.Response.UnknownErrorLoginWithDifferentMethod"
				end
			end
			-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [141] 103. Error Block 22 start (CF ANALYSIS FAILED)
			local module = {
				errorKey = var34;
				errorCode = code;
				securityQuestionsData = var36;
			}
			module.securityQuestionsCallback = arg6
			do
				return Promise_upvr.reject(module)
			end
			-- KONSTANTERROR: [141] 103. Error Block 22 end (CF ANALYSIS FAILED)
		end)
	end
end