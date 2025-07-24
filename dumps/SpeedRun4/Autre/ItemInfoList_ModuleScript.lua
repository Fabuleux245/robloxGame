-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:35
-- Luau version 6, Types version 3
-- Time taken: 0.001648 seconds

local Parent = script:FindFirstAncestor("ItemDetails").Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local ItemInfoRow_upvr = require(script.Parent.ItemInfoRow)
return function(arg1) -- Line 42, Named "ItemInfoList"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: ItemInfoRow_upvr (readonly)
	]]
	local module = {
		layout = React_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
		});
	}
	for i, v in arg1.rowData do
		local tbl = {
			LayoutOrder = i;
		}
		local var12
		if next(arg1.rowData, i) ~= nil then
			var12 = false
		else
			var12 = true
		end
		tbl.hideDivider = var12
		var12 = React_upvr
		var12 = ItemInfoRow_upvr
		table.insert(module, var12.createElement(var12, Cryo_upvr.Dictionary.join(v, tbl)))
	end
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.fromScale(1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.LayoutOrder;
	}, module)
end