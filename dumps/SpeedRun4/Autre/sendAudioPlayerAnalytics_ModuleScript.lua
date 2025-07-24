-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:51
-- Luau version 6, Types version 3
-- Time taken: 0.000543 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local LoggingProtocol_upvr = require(Songbird.Parent.LoggingProtocol)
local tbl_upvr = {
	eventName = "AudioPlayerEvents";
	backends = {LoggingProtocol_upvr.TelemetryBackends.EventIngest};
	throttlingPercentage = require(Songbird.Flags.getFIntSongbirdTelemetryThrottle)();
	lastUpdated = {25, 5, 29};
	description = " Analytics for AudioPlayer component to track playback, favoriting, and reporting flows ";
	links = "";
}
return function(arg1) -- Line 30, Named "sendAudioPlayerAnalytics"
	--[[ Upvalues[2]:
		[1]: LoggingProtocol_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	LoggingProtocol_upvr.default:logRobloxTelemetryEvent(tbl_upvr, nil, arg1)
end