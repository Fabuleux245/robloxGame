-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:32
-- Luau version 6, Types version 3
-- Time taken: 0.000733 seconds

local fireTelemetry_upvr = require(script:FindFirstAncestor("SocialLuaAnalytics").Analytics.FireEvent.fireTelemetry)
return function(arg1) -- Line 25, Named "telemetrySetup"
	--[[ Upvalues[1]:
		[1]: fireTelemetry_upvr (readonly)
	]]
	local function emitTelemetry(arg1_2, arg2) -- Line 26
		--[[ Upvalues[2]:
			[1]: fireTelemetry_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local module = {
			telemetryImpl = arg1.telemetryImpl;
		}
		local tbl = {}
		local var4 = arg1
		tbl.defaults = var4.defaultTelemetryConfig
		tbl[arg1_2.name] = arg1_2
		module.eventList = tbl
		module.loggerImpl = arg1.loggerImpl
		if arg1.getSharedInfo then
			var4 = arg1.getSharedInfo()
		else
			var4 = {}
		end
		return fireTelemetry_upvr(module)(arg1_2.name, arg2, var4, arg1_2.eventStreamCtx)
	end
	return {
		emit = emitTelemetry;
		fireAnalyticsEvent = emitTelemetry;
		getSharedInfo = arg1.getSharedInfo;
	}
end