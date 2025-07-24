-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:05
-- Luau version 6, Types version 3
-- Time taken: 0.001028 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local tbl_upvr_2 = {
	ReportTimeSpent = game:DefineFastString("GenericAbuseReportingTimeSpentStat", "TimeSpent");
	SubmittedAbuseType = game:DefineFastString("GenericAbuseReportingSubmittedAbuseTypeStat", "SubmittedAbuseType");
}
local tbl_upvr = {"Unspecified", "Submit", "Abandon"}
local any_new_result1_upvr = require(Parent.Analytics).Analytics.new(game:GetService("RbxAnalyticsService"))
local Cryo_upvr = require(Parent.Cryo)
local EventIngest_upvr = require(Parent.Analytics).AnalyticsReporters.EventIngest
local EventIngestService_upvr = game:GetService("EventIngestService")
local any_new_result1_upvr_2 = require(GenericAbuseReporting.Logger):new("AbuseReport Analytics")
return function(arg1, arg2) -- Line 22, Named "submitAnalytics"
	--[[ Upvalues[7]:
		[1]: any_new_result1_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: EventIngest_upvr (readonly)
		[6]: EventIngestService_upvr (readonly)
		[7]: any_new_result1_upvr_2 (readonly)
	]]
	local Diag = any_new_result1_upvr.Diag
	Diag:reportStats(arg1.context..'_'..tbl_upvr_2.ReportTimeSpent, arg1.accumulated_time_ms)
	local var11 = arg1.context..'_'..tbl_upvr_2.SubmittedAbuseType..'_'..arg1.reason_selection
	Diag:reportCounter(var11, 1)
	local floored = math.floor(workspace:GetServerTimeNow() * 1000 - arg1.accumulated_time_ms)
	EventIngest_upvr.new(EventIngestService_upvr):sendEventDeferred(arg1.context, arg1.event_type, Cryo_upvr.Dictionary.union(arg1, {
		accumulated_time_ms = floored;
		interaction_type = (table.find(tbl_upvr, arg2) or 1) - 1;
	}))
	any_new_result1_upvr_2:info("Submitted. context: {} interaction_type: {} abuseTypeCategory: {} timeSpent (ms): {}", arg1.context, arg2, var11, floored)
end