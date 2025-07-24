-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:02
-- Luau version 6, Types version 3
-- Time taken: 0.003108 seconds

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
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr = require(Parent.SharedFlags).GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin
local GetFFlagEnableLoginAccountSelector_upvr = require(Parent.SharedFlags).GetFFlagEnableLoginAccountSelector
local GetMultipleUsersPerCredentialErrorData_upvr = require(AuthCommon.Utils.GetMultipleUsersPerCredentialErrorData)
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 24, Named "loginByEmail"
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
		[10]: AppPage_upvr (readonly)
		[11]: NavigateDown_upvr (readonly)
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
			[16]: AppPage_upvr (copied, readonly)
			[17]: arg4 (readonly)
			[18]: NavigateDown_upvr (copied, readonly)
			[19]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (copied, readonly)
			[20]: GetFFlagEnableLoginAccountSelector_upvr (copied, readonly)
			[21]: GetMultipleUsersPerCredentialErrorData_upvr (copied, readonly)
			[22]: Promise_upvr (copied, readonly)
			[23]: arg6 (readonly)
		]]
		return LoginRequests_upvr.logByEmail(arg1, arg2, arg3, arg5, arg7, arg8):andThen(function(arg1_3) -- Line 43
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
				AppStorageUtilities_upvr.setLastSuccessfulSignInMethod(LoginMethods_upvr.Email)
			end
			return LoginResult_upvr.fromJsonData(arg1_3[1])
		end, function(arg1_4) -- Line 51
			--[[ Upvalues[14]:
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
				[11]: GetFFlagEnableLoginAccountSelector_upvr (copied, readonly)
				[12]: GetMultipleUsersPerCredentialErrorData_upvr (copied, readonly)
				[13]: Promise_upvr (copied, readonly)
				[14]: arg6 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
			local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(arg1_4.Body)
			local code = any_JSONDecode_result1.errors[1].code
			if code == LoginErrorCodes_upvr.IncorrectCValueOrPassword then
				-- KONSTANTWARNING: GOTO [156] #114
			end
			-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [20] 15. Error Block 43 start (CF ANALYSIS FAILED)
			if code == LoginErrorCodes_upvr.Captcha then
				local var11_result1, var11_result2 = GetCaptchaDataJson_upvr(any_JSONDecode_result1)
				local tbl_2 = {
					name = AppPage_upvr.CaptchaNative;
					detail = "";
				}
				local tbl = {}
				tbl.captchaCallback = arg4
				tbl.captchaType = "login"
				tbl.cvalueType = "email"
				tbl.captchaId = var11_result1
				tbl.cvalue = arg2
				tbl.dxBlob = var11_result2
				tbl.backNavigationDisabledWhileLoading = true
				tbl_2.extraProps = tbl
				arg1_2:dispatch(NavigateDown_upvr(tbl_2))
				-- KONSTANTWARNING: GOTO [156] #114
			end
			-- KONSTANTERROR: [20] 15. Error Block 43 end (CF ANALYSIS FAILED)
		end)
	end
end