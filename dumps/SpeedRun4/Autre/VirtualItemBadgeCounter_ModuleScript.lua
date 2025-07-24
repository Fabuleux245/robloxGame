-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:29
-- Luau version 6, Types version 3
-- Time taken: 0.000633 seconds

return {
	VirtualItemBadgeShownCounter = {
		eventName = "VirtualItemBadgeShownCounter";
		backends = {require(script:FindFirstAncestor("IAPExperience").Parent.LoggingProtocol).TelemetryBackends.Counter};
		lastUpdated = {2025, 5, 15};
		throttlingPercentage = 100;
		description = "Counter on all virtual item badge shown";
		links = "";
	};
}