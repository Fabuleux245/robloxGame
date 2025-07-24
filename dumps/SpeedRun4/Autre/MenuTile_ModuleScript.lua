-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:34
-- Luau version 6, Types version 3
-- Time taken: 0.010989 seconds

local Parent_3 = script.Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Core = Parent_2.Core
local Parent = Parent_2.Parent
local Otter_upvr = require(Parent.Otter)
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local IconSize_upvr = require(Parent_3.ImageSet.Enum.IconSize)
local validateColorInfo = require(Parent_2.Core.Style.Validator.validateColorInfo)
local tbl_upvr = {
	frequency = 6;
	dampingRatio = 1;
}
local tbl_2_upvr = {
	BACKGROUND = 1;
	HOVER_MASK = 2;
	ICON_AND_TITLE_CONTAINER = 3;
	BADGE_CONTAINER = 4;
	ROUNDED_CORNERS_MASK = 5;
}
local tbl_upvr_2 = {
	ICON = 1;
	TITLE = 2;
}
local any_extend_result1 = Roact_upvr.Component:extend("MenuTile")
any_extend_result1.defaultProps = {
	size = UDim2.fromScale(1, 1);
	styleProps = {};
}
any_extend_result1.validateProps = t.strictInterface({
	size = t.optional(t.UDim2);
	position = t.optional(t.UDim2);
	layoutOrder = t.optional(t.number);
	badgeValue = t.optional(t.union(t.string, t.number, require(Parent_3.Indicator.Enum.BadgeStates).isEnumValue));
	badgeVariant = t.optional(require(Parent_3.Indicator.Enum.BadgeVariant).isEnumValue);
	icon = t.optional(require(Core.ImageSet.Validator.validateImage));
	title = t.string;
	onActivated = t.callback;
	styleProps = t.optional(t.strictInterface({
		iconStyle = t.optional(validateColorInfo);
		iconSize = t.optional(IconSize_upvr.isEnumValue);
		titleStyle = t.optional(validateColorInfo);
		titleFont = t.optional(t.union(require(Parent_2.Core.Style.Validator.validateFontInfo), require(Parent_2.Core.Style.Validator.validateTypographyInfo)));
	}));
})
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local withSelectionCursorProvider_upvr = require(Parent_3.SelectionImage.withSelectionCursorProvider)
local function withProviders_upvr(arg1) -- Line 95, Named "withProviders"
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 96
		--[[ Upvalues[2]:
			[1]: withSelectionCursorProvider_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return withSelectionCursorProvider_upvr(function(arg1_3) -- Line 97
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			return arg1(arg1_2, arg1_3)
		end)
	end)
end
local getIconSize_upvr = require(Parent_3.ImageSet.getIconSize)
local function getStyleProps_upvr(arg1, arg2) -- Line 103, Named "getStyleProps"
	--[[ Upvalues[2]:
		[1]: getIconSize_upvr (readonly)
		[2]: IconSize_upvr (readonly)
	]]
	local Theme = arg2.Theme
	local var23
	if arg1.iconSize then
		var23 = getIconSize_upvr(arg1.iconSize, arg2)
	else
		var23 = getIconSize_upvr(IconSize_upvr.Large)
	end
	local module_2 = {}
	local iconStyle = arg1.iconStyle
	if not iconStyle then
		iconStyle = Theme.IconDefault
	end
	module_2.iconStyle = iconStyle
	module_2.iconSize = var23
	iconStyle = arg1.titleStyle
	local var26 = iconStyle
	if not var26 then
		var26 = Theme.TextDefault
	end
	module_2.titleStyle = var26
	var26 = arg1.titleFont
	local var27 = var26
	if not var27 then
		var27 = arg2.Font.SubHeader1
	end
	module_2.titleFont = var27
	return module_2
end
function any_extend_result1.init(arg1) -- Line 119
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(1)
	arg1.hoverTransparency = any_createBinding_result1
	arg1.updateHoverTransparency = any_createBinding_result2
	arg1.hoverTransparencyMotor = Otter_upvr.createSingleMotor(1)
	arg1.hoverTransparencyMotor:onStep(arg1.updateHoverTransparency)
	arg1.hoverTransparencyMotor:onComplete(function(arg1_4) -- Line 123
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_4 == 1 then
			arg1:setState({
				showHoverMask = false;
			})
		end
	end)
	arg1:setState({
		backgroundTransparency = 0;
		iconTransparency = 0;
		titleTransparency = 0;
		showHoverMask = false;
	})
end
local GetTextSize_upvr = require(Parent_2.Core.Text.GetTextSize)
local CursorKind_upvr = require(Parent_3.SelectionImage.CursorKind)
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local divideTransparency_upvr = require(Parent_2.Utility.divideTransparency)
local Interactable_upvr = require(Core.Control.Interactable)
local udim_upvr = UDim.new(0, 12)
local udim_upvr_2 = UDim.new(0, 8)
local ImageSetComponent_upvr = require(Core.ImageSet.ImageSetComponent)
local Badge_upvr = require(Parent_3.Indicator.Badge)
function any_extend_result1.render(arg1) -- Line 139
	--[[ Upvalues[16]:
		[1]: withProviders_upvr (readonly)
		[2]: getStyleProps_upvr (readonly)
		[3]: GetTextSize_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
		[5]: ControlState_upvr (readonly)
		[6]: Otter_upvr (readonly)
		[7]: tbl_upvr (readonly)
		[8]: divideTransparency_upvr (readonly)
		[9]: Roact_upvr (readonly)
		[10]: Interactable_upvr (readonly)
		[11]: tbl_2_upvr (readonly)
		[12]: udim_upvr (readonly)
		[13]: udim_upvr_2 (readonly)
		[14]: ImageSetComponent_upvr (readonly)
		[15]: tbl_upvr_2 (readonly)
		[16]: Badge_upvr (readonly)
	]]
	local title_upvr = arg1.props.title
	local size_upvr = arg1.props.size
	local position_upvr = arg1.props.position
	local layoutOrder_upvr = arg1.props.layoutOrder
	local onActivated_upvr = arg1.props.onActivated
	local backgroundTransparency_upvr = arg1.state.backgroundTransparency
	local icon_upvr = arg1.props.icon
	local iconTransparency_upvr = arg1.state.iconTransparency
	local titleTransparency_upvr = arg1.state.titleTransparency
	local badgeValue_upvr = arg1.props.badgeValue
	return withProviders_upvr(function(arg1_5, arg2, arg3) -- Line 152
		--[[ Upvalues[26]:
			[1]: getStyleProps_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: GetTextSize_upvr (copied, readonly)
			[4]: title_upvr (readonly)
			[5]: CursorKind_upvr (copied, readonly)
			[6]: ControlState_upvr (copied, readonly)
			[7]: Otter_upvr (copied, readonly)
			[8]: tbl_upvr (copied, readonly)
			[9]: divideTransparency_upvr (copied, readonly)
			[10]: Roact_upvr (copied, readonly)
			[11]: Interactable_upvr (copied, readonly)
			[12]: size_upvr (readonly)
			[13]: position_upvr (readonly)
			[14]: layoutOrder_upvr (readonly)
			[15]: onActivated_upvr (readonly)
			[16]: backgroundTransparency_upvr (readonly)
			[17]: tbl_2_upvr (copied, readonly)
			[18]: udim_upvr (copied, readonly)
			[19]: udim_upvr_2 (copied, readonly)
			[20]: icon_upvr (readonly)
			[21]: ImageSetComponent_upvr (copied, readonly)
			[22]: iconTransparency_upvr (readonly)
			[23]: tbl_upvr_2 (copied, readonly)
			[24]: titleTransparency_upvr (readonly)
			[25]: badgeValue_upvr (readonly)
			[26]: Badge_upvr (copied, readonly)
		]]
		local Theme_2 = arg1_5.Theme
		local getStyleProps_upvr_result1 = getStyleProps_upvr(arg1.props.styleProps, arg1_5)
		local BackgroundUIDefault_upvr = Theme_2.BackgroundUIDefault
		local BackgroundOnHover_upvr = Theme_2.BackgroundOnHover
		local iconStyle_2_upvr = getStyleProps_upvr_result1.iconStyle
		local iconSize = getStyleProps_upvr_result1.iconSize
		local titleStyle_upvr = getStyleProps_upvr_result1.titleStyle
		local titleFont = getStyleProps_upvr_result1.titleFont
		local var61
		if titleFont.RelativeSize then
			var61 = titleFont.RelativeSize * arg1_5.Font.BaseSize
		else
			var61 = titleFont.FontSize
		end
		local Y = GetTextSize_upvr(title_upvr, var61, titleFont.Font, Vector2.new(100, var61)).Y
		local module = {}
		local tbl = {
			Background = Roact_upvr.createElement("Frame", {
				BackgroundColor3 = BackgroundUIDefault_upvr.Color;
				BackgroundTransparency = backgroundTransparency_upvr;
				BorderSizePixel = 0;
				Size = UDim2.fromScale(1, 1);
				ZIndex = tbl_2_upvr.BACKGROUND;
			}, {
				RoundedCornerUI = Roact_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8);
				});
			});
		}
		local showHoverMask = arg1.state.showHoverMask
		if showHoverMask then
			showHoverMask = Roact_upvr.createElement
			showHoverMask = showHoverMask("Frame", {
				BackgroundColor3 = BackgroundOnHover_upvr.Color;
				BackgroundTransparency = arg1.hoverTransparency;
				BorderSizePixel = 0;
				Size = UDim2.fromScale(1, 1);
				ZIndex = tbl_2_upvr.HOVER_MASK;
			}, {
				RoundedCornerUI = Roact_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8);
				});
			})
		end
		tbl.HoverMask = showHoverMask
		local tbl_3 = {
			IconAndTitleUIListLayout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				Padding = udim_upvr;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			IconAndTitleUIPadding = Roact_upvr.createElement("UIPadding", {
				PaddingBottom = udim_upvr_2;
				PaddingLeft = udim_upvr_2;
				PaddingRight = udim_upvr_2;
				PaddingTop = udim_upvr_2 + UDim.new(0, Y);
			});
		}
		local var81 = icon_upvr
		if var81 then
			var81 = Roact_upvr.createElement
			var81 = var81(ImageSetComponent_upvr.Label, {
				BackgroundTransparency = 1;
				Image = icon_upvr;
				ImageColor3 = iconStyle_2_upvr.Color;
				ImageTransparency = iconTransparency_upvr;
				LayoutOrder = tbl_upvr_2.ICON;
				Size = UDim2.fromOffset(iconSize, iconSize);
			})
		end
		tbl_3.Icon = var81
		var81 = title_upvr
		local var83 = var81
		if var83 then
			var83 = Roact_upvr.createElement
			var83 = var83("TextLabel", {
				BackgroundTransparency = 1;
				Font = titleFont.Font;
				LayoutOrder = tbl_upvr_2.TITLE;
				Size = UDim2.new(1, 0, 0, Y * 2);
				Text = title_upvr;
				TextColor3 = titleStyle_upvr.Color;
				TextSize = var61;
				TextTransparency = titleTransparency_upvr;
				TextTruncate = Enum.TextTruncate.AtEnd;
				TextWrapped = true;
				TextYAlignment = Enum.TextYAlignment.Top;
			})
		end
		tbl_3.Title = var83
		tbl.IconAndTitleContainer = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
			ZIndex = tbl_2_upvr.ICON_AND_TITLE_CONTAINER;
		}, tbl_3)
		local var85 = badgeValue_upvr
		if var85 then
			var85 = Roact_upvr.createElement
			var85 = var85("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 1);
				ZIndex = tbl_2_upvr.BADGE_CONTAINER;
			}, {
				BadgeUIListLayout = Roact_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Right;
					Padding = udim_upvr;
					VerticalAlignment = Enum.VerticalAlignment.Top;
				});
				BadgeUIPadding = Roact_upvr.createElement("UIPadding", {
					PaddingBottom = udim_upvr_2;
					PaddingLeft = udim_upvr_2;
					PaddingRight = udim_upvr_2;
					PaddingTop = udim_upvr_2;
				});
				Badge = Roact_upvr.createElement(Badge_upvr, {
					value = badgeValue_upvr;
					badgeVariant = arg1.props.badgeVariant;
				});
			})
		end
		tbl.BadgeContainer = var85
		module.MenuTileFrame = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = size_upvr;
		}, tbl)
		return Roact_upvr.createElement(Interactable_upvr, {
			Size = size_upvr;
			Position = position_upvr;
			BackgroundTransparency = 1;
			SelectionImageObject = arg2(CursorKind_upvr.RoundedRect);
			LayoutOrder = layoutOrder_upvr;
			onStateChanged = function(arg1_6, arg2_2) -- Line 173, Named "onStateChanged"
				--[[ Upvalues[9]:
					[1]: ControlState_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: BackgroundUIDefault_upvr (readonly)
					[4]: iconStyle_2_upvr (readonly)
					[5]: titleStyle_upvr (readonly)
					[6]: Otter_upvr (copied, readonly)
					[7]: BackgroundOnHover_upvr (readonly)
					[8]: tbl_upvr (copied, readonly)
					[9]: divideTransparency_upvr (copied, readonly)
				]]
				if arg2_2 == ControlState_upvr.Hover then
					arg1:setState({
						backgroundTransparency = BackgroundUIDefault_upvr.Transparency;
						iconTransparency = iconStyle_2_upvr.Transparency;
						titleTransparency = titleStyle_upvr.Transparency;
						showHoverMask = true;
					})
					arg1.hoverTransparencyMotor:setGoal(Otter_upvr.spring(BackgroundOnHover_upvr.Transparency, tbl_upvr))
				else
					if arg2_2 == ControlState_upvr.Default then
						arg1:setState({
							backgroundTransparency = BackgroundUIDefault_upvr.Transparency;
							iconTransparency = iconStyle_2_upvr.Transparency;
							titleTransparency = titleStyle_upvr.Transparency;
						})
						arg1.hoverTransparencyMotor:setGoal(Otter_upvr.spring(1, tbl_upvr))
						return
					end
					if arg2_2 == ControlState_upvr.Pressed then
						arg1:setState({
							backgroundTransparency = divideTransparency_upvr(BackgroundUIDefault_upvr.Transparency, 2);
							iconTransparency = divideTransparency_upvr(iconStyle_2_upvr.Transparency, 2);
							titleTransparency = divideTransparency_upvr(titleStyle_upvr.Transparency, 2);
							showHoverMask = false;
						})
						arg1.hoverTransparencyMotor:setGoal(Otter_upvr.instant(1))
					end
				end
			end;
			[Roact_upvr.Event.Activated] = onActivated_upvr;
		}, module)
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 304
	if arg1.hoverTransparencyMotor then
		arg1.hoverTransparencyMotor:destroy()
	end
end
return any_extend_result1