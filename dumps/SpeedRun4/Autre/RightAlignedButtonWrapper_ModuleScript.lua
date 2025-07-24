-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:07
-- Luau version 6, Types version 3
-- Time taken: 0.000978 seconds

local React_upvr = require(script:FindFirstAncestor("GameTile").Parent.React)
return function(arg1) -- Line 12
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	if not arg1.Button then
		return arg1.Content
	end
	return React_upvr.createElement(React_upvr.Fragment, nil, {
		ListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = arg1.Padding;
		});
		FooterContentWrapper = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		}, {
			Content = arg1.Content;
			React_upvr.createElement("UIFlexItem", {
				FlexMode = Enum.UIFlexMode.Shrink;
			})
		});
		Button = arg1.Button;
	})
end