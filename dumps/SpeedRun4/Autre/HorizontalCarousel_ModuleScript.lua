-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:07
-- Luau version 6, Types version 3
-- Time taken: 0.005775 seconds

local Parent_3 = script.Parent
local Parent_4 = Parent_3.Parent.Parent
local Parent_2 = Parent_4.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local Images = require(Parent_4.ImageSet.Images)
local Promise_upvr = require(Parent.Promise)
local any_extend_result1 = Roact_upvr.PureComponent:extend("HorizontalCarousel")
any_extend_result1.validateProps = t.strictInterface({
	itemList = t.array(t.any);
	renderItem = t.callback;
	identifier = t.optional(t.callback);
	itemSize = t.optional(t.Vector2);
	itemPadding = t.optional(t.number);
	carouselMargin = t.optional(t.number);
	layoutOrder = t.optional(t.integer);
	loadNext = t.optional(t.callback);
	loadPrevious = t.optional(t.callback);
	animateScrolling = t.optional(t.boolean);
	maxNumOfItemsVisible = t.optional(t.integer);
	onContentSizeChange = t.optional(t.callback);
	viewabilityConfigCallbackPairs = t.optional(t.array(t.strictInterface({
		viewabilityConfig = t.strictInterface({
			minimumViewTime = t.optional(t.number);
			viewAreaCoveragePercentThreshold = t.optional(t.number);
			itemVisiblePercentThreshold = t.optional(t.number);
			waitForInteraction = t.optional(t.boolean);
		});
		onViewableItemsChanged = require(Parent_2.Utility.isCallable);
	})));
})
any_extend_result1.defaultProps = {
	itemSize = Vector2.new(1, 1);
	itemPadding = 12;
	maxNumOfItemsVisible = 0;
}
local function updateScrollState_upvr(arg1, arg2, arg3, arg4) -- Line 119, Named "updateScrollState"
	if arg1 == nil then
		return {}
	end
	if arg3 == nil or arg3 == 0 then
		local tbl = {
			showLeftButton = false;
			showRightButton = false;
		}
		return tbl
	end
	tbl = arg1
	local var15 = tbl
	local var16 = true
	if var15 <= 1 then
		var15 = 1
		var16 = false
	elseif arg3 < var15 then
		var15 = arg3
	end
	if arg3 < var15 + arg2 then
	end
	local module_2 = {
		index = var15;
		showLeftButton = var16;
		showRightButton = false;
	}
	module_2.numOfItems = arg3
	return module_2
end
local function _(arg1) -- Line 165
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	if not arg1 then
		return nil
	end
	if not Promise_upvr.is(arg1) or not arg1 then
	end
	return Promise_upvr.promisify(arg1)
end
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 172
	--[[ Upvalues[1]:
		[1]: updateScrollState_upvr (readonly)
	]]
	local len = #arg1.itemList
	if arg2.numOfItems ~= len then
		return updateScrollState_upvr(arg2.index, arg2.maxNumOfItemsVisible, len)
	end
	return nil
end
local LuauPolyfill_upvr = require(Parent.LuauPolyfill)
function any_extend_result1.init(arg1) -- Line 180
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: LuauPolyfill_upvr (readonly)
		[3]: updateScrollState_upvr (readonly)
	]]
	arg1.frameRef = Roact_upvr.createRef()
	arg1.listRef = Roact_upvr.createRef()
	local tbl_upvw = {
		anchorIndex = 1;
	}
	arg1:setState({
		index = 1;
		hovering = false;
		showLeftButton = false;
		showRightButton = false;
		maxNumOfItemsVisible = arg1.props.maxNumOfItemsVisible;
		numOfItems = 0;
	})
	function arg1.onMouseEnter(arg1_2, arg2) -- Line 197
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: tbl_upvw (read and write)
			[3]: LuauPolyfill_upvr (copied, readonly)
			[4]: updateScrollState_upvr (copied, readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseMovement then
			arg1:setState(function(arg1_3) -- Line 199
				--[[ Upvalues[3]:
					[1]: tbl_upvw (copied, read and write)
					[2]: LuauPolyfill_upvr (copied, readonly)
					[3]: updateScrollState_upvr (copied, readonly)
				]]
				return LuauPolyfill_upvr.Object.assign(updateScrollState_upvr(tbl_upvw.anchorIndex, arg1_3.maxNumOfItemsVisible, arg1_3.numOfItems), {
					hovering = true;
				})
			end)
		end
	end
	function arg1.onMouseLeave(arg1_4, arg2) -- Line 209
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseMovement then
			arg1:setState({
				hovering = false;
			})
		end
	end
	function arg1.onResize(arg1_5) -- Line 217
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local X_upvr = arg1_5.AbsoluteSize.X
		arg1:setState(function(arg1_6, arg2) -- Line 219
			--[[ Upvalues[1]:
				[1]: X_upvr (readonly)
			]]
			return {
				maxNumOfItemsVisible = math.floor(X_upvr / (arg2.itemSize.X + arg2.itemPadding));
			}
		end)
	end
	function arg1.onScrollUpdate(arg1_7) -- Line 225
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: tbl_upvw (read and write)
		]]
		local var33
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var33 = arg1_7.CanvasPosition.X
			return var33
		end
		if 0 >= arg1_7.CanvasPosition.X or not INLINED() then
			var33 = 0
		end
		tbl_upvw = {
			anchorIndex = math.floor(var33 / (arg1.props.itemSize.X + arg1.props.itemPadding)) + 1;
			animationActive = false;
		}
	end
	function arg1.scrollLeft() -- Line 237
		--[[ Upvalues[3]:
			[1]: tbl_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: updateScrollState_upvr (copied, readonly)
		]]
		if tbl_upvw.animationActive then
		else
			arg1:setState(function(arg1_8, arg2) -- Line 241
				--[[ Upvalues[3]:
					[1]: tbl_upvw (copied, read and write)
					[2]: arg1 (copied, readonly)
					[3]: updateScrollState_upvr (copied, readonly)
				]]
				local var37 = tbl_upvw.anchorIndex - arg1_8.maxNumOfItemsVisible
				local var38
				if arg1.listRef then
					local tbl_2 = {}
					var38 = true
					tbl_2.animated = var38
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var38 = var37
						return var38
					end
					if 1 >= var37 or not INLINED_2() then
						var38 = 1
					end
					tbl_2.index = var38
					var38 = arg2.itemSize.X + arg2.itemPadding
					tbl_2.viewOffset = var38
					arg1.listRef.current:scrollToIndex(tbl_2)
				end
				return updateScrollState_upvr(var37, arg1_8.maxNumOfItemsVisible, arg1_8.numOfItems)
			end)
		end
	end
	function arg1.scrollRight() -- Line 254
		--[[ Upvalues[3]:
			[1]: tbl_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: updateScrollState_upvr (copied, readonly)
		]]
		if tbl_upvw.animationActive then
		else
			arg1:setState(function(arg1_9, arg2) -- Line 258
				--[[ Upvalues[3]:
					[1]: tbl_upvw (copied, read and write)
					[2]: arg1 (copied, readonly)
					[3]: updateScrollState_upvr (copied, readonly)
				]]
				local var42 = tbl_upvw.anchorIndex + arg1_9.maxNumOfItemsVisible
				if arg1.listRef then
					arg1.listRef.current:scrollToIndex({
						animated = true;
						index = var42;
						viewOffset = arg2.itemSize.X + arg2.itemPadding;
					})
				end
				return updateScrollState_upvr(var42, arg1_9.maxNumOfItemsVisible, arg1_9.numOfItems)
			end)
		end
	end
	function arg1.proxyKeyExtractor(arg1_10, arg2) -- Line 271
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local props_2 = arg1.props
		if props_2.identifier then
			return props_2.identifier(arg1_10, arg2)
		end
		return nil
	end
	function arg1.proxyRenderItem(arg1_11) -- Line 276
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.props.renderItem(arg1_11.item)
	end
	function arg1.getItemLayout(arg1_12, arg2) -- Line 281
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local props = arg1.props
		local var49 = props.itemSize.X + (props.itemPadding or 0)
		local var50 = var49 * (arg2 - 1)
		if arg2 == #arg1_12 then
			var50 = props.itemSize.X
		else
			var50 = var49
		end
		local module = {
			length = var50;
			offset = var50 + (props.carouselMargin or 0);
		}
		module.index = arg2
		return module
	end
end
local ScrollButton_upvr = require(Parent_3.ScrollButton)
local icons_actions_cycleLeft_upvr = Images["icons/actions/cycleLeft"]
local icons_actions_cycleRight_upvr = Images["icons/actions/cycleRight"]
local BidirectionalFlatList_upvr = require(Parent.VirtualizedList).BidirectionalFlatList
function any_extend_result1.render(arg1) -- Line 295
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: ScrollButton_upvr (readonly)
		[3]: icons_actions_cycleLeft_upvr (readonly)
		[4]: icons_actions_cycleRight_upvr (readonly)
		[5]: BidirectionalFlatList_upvr (readonly)
		[6]: Promise_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local props_3 = arg1.props
	local state = arg1.state
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 13. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 13. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 15. Error Block 3 start (CF ANALYSIS FAILED)
	local _ = {
		icon = icons_actions_cycleLeft_upvr;
		callback = arg1.scrollLeft;
	}
	-- KONSTANTERROR: [25] 15. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 25. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 25. Error Block 4 end (CF ANALYSIS FAILED)
end
return any_extend_result1