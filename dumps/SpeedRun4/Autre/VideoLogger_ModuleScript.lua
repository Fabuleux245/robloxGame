-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:54
-- Luau version 6, Types version 3
-- Time taken: 0.002139 seconds

local VideoUtils = script:FindFirstAncestor("VideoUtils")
local Parent = VideoUtils.Parent
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local t = require(Parent.t)
local tbl_5_upvr = {
	eventName = "videoEngagementEvent";
	backends = {LoggingProtocol_upvr.TelemetryBackends.Points, LoggingProtocol_upvr.TelemetryBackends.EventIngest};
	throttlingPercentage = game:DefineFastInt("VideoEngagementEventHundredthsPercent", 0);
	lastUpdated = {25, 6, 25};
	description = "Fire when video engagement event is triggered";
	links = "";
}
local module = {}
local any_strictInterface_result1_upvr = t.strictInterface({
	videoAssetId = t.string;
	source = t.string;
	sourceId = t.string;
	impressionId = t.optional(t.string);
	playbackSessionId = t.optional(t.string);
	videoAssetDuration = t.optional(t.number);
	isVisible = t.optional(t.boolean);
	isAudible = t.optional(t.boolean);
	isFullscreen = t.optional(t.boolean);
	volumeLevel = t.optional(t.number);
})
local reportWarning_upvr = require(Parent.DiscoveryAnalytics).Points.reportWarning
local any_strictInterface_result1_upvr_2 = t.strictInterface({
	loadTime = t.optional(t.number);
	scrubStartTime = t.optional(t.number);
	scrubEndTime = t.optional(t.number);
	destination = t.optional(t.string);
})
local Cryo_upvr = require(Parent.Cryo)
local VideoEngagementEvents_upvr = require(VideoUtils.Analytics.Enums).VideoEngagementEvents
local tbl_2_upvr = {}
local TelemetryService_upvr = game:GetService("TelemetryService")
function module.reportVideoAction(arg1, arg2, arg3, arg4) -- Line 59
	--[[ Upvalues[9]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: reportWarning_upvr (readonly)
		[3]: LoggingProtocol_upvr (readonly)
		[4]: any_strictInterface_result1_upvr_2 (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: VideoEngagementEvents_upvr (readonly)
		[7]: tbl_2_upvr (readonly)
		[8]: tbl_5_upvr (readonly)
		[9]: TelemetryService_upvr (readonly)
	]]
	local any_strictInterface_result1_upvr_result1, any_strictInterface_result1_upvr_result2_2 = any_strictInterface_result1_upvr(arg3)
	if not any_strictInterface_result1_upvr_result1 then
		reportWarning_upvr(LoggingProtocol_upvr.default, "EventLogging", any_strictInterface_result1_upvr_result2_2)
	end
	if arg4 then
		local var13_result1, any_strictInterface_result1_upvr_2_result2_2 = any_strictInterface_result1_upvr_2(arg4)
		if not var13_result1 then
			reportWarning_upvr(LoggingProtocol_upvr.default, "EventLogging", any_strictInterface_result1_upvr_2_result2_2)
		end
	end
	local tbl_6 = {
		videoEngagementEventType = VideoEngagementEvents_upvr.VIDEO_ACTION;
	}
	tbl_6.actionType = arg1
	local var32 = arg4
	if not var32 then
		var32 = tbl_2_upvr
	end
	local tbl = {}
	tbl.eventContext = arg2
	TelemetryService_upvr:LogEvent(Cryo_upvr.Dictionary.join(tbl_5_upvr, tbl), {
		standardizedFields = {"addSessionInfo", LoggingProtocol_upvr.StandardizedFields.addOsInfo};
		customFields = Cryo_upvr.Dictionary.join(arg3, tbl_6, var32);
	})
end
return module