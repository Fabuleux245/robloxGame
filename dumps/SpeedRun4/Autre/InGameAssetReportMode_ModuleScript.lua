-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:01
-- Luau version 6, Types version 3
-- Time taken: 0.009747 seconds

local InGameAssetReporting = script:FindFirstAncestor("InGameAssetReporting")
local Parent = InGameAssetReporting.Parent
local function var3_upvr(arg1) -- Line 45
	return arg1.point
end
local function var4_upvr(arg1) -- Line 49
	return arg1.interpretationResult
end
local React_upvr = require(Parent.React)
local AnalyticsReducer_upvr = require(InGameAssetReporting.InGameAssetReportUI.Resources.AnalyticsReducer)
local Constants_upvr = require(InGameAssetReporting.InGameAssetReportUI.Resources.Constants)
local SceneAnalysis_upvr = require(InGameAssetReporting.Analysis.SceneAnalysis)
local GetFFlagSelectInSceneUseEngineSignal_upvr = require(InGameAssetReporting.Flags.GetFFlagSelectInSceneUseEngineSignal)
local ExperienceStateCaptureService_upvr = game:GetService("ExperienceStateCaptureService")
local ScreenshotManager_upvr = require(Parent.Screenshot).ScreenshotManager
local Cryo_upvr = require(Parent.Cryo)
local InGameAssetReportAnalytics_upvr = require(InGameAssetReporting.InGameAssetReportUI.Resources.InGameAssetReportAnalytics)
local buildReport_upvr = require(InGameAssetReporting.Utility.buildReport)
local Players_upvr = game:GetService("Players")
local UserInputService_upvr = game:GetService("UserInputService")
local withLocalization_upvr = require(Parent.Localization).withLocalization
local InGameAssetReportPortraitHeaderFooter_upvr = require(InGameAssetReporting.InGameAssetReportUI.Components.InGameAssetReportPortraitHeaderFooter)
local InGameAssetReportLandscapeHeader_upvr = require(InGameAssetReporting.InGameAssetReportUI.Components.InGameAssetReportLandscapeHeader)
local ScreenshotHighlighter_upvr = require(InGameAssetReporting.InGameAssetReportUI.Components.ScreenshotHighlighter)
local InGameAssetReportErrorModal_upvr = require(InGameAssetReporting.InGameAssetReportUI.Components.InGameAssetReportErrorModal)
local InGameAssetReportSubmitDialog_upvr = require(InGameAssetReporting.InGameAssetReportUI.Components.InGameAssetReportSubmitDialog)
local InGameAssetReportCompleteModal_upvr = require(InGameAssetReporting.InGameAssetReportUI.Components.InGameAssetReportCompleteModal)
return function(arg1) -- Line 53
	--[[ Upvalues[21]:
		[1]: React_upvr (readonly)
		[2]: AnalyticsReducer_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: SceneAnalysis_upvr (readonly)
		[5]: GetFFlagSelectInSceneUseEngineSignal_upvr (readonly)
		[6]: ExperienceStateCaptureService_upvr (readonly)
		[7]: ScreenshotManager_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: var4_upvr (readonly)
		[10]: InGameAssetReportAnalytics_upvr (readonly)
		[11]: var3_upvr (readonly)
		[12]: buildReport_upvr (readonly)
		[13]: Players_upvr (readonly)
		[14]: UserInputService_upvr (readonly)
		[15]: withLocalization_upvr (readonly)
		[16]: InGameAssetReportPortraitHeaderFooter_upvr (readonly)
		[17]: InGameAssetReportLandscapeHeader_upvr (readonly)
		[18]: ScreenshotHighlighter_upvr (readonly)
		[19]: InGameAssetReportErrorModal_upvr (readonly)
		[20]: InGameAssetReportSubmitDialog_upvr (readonly)
		[21]: InGameAssetReportCompleteModal_upvr (readonly)
	]]
	local any_useState_result1_upvr_3, any_useState_result2_upvr_2 = React_upvr.useState({})
	local any_useState_result1_upvr_9, any_useState_result2_upvr_5 = React_upvr.useState({})
	local any_useState_result1_upvr, any_useState_result2_upvr_9 = React_upvr.useState(false)
	local any_useState_result1_upvr_7, any_useState_result2_upvr_10 = React_upvr.useState(false)
	local any_useState_result1_upvr_2, any_useState_result2_upvr_4 = React_upvr.useState(false)
	local any_useState_result1_upvr_6, any_useState_result2_upvr_3 = React_upvr.useState("")
	local any_useState_result1_upvr_4, any_useState_result2_upvr_7 = React_upvr.useState(nil)
	local any_useState_result1_upvr_10, any_useState_result2_upvr_8 = React_upvr.useState(nil)
	local any_useState_result1_upvr_5, any_useState_result2_upvr_6 = React_upvr.useState(true)
	local any_useReducer_result1_upvr, any_useReducer_result2_upvr = React_upvr.useReducer(AnalyticsReducer_upvr, Constants_upvr.AnalyticsInitialState)
	local any_useState_result1_upvr_8, any_useState_result2_upvr = React_upvr.useState(nil)
	local ViewportSize_upvr = game.Workspace.CurrentCamera.ViewportSize
	local any_getIsSmallPortraitMode_result1_upvr = arg1.getIsSmallPortraitMode(ViewportSize_upvr)
	React_upvr.useEffect(function() -- Line 72
		--[[ Upvalues[2]:
			[1]: any_useReducer_result2_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		any_useReducer_result2_upvr({
			type = Constants_upvr.AnalyticsActions.AccumulateForTimeSpent;
			accumulated_time_ms = workspace:GetServerTimeNow() * 1000;
		})
		any_useReducer_result2_upvr({
			type = Constants_upvr.AnalyticsActions.SetPlaceId;
			place_id = game.PlaceId;
		})
	end, {})
	local any_useCallback_result1_upvr_6 = React_upvr.useCallback(function() -- Line 197
		--[[ Upvalues[3]:
			[1]: InGameAssetReportAnalytics_upvr (copied, readonly)
			[2]: any_useReducer_result1_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		InGameAssetReportAnalytics_upvr(any_useReducer_result1_upvr, 2)
		arg1.backAction()
	end, {arg1.backAction, any_useReducer_result1_upvr})
	local any_map_result1_upvr = Cryo_upvr.List.map(any_useState_result1_upvr_3, var3_upvr)
	local function var108_upvr() -- Line 291
		--[[ Upvalues[7]:
			[1]: any_useState_result1_upvr_5 (readonly)
			[2]: any_useState_result2_upvr_6 (readonly)
			[3]: any_useReducer_result2_upvr (readonly)
			[4]: Constants_upvr (copied, readonly)
			[5]: any_useState_result1_upvr (readonly)
			[6]: any_useState_result2_upvr_2 (readonly)
			[7]: any_useState_result2_upvr_5 (readonly)
		]]
		if any_useState_result1_upvr_5 then
			any_useState_result2_upvr_6(false)
		else
			any_useReducer_result2_upvr({
				type = Constants_upvr.AnalyticsActions.SetDidUserResize;
				did_user_resize = true;
			})
		end
		if not any_useState_result1_upvr then
			any_useState_result2_upvr_2({})
			any_useState_result2_upvr_5({})
		end
	end
	local var111_upvr
	if 0 >= var111_upvr then
		var108_upvr = false
	else
		var108_upvr = true
	end
	if 0 >= #any_useState_result1_upvr_9 then
		var111_upvr = false
	else
		var111_upvr = true
	end
	React_upvr.useEffect(function() -- Line 313
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr_8 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr_6 (readonly)
			[4]: any_useState_result2_upvr (readonly)
		]]
		if any_useState_result1_upvr_8 then
			any_useState_result1_upvr_8:Disconnect()
		end
		any_useState_result2_upvr(UserInputService_upvr.InputEnded:Connect(function(arg1_6) -- Line 318
			--[[ Upvalues[1]:
				[1]: any_useCallback_result1_upvr_6 (copied, readonly)
			]]
			if arg1_6.KeyCode == Enum.KeyCode.Escape then
				any_useCallback_result1_upvr_6()
			end
		end))
	end, {any_useCallback_result1_upvr_6})
	local any_useCallback_result1_upvr_9 = React_upvr.useCallback(var108_upvr, {any_useState_result1_upvr_5, any_useState_result1_upvr})
	local any_useCallback_result1_upvr_10 = React_upvr.useCallback(function() -- Line 123
		--[[ Upvalues[6]:
			[1]: any_useState_result1_upvr_3 (readonly)
			[2]: any_useState_result1_upvr_9 (readonly)
			[3]: any_useState_result2_upvr_5 (readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
			[5]: any_useReducer_result2_upvr (readonly)
			[6]: Constants_upvr (copied, readonly)
		]]
		if 0 < #any_useState_result1_upvr_3 then
			local clone = table.clone(any_useState_result1_upvr_3)
			local clone_3 = table.clone(any_useState_result1_upvr_9)
			table.insert(clone_3, table.remove(clone))
			any_useState_result2_upvr_5(clone_3)
			any_useState_result2_upvr_2(clone)
			any_useReducer_result2_upvr({
				type = Constants_upvr.AnalyticsActions.IncremementAnnotationUndoCount;
			})
		end
	end, {any_useState_result2_upvr_2, any_useState_result1_upvr_3, any_useState_result2_upvr_5, any_useState_result1_upvr_9})
	local any_useCallback_result1_upvr_7 = React_upvr.useCallback(function() -- Line 140
		--[[ Upvalues[6]:
			[1]: any_useState_result1_upvr_9 (readonly)
			[2]: any_useState_result1_upvr_3 (readonly)
			[3]: any_useState_result2_upvr_5 (readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
			[5]: any_useReducer_result2_upvr (readonly)
			[6]: Constants_upvr (copied, readonly)
		]]
		if 0 < #any_useState_result1_upvr_9 then
			local clone_2 = table.clone(any_useState_result1_upvr_3)
			local clone_5 = table.clone(any_useState_result1_upvr_9)
			table.insert(clone_2, table.remove(clone_5))
			any_useState_result2_upvr_5(clone_5)
			any_useState_result2_upvr_2(clone_2)
			any_useReducer_result2_upvr({
				type = Constants_upvr.AnalyticsActions.IncremementAnnotationRedoCount;
			})
		end
	end, {any_useState_result1_upvr_3, any_useState_result1_upvr_9})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 159
		--[[ Upvalues[15]:
			[1]: any_useState_result1_upvr_3 (readonly)
			[2]: any_useState_result1_upvr_6 (readonly)
			[3]: ScreenshotManager_upvr (copied, readonly)
			[4]: any_useState_result2_upvr_3 (readonly)
			[5]: GetFFlagSelectInSceneUseEngineSignal_upvr (copied, readonly)
			[6]: Cryo_upvr (copied, readonly)
			[7]: SceneAnalysis_upvr (copied, readonly)
			[8]: any_useState_result2_upvr_8 (readonly)
			[9]: var4_upvr (copied, readonly)
			[10]: any_useState_result2_upvr_7 (readonly)
			[11]: any_useState_result2_upvr_9 (readonly)
			[12]: any_useReducer_result2_upvr (readonly)
			[13]: Constants_upvr (copied, readonly)
			[14]: ViewportSize_upvr (readonly)
			[15]: any_getIsSmallPortraitMode_result1_upvr (readonly)
		]]
		if #any_useState_result1_upvr_3 == 0 and any_useState_result1_upvr_6 == "" then
			ScreenshotManager_upvr:TakeScreenshotWithCallback(any_useState_result2_upvr_3, nil)
		end
		if GetFFlagSelectInSceneUseEngineSignal_upvr() then
			local any_extractItemsFromInterpretations_result1_2 = SceneAnalysis_upvr.extractItemsFromInterpretations({SceneAnalysis_upvr.interpretInstanceListForGUIObjects(Cryo_upvr.List.map(any_useState_result1_upvr_3, function(arg1_4) -- Line 166
				return arg1_4.engineSignalItem
			end))}, function() -- Line 172
			end)
			any_useState_result2_upvr_8(any_extractItemsFromInterpretations_result1_2)
			task.defer(any_extractItemsFromInterpretations_result1_2.computation)
		end
		local any_extractItemsFromInterpretations_result1 = SceneAnalysis_upvr.extractItemsFromInterpretations(Cryo_upvr.List.map(any_useState_result1_upvr_3, var4_upvr), function() -- Line 179
		end)
		any_useState_result2_upvr_7(any_extractItemsFromInterpretations_result1)
		any_useState_result2_upvr_9(true)
		any_useReducer_result2_upvr({
			type = Constants_upvr.AnalyticsActions.SetViewportInformation;
			viewport_size_x = ViewportSize_upvr.X;
			viewport_size_y = ViewportSize_upvr.Y;
			is_portrait_mode = any_getIsSmallPortraitMode_result1_upvr;
		})
		any_useReducer_result2_upvr({
			type = Constants_upvr.AnalyticsActions.IncrementNextCount;
		})
		task.defer(any_extractItemsFromInterpretations_result1.computation)
	end, {any_useState_result1_upvr_3, any_useState_result2_upvr_9, any_useState_result2_upvr_7, any_useState_result1_upvr_6, ViewportSize_upvr, any_getIsSmallPortraitMode_result1_upvr})
	local any_useCallback_result1_upvr_11 = React_upvr.useCallback(function(arg1_2, arg2) -- Line 84
		--[[ Upvalues[12]:
			[1]: SceneAnalysis_upvr (copied, readonly)
			[2]: ViewportSize_upvr (readonly)
			[3]: GetFFlagSelectInSceneUseEngineSignal_upvr (copied, readonly)
			[4]: ExperienceStateCaptureService_upvr (copied, readonly)
			[5]: any_useState_result1_upvr_3 (readonly)
			[6]: any_useState_result1_upvr_6 (readonly)
			[7]: ScreenshotManager_upvr (copied, readonly)
			[8]: any_useState_result2_upvr_3 (readonly)
			[9]: any_useState_result2_upvr_2 (readonly)
			[10]: any_useState_result2_upvr_5 (readonly)
			[11]: any_useReducer_result2_upvr (readonly)
			[12]: Constants_upvr (copied, readonly)
		]]
		local tbl_6_upvr = {}
		tbl_6_upvr.point = arg1_2
		tbl_6_upvr.interpretationResult = SceneAnalysis_upvr.interpretAnnotation(arg1_2 * ViewportSize_upvr, arg2 * math.max(ViewportSize_upvr.X, ViewportSize_upvr.Y), function() -- Line 90
		end)
		if GetFFlagSelectInSceneUseEngineSignal_upvr() then
			tbl_6_upvr.signalConnection = ExperienceStateCaptureService_upvr.ItemSelectedInCaptureMode:Once(function(arg1_3) -- Line 95
				--[[ Upvalues[1]:
					[1]: tbl_6_upvr (readonly)
				]]
				tbl_6_upvr.engineSignalItem = arg1_3
			end)
			for i, v in ipairs(any_useState_result1_upvr_3) do
				v.signalConnection:Disconnect()
			end
		end
		if #any_useState_result1_upvr_3 == 0 and any_useState_result1_upvr_6 == "" then
			i = nil
			ScreenshotManager_upvr:TakeScreenshotWithCallback(any_useState_result2_upvr_3, i)
		end
		local clone_4 = table.clone(any_useState_result1_upvr_3)
		table.insert(clone_4, tbl_6_upvr)
		any_useState_result2_upvr_2(clone_4)
		any_useState_result2_upvr_5({})
		any_useReducer_result2_upvr({
			type = Constants_upvr.AnalyticsActions.IncremementAnnotationCount;
		})
		task.defer(tbl_6_upvr.interpretationResult.raycastComputation)
	end, {any_useState_result1_upvr_3, any_useState_result2_upvr_2, any_useState_result2_upvr_5, any_useState_result1_upvr_6})
	local any_useCallback_result1_upvr_8 = React_upvr.useCallback(function() -- Line 274
		--[[ Upvalues[3]:
			[1]: GetFFlagSelectInSceneUseEngineSignal_upvr (copied, readonly)
			[2]: any_useState_result1_upvr_3 (readonly)
			[3]: any_useState_result2_upvr_4 (readonly)
		]]
		if GetFFlagSelectInSceneUseEngineSignal_upvr() then
			for _, v_2 in ipairs(any_useState_result1_upvr_3) do
				v_2.signalConnection:Disconnect()
			end
		end
		any_useState_result2_upvr_4(true)
	end, {any_useState_result2_upvr_4, any_useState_result1_upvr_3})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function() -- Line 287
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_4 (readonly)
		]]
		any_useState_result2_upvr_4(false)
	end, {})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_5, arg2, arg3) -- Line 209
		--[[ Upvalues[11]:
			[1]: any_useState_result2_upvr_9 (readonly)
			[2]: any_useState_result2_upvr_10 (readonly)
			[3]: any_useReducer_result2_upvr (readonly)
			[4]: Constants_upvr (copied, readonly)
			[5]: any_useState_result1_upvr_4 (readonly)
			[6]: any_useState_result1_upvr_3 (readonly)
			[7]: buildReport_upvr (copied, readonly)
			[8]: Players_upvr (copied, readonly)
			[9]: any_useState_result1_upvr_6 (readonly)
			[10]: any_map_result1_upvr (readonly)
			[11]: any_useState_result1_upvr_10 (readonly)
		]]
		any_useState_result2_upvr_9(false)
		any_useState_result2_upvr_10(true)
		any_useReducer_result2_upvr({
			type = Constants_upvr.AnalyticsActions.SetExtractionResults;
			results = any_useState_result1_upvr_4;
			final_annotation_count = #any_useState_result1_upvr_3;
		})
		local tbl_2 = {
			type = Constants_upvr.AnalyticsActions.SetReasonSelection;
		}
		tbl_2.reason_selection = arg1_5
		any_useReducer_result2_upvr(tbl_2)
		local tbl_3 = {
			type = Constants_upvr.AnalyticsActions.SetSurfaceSelection;
		}
		tbl_3.surface_selection = arg2
		any_useReducer_result2_upvr(tbl_3)
		local tbl = {}
		local SetCommentAdded = Constants_upvr.AnalyticsActions.SetCommentAdded
		tbl.type = SetCommentAdded
		if 0 >= #arg3 then
			SetCommentAdded = false
		else
			SetCommentAdded = true
		end
		tbl.comment_added = SetCommentAdded
		any_useReducer_result2_upvr(tbl)
		local var15_result1 = buildReport_upvr(Players_upvr.LocalPlayer.UserId, any_useState_result1_upvr_6, any_useState_result1_upvr_4, arg1_5, arg2, arg3, any_map_result1_upvr, any_useState_result1_upvr_10)
		if var15_result1 then
			Players_upvr:ReportAbuseV3(Players_upvr.LocalPlayer, var15_result1)
		end
	end, {any_useState_result1_upvr_4, any_useState_result1_upvr_10, any_useState_result2_upvr_9, any_useState_result2_upvr_10, any_useState_result1_upvr_6, any_useState_result1_upvr_3, any_map_result1_upvr})
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function() -- Line 261
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_7 (readonly)
			[2]: any_useState_result2_upvr_9 (readonly)
		]]
		any_useState_result2_upvr_7(nil)
		any_useState_result2_upvr_9(false)
	end, {any_useState_result2_upvr_9, any_useState_result2_upvr_7})
	local any_useCallback_result1_upvr_5 = React_upvr.useCallback(function() -- Line 267
		--[[ Upvalues[4]:
			[1]: any_useState_result2_upvr_10 (readonly)
			[2]: InGameAssetReportAnalytics_upvr (copied, readonly)
			[3]: any_useReducer_result1_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		any_useState_result2_upvr_10(false)
		InGameAssetReportAnalytics_upvr(any_useReducer_result1_upvr, 1)
		arg1.onReportComplete()
	end, {arg1.onReportComplete, any_useState_result1_upvr_3, any_useState_result2_upvr_10, any_useReducer_result1_upvr})
	return withLocalization_upvr({
		mainTitle = "Feature.ReportAbuse.Label.HighlightProblem";
		next = "Feature.ReportAbuse.Action.Next";
	})(function(arg1_7) -- Line 330
		--[[ Upvalues[28]:
			[1]: React_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr_9 (readonly)
			[3]: any_getIsSmallPortraitMode_result1_upvr (readonly)
			[4]: InGameAssetReportPortraitHeaderFooter_upvr (copied, readonly)
			[5]: any_useCallback_result1_upvr_6 (readonly)
			[6]: any_useCallback_result1_upvr_10 (readonly)
			[7]: any_useCallback_result1_upvr_7 (readonly)
			[8]: var111_upvr (readonly)
			[9]: var108_upvr (readonly)
			[10]: any_useState_result1_upvr_3 (readonly)
			[11]: InGameAssetReportLandscapeHeader_upvr (copied, readonly)
			[12]: any_useCallback_result1_upvr (readonly)
			[13]: ScreenshotHighlighter_upvr (copied, readonly)
			[14]: any_map_result1_upvr (readonly)
			[15]: any_useCallback_result1_upvr_11 (readonly)
			[16]: any_useCallback_result1_upvr_8 (readonly)
			[17]: any_useState_result1_upvr_2 (readonly)
			[18]: InGameAssetReportErrorModal_upvr (copied, readonly)
			[19]: ViewportSize_upvr (readonly)
			[20]: any_useCallback_result1_upvr_3 (readonly)
			[21]: any_useState_result1_upvr (readonly)
			[22]: InGameAssetReportSubmitDialog_upvr (copied, readonly)
			[23]: any_useCallback_result1_upvr_2 (readonly)
			[24]: any_useCallback_result1_upvr_4 (readonly)
			[25]: any_useReducer_result2_upvr (readonly)
			[26]: any_useState_result1_upvr_7 (readonly)
			[27]: InGameAssetReportCompleteModal_upvr (copied, readonly)
			[28]: any_useCallback_result1_upvr_5 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
		local _ = {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			[React_upvr.Change.AbsoluteSize] = any_useCallback_result1_upvr_9;
		}
		local tbl_4 = {}
		local tbl_5 = {}
		local any_createElement_result1 = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		})
		tbl_5.Layout = any_createElement_result1
		if any_getIsSmallPortraitMode_result1_upvr then
			any_createElement_result1 = React_upvr.createElement
			any_createElement_result1 = any_createElement_result1(InGameAssetReportPortraitHeaderFooter_upvr.PortraitModeHeader, {
				titleText = arg1_7.mainTitle;
				nextText = arg1_7.next;
				backAction = any_useCallback_result1_upvr_6;
				undoAnnotationPoints = any_useCallback_result1_upvr_10;
				redoAnnotationPoints = any_useCallback_result1_upvr_7;
				isRedoEnabled = var111_upvr;
				isUndoEnabled = var108_upvr;
				annotationPoints = any_useState_result1_upvr_3;
			})
		else
			any_createElement_result1 = React_upvr.createElement
			any_createElement_result1 = any_createElement_result1(InGameAssetReportLandscapeHeader_upvr, {
				titleText = arg1_7.mainTitle;
				nextText = arg1_7.next;
				nextAction = any_useCallback_result1_upvr;
				backAction = any_useCallback_result1_upvr_6;
				undoAnnotationPoints = any_useCallback_result1_upvr_10;
				redoAnnotationPoints = any_useCallback_result1_upvr_7;
				isRedoEnabled = var111_upvr;
				isUndoEnabled = var108_upvr;
				annotationPoints = any_useState_result1_upvr_3;
			})
		end
		tbl_5.InGameAssetReportModeHeader = any_createElement_result1
		local any_createElement_result1_2 = React_upvr.createElement("TextButton", {
			Size = UDim2.new(1, 0, 0, 72);
			BackgroundTransparency = 1;
			ZIndex = 2;
			AutoButtonColor = false;
		}, tbl_5)
		tbl_4.Header = any_createElement_result1_2
		if any_getIsSmallPortraitMode_result1_upvr then
			any_createElement_result1_2 = React_upvr.createElement
			any_createElement_result1_2 = any_createElement_result1_2("TextButton", {
				Size = UDim2.new(1, 0, 0, 60);
				Position = UDim2.new(0, 0, 1, -60);
				ZIndex = 2;
				BackgroundTransparency = 1;
				AutoButtonColor = false;
			}, {
				InGameAssetReportModeFooter = React_upvr.createElement(InGameAssetReportPortraitHeaderFooter_upvr.PortraitModeFooter, {
					nextAction = any_useCallback_result1_upvr;
					annotationPoints = any_useState_result1_upvr_3;
					nextText = arg1_7.next;
				});
			})
		else
			any_createElement_result1_2 = nil
		end
		tbl_4.Footer = any_createElement_result1_2
		tbl_4.ScreenshotAnnotation = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			Size = UDim2.new(1, 0, 1, 0);
			ZIndex = 1;
		}, {
			Highlighter = React_upvr.createElement(ScreenshotHighlighter_upvr, {
				annotationPoints = any_map_result1_upvr;
				handleNewAnnotationPoint = any_useCallback_result1_upvr_11;
				onExceedMaxAnnotationLimit = any_useCallback_result1_upvr_8;
				ZIndex = 2;
			}, {});
		})
		if any_useState_result1_upvr_2 then
			local _ = {
				screenSize = ViewportSize_upvr;
				onBack = any_useCallback_result1_upvr_3;
			}
			-- KONSTANTWARNING: GOTO [272] #193
		end
		-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [271] 192. Error Block 35 start (CF ANALYSIS FAILED)
		tbl_4.ErrorStateModal = nil
		if any_useState_result1_upvr then
			local _ = {
				screenSize = ViewportSize_upvr;
				onSubmit = any_useCallback_result1_upvr_2;
				onBack = any_useCallback_result1_upvr_4;
				analyticsDispatch = any_useReducer_result2_upvr;
			}
			-- KONSTANTWARNING: GOTO [296] #211
		end
		-- KONSTANTERROR: [271] 192. Error Block 35 end (CF ANALYSIS FAILED)
	end)
end