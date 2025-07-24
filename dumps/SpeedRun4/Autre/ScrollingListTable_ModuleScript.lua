-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:13
-- Luau version 6, Types version 3
-- Time taken: 0.001961 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local tbl_upvr = {
	selectable = true;
	size = UDim2.fromScale(1, 1);
}
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local Cryo_upvr = require(Parent_2.Cryo)
local React_upvr = require(Parent_2.React)
local VirtualizedList_upvr = require(Parent_2.VirtualizedList).VirtualizedList
return function(arg1) -- Line 39, Named "ScrollingListTable"
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: VirtualizedList_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 40
		--[[ Upvalues[5]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: React_upvr (copied, readonly)
			[5]: VirtualizedList_upvr (copied, readonly)
		]]
		local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
		local tbl = {}
		local cells_upvr = any_join_result1.cells
		for i, v in ipairs(cells_upvr) do
			local var19 = "Cell "..i
			local tbl_3 = {
				Content = v;
			}
			local var22
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var22 = var22("Frame", tbl_2)
				tbl_2.ZIndex = 100
				tbl_2.BackgroundTransparency = arg1_2.Theme.Divider.Transparency
				tbl_2.BackgroundColor3 = arg1_2.Theme.Divider.Color
				tbl_2.BorderSizePixel = 0
				tbl_2.Position = UDim2.new(0, 24, 1, -1)
				tbl_2.Size = UDim2.new(1, -24, 0, 1)
				local tbl_2 = {}
				var22 = React_upvr.createElement
				return var22
			end
			if i >= #cells_upvr or not INLINED() then
				var22 = nil
			end
			tbl_3.Divider = var22
			tbl[var19] = React_upvr.createElement("Frame", {
				LayoutOrder = i;
				Size = UDim2.fromScale(1, 0);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				AutomaticSize = Enum.AutomaticSize.Y;
				Name = var19;
			}, tbl_3)
		end
		return React_upvr.createElement(VirtualizedList_upvr, {
			Size = any_join_result1.size;
			data = tbl;
			renderItem = function(arg1_3) -- Line 70, Named "renderItem"
				return arg1_3.item
			end;
			getItemCount = function(arg1_4) -- Line 73, Named "getItemCount"
				--[[ Upvalues[1]:
					[1]: cells_upvr (readonly)
				]]
				return #cells_upvr
			end;
			getItem = function(arg1_5, arg2) -- Line 76, Named "getItem"
				return arg1_5["Cell "..tostring(arg2)]
			end;
			keyExtractor = function(arg1_6, arg2) -- Line 80, Named "keyExtractor"
				return "Cell "..tostring(arg2)
			end;
			style = {
				AnchorPoint = any_join_result1.anchorPoint;
				Position = any_join_result1.position;
				BackgroundTransparency = 1;
				LayoutOrder = any_join_result1.layoutOrder;
				Name = any_join_result1.Name or "ListTable";
				ScrollBarThickness = 0;
				Selectable = any_join_result1.selectable;
			};
			contentContainerStyle = {
				BackgroundTransparency = 1;
			};
		})
	end)
end