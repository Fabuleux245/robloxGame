-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:34
-- Luau version 6, Types version 3
-- Time taken: 0.004609 seconds

local GenericChallenges = script:FindFirstAncestor("GenericChallenges")
local Parent = GenericChallenges.Parent
local Roact_upvr = require(Parent.Roact)
local GenericType_upvr = require(GenericChallenges.Types.GenericType)
local ChallengeNativeWrapperEvent_upvr = require(script.Parent.ChallengeNativeWrapperEvent)
local GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr = require(script.Parent.Flags.GetFFlagLuaAppChallengeMoreTelemetryEnabled)
local var7_upvw
pcall(function() -- Line 25
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	var7_upvw = game:GetService("AccountService")
end)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend(script.Name)
any_extend_result1_upvr.defaultProps = {
	accountService = var7_upvw;
}
function canRenderNativeChallenge(arg1, arg2) -- Line 43
	--[[ Upvalues[1]:
		[1]: GenericType_upvr (readonly)
	]]
	local var12 = true
	if arg1 ~= GenericType_upvr.DeviceIntegrity then
		if arg1 ~= GenericType_upvr.DeviceAccessToken then
			var12 = false
		else
			var12 = true
		end
	end
	return var12
end
function any_extend_result1_upvr.init(arg1) -- Line 62
	arg1:validateChallengeAndSetState(arg1.props.challengeType, arg1.props.challengeMetadata)
end
local DeviceIntegrityTokenChallenge_upvr = require(script.Parent.Challenges).DeviceIntegrityTokenChallenge
local DeviceAccessTokenChallenge_upvr = require(script.Parent.Challenges).DeviceAccessTokenChallenge
function any_extend_result1_upvr.render(arg1) -- Line 66
	--[[ Upvalues[4]:
		[1]: GenericType_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: DeviceIntegrityTokenChallenge_upvr (readonly)
		[4]: DeviceAccessTokenChallenge_upvr (readonly)
	]]
	local challengeType = arg1.state.challengeType
	local challengeMetadata = arg1.state.challengeMetadata
	if challengeType == GenericType_upvr.DeviceIntegrity then
		local module = {
			challengeId = arg1.props.challengeId;
			challengeMetadata = challengeMetadata;
		}
		local function onChallengeCompleted(arg1_2) -- Line 74
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:challengeContinue(arg1_2)
		end
		module.onChallengeCompleted = onChallengeCompleted
		local function onChallengeFailed(arg1_3) -- Line 77
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:failSession(arg1_3)
		end
		module.onChallengeFailed = onChallengeFailed
		module.accountService = arg1.props.accountService
		return Roact_upvr.createElement(DeviceIntegrityTokenChallenge_upvr, module)
	end
	if challengeType == GenericType_upvr.DeviceAccessToken then
		return Roact_upvr.createElement(DeviceAccessTokenChallenge_upvr, {
			challengeId = arg1.props.challengeId;
			challengeMetadata = challengeMetadata;
			onChallengeCompleted = function(arg1_4) -- Line 86, Named "onChallengeCompleted"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:challengeContinue(arg1_4)
			end;
			onChallengeFailed = function(arg1_5) -- Line 89, Named "onChallengeFailed"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:failSession(arg1_5)
			end;
			accountService = arg1.props.accountService;
		})
	end
	return nil
end
function any_extend_result1_upvr.clearState(arg1) -- Line 99
	arg1.props.navigation.goBack()
end
function any_extend_result1_upvr.failSession(arg1, arg2) -- Line 103
	arg1.props.onSessionFailed(arg2)
	arg1:clearState()
end
local GetFFlagEnableNativeToWebviewMiddleware_upvr = require(script.Parent.Flags.GetFFlagEnableNativeToWebviewMiddleware)
function any_extend_result1_upvr.validateChallengeAndSetState(arg1, arg2, arg3) -- Line 108
	--[[ Upvalues[4]:
		[1]: GenericType_upvr (readonly)
		[2]: GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr (readonly)
		[3]: ChallengeNativeWrapperEvent_upvr (readonly)
		[4]: GetFFlagEnableNativeToWebviewMiddleware_upvr (readonly)
	]]
	local any_toRawValue_result1 = GenericType_upvr.toRawValue(arg2)
	if arg2 == nil or arg2 == GenericType_upvr.Denied or arg3 == nil or arg3 == "" then
		if GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr() then
			local tbl_5 = {
				context = "renderFailure";
				challengeId = arg1.props.challengeId;
				challengeType = any_toRawValue_result1;
			}
			tbl_5.challengeMetadata = arg3
			arg1.props.loggingProtocol:logRobloxTelemetryEvent(ChallengeNativeWrapperEvent_upvr, {}, tbl_5)
		end
		arg1:failSession()
	else
		if canRenderNativeChallenge(arg2, arg3) then
			if GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr() then
				local tbl_3 = {
					context = "challengeTriggered";
					challengeId = arg1.props.challengeId;
					challengeType = any_toRawValue_result1;
				}
				tbl_3.challengeMetadata = arg3
				arg1.props.loggingProtocol:logRobloxTelemetryEvent(ChallengeNativeWrapperEvent_upvr, {}, tbl_3)
			end
			local tbl_4 = {}
			tbl_4.challengeType = arg2
			tbl_4.challengeMetadata = arg3
			arg1:setState(tbl_4)
			return
		end
		if GetFFlagEnableNativeToWebviewMiddleware_upvr() then
			if GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr() then
				local tbl_6 = {
					context = "webviewChallengeTriggered";
					challengeId = arg1.props.challengeId;
					challengeType = any_toRawValue_result1;
				}
				tbl_6.challengeMetadata = arg3
				arg1.props.loggingProtocol:logRobloxTelemetryEvent(ChallengeNativeWrapperEvent_upvr, {}, tbl_6)
			end
			arg1:clearState()
			arg1.props.onWebViewChallengeIssued(any_toRawValue_result1, arg3)
			return
		end
		if GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr() then
			local tbl_7 = {
				context = "renderFailure";
				challengeId = arg1.props.challengeId;
				challengeType = any_toRawValue_result1;
			}
			tbl_7.challengeMetadata = arg3
			arg1.props.loggingProtocol:logRobloxTelemetryEvent(ChallengeNativeWrapperEvent_upvr, {}, tbl_7)
		end
		arg1:failSession()
	end
end
local Promise_upvr = require(Parent.Promise)
local HttpService_upvr = game:GetService("HttpService")
local any_new_result1_upvr = require(Parent.UrlBuilder).UrlBuilder.new({
	base = require(Parent.UrlBuilder).UrlBase.APIS;
	path = "challenge/v1/continue";
})
function any_extend_result1_upvr.challengeContinue(arg1, arg2) -- Line 176
	--[[ Upvalues[6]:
		[1]: GenericType_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
		[5]: GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr (readonly)
		[6]: ChallengeNativeWrapperEvent_upvr (readonly)
	]]
	local any_toRawValue_result1_2_upvr = GenericType_upvr.toRawValue(arg1.state.challengeType)
	return Promise_upvr.new(function(arg1_6, arg2_2) -- Line 179
		--[[ Upvalues[8]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_toRawValue_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
			[5]: any_new_result1_upvr (copied, readonly)
			[6]: GenericType_upvr (copied, readonly)
			[7]: GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr (copied, readonly)
			[8]: ChallengeNativeWrapperEvent_upvr (copied, readonly)
		]]
		local tbl_2 = {}
		local tbl_8 = {
			challengeId = arg1.props.challengeId;
			challengeType = any_toRawValue_result1_2_upvr;
		}
		tbl_8.challengeMetadata = arg2
		tbl_2.postBody = HttpService_upvr:JSONEncode(tbl_8)
		local any_networkImpl_result1, any_networkImpl_result2 = arg1.props.networkImpl(any_new_result1_upvr(), "POST", tbl_2)
		return any_networkImpl_result1:andThen(function(arg1_7) -- Line 188
			--[[ Upvalues[3]:
				[1]: GenericType_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_6 (readonly)
			]]
			local responseBody = arg1_7.responseBody
			if responseBody.challengeType ~= nil and responseBody.challengeType ~= "" then
				arg1:validateChallengeAndSetState(GenericType_upvr.fromRawValue(responseBody.challengeType), responseBody.challengeMetadata)
				arg1_6()
			else
				arg1.props.onSessionCompleted()
				arg1:clearState()
				arg1_6()
			end
		end, function(arg1_8) -- Line 199
			--[[ Upvalues[6]:
				[1]: GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: ChallengeNativeWrapperEvent_upvr (copied, readonly)
				[4]: any_toRawValue_result1_2_upvr (copied, readonly)
				[5]: arg2 (copied, readonly)
				[6]: arg1_6 (readonly)
			]]
			if GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr() then
				local tbl = {
					context = "continueFailure";
					challengeId = arg1.props.challengeId;
					challengeType = any_toRawValue_result1_2_upvr;
				}
				tbl.challengeMetadata = arg2
				tbl.error = tostring(arg1_8.StatusCode)
				arg1.props.loggingProtocol:logRobloxTelemetryEvent(ChallengeNativeWrapperEvent_upvr, {}, tbl)
			end
			arg1:failSession(arg1_8)
			arg1_6()
		end)
	end)
end
local Cryo_upvr = require(Parent.Cryo)
return require(Parent.RoactServices).RoactServices.connect({
	networkImpl = require(Parent.RoactServiceTags).RoactNetworking;
	analytics = require(Parent.RoactServiceTags).RoactAnalytics;
	loggingProtocol = require(Parent.RoactServiceTags).AppLogging;
})(require(Parent.RoactRodux).connect(nil, nil)(require(Parent.RoactNavigation).withNavigation(function(arg1) -- Line 217
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, arg1.navigation.getParam("extraProps", {})))
end)))