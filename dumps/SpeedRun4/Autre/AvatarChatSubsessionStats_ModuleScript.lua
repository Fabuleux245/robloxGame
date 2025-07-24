-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:24
-- Luau version 6, Types version 3
-- Time taken: 0.000427 seconds

game:DefineFastInt("AvatarChatSubsessionStatsEventThrottleHundrethsPercent", 0)
return {
	eventName = "avatarChatSubsessionStats";
	backends = {require(game:GetService("CorePackages").Workspace.Packages.LoggingProtocol).TelemetryBackends.EventIngest};
	throttlingPercentage = game:GetFastInt("AvatarChatSubsessionStatsEventThrottleHundrethsPercent");
	lastUpdated = {22, 10, 17};
	description = "Report FACS sending/receiving time per Avatar Chat session to EventIngest.";
	links = "https://roblox.atlassian.net/wiki/spaces/DA/pages/1857851197/Logging+Specs+Subsession+Analytics";
}