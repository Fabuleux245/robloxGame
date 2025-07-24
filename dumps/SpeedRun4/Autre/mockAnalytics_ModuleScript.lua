-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:35
-- Luau version 6, Types version 3
-- Time taken: 0.000817 seconds

return function(arg1) -- Line 1
	return {
		Diag = {
			reportCounter = arg1.fn();
			reportStats = arg1.fn();
		};
		EventStream = {
			setRBXEventStream = arg1.fn();
			sendEventDeferred = arg1.fn();
		};
		Telemetry = {
			logRobloxTelemetryCounter = arg1.fn();
			logRobloxTelemetryEvent = arg1.fn();
			logRobloxTelemetryStat = arg1.fn();
			TelemetryBackends = {
				Points = "Points";
				Stats = "RobloxTelemetryStat";
				Counters = "RobloxTelemetryCounter";
				EventIngest = "EventIngest";
			};
		};
	}
end