-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:02
-- Luau version 6, Types version 3
-- Time taken: 0.000626 seconds

game:DefineFastInt("AchievementGrantedThrottleHundrethsPercent", 0)
return {
	eventName = "AchievementGranted";
	backends = {require(script:FindFirstAncestor("Achievements").Parent.LoggingProtocol).TelemetryBackends.Points};
	throttlingPercentage = game:GetFastInt("AchievementGrantedThrottleHundrethsPercent");
	lastUpdated = {24, 7, 3};
	description = "Report whenever an achievement is granted to Points with document name \"achievementgranted\"";
}