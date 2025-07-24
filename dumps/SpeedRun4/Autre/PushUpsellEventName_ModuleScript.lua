-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:23
-- Luau version 6, Types version 3
-- Time taken: 0.000672 seconds

game:DefineFastInt("LuaPushUpsellEventThrottleHundrethsPercent", 10000)
return {
	eventName = require(script.Parent.Parent.ModalEventConstants).OptInPushUpsellEventName;
	backends = {require(script:FindFirstAncestor("NotificationsUpsell").Parent.LoggingProtocol).TelemetryBackends.EventIngest};
	throttlingPercentage = game:GetFastInt("LuaPushUpsellEventThrottleHundrethsPercent");
	lastUpdated = {24, 6, 30};
	description = "Tracks events related to push notifications upsell modal";
}