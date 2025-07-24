-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:08
-- Luau version 6, Types version 3
-- Time taken: 0.002972 seconds

local HttpService_upvr = game:GetService("HttpService")
local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Promise_upvr = require(Parent.Promise)
local Url_upvr = require(Parent.Http).Url
local PasskeyConstants_upvr = require(AuthCommon.Common.PasskeyConstants)
local function _() -- Line 18, Named "getStartPreauthRegistrationUrl"
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return string.format("%sv1/passkey/start-preauth-registration", Url_upvr.AUTH_URL)
end
local function startPreauthPasskeyRegistration_upvr(arg1, arg2) -- Line 22, Named "startPreauthPasskeyRegistration"
	--[[ Upvalues[4]:
		[1]: HttpService_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: PasskeyConstants_upvr (readonly)
	]]
	local tbl = {}
	tbl.username = arg2
	return arg1(string.format("%sv1/passkey/start-preauth-registration", Url_upvr.AUTH_URL), "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	}):andThen(function(arg1_2) -- Line 27
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.resolve(arg1_2[1])
	end, function(arg1_3) -- Line 29
		--[[ Upvalues[3]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: PasskeyConstants_upvr (copied, readonly)
		]]
		local var11
		if type(arg1_3) == "table" then
			var11 = HttpService_upvr:JSONEncode(arg1_3)
		else
			var11 = nil
		end
		return Promise_upvr.reject({
			body = var11;
			name = PasskeyConstants_upvr.BACKEND_CREATION_ERROR_NAME;
			source = PasskeyConstants_upvr.START_STEP;
		})
	end)
end
local UserInputService_upvr = game:GetService("UserInputService")
local Base64_upvr = require(AuthCommon.Utils.Base64)
local default_upvr = require(Parent.CredentialsProtocol).CredentialsProtocol.default
local Logger_upvr = require(Parent.Loggers).Logger
return function(arg1, arg2) -- Line 40, Named "attemptPreauthPasskeyRegistration"
	--[[ Upvalues[8]:
		[1]: startPreauthPasskeyRegistration_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: PasskeyConstants_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: Base64_upvr (readonly)
		[6]: default_upvr (readonly)
		[7]: Promise_upvr (readonly)
		[8]: Logger_upvr (readonly)
	]]
	return startPreauthPasskeyRegistration_upvr(arg1, arg2):andThen(function(arg1_4) -- Line 41
		--[[ Upvalues[7]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: PasskeyConstants_upvr (copied, readonly)
			[3]: UserInputService_upvr (copied, readonly)
			[4]: Base64_upvr (copied, readonly)
			[5]: default_upvr (copied, readonly)
			[6]: Promise_upvr (copied, readonly)
			[7]: Logger_upvr (copied, readonly)
		]]
		local any_JSONDecode_result1_2 = HttpService_upvr:JSONDecode(arg1_4.creationOptions)
		any_JSONDecode_result1_2.keyType = PasskeyConstants_upvr.PLATFORM
		any_JSONDecode_result1_2.deviceBoundOnly = true
		if UserInputService_upvr:GetPlatform() ~= Enum.Platform.Android then
			any_JSONDecode_result1_2.publicKey.challenge = Base64_upvr.FromUrlSafeBase64(any_JSONDecode_result1_2.publicKey.challenge)
			any_JSONDecode_result1_2.publicKey.user.id = Base64_upvr.FromUrlSafeBase64(any_JSONDecode_result1_2.publicKey.user.id)
		end
		return default_upvr:registerCredentials(default_upvr.CredentialsTypes.FIDO2, HttpService_upvr:JSONEncode(any_JSONDecode_result1_2), tonumber(any_JSONDecode_result1_2.publicKey.timeout) / PasskeyConstants_upvr.PASSKEY_TIMEOUT_DURATION):andThen(function(arg1_5) -- Line 60
			--[[ Upvalues[6]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: Promise_upvr (copied, readonly)
				[3]: PasskeyConstants_upvr (copied, readonly)
				[4]: Logger_upvr (copied, readonly)
				[5]: Base64_upvr (copied, readonly)
				[6]: arg1_4 (readonly)
			]]
			local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(arg1_5)
			if any_JSONDecode_result1 == nil or next(any_JSONDecode_result1) == nil then
				return Promise_upvr.reject({
					body = "Null resultTable";
					name = PasskeyConstants_upvr.USER_OS_DIALOG_ERROR_NAME;
					source = PasskeyConstants_upvr.CREDENTIALS_PROTOCOL_REGISTER_CREDENTIALS_EMPTY_RESPONSE;
				})
			end
			if any_JSONDecode_result1.errorCode ~= nil then
				Logger_upvr:warning("Passkey credential signing failed. Error {} ({}) returned.", any_JSONDecode_result1.errorCode, any_JSONDecode_result1.errorMsg)
				return Promise_upvr.reject({
					body = any_JSONDecode_result1.errorMsg;
					name = PasskeyConstants_upvr.USER_OS_DIALOG_ERROR_NAME;
					source = PasskeyConstants_upvr.CREDENTIALS_PROTOCOL_REGISTER_CREDENTIALS_ERROR_CODE;
				})
			end
			any_JSONDecode_result1.id = Base64_upvr.ToUrlSafeBase64(any_JSONDecode_result1.id)
			any_JSONDecode_result1.rawId = Base64_upvr.ToUrlSafeBase64(any_JSONDecode_result1.rawId)
			any_JSONDecode_result1.response.attestationObject = Base64_upvr.ToUrlSafeBase64(any_JSONDecode_result1.response.attestationObject)
			any_JSONDecode_result1.response.clientDataJSON = Base64_upvr.ToUrlSafeBase64(any_JSONDecode_result1.response.clientDataJSON)
			return Promise_upvr.resolve({
				result = HttpService_upvr:JSONEncode(any_JSONDecode_result1);
				sessionId = arg1_4.sessionId;
			})
		end, function(arg1_6) -- Line 88
			--[[ Upvalues[2]:
				[1]: Promise_upvr (copied, readonly)
				[2]: PasskeyConstants_upvr (copied, readonly)
			]]
			local module_2 = {}
			module_2.body = arg1_6
			module_2.name = PasskeyConstants_upvr.USER_OS_DIALOG_ERROR_NAME
			module_2.source = PasskeyConstants_upvr.CREDENTIALS_PROTOCOL_REGISTER_CREDENTIALS_OTHER_ERR
			return Promise_upvr.reject(module_2)
		end)
	end, function(arg1_7) -- Line 95
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: PasskeyConstants_upvr (copied, readonly)
		]]
		if type(arg1_7) == "table" and arg1_7.name then
			return Promise_upvr.reject(arg1_7)
		end
		local module = {}
		module.body = arg1_7
		module.name = PasskeyConstants_upvr.BACKEND_CREATION_ERROR_NAME
		module.source = PasskeyConstants_upvr.UNKNOWN_BACKEND_ERROR
		return Promise_upvr.reject(module)
	end)
end