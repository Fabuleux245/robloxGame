-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:28
-- Luau version 6, Types version 3
-- Time taken: 0.000537 seconds

local LoggingProtocol = require(script:FindFirstAncestor("IAPExperience").Parent.LoggingProtocol)
return {
	PurchaseErrorPromptShownCounter = {
		eventName = "PurchaseErrorPromptShownCounter";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		lastUpdated = {2025, 5, 20};
		throttlingPercentage = 100;
		description = "Counter on all purchase error prompt shown";
		links = "";
	};
	EconomicRestrictionsPromptShownCounter = {
		eventName = "EconomicRestrictionsPromptShownCounter";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		lastUpdated = {2025, 5, 20};
		throttlingPercentage = 100;
		description = "Counter on all economic restrictions prompt shown";
		links = "";
	};
}