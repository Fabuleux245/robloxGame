-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:27
-- Luau version 6, Types version 3
-- Time taken: 0.001270 seconds

local LoggingProtocol = require(script:FindFirstAncestor("IAPExperience").Parent.LoggingProtocol)
return {
	MultiplePackageUpsellShownCounter = {
		eventName = "MultiplePackageUpsellShownCounter";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		lastUpdated = {2025, 5, 1};
		throttlingPercentage = 100;
		description = "Counter on all multiple package upsell shown";
		links = "";
	};
	MultiplePackageUpsellSelectedCounter = {
		eventName = "MultiplePackageUpsellSelectedCounter";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		lastUpdated = {2025, 5, 1};
		throttlingPercentage = 100;
		description = "Counter on all multiple package upsell selections";
	};
	MultiplePackageUpsellModalClosedCounter = {
		eventName = "MultiplePackageUpsellModalClosedCounter";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		lastUpdated = {2025, 5, 1};
		throttlingPercentage = 100;
		description = "Counter on all multiple package upsell modal closed";
	};
	MultiplePackageUpsellModalBuyClickedCounter = {
		eventName = "MultiplePackageUpsellModalBuyClickedCounter";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		lastUpdated = {2025, 5, 1};
		throttlingPercentage = 100;
		description = "Counter on all multiple package upsell modal buy clicked";
	};
}