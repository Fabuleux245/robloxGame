-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:13
-- Luau version 6, Types version 3
-- Time taken: 0.000989 seconds

local AuthAnalytics = script:FindFirstAncestor("AuthAnalytics")
local LoginStatus_upvr = require(AuthAnalytics.Parent.RobloxAppEnums).LoginStatus
local TelemetryConfigs_upvr = require(AuthAnalytics.RobloxTelemetry.TelemetryConfigs)
return function(arg1, arg2, arg3) -- Line 7
	--[[ Upvalues[2]:
		[1]: LoginStatus_upvr (readonly)
		[2]: TelemetryConfigs_upvr (readonly)
	]]
	return function(arg1_2) -- Line 10
		--[[ Upvalues[5]:
			[1]: LoginStatus_upvr (copied, readonly)
			[2]: arg3 (readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: TelemetryConfigs_upvr (copied, readonly)
		]]
		if arg1_2:getState().AuthenticationStatus.status == LoginStatus_upvr.LOGGED_IN then
		else
			arg3(arg1):andThen(function(arg1_3) -- Line 23
				--[[ Upvalues[2]:
					[1]: arg2 (copied, readonly)
					[2]: TelemetryConfigs_upvr (copied, readonly)
				]]
				arg2:logRobloxTelemetryCounter(TelemetryConfigs_upvr.ValidCookieForNoCachedUserTelemetryConfig, 1)
			end):catch(function(arg1_4) -- Line 31
			end)
		end
	end
end