-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:44
-- Luau version 6, Types version 3
-- Time taken: 0.002058 seconds

local Constants_upvr = require(script:FindFirstAncestor("AbuseReportMenu").Components.Constants)
local ReportAnythingActions_upvr = Constants_upvr.ReportAnythingActions
return function(arg1, arg2) -- Line 7, Named "reportAnythingReducer"
	--[[ Upvalues[2]:
		[1]: ReportAnythingActions_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local clone = table.clone(arg1)
	local type = arg2.type
	if type == ReportAnythingActions_upvr.ClearAll then
		clone = Constants_upvr.ReportAnythingInitialState
		return clone
	end
	if type == ReportAnythingActions_upvr.ClearAnnotationFlowProperties then
		clone.annotationPoints = {}
		clone.attachCompleted = false
		clone.annotationPageSeen = false
		clone.annotationOptionSeen = false
		return clone
	end
	if type == ReportAnythingActions_upvr.SetScreenshotId then
		clone.screenshotId = arg2.screenshotId
		return clone
	end
	if type == ReportAnythingActions_upvr.SetScreenshotContentId then
		clone.screenshotContentId = arg2.screenshotContentId
		return clone
	end
	if type == ReportAnythingActions_upvr.SetAnnotationPoints then
		clone.annotationPoints = arg2.annotationPoints
		clone.annotationPageSeen = true
		clone.annotationOptionSeen = true
		return clone
	end
	if type == ReportAnythingActions_upvr.SetIdentificationResults then
		clone.identificationResults = arg2.identificationResults
		return clone
	end
	if type == ReportAnythingActions_upvr.CompleteAttachment then
		clone.attachCompleted = true
		return clone
	end
	if type == ReportAnythingActions_upvr.SetAnnotationCircleRadius then
		clone.annotationCircleRadius = arg2.radius
		return clone
	end
	if type == ReportAnythingActions_upvr.SetAnnotationAreaDimensions then
		clone.annotationAreaWidth = arg2.width
		clone.annotationAreaHeight = arg2.height
		return clone
	end
	if type == ReportAnythingActions_upvr.SetAnnotationOptionSeen then
		clone.annotationOptionSeen = true
	end
	return clone
end