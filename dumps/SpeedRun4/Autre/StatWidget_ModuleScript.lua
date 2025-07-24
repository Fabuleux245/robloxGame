-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:54
-- Luau version 6, Types version 3
-- Time taken: 0.003944 seconds

local App = script:FindFirstAncestor("App")
local Parent = App.Parent
local Parent_2 = Parent.Parent
local tbl_upvr = {
	containerPaddingLeft = 12;
	containerPaddingRight = 12;
	containerGap = 12;
	iconSize = require(App.ImageSet.getIconSize)(require(App.ImageSet.Enum.IconSize).Large);
	dataGap = 0;
}
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local Cryo_upvr = require(Parent_2.Cryo)
local React_upvr = require(Parent_2.React)
local Label_upvr = require(Parent.Core.ImageSet.ImageSetComponent).Label
local GenericTextLabel_upvr = require(Parent.Core.Text.GenericTextLabel.GenericTextLabel)
return function(arg1) -- Line 65, Named "StatWidget"
	--[[ Upvalues[6]:
		[1]: useStyle_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: Label_upvr (readonly)
		[6]: GenericTextLabel_upvr (readonly)
	]]
	local var5_result1 = useStyle_upvr()
	local styleProps = arg1.styleProps
	if not styleProps then
		styleProps = {}
	end
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, styleProps)
	local containerGap = any_join_result1.containerGap
	local iconSize = any_join_result1.iconSize
	local iconContentColor = any_join_result1.iconContentColor
	if not iconContentColor then
		iconContentColor = var5_result1.Theme.IconEmphasis
	end
	local dataContentColor = any_join_result1.dataContentColor
	if not dataContentColor then
		dataContentColor = var5_result1.Theme.TextEmphasis
	end
	local dataLabelContentColor = any_join_result1.dataLabelContentColor
	if not dataLabelContentColor then
		dataLabelContentColor = var5_result1.Theme.TextEmphasis
	end
	return React_upvr.createElement("Frame", {
		Position = arg1.position;
		AnchorPoint = arg1.anchorPoint;
		Size = arg1.size;
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}, {
		ListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = arg1.horizontalAlignment;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, containerGap);
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, any_join_result1.containerPaddingLeft);
			PaddingRight = UDim.new(0, any_join_result1.containerPaddingRight);
		});
		Icon = React_upvr.createElement(Label_upvr, {
			Size = UDim2.new(0, iconSize, 0, iconSize);
			Image = arg1.icon;
			ImageColor3 = iconContentColor.Color;
			Position = UDim2.new(0, 0, 0, 0);
			BackgroundTransparency = 1;
		});
		TextSection = React_upvr.createElement("Frame", {
			Size = UDim2.fromScale(0, 0);
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
			Position = UDim2.new(0, iconSize + containerGap, 0, 0);
		}, {
			ListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				Padding = UDim.new(0, any_join_result1.dataGap);
			});
			Number = React_upvr.createElement(GenericTextLabel_upvr, {
				Size = UDim2.fromScale(0, 0);
				AutomaticSize = Enum.AutomaticSize.XY;
				LayoutOrder = 1;
				Text = arg1.countText;
				fluidSizing = true;
				TextWrapped = false;
				TextXAlignment = Enum.TextXAlignment.Left;
				colorStyle = dataContentColor;
				fontStyle = var5_result1.Font.Title;
				TextTruncate = Enum.TextTruncate.AtEnd;
				BackgroundTransparency = 1;
			});
			Label = React_upvr.createElement(GenericTextLabel_upvr, {
				Size = UDim2.fromScale(0, 0);
				AutomaticSize = Enum.AutomaticSize.XY;
				LayoutOrder = 2;
				Text = arg1.labelText;
				fluidSizing = true;
				TextWrapped = false;
				TextXAlignment = Enum.TextXAlignment.Left;
				colorStyle = dataLabelContentColor;
				fontStyle = var5_result1.Font.CaptionHeader;
				TextTruncate = Enum.TextTruncate.AtEnd;
				BackgroundTransparency = 1;
			});
		});
	})
end