-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:40
-- Luau version 6, Types version 3
-- Time taken: 0.001517 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local module = {
	componentType = "button";
}
local TnSIXPWrapper_upvr = require(AbuseReportMenu.IXP.TnSIXPWrapper)
function module.getIsVisible(arg1) -- Line 11
	--[[ Upvalues[2]:
		[1]: TnSIXPWrapper_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local any_getReportAnythingAvatarEnabled_result1 = TnSIXPWrapper_upvr.getReportAnythingAvatarEnabled()
	if any_getReportAnythingAvatarEnabled_result1 then
		any_getReportAnythingAvatarEnabled_result1 = true
		if arg1.methodOfAbuse ~= Constants_upvr.AbuseMethods.Other then
			if arg1.methodOfAbuse ~= Constants_upvr.AbuseMethods.Avatar then
				any_getReportAnythingAvatarEnabled_result1 = false
			else
				any_getReportAnythingAvatarEnabled_result1 = true
			end
		end
	end
	return any_getReportAnythingAvatarEnabled_result1
end
function module.getIsDisabled(arg1, arg2) -- Line 18
	return arg2.reportAnythingState.attachCompleted
end
module.variant = "secondary"
function module.getIconSrc(arg1) -- Line 22
	if arg1.reportAnythingState.attachCompleted then
		return "icons/actions/accept"
	end
	return "icons/controls/screenshot"
end
function module.getButtonLabel(arg1) -- Line 27
	if arg1.reportAnythingState.attachCompleted then
		return "SceneCaptured"
	end
	return "CaptureScene"
end
local AnnotationModal_upvr = require(AbuseReportMenu.ReportAnything.Components.AnnotationModal)
function module.onClick(arg1, arg2, arg3) -- Line 30
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: AnnotationModal_upvr (readonly)
	]]
	arg3.analyticsDispatch({
		type = Constants_upvr.AnalyticsActions.IncrementCaptureScene;
	})
	AnnotationModal_upvr.mountAnnotationPage(Constants_upvr.ReportTypes.Person, arg3.hideReportTab, arg3.reportAnythingAnalytics, arg3.reportAnythingState, arg3.reportAnythingDispatch)
end
module.fieldLabel = "AttachScreenshot"
module.componentName = "OptionalScreenshot"
return module