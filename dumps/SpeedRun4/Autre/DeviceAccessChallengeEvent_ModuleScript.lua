-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:26
-- Luau version 6, Types version 3
-- Time taken: 0.000659 seconds

game:DefineFastInt("LuaAppChallengeDeviceAccessEventThrottlingPercent", 10000)
return {
	eventName = "accountSecurityChallengeDeviceAccessTokenEvent";
	backends = {require(script:FindFirstAncestor("GenericChallenges").Parent.LoggingProtocol).TelemetryBackends.EventIngest};
	throttlingPercentage = game:GetFastInt("LuaAppChallengeDeviceAccessEventThrottlingPercent");
	lastUpdated = {24, 1, 22};
	description = "Tracks lifecycle events for the Device Access GCS challenge";
	links = "https://roblox.atlassian.net/wiki/spaces/BaS/pages/2184872709/Bypassing+Challenges+for+Xbox+PS+Quest+etc+Requests#Event-Tracking";
}