-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:05
-- Luau version 6, Types version 3
-- Time taken: 0.000859 seconds

local Parent = script:FindFirstAncestor("InGameAssetReporting").Parent
local tbl_upvr = {
	ReportTimeSpent = game:DefineFastString("InGameAssetReportingTimeSpentStat", "TimeSpent");
	SubmittedAbuseType = game:DefineFastString("InGameAssetReportingSubmittedAbuseTypeStat", "SubmittedAbuseType");
}
local EventIngest_upvr = require(Parent.Analytics).AnalyticsReporters.EventIngest
local EventIngestService_upvr = game:GetService("EventIngestService")
local any_new_result1_upvr = require(Parent.Analytics).Analytics.new(game:GetService("RbxAnalyticsService"))
local Cryo_upvr = require(Parent.Cryo)
function submitAnalytics(arg1, arg2) -- Line 17
	--[[ Upvalues[5]:
		[1]: EventIngest_upvr (readonly)
		[2]: EventIngestService_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	local Diag = any_new_result1_upvr.Diag
	local floored = math.floor(workspace:GetServerTimeNow() * 1000 - arg1.accumulated_time_ms)
	local tbl = {
		accumulated_time_ms = floored;
	}
	tbl.interaction_type = arg2
	Diag:reportStats(arg1.context..'_'..tbl_upvr.ReportTimeSpent, floored)
	Diag:reportCounter(arg1.context..'_'..tbl_upvr.SubmittedAbuseType..'_'..arg1.reason_selection, 1)
	EventIngest_upvr.new(EventIngestService_upvr):sendEventDeferred(arg1.context, arg1.event_type, Cryo_upvr.Dictionary.join(arg1, tbl))
end
return submitAnalytics