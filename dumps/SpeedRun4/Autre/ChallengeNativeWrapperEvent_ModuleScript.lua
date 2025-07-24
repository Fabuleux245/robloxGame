-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:24
-- Luau version 6, Types version 3
-- Time taken: 0.000491 seconds

game:DefineFastInt("LuaAppChallengeNativeWrapperEventThrottleHundredthsPercent", 10000)
return {
	eventName = "accountSecurityChallengeNativeWrapperEvent";
	backends = {require(script:FindFirstAncestor("GenericChallenges").Parent.LoggingProtocol).TelemetryBackends.EventIngest};
	throttlingPercentage = game:GetFastInt("LuaAppChallengeNativeWrapperEventThrottleHundredthsPercent");
	lastUpdated = {24, 4, 17};
	description = "Tracks lifecycle events for Lua GCS challenges";
	links = "https://roblox.atlassian.net/wiki/spaces/BaS/pages/2184872709/Bypassing+Challenges+for+Xbox+PS+Quest+etc+Requests#Event-Tracking";
}