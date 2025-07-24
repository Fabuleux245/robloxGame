-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:20
-- Luau version 6, Types version 3
-- Time taken: 0.001058 seconds

local LoggingProtocol = require(script.Parent.Parent.LoggingProtocol)
local default_upvr = LoggingProtocol.default
local tbl_2_upvr = {
	eventName = "AdMenuEvent";
	backends = {LoggingProtocol.TelemetryBackends.Counter};
	lastUpdated = {24, 29, 10};
	description = "        This event is fired when a user interacts with the ad menu.\n    ";
	links = "https://roblox.atlassian.net/browse/ADS-6383";
}
local tbl_3_upvr = {
	eventName = "WhyThisAdEvent";
	backends = {LoggingProtocol.TelemetryBackends.Counter};
	lastUpdated = {24, 29, 10};
	description = "        This event is fired when a user interacts with the \"Why this ad?\" button.\n    ";
	links = "https://roblox.atlassian.net/browse/ADS-6383";
}
local tbl_4_upvr = {
	eventName = "ReportAdEvent";
	backends = {LoggingProtocol.TelemetryBackends.Counter};
	lastUpdated = {24, 29, 10};
	description = "        This event is fired when a user interacts with the \"Report this ad\" button.\n    ";
	links = "https://roblox.atlassian.net/browse/ADS-6383";
}
return {
	logAdMenuEvent = function(arg1) -- Line 50, Named "logAdMenuEvent"
		--[[ Upvalues[2]:
			[1]: default_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
		]]
		local tbl = {}
		tbl.state = arg1
		default_upvr:logRobloxTelemetryCounter(tbl_2_upvr, 1, tbl)
	end;
	logWhyThisAdEvent = function() -- Line 56, Named "logWhyThisAdEvent"
		--[[ Upvalues[2]:
			[1]: default_upvr (readonly)
			[2]: tbl_3_upvr (readonly)
		]]
		default_upvr:logRobloxTelemetryCounter(tbl_3_upvr, 1)
	end;
	logReportAdEvent = function(arg1) -- Line 66, Named "logReportAdEvent"
		--[[ Upvalues[2]:
			[1]: default_upvr (readonly)
			[2]: tbl_4_upvr (readonly)
		]]
		local tbl_5 = {}
		tbl_5.state = arg1
		default_upvr:logRobloxTelemetryCounter(tbl_4_upvr, 1, tbl_5)
	end;
}