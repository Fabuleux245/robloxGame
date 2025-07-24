-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:59
-- Luau version 6, Types version 3
-- Time taken: 0.001302 seconds

local HttpService_upvr = game:GetService("HttpService")
local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Url_upvr = require(Parent.Http).Url
local function _() -- Line 14, Named "getFinishRegistrationUrl"
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return string.format("%sv1/passkey/finish-preauth-registration", Url_upvr.AUTH_URL)
end
local Promise_upvr = require(Parent.Promise)
local PasskeyConstants_upvr = require(AuthCommon.Common.PasskeyConstants)
local function finishPreauthPasskeyRegistration_upvr(arg1, arg2) -- Line 18, Named "finishPreauthPasskeyRegistration"
	--[[ Upvalues[4]:
		[1]: Url_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: PasskeyConstants_upvr (readonly)
	]]
	local module = {}
	module.postBody = arg2
	return arg1(string.format("%sv1/passkey/finish-preauth-registration", Url_upvr.AUTH_URL), "POST", module):andThen(function(arg1_2) -- Line 19
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.resolve(arg1_2)
	end, function(arg1_3) -- Line 21
		--[[ Upvalues[3]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: PasskeyConstants_upvr (copied, readonly)
		]]
		local var10
		if type(arg1_3) == "table" then
			var10 = HttpService_upvr:JSONEncode(arg1_3)
		else
			var10 = nil
		end
		return Promise_upvr.reject({
			body = var10;
			name = PasskeyConstants_upvr.BACKEND_CREATION_ERROR_NAME;
		})
	end)
end
local Base64_upvr = require(AuthCommon.Utils.Base64)
return function(arg1, arg2, arg3) -- Line 27, Named "attemptFinishPreauthPasskeyRegistration"
	--[[ Upvalues[3]:
		[1]: HttpService_upvr (readonly)
		[2]: Base64_upvr (readonly)
		[3]: finishPreauthPasskeyRegistration_upvr (readonly)
	]]
	local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(arg3)
	any_JSONDecode_result1.id = Base64_upvr.ToUrlSafeBase64(any_JSONDecode_result1.id)
	any_JSONDecode_result1.rawId = Base64_upvr.ToUrlSafeBase64(any_JSONDecode_result1.rawId)
	any_JSONDecode_result1.response.attestationObject = Base64_upvr.ToUrlSafeBase64(any_JSONDecode_result1.response.attestationObject)
	any_JSONDecode_result1.response.clientDataJSON = Base64_upvr.ToUrlSafeBase64(any_JSONDecode_result1.response.clientDataJSON)
	local module_2 = {}
	module_2.sessionId = arg2
	module_2.registrationResponse = HttpService_upvr:JSONEncode(any_JSONDecode_result1)
	return finishPreauthPasskeyRegistration_upvr(arg1, HttpService_upvr:JSONEncode(module_2))
end