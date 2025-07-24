-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:54
-- Luau version 6, Types version 3
-- Time taken: 0.000616 seconds

return {
	eventName = "SocialStopwatchTelementy";
	backends = {require(script:FindFirstAncestor("SocialStopwatch").Parent.LoggingProtocol).default.TelemetryBackends.Points};
	throttlingPercentage = game:DefineFastInt("SocialStopwatchTelementyThrottleHundrethsPercent", 10000);
	lastUpdated = {24, 5, 6};
	description = "Report errors with using the Social Time Stopwatch Library.";
	links = "";
}