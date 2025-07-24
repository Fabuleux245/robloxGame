-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:11
-- Luau version 6, Types version 3
-- Time taken: 0.001800 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local React_upvr = require(Parent.React)
local InfoCarouselCell_upvr = require(script.Parent.InfoCarouselCell)
return function(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: InfoCarouselCell_upvr (readonly)
	]]
	local var3_result1 = useDesignTokens_upvr()
	local padding = arg1.padding
	if not padding then
		padding = var3_result1.Global.Space_300
	end
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	local tbl = {}
	for i, v in arg1.data do
		tbl["Cell"..i] = React_upvr.createElement(InfoCarouselCell_upvr, {
			LayoutOrder = i * 2;
			headerText = v.headerText;
			bodyText = v.bodyText;
			icon = v.icon;
			iconSize = arg1.iconSize;
			onActivated = v.onActivated;
			padding = arg1.cellPadding;
		})
		if i < #arg1.data then
			tbl["Divider"..i] = React_upvr.createElement("Frame", {
				LayoutOrder = i * 2 + 1;
				Size = any_useBinding_result1:map(function(arg1_3) -- Line 42
					return UDim2.fromOffset(1, arg1_3 / 2)
				end);
				BorderColor3 = var3_result1.Semantic.Color.Common.Divider.Color3;
				BackgroundTransparency = var3_result1.Semantic.Color.Common.Divider.Transparency;
				BorderSizePixel = 0;
			})
		end
	end
	return React_upvr.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		AutomaticCanvasSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.LayoutOrder;
		ScrollingDirection = Enum.ScrollingDirection.X;
		ScrollBarThickness = 0;
		ElasticBehavior = Enum.ElasticBehavior.WhenScrollable;
		[React_upvr.Change.AbsoluteSize] = function(arg1_2) -- Line 24
			--[[ Upvalues[1]:
				[1]: any_useBinding_result2_upvr (readonly)
			]]
			any_useBinding_result2_upvr(arg1_2.AbsoluteSize.Y)
		end;
	}, {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, padding);
		});
		Cells = React_upvr.createElement(React_upvr.Fragment, {}, tbl);
	})
end