-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:25
-- Luau version 6, Types version 3
-- Time taken: 0.001471 seconds

local Parent = script:FindFirstAncestor("BulkPurchaseApp").Parent
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local React_upvr = require(Parent.React)
local Item_upvr = require(script.Parent.Item)
return function(arg1) -- Line 20, Named "ItemList"
	--[[ Upvalues[3]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Item_upvr (readonly)
	]]
	local module = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Bottom;
			Padding = UDim.new(0, useDesignTokens_upvr().Global.Space_150);
		});
	}
	for i, v in arg1.items do
		module[v.id] = React_upvr.createElement(Item_upvr, {
			name = v.name;
			image = v.image;
			endSlot = v.endSlot;
			LayoutOrder = i;
		})
	end
	return React_upvr.createElement("Frame", {
		LayoutOrder = arg1.LayoutOrder;
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}, module)
end