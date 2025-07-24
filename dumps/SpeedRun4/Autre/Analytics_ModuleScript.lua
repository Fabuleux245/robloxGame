-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:03
-- Luau version 6, Types version 3
-- Time taken: 0.000681 seconds

local SocialLuaAnalytics = require(game:GetService("CorePackages").Workspace.Packages.SocialLuaAnalytics)
return {
	Analytics = SocialLuaAnalytics.Analytics.AnalyticsFactory.setUpAnalyticsFactory({
		eventLists = {
			EventStream = require(script.EventStreamActionList);
			Diag = nil;
		};
		analyticsImpl = {
			EventStream = SocialLuaAnalytics.Analytics.DefaultAnalyticsService.EventStream;
			Diag = nil;
		};
	});
	useAnalytics = require(script.useAnalytics);
}