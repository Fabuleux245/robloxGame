-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:16
-- Luau version 6, Types version 3
-- Time taken: 0.004029 seconds

local SessionService_upvr = game:GetService("SessionService")
local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
module_2_upvr.MenuContexts = {
	LegacyMenu = game:DefineFastString("ReportAnalyticsLegacyMenuContext", "ReportAbuseLegacyMenu");
	LegacySentPage = game:DefineFastString("ReportAnalyticsLegacySentPageContext", "ReportAbuseLegacySentPage");
	NewMenu = game:DefineFastString("ReportAnalyticsNewMenuContext", "ReportAbuseNewMenu");
}
module_2_upvr.DiagCounters = {
	SuccessfulSubmissionTime = game:DefineFastString("ReportAnalyticsSuccessfulSubmissionTimeStat", "SuccessfulSubmissionTime");
	AbandonedSubmissionTime = game:DefineFastString("ReportAnalyticsAbandonedSubmissionTimeStat", "AbandonedSubmissionTime");
	SubmittedMethodOfAbuse = game:DefineFastString("ReportAnalyticsSubmittedMethodOfAbuseStat", "SubmittedMethodOfAbuse");
}
module_2_upvr.ActionNames = {
	FieldChanged = game:DefineFastString("ReportAnalyticsFieldChanged", "FieldChanged");
	FormSubmitted = game:DefineFastString("ReportAnalyticsFormSubmitted", "FormSubmitted");
	FormAbandoned = game:DefineFastString("ReportAnalyticsFormAbandoned", "FormAbandoned");
	ButtonActivated = game:DefineFastString("ReportAnalyticsButtonActivated", "ButtonActivated");
	InGameAbuseReport = game:DefineFastString("ReportAnalyticsInGameAbuseReport", "InGameAbuseReport");
}
module_2_upvr.SessionConstants = {
	StructuralIdentifier = {
		Level1 = "level1";
		AbuseReport = "AbuseReport";
	};
	Metadata = {
		EntryPoint = "entryPoint";
		DeleteOnGameLeave = "_deleteOnGameLeave";
	};
}
local tbl_upvr = {
	SUBMIT = 1;
	ABANDON = 2;
}
function module_2_upvr.new(arg1, arg2, arg3) -- Line 57
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	assert(arg3, "Base context needs to be provided to ReportAbuseAnalytics")
	local module = {}
	module._eventStreamImpl = arg1
	module._diagImpl = arg2
	module._context = arg3
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.reportFormSubmitted(arg1, arg2, arg3, arg4) -- Line 70
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local var12 = arg4
	if not var12 then
		var12 = {}
	end
	local tbl = {}
	tbl.timeToComplete = arg2
	tbl.methodOfAbuse = arg3
	arg1._diagImpl:reportStats(arg1._context..'_'..module_2_upvr.DiagCounters.SuccessfulSubmissionTime, arg2)
	arg1._diagImpl:reportCounter(arg1._context..'_'..module_2_upvr.DiagCounters.SubmittedMethodOfAbuse..'_'..arg3, 1)
	arg1._eventStreamImpl:sendEventDeferred(arg1._context, module_2_upvr.ActionNames.FormSubmitted, Cryo_upvr.Dictionary.join(var12, tbl))
end
function module_2_upvr.reportFormAbandoned(arg1, arg2, arg3) -- Line 93
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local var14 = arg3
	if not var14 then
		var14 = {}
	end
	local tbl_2 = {}
	tbl_2.timeToExit = arg2
	arg1._diagImpl:reportStats(arg1._context..'_'..module_2_upvr.DiagCounters.AbandonedSubmissionTime, arg2)
	arg1._eventStreamImpl:sendEventDeferred(arg1._context, module_2_upvr.ActionNames.FormAbandoned, Cryo_upvr.Dictionary.join(var14, tbl_2))
end
function module_2_upvr.reportAnalyticsFieldChanged(arg1, arg2) -- Line 108
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var16 = arg2
	if not var16 then
		var16 = {}
	end
	arg1._eventStreamImpl:sendEventDeferred(arg1._context, module_2_upvr.ActionNames.FieldChanged, var16)
end
function module_2_upvr.reportButtonClick(arg1, arg2) -- Line 116
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var17 = arg2
	if not var17 then
		var17 = {}
	end
	arg1._eventStreamImpl:sendEventDeferred(arg1._context, module_2_upvr.ActionNames.ButtonActivated, var17)
end
function module_2_upvr.reportInGameAbuseReportInteraction(arg1, arg2) -- Line 129
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local var18
	if arg2.interactionType ~= tbl_upvr.SUBMIT then
		var18 = false
	else
		var18 = true
	end
	local AbandonedSubmissionTime = module_2_upvr.DiagCounters.AbandonedSubmissionTime
	if var18 then
		AbandonedSubmissionTime = module_2_upvr.DiagCounters.SuccessfulSubmissionTime
		arg1._diagImpl:reportCounter(arg1._context..'_'..module_2_upvr.DiagCounters.SubmittedMethodOfAbuse..'_'..arg2.inferredTypeofabuseSelection, 1)
	end
	arg1._diagImpl:reportStats(arg1._context..'_'..AbandonedSubmissionTime, arg2.timeSpentMs)
	arg1._eventStreamImpl:sendEventDeferred(arg1._context, module_2_upvr.ActionNames.InGameAbuseReport, arg2)
end
function module_2_upvr.reportEventAndIncrement(arg1, arg2, arg3) -- Line 150
	arg1._diagImpl:reportCounter(arg1._context..'_'..arg2, 1)
	local var20 = arg3
	if not var20 then
		var20 = {}
	end
	arg1._eventStreamImpl:sendEventDeferred(arg1._context, arg2, var20)
end
function module_2_upvr.startAbuseReportSession(arg1, arg2) -- Line 156
	--[[ Upvalues[2]:
		[1]: SessionService_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	if not SessionService_upvr:SessionExists(module_2_upvr.SessionConstants.StructuralIdentifier.AbuseReport) then
		SessionService_upvr:SetSession(module_2_upvr.SessionConstants.StructuralIdentifier.Level1, module_2_upvr.SessionConstants.StructuralIdentifier.AbuseReport, module_2_upvr.SessionConstants.StructuralIdentifier.AbuseReport)
	end
	if not SessionService_upvr:GetMetadata(module_2_upvr.SessionConstants.StructuralIdentifier.AbuseReport, module_2_upvr.SessionConstants.Metadata.EntryPoint) then
		SessionService_upvr:SetMetadata(module_2_upvr.SessionConstants.StructuralIdentifier.AbuseReport, module_2_upvr.SessionConstants.Metadata.EntryPoint, arg2)
	end
	SessionService_upvr:SetMetadata(module_2_upvr.SessionConstants.StructuralIdentifier.AbuseReport, module_2_upvr.SessionConstants.Metadata.DeleteOnGameLeave, "True")
end
function module_2_upvr.getAbuseReportSessionEntryPoint(arg1) -- Line 188
	--[[ Upvalues[2]:
		[1]: SessionService_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	if SessionService_upvr:SessionExists(module_2_upvr.SessionConstants.StructuralIdentifier.AbuseReport) then
		return SessionService_upvr:GetMetadata(module_2_upvr.SessionConstants.StructuralIdentifier.AbuseReport, module_2_upvr.SessionConstants.Metadata.EntryPoint)
	end
	return ""
end
function module_2_upvr.endAbuseReportSession(arg1) -- Line 202
	--[[ Upvalues[2]:
		[1]: SessionService_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	if SessionService_upvr:SessionExists(module_2_upvr.SessionConstants.StructuralIdentifier.AbuseReport) then
		SessionService_upvr:RemoveSession(module_2_upvr.SessionConstants.StructuralIdentifier.AbuseReport)
	end
end
return module_2_upvr