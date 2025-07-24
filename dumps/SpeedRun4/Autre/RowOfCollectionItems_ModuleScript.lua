-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:37
-- Luau version 6, Types version 3
-- Time taken: 0.003207 seconds

local Parent = script:FindFirstAncestor("CollectionViews").Parent
local React_upvr = require(Parent.React)
local ArgCheck_upvr = require(Parent.ArgCheck)
return React_upvr.memo(function(arg1) -- Line 36, Named "RowOfCollectionItems"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ArgCheck_upvr (readonly)
	]]
	return React_upvr.createElement(React_upvr.Fragment, nil, React_upvr.useMemo(function() -- Line 38
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: ArgCheck_upvr (copied, readonly)
		]]
		local var7
		if arg1.numToRender == 0 or arg1.numItemsForSizing == 0 then
			return nil
		end
		local var8 = arg1.startingIndex - 1
		local module = {}
		local numItemsForSizing = arg1.numItemsForSizing
		local var11 = numItemsForSizing - 1
		local floored = math.floor(var11 / numItemsForSizing * arg1.columnGap)
		var7 = 0
		local udim2 = UDim2.new(1 / numItemsForSizing, -floored, 1, var7)
		var7 = arg1.columnGap
		var7 = arg1
		var7 = (floored * numItemsForSizing - var7 * var11) / var11
		local var14 = var7.columnGap + var7
		var7 = React_upvr
		var7 = "UIListLayout"
		module.Layout = var7.createElement(var7, {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			Padding = UDim.new(0, var14);
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
		})
		if 0 < var8 then
			var7 = React_upvr
			var7 = "Frame"
			module.Padding = var7.createElement(var7, {
				BackgroundTransparency = 1;
				Size = UDim2.new(var8 * udim2.X.Scale, (var8 - 1) * var14 + var8 * udim2.X.Offset, 0, 0);
				LayoutOrder = 0;
			})
		end
		var7 = ArgCheck_upvr
		var7 = false
		if 1 <= arg1.startingIndex then
			if arg1.startingIndex > #arg1.items then
				var7 = false
			else
				var7 = true
			end
		end
		var7.assert(var7)
		if arg1.startingIndex <= arg1.endingIndex then
			if arg1.endingIndex > #arg1.items then
			else
			end
		end
		ArgCheck_upvr.assert(true)
		for i = arg1.startingIndex, arg1.endingIndex do
			if 1 <= i and i <= #arg1.items then
				local any_renderItem_result1, any_renderItem_result2 = arg1.renderItem(arg1.items[i], i, udim2)
				module[any_renderItem_result2..tostring(i % arg1.numToRender + 1)] = any_renderItem_result1
			end
		end
		return module
	end, {arg1.columnGap, arg1.startingIndex, arg1.endingIndex, arg1.items, arg1.numToRender, arg1.renderItem, arg1.sideMargin, arg1.totalItemsOnCanvas, arg1.numItemsForSizing}))
end)