-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:27
-- Luau version 6, Types version 3
-- Time taken: 0.003032 seconds

local GenericChallenges = script:FindFirstAncestor("GenericChallenges")
local Parent = GenericChallenges.Parent
local React = require(Parent.React)
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local AppLogging_upvr = require(Parent.RoactServiceTags).AppLogging
local HttpService_upvr = game:GetService("HttpService")
local GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr = require(GenericChallenges.Middleware.Flags.GetFFlagLuaAppChallengeMoreTelemetryEnabled)
local useState_upvr = React.useState
local useEffect_upvr = React.useEffect
local DeviceAccessChallengeEvent_upvr = require(script.Parent.DeviceAccessChallengeEvent)
local ChallengeEventConstants_upvr = require(GenericChallenges.Utils.ChallengeEventConstants)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local Roact_upvr = require(Parent.Roact)
local LoadingSpinner_upvr = require(Parent.UIBlox).App.Loading.LoadingSpinner
local RoactNavigation_upvr = require(Parent.RoactNavigation)
return function(arg1) -- Line 32, Named "DeviceAccessTokenChallenge"
	--[[ Upvalues[12]:
		[1]: useRoactService_upvr (readonly)
		[2]: AppLogging_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr (readonly)
		[5]: useState_upvr (readonly)
		[6]: useEffect_upvr (readonly)
		[7]: DeviceAccessChallengeEvent_upvr (readonly)
		[8]: ChallengeEventConstants_upvr (readonly)
		[9]: useSelector_upvr (readonly)
		[10]: Roact_upvr (readonly)
		[11]: LoadingSpinner_upvr (readonly)
		[12]: RoactNavigation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var4_result1_upvr = useRoactService_upvr(AppLogging_upvr)
	local var17_upvw
	local var18_upvw
	local any_JSONDecode_result1_upvr = HttpService_upvr:JSONDecode(arg1.challengeMetadata)
	local var20_upvw
	if GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr() then
		local var8_result1, var8_result2 = useState_upvr(false)
		var20_upvw = var8_result1
		var17_upvw = var8_result2
		local var8_result1_upvw, var8_result2_2 = useState_upvr(false)
		var18_upvw = var8_result2_2
	end
	useEffect_upvr(function() -- Line 44
		--[[ Upvalues[9]:
			[1]: var4_result1_upvr (readonly)
			[2]: DeviceAccessChallengeEvent_upvr (copied, readonly)
			[3]: ChallengeEventConstants_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: any_JSONDecode_result1_upvr (readonly)
			[6]: HttpService_upvr (copied, readonly)
			[7]: GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr (copied, readonly)
			[8]: var17_upvw (read and write)
			[9]: var18_upvw (read and write)
		]]
		var4_result1_upvr:logRobloxTelemetryEvent(DeviceAccessChallengeEvent_upvr, {}, {
			context = ChallengeEventConstants_upvr.ChallengeLifecycleEventConstants.ChallengeInitialized;
			challengeId = arg1.challengeId;
			tokenType = any_JSONDecode_result1_upvr.tokenType;
		})
		local accountService = arg1.accountService
		local function INLINED() -- Internal function, doesn't exist in bytecode
			local errorCode = any_JSONDecode_result1.errorCode
			local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(accountService:GetDeviceAccessToken())
			return errorCode == nil
		end
		if accountService and accountService:DeviceAccessTokenAvailable() and (INLINED() or errorCode == "") then
			any_JSONDecode_result1.accessToken.tokenType = any_JSONDecode_result1_upvr.tokenType
			if GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr() then
				var17_upvw(true)
			end
			arg1.onChallengeCompleted(HttpService_upvr:JSONEncode(any_JSONDecode_result1.accessToken))
			var4_result1_upvr:logRobloxTelemetryEvent(DeviceAccessChallengeEvent_upvr, {}, {
				context = ChallengeEventConstants_upvr.ChallengeLifecycleEventConstants.ChallengeCompleted;
				challengeId = arg1.challengeId;
				tokenType = any_JSONDecode_result1_upvr.tokenType;
			})
		else
			if GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr() then
				var18_upvw(true)
			end
			arg1.onChallengeFailed(errorCode)
			var4_result1_upvr:logRobloxTelemetryEvent(DeviceAccessChallengeEvent_upvr, {}, {
				context = ChallengeEventConstants_upvr.ChallengeLifecycleEventConstants.ChallengeInvalidated;
				challengeId = arg1.challengeId;
				tokenType = any_JSONDecode_result1_upvr.tokenType;
				errorCode = errorCode;
			})
		end
	end, {})
	local var12_result1 = useSelector_upvr(function(arg1_2) -- Line 84
		return {
			screenSize = arg1_2.ScreenSize;
		}
	end)
	local module = {}
	local any_createElement_result1 = Roact_upvr.createElement(LoadingSpinner_upvr, {
		anchorPoint = Vector2.new(0.5, 0.5);
		position = UDim2.fromScale(0.5, 0.5);
		size = UDim2.fromOffset(48, 48);
	})
	module.Spinner = any_createElement_result1
	if GetFFlagLuaAppChallengeMoreTelemetryEnabled_upvr() then
		any_createElement_result1 = Roact_upvr.createElement
		any_createElement_result1 = any_createElement_result1(RoactNavigation_upvr.NavigationEvents, {
			onWillBlur = function() -- Line 104, Named "onWillBlur"
				--[[ Upvalues[7]:
					[1]: var20_upvw (read and write)
					[2]: var8_result1_upvw (read and write)
					[3]: var4_result1_upvr (readonly)
					[4]: DeviceAccessChallengeEvent_upvr (copied, readonly)
					[5]: ChallengeEventConstants_upvr (copied, readonly)
					[6]: arg1 (readonly)
					[7]: any_JSONDecode_result1_upvr (readonly)
				]]
				if not var20_upvw and not var8_result1_upvw then
					var4_result1_upvr:logRobloxTelemetryEvent(DeviceAccessChallengeEvent_upvr, {}, {
						context = ChallengeEventConstants_upvr.ChallengeLifecycleEventConstants.ChallengeAbandoned;
						challengeId = arg1.challengeId;
						tokenType = any_JSONDecode_result1_upvr.tokenType;
					})
				end
			end;
		})
	else
		any_createElement_result1 = nil
	end
	module.NavigationEvents = any_createElement_result1
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.fromOffset(var12_result1.screenSize.X, var12_result1.screenSize.Y);
		BackgroundTransparency = 0.2;
		Active = true;
	}, module)
end