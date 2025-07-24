-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:06
-- Luau version 6, Types version 3
-- Time taken: 0.000931 seconds

local Parent = script:FindFirstAncestor("DiscoveryAnalytics").Parent
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local t = require(Parent.t)
local tbl_upvr = {
	eventName = "discoveryVideoEnd";
	backends = {LoggingProtocol_upvr.TelemetryBackends.Points, LoggingProtocol_upvr.TelemetryBackends.EventIngest};
	throttlingPercentage = game:DefineFastInt("DiscoveryVideoEndEventHundredthsPercent", 0);
	lastUpdated = {25, 4, 23};
	description = "Fire when discovery video stops playing";
	links = "";
}
local any_strictInterface_result1_upvr = t.strictInterface({
	videoAssetId = t.string;
	videoPlaybackSessionId = t.string;
	endReason = t.string;
	playbackTime = t.number;
	universeId = t.string;
	rootPlaceId = t.string;
	gameSetTypeId = t.optional(t.string);
	sortPos = t.optional(t.number);
	targetUniverseId = t.optional(t.string);
})
local mutedError_upvr = require(Parent.Loggers).mutedError
return function(arg1, arg2) -- Line 38, Named "discoveryVideoEndEvent"
	--[[ Upvalues[4]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: mutedError_upvr (readonly)
		[3]: LoggingProtocol_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	local any_strictInterface_result1_upvr_result1, any_strictInterface_result1_upvr_result2 = any_strictInterface_result1_upvr(arg2)
	if not any_strictInterface_result1_upvr_result1 then
		mutedError_upvr(any_strictInterface_result1_upvr_result2)
	end
	LoggingProtocol_upvr.default:logRobloxTelemetryEvent(tbl_upvr, {"addSessionInfo", LoggingProtocol_upvr.StandardizedFields.addOsInfo}, arg2, arg1)
end