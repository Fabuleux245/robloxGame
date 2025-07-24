-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:19
-- Luau version 6, Types version 3
-- Time taken: 0.002045 seconds

local Parent = script.Parent.Parent.Parent
local Parent_3 = Parent.Parent
local Parent_2 = Parent_3.Parent
local tbl_upvr = {
	items = {};
}
local Object_upvr = require(Parent_2.LuauPolyfill).Object
local useStyle_upvr = require(Parent_3.Core.Style.useStyle)
local React_upvr = require(Parent_2.React)
local Constants_upvr = require(script.Parent.Constants)
local getIconSize_upvr = require(Parent.ImageSet.getIconSize)
local IconSize_upvr = require(Parent.ImageSet.Enum.IconSize)
local ImageSetComponent_upvr = require(Parent_3.Core.ImageSet.ImageSetComponent)
local GenericTextLabel_upvr = require(Parent_3.Core.Text.GenericTextLabel.GenericTextLabel)
return function(arg1) -- Line 41, Named "ContextBar"
	--[[ Upvalues[9]:
		[1]: Object_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: getIconSize_upvr (readonly)
		[7]: IconSize_upvr (readonly)
		[8]: ImageSetComponent_upvr (readonly)
		[9]: GenericTextLabel_upvr (readonly)
	]]
	local any_assign_result1 = Object_upvr.assign({}, tbl_upvr, arg1)
	local useStyle_upvr_result1 = useStyle_upvr()
	local module = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0);
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, Constants_upvr.CONTEXT_BAR_PADDING_START);
			PaddingRight = UDim.new(0, Constants_upvr.CONTEXT_BAR_PADDING_END);
		});
		ListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, Constants_upvr.CONTEXT_BAR_ITEMS_SPACING);
		});
	}
	local getIconSize_upvr_result1 = getIconSize_upvr(IconSize_upvr.Medium)
	for i, v in ipairs(any_assign_result1.items) do
		module["Item"..tostring(i)] = React_upvr.createElement("Frame", {
			LayoutOrder = i;
			Size = UDim2.fromOffset(0, 0);
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.XY;
		}, {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, Constants_upvr.CONTEXT_BAR_ITEM_ICON_LABEL_SPACING);
			});
			Icon = React_upvr.createElement(ImageSetComponent_upvr.Label, {
				LayoutOrder = 1;
				Size = UDim2.fromOffset(getIconSize_upvr_result1, getIconSize_upvr_result1);
				Image = v.icon;
				ImageColor3 = useStyle_upvr_result1.Theme.IconEmphasis.Color;
				ImageTransparency = useStyle_upvr_result1.Theme.IconEmphasis.Transparency;
				BackgroundTransparency = 1;
			});
			Text = React_upvr.createElement(GenericTextLabel_upvr, {
				LayoutOrder = 2;
				Size = UDim2.fromOffset(0, Constants_upvr.CONTEXT_BAR_ITEM_LABEL_HEIGHT);
				AutomaticSize = Enum.AutomaticSize.X;
				Text = v.text;
				colorStyle = useStyle_upvr_result1.Theme.TextEmphasis;
				fontStyle = useStyle_upvr_result1.Font.CaptionHeader;
				BackgroundTransparency = 1;
			});
		})
	end
	return React_upvr.createElement("Frame", {
		Position = any_assign_result1.position;
		AnchorPoint = any_assign_result1.anchorPoint;
		Size = UDim2.fromOffset(0, Constants_upvr.CONTEXT_BAR_HEIGHT);
		BorderSizePixel = 0;
		BackgroundColor3 = useStyle_upvr_result1.Theme.UIMuted.Color;
		BackgroundTransparency = useStyle_upvr_result1.Theme.UIMuted.Transparency;
		AutomaticSize = Enum.AutomaticSize.X;
	}, module)
end