-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:12
-- Luau version 6, Types version 3
-- Time taken: 0.003040 seconds

local fireEventStream_upvr = require(script.Parent.fireEventStream)
local fireDiag_upvr = require(script.Parent.fireDiag)
local fireTelemetry_upvr = require(script.Parent.fireTelemetry)
local FFlagTCAnalytics_upvr = require(script:FindFirstAncestor("SocialLuaAnalytics").Parent.SharedFlags).FFlagTCAnalytics
local function setupFireEvent_upvr(arg1, arg2) -- Line 28, Named "setupFireEvent"
	--[[ Upvalues[4]:
		[1]: fireEventStream_upvr (readonly)
		[2]: fireDiag_upvr (readonly)
		[3]: fireTelemetry_upvr (readonly)
		[4]: FFlagTCAnalytics_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5_upvr
	if arg1.analytics.EventStream and arg2.EventStream then
		var5_upvr = fireEventStream_upvr
		var5_upvr = var5_upvr({
			eventStreamImpl = arg1.analytics.EventStream;
			eventList = arg2.EventStream;
			infoForAllEvents = arg1.infoForAllEvents;
			getInfoForAllEvents = arg1.getInfoForAllEvents;
			loggerImpl = arg1.loggerImpl;
		})
	else
		var5_upvr = nil
	end
	local var7_upvr
	if arg1.analytics.Diag and arg2.Diag then
		var7_upvr = fireDiag_upvr
		var7_upvr = var7_upvr({
			diagImpl = arg1.analytics.Diag;
			eventList = arg2.Diag;
			loggerImpl = arg1.loggerImpl;
		})
	else
		var7_upvr = nil
	end
	if arg1.analytics.Telemetry and arg2.Telemetry then
		local tbl = {
			telemetryImpl = arg1.analytics.Telemetry;
		}
		local Telemetry = arg2.Telemetry
		tbl.eventList = Telemetry
		if FFlagTCAnalytics_upvr then
			Telemetry = arg1.getInfoForAllEvents
		else
			Telemetry = nil
		end
		tbl.getInfoForAllEvents = Telemetry
		tbl.loggerImpl = arg1.loggerImpl
	else
	end
	local var12_upvr
	return function(arg1_2, arg2_2) -- Line 56
		--[[ Upvalues[4]:
			[1]: var7_upvr (readonly)
			[2]: arg2 (readonly)
			[3]: var5_upvr (readonly)
			[4]: var12_upvr (readonly)
		]]
		if var7_upvr and arg2.Diag and arg2.Diag[arg1_2] then
			var7_upvr(arg1_2, arg2_2)
		end
		if var5_upvr and arg2.EventStream and arg2.EventStream[arg1_2] then
			var5_upvr(arg1_2, arg2_2)
		end
		if var12_upvr and arg2.Telemetry and arg2.Telemetry[arg1_2] then
			var12_upvr(arg1_2, arg2_2)
		end
		return arg1_2, arg2_2
	end
end
return function(arg1) -- Line 77, Named "createFireEvent"
	--[[ Upvalues[1]:
		[1]: setupFireEvent_upvr (readonly)
	]]
	return function(arg1_3) -- Line 78
		--[[ Upvalues[2]:
			[1]: setupFireEvent_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return setupFireEvent_upvr(arg1_3, arg1)
	end
end