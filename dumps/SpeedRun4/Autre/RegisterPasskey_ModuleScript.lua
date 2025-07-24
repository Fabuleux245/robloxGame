-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:08
-- Luau version 6, Types version 3
-- Time taken: 0.003274 seconds

local HttpService_upvr = game:GetService("HttpService")
local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Promise_upvr = require(Parent.Promise)
local Url_upvr = require(Parent.Http).Url
local PasskeyConstants_upvr = require(AuthCommon.Common.PasskeyConstants)
local function _() -- Line 16, Named "getFinishRegistrationUrl"
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return string.format("%sv1/passkey/FinishRegistration", Url_upvr.AUTH_URL)
end
local function finishPasskeyRegistration_upvr(arg1, arg2) -- Line 20, Named "finishPasskeyRegistration"
	--[[ Upvalues[4]:
		[1]: Url_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: PasskeyConstants_upvr (readonly)
	]]
	local module_3 = {}
	module_3.postBody = arg2
	return arg1(string.format("%sv1/passkey/FinishRegistration", Url_upvr.AUTH_URL), "POST", module_3):andThen(function(arg1_2) -- Line 21
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.resolve(arg1_2)
	end, function(arg1_3) -- Line 23
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
			source = PasskeyConstants_upvr.FINISH_STEP;
		})
	end)
end
local function _() -- Line 34, Named "getStartRegistrationUrl"
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return string.format("%sv1/passkey/StartRegistration", Url_upvr.AUTH_URL)
end
local function startPasskeyRegistration_upvr(arg1) -- Line 38, Named "startPasskeyRegistration"
	--[[ Upvalues[4]:
		[1]: Url_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: PasskeyConstants_upvr (readonly)
	]]
	return arg1(string.format("%sv1/passkey/StartRegistration", Url_upvr.AUTH_URL), "POST"):andThen(function(arg1_4) -- Line 39
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.resolve(arg1_4[1])
	end, function(arg1_5) -- Line 41
		--[[ Upvalues[3]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: PasskeyConstants_upvr (copied, readonly)
		]]
		local var14
		if type(arg1_5) == "table" then
			var14 = HttpService_upvr:JSONEncode(arg1_5)
		else
			var14 = nil
		end
		return Promise_upvr.reject({
			body = var14;
			name = PasskeyConstants_upvr.BACKEND_CREATION_ERROR_NAME;
			source = PasskeyConstants_upvr.START_STEP;
		})
	end)
end
local UserInputService_upvr = game:GetService("UserInputService")
local Base64_upvr = require(AuthCommon.Utils.Base64)
local default_upvr = require(Parent.CredentialsProtocol).CredentialsProtocol.default
local Logger_upvr = require(Parent.Loggers).Logger
return function(arg1) -- Line 52, Named "attemptPasskeyRegistration"
	--[[ Upvalues[9]:
		[1]: startPasskeyRegistration_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: Base64_upvr (readonly)
		[5]: default_upvr (readonly)
		[6]: Promise_upvr (readonly)
		[7]: PasskeyConstants_upvr (readonly)
		[8]: Logger_upvr (readonly)
		[9]: finishPasskeyRegistration_upvr (readonly)
	]]
	return startPasskeyRegistration_upvr(arg1):andThen(function(arg1_6) -- Line 53
		--[[ Upvalues[9]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: Base64_upvr (copied, readonly)
			[4]: default_upvr (copied, readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: PasskeyConstants_upvr (copied, readonly)
			[7]: Logger_upvr (copied, readonly)
			[8]: finishPasskeyRegistration_upvr (copied, readonly)
			[9]: arg1 (readonly)
		]]
		local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(arg1_6.creationOptions)
		any_JSONDecode_result1.keyType = "platform"
		any_JSONDecode_result1.deviceBoundOnly = true
		if UserInputService_upvr:GetPlatform() ~= Enum.Platform.Android then
			any_JSONDecode_result1.publicKey.challenge = Base64_upvr.FromUrlSafeBase64(any_JSONDecode_result1.publicKey.challenge)
			any_JSONDecode_result1.publicKey.user.id = Base64_upvr.FromUrlSafeBase64(any_JSONDecode_result1.publicKey.user.id)
		end
		local sessionId_upvr = arg1_6.sessionId
		return default_upvr:registerCredentials(default_upvr.CredentialsTypes.FIDO2, HttpService_upvr:JSONEncode(any_JSONDecode_result1), tonumber(any_JSONDecode_result1.publicKey.timeout) / 1000):andThen(function(arg1_7) -- Line 71
			--[[ Upvalues[8]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: Promise_upvr (copied, readonly)
				[3]: PasskeyConstants_upvr (copied, readonly)
				[4]: Logger_upvr (copied, readonly)
				[5]: Base64_upvr (copied, readonly)
				[6]: sessionId_upvr (readonly)
				[7]: finishPasskeyRegistration_upvr (copied, readonly)
				[8]: arg1 (copied, readonly)
			]]
			local any_JSONDecode_result1_2 = HttpService_upvr:JSONDecode(arg1_7)
			if any_JSONDecode_result1_2 == nil or next(any_JSONDecode_result1_2) == nil then
				return Promise_upvr.reject({
					body = "Null resultTable";
					name = PasskeyConstants_upvr.USER_OS_DIALOG_ERROR_NAME;
					source = PasskeyConstants_upvr.CREDENTIALS_PROTOCOL_REGISTER_CREDENTIALS_EMPTY_RESPONSE;
				})
			end
			if any_JSONDecode_result1_2.errorCode ~= nil then
				Logger_upvr:warning("Passkey credential signing failed. Error {} ({}) returned.", any_JSONDecode_result1_2.errorCode, any_JSONDecode_result1_2.errorMsg)
				return Promise_upvr.reject({
					body = any_JSONDecode_result1_2.errorMsg;
					name = PasskeyConstants_upvr.USER_OS_DIALOG_ERROR_NAME;
					source = PasskeyConstants_upvr.CREDENTIALS_PROTOCOL_REGISTER_CREDENTIALS_ERROR_CODE;
				})
			end
			any_JSONDecode_result1_2.id = Base64_upvr.ToUrlSafeBase64(any_JSONDecode_result1_2.id)
			any_JSONDecode_result1_2.rawId = Base64_upvr.ToUrlSafeBase64(any_JSONDecode_result1_2.rawId)
			any_JSONDecode_result1_2.response.attestationObject = Base64_upvr.ToUrlSafeBase64(any_JSONDecode_result1_2.response.attestationObject)
			any_JSONDecode_result1_2.response.clientDataJSON = Base64_upvr.ToUrlSafeBase64(any_JSONDecode_result1_2.response.clientDataJSON)
			return finishPasskeyRegistration_upvr(arg1, HttpService_upvr:JSONEncode({
				sessionId = sessionId_upvr;
				credentialNickname = "Passkey";
				attestationResponse = HttpService_upvr:JSONEncode(any_JSONDecode_result1_2);
			}))
		end, function(arg1_8) -- Line 106
			--[[ Upvalues[2]:
				[1]: Promise_upvr (copied, readonly)
				[2]: PasskeyConstants_upvr (copied, readonly)
			]]
			local module = {}
			module.body = arg1_8
			module.name = PasskeyConstants_upvr.USER_OS_DIALOG_ERROR_NAME
			module.source = PasskeyConstants_upvr.CREDENTIALS_PROTOCOL_REGISTER_CREDENTIALS_OTHER_ERR
			return Promise_upvr.reject(module)
		end)
	end, function(arg1_9) -- Line 113
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: PasskeyConstants_upvr (copied, readonly)
		]]
		if type(arg1_9) == "table" and arg1_9.name then
			return Promise_upvr.reject(arg1_9)
		end
		local module_2 = {}
		module_2.body = arg1_9
		module_2.name = PasskeyConstants_upvr.BACKEND_CREATION_ERROR_NAME
		module_2.source = PasskeyConstants_upvr.UNKNOWN_BACKEND_ERROR
		return Promise_upvr.reject(module_2)
	end)
end