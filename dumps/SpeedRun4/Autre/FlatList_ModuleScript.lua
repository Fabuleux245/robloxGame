-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:59
-- Luau version 6, Types version 3
-- Time taken: 0.008848 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local LuauPolyfill = require(Parent_2.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local tbl_4_upvr = {
	OS = "roblox";
}
local React_upvr = require(Parent_2.React)
local invariant_upvr = require(Parent.jsUtils.invariant)
local _ = Parent.Components.ScrollView
local keyExtractor_upvr = require(script.Parent.VirtualizeUtils).keyExtractor
local function _(arg1) -- Line 188, Named "removeClippedSubviewsOrDefault"
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	if arg1 ~= nil then
		return arg1
	end
	if tbl_4_upvr.OS ~= "android" then
	else
	end
	return true
end
local function _(arg1) -- Line 193, Named "numColumnsOrDefault"
	if arg1 ~= nil then
		return arg1
	end
	return 1
end
local any_extend_result1 = React_upvr.PureComponent:extend("FlatList")
local View_upvr = require(Parent.Components.View.View)
local StyleSheet_upvr = require(Parent.StyleSheet.StyleSheet)
function any_extend_result1.init(arg1, arg2) -- Line 382
	--[[ Upvalues[7]:
		[1]: keyExtractor_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: invariant_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: View_upvr (readonly)
		[6]: StyleSheet_upvr (readonly)
		[7]: Object_upvr (readonly)
	]]
	arg1._virtualizedListPairs = {}
	function arg1._captureRef(arg1_2) -- Line 384
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._listRef = arg1_2
	end
	function arg1._getItem(arg1_3, arg2_2) -- Line 388
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local numColumns = arg1.props.numColumns
		local var19
		if numColumns ~= nil then
			var19 = numColumns
		else
			var19 = 1
		end
		if 1 < var19 then
			for i = 1, var19 do
				local var20 = arg1_3[(arg2_2 - 1) * var19 + i]
				if var20 ~= nil then
					table.insert({}, var20)
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return {}
		end
		return arg1_3[arg2_2]
	end
	function arg1._getItemCount(arg1_4) -- Line 404
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_4 ~= nil then
			local numColumns_2 = arg1.props.numColumns
			if numColumns_2 ~= nil then
				local _ = numColumns_2
			else
			end
			if 1 < 1 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return math.ceil(#arg1_4 / 1)
			end
			return #arg1_4
		end
		return 0
	end
	function arg1._keyExtractor(arg1_5, arg2_3) -- Line 414
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: keyExtractor_upvr (copied, readonly)
			[3]: Array_upvr (copied, readonly)
			[4]: invariant_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local numColumns_3 = arg1.props.numColumns
		local var26_upvr
		if numColumns_3 ~= nil then
			var26_upvr = numColumns_3
		else
			var26_upvr = 1
		end
		if arg1.props.keyExtractor ~= nil then
		else
		end
		if 1 < var26_upvr then
			if Array_upvr.isArray(arg1_5) then
				return Array_upvr.join(Array_upvr.map(arg1_5, function(arg1_6, arg2_4) -- Line 421
					--[[ Upvalues[3]:
						[1]: keyExtractor_upvr (readonly)
						[2]: arg2_3 (readonly)
						[3]: var26_upvr (readonly)
					]]
					return keyExtractor_upvr(arg1_6, (arg2_3 - 1) * var26_upvr + arg2_4)
				end), ':')
			end
			invariant_upvr(Array_upvr.isArray(arg1_5), "FlatList: Encountered internal consistency error, expected each item to consist of an ".."array with 1-%s columns; instead, received a single item.", var26_upvr)
			return nil
		end
		return keyExtractor_upvr(arg1_5, arg2_3)
	end
	function arg1._renderer() -- Line 445
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: invariant_upvr (copied, readonly)
			[4]: Array_upvr (copied, readonly)
			[5]: View_upvr (copied, readonly)
			[6]: StyleSheet_upvr (copied, readonly)
			[7]: Object_upvr (copied, readonly)
		]]
		local ListItemComponent_upvr = arg1.props.ListItemComponent
		local renderItem_upvr = arg1.props.renderItem
		local props_2_upvr = arg1.props
		local var32
		if var32 ~= nil then
			props_2_upvr = var32
		else
			props_2_upvr = 1
		end
		if ListItemComponent_upvr then
			var32 = "ListItemComponent"
		else
			var32 = "renderItem"
		end
		local function renderer_upvr(arg1_7) -- Line 451, Named "renderer"
			--[[ Upvalues[3]:
				[1]: ListItemComponent_upvr (readonly)
				[2]: React_upvr (copied, readonly)
				[3]: renderItem_upvr (readonly)
			]]
			if ListItemComponent_upvr then
				return React_upvr.createElement(ListItemComponent_upvr, arg1_7)
			end
			if renderItem_upvr then
				return renderItem_upvr(arg1_7)
			end
			return nil
		end
		local module_2 = {}
		local columnWrapperStyle_upvr = props_2_upvr.columnWrapperStyle
		module_2[var32] = function(arg1_8) -- Line 468
			--[[ Upvalues[12]:
				[1]: props_2_upvr (readonly)
				[2]: React_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: invariant_upvr (copied, readonly)
				[5]: Array_upvr (copied, readonly)
				[6]: View_upvr (copied, readonly)
				[7]: StyleSheet_upvr (copied, readonly)
				[8]: columnWrapperStyle_upvr (readonly)
				[9]: Object_upvr (copied, readonly)
				[10]: ListItemComponent_upvr (readonly)
				[11]: renderItem_upvr (readonly)
				[12]: renderer_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local var36
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 4. Error Block 22 start (CF ANALYSIS FAILED)
			if arg1.props.horizontal then
				var36 = "UIListVerticalLayout"
			else
				var36 = "UIListHorizontalLayout"
			end
			;({}).key = var36
			if arg1.props.horizontal then
				var36 = "UIListVerticalLayout"
				-- KONSTANTWARNING: GOTO [29] #23
			end
			-- KONSTANTERROR: [4] 4. Error Block 22 end (CF ANALYSIS FAILED)
		end
		return module_2
	end
	arg1:_checkProps(arg1.props)
	if arg1.props.viewabilityConfigCallbackPairs then
		arg1._virtualizedListPairs = Array_upvr.map(arg1.props.viewabilityConfigCallbackPairs, function(arg1_9) -- Line 512
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return {
				viewabilityConfig = arg1_9.viewabilityConfig;
				onViewableItemsChanged = arg1:_createOnViewableItemsChanged(arg1_9.onViewableItemsChanged);
			}
		end)
	elseif arg1.props.onViewableItemsChanged then
		table.insert(arg1._virtualizedListPairs, {
			viewabilityConfig = arg1.props.viewabilityConfig;
			onViewableItemsChanged = arg1:_createOnViewableItemsChanged(arg1.props.onViewableItemsChanged);
		})
	end
end
function any_extend_result1.scrollToEnd(arg1, arg2) -- Line 530
	if arg1._listRef then
		arg1._listRef:scrollToEnd(arg2)
	end
end
function any_extend_result1.scrollToIndex(arg1, arg2) -- Line 546
	if arg1._listRef then
		arg1._listRef:scrollToIndex(arg2)
	end
end
function any_extend_result1.scrollToItem(arg1, arg2) -- Line 565
	if arg1._listRef then
		arg1._listRef:scrollToItem(arg2)
	end
end
function any_extend_result1.scrollToOffset(arg1, arg2) -- Line 580
	if arg1._listRef then
		arg1._listRef:scrollToOffset(arg2)
	end
end
function any_extend_result1.recordInteraction(arg1) -- Line 594
	if arg1._listRef then
		arg1._listRef:recordInteraction()
	end
end
function any_extend_result1.flashScrollIndicators(arg1) -- Line 605
	if arg1._listRef then
		arg1._listRef:flashScrollIndicators()
	end
end
function any_extend_result1.getScrollResponder(arg1) -- Line 614
	if arg1._listRef then
		return arg1._listRef:getScrollResponder()
	end
end
function any_extend_result1.getNativeScrollRef(arg1) -- Line 623
	if arg1._listRef then
		return arg1._listRef:getScrollRef()
	end
end
function any_extend_result1.getScrollableNode(arg1) -- Line 630
	if arg1._listRef then
		return arg1._listRef:getScrollableNode()
	end
end
function any_extend_result1.setNativeProps(arg1, arg2) -- Line 635
	if arg1._listRef then
		arg1._listRef:setNativeProps(arg2)
	end
end
local deepDiffer_upvr = require(Parent.Utilities.differ.deepDiffer)
function any_extend_result1.componentDidUpdate(arg1, arg2) -- Line 642
	--[[ Upvalues[2]:
		[1]: invariant_upvr (readonly)
		[2]: deepDiffer_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var41
	if arg2.numColumns ~= arg1.props.numColumns then
		var41 = false
	else
		var41 = true
	end
	invariant_upvr(var41, "Changing numColumns on the fly is not supported. Change the key prop on FlatList when ".."changing the number of columns to force a fresh render of the component.")
	if arg2.onViewableItemsChanged ~= arg1.props.onViewableItemsChanged then
		var41 = false
		-- KONSTANTWARNING: GOTO [26] #19
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 18. Error Block 22 start (CF ANALYSIS FAILED)
	var41 = true
	invariant_upvr(var41, "Changing onViewableItemsChanged on the fly is not supported")
	var41 = not deepDiffer_upvr(arg2.viewabilityConfig, arg1.props.viewabilityConfig)
	invariant_upvr(var41, "Changing viewabilityConfig on the fly is not supported")
	if arg2.viewabilityConfigCallbackPairs ~= arg1.props.viewabilityConfigCallbackPairs then
		var41 = false
	else
		var41 = true
	end
	invariant_upvr(var41, "Changing viewabilityConfigCallbackPairs on the fly is not supported")
	arg1:_checkProps(arg1.props)
	-- KONSTANTERROR: [25] 18. Error Block 22 end (CF ANALYSIS FAILED)
end
function any_extend_result1._checkProps(arg1, arg2) -- Line 664
	--[[ Upvalues[1]:
		[1]: invariant_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var43
	if arg1.props.numColumns ~= nil then
	else
	end
	var43 = not arg2.getItem
	if var43 then
		var43 = not arg2.getItemCount
	end
	invariant_upvr(var43, "FlatList does not support custom data formats.")
	if 1 < 1 then
		var43 = not arg2.horizontal
		invariant_upvr(var43, "numColumns does not support horizontal.")
	else
		var43 = not arg2.columnWrapperStyle
		invariant_upvr(var43, "columnWrapperStyle not supported for single column lists")
	end
	var43 = not (arg2.onViewableItemsChanged and arg2.viewabilityConfigCallbackPairs)
	invariant_upvr(var43, "FlatList does not support setting both onViewableItemsChanged and ".."viewabilityConfigCallbackPairs.")
end
function any_extend_result1._pushMultiColumnViewable(arg1, arg2, arg3) -- Line 684
	--[[ Upvalues[4]:
		[1]: keyExtractor_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: invariant_upvr (readonly)
		[4]: Object_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local numColumns_5 = arg1.props.numColumns
	local var45_upvr
	if numColumns_5 ~= nil then
		var45_upvr = numColumns_5
	else
		var45_upvr = 1
	end
	if arg1.props.keyExtractor ~= nil then
	else
	end
	Array_upvr.forEach(arg3.item, function(arg1_10, arg2_5) -- Line 687
		--[[ Upvalues[6]:
			[1]: invariant_upvr (copied, readonly)
			[2]: arg3 (readonly)
			[3]: var45_upvr (readonly)
			[4]: arg2 (readonly)
			[5]: Object_upvr (copied, readonly)
			[6]: keyExtractor_upvr (readonly)
		]]
		local var47
		if arg3.index == nil then
			var47 = false
		else
			var47 = true
		end
		invariant_upvr(var47, "Missing index!")
		var47 = (arg3.index - 1) * var45_upvr
		local var48 = var47 + arg2_5
		local tbl = {}
		tbl.item = arg1_10
		tbl.key = keyExtractor_upvr(arg1_10, var48)
		tbl.index = var48
		var47 = table.insert
		var47(arg2, Object_upvr.assign({}, arg3, tbl))
	end)
end
function any_extend_result1._createOnViewableItemsChanged(arg1, arg2) -- Line 693
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	return function(arg1_11) -- Line 701
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Array_upvr (copied, readonly)
		]]
		local numColumns_4 = arg1.props.numColumns
		local var52
		if numColumns_4 ~= nil then
			var52 = numColumns_4
		else
			var52 = 1
		end
		if arg2 ~= nil then
			if 1 < var52 then
				local tbl_2_upvr = {}
				local tbl_3_upvr = {}
				Array_upvr.forEach(arg1_11.viewableItems, function(arg1_12) -- Line 710
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: tbl_3_upvr (readonly)
					]]
					return arg1:_pushMultiColumnViewable(tbl_3_upvr, arg1_12)
				end)
				Array_upvr.forEach(arg1_11.changed, function(arg1_13) -- Line 713
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: tbl_2_upvr (readonly)
					]]
					return arg1:_pushMultiColumnViewable(tbl_2_upvr, arg1_13)
				end)
				arg2({
					viewableItems = tbl_3_upvr;
					changed = tbl_2_upvr;
				})
				return
			end
			tbl_2_upvr = arg2
			tbl_3_upvr = arg1_11
			tbl_2_upvr(tbl_3_upvr)
		end
	end
end
local VirtualizedList_upvr = require(Parent.Lists.VirtualizedList)
function any_extend_result1.render(arg1) -- Line 724
	--[[ Upvalues[4]:
		[1]: Object_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: VirtualizedList_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 12 start (CF ANALYSIS FAILED)
	local props = arg1.props
	local removeClippedSubviews = props.removeClippedSubviews
	local module = {
		getItem = arg1._getItem;
		getItemCount = arg1._getItemCount;
		keyExtractor = arg1._keyExtractor;
		ref = arg1._captureRef;
		viewabilityConfigCallbackPairs = arg1._virtualizedListPairs;
	}
	local var63
	if removeClippedSubviews ~= nil then
		var63 = removeClippedSubviews
		-- KONSTANTWARNING: GOTO [73] #46
	end
	-- KONSTANTERROR: [0] 1. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [66] 41. Error Block 13 start (CF ANALYSIS FAILED)
	if tbl_4_upvr.OS ~= "android" then
		var63 = false
	else
		var63 = true
	end
	module.removeClippedSubviews = var63
	var63 = arg1._renderer()
	do
		return React_upvr.createElement(VirtualizedList_upvr, Object_upvr.assign({}, Object_upvr.assign({}, props, {
			numColumns = Object_upvr.None;
			columnWrapperStyle = Object_upvr.None;
			removeClippedSubviews = Object_upvr.None;
		}), module, var63))
	end
	-- KONSTANTERROR: [66] 41. Error Block 13 end (CF ANALYSIS FAILED)
end
return any_extend_result1