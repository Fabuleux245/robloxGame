-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:04
-- Luau version 6, Types version 3
-- Time taken: 0.004608 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local LoginRequests_upvr = require(AuthCommon.Http.Requests.LoginRequests)
local getAppFeaturePolicies_upvr = require(Parent.UniversalAppPolicy).getAppFeaturePolicies
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 31, Named "loginRequest"
	--[[ Upvalues[2]:
		[1]: getAppFeaturePolicies_upvr (readonly)
		[2]: LoginRequests_upvr (readonly)
	]]
	if getAppFeaturePolicies_upvr().getUseSingleSignOn() then
		return LoginRequests_upvr.singleSignOnConnectWithCredential(arg1, arg2, arg3, "Username")
	end
	return LoginRequests_upvr.logByUsername(arg1, arg2, arg3, arg4, arg5)
end
local LoginResult_upvr = require(AuthCommon.Models.LoginResult)
local GetFFlagBlockTwoSVForNoWebView_upvr = require(Parent.SharedFlags).GetFFlagBlockTwoSVForNoWebView
local Promise_upvr = require(Parent.Promise)
local LoginErrorCodes_upvr = require(AuthCommon.Enums.LoginErrorCodes)
local GetFFlagEnableGenericTwoFAMessage_upvr = require(Parent.SharedFlags).GetFFlagEnableGenericTwoFAMessage
local FFlagEnableLastLoginMethodTracking_upvr = require(Parent.SharedFlags).FFlagEnableLastLoginMethodTracking
local AppStorageUtilities_upvr = require(AuthCommon.Utils.AppStorageUtilities)
local LoginMethods_upvr = require(AuthCommon.Enums.LoginMethods)
local HttpService_upvr = game:GetService("HttpService")
local GetDxBlob_upvr = require(AuthCommon.Utils.GetDxBlob)
local GetCaptchaDataJson_upvr = require(AuthCommon.Utils.GetCaptchaDataJson)
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr = require(Parent.SharedFlags).GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnablePasskeyOnlyUserErrorMessage", false)
local GetLoginByUsernameErrorMessage_upvr = require(AuthCommon.Utils.GetLoginByUsernameErrorMessage)
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local LoginByUsernameSSOErrorsTelemetry_upvr = require(AuthCommon.Utils.LoginByUsernameSSOErrorsTelemetry)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 41, Named "loginByUsername"
	--[[ Upvalues[20]:
		[1]: getAppFeaturePolicies_upvr (readonly)
		[2]: LoginRequests_upvr (readonly)
		[3]: LoginResult_upvr (readonly)
		[4]: GetFFlagBlockTwoSVForNoWebView_upvr (readonly)
		[5]: Promise_upvr (readonly)
		[6]: LoginErrorCodes_upvr (readonly)
		[7]: GetFFlagEnableGenericTwoFAMessage_upvr (readonly)
		[8]: FFlagEnableLastLoginMethodTracking_upvr (readonly)
		[9]: AppStorageUtilities_upvr (readonly)
		[10]: LoginMethods_upvr (readonly)
		[11]: HttpService_upvr (readonly)
		[12]: GetDxBlob_upvr (readonly)
		[13]: GetCaptchaDataJson_upvr (readonly)
		[14]: NavigateDown_upvr (readonly)
		[15]: AppPage_upvr (readonly)
		[16]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (readonly)
		[17]: game_DefineFastFlag_result1_upvr (readonly)
		[18]: GetLoginByUsernameErrorMessage_upvr (readonly)
		[19]: LoggingProtocol_upvr (readonly)
		[20]: LoginByUsernameSSOErrorsTelemetry_upvr (readonly)
	]]
	return function(arg1_2) -- Line 50
		--[[ Upvalues[27]:
			[1]: getAppFeaturePolicies_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg5 (readonly)
			[6]: arg7 (readonly)
			[7]: LoginRequests_upvr (copied, readonly)
			[8]: LoginResult_upvr (copied, readonly)
			[9]: GetFFlagBlockTwoSVForNoWebView_upvr (copied, readonly)
			[10]: Promise_upvr (copied, readonly)
			[11]: LoginErrorCodes_upvr (copied, readonly)
			[12]: GetFFlagEnableGenericTwoFAMessage_upvr (copied, readonly)
			[13]: FFlagEnableLastLoginMethodTracking_upvr (copied, readonly)
			[14]: AppStorageUtilities_upvr (copied, readonly)
			[15]: LoginMethods_upvr (copied, readonly)
			[16]: HttpService_upvr (copied, readonly)
			[17]: GetDxBlob_upvr (copied, readonly)
			[18]: GetCaptchaDataJson_upvr (copied, readonly)
			[19]: NavigateDown_upvr (copied, readonly)
			[20]: AppPage_upvr (copied, readonly)
			[21]: arg4 (readonly)
			[22]: GetFFlagLuaAppUsingSecurityQuestionsForLuaLogin_upvr (copied, readonly)
			[23]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[24]: GetLoginByUsernameErrorMessage_upvr (copied, readonly)
			[25]: LoggingProtocol_upvr (copied, readonly)
			[26]: LoginByUsernameSSOErrorsTelemetry_upvr (copied, readonly)
			[27]: arg6 (readonly)
		]]
		local getAppFeaturePolicies_upvr_result1 = getAppFeaturePolicies_upvr()
		local any_getUseSingleSignOn_result1_upvr = getAppFeaturePolicies_upvr_result1.getUseSingleSignOn()
		if getAppFeaturePolicies_upvr().getUseSingleSignOn() then
			getAppFeaturePolicies_upvr_result1 = LoginRequests_upvr.singleSignOnConnectWithCredential(arg1, arg2, arg3, "Username")
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
			getAppFeaturePolicies_upvr_result1 = LoginRequests_upvr.logByUsername(arg1, arg2, arg3, arg5, arg7)
		end
		return getAppFeaturePolicies_upvr_result1:andThen(function(arg1_3) -- Line 52
			--[[ Upvalues[10]:
				[1]: LoginResult_upvr (copied, readonly)
				[2]: GetFFlagBlockTwoSVForNoWebView_upvr (copied, readonly)
				[3]: any_getUseSingleSignOn_result1_upvr (readonly)
				[4]: getAppFeaturePolicies_upvr (copied, readonly)
				[5]: Promise_upvr (copied, readonly)
				[6]: LoginErrorCodes_upvr (copied, readonly)
				[7]: GetFFlagEnableGenericTwoFAMessage_upvr (copied, readonly)
				[8]: FFlagEnableLastLoginMethodTracking_upvr (copied, readonly)
				[9]: AppStorageUtilities_upvr (copied, readonly)
				[10]: LoginMethods_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
			local var27 = arg1_3
			assert(var27, "no login attempt result")
			if #arg1_3 ~= 1 then
				var27 = false
			else
				var27 = true
			end
			assert(var27, "no result or more than one result")
			assert(LoginResult_upvr.fromJsonData(arg1_3[1]), "result invalid")
			-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [33] 26. Error Block 30 start (CF ANALYSIS FAILED)
			if not any_getUseSingleSignOn_result1_upvr then
				-- KONSTANTWARNING: GOTO [43] #35
			end
			-- KONSTANTERROR: [33] 26. Error Block 30 end (CF ANALYSIS FAILED)
		end, function(arg1_4) -- Line 77
			--[[ Upvalues[17]:
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
				[11]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[12]: any_getUseSingleSignOn_result1_upvr (readonly)
				[13]: GetLoginByUsernameErrorMessage_upvr (copied, readonly)
				[14]: LoggingProtocol_upvr (copied, readonly)
				[15]: LoginByUsernameSSOErrorsTelemetry_upvr (copied, readonly)
				[16]: Promise_upvr (copied, readonly)
				[17]: arg6 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local code = HttpService_upvr:JSONDecode(arg1_4.Body).errors[1].code
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [20] 15. Error Block 35 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [20] 15. Error Block 35 end (CF ANALYSIS FAILED)
		end)
	end
end