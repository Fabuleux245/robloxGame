-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:36
-- Luau version 6, Types version 3
-- Time taken: 0.004183 seconds

local Parent = script.Parent
local Parent_5 = Parent.Parent
local Parent_2 = Parent_5.Parent.Parent
local Parent_4 = Parent_2.Parent
local Core = Parent_4.Core
local Parent_3 = Parent_4.Parent
local React_upvr = require(Parent_3.React)
local tbl_2_upvr = {
	isHoverEnabled = false;
}
local Roact_upvr = require(Parent_3.Roact)
local function renderContentWithPadding_upvr(arg1, arg2, arg3, arg4) -- Line 44, Named "renderContentWithPadding"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	return React_upvr.createElement(arg1, arg3, {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, arg2.Left);
			PaddingRight = UDim.new(0, arg2.Right);
			PaddingTop = UDim.new(0, arg2.Top);
			PaddingBottom = UDim.new(0, arg2.Bottom);
		});
		Content = Roact_upvr.createFragment(arg4);
	})
end
local useStyle_upvr = require(Core.Style.useStyle)
local Constants_upvr = require(Parent.Constants)
local Cryo_upvr = require(Parent_3.Cryo)
local ImageSetComponent_upvr = require(Core.ImageSet.ImageSetComponent)
local GenericTextLabel_upvr = require(Core.Text.GenericTextLabel.GenericTextLabel)
local useControlState_upvr = require(Core.Control.useControlState)
local useCursor_upvr = require(Parent_2.SelectionCursor.useCursor)
local getControlStateColor_upvr = require(Parent_4.Utility.getControlStateColor)
local Interactable_upvr = require(Core.Control.Interactable)
local VerticalTile_upvr = require(Parent_5.VerticalTile.VerticalTile)
return function(arg1) -- Line 61, Named "ActionTile"
	--[[ Upvalues[13]:
		[1]: useStyle_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: renderContentWithPadding_upvr (readonly)
		[7]: ImageSetComponent_upvr (readonly)
		[8]: GenericTextLabel_upvr (readonly)
		[9]: useControlState_upvr (readonly)
		[10]: useCursor_upvr (readonly)
		[11]: getControlStateColor_upvr (readonly)
		[12]: Interactable_upvr (readonly)
		[13]: VerticalTile_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local styleProps = arg1.styleProps
	if not styleProps then
		styleProps = {}
	end
	local any_join_result1 = Cryo_upvr.Dictionary.join(Constants_upvr.getDefaultStyleProps(useStyle_upvr_result1), styleProps)
	local border = any_join_result1.border
	local topContentPadding_upvr = any_join_result1.topContentPadding
	local contentGap_upvr = any_join_result1.contentGap
	local titleFont_upvr = any_join_result1.titleFont
	local iconSize_upvr = any_join_result1.iconSize
	local any_join_result1_2_upvw = Cryo_upvr.Dictionary.join(tbl_2_upvr, arg1)
	local var31_upvw
	if any_join_result1_2_upvw.title then
		var31_upvw = titleFont_upvr.RelativeSize * useStyle_upvr_result1.Font.BaseSize
	end
	local iconImageColor_upvr = any_join_result1.iconImageColor
	local titleTextColor_upvr = any_join_result1.titleTextColor
	local useControlState_upvr_result1, var17_result2 = useControlState_upvr()
	local var19_result1 = getControlStateColor_upvr(useControlState_upvr_result1, any_join_result1.overlayColors)
	local var47
	local var48
	if var19_result1 ~= nil then
		var47 = var19_result1.Color
		var48 = var19_result1.Transparency
	else
		var47 = nil
		var48 = 1
	end
	return renderContentWithPadding_upvr(Interactable_upvr, any_join_result1.selectionCursorPadding, {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		SelectionImageObject = useCursor_upvr(border.CornerRadius);
		onStateChanged = var17_result2;
		[React_upvr.Event.Activated] = any_join_result1_2_upvw.onActivated;
	}, {
		VerticalTile = React_upvr.createElement(VerticalTile_upvr, {
			hasBackground = true;
			hasOutline = true;
			isHoverEnabled = any_join_result1_2_upvw.isHoverEnabled;
			isOverlayVisible = false;
			isActive = false;
			renderTopContent = React_upvr.useCallback(function(arg1_2) -- Line 81
				--[[ Upvalues[12]:
					[1]: renderContentWithPadding_upvr (copied, readonly)
					[2]: topContentPadding_upvr (readonly)
					[3]: React_upvr (copied, readonly)
					[4]: contentGap_upvr (readonly)
					[5]: any_join_result1_2_upvw (read and write)
					[6]: ImageSetComponent_upvr (copied, readonly)
					[7]: iconSize_upvr (readonly)
					[8]: iconImageColor_upvr (readonly)
					[9]: GenericTextLabel_upvr (copied, readonly)
					[10]: var31_upvw (read and write)
					[11]: titleFont_upvr (readonly)
					[12]: titleTextColor_upvr (readonly)
				]]
				local module = {}
				local tbl = {}
				local var39 = "UIListLayout"
				tbl[1] = React_upvr.createElement(var39, {
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					SortOrder = Enum.SortOrder.LayoutOrder;
					Padding = UDim.new(0, contentGap_upvr);
				})
				if any_join_result1_2_upvw.icon then
					var39 = React_upvr.createElement
					var39 = var39(ImageSetComponent_upvr.Label, {
						Size = UDim2.fromOffset(iconSize_upvr, iconSize_upvr);
						BackgroundTransparency = 1;
						Image = any_join_result1_2_upvw.icon;
						ImageColor3 = iconImageColor_upvr.Color;
						ImageTransparency = iconImageColor_upvr.Transparency;
						LayoutOrder = 1;
					})
				else
					var39 = nil
				end
				tbl.Icon = var39
				if any_join_result1_2_upvw.title then
					var39 = React_upvr.createElement
					var39 = var39(GenericTextLabel_upvr, {
						Text = any_join_result1_2_upvw.title;
						Size = UDim2.new(1, 0, 0, var31_upvw);
						TextXAlignment = Enum.TextXAlignment.Center;
						LayoutOrder = 2;
						fontStyle = titleFont_upvr;
						colorStyle = titleTextColor_upvr;
						TextTruncate = Enum.TextTruncate.AtEnd;
					})
				else
					var39 = nil
				end
				tbl.Title = var39
				module.Content = React_upvr.createElement("Frame", {
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.fromScale(0.5, 0.5);
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					ClipsDescendants = true;
					BackgroundTransparency = 1;
				}, tbl)
				return renderContentWithPadding_upvr("Frame", topContentPadding_upvr, {
					Size = UDim2.new(1, 0, 1, 0);
					BackgroundTransparency = 1;
				}, module)
			end, {contentGap_upvr, any_join_result1_2_upvw.title, any_join_result1_2_upvw.icon, iconSize_upvr, var31_upvw, titleFont_upvr, topContentPadding_upvr, useStyle_upvr_result1});
			renderBottomContent = nil;
			renderFooterRow = nil;
			reservedBottomHeight = 0;
			backgroundColor = any_join_result1.backgroundColor;
			border = border;
			dropShadow = any_join_result1.dropShadow;
		});
		OverlayColor = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundColor3 = var47;
			BackgroundTransparency = var48;
		}, {
			Corner = React_upvr.createElement("UICorner", {
				CornerRadius = border.CornerRadius;
			});
		});
	})
end