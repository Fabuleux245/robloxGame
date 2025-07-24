-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:39
-- Luau version 6, Types version 3
-- Time taken: 0.004139 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local UIBlox = require(Parent.UIBlox)
local BeduiAnalytics = require(GenericAbuseReporting.Bedui.Utils.BeduiAnalytics)
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local useScrollbarOffset_upvr = require(GenericAbuseReporting.Common.useScrollbarOffset)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local FFlagEnableAbuseReportRevampAnalytics_upvr = require(Parent.SharedFlags).FFlagEnableAbuseReportRevampAnalytics
local useAnalyticsContext_upvr = require(GenericAbuseReporting.Bedui.Provider.useAnalyticsContext)
local sendAnalyticsEvent_upvr = BeduiAnalytics.sendAnalyticsEvent
local TelemetryEventType_upvr = BeduiAnalytics.TelemetryEventType
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local View_upvr = Foundation.View
local ScrollView_upvr = Foundation.ScrollView
local ReportFlowHandler_upvr = require(GenericAbuseReporting.Bedui.ReportFlowHandler)
return React_upvr.memo(function(arg1) -- Line 38, Named "DynamicReport"
	--[[ Upvalues[12]:
		[1]: useLayerCollector_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useScrollbarOffset_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: FFlagEnableAbuseReportRevampAnalytics_upvr (readonly)
		[6]: useAnalyticsContext_upvr (readonly)
		[7]: sendAnalyticsEvent_upvr (readonly)
		[8]: TelemetryEventType_upvr (readonly)
		[9]: PartialPageModal_upvr (readonly)
		[10]: View_upvr (readonly)
		[11]: ScrollView_upvr (readonly)
		[12]: ReportFlowHandler_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local absoluteSize_upvr = useLayerCollector_upvr().absoluteSize
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(Vector2.new(0, 0))
	local any_useState_result1_2, any_useState_result2_upvr = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(Vector2.new(0, 0))
	local tbl = {
		reportTitle = "Feature.ReportAbuse.Label.Report";
	}
	tbl = nil
	local var26_upvw = tbl
	local var27_upvw = false
	local var28
	if FFlagEnableAbuseReportRevampAnalytics_upvr then
		var26_upvw = useAnalyticsContext_upvr()
		var27_upvw = var26_upvw.isReportSubmitted
	end
	if FFlagEnableAbuseReportRevampAnalytics_upvr then
		var28 = {}
		var28[1] = sendAnalyticsEvent_upvr
		var28[2] = arg1.abuseVector
	else
		var28 = {}
	end
	React_upvr.useEffect(function() -- Line 57
		--[[ Upvalues[4]:
			[1]: FFlagEnableAbuseReportRevampAnalytics_upvr (copied, readonly)
			[2]: sendAnalyticsEvent_upvr (copied, readonly)
			[3]: TelemetryEventType_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		if FFlagEnableAbuseReportRevampAnalytics_upvr then
			sendAnalyticsEvent_upvr({
				eventType = TelemetryEventType_upvr.Rendered;
				context = {
					abuseVector = arg1.abuseVector;
				};
			})
		end
	end, var28)
	local function _() -- Line 68
		--[[ Upvalues[5]:
			[1]: var27_upvw (read and write)
			[2]: sendAnalyticsEvent_upvr (copied, readonly)
			[3]: TelemetryEventType_upvr (copied, readonly)
			[4]: var26_upvw (read and write)
			[5]: arg1 (readonly)
		]]
		if not var27_upvw then
			sendAnalyticsEvent_upvr({
				eventType = TelemetryEventType_upvr.Abandoned;
				context = var26_upvw;
			})
		end
		arg1.onClose()
	end
	var28 = {}
	var28[1] = var27_upvw
	var28[2] = sendAnalyticsEvent_upvr
	var28[3] = var26_upvw
	var28[4] = arg1.onClose
	var28 = React_upvr
	var28 = PartialPageModal_upvr
	local module = {
		title = useLocalization_upvr(tbl).reportTitle;
		screenSize = Vector2.new(absoluteSize_upvr.X, absoluteSize_upvr.Y);
	}
	if FFlagEnableAbuseReportRevampAnalytics_upvr then
	else
	end
	module.onCloseClicked = arg1.onClose
	return var28.createElement(var28, module, {
		View = React_upvr.createElement(View_upvr, {
			tag = "size-full-0 auto-y";
		}, {
			ScrollView = React_upvr.createElement(ScrollView_upvr, {
				Size = any_useBinding_result1:map(function(arg1_2) -- Line 87
					--[[ Upvalues[1]:
						[1]: absoluteSize_upvr (readonly)
					]]
					return UDim2.new(1, 0, 0, math.min(absoluteSize_upvr.Y - 100, math.ceil(arg1_2.Y)))
				end);
				scroll = {
					AutomaticCanvasSize = Enum.AutomaticSize.Y;
					CanvasSize = UDim2.new(1, 0, 0, 0);
					ScrollingDirection = Enum.ScrollingDirection.Y;
				};
				onAbsoluteCanvasSizeChanged = function(arg1_3) -- Line 95, Named "onAbsoluteCanvasSizeChanged"
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr (readonly)
					]]
					any_useState_result2_upvr(arg1_3.AbsoluteCanvasSize)
				end;
				onAbsoluteWindowSizeChanged = function(arg1_4) -- Line 98, Named "onAbsoluteWindowSizeChanged"
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr_2 (readonly)
					]]
					any_useState_result2_upvr_2(arg1_4.AbsoluteWindowSize)
				end;
			}, {
				Content = React_upvr.createElement(View_upvr, {
					Size = UDim2.new(0, -useScrollbarOffset_upvr(any_useState_result1_2, any_useState_result1), 0, 0);
					onAbsoluteSizeChanged = function(arg1_5) -- Line 104, Named "onAbsoluteSizeChanged"
						--[[ Upvalues[1]:
							[1]: any_useBinding_result2_upvr (readonly)
						]]
						any_useBinding_result2_upvr(arg1_5.AbsoluteSize)
					end;
					tag = "auto-xy padding-x-xxsmall padding-top-medium";
				}, {
					ReportFlowHandler = React_upvr.createElement(ReportFlowHandler_upvr, {
						targetId = arg1.targetId;
						abuseVector = arg1.abuseVector;
					});
				});
			});
		});
	})
end)