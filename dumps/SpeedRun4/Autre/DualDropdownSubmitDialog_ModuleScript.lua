-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:28
-- Luau version 6, Types version 3
-- Time taken: 0.006329 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local Foundation = require(Parent.Foundation)
local function _(arg1, arg2) -- Line 42, Named "getContentRightPadding"
	if arg2.Y < arg1.Y then
		return 16
	end
	return 1
end
local useTokens_upvr = Foundation.Hooks.useTokens
local useLayerCollector_upvr = require(Parent.UIBlox).Core.Layout.LayerCollector.useLayerCollector
local React_upvr = require(Parent.React)
local useLocalizedStrings_upvr = require(GenericAbuseReporting.LocalizationKeys.useLocalizedStrings)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local createNextOrder_upvr = require(Parent.ReactUtils).createNextOrder
local View_upvr = Foundation.View
local SideModal_upvr = require(GenericAbuseReporting.Common.SideModal)
local ScrollViewGradient_upvr = require(GenericAbuseReporting.Common.ScrollViewGradient)
local Text_upvr = Foundation.Text
local SideModalDropdownButton_upvr = require(GenericAbuseReporting.Common.SideModalDropdownButton)
local CommentTextField_upvr = require(GenericAbuseReporting.Common.CommentTextField)
local ButtonList_upvr = require(GenericAbuseReporting.Common.ButtonList)
return function(arg1) -- Line 46, Named "DualDropdownSubmitDialog"
	--[[ Upvalues[13]:
		[1]: useTokens_upvr (readonly)
		[2]: useLayerCollector_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useLocalizedStrings_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: createNextOrder_upvr (readonly)
		[7]: View_upvr (readonly)
		[8]: SideModal_upvr (readonly)
		[9]: ScrollViewGradient_upvr (readonly)
		[10]: Text_upvr (readonly)
		[11]: SideModalDropdownButton_upvr (readonly)
		[12]: CommentTextField_upvr (readonly)
		[13]: ButtonList_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 69 start (CF ANALYSIS FAILED)
	local useTokens_upvr_result1 = useTokens_upvr()
	local absoluteSize = useLayerCollector_upvr().absoluteSize
	local any_useState_result1, any_useState_result2_upvr_6 = React_upvr.useState(false)
	local _, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useState_result1_upvr, _ = React_upvr.useState("")
	local any_useState_result1_4, _ = React_upvr.useState("")
	local any_useState_result1_5, _ = React_upvr.useState("")
	local any_useState_result1_7_upvr, _ = React_upvr.useState("")
	local _, _ = React_upvr.useState("")
	local _, any_useState_result2_upvr = React_upvr.useState(false)
	local _, any_useState_result2_upvr_5 = React_upvr.useState(false)
	local _, any_useState_result2_upvr_4 = React_upvr.useState(false)
	local any_useState_result1_6_upvr, _ = React_upvr.useState("")
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useState_result1_3, any_useState_result2_upvr_7 = React_upvr.useState(Vector2.zero)
	local any_useState_result1_2, any_useState_result2_upvr_3 = React_upvr.useState(Vector2.zero)
	local var7_result1 = useLocalizedStrings_upvr()
	local var8_result1 = useLocalization_upvr({
		submitDialogProblemSubheading = "Feature.ReportAbuse.Label.WhatWasWrong";
		submitDialogSurfaceSubheading = "Feature.ReportAbuse.Label.WhereDidItHappen";
		selectOnePrompt = "Feature.ReportAbuse.Label.PleaseSelectOne";
		submitDialogCommentSubheading = "Feature.ReportAbuse.Label.TellUsWhatHappenedNoOptional";
		submitDialogTextBoxPlaceholder = "Feature.SettingsHub.Label.ReportComment";
		submitDialogOptional = "Feature.ReportAbuse.Label.Optional";
		chooseOne = "Feature.ReportAbuse.Label.ChooseOne";
	})
	local var9_result1 = createNextOrder_upvr()
	React_upvr.useLayoutEffect(function() -- Line 79
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useState_result2_upvr_7 (readonly)
			[3]: any_useState_result2_upvr_3 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 9 start (CF ANALYSIS FAILED)
		if any_useRef_result1_upvr.current then
			local class_ScrollingFrame_upvr = any_useRef_result1_upvr.current:FindFirstChildWhichIsA("ScrollingFrame")
			if class_ScrollingFrame_upvr then
				any_useState_result2_upvr_7(class_ScrollingFrame_upvr.AbsoluteCanvasSize)
				any_useState_result2_upvr_3(class_ScrollingFrame_upvr.AbsoluteWindowSize)
				local any_Connect_result1_upvr_2 = class_ScrollingFrame_upvr:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(function() -- Line 88
					--[[ Upvalues[2]:
						[1]: any_useState_result2_upvr_7 (copied, readonly)
						[2]: class_ScrollingFrame_upvr (readonly)
					]]
					any_useState_result2_upvr_7(class_ScrollingFrame_upvr.AbsoluteCanvasSize)
				end)
				local any_Connect_result1_upvr = class_ScrollingFrame_upvr:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function() -- Line 93
					--[[ Upvalues[2]:
						[1]: any_useState_result2_upvr_3 (copied, readonly)
						[2]: class_ScrollingFrame_upvr (readonly)
					]]
					any_useState_result2_upvr_3(class_ScrollingFrame_upvr.AbsoluteWindowSize)
				end)
				do
					return function() -- Line 96
						--[[ Upvalues[2]:
							[1]: any_Connect_result1_upvr_2 (readonly)
							[2]: any_Connect_result1_upvr (readonly)
						]]
						any_Connect_result1_upvr_2:Disconnect()
						any_Connect_result1_upvr:Disconnect()
					end
				end
				-- KONSTANTWARNING: GOTO [53] #43
			end
		else
			class_ScrollingFrame_upvr = any_useState_result2_upvr_7
			any_Connect_result1_upvr_2 = Vector2.zero
			class_ScrollingFrame_upvr(any_Connect_result1_upvr_2)
			class_ScrollingFrame_upvr = any_useState_result2_upvr_3
			any_Connect_result1_upvr_2 = Vector2.zero
			class_ScrollingFrame_upvr(any_Connect_result1_upvr_2)
		end
		-- KONSTANTERROR: [0] 1. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [53] 43. Error Block 6 start (CF ANALYSIS FAILED)
		function class_ScrollingFrame_upvr() -- Line 105
		end
		do
			return class_ScrollingFrame_upvr
		end
		-- KONSTANTERROR: [53] 43. Error Block 6 end (CF ANALYSIS FAILED)
	end, {any_useRef_result1_upvr.current, absoluteSize})
	local function _() -- Line 126
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: any_useState_result2_upvr_5 (readonly)
		]]
		any_useState_result2_upvr(false)
		any_useState_result2_upvr_5(false)
	end
	local _ = {any_useState_result2_upvr, any_useState_result2_upvr_5}
	;({}).tag = "size-full auto-xy"
	local tbl_5 = {
		screenSize = absoluteSize;
		buttonProps = {
			text = var7_result1.formSubmit;
			onActivated = React_upvr.useCallback(function() -- Line 108
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: any_useState_result1_upvr (readonly)
					[3]: any_useState_result1_7_upvr (readonly)
					[4]: any_useState_result1_6_upvr (readonly)
				]]
				arg1.onSubmit(any_useState_result1_upvr, any_useState_result1_7_upvr, any_useState_result1_6_upvr)
			end, {arg1.onSubmit, any_useState_result1_upvr, any_useState_result1_7_upvr, any_useState_result1_6_upvr});
			validateState = React_upvr.useCallback(function() -- Line 112
				--[[ Upvalues[4]:
					[1]: any_useState_result1_upvr (readonly)
					[2]: any_useState_result1_7_upvr (readonly)
					[3]: any_useState_result2_upvr_6 (readonly)
					[4]: any_useState_result2_upvr_2 (readonly)
				]]
				if any_useState_result1_upvr ~= "" and any_useState_result1_7_upvr ~= "" then
					return true
				end
				if any_useState_result1_upvr == "" then
					any_useState_result2_upvr_6(true)
				end
				if any_useState_result1_7_upvr == "" then
					any_useState_result2_upvr_2(true)
				end
				return false
			end, {any_useState_result1_upvr, any_useState_result1_7_upvr, any_useState_result2_upvr_6, any_useState_result2_upvr_2});
		};
		onAbandon = arg1.onAbandon;
		title = var7_result1.formTitle;
		width = math.min(400, absoluteSize.X - 50);
		height = math.min(500, absoluteSize.Y - 50);
	}
	local _ = {
		Size = UDim2.new(1, 0, 1, 0);
		ref = any_useRef_result1_upvr;
		gradientHeight = 40;
	}
	local tbl_3 = {
		PaddingBottom = UDim.new(0, 10);
	}
	local var71 = 1
	tbl_3.PaddingLeft = UDim.new(0, var71)
	local onActivated
	if any_useState_result1_2.Y < any_useState_result1_3.Y then
		var71 = 16
	else
		var71 = 1
	end
	tbl_3.PaddingRight = UDim.new(0, var71)
	;({
		Layout = React_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, 30);
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}).Padding = React_upvr.createElement("UIPadding", tbl_3)
	local _ = {
		ZIndex = 3;
		tag = "size-full-0 auto-y col align-x-left";
		LayoutOrder = var9_result1();
	}
	;({}).ProblemHeading = React_upvr.createElement(Text_upvr, {
		Text = "1. "..var8_result1.submitDialogProblemSubheading;
		fontStyle = useTokens_upvr_result1.Typography.TitleLarge;
		textStyle = useTokens_upvr_result1.Color.Content.Emphasis;
		tag = "auto-xy padding-bottom-medium";
		LayoutOrder = var9_result1();
	})
	local tbl_4 = {}
	onActivated = 48
	tbl_4.Size = UDim2.new(1, 0, 0, onActivated)
	tbl_4.tag = "col align-x-left"
	tbl_4.LayoutOrder = var9_result1()
	local tbl_2 = {
		setDropdownError = any_useState_result2_upvr_6;
	}
	function onActivated() -- Line 183
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: any_useState_result2_upvr_4 (readonly)
		]]
		any_useState_result2_upvr(true)
		any_useState_result2_upvr_4(false)
	end
	tbl_2.onActivated = onActivated
	onActivated = var8_result1.submitDialogProblemSubheading
	tbl_2.title = onActivated
	local function INLINED() -- Internal function, doesn't exist in bytecode
		onActivated = any_useState_result1_4
		return onActivated
	end
	if any_useState_result1_4 == "" or not INLINED() then
		onActivated = var8_result1.chooseOne
	end
	tbl_2.text = onActivated
	tbl_2.isDropdownError = any_useState_result1
	;({}).ProblemDropdown = React_upvr.createElement(SideModalDropdownButton_upvr, tbl_2)
	local tbl = {}
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		onActivated = var8_result1.selectOnePrompt
		return onActivated
	end
	if not any_useState_result1 or not INLINED_2() then
		onActivated = any_useState_result1_5
	end
	tbl.Text = onActivated
	onActivated = true
	tbl.TextWrapped = onActivated
	onActivated = Enum.TextXAlignment.Left
	tbl.TextXAlignment = onActivated
	onActivated = useTokens_upvr_result1.Typography.BodySmall
	tbl.fontStyle = onActivated
	-- KONSTANTERROR: [0] 1. Error Block 69 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [439] 314. Error Block 14 start (CF ANALYSIS FAILED)
	onActivated = useTokens_upvr_result1.Color.System.Alert
	-- KONSTANTERROR: [439] 314. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [446] 318. Error Block 62 start (CF ANALYSIS FAILED)
	onActivated = useTokens_upvr_result1.Color.Content.Muted
	-- KONSTANTERROR: [446] 318. Error Block 62 end (CF ANALYSIS FAILED)
end