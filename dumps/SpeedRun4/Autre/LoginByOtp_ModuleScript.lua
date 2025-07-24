-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:02
-- Luau version 6, Types version 3
-- Time taken: 0.002917 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local LoginRequests_upvr = require(AuthCommon.Http.Requests.LoginRequests)
local LoginResult_upvr = require(AuthCommon.Models.LoginResult)
local FFlagEnableLastLoginMethodTracking_upvr = require(Parent.SharedFlags).FFlagEnableLastLoginMethodTracking
local AppStorageUtilities_upvr = require(AuthCommon.Utils.AppStorageUtilities)
local LoginMethods_upvr = require(AuthCommon.Enums.LoginMethods)
local HttpService_upvr = game:GetService("HttpService")
local LoginErrorCodes_upvr = require(AuthCommon.Enums.LoginErrorCodes)
local GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr = require(Parent.SharedFlags).GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin
local GetFFlagEnableLoginAccountSelector_upvr = require(Parent.SharedFlags).GetFFlagEnableLoginAccountSelector
local GetMultipleUsersPerCredentialErrorData_upvr = require(AuthCommon.Utils.GetMultipleUsersPerCredentialErrorData)
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 20, Named "loginByOtp"
	--[[ Upvalues[11]:
		[1]: LoginRequests_upvr (readonly)
		[2]: LoginResult_upvr (readonly)
		[3]: FFlagEnableLastLoginMethodTracking_upvr (readonly)
		[4]: AppStorageUtilities_upvr (readonly)
		[5]: LoginMethods_upvr (readonly)
		[6]: HttpService_upvr (readonly)
		[7]: LoginErrorCodes_upvr (readonly)
		[8]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (readonly)
		[9]: GetFFlagEnableLoginAccountSelector_upvr (readonly)
		[10]: GetMultipleUsersPerCredentialErrorData_upvr (readonly)
		[11]: Promise_upvr (readonly)
	]]
	return function() -- Line 28
		--[[ Upvalues[17]:
			[1]: LoginRequests_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg5 (readonly)
			[6]: arg6 (readonly)
			[7]: LoginResult_upvr (copied, readonly)
			[8]: FFlagEnableLastLoginMethodTracking_upvr (copied, readonly)
			[9]: AppStorageUtilities_upvr (copied, readonly)
			[10]: LoginMethods_upvr (copied, readonly)
			[11]: HttpService_upvr (copied, readonly)
			[12]: LoginErrorCodes_upvr (copied, readonly)
			[13]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (copied, readonly)
			[14]: GetFFlagEnableLoginAccountSelector_upvr (copied, readonly)
			[15]: GetMultipleUsersPerCredentialErrorData_upvr (copied, readonly)
			[16]: Promise_upvr (copied, readonly)
			[17]: arg4 (readonly)
		]]
		return LoginRequests_upvr.logByOtp(arg1, arg2, arg3, arg5, arg6):andThen(function(arg1_2) -- Line 30
			--[[ Upvalues[4]:
				[1]: LoginResult_upvr (copied, readonly)
				[2]: FFlagEnableLastLoginMethodTracking_upvr (copied, readonly)
				[3]: AppStorageUtilities_upvr (copied, readonly)
				[4]: LoginMethods_upvr (copied, readonly)
			]]
			local var16 = arg1_2
			assert(var16, "no login attempt result")
			if #arg1_2 ~= 1 then
				var16 = false
			else
				var16 = true
			end
			assert(var16, "no result or more than one result")
			assert(LoginResult_upvr.fromJsonData(arg1_2[1]), "result invalid")
			if FFlagEnableLastLoginMethodTracking_upvr then
				AppStorageUtilities_upvr.setLastSuccessfulSignInMethod(LoginMethods_upvr.EmailOtp)
			end
			return LoginResult_upvr.fromJsonData(arg1_2[1])
		end, function(arg1_3) -- Line 38
			--[[ Upvalues[7]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: LoginErrorCodes_upvr (copied, readonly)
				[3]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (copied, readonly)
				[4]: GetFFlagEnableLoginAccountSelector_upvr (copied, readonly)
				[5]: GetMultipleUsersPerCredentialErrorData_upvr (copied, readonly)
				[6]: Promise_upvr (copied, readonly)
				[7]: arg4 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 31 start (CF ANALYSIS FAILED)
			local any_JSONDecode_result1_2 = HttpService_upvr:JSONDecode(arg1_3.Body)
			local var26
			local code = any_JSONDecode_result1_2.errors[1].code
			local var28
			if code == LoginErrorCodes_upvr.IncorrectCValueOrPassword then
				var26 = "Authentication.Login.Response.IncorrectOtpCode"
			elseif GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr() and code == LoginErrorCodes_upvr.SecurityQuestions then
				var26 = "Authentication.Login.Response.SomethingWentWrong"
				if any_JSONDecode_result1_2.errors[1].fieldData then
					local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(any_JSONDecode_result1_2.errors[1].fieldData)
					if any_JSONDecode_result1.sessionId and any_JSONDecode_result1.userId then
						var28 = any_JSONDecode_result1
						var26 = nil
						-- KONSTANTWARNING: GOTO [89] #65
					end
					-- KONSTANTWARNING: GOTO [89] #65
				end
			else
				if GetFFlagEnableLoginAccountSelector_upvr() then
					if code == LoginErrorCodes_upvr.MultipleUsersPerCredential then
						return Promise_upvr.reject({
							errorKey = var26;
							errorCode = code;
							usersData = GetMultipleUsersPerCredentialErrorData_upvr(any_JSONDecode_result1_2);
						})
					end
				end
				if code == LoginErrorCodes_upvr.ServiceUnavailable then
					var26 = "Authentication.Login.Response.ServiceUnavailable"
				elseif code ~= LoginErrorCodes_upvr.AccountLocked then
					var26 = "Authentication.Login.Response.UnknownErrorLoginWithDifferentMethod"
				end
			end
			-- KONSTANTERROR: [0] 1. Error Block 31 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [89] 65. Error Block 19 start (CF ANALYSIS FAILED)
			local module_2 = {
				errorKey = var26;
				errorCode = code;
				securityQuestionsData = var28;
			}
			module_2.securityQuestionsCallback = arg4
			do
				return Promise_upvr.reject(module_2)
			end
			-- KONSTANTERROR: [89] 65. Error Block 19 end (CF ANALYSIS FAILED)
		end)
	end
end