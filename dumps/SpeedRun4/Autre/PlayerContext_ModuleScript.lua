-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:51
-- Luau version 6, Types version 3
-- Time taken: 0.007693 seconds

local App = script:FindFirstAncestor("App")
local Parent = App.Parent
local Core = Parent.Core
local Parent_2 = Parent.Parent
local t = require(Parent_2.t)
local Roact_upvr = require(Parent_2.Roact)
local ControlState = require(Core.Control.Enum.ControlState)
local getIconSize = require(App.ImageSet.getIconSize)
local IconSize = require(App.ImageSet.Enum.IconSize)
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerContext")
local tbl_upvr_2 = {
	[ControlState.Default] = "TextDefault";
}
local tbl_upvr = {
	[ControlState.Default] = "IconOnHover";
	[ControlState.Hover] = "IconDefault";
}
any_extend_result1.validateProps = t.strictInterface({
	text = t.optional(t.string);
	icon = t.optional(t.union(t.string, t.table));
	iconSize = t.optional(t.intersection(t.UDim2, function(arg1) -- Line 33, Named "doesNotUseScale"
		if arg1.X.Scale ~= 0 or arg1.Y.Scale ~= 0 then
			return false, "Only Offset values are allowed"
		end
		return true
	end));
	iconColor = t.optional(t.Color3);
	iconTransparency = t.optional(t.number);
	onActivated = t.optional(t.callback);
	Selectable = t.optional(t.boolean);
	fontStyle = t.optional(t.union(require(Parent.Core.Style.Validator.validateFontInfo), require(Parent.Core.Style.Validator.validateTypographyInfo)));
	textHeight = t.optional(t.number);
	textColorStyle = t.optional(require(Parent.Core.Style.Validator.validateColorInfo));
	iconPadding = t.optional(t.number);
	iconTextSpacing = t.optional(t.number);
	layoutOrder = t.optional(t.number);
	horizontalAlignment = t.optional(t.EnumItem);
})
any_extend_result1.defaultProps = {
	text = "";
	icon = nil;
	Selectable = true;
	iconSize = UDim2.fromOffset(getIconSize(IconSize.Small), getIconSize(IconSize.Small));
	textHeight = 28;
	iconPadding = 4;
	iconTextSpacing = 4;
	layoutOrder = 1;
	horizontalAlignment = Enum.HorizontalAlignment.Left;
}
function any_extend_result1.init(arg1) -- Line 84
	arg1.state = {}
end
local withStyle_upvr = require(Core.Style.withStyle)
local getContentStyle_upvr = require(Core.Button.getContentStyle)
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
local GenericTextLabel_upvr = require(Core.Text.GenericTextLabel.GenericTextLabel)
function any_extend_result1.render(arg1) -- Line 88
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: getContentStyle_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ImageSetComponent_upvr (readonly)
		[7]: GenericTextLabel_upvr (readonly)
	]]
	local controlState_upvr = arg1.state.controlState
	local onActivated_upvr = arg1.props.onActivated
	local iconSize_upvr = arg1.props.iconSize
	local horizontalAlignment_upvr = arg1.props.horizontalAlignment
	local icon_upvr = arg1.props.icon
	local text_upvr = arg1.props.text
	return withStyle_upvr(function(arg1_2) -- Line 98
		--[[ Upvalues[13]:
			[1]: getContentStyle_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: controlState_upvr (readonly)
			[4]: tbl_upvr_2 (copied, readonly)
			[5]: onActivated_upvr (readonly)
			[6]: arg1 (readonly)
			[7]: iconSize_upvr (readonly)
			[8]: Roact_upvr (copied, readonly)
			[9]: horizontalAlignment_upvr (readonly)
			[10]: icon_upvr (readonly)
			[11]: ImageSetComponent_upvr (copied, readonly)
			[12]: text_upvr (readonly)
			[13]: GenericTextLabel_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var16_result1 = getContentStyle_upvr(tbl_upvr, controlState_upvr, arg1_2)
		local var27
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var27 = var16_result1
			return var27
		end
		if not onActivated_upvr or not INLINED() then
			var27 = getContentStyle_upvr(tbl_upvr_2, controlState_upvr, arg1_2)
		end
		if not arg1.props.iconTransparency then
			if arg1.props.iconColor then
			else
			end
		end
		if not arg1.props.iconColor then
		end
		local textColorStyle = arg1.props.textColorStyle
		if not textColorStyle then
			if onActivated_upvr then
				textColorStyle = var16_result1
			else
				textColorStyle = getContentStyle_upvr(tbl_upvr_2, controlState_upvr, arg1_2)
			end
		end
		local iconPadding = arg1.props.iconPadding
		if not arg1.props.fontStyle then
		end
		local module = {
			Size = UDim2.new(1, 0, 0, arg1.props.textHeight);
			BackgroundTransparency = 1;
		}
		local Selectable = arg1.props.Selectable
		module.Selectable = Selectable
		if onActivated_upvr then
			Selectable = true
		else
			Selectable = false
		end
		module.Active = Selectable
		module.LayoutOrder = arg1.props.layoutOrder
		module[Roact_upvr.Event.Activated] = onActivated_upvr
		local module_2 = {
			UIListLayout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = horizontalAlignment_upvr;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, arg1.props.iconTextSpacing);
			});
		}
		local var34 = icon_upvr
		if var34 then
			var34 = Roact_upvr.createElement
			var34 = var34("Frame", {
				Size = UDim2.fromOffset(iconSize_upvr.X.Offset + iconPadding * 2, iconSize_upvr.Y.Offset + iconPadding * 2);
				BackgroundTransparency = 1;
			}, {
				layout = Roact_upvr.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
				});
				icon = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
					AnchorPoint = Vector2.new(0.5, 0.5);
					Size = iconSize_upvr;
					BackgroundTransparency = 1;
					Image = icon_upvr;
					ImageColor3 = var27.Color;
					ImageTransparency = var27.Transparency;
				});
			})
		end
		module_2.IconFrame = var34
		var34 = text_upvr
		local var39 = var34
		if var39 then
			var39 = Roact_upvr.createElement
			var39 = var39(GenericTextLabel_upvr, {
				AutomaticSize = Enum.AutomaticSize.XY;
				Size = UDim2.fromScale(0, 0);
				Text = text_upvr;
				TextWrapped = true;
				TextXAlignment = Enum.TextXAlignment.Left;
				fontStyle = arg1_2.Font.CaptionHeader;
				colorStyle = textColorStyle;
				LayoutOrder = 2;
				TextTruncate = Enum.TextTruncate.AtEnd;
			})
		end
		module_2.Text = var39
		return Roact_upvr.createElement("ImageButton", module, module_2)
	end)
end
return any_extend_result1