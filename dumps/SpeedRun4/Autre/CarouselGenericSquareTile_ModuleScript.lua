-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:58
-- Luau version 6, Types version 3
-- Time taken: 0.006093 seconds

local Parent = script:FindFirstAncestor("SocialCommon").Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	badgeValue = nil;
	icon = "";
	labelText = "";
	onActivated = function() -- Line 62, Named "onActivated"
	end;
	tileSize = 100;
	iconSize = UIBlox.App.Constant.IconSize.Large;
	borderThickness = 0;
	cornerRadius = UDim.new(0, 8);
	styleProps = {
		textXAlignment = Enum.TextXAlignment.Center;
		containFooterInTileSize = false;
	};
}
local Dash_upvr = require(Parent.Dash)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local Text_upvr = require(Parent.AppCommonLib).Text
local React_upvr = require(Parent.React)
local useImpressionsTagger_upvr = require(Parent.Impressions).useImpressionsTagger
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Colors_upvr = UIBlox.App.Style.Colors
local Badge_upvr = UIBlox.App.Indicator.Badge
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
return function(arg1) -- Line 73
	--[[ Upvalues[11]:
		[1]: Dash_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: Text_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: useImpressionsTagger_upvr (readonly)
		[7]: ImageSetButton_upvr (readonly)
		[8]: ImageSetLabel_upvr (readonly)
		[9]: Colors_upvr (readonly)
		[10]: Badge_upvr (readonly)
		[11]: StyledTextLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var16 = arg1
	if not var16 then
		var16 = {}
	end
	local any_join_result1 = Dash_upvr.join(tbl_upvr, var16)
	local useStyle_upvr_result1 = useStyle_upvr()
	local Font = useStyle_upvr_result1.Font
	local styleProps = any_join_result1.styleProps
	if styleProps.font then
		local font = styleProps.font
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var22 = any_join_result1.tileSize - any_join_result1.borderThickness
	local var23 = var22
	if any_join_result1.styleProps.containFooterInTileSize then
		var23 = var22 - Text_upvr.GetTextHeight(any_join_result1.labelText, Font.CaptionHeader.Font, Font.BaseSize * Font.CaptionHeader.RelativeSize) * 2 - 8
	end
	local var24
	if any_join_result1.impressionsTag then
		var24 = React_upvr.useRef(nil)
		useImpressionsTagger_upvr(var24, any_join_result1.impressionsTag, any_join_result1.LayoutOrder)
	end
	local module = {
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, any_join_result1.borderThickness);
		});
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			VerticalAlignment = Enum.VerticalAlignment.Bottom;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 8);
		});
	}
	local tbl_2 = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = any_join_result1.cornerRadius;
		});
		UIStroke = React_upvr.createElement("UIStroke", {
			Color = useStyle_upvr_result1.Theme.Divider.Color;
			Transparency = useStyle_upvr_result1.Theme.Divider.Transparency;
			Thickness = any_join_result1.borderThickness;
		});
		Icon = React_upvr.createElement(ImageSetLabel_upvr, {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			ImageTransparency = useStyle_upvr_result1.Theme.IconEmphasis.Transparency;
			ImageColor3 = Colors_upvr.White;
			Image = any_join_result1.icon;
			Size = UDim2.fromOffset(any_join_result1.iconSize, any_join_result1.iconSize);
			Position = UDim2.fromScale(0.5, 0.5);
		});
	}
	local badgeValue = any_join_result1.badgeValue
	if badgeValue then
		badgeValue = React_upvr.createElement
		badgeValue = badgeValue(Badge_upvr, {
			anchorPoint = Vector2.new(1, 0);
			position = UDim2.fromOffset(any_join_result1.tileSize - 8, 8);
			value = any_join_result1.badgeValue;
		})
	end
	tbl_2.Badge = badgeValue
	module.Tile = React_upvr.createElement(ImageSetButton_upvr, {
		Size = UDim2.fromOffset(var23, var23);
		BackgroundColor3 = useStyle_upvr_result1.Theme.BackgroundUIDefault.Color;
		BackgroundTransparency = useStyle_upvr_result1.Theme.BackgroundUIDefault.Transparency;
		[React_upvr.Event.Activated] = any_join_result1.onActivated;
		LayoutOrder = 1;
	}, tbl_2)
	local tbl = {}
	local tbl_3 = {
		text = any_join_result1.labelText;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_3.fontStyle = Font.CaptionHeader
	tbl_3.colorStyle = useStyle_upvr_result1.Theme.TextEmphasis
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_3.size = UDim2.fromOffset(var23, Text_upvr.GetTextHeight(any_join_result1.labelText, Font.CaptionHeader.Font, Font.BaseSize * Font.CaptionHeader.RelativeSize) * 2)
	tbl_3.textTruncate = Enum.TextTruncate.AtEnd
	tbl_3.textXAlignment = styleProps.textXAlignment
	tbl_3.textYAlignment = Enum.TextYAlignment.Top
	tbl_3.fluidSizing = false
	tbl_3.richText = false
	tbl_3.lineHeight = 1
	tbl.Text = React_upvr.createElement(StyledTextLabel_upvr, tbl_3)
	module.Label = React_upvr.createElement(ImageSetButton_upvr, {
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.fromScale(1, 0);
		[React_upvr.Event.Activated] = any_join_result1.onActivated;
		LayoutOrder = 2;
	}, tbl)
	return React_upvr.createElement("Frame", {
		LayoutOrder = any_join_result1.LayoutOrder;
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.fromOffset(var23, 0);
		BackgroundTransparency = 1;
		ref = var24;
	}, module)
end