-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:49
-- Luau version 6, Types version 3
-- Time taken: 0.003884 seconds

local Parent = script.Parent.Parent
local Parent_3 = Parent.Parent
local Parent_2 = Parent_3.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local validateColorInfo = require(Parent_3.Core.Style.Validator.validateColorInfo)
local validateFontInfo = require(Parent_3.Core.Style.Validator.validateFontInfo)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("GenericCell")
any_extend_result1_upvr.validateProps = t.strictInterface({
	onActivated = t.optional(t.callback);
	isSelected = t.optional(t.boolean);
	isDisabled = t.optional(t.boolean);
	onStateChanged = t.callback;
	titleText = t.optional(t.string);
	subtitleText = t.optional(t.string);
	renderRightContent = t.optional(t.callback);
	rightContentWidth = t.optional(t.number);
	renderLeftContent = t.optional(t.callback);
	leftContentWidth = t.optional(t.number);
	colorStyle = validateColorInfo;
	textStyle = t.optional(validateColorInfo);
	fontStyle = t.optional(validateFontInfo);
	subtitleTextStyle = t.optional(validateColorInfo);
	subtitleFontStyle = t.optional(validateFontInfo);
	dividerStyle = t.table;
	controlRef = t.optional(t.table);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	SelectionImageObject = t.optional(t.table);
})
any_extend_result1_upvr.defaultProps = {
	rightContentWidth = 0;
	leftContentWidth = 0;
	isDisabled = false;
}
local Interactable_upvr = require(Parent.Control.Interactable)
local GenericTextLabel_upvr = require(Parent.Text.GenericTextLabel.GenericTextLabel)
function any_extend_result1_upvr.render(arg1) -- Line 84
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Interactable_upvr (readonly)
		[3]: GenericTextLabel_upvr (readonly)
	]]
	assert(arg1.validateProps(arg1.props))
	local module_2 = {}
	local tbl_2 = {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundColor3 = arg1.props.colorStyle.Color;
		BackgroundTransparency = arg1.props.colorStyle.Transparency;
		BorderSizePixel = 0;
		AutoButtonColor = false;
	}
	local var16 = not arg1.props.isDisabled
	if var16 then
		var16 = arg1.props.onActivated
	end
	tbl_2[Roact_upvr.Event.Activated] = var16
	tbl_2[Roact_upvr.Ref] = arg1.props.controlRef
	tbl_2.NextSelectionUp = arg1.props.NextSelectionUp
	tbl_2.NextSelectionDown = arg1.props.NextSelectionDown
	tbl_2.NextSelectionLeft = arg1.props.NextSelectionLeft
	tbl_2.NextSelectionRight = arg1.props.NextSelectionRight
	tbl_2.SelectionImageObject = arg1.props.SelectionImageObject
	tbl_2.isDisabled = arg1.props.isDisabled
	tbl_2.onStateChanged = arg1.props.onStateChanged
	local tbl = {}
	local tbl_4 = {
		UIPadding = Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24);
			PaddingRight = UDim.new(0, 24);
			PaddingTop = UDim.new(0, 12);
			PaddingBottom = UDim.new(0, 12);
		});
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
	}
	local tbl_3 = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
	}
	local titleText = arg1.props.titleText
	if titleText then
		titleText = Roact_upvr.createElement
		titleText = titleText(GenericTextLabel_upvr, {
			Size = UDim2.new(1, 0, 1, 0);
			colorStyle = arg1.props.textStyle;
			fontStyle = arg1.props.fontStyle;
			Text = arg1.props.titleText;
			LayoutOrder = 1;
			TextXAlignment = Enum.TextXAlignment.Left;
		})
	end
	tbl_3.TitleText = titleText
	titleText = arg1.props.subtitleText
	local var27 = titleText
	if var27 then
		var27 = Roact_upvr.createElement
		var27 = var27(GenericTextLabel_upvr, {
			Size = UDim2.new(1, 0, 1, 0);
			colorStyle = arg1.props.subtitleTextStyle;
			fontStyle = arg1.props.subtitleFontStyle;
			Text = arg1.props.subtitleText;
			LayoutOrder = 2;
			TextXAlignment = Enum.TextXAlignment.Left;
		})
	end
	tbl_3.SubTitleText = var27
	tbl_4.Frame = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, -arg1.props.rightContentWidth - arg1.props.leftContentWidth, 1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, tbl_3)
	local renderRightContent = arg1.props.renderRightContent
	if renderRightContent then
		renderRightContent = arg1.props.renderRightContent()
	end
	tbl_4.RightContent = renderRightContent
	renderRightContent = arg1.props.renderLeftContent
	local var30 = renderRightContent
	if var30 then
		var30 = arg1.props.renderLeftContent()
	end
	tbl_4.LeftContent = var30
	tbl.Contents = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		LayoutOrder = 1;
	}, tbl_4)
	tbl.Divider = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, -24, 0, 1);
		Position = UDim2.new(0, 24, 1, -1);
		BorderSizePixel = 0;
		BackgroundColor3 = arg1.props.dividerStyle.Color;
		BackgroundTransparency = arg1.props.dividerStyle.Transparency;
	})
	module_2.Interactable = Roact_upvr.createElement(Interactable_upvr, tbl_2, tbl)
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
	}, module_2)
end
local Cryo_upvr = require(Parent_2.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 165
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.controlRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)