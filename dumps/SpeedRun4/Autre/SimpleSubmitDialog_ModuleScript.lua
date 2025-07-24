-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:29
-- Luau version 6, Types version 3
-- Time taken: 0.012932 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local UIBlox = require(Parent.UIBlox)
local Foundation = require(Parent.Foundation)
local FFlagAddAbuseReportOffsetForLandscape_upvr = require(Parent.SharedFlags).FFlagAddAbuseReportOffsetForLandscape
local function _(arg1) -- Line 60, Named "getScreenSizeOffset"
	--[[ Upvalues[1]:
		[1]: FFlagAddAbuseReportOffsetForLandscape_upvr (readonly)
	]]
	if FFlagAddAbuseReportOffsetForLandscape_upvr then
		if arg1.Y < arg1.X then
			return 180
		end
		return 100
	end
	return 100
end
local function _(arg1, arg2) -- Line 69, Named "getContentRightPadding"
	if arg2.Y < arg1.Y then
		return 16
	end
	return 1
end
local useAnalyticsDispatch_upvr = require(GenericAbuseReporting.Analytics.useAnalyticsDispatch)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local OnFormReasonSelected_upvr = require(GenericAbuseReporting.Analytics.Actions.OnFormReasonSelected)
local OnFormCommentUpdated_upvr = require(GenericAbuseReporting.Analytics.Actions.OnFormCommentUpdated)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useLocalizedStrings_upvr = require(GenericAbuseReporting.LocalizationKeys.useLocalizedStrings)
local createNextOrder_upvr = require(Parent.ReactUtils).createNextOrder
local ReasonDropdown_upvr = require(GenericAbuseReporting.Common.ReasonDropdown)
local UIListLayout_upvr = require(GenericAbuseReporting.Common.UIListLayout)
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local MODAL_POSITION_OFFSET_upvr = require(GenericAbuseReporting.Common.MODAL_POSITION_OFFSET)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local CloseButtonIcon_upvr = UIBlox.App.Dialog.Enum.CloseButtonIcon
local ScrollView_upvr = Foundation.ScrollView
local ScrollBarVisibility_upvr = Foundation.Enums.ScrollBarVisibility
local Frame_upvr = require(GenericAbuseReporting.Common.Frame)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local CommentTextField_upvr = require(GenericAbuseReporting.Common.CommentTextField)
return function(arg1) -- Line 73, Named "SubmitDialog"
	--[[ Upvalues[23]:
		[1]: useAnalyticsDispatch_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useLayerCollector_upvr (readonly)
		[5]: OnFormReasonSelected_upvr (readonly)
		[6]: OnFormCommentUpdated_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: useLocalizedStrings_upvr (readonly)
		[9]: createNextOrder_upvr (readonly)
		[10]: ReasonDropdown_upvr (readonly)
		[11]: UIListLayout_upvr (readonly)
		[12]: View_upvr (readonly)
		[13]: Text_upvr (readonly)
		[14]: PartialPageModal_upvr (readonly)
		[15]: MODAL_POSITION_OFFSET_upvr (readonly)
		[16]: ButtonType_upvr (readonly)
		[17]: CloseButtonIcon_upvr (readonly)
		[18]: ScrollView_upvr (readonly)
		[19]: FFlagAddAbuseReportOffsetForLandscape_upvr (readonly)
		[20]: ScrollBarVisibility_upvr (readonly)
		[21]: Frame_upvr (readonly)
		[22]: StyledTextLabel_upvr (readonly)
		[23]: CommentTextField_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 73 start (CF ANALYSIS FAILED)
	local var6_result1_upvr = useAnalyticsDispatch_upvr()
	local var7_result1 = useStyle_upvr()
	local any_useState_result1_10, any_useState_result2_2_upvr = React_upvr.useState(false)
	local any_useState_result1_11_upvr, any_useState_result2_5_upvr = React_upvr.useState("")
	local any_useState_result1, any_useState_result2 = React_upvr.useState("")
	local any_useState_result1_7_upvr, any_useState_result2_8_upvr = React_upvr.useState("")
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useState_result1_8_upvr, any_useState_result2_7_upvr = React_upvr.useState(Vector2.zero)
	local any_useState_result1_9, any_useState_result2_6_upvr = React_upvr.useState(Vector2.zero)
	local any_useState_result1_6_upvr, any_useState_result2_4_upvr = React_upvr.useState(0)
	local any_useState_result1_5_upvr, any_useState_result2_3_upvr = React_upvr.useState(0)
	local any_useRef_result1_upvr_3 = React_upvr.useRef(nil)
	local any_useState_result1_3_upvr, any_useState_result2_upvr_2 = React_upvr.useState(0)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useState_result1_2, any_useState_result2_9_upvr = React_upvr.useState(0)
	local any_useState_result1_4, any_useState_result2_upvr = React_upvr.useState(96)
	local var9_result1 = useLayerCollector_upvr()
	local absoluteSize = var9_result1.absoluteSize
	React_upvr.useEffect(function() -- Line 94
		--[[ Upvalues[5]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: any_useState_result1_8_upvr (readonly)
			[3]: any_useState_result1_3_upvr (readonly)
			[4]: any_useState_result1_5_upvr (readonly)
			[5]: any_useState_result1_6_upvr (readonly)
		]]
		any_useState_result2_upvr(math.max(96, (any_useState_result1_8_upvr.Y) - (any_useState_result1_3_upvr - any_useState_result1_5_upvr) - any_useState_result1_6_upvr - 20))
	end, {any_useState_result1_8_upvr.Y, any_useState_result1_3_upvr, any_useState_result1_5_upvr, any_useState_result1_6_upvr})
	React_upvr.useEffect(function() -- Line 103
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr_3 (readonly)
			[2]: any_useState_result2_4_upvr (readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
		]]
		if any_useRef_result1_upvr_3.current then
			any_useState_result2_4_upvr(any_useRef_result1_upvr_3.current.AbsoluteSize.Y)
			any_useState_result2_upvr_2(any_useRef_result1_upvr_3.current.AbsolutePosition.Y)
		end
	end, {any_useRef_result1_upvr_3.current, absoluteSize})
	React_upvr.useEffect(function() -- Line 110
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useState_result2_6_upvr (readonly)
			[3]: any_useState_result2_7_upvr (readonly)
			[4]: any_useState_result2_3_upvr (readonly)
		]]
		if any_useRef_result1_upvr_2.current then
			local class_ScrollingFrame_upvr = any_useRef_result1_upvr_2.current:FindFirstChildWhichIsA("ScrollingFrame")
			if class_ScrollingFrame_upvr then
				class_ScrollingFrame_upvr:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function() -- Line 114
					--[[ Upvalues[3]:
						[1]: any_useState_result2_6_upvr (copied, readonly)
						[2]: class_ScrollingFrame_upvr (readonly)
						[3]: any_useState_result2_7_upvr (copied, readonly)
					]]
					any_useState_result2_6_upvr(class_ScrollingFrame_upvr.AbsoluteWindowSize)
					any_useState_result2_7_upvr(class_ScrollingFrame_upvr.AbsoluteCanvasSize)
				end)
			end
			any_useState_result2_3_upvr(any_useRef_result1_upvr_2.current.AbsolutePosition.Y)
		else
			class_ScrollingFrame_upvr = any_useState_result2_7_upvr
			class_ScrollingFrame_upvr(Vector2.zero)
		end
	end, {any_useRef_result1_upvr_2.current, absoluteSize})
	React_upvr.useEffect(function() -- Line 125
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useState_result2_9_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current then
			any_useState_result2_9_upvr(any_useRef_result1_upvr.current.AbsoluteContentSize.Y)
		end
	end, {any_useRef_result1_upvr.current})
	local function var72(arg1_3) -- Line 150
		--[[ Upvalues[3]:
			[1]: any_useState_result2_8_upvr (readonly)
			[2]: var6_result1_upvr (readonly)
			[3]: OnFormCommentUpdated_upvr (copied, readonly)
		]]
		any_useState_result2_8_upvr(arg1_3)
		local tbl_5 = {}
		local var74
		if 0 >= #arg1_3 then
			var74 = false
		else
			var74 = true
		end
		tbl_5.comment_added = var74
		var6_result1_upvr(OnFormCommentUpdated_upvr(tbl_5))
	end
	local var76
	if arg1.localizationKeys then
		var72 = useLocalization_upvr(arg1.localizationKeys)
	else
		var72 = useLocalizedStrings_upvr()
	end
	local useLocalization_upvr_result1 = useLocalization_upvr({
		submitDialogReasonSubheading = "Feature.ReportAbuse.Label.WhatWasWrong";
		selectOnePrompt = "Feature.ReportAbuse.Label.PleaseSelectOne";
		submitDialogCommentSubheading = "Feature.ReportAbuse.Label.TellUsWhatHappened";
		submitDialogTextBoxPlaceholder = "Feature.SettingsHub.Label.ReportComment";
		defaultKey = arg1.reportCategories[1].localizationKey;
	})
	local var14_result1 = createNextOrder_upvr()
	local tbl_15 = {}
	var76 = 0
	tbl_15.Size = UDim2.new(1, 0, 0, var76)
	tbl_15.AutomaticSize = Enum.AutomaticSize.Y
	tbl_15.BackgroundTransparency = 1
	tbl_15.LayoutOrder = var14_result1()
	local tbl_14 = {}
	local tbl_13 = {}
	var76 = UDim.new(0, 7)
	tbl_13.Padding = var76
	var76 = Enum.FillDirection.Vertical
	tbl_13.FillDirection = var76
	var76 = Enum.HorizontalAlignment.Left
	tbl_13.HorizontalAlignment = var76
	tbl_14.Layout = React_upvr.createElement(UIListLayout_upvr, tbl_13)
	local tbl_12 = {}
	var76 = UDim.new(0, 15)
	tbl_12.PaddingBottom = var76
	tbl_14.Padding = React_upvr.createElement("UIPadding", tbl_12)
	local tbl = {}
	var76 = UDim2.new(1, 0, 0, 48)
	tbl.Size = var76
	var76 = "radius-medium stroke-standard stroke-system-neutral padding-left-small"
	tbl.tag = var76
	var76 = {}
	var76.Text = React_upvr.createElement(Text_upvr, {
		Text = useLocalization_upvr_result1.defaultKey;
		TextXAlignment = Enum.TextXAlignment.Left;
		tag = "size-full content-muted";
	})
	tbl_14.TextFrame = React_upvr.createElement(View_upvr, tbl, var76)
	local module_2 = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var76 = arg1.scaleDialog.X
		return var76
	end
	if not arg1.scaleDialog or not INLINED() then
		var76 = 1
	end
	var76 = absoluteSize.Y - var9_result1.insets.top
	if not arg1.scaleDialog or not arg1.scaleDialog.Y then
	end
	module_2.screenSize = Vector2.new(absoluteSize.X * var76, var76 * 1)
	var76 = 0
	module_2.position = UDim2.new(0.5, 0, var76, var9_result1.insets.top + MODAL_POSITION_OFFSET_upvr)
	module_2.anchorPoint = Vector2.new(0.5, 0)
	module_2.title = var72.formTitle
	module_2.onCloseClicked = arg1.onAbandon
	local tbl_11 = {}
	local tbl_3 = {}
	local tbl_10 = {}
	var76 = ButtonType_upvr.PrimaryContextual
	tbl_10.buttonType = var76
	var76 = {}
	var76.onActivated = React_upvr.useCallback(function() -- Line 131
		--[[ Upvalues[4]:
			[1]: any_useState_result1_11_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_useState_result1_7_upvr (readonly)
			[4]: any_useState_result2_2_upvr (readonly)
		]]
		if any_useState_result1_11_upvr ~= "" then
			arg1.onSubmit(any_useState_result1_11_upvr, any_useState_result1_7_upvr)
		else
			if arg1.reportCategoryDefaultKey ~= nil then
				arg1.onSubmit(arg1.reportCategoryDefaultKey, any_useState_result1_7_upvr)
				return
			end
			any_useState_result2_2_upvr(true)
		end
	end, {arg1.onSubmit, any_useState_result1_11_upvr, any_useState_result1_7_upvr, any_useState_result2_2_upvr})
	var76.text = var72.formSubmit
	tbl_10.props = var76
	tbl_3[1] = tbl_10
	tbl_11.buttons = tbl_3
	module_2.buttonStackProps = tbl_11
	module_2.footerContent = arg1.footerContent
	if arg1.useBackButton then
	else
	end
	module_2.closeButtonIcon = nil
	local module = {}
	var76 = {}
	var76.BackgroundTransparency = 1
	var76.AutomaticSize = Enum.AutomaticSize.Y
	var76.Size = UDim2.fromScale(1, 0)
	local tbl_16 = {}
	local tbl_9 = {}
	if FFlagAddAbuseReportOffsetForLandscape_upvr then
		if absoluteSize.Y < absoluteSize.X then
		else
		end
	else
	end
	tbl_9.Size = UDim2.new(1, 0, 0, math.min(absoluteSize.Y - var9_result1.insets.top - 100, any_useState_result1_2 + 50 + 50))
	tbl_9.scroll = {
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		CanvasSize = UDim2.fromOffset(0, 0);
		scrollBarVisibility = ScrollBarVisibility_upvr.Always;
		ScrollingDirection = Enum.ScrollingDirection.Y;
	}
	tbl_9.ref = any_useRef_result1_upvr_2
	local tbl_8 = {
		Layout = React_upvr.createElement(UIListLayout_upvr, {
			Padding = UDim.new(0, 16);
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			Ref = any_useRef_result1_upvr;
		});
	}
	local tbl_7 = {
		PaddingTop = UDim.new(0, 16);
		PaddingBottom = UDim.new(0, 16);
		PaddingLeft = UDim.new(0, 1);
	}
	if any_useState_result1_9.Y < any_useState_result1_8_upvr.Y then
		-- KONSTANTWARNING: GOTO [617] #436
	end
	-- KONSTANTERROR: [0] 1. Error Block 73 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [616] 435. Error Block 74 start (CF ANALYSIS FAILED)
	tbl_7.PaddingRight = UDim.new(0, 1)
	tbl_8.Padding = React_upvr.createElement("UIPadding", tbl_7)
	tbl_8.TopCustomComponent = arg1.topCustomComponent
	local tbl_2 = {
		Layout = React_upvr.createElement(UIListLayout_upvr, {
			Padding = UDim.new(0, 14);
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
		});
		ReportReasonSubheading = React_upvr.createElement(StyledTextLabel_upvr, {
			text = "1. "..useLocalization_upvr_result1.submitDialogReasonSubheading;
			fontStyle = var7_result1.Font.Header2;
			colorStyle = var7_result1.Theme.TextEmphasis;
			layoutOrder = var14_result1();
			automaticSize = Enum.AutomaticSize.XY;
		});
	}
	local tbl_4 = {}
	if arg1.isReportCategoryReadonly then
	else
	end
	tbl_4.ReportReasonPrompt = React_upvr.createElement(ReasonDropdown_upvr, {
		options = arg1.reportCategories;
		screenSize = absoluteSize;
		maxHeight = any_useState_result1_4;
		menuItemHeight = 48;
		isDropdownError = any_useState_result1_10;
		setDropdownError = any_useState_result2_2_upvr;
		onSelectedAbuseType = React_upvr.useCallback(function(arg1_2) -- Line 143
			--[[ Upvalues[3]:
				[1]: any_useState_result2_5_upvr (readonly)
				[2]: var6_result1_upvr (readonly)
				[3]: OnFormReasonSelected_upvr (copied, readonly)
			]]
			any_useState_result2_5_upvr(arg1_2)
			local tbl_6 = {}
			tbl_6.reason_selection = arg1_2
			var6_result1_upvr(OnFormReasonSelected_upvr(tbl_6))
		end, {var6_result1_upvr});
		reportCategoryDefaultKey = arg1.reportCategoryDefaultKey;
		setDescription = any_useState_result2;
		isDisabled = arg1.isDisabled;
	})
	tbl_2.DropdownPosition = React_upvr.createElement(Frame_upvr, {
		AutomaticSize = Enum.AutomaticSize.None;
		Size = UDim2.new(1, 0, 0, 48);
		ZIndex = 2;
		LayoutOrder = var14_result1();
		ref = any_useRef_result1_upvr_3;
	}, tbl_4)
	if any_useState_result1_10 then
		local _ = {
			text = useLocalization_upvr_result1.selectOnePrompt;
			fontStyle = var7_result1.Font.BodySmall;
			colorStyle = var7_result1.Theme.Alert;
			layoutOrder = var14_result1();
			automaticSize = Enum.AutomaticSize.XY;
		}
	elseif any_useState_result1 ~= "" then
		local _ = {
			text = any_useState_result1;
			fontStyle = var7_result1.Font.BodySmall;
			colorStyle = var7_result1.Theme.TextDefault;
			layoutOrder = var14_result1();
			automaticSize = Enum.AutomaticSize.XY;
		}
	else
	end
	tbl_2.ReportReasonSubtext = nil
	if any_useState_result1 ~= "" or any_useState_result1_10 then
		local _ = {
			PaddingBottom = UDim.new(0, 10);
		}
	else
	end
	tbl_2.Padding = nil
	tbl_8.ReportReasonFrame = React_upvr.createElement(Frame_upvr, {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		ZIndex = 2;
		LayoutOrder = var14_result1();
	}, tbl_2)
	tbl_8.ReportCommentFrame = React_upvr.createElement(Frame_upvr, {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = var14_result1();
	}, {
		Layout = React_upvr.createElement(UIListLayout_upvr, {
			Padding = UDim.new(0, 14);
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, 15);
		});
		ReportCommentSubheading = React_upvr.createElement(StyledTextLabel_upvr, {
			text = "2. "..useLocalization_upvr_result1.submitDialogCommentSubheading;
			fontStyle = var7_result1.Font.Header2;
			colorStyle = var7_result1.Theme.TextEmphasis;
			layoutOrder = var14_result1();
			automaticSize = Enum.AutomaticSize.XY;
		});
		CommentTextField = React_upvr.createElement(CommentTextField_upvr, {
			layoutOrder = var14_result1();
			text = any_useState_result1_7_upvr;
			placeholderText = useLocalization_upvr_result1.submitDialogTextBoxPlaceholder;
			onUpdate = React_upvr.useCallback(var72, {var6_result1_upvr});
		});
	})
	tbl_16.SubmitReportFrame = React_upvr.createElement(ScrollView_upvr, tbl_9, tbl_8)
	module.SubmitContainer = React_upvr.createElement("Frame", var76, tbl_16)
	do
		return React_upvr.createElement(PartialPageModal_upvr, module_2, module)
	end
	-- KONSTANTERROR: [616] 435. Error Block 74 end (CF ANALYSIS FAILED)
end