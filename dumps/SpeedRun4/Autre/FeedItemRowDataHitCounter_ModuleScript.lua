-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:00
-- Luau version 6, Types version 3
-- Time taken: 0.000568 seconds

return {
	eventName = "feedItemRowDataHitCounter";
	backends = {require(script:FindFirstAncestor("GameCollections").Parent.LoggingProtocol).TelemetryBackends.Counter};
	throttlingPercentage = require(script.Parent.FIntFeedItemRowDataCounterThrottle);
	lastUpdated = {24, 5, 29};
	description = "Count the number of times feed item row data is accessible when game impression is sent";
}