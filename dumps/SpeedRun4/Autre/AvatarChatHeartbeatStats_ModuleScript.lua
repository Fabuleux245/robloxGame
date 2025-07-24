-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:23
-- Luau version 6, Types version 3
-- Time taken: 0.000430 seconds

game:DefineFastInt("AvatarChatHeartbeatStatsEventThrottleHundrethsPercent", 0)
return {
	eventName = "avatarChatHeartbeatStats";
	backends = {require(game:GetService("CorePackages").Workspace.Packages.LoggingProtocol).TelemetryBackends.Points};
	throttlingPercentage = game:GetFastInt("AvatarChatHeartbeatStatsEventThrottleHundrethsPercent");
	lastUpdated = {23, 3, 15};
	description = "Report Avatar Chat session heartbeat to EventIngest.";
	links = "https://roblox.atlassian.net/wiki/spaces/DA/pages/2025358355/Logging+Specs+Avatar+Chat+Heartbeat+Stats";
}