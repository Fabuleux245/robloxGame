-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:38
-- Luau version 6, Types version 3
-- Time taken: 0.008287 seconds

local CollectionViews = script:FindFirstAncestor("CollectionViews")
local Parent = CollectionViews.Parent
local React_upvr = require(Parent.React)
local function _(arg1, arg2, arg3) -- Line 64, Named "getNumToRenderWithVirtualization"
	if arg2 == 0 then
		return 0
	end
	return math.min(arg2 + (arg3 or 6), arg1)
end
local useHorizontalScrolledToEndThreshold_upvr = require(CollectionViews.Carousel.useHorizontalScrolledToEndThreshold)
local ArgCheck_upvr = require(Parent.ArgCheck)
local useHorizontalWindowStartIndex_upvr = require(CollectionViews.Carousel.useHorizontalWindowStartIndex)
local RowOfCollectionItems_upvr = require(CollectionViews.Carousel.RowOfCollectionItems)
return React_upvr.memo(function(arg1) -- Line 81, Named "ScrollingRowOfCollectionItems"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: useHorizontalScrolledToEndThreshold_upvr (readonly)
		[3]: ArgCheck_upvr (readonly)
		[4]: useHorizontalWindowStartIndex_upvr (readonly)
		[5]: RowOfCollectionItems_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 63 start (CF ANALYSIS FAILED)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	useHorizontalScrolledToEndThreshold_upvr(any_useRef_result1_upvr, arg1.thresholdFromEnd, arg1.onReachedThresholdFromEnd, arg1.ScrollingEnabled)
	local var30 = ArgCheck_upvr
	if 0 > arg1.totalItemsOnCanvas then
		var30 = false
	else
		var30 = true
	end
	var30.assert(var30)
	var30 = ArgCheck_upvr
	if 1 > arg1.numColumns then
		var30 = false
		-- KONSTANTWARNING: GOTO [48] #35
	end
	-- KONSTANTERROR: [0] 1. Error Block 63 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 34. Error Block 77 start (CF ANALYSIS FAILED)
	var30 = true
	var30.assert(var30)
	var30 = ArgCheck_upvr
	if 0 > arg1.columnGap then
		var30 = false
	else
		var30 = true
	end
	var30.assert(var30)
	var30 = arg1.numItemsToRenderOffScreen
	if var30 ~= -1 then
		if arg1.ScrollingEnabled then
			var30 = arg1.totalItemsOnCanvas
			if arg1.numColumns * 2 >= var30 then
				local _ = false
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
			end
		end
	end
	if true then
		local numColumns_2 = arg1.numColumns
		if numColumns_2 == 0 then
			var30 = 0
		else
			var30 = math.min(numColumns_2 + (arg1.numItemsToRenderOffScreen or 6), arg1.totalItemsOnCanvas)
		end
	else
		var30 = math.min(arg1.totalItemsOnCanvas, #arg1.items)
	end
	local maximum_upvr = math.max(arg1.numColumns, arg1.totalItemsOnCanvas)
	local var34 = ArgCheck_upvr
	if 0 > var30 then
		var34 = false
	else
		var34 = true
	end
	var34.assert(var34)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local minimum_upvr = math.min(useHorizontalWindowStartIndex_upvr(any_useRef_result1_upvr, arg1.itemSizeBinding, arg1.columnGap, true), #arg1.items)
	local maximum_upvr_3 = math.max(0, math.min(arg1.totalItemsOnCanvas, minimum_upvr + var30 - 1))
	if 0 <= minimum_upvr then
		if minimum_upvr > #arg1.items then
		else
		end
	end
	ArgCheck_upvr.assert(true, `startingIndex: {minimum_upvr} failed check >= 0 and <= {#arg1.items}`)
	if minimum_upvr <= maximum_upvr_3 then
		if maximum_upvr_3 > #arg1.items then
		else
		end
	end
	ArgCheck_upvr.assert(true, `endingIndex: {maximum_upvr_3} failed check >= {minimum_upvr} and <= {#arg1.items}`)
	React_upvr.useEffect(function() -- Line 146
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: minimum_upvr (readonly)
			[3]: maximum_upvr_3 (readonly)
		]]
		if arg1.onViewableItemsChanged then
			arg1.onViewableItemsChanged(minimum_upvr, maximum_upvr_3)
		end
	end, {minimum_upvr, maximum_upvr_3, arg1.onViewableItemsChanged})
	local module_2 = {
		Size = arg1.itemSizeBinding:map(function(arg1_6) -- Line 153
			return UDim2.new(1, 0, 0, arg1_6.Y)
		end);
		Position = arg1.Position;
		LayoutOrder = arg1.LayoutOrder;
		ScrollBarThickness = 0;
		BackgroundTransparency = 1;
		ClipsDescendants = false;
		CanvasSize = arg1.itemSizeBinding:map(function(arg1_7) -- Line 161
			--[[ Upvalues[2]:
				[1]: maximum_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			return UDim2.new(0, math.max(0, maximum_upvr * (arg1_7.X + arg1.columnGap) - arg1.columnGap), 0, arg1_7.Y)
		end);
	}
	if arg1.ScrollingEnabled then
		if arg1.numColumns >= arg1.totalItemsOnCanvas then
		else
		end
	end
	module_2.ScrollingEnabled = true
	module_2.ScrollingDirection = Enum.ScrollingDirection.X
	module_2.ElasticBehavior = Enum.ElasticBehavior.Always
	module_2.Selectable = false
	module_2[React_upvr.Change.CanvasPosition] = arg1.onChangeCanvasPosition
	module_2.ref = React_upvr.useCallback(function(arg1_5) -- Line 84
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		any_useRef_result1_upvr.current = arg1_5
		if arg1.onScrollingFrameRefCallback then
			arg1.onScrollingFrameRefCallback(arg1_5)
		end
	end, {arg1.onScrollingFrameRefCallback})
	module_2.AutomaticSize = arg1.AutomaticSize
	do
		return React_upvr.createElement("ScrollingFrame", module_2, {
			RowOfCollectionItems = React_upvr.createElement(RowOfCollectionItems_upvr, {
				startingIndex = minimum_upvr;
				endingIndex = maximum_upvr_3;
				numToRender = var30;
				items = arg1.items;
				totalItemsOnCanvas = arg1.totalItemsOnCanvas;
				columnGap = arg1.columnGap;
				renderItem = arg1.renderItem;
				sideMargin = arg1.sideMargin;
				numItemsForSizing = maximum_upvr;
			});
		})
	end
	-- KONSTANTERROR: [47] 34. Error Block 77 end (CF ANALYSIS FAILED)
end)