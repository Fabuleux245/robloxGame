-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:44
-- Luau version 6, Types version 3
-- Time taken: 0.001814 seconds

local Constants_upvr = require(script:FindFirstAncestor("AbuseReportMenu").Components.Constants)
local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
local tbl_upvr = {
	typeofabuseSelection = Cryo_upvr.None;
	reasonSelection = Cryo_upvr.None;
}
local AnalyticsActions_upvr = Constants_upvr.AnalyticsActions
return function(arg1, arg2) -- Line 15, Named "analyticsReducer"
	--[[ Upvalues[4]:
		[1]: AnalyticsActions_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	local type = arg2.type
	local var7
	if type == AnalyticsActions_upvr.Reset then
		var7 = Constants_upvr.AnalyticsInitialState
		var7.menuEverShown = var7.menuEverShown
		return var7
	end
	if type == AnalyticsActions_upvr.SetMenuOpenedTimestamp then
		var7.menuEverShown = true
		var7.menuOpenedUnixTimestampMilliseconds = arg2.timestamp
		return var7
	end
	if type == AnalyticsActions_upvr.IncrementExperiencePersonChanged then
		var7.experiencePersonChangeCount += 1
		return var7
	end
	if type == AnalyticsActions_upvr.IncrementTypeofabuseChanged then
		var7.typeofabuseChangeCount += 1
		return var7
	end
	if type == AnalyticsActions_upvr.IncrementPersonChanged then
		var7.personChangeCount += 1
		return var7
	end
	if type == AnalyticsActions_upvr.IncrementReasonChanged then
		var7.reasonChangeCount += 1
		return var7
	end
	if type == AnalyticsActions_upvr.IncrementCaptureScene then
		var7.captureSceneCount += 1
		return var7
	end
	if type == AnalyticsActions_upvr.SetViewportInformation then
		var7.viewportSizeX = arg2.viewportSizeX
		local viewportSizeY = arg2.viewportSizeY
		var7.viewportSizeY = viewportSizeY
		if arg2.viewportSizeX >= arg2.viewportSizeY then
			viewportSizeY = false
		else
			viewportSizeY = true
		end
		var7.isPortraitMode = viewportSizeY
		return var7
	end
	if type == AnalyticsActions_upvr.SetMemoryRequirementMet then
		var7.memoryRequirementMet = arg2.memoryRequirementMet
		return var7
	end
	if type == AnalyticsActions_upvr.SetSubmissionCompleted then
		var7.isSubmissionCompleted = true
		return var7
	end
	if type == AnalyticsActions_upvr.SetTypeOfAbuseSelection then
		var7.typeofabuseSelection = arg2.selection
		return var7
	end
	if type == AnalyticsActions_upvr.SetReasonSelection then
		var7.reasonSelection = arg2.selection
		return var7
	end
	if type == AnalyticsActions_upvr.SetCommentAdded then
		var7.commentAdded = arg2.commentAdded
		return var7
	end
	if type == AnalyticsActions_upvr.SwitchToExperienceInitialSelections then
		var7 = Cryo_upvr.Dictionary.join(var7, tbl_upvr, Constants_upvr.AnalyticsExpeirenceInitialSelections)
		return var7
	end
	if type == AnalyticsActions_upvr.SwitchToPersonInitialSelections then
		var7 = Cryo_upvr.Dictionary.join(var7, tbl_upvr, Constants_upvr.AnalyticsPersonInitialSelections)
	end
	return var7
end