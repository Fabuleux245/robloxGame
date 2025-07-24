-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:14
-- Luau version 6, Types version 3
-- Time taken: 0.000678 seconds

local LoggingProtocol = require(script:FindFirstAncestor("IAPExperience").Parent.LoggingProtocol)
game:DefineFastInt("InGameRobuxUpsellEventThrottleHundredthsPercent", 0)
return {
	eventName = "InGameRobuxUpsellEvent";
	backends = {LoggingProtocol.TelemetryBackends.Points, LoggingProtocol.TelemetryBackends.EventIngest};
	throttlingPercentage = game:GetFastInt("InGameRobuxUpsellEventThrottleHundredthsPercent");
	lastUpdated = {2024, 8, 22};
	description = "Data points on all InGameRobuxUpsell events.";
	links = "https://roblox.atlassian.net/wiki/spaces/PAY/pages/1823605171/Robux+Upsell+InGame";
}