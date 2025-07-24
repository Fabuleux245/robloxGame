-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:49
-- Luau version 6, Types version 3
-- Time taken: 0.009282 seconds

local Parent_3 = script.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local validateImage = require(Parent_2.Core.ImageSet.Validator.validateImage)
local IconSize = require(Parent_3.ImageSet.Enum.IconSize)
local getIconSize = require(Parent_3.ImageSet.getIconSize)
local Images = require(Parent_3.ImageSet.Images)
local ButtonType = require(Parent_3.Button.Enum.ButtonType)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("EmptyState")
any_extend_result1_upvr.validateProps = t.strictInterface({
	text = t.string;
	icon = t.optional(validateImage);
	size = t.optional(t.UDim2);
	position = t.optional(t.UDim2);
	anchorPoint = t.optional(t.Vector2);
	buttonIcon = t.optional(validateImage);
	buttonText = t.optional(t.string);
	buttonType = t.optional(ButtonType.isEnumValue);
	onActivated = t.optional(t.callback);
	frameRef = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	maxSizeTextLabel = t.optional(t.Vector2);
	iconColor = t.optional(t.Color3);
	iconSize = t.optional(t.UDim2);
	titleProps = t.optional(t.strictInterface({
		titleText = t.optional(t.string);
	}));
})
any_extend_result1_upvr.defaultProps = {
	icon = Images["icons/status/oof_xlarge"];
	size = UDim2.fromScale(1, 1);
	position = UDim2.fromScale(0.5, 0.5);
	anchorPoint = Vector2.new(0.5, 0.5);
	buttonIcon = Images["icons/common/refresh"];
	buttonType = ButtonType.Secondary;
	iconSize = UDim2.fromOffset(getIconSize(IconSize.XLarge), getIconSize(IconSize.XLarge));
}
local function _(arg1) -- Line 73, Named "getCorrectedIconValue"
	if arg1 == "" then
		return nil
	end
	return arg1
end
function any_extend_result1_upvr.init(arg1) -- Line 77
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1:setState({
		absoluteSize = Vector2.new(0, 0);
	})
	function arg1.onAbsoluteSizeChange(arg1_2) -- Line 81
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			absoluteSize = arg1_2.AbsoluteSize;
		})
	end
	arg1.buttonRef = Roact_upvr.createRef()
end
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
local getPageMargin_upvr = require(Parent_3.Container.getPageMargin)
local Button_upvr = require(Parent_3.Button.Button)
function any_extend_result1_upvr.render(arg1) -- Line 90
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RoactGamepad_upvr (readonly)
		[4]: ImageSetComponent_upvr (readonly)
		[5]: GenericTextLabel_upvr (readonly)
		[6]: getPageMargin_upvr (readonly)
		[7]: Button_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 91
		--[[ Upvalues[7]:
			[1]: Roact_upvr (copied, readonly)
			[2]: RoactGamepad_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: ImageSetComponent_upvr (copied, readonly)
			[5]: GenericTextLabel_upvr (copied, readonly)
			[6]: getPageMargin_upvr (copied, readonly)
			[7]: Button_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module = {}
		local tbl_7 = {
			UIListLayout = Roact_upvr.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}
		local tbl_9 = {
			AnchorPoint = Vector2.new(0.5, 0);
			Size = arg1.props.iconSize;
			LayoutOrder = 1;
			Image = arg1.props.icon;
			BackgroundTransparency = 1;
		}
		local iconColor = arg1.props.iconColor
		if not iconColor then
			iconColor = arg1_3.Theme.IconEmphasis.Color
		end
		tbl_9.ImageColor3 = iconColor
		tbl_9.ImageTransparency = arg1_3.Theme.IconEmphasis.Transparency
		tbl_7.Icon = Roact_upvr.createElement(ImageSetComponent_upvr.Label, tbl_9)
		tbl_7.iconTextPadding = Roact_upvr.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Size = UDim2.fromOffset(0, 12);
			BackgroundTransparency = 1;
			LayoutOrder = 2;
		})
		if arg1.props.titleProps then
			if arg1.props.titleProps.titleText then
				local _ = {
					Size = UDim2.fromScale(1, 0);
					Position = UDim2.fromScale(0, 0);
					BackgroundTransparency = 1;
					AutomaticSize = Enum.AutomaticSize.Y;
					BorderSizePixel = 0;
					LayoutOrder = 3;
				}
				local tbl_19 = {
					TitlePadding = Roact_upvr.createElement("UIPadding", {
						PaddingTop = UDim.new(0, 14);
						PaddingBottom = UDim.new(0, 14);
					});
					TitleText = Roact_upvr.createElement("TextLabel", {
						BackgroundTransparency = 1;
						Text = arg1.props.titleProps.titleText;
						TextXAlignment = Enum.TextXAlignment.Center;
						TextYAlignment = Enum.TextYAlignment.Center;
						Font = arg1_3.Font.Title.Font;
						TextSize = arg1_3.Font.Header1.RelativeSize * arg1_3.Font.BaseSize;
						TextColor3 = arg1_3.Theme.TextEmphasis.Color;
						TextTransparency = arg1_3.Theme.TextEmphasis.Transparency;
						AutomaticSize = Enum.AutomaticSize.Y;
						Size = UDim2.fromScale(1, 0);
						TextWrapped = true;
						LayoutOrder = 1;
					});
				}
				-- KONSTANTWARNING: GOTO [375] #241
			end
		end
		tbl_7.TitleFrame = nil
		tbl_7.Text = Roact_upvr.createElement(GenericTextLabel_upvr, {
			Text = arg1.props.text;
			TextXAlignment = Enum.TextXAlignment.Center;
			TextYAlignment = Enum.TextYAlignment.Center;
			LayoutOrder = 4;
			fontStyle = arg1_3.Font.Body;
			colorStyle = arg1_3.Theme.TextDefault;
			maxSize = arg1.props.maxSizeTextLabel;
		})
		tbl_7.textButtonPadding = Roact_upvr.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Size = UDim2.fromOffset(0, 24);
			BackgroundTransparency = 1;
			LayoutOrder = 5;
		})
		if arg1.props.onActivated then
			local tbl_4 = {
				UIPadding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, getPageMargin_upvr(arg1.state.absoluteSize.X));
					PaddingRight = UDim.new(0, getPageMargin_upvr(arg1.state.absoluteSize.X));
				});
				UISizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(640, 48);
				});
			}
			local tbl = {
				buttonType = arg1.props.buttonType;
				size = UDim2.fromScale(1, 1);
				position = UDim2.fromScale(0.5, 0.5);
				anchorPoint = Vector2.new(0.5, 0.5);
			}
			local onActivated_2 = arg1.props.onActivated
			tbl.onActivated = onActivated_2
			local buttonIcon = arg1.props.buttonIcon
			if buttonIcon == "" then
				onActivated_2 = nil
			else
				onActivated_2 = buttonIcon
			end
			tbl.icon = onActivated_2
			tbl.text = arg1.props.buttonText
			tbl[Roact_upvr.Ref] = arg1.buttonRef
			tbl_4.Button = Roact_upvr.createElement(Button_upvr, tbl)
		end
		tbl_7.buttonFrame = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 48);
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundTransparency = 1;
			LayoutOrder = 6;
		}, tbl_4)
		module.Content = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 187);
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
		}, tbl_7)
		return Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, {
			[Roact_upvr.Change.AbsoluteSize] = arg1.onAbsoluteSizeChange;
			Size = arg1.props.size;
			Position = arg1.props.position;
			AnchorPoint = arg1.props.anchorPoint;
			BackgroundTransparency = 1;
			[Roact_upvr.Ref] = arg1.props.frameRef;
			NextSelectionUp = arg1.props.NextSelectionUp;
			NextSelectionDown = arg1.props.NextSelectionDown;
			NextSelectionULeft = arg1.props.NextSelectionLeft;
			NextSelectionRight = arg1.props.NextSelectionRight;
			defaultChild = arg1.buttonRef;
		}, module)
	end)
end
local Cryo_upvr = require(Parent.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 203
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_4 = {}
	module_4.frameRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_4))
end)