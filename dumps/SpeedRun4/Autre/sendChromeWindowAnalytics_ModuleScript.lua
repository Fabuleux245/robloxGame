-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:52
-- Luau version 6, Types version 3
-- Time taken: 0.000748 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local LoggingProtocol = require(Songbird.Parent.LoggingProtocol)
local tbl_upvr = {
	eventName = "NowPlayingChromeWindowAnalytics";
	backends = {LoggingProtocol.TelemetryBackends.EventIngest};
	throttlingPercentage = require(Songbird.Flags.getFIntSongbirdTelemetryThrottle)();
	lastUpdated = {24, 12, 10};
	description = " Now Playing Chrome Window UI related analytics ";
	links = "https://roblox.atlassian.net/wiki/x/I4Fcqw";
}
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local Cryo_upvr = require(Songbird.Parent.Cryo)
local default_upvr = LoggingProtocol.default
return function(arg1) -- Line 30, Named "sendChromeWindowAnalytics"
	--[[ Upvalues[4]:
		[1]: RbxAnalyticsService_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: default_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	default_upvr:logRobloxTelemetryEvent(tbl_upvr, nil, Cryo_upvr.Dictionary.join(arg1, {
		placeid = tostring(game.PlaceId);
		sessionid = RbxAnalyticsService_upvr:GetSessionId();
		universeid = tostring(game.GameId);
	}))
	return nil
end