-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:41
-- Luau version 6, Types version 3
-- Time taken: 0.000429 seconds

game:DefineFastInt("IntervalPerformanceTrackerEventThrottleHundrethsPercent", 10000)
return {
	eventName = "luaIntervalPerformanceTrackerTelemetry";
	backends = {require(script:FindFirstAncestor("IntervalPerformanceTracker").Parent.LoggingProtocol).TelemetryBackends.Points};
	throttlingPercentage = game:GetFastInt("IntervalPerformanceTrackerEventThrottleHundrethsPercent");
	lastUpdated = {24, 1, 10};
	description = "Report lua performance tracking metrics to Grafana.";
	links = "https://roblox.atlassian.net/wiki/spaces/USER/pages/2379481365/Parallelize+work+through+the+new+multi-threading+API";
}