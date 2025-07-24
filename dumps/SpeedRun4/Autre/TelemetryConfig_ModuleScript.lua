-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:52
-- Luau version 6, Types version 3
-- Time taken: 0.000403 seconds

game:DefineFastInt("PremiumSponsoredExperienceVideoThrottleHundredthsPercent", 10000)
return {
	eventName = "PremiumSponsoredExperienceVideo";
	backends = {require(script.Parent.Parent.LoggingProtocol).TelemetryBackends.EventIngest};
	throttlingPercentage = game:GetFastInt("PremiumSponsoredExperienceVideoThrottleHundredthsPercent");
	lastUpdated = {24, 5, 13};
	description = "Reports when a user watches a sponsored video in a premium experience.";
	links = "https://github.rbx.com/Roblox/proto-schemas/pull/2279";
}