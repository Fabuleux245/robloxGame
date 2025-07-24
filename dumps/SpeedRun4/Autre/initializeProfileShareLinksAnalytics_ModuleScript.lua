-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:59
-- Luau version 6, Types version 3
-- Time taken: 0.000856 seconds

local EventIngestService = game:GetService("EventIngestService")
local SocialLuaAnalytics = require(script:FindFirstAncestor("ProfileShareLinks").Parent.SocialLuaAnalytics)
return SocialLuaAnalytics.Analytics.AnalyticsFactory.setUpAnalyticsFactory({
	eventLists = {
		EventStream = require(script.Parent.EventStreamActionList);
		Telemetry = require(script.Parent.TelemetryActionList);
	};
	analyticsImpl = {
		EventStream = {
			sendEventDeferred = require(script.Parent.setupSendEventDeferred)(EventIngestService);
			setRBXEventStream = require(script.Parent.setupSetRbxEventStream)(EventIngestService);
		};
		Telemetry = SocialLuaAnalytics.Analytics.DefaultAnalyticsService.Telemetry;
	};
})