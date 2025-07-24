-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:29
-- Luau version 6, Types version 3
-- Time taken: 0.001067 seconds

local LoggingProtocol = require(script:FindFirstAncestor("IAPExperience").Parent.LoggingProtocol)
return {
	SinglePackageUpsellShownCounter = {
		eventName = "SinglePackageUpsellShownCounter";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		lastUpdated = {2025, 5, 1};
		throttlingPercentage = 100;
		description = "Counter on all multiple package upsell shown";
		links = "";
	};
	SinglePackageUpsellModalClosedCounter = {
		eventName = "SinglePackageUpsellModalClosedCounter";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		lastUpdated = {2025, 5, 1};
		throttlingPercentage = 100;
		description = "Counter on all single package upsell modal closed";
	};
	SinglePackageUpsellModalBuyClickedCounter = {
		eventName = "SinglePackageUpsellModalBuyClickedCounter";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		lastUpdated = {2025, 5, 1};
		throttlingPercentage = 100;
		description = "Counter on all single package upsell modal buy clicked";
	};
}