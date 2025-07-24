-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:07
-- Luau version 6, Types version 3
-- Time taken: 0.001517 seconds

local SocialLuaAnalytics = require(script.Parent.Parent.Parent.SocialLuaAnalytics)
local fireEventStream_upvr = SocialLuaAnalytics.Analytics.FireEvent.fireEventStream
local EventStreamActionList_upvr = require(script.Parent.EventStreamActionList)
local fireDiagCounter_upvr = SocialLuaAnalytics.Analytics.FireEvent.fireDiagCounter
local DiagActionList_upvr = require(script.Parent.DiagActionList)
local fireTelemetry_upvr = SocialLuaAnalytics.Analytics.FireEvent.fireTelemetry
local TelemetryActionList_upvr = require(script.Parent.TelemetryActionList)
return function(arg1) -- Line 15
	--[[ Upvalues[6]:
		[1]: fireEventStream_upvr (readonly)
		[2]: EventStreamActionList_upvr (readonly)
		[3]: fireDiagCounter_upvr (readonly)
		[4]: DiagActionList_upvr (readonly)
		[5]: fireTelemetry_upvr (readonly)
		[6]: TelemetryActionList_upvr (readonly)
	]]
	local var5_result1_upvr = fireDiagCounter_upvr({
		diagImpl = arg1.analytics.Diag;
		eventList = DiagActionList_upvr;
	})
	local fireTelemetry_upvr_result1_upvr = fireTelemetry_upvr({
		telemetryImpl = arg1.analytics.Telemetry;
		eventList = TelemetryActionList_upvr;
	})
	local var3_result1_upvr = fireEventStream_upvr({
		eventStreamImpl = arg1.analytics.EventStream;
		eventList = EventStreamActionList_upvr;
		infoForAllEvents = arg1.infoForAllEvents;
	})
	return function(arg1_2, arg2) -- Line 35
		--[[ Upvalues[6]:
			[1]: DiagActionList_upvr (copied, readonly)
			[2]: var5_result1_upvr (readonly)
			[3]: TelemetryActionList_upvr (copied, readonly)
			[4]: fireTelemetry_upvr_result1_upvr (readonly)
			[5]: EventStreamActionList_upvr (copied, readonly)
			[6]: var3_result1_upvr (readonly)
		]]
		if DiagActionList_upvr[arg1_2] then
			var5_result1_upvr(arg1_2)
		end
		if TelemetryActionList_upvr[arg1_2] then
			fireTelemetry_upvr_result1_upvr(arg1_2, arg2)
		end
		if EventStreamActionList_upvr[arg1_2] then
			var3_result1_upvr(arg1_2, arg2)
		end
	end
end