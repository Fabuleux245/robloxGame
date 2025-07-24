-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:48
-- Luau version 6, Types version 3
-- Time taken: 0.013689 seconds

local InterventionShared = script:FindFirstAncestor("InterventionShared")
local Parent = InterventionShared.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local Foundation = require(Parent.Foundation)
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local useTokens_upvr = Foundation.Hooks.useTokens
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useInterventionPlacement_upvr = require(InterventionShared.Hooks.useInterventionPlacement)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Constants_upvr = require(InterventionShared.Utils.Constants)
local InterventionAnalytics_upvr = require(InterventionShared.InterventionAnalytics)
local NotificationModalsManager_upvr = require(Parent.NotificationModalsManager)
local icons_actions_accept_upvr = UIBlox.App.ImageSet.Images["icons/actions/accept"]
local useScrollFrameHeightCalculation_upvr = require(InterventionShared.Hooks.useScrollFrameHeightCalculation)
local useCursor_upvr = UIBlox.App.SelectionCursor.useCursor
local ModalWindow_upvr = UIBlox.App.Dialog.Modal.ModalWindow
local View_upvr = Foundation.View
local ScrollView_upvr = Foundation.ScrollView
local ScrollBarVisibility_upvr = Foundation.Enums.ScrollBarVisibility
local FFlagCSFocusWrapperRefactor_upvr = require(Parent.SharedFlags).FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local Icon_upvr = Foundation.Icon
local Text_upvr = Foundation.Text
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function InterventionDialog(arg1) -- Line 51
	--[[ Upvalues[24]:
		[1]: useLayerCollector_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useInterventionPlacement_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: InterventionAnalytics_upvr (readonly)
		[9]: NotificationModalsManager_upvr (readonly)
		[10]: icons_actions_accept_upvr (readonly)
		[11]: useScrollFrameHeightCalculation_upvr (readonly)
		[12]: useCursor_upvr (readonly)
		[13]: ModalWindow_upvr (readonly)
		[14]: View_upvr (readonly)
		[15]: ScrollView_upvr (readonly)
		[16]: ScrollBarVisibility_upvr (readonly)
		[17]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[18]: FocusRoot_upvr (readonly)
		[19]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[20]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[21]: Icon_upvr (readonly)
		[22]: Text_upvr (readonly)
		[23]: ButtonStack_upvr (readonly)
		[24]: ButtonType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 82 start (CF ANALYSIS FAILED)
	local absoluteSize = useLayerCollector_upvr().absoluteSize
	local any_useRef_result1_upvr = React_upvr.useRef(DateTime.now().UnixTimestampMillis)
	local useTokens_upvr_result1 = useTokens_upvr()
	local var9_result1_upvr = useStyle_upvr()
	local useInterventionPlacement_upvr_result1_upvr = useInterventionPlacement_upvr()
	local var11_result1_upvr = useLocalization_upvr(Constants_upvr.localizationKeys)
	local function var44() -- Line 121
		--[[ Upvalues[4]:
			[1]: InterventionAnalytics_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: useInterventionPlacement_upvr_result1_upvr (readonly)
			[4]: any_useRef_result1_upvr (readonly)
		]]
		InterventionAnalytics_upvr.sendAnalyticsEvent(InterventionAnalytics_upvr.TelemetryConfigs.DialogRendered, {
			eventType = InterventionAnalytics_upvr.Constants.EventTypes.ModalAppeared;
			counterNamespace = arg1.namespaceForAnalytics;
			interventionType = arg1.interventionTypeForAnalytics;
			placement = useInterventionPlacement_upvr_result1_upvr;
			renderedTimestamp = any_useRef_result1_upvr.current;
			eventId = arg1.eventId;
			evidence = arg1.evidence;
			duration = arg1.durationForAnalytics;
		})
	end
	React_upvr.useEffect(var44, {any_useRef_result1_upvr, arg1.eventId})
	var44 = {}
	local var47 = var44
	local var16_result1 = useScrollFrameHeightCalculation_upvr(var47)
	local var49
	if 540 < absoluteSize.X then
		var47 = "gap-xlarge"
	else
		var47 = "gap-medium"
	end
	local var17_result1 = useCursor_upvr(UDim.new(0, var9_result1_upvr.Tokens.Semantic.Radius.Medium), var9_result1_upvr.Tokens.Global.Space_50, var9_result1_upvr.Tokens.Global.Size_25)
	local module = {}
	local tbl = {}
	local tbl_10 = {}
	if FFlagCSFocusWrapperRefactor_upvr then
	else
	end
	if FFlagCSFocusWrapperRefactor_upvr then
		local tbl_3 = {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp;
		}
		local var59 = true
		tbl_3.isIsolated = var59
		if useInterventionPlacement_upvr_result1_upvr == Constants_upvr.InterventionPlacementType.InApp then
			var59 = false
		else
			var59 = true
		end
		tbl_3.isAutoFocusRoot = var59
		tbl_3.frameProps = {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
		}
	else
	end
	local tbl_2 = {}
	local tbl_4 = {}
	if var16_result1.shouldShowScrollBar then
		var49 = -Constants_upvr.SCROLL_BAR_WIDTH
	else
		var49 = 0
	end
	tbl_4.Size = UDim2.new(1, var49, 0, 0)
	tbl_4.AutomaticSize = Enum.AutomaticSize.Y
	if var16_result1.shouldShowScrollBar then
		var49 = " padding-right-xsmall"
		-- KONSTANTWARNING: GOTO [313] #223
	end
	var49 = ""
	tbl_4.tag = `col {var47} align-x-center align-y-center`..var49
	tbl_4.onAbsoluteSizeChanged = var16_result1.onInnerContentSizeChanged
	local tbl_11 = {}
	var49 = React_upvr
	var49 = View_upvr
	local tbl_5 = {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
	}
	if 540 < absoluteSize.X then
		-- KONSTANTWARNING: GOTO [357] #255
	end
	tbl_5.tag = `row {var47} align-x-center align-y-center`
	tbl_5.LayoutOrder = 1
	local tbl_8 = {}
	if arg1.iconName then
		local tbl_12 = {
			size = arg1.iconSize;
			name = arg1.iconName;
			style = arg1.iconStyle;
			LayoutOrder = 1;
		}
	else
	end
	tbl_8.Icon = nil
	local tbl_9 = {}
	if arg1.titleText then
		local tbl_6 = {
			LayoutOrder = 1;
			Text = arg1.titleText;
			textStyle = useTokens_upvr_result1.Color.Content.Emphasis;
		}
		local TitleLarge = useTokens_upvr_result1.Typography.TitleLarge
		tbl_6.fontStyle = TitleLarge
		if 540 < absoluteSize.X then
			TitleLarge = Enum.TextXAlignment.Center
		else
			TitleLarge = Enum.TextXAlignment.Left
		end
		tbl_6.TextXAlignment = TitleLarge
		tbl_6.TextYAlignment = Enum.TextYAlignment.Center
		tbl_6.Size = UDim2.new(1, 0, 0, 0)
		tbl_6.AutomaticSize = Enum.AutomaticSize.Y
		tbl_6.TextWrapped = true
		-- KONSTANTWARNING: GOTO [480] #335
	end
	-- KONSTANTERROR: [0] 1. Error Block 82 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [479] 334. Error Block 83 start (CF ANALYSIS FAILED)
	tbl_9.TitleText = nil
	if arg1.bodyText then
		local tbl_7 = {
			LayoutOrder = 2;
			Text = arg1.bodyText;
			textStyle = useTokens_upvr_result1.Color.Content.Default;
		}
		local BodyMedium = useTokens_upvr_result1.Typography.BodyMedium
		tbl_7.fontStyle = BodyMedium
		if 540 < absoluteSize.X then
			BodyMedium = Enum.TextXAlignment.Center
		else
			BodyMedium = Enum.TextXAlignment.Left
		end
		tbl_7.TextXAlignment = BodyMedium
		tbl_7.TextYAlignment = Enum.TextYAlignment.Center
		tbl_7.Size = UDim2.new(1, 0, 0, 0)
		tbl_7.AutomaticSize = Enum.AutomaticSize.Y
		tbl_7.TextWrapped = true
	else
	end
	tbl_9.BodyText = nil
	tbl_8.TextContent = React_upvr.createElement(View_upvr, {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = 2;
		tag = "col fill";
	}, tbl_9)
	tbl_11.IconAndText = var49.createElement(var49, tbl_5, tbl_8)
	var49 = React_upvr
	var49 = View_upvr
	tbl_11.ButtonContainer = var49.createElement(var49, {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = 2;
	}, {
		ButtonStack = React_upvr.createElement(ButtonStack_upvr, {
			buttons = {{
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					cursor = var17_result1;
					text = var11_result1_upvr.IUnderstandText;
					onActivated = React_upvr.useCallback(function() -- Line 62
						--[[ Upvalues[4]:
							[1]: InterventionAnalytics_upvr (copied, readonly)
							[2]: arg1 (readonly)
							[3]: useInterventionPlacement_upvr_result1_upvr (readonly)
							[4]: any_useRef_result1_upvr (readonly)
						]]
						InterventionAnalytics_upvr.sendAnalyticsEvent(InterventionAnalytics_upvr.TelemetryConfigs.DialogCtaClicked, {
							eventType = InterventionAnalytics_upvr.Constants.EventTypes.CtaClicked;
							counterNamespace = arg1.namespaceForAnalytics;
							interventionType = arg1.interventionTypeForAnalytics;
							placement = useInterventionPlacement_upvr_result1_upvr;
							renderedTimestamp = any_useRef_result1_upvr.current;
							eventId = arg1.eventId;
							evidence = arg1.evidence;
							duration = arg1.durationForAnalytics;
						})
						arg1.onDismiss()
					end, {any_useRef_result1_upvr, arg1.interventionTypeForAnalytics, arg1.eventId, arg1.evidence, arg1.durationForAnalytics, arg1.onDismiss});
					layoutOrder = 1;
				};
			}, {
				buttonType = ButtonType_upvr.Secondary;
				props = {
					cursor = var17_result1;
					text = var11_result1_upvr.MistakeText;
					onActivated = React_upvr.useCallback(function() -- Line 86
						--[[ Upvalues[8]:
							[1]: arg1 (readonly)
							[2]: NotificationModalsManager_upvr (copied, readonly)
							[3]: icons_actions_accept_upvr (copied, readonly)
							[4]: var11_result1_upvr (readonly)
							[5]: var9_result1_upvr (readonly)
							[6]: InterventionAnalytics_upvr (copied, readonly)
							[7]: useInterventionPlacement_upvr_result1_upvr (readonly)
							[8]: any_useRef_result1_upvr (readonly)
						]]
						arg1.onDismiss()
						NotificationModalsManager_upvr.SetUIBloxToast({
							iconImage = icons_actions_accept_upvr;
							toastTitle = var11_result1_upvr.TakeALookText;
							toastSubtitle = var11_result1_upvr.FeedbackHelpsText;
							sequenceNumber = DateTime.now().UnixTimestamp;
							iconColorStyle = {
								Color = var9_result1_upvr.Tokens.Semantic.Color.Common.Success.Color3;
								Transparency = 0;
							};
						})
						InterventionAnalytics_upvr.sendAnalyticsEvent(InterventionAnalytics_upvr.TelemetryConfigs.DialogAppealClicked, {
							eventType = InterventionAnalytics_upvr.Constants.EventTypes.AppealClicked;
							counterNamespace = arg1.namespaceForAnalytics;
							interventionType = arg1.interventionTypeForAnalytics;
							placement = useInterventionPlacement_upvr_result1_upvr;
							renderedTimestamp = any_useRef_result1_upvr.current;
							eventId = arg1.eventId;
							evidence = arg1.evidence;
							duration = arg1.durationForAnalytics;
						})
					end, {arg1.onDismiss, arg1.interventionTypeForAnalytics, arg1.eventId, arg1.evidence, arg1.durationForAnalytics});
					layoutOrder = 2;
				};
			}};
		});
	})
	tbl_2.InnerContent = React_upvr.createElement(View_upvr, tbl_4, tbl_11)
	tbl_10.FocusNavigationCoreScriptsWrapper = React_upvr.createElement(FocusNavigationCoreScriptsWrapper_upvr, {
		selectionGroupName = Constants_upvr.ChatNudgeDialogSelectionGroup;
		focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp;
		automaticSize = Enum.AutomaticSize.Y;
		size = UDim2.new(1, 0, 0, 0);
	}, tbl_2)
	tbl.ScrollView = React_upvr.createElement(ScrollView_upvr, {
		Size = UDim2.new(1, 0, 0, var16_result1.scrollFrameContainerHeight);
		scroll = {
			AutomaticCanvasSize = Enum.AutomaticSize.Y;
			CanvasSize = UDim2.new(1, 0, 1, 0);
			scrollBarVisibility = ScrollBarVisibility_upvr.Always;
			ScrollingDirection = Enum.ScrollingDirection.Y;
		};
	}, tbl_10)
	module.ContentContainer = React_upvr.createElement(View_upvr, {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		tag = "padding-x-xlarge padding-y-large";
	}, tbl)
	do
		return React_upvr.createElement(ModalWindow_upvr, {
			screenSize = absoluteSize;
			isFullHeight = false;
		}, module)
	end
	-- KONSTANTERROR: [479] 334. Error Block 83 end (CF ANALYSIS FAILED)
end
return React_upvr.memo(InterventionDialog)