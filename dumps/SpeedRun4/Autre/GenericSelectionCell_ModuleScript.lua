-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:50
-- Luau version 6, Types version 3
-- Time taken: 0.004563 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local ControlState_upvr = require(Parent_2.UIBlox.Core.Control.Enum.ControlState)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("GenericSelectionCell")
local tbl_6_upvr = {
	[ControlState_upvr.Default] = "BackgroundDefault";
	[ControlState_upvr.Hover] = "BackgroundOnHover";
	[ControlState_upvr.Pressed] = "BackgroundOnPress";
}
local tbl_5_upvr = {
	[ControlState_upvr.Default] = "IconDefault";
	[ControlState_upvr.Hover] = "IconEmphasis";
	[ControlState_upvr.Pressed] = "IconDefault";
}
local function getCellStyle_upvr(arg1, arg2, arg3) -- Line 30, Named "getCellStyle"
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	local var9 = arg1[arg2]
	if not var9 then
		var9 = arg1[ControlState_upvr.Default]
	end
	local module_6 = {
		Color = arg3.Theme[var9].Color;
		Transparency = arg3.Theme[var9].Transparency;
	}
	if arg2 == ControlState_upvr.Default or arg2 == ControlState_upvr.Disabled then
		module_6.Transparency = 1
	end
	return module_6
end
local function getIconStyle_upvr(arg1, arg2, arg3) -- Line 47, Named "getIconStyle"
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	local var11 = arg1[arg2]
	if not var11 then
		var11 = arg1[ControlState_upvr.Default]
	end
	local module_2 = {
		Color = arg3.Theme[var11].Color;
		Transparency = arg3.Theme[var11].Transparency;
	}
	if arg2 == ControlState_upvr.Disabled or arg2 == ControlState_upvr.Pressed then
		module_2.Transparency = 0.5 * module_2.Transparency + 0.5
	end
	return module_2
end
local function _(arg1, arg2) -- Line 63, Named "getTextStyle"
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	local module_4 = {
		Color = arg1.Color;
		Transparency = arg1.Transparency;
	}
	if arg2 == ControlState_upvr.Disabled or arg2 == ControlState_upvr.Pressed then
		module_4.Transparency = 0.5 * module_4.Transparency + 0.5
	end
	return module_4
end
any_extend_result1_upvr.validateProps = t.strictInterface({
	text = t.string;
	subtitleText = t.optional(t.string);
	defaultImage = t.union(t.string, t.table);
	selectedImage = t.union(t.string, t.table);
	defaultImageSize = t.number;
	selectedImageSize = t.number;
	onActivated = t.optional(t.callback);
	isSelected = t.optional(t.boolean);
	isDisabled = t.optional(t.boolean);
	useDefaultControlState = t.optional(t.boolean);
	controlRef = t.optional(t.table);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	SelectionImageObject = t.optional(t.table);
})
any_extend_result1_upvr.defaultProps = {
	isSelected = false;
}
function any_extend_result1_upvr.init(arg1) -- Line 121
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	arg1.state = {
		controlState = ControlState_upvr.Default;
	}
	function arg1.onStateChanged(arg1_2, arg2) -- Line 126
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_4 = {}
		tbl_4.controlState = arg2
		arg1:setState(tbl_4)
	end
end
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local GenericCell_upvr = require(Parent_2.UIBlox.Core.Cell.GenericCell)
local ImageSetComponent_upvr = require(Parent_2.UIBlox.Core.ImageSet.ImageSetComponent)
function any_extend_result1_upvr.render(arg1) -- Line 133
	--[[ Upvalues[9]:
		[1]: withStyle_upvr (readonly)
		[2]: ControlState_upvr (readonly)
		[3]: getIconStyle_upvr (readonly)
		[4]: tbl_5_upvr (readonly)
		[5]: getCellStyle_upvr (readonly)
		[6]: tbl_6_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: GenericCell_upvr (readonly)
		[9]: ImageSetComponent_upvr (readonly)
	]]
	assert(arg1.validateProps(arg1.props))
	return withStyle_upvr(function(arg1_3) -- Line 136
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: ControlState_upvr (copied, readonly)
			[3]: getIconStyle_upvr (copied, readonly)
			[4]: tbl_5_upvr (copied, readonly)
			[5]: getCellStyle_upvr (copied, readonly)
			[6]: tbl_6_upvr (copied, readonly)
			[7]: Roact_upvr (copied, readonly)
			[8]: GenericCell_upvr (copied, readonly)
			[9]: ImageSetComponent_upvr (copied, readonly)
		]]
		local Font = arg1_3.Font
		local Theme = arg1_3.Theme
		local var25
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var25 = ControlState_upvr.Default
			return var25
		end
		if not arg1.props.useDefaultControlState or not INLINED() then
			var25 = arg1.state.controlState
		end
		local TextEmphasis = Theme.TextEmphasis
		local tbl_2 = {
			Color = TextEmphasis.Color;
			Transparency = TextEmphasis.Transparency;
		}
		if var25 == ControlState_upvr.Disabled or var25 == ControlState_upvr.Pressed then
			tbl_2.Transparency = 0.5 * tbl_2.Transparency + 0.5
		end
		local TextDefault = Theme.TextDefault
		local tbl = {
			Color = TextDefault.Color;
			Transparency = TextDefault.Transparency;
		}
		if var25 == ControlState_upvr.Disabled or var25 == ControlState_upvr.Pressed then
			tbl.Transparency = 0.5 * tbl.Transparency + 0.5
		end
		local module_5 = {
			titleText = arg1.props.text;
			colorStyle = getCellStyle_upvr(tbl_6_upvr, var25, arg1_3);
			textStyle = tbl_2;
			fontStyle = Font.Header2;
			subtitleText = arg1.props.subtitleText;
			subtitleTextStyle = tbl;
			subtitleFontStyle = Font.Body;
			rightContentWidth = arg1.props.defaultImageSize;
			onActivated = arg1.props.onActivated;
			dividerStyle = Theme.Divider;
			isDisabled = arg1.props.isDisabled;
			[Roact_upvr.Ref] = arg1.props.controlRef;
			NextSelectionUp = arg1.props.NextSelectionUp;
			NextSelectionDown = arg1.props.NextSelectionDown;
			NextSelectionLeft = arg1.props.NextSelectionLeft;
			NextSelectionRight = arg1.props.NextSelectionRight;
			SelectionImageObject = arg1.props.SelectionImageObject;
		}
		local getIconStyle_upvr_result1_upvr = getIconStyle_upvr(tbl_5_upvr, var25, arg1_3)
		function module_5.renderRightContent() -- Line 166
			--[[ Upvalues[4]:
				[1]: Roact_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: ImageSetComponent_upvr (copied, readonly)
				[4]: getIconStyle_upvr_result1_upvr (readonly)
			]]
			local module = {}
			local tbl_3 = {}
			local isSelected = arg1.props.isSelected
			if isSelected then
				isSelected = Roact_upvr.createElement
				isSelected = isSelected(ImageSetComponent_upvr.Label, {
					BackgroundTransparency = 1;
					Image = arg1.props.selectedImage;
					Size = UDim2.new(0, arg1.props.selectedImageSize, 0, arg1.props.selectedImageSize);
					ImageColor3 = getIconStyle_upvr_result1_upvr.Color;
					ImageTransparency = getIconStyle_upvr_result1_upvr.Transparency;
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.new(0.5, 0, 0.5, 0);
				})
			end
			tbl_3.SelectedImage = isSelected
			module.SelectionImage = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
				BackgroundTransparency = 1;
				Image = arg1.props.defaultImage;
				Size = UDim2.new(0, arg1.props.defaultImageSize, 0, arg1.props.defaultImageSize);
				ImageColor3 = getIconStyle_upvr_result1_upvr.Color;
				ImageTransparency = getIconStyle_upvr_result1_upvr.Transparency;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.new(0.5, 0, 0.5, 0);
			}, tbl_3)
			return Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(0, arg1.props.defaultImageSize, 1, 0);
				LayoutOrder = 3;
			}, module)
		end
		module_5.onStateChanged = arg1.onStateChanged
		return Roact_upvr.createElement(GenericCell_upvr, module_5)
	end)
end
local Cryo_upvr = require(Parent_2.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 198
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_3 = {}
	module_3.controlRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_3))
end)