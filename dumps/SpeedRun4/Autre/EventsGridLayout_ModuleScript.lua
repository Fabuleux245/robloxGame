-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:43
-- Luau version 6, Types version 3
-- Time taken: 0.002818 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local tbl_upvr = {
	itemPadding = UDim.new(0, 12);
	numItemsShown = math.huge;
}
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
local React_upvr = require(VirtualEvents.Parent.React)
return function(arg1) -- Line 19, Named "EventsGridLayout"
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 22
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: React_upvr (copied, readonly)
		]]
		local module_2 = {}
		for i = 1, any_join_result1_upvr.numItemsShown do
			module_2[i] = React_upvr.createElement("Frame", {
				LayoutOrder = i;
				Size = UDim2.fromScale(1, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				BackgroundTransparency = 1;
			}, {
				Content = any_join_result1_upvr.items[i];
			})
		end
		return module_2
	end, {any_join_result1_upvr.items, any_join_result1_upvr.numItemsShown})
	return React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			Padding = any_join_result1_upvr.itemPadding;
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
		});
		Rows = React_upvr.createElement(React_upvr.Fragment, nil, React_upvr.useMemo(function() -- Line 39
			--[[ Upvalues[3]:
				[1]: any_useMemo_result1_upvr (readonly)
				[2]: React_upvr (copied, readonly)
				[3]: any_join_result1_upvr (readonly)
			]]
			local module = {}
			for i_2 = 1, #any_useMemo_result1_upvr, 2 do
				local var18 = any_useMemo_result1_upvr[i_2 + 1]
				local tbl = {
					Layout = React_upvr.createElement("UIListLayout", {
						Padding = any_join_result1_upvr.itemPadding;
						SortOrder = Enum.SortOrder.LayoutOrder;
						FillDirection = Enum.FillDirection.Horizontal;
						HorizontalAlignment = Enum.HorizontalAlignment.Left;
					});
					CellFrame1 = React_upvr.createElement("Frame", {
						Size = UDim2.new(0.5, -any_join_result1_upvr.itemPadding.Offset / 2, 0, 0);
						AutomaticSize = Enum.AutomaticSize.Y;
						BackgroundTransparency = 1;
						LayoutOrder = 1;
					}, {
						Item = React_upvr.createElement(React_upvr.Fragment, nil, any_useMemo_result1_upvr[i_2]);
					});
				}
				local var24 = var18
				if var24 then
					var24 = React_upvr.createElement
					var24 = var24("Frame", {
						Size = UDim2.new(0.5, -any_join_result1_upvr.itemPadding.Offset / 2, 0, 0);
						AutomaticSize = Enum.AutomaticSize.Y;
						BackgroundTransparency = 1;
						LayoutOrder = 2;
					}, {
						Item = React_upvr.createElement(React_upvr.Fragment, nil, var18);
					})
				end
				tbl.CellFrame2 = var24
				module["Row"..math.ceil(i_2 / 2)] = React_upvr.createElement("Frame", {
					Size = UDim2.fromScale(1, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					BackgroundTransparency = 1;
					LayoutOrder = i_2;
				}, tbl)
			end
			return module
		end, {any_join_result1_upvr.items, any_useMemo_result1_upvr}));
	})
end