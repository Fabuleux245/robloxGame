-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:28
-- Luau version 6, Types version 3
-- Time taken: 0.003183 seconds

local HttpService_upvr = game:GetService("HttpService")
local GenericChallenges = script:FindFirstAncestor("GenericChallenges")
local Parent = GenericChallenges.Parent
local React_upvr = require(Parent.React)
game:DefineFastInt("DeviceIntegrityNativeTimeoutMilliseconds", 450)
function constructAccountServiceParams(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local module = {}
	module.requestHash = arg1
	return HttpService_upvr:JSONEncode(module)
end
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local AppLogging_upvr = require(Parent.RoactServiceTags).AppLogging
local useEffect_upvr = React_upvr.useEffect
local DeviceIntegrityChallengeEvent_upvr = require(script.Parent.DeviceIntegrityChallengeEvent)
local ChallengeEventConstants_upvr = require(GenericChallenges.Utils.ChallengeEventConstants)
local GetFFlagEnableNewDeviceIntegrityFailureHandling_upvr = require(GenericChallenges.Middleware.Flags.GetFFlagEnableNewDeviceIntegrityFailureHandling)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local GetFFlagEnableTransparentDeviceIntegrityChallengeSpinner_upvr = require(GenericChallenges.Middleware.Flags.GetFFlagEnableTransparentDeviceIntegrityChallengeSpinner)
local LoadingSpinner_upvr = require(Parent.UIBlox).App.Loading.LoadingSpinner
return function(arg1) -- Line 52, Named "DeviceIntegrityTokenChallenge"
	--[[ Upvalues[11]:
		[1]: useRoactService_upvr (readonly)
		[2]: AppLogging_upvr (readonly)
		[3]: useEffect_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: DeviceIntegrityChallengeEvent_upvr (readonly)
		[6]: ChallengeEventConstants_upvr (readonly)
		[7]: GetFFlagEnableNewDeviceIntegrityFailureHandling_upvr (readonly)
		[8]: useSelector_upvr (readonly)
		[9]: GetFFlagEnableTransparentDeviceIntegrityChallengeSpinner_upvr (readonly)
		[10]: React_upvr (readonly)
		[11]: LoadingSpinner_upvr (readonly)
	]]
	local var6_result1_upvr = useRoactService_upvr(AppLogging_upvr)
	useEffect_upvr(function() -- Line 55
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var6_result1_upvr (readonly)
			[4]: DeviceIntegrityChallengeEvent_upvr (copied, readonly)
			[5]: ChallengeEventConstants_upvr (copied, readonly)
			[6]: GetFFlagEnableNewDeviceIntegrityFailureHandling_upvr (copied, readonly)
		]]
		local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(arg1.challengeMetadata)
		var6_result1_upvr:logRobloxTelemetryEvent(DeviceIntegrityChallengeEvent_upvr, {}, {
			context = ChallengeEventConstants_upvr.ChallengeLifecycleEventConstants.ChallengeInitialized;
			challengeId = arg1.challengeId;
			integrityType = any_JSONDecode_result1.integrityType;
		})
		local accountService = arg1.accountService
		if accountService and accountService:DeviceIntegrityAvailable() then
			local var20
			if GetFFlagEnableNewDeviceIntegrityFailureHandling_upvr() then
				local any_GetDeviceIntegrityTokenYield_result1 = accountService:GetDeviceIntegrityTokenYield(HttpService_upvr:JSONEncode({
					requestHash = any_JSONDecode_result1.requestHash;
					timeoutMillis = game:GetFastInt("DeviceIntegrityNativeTimeoutMilliseconds");
				}))
				if any_GetDeviceIntegrityTokenYield_result1 == nil or any_GetDeviceIntegrityTokenYield_result1 == "" then
					var6_result1_upvr:logRobloxTelemetryEvent(DeviceIntegrityChallengeEvent_upvr, {}, {
						context = ChallengeEventConstants_upvr.ChallengeLifecycleEventConstants.ChallengeInvalidated;
						challengeId = arg1.challengeId;
						integrityType = any_JSONDecode_result1.integrityType;
					})
					arg1.onChallengeCompleted(HttpService_upvr:JSONEncode({
						redemptionToken = "";
						integrityType = any_JSONDecode_result1.integrityType;
					}))
					return
				end
				var20 = HttpService_upvr:JSONDecode(any_GetDeviceIntegrityTokenYield_result1)
			else
				var20 = HttpService_upvr:JSONDecode(accountService:GetDeviceIntegrityTokenYield(constructAccountServiceParams(any_JSONDecode_result1.requestHash)))
			end
			arg1.onChallengeCompleted(HttpService_upvr:JSONEncode({
				redemptionToken = var20.token;
				integrityType = any_JSONDecode_result1.integrityType;
			}))
			var6_result1_upvr:logRobloxTelemetryEvent(DeviceIntegrityChallengeEvent_upvr, {}, {
				context = ChallengeEventConstants_upvr.ChallengeLifecycleEventConstants.ChallengeCompleted;
				challengeId = arg1.challengeId;
				integrityType = any_JSONDecode_result1.integrityType;
				result = var20.result;
			})
		else
			if GetFFlagEnableNewDeviceIntegrityFailureHandling_upvr() then
				var6_result1_upvr:logRobloxTelemetryEvent(DeviceIntegrityChallengeEvent_upvr, {}, {
					context = ChallengeEventConstants_upvr.ChallengeLifecycleEventConstants.ChallengeInvalidated;
					challengeId = arg1.challengeId;
					integrityType = any_JSONDecode_result1.integrityType;
				})
				arg1.onChallengeCompleted(HttpService_upvr:JSONEncode({
					redemptionToken = "";
					integrityType = any_JSONDecode_result1.integrityType;
				}))
				return
			end
			arg1.onChallengeFailed()
			var6_result1_upvr:logRobloxTelemetryEvent(DeviceIntegrityChallengeEvent_upvr, {}, {
				context = ChallengeEventConstants_upvr.ChallengeLifecycleEventConstants.ChallengeInvalidated;
				challengeId = arg1.challengeId;
				integrityType = any_JSONDecode_result1.integrityType;
			})
		end
	end, {})
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_2) -- Line 129
		return {
			screenSize = arg1_2.ScreenSize;
		}
	end)
	local udim2 = UDim2.fromOffset(useSelector_upvr_result1.screenSize.X, useSelector_upvr_result1.screenSize.Y)
	if GetFFlagEnableTransparentDeviceIntegrityChallengeSpinner_upvr() then
		return React_upvr.createElement("Frame", {
			Size = udim2;
			BackgroundTransparency = 1;
			Active = true;
		}, {
			Spinner = React_upvr.createElement(LoadingSpinner_upvr, {
				anchorPoint = Vector2.new(0.5, 0.5);
				position = UDim2.fromScale(0.5, 0.5);
				size = UDim2.fromOffset(48, 48);
			});
		})
	end
	return React_upvr.createElement("Frame", {
		Size = udim2;
		BackgroundTransparency = 0.2;
		Active = true;
	}, {
		Spinner = React_upvr.createElement(LoadingSpinner_upvr, {
			anchorPoint = Vector2.new(0.5, 0.5);
			position = UDim2.fromScale(0.5, 0.5);
			size = UDim2.fromOffset(48, 48);
		});
	})
end