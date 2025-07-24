-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:22
-- Luau version 6, Types version 3
-- Time taken: 0.005335 seconds

local Parent = script.Parent.Parent.Parent
local Core = Parent.Core
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local any_extend_result1 = Roact_upvr.PureComponent:extend("SegmentedControlTabName")
function any_extend_result1.init(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	arg1.state = {
		controlState = ControlState_upvr.Initialize;
	}
	function arg1.onStateChanged(arg1_2, arg2) -- Line 36
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_4 = {}
		tbl_4.controlState = arg2
		arg1:setState(tbl_4)
		if arg1.props.onStateChanged then
			arg1.props.onStateChanged(arg1_2, arg2)
		end
	end
end
local any_interface_result1 = t.interface({
	[ControlState_upvr.Default] = t.string;
})
any_extend_result1.validateProps = t.interface({
	icon = t.optional(require(Core.ImageSet.Validator.validateImage));
	text = t.optional(t.string);
	fontStyle = t.optional(require(Parent.Core.Style.Validator.validateFontInfo));
	textStateColorMap = t.optional(any_interface_result1);
	iconStateColorMap = t.optional(any_interface_result1);
	isDisabled = t.optional(t.boolean);
	isLoading = t.optional(t.boolean);
	onActivated = t.callback;
	onStateChanged = t.optional(t.callback);
	userInteractionEnabled = t.optional(t.boolean);
	isSelectedStyle = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	isDisabled = false;
	isLoading = false;
	isSelectedStyle = false;
	SliceCenter = Rect.new(8, 8, 9, 9);
	textStateColorMap = {
		[ControlState_upvr.Default] = "TextDefault";
		[ControlState_upvr.Hover] = "TextEmphasis";
	};
	buttonStateColorMap = {
		[ControlState_upvr.Default] = "SecondaryContent";
	};
}
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local getContentStyle_upvr = require(Core.Button.getContentStyle)
local ShimmerPanel_upvr = require(Parent.App.Loading.ShimmerPanel)
local ImageSetComponent_upvr = require(Core.ImageSet.ImageSetComponent)
local getIconSize_upvr = require(Parent.App.ImageSet.getIconSize)
local IconSize_upvr = require(Parent.App.ImageSet.Enum.IconSize)
local GenericTextLabel_upvr = require(Core.Text.GenericTextLabel.GenericTextLabel)
local Interactable_upvr = require(Core.Control.Interactable)
local Cryo_upvr = require(Parent_2.Cryo)
function any_extend_result1.render(arg1) -- Line 100
	--[[ Upvalues[11]:
		[1]: withStyle_upvr (readonly)
		[2]: ControlState_upvr (readonly)
		[3]: getContentStyle_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ShimmerPanel_upvr (readonly)
		[6]: ImageSetComponent_upvr (readonly)
		[7]: getIconSize_upvr (readonly)
		[8]: IconSize_upvr (readonly)
		[9]: GenericTextLabel_upvr (readonly)
		[10]: Interactable_upvr (readonly)
		[11]: Cryo_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 101
		--[[ Upvalues[11]:
			[1]: arg1 (readonly)
			[2]: ControlState_upvr (copied, readonly)
			[3]: getContentStyle_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: ShimmerPanel_upvr (copied, readonly)
			[6]: ImageSetComponent_upvr (copied, readonly)
			[7]: getIconSize_upvr (copied, readonly)
			[8]: IconSize_upvr (copied, readonly)
			[9]: GenericTextLabel_upvr (copied, readonly)
			[10]: Interactable_upvr (copied, readonly)
			[11]: Cryo_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local controlState = arg1.state.controlState
		local text = arg1.props.text
		local icon = arg1.props.icon
		local isLoading = arg1.props.isLoading
		local isDisabled = arg1.props.isDisabled
		local contentStateColorMap = arg1.props.contentStateColorMap
		local var33
		if isLoading then
			isDisabled = true
		end
		var33 = controlState
		if arg1.props.isDisabled then
			var33 = ControlState_upvr.Disabled
		elseif arg1.props.isSelectedStyle then
			var33 = ControlState_upvr.Hover
		end
		local var18_result1_2 = getContentStyle_upvr(arg1.props.buttonStateColorMap, controlState, arg1_3)
		if text then
		end
		if icon then
			local var18_result1 = getContentStyle_upvr(arg1.props.iconStateColorMap or contentStateColorMap, controlState, arg1_3)
		end
		if not arg1.props.fontStyle then
		end
		local var36
		if isLoading then
			var36 = {
				isLoadingShimmer = Roact_upvr.createElement(ShimmerPanel_upvr, {
					Size = UDim2.new(1, 0, 1, 0);
				});
			}
		else
			local var39
			if not arg1.props[Roact_upvr.Children] then
				local tbl_3 = {
					UIListLayout = Roact_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						SortOrder = Enum.SortOrder.LayoutOrder;
						Padding = UDim.new(0, 5);
					});
				}
				local function INLINED() -- Internal function, doesn't exist in bytecode
					tbl.LayoutOrder = 1
					tbl.ImageTransparency = var18_result1.Transparency
					tbl.ImageColor3 = var18_result1.Color
					tbl.Image = icon
					tbl.BackgroundTransparency = 1
					tbl.Size = UDim2.new(0, getIconSize_upvr(IconSize_upvr.Medium), 0, getIconSize_upvr(IconSize_upvr.Medium))
					local tbl = {}
					return Roact_upvr.createElement(ImageSetComponent_upvr.Label, tbl)
				end
				if not icon or not INLINED() then
				end
				tbl_3.Icon = nil
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					tbl_2.LayoutOrder = 2
					tbl_2.colorStyle = getContentStyle_upvr(arg1.props.textStateColorMap or contentStateColorMap, var33, arg1_3)
					tbl_2.fontStyle = arg1_3.Font.Header2
					tbl_2.Text = text
					tbl_2.BackgroundTransparency = 1
					tbl_2.TextTruncate = Enum.TextTruncate.AtEnd
					tbl_2.AutomaticSize = Enum.AutomaticSize.X
					local tbl_2 = {}
					return Roact_upvr.createElement(GenericTextLabel_upvr, tbl_2)
				end
				if not text or not INLINED_2() then
				end
				tbl_3.Text = nil
			end
			var36 = tbl_3
		end
		return Roact_upvr.createElement(Interactable_upvr, Cryo_upvr.Dictionary.join(arg1.props, {
			icon = Cryo_upvr.None;
			text = Cryo_upvr.None;
			buttonStateColorMap = Cryo_upvr.None;
			contentStateColorMap = Cryo_upvr.None;
			textStateColorMap = Cryo_upvr.None;
			iconStateColorMap = Cryo_upvr.None;
			onActivated = Cryo_upvr.None;
			isLoading = Cryo_upvr.None;
			isSelectedStyle = Cryo_upvr.None;
			[Roact_upvr.Children] = Cryo_upvr.None;
			isDisabled = isDisabled;
			onStateChanged = arg1.onStateChanged;
			userInteractionEnabled = arg1.props.userInteractionEnabled;
			Image = Cryo_upvr.None;
			ScaleType = Enum.ScaleType.Slice;
			ImageColor3 = var18_result1_2.Color;
			ImageTransparency = var18_result1_2.Transparency;
			BackgroundTransparency = 1;
			AutoButtonColor = false;
			[Roact_upvr.Event.Activated] = arg1.props.onActivated;
		}), {
			ButtonContent = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
			}, var36);
		})
	end)
end
return any_extend_result1