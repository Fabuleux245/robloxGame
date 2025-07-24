-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:44
-- Luau version 6, Types version 3
-- Time taken: 0.008266 seconds

local CollectionViews = script:FindFirstAncestor("CollectionViews")
local Parent = CollectionViews.Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	maxNumRows = math.huge;
	numColumns = 1;
	bufferRowsBelowScreen = 4;
	bufferRowsAboveScreen = 4;
	columnGap = 0;
	sideMargin = 0;
	verticalPadding = 0;
}
local Cryo_upvr = require(Parent.Cryo)
local ArgCheck_upvr = require(Parent.ArgCheck)
local calculateRelativeColumnGap_upvr = require(CollectionViews.Grid.calculateRelativeColumnGap)
return React_upvr.memo(function(arg1) -- Line 73, Named "GridOfCollectionItems"
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ArgCheck_upvr (readonly)
		[5]: calculateRelativeColumnGap_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local minimum_upvr = math.min(math.ceil(#any_join_result1_upvr.items / any_join_result1_upvr.numColumns), any_join_result1_upvr.maxNumRows)
	local any_useState_result1_2_upvr, any_useState_result2_upvr_3 = React_upvr.useState(-1)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(-1)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(any_join_result1_upvr.bufferRowsBelowScreen + any_join_result1_upvr.bufferRowsAboveScreen)
	React_upvr.useEffect(function() -- Line 94
		--[[ Upvalues[6]:
			[1]: any_join_result1_upvr (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: minimum_upvr (readonly)
			[4]: any_useState_result2_upvr_3 (readonly)
			[5]: any_useState_result2_upvr_2 (readonly)
			[6]: any_useState_result2_upvr (readonly)
		]]
		local tbl_upvr_2 = {}
		if any_join_result1_upvr.verticalScrollingFrameRef and any_join_result1_upvr.verticalScrollingFrameRef.current and any_useRef_result1_upvr.current then
			local current_upvr = any_useRef_result1_upvr.current
			local current_upvr_2 = any_join_result1_upvr.verticalScrollingFrameRef.current
			local Y_upvw = current_upvr_2.AbsolutePosition.Y
			local Y_upvw_2 = current_upvr_2.AbsoluteWindowSize.Y
			local var24_upvw = math.ceil(Y_upvw_2 / math.max(1, any_join_result1_upvr.itemSizeBinding:getValue().Y + any_join_result1_upvr.verticalPadding)) + 1
			local function _() -- Line 111, Named "calculateOffsetOfGrid"
				--[[ Upvalues[3]:
					[1]: current_upvr (readonly)
					[2]: current_upvr_2 (readonly)
					[3]: Y_upvw (read and write)
				]]
				return current_upvr.AbsolutePosition.Y + current_upvr_2.CanvasPosition.Y - Y_upvw
			end
			local var25_upvw = current_upvr.AbsolutePosition.Y + current_upvr_2.CanvasPosition.Y - Y_upvw
			local function updateRowsToRender_upvr() -- Line 118, Named "updateRowsToRender"
				--[[ Upvalues[8]:
					[1]: current_upvr_2 (readonly)
					[2]: any_join_result1_upvr (copied, readonly)
					[3]: minimum_upvr (copied, readonly)
					[4]: var25_upvw (read and write)
					[5]: Y_upvw_2 (read and write)
					[6]: var24_upvw (read and write)
					[7]: any_useState_result2_upvr_3 (copied, readonly)
					[8]: any_useState_result2_upvr_2 (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local Y = any_join_result1_upvr.itemSizeBinding:getValue().Y
				local maximum = math.max(1, Y + any_join_result1_upvr.verticalPadding)
				local var28 = var25_upvw - current_upvr_2.CanvasPosition.Y
				local var29
				local var30
				local var31
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var31 = -(any_join_result1_upvr.bufferRowsAboveScreen * maximum)
					return (var28) + (minimum_upvr * (Y + any_join_result1_upvr.verticalPadding) - any_join_result1_upvr.verticalPadding) < var31
				end
				if Y_upvw_2 + any_join_result1_upvr.bufferRowsBelowScreen * maximum < var28 or INLINED() then
					var29 = -1
					var30 = -1
				else
					var31 = -var28 / maximum
					local floored = math.floor(var31)
					var31 = math.max(1, floored + 1 - any_join_result1_upvr.bufferRowsAboveScreen)
					var29 = var31
					var31 = var24_upvw + any_join_result1_upvr.bufferRowsBelowScreen
					if floored <= 0 then
						var31 += floored
						local var33 = var31
					else
						var33 += math.min(floored, any_join_result1_upvr.bufferRowsAboveScreen)
					end
					var33 = math.max(1, var33)
					var30 = math.min(minimum_upvr, var29 + var33 - 1)
				end
				var33 = var29
				any_useState_result2_upvr_3(var33)
				var33 = var30
				any_useState_result2_upvr_2(var33)
			end
			local function updateWindowParams() -- Line 163
				--[[ Upvalues[10]:
					[1]: any_join_result1_upvr (copied, readonly)
					[2]: Y_upvw (read and write)
					[3]: current_upvr_2 (readonly)
					[4]: Y_upvw_2 (read and write)
					[5]: var25_upvw (read and write)
					[6]: current_upvr (readonly)
					[7]: var24_upvw (read and write)
					[8]: any_useState_result2_upvr (copied, readonly)
					[9]: minimum_upvr (copied, readonly)
					[10]: updateRowsToRender_upvr (readonly)
				]]
				Y_upvw = current_upvr_2.AbsolutePosition.Y
				Y_upvw_2 = current_upvr_2.AbsoluteWindowSize.Y
				var25_upvw = current_upvr.AbsolutePosition.Y + current_upvr_2.CanvasPosition.Y - Y_upvw
				var24_upvw = math.ceil(Y_upvw_2 / math.max(1, any_join_result1_upvr.itemSizeBinding:getValue().Y + any_join_result1_upvr.verticalPadding)) + 1
				any_useState_result2_upvr(math.min(minimum_upvr, var24_upvw + any_join_result1_upvr.bufferRowsBelowScreen + any_join_result1_upvr.bufferRowsAboveScreen))
				updateRowsToRender_upvr()
			end
			table.insert(tbl_upvr_2, current_upvr_2:GetPropertyChangedSignal("AbsolutePosition"):Connect(updateWindowParams))
			table.insert(tbl_upvr_2, current_upvr_2:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(updateWindowParams))
			table.insert(tbl_upvr_2, current_upvr_2:GetPropertyChangedSignal("CanvasSize"):Connect(updateWindowParams))
			table.insert(tbl_upvr_2, current_upvr_2:GetPropertyChangedSignal("CanvasPosition"):Connect(updateRowsToRender_upvr))
			updateWindowParams()
		else
			current_upvr = any_useState_result2_upvr_3
			current_upvr_2 = 1
			current_upvr(current_upvr_2)
			current_upvr = any_useState_result2_upvr_2
			current_upvr_2 = minimum_upvr
			current_upvr(current_upvr_2)
			current_upvr = any_useState_result2_upvr
			current_upvr_2 = minimum_upvr
			current_upvr(current_upvr_2)
		end
		function current_upvr() -- Line 204
			--[[ Upvalues[1]:
				[1]: tbl_upvr_2 (readonly)
			]]
			for _, v in tbl_upvr_2 do
				v:Disconnect()
			end
		end
		return current_upvr
	end, {any_useRef_result1_upvr, minimum_upvr, any_join_result1_upvr.itemSizeBinding, any_join_result1_upvr.verticalScrollingFrameRef, any_join_result1_upvr.verticalPadding, any_join_result1_upvr.bufferRowsAboveScreen, any_join_result1_upvr.bufferRowsBelowScreen, any_join_result1_upvr.onViewableItemsChanged})
	local minimum_upvw = math.min(any_useState_result1, minimum_upvr)
	local maximum_2_upvr = math.max(-1, (any_useState_result1_2_upvr - 1) * any_join_result1_upvr.numColumns + 1)
	local maximum_upvr = math.max(-1, math.min(#any_join_result1_upvr.items, minimum_upvw * any_join_result1_upvr.numColumns))
	React_upvr.useEffect(function() -- Line 229
		--[[ Upvalues[3]:
			[1]: any_join_result1_upvr (readonly)
			[2]: maximum_2_upvr (readonly)
			[3]: maximum_upvr (readonly)
		]]
		if any_join_result1_upvr.onViewableItemsChanged then
			any_join_result1_upvr.onViewableItemsChanged(maximum_2_upvr, maximum_upvr)
		end
	end, {maximum_2_upvr, maximum_upvr, any_join_result1_upvr.onViewableItemsChanged})
	return React_upvr.createElement("Frame", {
		ref = any_useRef_result1_upvr;
		Size = any_join_result1_upvr.itemSizeBinding:map(function(arg1_2) -- Line 81
			--[[ Upvalues[2]:
				[1]: minimum_upvr (readonly)
				[2]: any_join_result1_upvr (readonly)
			]]
			return minimum_upvr * (arg1_2.Y + any_join_result1_upvr.verticalPadding) - any_join_result1_upvr.verticalPadding
		end):map(function(arg1_5) -- Line 329
			return UDim2.new(1, 0, 0, arg1_5)
		end);
		BackgroundTransparency = 1;
		LayoutOrder = any_join_result1_upvr.LayoutOrder;
		Position = any_join_result1_upvr.Position;
	}, React_upvr.useMemo(function() -- Line 236
		--[[ Upvalues[10]:
			[1]: any_useState_result1_2_upvr (readonly)
			[2]: minimum_upvw (read and write)
			[3]: maximum_2_upvr (readonly)
			[4]: maximum_upvr (readonly)
			[5]: any_join_result1_upvr (readonly)
			[6]: minimum_upvr (readonly)
			[7]: ArgCheck_upvr (copied, readonly)
			[8]: React_upvr (copied, readonly)
			[9]: calculateRelativeColumnGap_upvr (copied, readonly)
			[10]: any_useState_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module = {}
		local var49
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var49 = any_useState_result1_2_upvr
			return minimum_upvw < var49
		end
		if any_useState_result1_2_upvr <= var49 or INLINED_2() then
			return nil
		end
		var49 = 0
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var49 = maximum_2_upvr
			return maximum_upvr < var49
		end
		if maximum_2_upvr <= var49 or INLINED_3() then
			return nil
		end
		var49 = any_join_result1_upvr
		var49 = 0
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var49 = 0
			var49 = minimum_upvr
			return var49 - any_useState_result1_2_upvr < var49
		end
		if var49.numColumns <= var49 or INLINED_4() then
			return nil
		end
		var49 = ArgCheck_upvr
		if 1 > any_useState_result1_2_upvr then
			var49 = false
		else
			var49 = true
		end
		var49.assert(var49)
		if any_useState_result1_2_upvr <= minimum_upvw then
			if minimum_upvw > minimum_upvr then
			else
			end
		end
		ArgCheck_upvr.assert(true)
		if 1 < any_useState_result1_2_upvr then
			local tbl = {}
			local var52_upvr = any_useState_result1_2_upvr - 1
			tbl.PaddingTop = any_join_result1_upvr.itemSizeBinding:map(function(arg1_3) -- Line 254
				--[[ Upvalues[2]:
					[1]: var52_upvr (readonly)
					[2]: any_join_result1_upvr (copied, readonly)
				]]
				return UDim.new(0, var52_upvr * (arg1_3.Y + any_join_result1_upvr.verticalPadding))
			end)
			module.Padding = React_upvr.createElement("UIPadding", tbl)
		end
		var52_upvr = minimum_upvr - any_useState_result1_2_upvr + 1
		local var53 = var52_upvr
		local var54 = ArgCheck_upvr
		if 1 > var53 then
			var54 = false
		else
			var54 = true
		end
		var54.assert(var54)
		if 1 > any_join_result1_upvr.numColumns then
			-- KONSTANTWARNING: GOTO [115] #91
		end
		ArgCheck_upvr.assert(true)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
		local tbl_2 = {
			FillDirectionMaxCells = any_join_result1_upvr.numColumns;
		}
		if any_join_result1_upvr.disableRelativeGap then
			-- KONSTANTWARNING: GOTO [206] #161
		end
		tbl_2.CellPadding = any_join_result1_upvr.itemSizeBinding:map(function(arg1_4) -- Line 284
			--[[ Upvalues[2]:
				[1]: calculateRelativeColumnGap_upvr (copied, readonly)
				[2]: any_join_result1_upvr (copied, readonly)
			]]
			return UDim2.new(calculateRelativeColumnGap_upvr(any_join_result1_upvr.numColumns, any_join_result1_upvr.columnGap, arg1_4.X, any_join_result1_upvr.sideMargin), 0, 0, any_join_result1_upvr.verticalPadding)
		end)
		tbl_2.CellSize = UDim2.new(1 / any_join_result1_upvr.numColumns, math.floor(-((any_join_result1_upvr.numColumns - 1) / any_join_result1_upvr.numColumns) * any_join_result1_upvr.columnGap), 1 / var53, math.floor(-((var53 - 1) / var53) * any_join_result1_upvr.verticalPadding))
		tbl_2.FillDirection = Enum.FillDirection.Horizontal
		tbl_2.HorizontalAlignment = Enum.HorizontalAlignment.Left
		tbl_2.VerticalAlignment = Enum.VerticalAlignment.Top
		tbl_2.SortOrder = Enum.SortOrder.LayoutOrder
		module.Layout = React_upvr.createElement("UIGridLayout", tbl_2)
		if 1 > maximum_2_upvr then
		else
		end
		ArgCheck_upvr.assert(true)
		if maximum_2_upvr <= maximum_upvr then
			if maximum_upvr > #any_join_result1_upvr.items then
			else
			end
		end
		ArgCheck_upvr.assert(true)
		for i_2 = maximum_2_upvr, maximum_upvr do
			if i_2 <= #any_join_result1_upvr.items then
				local any_renderItem_result1, any_renderItem_result2 = any_join_result1_upvr.renderItem(any_join_result1_upvr.items[i_2], i_2, UDim2.fromScale(1, 1), math.ceil(i_2 / any_join_result1_upvr.numColumns))
				module[`{any_renderItem_result2}{i_2 % any_useState_result1_upvr * any_join_result1_upvr.numColumns}`] = any_renderItem_result1
			end
		end
		return module
	end, {any_join_result1_upvr.columnGap, any_join_result1_upvr.numColumns, any_join_result1_upvr.itemSizeBinding, any_useState_result1_2_upvr, minimum_upvw, any_join_result1_upvr.items, any_join_result1_upvr.renderItem, any_join_result1_upvr.verticalPadding, any_useState_result1_upvr, minimum_upvr, any_join_result1_upvr.sideMargin, maximum_2_upvr, maximum_upvr, any_join_result1_upvr.disableRelativeGap}))
end)