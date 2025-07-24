-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:10
-- Luau version 6, Types version 3
-- Time taken: 0.000335 seconds

local SocialLuaAnalytics = require(script:FindFirstAncestor("TrustedContacts").Parent.SocialLuaAnalytics)
return SocialLuaAnalytics.Analytics.AnalyticsFactory.setUpAnalyticsFactory({
	eventLists = {
		Telemetry = require(script.Parent.TelemetryActionList);
	};
	analyticsImpl = {
		Telemetry = SocialLuaAnalytics.Analytics.DefaultAnalyticsService.Telemetry;
	};
})