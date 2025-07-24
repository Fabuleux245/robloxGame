-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:03
-- Luau version 6, Types version 3
-- Time taken: 0.002229 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local LoginRequests_upvr = require(AuthCommon.Http.Requests.LoginRequests)
local LoginResult_upvr = require(AuthCommon.Models.LoginResult)
local FFlagEnableLastLoginMethodTracking_upvr = require(Parent.SharedFlags).FFlagEnableLastLoginMethodTracking
local AppStorageUtilities_upvr = require(AuthCommon.Utils.AppStorageUtilities)
local LoginMethods_upvr = require(AuthCommon.Enums.LoginMethods)
local Logger_upvr = require(Parent.Loggers).Logger
local HttpService_upvr = game:GetService("HttpService")
local LoginErrorCodes_upvr = require(AuthCommon.Enums.LoginErrorCodes)
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2, arg3) -- Line 17, Named "loginByPasskey"
	--[[ Upvalues[9]:
		[1]: LoginRequests_upvr (readonly)
		[2]: LoginResult_upvr (readonly)
		[3]: FFlagEnableLastLoginMethodTracking_upvr (readonly)
		[4]: AppStorageUtilities_upvr (readonly)
		[5]: LoginMethods_upvr (readonly)
		[6]: Logger_upvr (readonly)
		[7]: HttpService_upvr (readonly)
		[8]: LoginErrorCodes_upvr (readonly)
		[9]: Promise_upvr (readonly)
	]]
	return function(arg1_2) -- Line 18
		--[[ Upvalues[12]:
			[1]: LoginRequests_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: LoginResult_upvr (copied, readonly)
			[6]: FFlagEnableLastLoginMethodTracking_upvr (copied, readonly)
			[7]: AppStorageUtilities_upvr (copied, readonly)
			[8]: LoginMethods_upvr (copied, readonly)
			[9]: Logger_upvr (copied, readonly)
			[10]: HttpService_upvr (copied, readonly)
			[11]: LoginErrorCodes_upvr (copied, readonly)
			[12]: Promise_upvr (copied, readonly)
		]]
		return LoginRequests_upvr.logByPasskey(arg1, arg2, arg3):andThen(function(arg1_3) -- Line 19
			--[[ Upvalues[4]:
				[1]: LoginResult_upvr (copied, readonly)
				[2]: FFlagEnableLastLoginMethodTracking_upvr (copied, readonly)
				[3]: AppStorageUtilities_upvr (copied, readonly)
				[4]: LoginMethods_upvr (copied, readonly)
			]]
			local var14 = arg1_3
			assert(var14, "no login attempt result")
			if #arg1_3 ~= 1 then
				var14 = false
			else
				var14 = true
			end
			assert(var14, "no result or more than one result")
			local any_fromJsonData_result1 = LoginResult_upvr.fromJsonData(arg1_3[1])
			assert(any_fromJsonData_result1, "result invalid")
			if FFlagEnableLastLoginMethodTracking_upvr then
				AppStorageUtilities_upvr.setLastSuccessfulSignInMethod(LoginMethods_upvr.Passkey)
			end
			return any_fromJsonData_result1
		end, function(arg1_4) -- Line 28
			--[[ Upvalues[4]:
				[1]: Logger_upvr (copied, readonly)
				[2]: HttpService_upvr (copied, readonly)
				[3]: LoginErrorCodes_upvr (copied, readonly)
				[4]: Promise_upvr (copied, readonly)
			]]
			Logger_upvr:error("Error logging in by passkey. Error: {}", arg1_4.Body)
			local code = HttpService_upvr:JSONDecode(arg1_4.Body).errors[1].code
			local var18 = "Authentication.Login.Response.SomethingWentWrong"
			if code == LoginErrorCodes_upvr.IncorrectCValueOrPassword then
				var18 = "Authentication.Login.Response.InvalidPasskeyCredential"
			end
			return Promise_upvr.reject({
				errorCode = code;
				errorKey = var18;
			})
		end)
	end
end