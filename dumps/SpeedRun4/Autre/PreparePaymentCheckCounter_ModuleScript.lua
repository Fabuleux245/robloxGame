-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:28
-- Luau version 6, Types version 3
-- Time taken: 0.000494 seconds

return {
	eventName = "PreparePaymentCheckCounter";
	backends = {require(script:FindFirstAncestor("IAPExperience").Parent.LoggingProtocol).TelemetryBackends.Counter};
	lastUpdated = {2024, 9, 27};
	throttlingPercentage = 100;
	description = "Counter on all preparePayment check";
	links = "";
}