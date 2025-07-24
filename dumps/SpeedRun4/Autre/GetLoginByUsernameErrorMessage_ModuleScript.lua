-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:16
-- Luau version 6, Types version 3
-- Time taken: 0.000771 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local LoginErrorCodeSSO = require(AuthCommon.Enums.LoginErrorCodeSSO)
local any_getPlatformAccountName_result1 = require(AuthCommon.Parent.UniversalAppPolicy).getAppFeaturePolicies().getPlatformAccountName()
local module_upvr = {
	[LoginErrorCodeSSO.AuthError] = "Authentication.Login.Response.SomethingWentWrong";
	[LoginErrorCodeSSO.ExternalIdentityAlreadyConnected] = {
		platform = any_getPlatformAccountName_result1;
		"Authentication.Login.Response.AlreadyLinked"
	};
	[LoginErrorCodeSSO.IncorrectCValueOrPassword] = "Authentication.Login.Response.IncorrectUsernamePassword";
	[LoginErrorCodeSSO.FloodedPS] = "Authentication.TwoStepVerification.Response.TooManyAttempts";
	[LoginErrorCodeSSO.Require2FA] = "Authentication.Login.Response.Require2FAGeneric";
	[LoginErrorCodeSSO.RelinkingCooldown] = {
		platform = any_getPlatformAccountName_result1;
		"Authentication.Login.Response.RelinkingFreeze"
	};
	[require(AuthCommon.Enums.LoginErrorCodes).IncorrectCValueOrPassword] = "Authentication.Login.Response.IncorrectUsernamePassword";
	[LoginErrorCodeSSO.FloodedXbox] = "Authentication.TwoStepVerification.Response.TooManyAttempts";
	[LoginErrorCodeSSO.RobloxAccountAlreadyConnectedXbox] = {
		platform = any_getPlatformAccountName_result1;
		"Authentication.Login.Response.AlreadyLinked"
	};
	[LoginErrorCodeSSO.ExternalIdentityAlreadyConnectedXbox] = {
		platform = any_getPlatformAccountName_result1;
		"Authentication.Login.Response.AlreadyLinked"
	};
}
return function(arg1) -- Line 38, Named "GetLoginByUsernameErrorMessage"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr[arg1] then
		return module_upvr[arg1]
	end
	return "Authentication.Login.Response.SomethingWentWrong"
end