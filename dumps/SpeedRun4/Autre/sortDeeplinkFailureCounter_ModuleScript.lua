-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:05
-- Luau version 6, Types version 3
-- Time taken: 0.000403 seconds

game:DefineFastInt("SortDeeplinkFailureEventThrottleHundrethsPercent", 10000)
return {
	eventName = "SortDeeplinkFailedCounter";
	backends = {require(script:FindFirstAncestor("DiscoveryAnalytics").Parent.LoggingProtocol).TelemetryBackends.Counter};
	throttlingPercentage = game:GetFastInt("SortDeeplinkFailureEventThrottleHundrethsPercent");
	lastUpdated = {24, 10, 18};
	description = "Tracks failures to resolve sort deeplinks";
}