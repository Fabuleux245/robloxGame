-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:18
-- Luau version 6, Types version 3
-- Time taken: 0.002070 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local ReportAbuseAnalytics = require(AbuseReportMenu.Analytics.ReportAbuseAnalytics)
local ReportTypes_upvr = Constants_upvr.ReportTypes
local collectAnalyticsParameters_upvr = require(AbuseReportMenu.Analytics.collectAnalyticsParameters)
local ReportAnythingAnalytics_upvr = require(AbuseReportMenu.ReportAnything.Utility.ReportAnythingAnalytics)
local any_new_result1_upvr = ReportAbuseAnalytics.new(require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest.new(game:GetService("EventIngestService")), require(CorePackages.Workspace.Packages.Analytics).Analytics.new(game:GetService("RbxAnalyticsService")).Diag, ReportAbuseAnalytics.MenuContexts.NewMenu)
return function(arg1, arg2, arg3, arg4) -- Line 22
	--[[ Upvalues[5]:
		[1]: ReportTypes_upvr (readonly)
		[2]: collectAnalyticsParameters_upvr (readonly)
		[3]: ReportAnythingAnalytics_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
		[5]: Constants_upvr (readonly)
	]]
	return function(arg1_2, arg2_2) -- Line 28
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: arg4 (readonly)
			[3]: ReportTypes_upvr (copied, readonly)
			[4]: collectAnalyticsParameters_upvr (copied, readonly)
			[5]: ReportAnythingAnalytics_upvr (copied, readonly)
			[6]: any_new_result1_upvr (copied, readonly)
			[7]: Constants_upvr (copied, readonly)
			[8]: arg2 (readonly)
			[9]: arg3 (readonly)
		]]
		if not arg1.menuEverShown then
		else
			local var11
			if arg4 == ReportTypes_upvr.Person then
				var11 = collectAnalyticsParameters_upvr.forPersonReport(arg1, arg1_2, ReportAnythingAnalytics_upvr.getAccumulatedParameters())
			else
				var11 = collectAnalyticsParameters_upvr.forExperienceReport(arg1, arg1_2, ReportAnythingAnalytics_upvr.getAccumulatedParameters())
			end
			any_new_result1_upvr:reportInGameAbuseReportInteraction(var11)
			arg2_2({
				type = Constants_upvr.ReportAnythingActions.ClearAnnotationFlowProperties;
			})
			arg2({
				type = Constants_upvr.AnalyticsActions.Reset;
			})
			ReportAnythingAnalytics_upvr.clear()
			arg3(nil)
			any_new_result1_upvr:endAbuseReportSession()
		end
	end
end