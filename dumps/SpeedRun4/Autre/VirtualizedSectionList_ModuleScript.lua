-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:04
-- Luau version 6, Types version 3
-- Time taken: 0.012701 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local keyExtractor_2_upvr = require(script.Parent.VirtualizeUtils).keyExtractor
local React_upvr = require(Parent.React)
local any_extend_result1 = React_upvr.PureComponent:extend("VirtualizedSectionList")
local invariant_upvr = require(Parent_2.jsUtils.invariant)
local Array_upvr = LuauPolyfill.Array
local ItemWithSeparator_upvw
function any_extend_result1.init(arg1) -- Line 206
	--[[ Upvalues[7]:
		[1]: invariant_upvr (readonly)
		[2]: keyExtractor_2_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: Boolean_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: ItemWithSeparator_upvw (read and write)
	]]
	arg1._updateHighlightMap = {}
	arg1._updatePropsMap = {}
	arg1._listRef = nil
	function arg1._captureRef(arg1_2) -- Line 210
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._listRef = arg1_2
	end
	function arg1._keyExtractor(arg1_3, arg2) -- Line 214
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any__subExtractor_result1_6 = arg1:_subExtractor(arg2)
		if any__subExtractor_result1_6 then
			return any__subExtractor_result1_6.key
		end
		return tostring(arg2)
	end
	function arg1._convertViewable(arg1_4) -- Line 219
		--[[ Upvalues[4]:
			[1]: invariant_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: keyExtractor_2_upvr (copied, readonly)
			[4]: Object_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var16
		if arg1_4.index == nil then
			var16 = false
		else
			var16 = true
		end
		invariant_upvr(var16, "Received a broken ViewToken")
		local any__subExtractor_result1_3 = arg1:_subExtractor(arg1_4.index)
		if not any__subExtractor_result1_3 then
			var16 = nil
			return var16
		end
		local section = any__subExtractor_result1_3.section
		var16 = section.keyExtractor
		if arg1.props.keyExtractor then
			section = arg1.props.keyExtractor
		else
			section = keyExtractor_2_upvr
		end
		if var16 ~= nil then
			-- KONSTANTWARNING: GOTO [56] #40
		end
		if any__subExtractor_result1_3.index == nil then
		else
		end
		return Object_upvr.assign({}, arg1_4, {
			index = any__subExtractor_result1_3.index;
			key = section(arg1_4.item, any__subExtractor_result1_3.index);
			section = any__subExtractor_result1_3.section;
		})
	end
	function arg1._onViewableItemsChanged(arg1_5) -- Line 242
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Array_upvr (copied, readonly)
			[3]: Boolean_upvr (copied, readonly)
		]]
		local onViewableItemsChanged = arg1.props.onViewableItemsChanged
		if onViewableItemsChanged ~= nil then
			onViewableItemsChanged({
				viewableItems = Array_upvr.filter(Array_upvr.map(arg1_5.viewableItems, arg1._convertViewable, arg1), Boolean_upvr.toJSBoolean);
				changed = Array_upvr.filter(Array_upvr.map(arg1_5.changed, arg1._convertViewable, arg1), Boolean_upvr.toJSBoolean);
			})
		end
	end
	function arg1._renderItem(arg1_6) -- Line 259
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Boolean_upvr (copied, readonly)
			[3]: invariant_upvr (copied, readonly)
			[4]: React_upvr (copied, readonly)
			[5]: ItemWithSeparator_upvw (copied, read and write)
		]]
		return function(arg1_7) -- Line 260
			--[[ Upvalues[6]:
				[1]: arg1 (copied, readonly)
				[2]: Boolean_upvr (copied, readonly)
				[3]: arg1_6 (readonly)
				[4]: invariant_upvr (copied, readonly)
				[5]: React_upvr (copied, readonly)
				[6]: ItemWithSeparator_upvw (copied, read and write)
			]]
			local index = arg1_7.index
			local any__subExtractor_result1 = arg1:_subExtractor(index)
			if not any__subExtractor_result1 then
				return nil
			end
			local index_2 = any__subExtractor_result1.index
			if index_2 == nil then
				if any__subExtractor_result1.header == true then
					local renderSectionHeader = arg1.props.renderSectionHeader
					if Boolean_upvr.toJSBoolean(renderSectionHeader) then
						return renderSectionHeader({
							section = any__subExtractor_result1.section;
						})
					end
					return nil
				end
				local renderSectionFooter = arg1.props.renderSectionFooter
				if Boolean_upvr.toJSBoolean(renderSectionFooter) then
					local module_3 = {}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					module_3.section = any__subExtractor_result1.section
					return renderSectionFooter(module_3)
				end
				return nil
			end
			local renderItem = any__subExtractor_result1.section.renderItem
			if not renderItem then
				renderItem = arg1.props.renderItem
			end
			local var33 = arg1_6
			invariant_upvr(renderItem, "no renderItem!")
			local module_5 = {
				SeparatorComponent = arg1:_getSeparatorComponent(index, any__subExtractor_result1, var33);
			}
			if index_2 == 1 then
				var33 = arg1.props.SectionSeparatorComponent
			else
				var33 = nil
			end
			module_5.LeadingSeparatorComponent = var33
			module_5.cellKey = any__subExtractor_result1.key
			module_5.index = index_2
			module_5.item = arg1_7.item
			module_5.leadingItem = any__subExtractor_result1.leadingItem
			module_5.leadingSection = any__subExtractor_result1.leadingSection
			local any__subExtractor_result1_4 = arg1:_subExtractor(index - 1)
			if not any__subExtractor_result1_4 then
				any__subExtractor_result1_4 = {}
			end
			module_5.prevCellKey = any__subExtractor_result1_4.key
			module_5.setSelfHighlightCallback = arg1._setUpdateHighlightFor
			module_5.setSelfUpdatePropsCallback = arg1._setUpdatePropsFor
			module_5.updateHighlightFor = arg1._updateHighlightFor
			module_5.updatePropsFor = arg1._updatePropsFor
			module_5.renderItem = renderItem
			module_5.section = any__subExtractor_result1.section
			module_5.trailingItem = any__subExtractor_result1.trailingItem
			module_5.trailingSection = any__subExtractor_result1.trailingSection
			module_5.inverted = Boolean_upvr.toJSBoolean(arg1.props.inverted)
			module_5.horizontal = arg1.props.horizontal
			return React_upvr.createElement(ItemWithSeparator_upvw, module_5)
		end
	end
	function arg1._updatePropsFor(arg1_8, arg2) -- Line 312
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var37 = arg1._updatePropsMap[arg1_8]
		if var37 ~= nil then
			var37(arg2)
		end
	end
	function arg1._updateHighlightFor(arg1_9, arg2) -- Line 319
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var39 = arg1._updateHighlightMap[arg1_9]
		if var39 ~= nil then
			var39(arg2)
		end
	end
	function arg1._setUpdateHighlightFor(arg1_10, arg2) -- Line 326
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 ~= nil then
			arg1._updateHighlightMap[arg1_10] = arg2
		else
			arg1._updateHighlightMap[arg1_10] = nil
		end
	end
	function arg1._setUpdatePropsFor(arg1_11, arg2) -- Line 334
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 ~= nil then
			arg1._updatePropsMap[arg1_11] = arg2
		else
			arg1._updatePropsMap[arg1_11] = nil
		end
	end
end
function any_extend_result1.scrollToLocation(arg1, arg2) -- Line 343
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	local const_number_3 = 1
	local var43
	while const_number_3 < arg2.sectionIndex do
		var43 += arg1.props.getItemCount(arg1.props.sections[const_number_3].data) + 2
	end
	if arg1._listRef == nil then
	else
		local var44
		if 1 < arg2.itemIndex and arg1.props.stickySectionHeadersEnabled then
			var44 += arg1._listRef.__getFrameMetricsApprox(var43 - arg2.itemIndex).length
		end
		arg1._listRef:scrollToIndex(Object_upvr.assign({}, arg2, {
			viewOffset = var44;
			index = var43;
		}))
	end
end
function any_extend_result1.getListRef(arg1) -- Line 365
	return arg1._listRef
end
local VirtualizedList_upvr = require(script.Parent.VirtualizedList)
function any_extend_result1.render(arg1) -- Line 369
	--[[ Upvalues[3]:
		[1]: Object_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: VirtualizedList_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	local var56
	if arg1.props.ListHeaderComponent then
		var56 = 1
	else
		var56 = 0
	end
	if arg1.props.stickySectionHeadersEnabled then
		-- KONSTANTWARNING: GOTO [69] #44
	end
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [68] 43. Error Block 30 start (CF ANALYSIS FAILED)
	local var57
	local const_number_2 = 0
	for _, v in ipairs(arg1.props.sections) do
		if var57 ~= nil then
			table.insert(var57, const_number_2 + var56)
		end
		local var62_upvw = const_number_2 + 2 + arg1.props.getItemCount(v.data)
	end
	local module_2 = {
		keyExtractor = arg1._keyExtractor;
		stickyHeaderIndices = var57;
		renderItem = arg1._renderItem(var62_upvw);
		data = arg1.props.sections;
		getItem = function(arg1_12, arg2) -- Line 406, Named "getItem"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1:_getItem(arg1.props, arg1_12, arg2)
		end;
		getItemCount = function() -- Line 409, Named "getItemCount"
			--[[ Upvalues[1]:
				[1]: var62_upvw (read and write)
			]]
			return var62_upvw
		end;
	}
	if arg1.props.onViewableItemsChanged then
	else
	end
	module_2.onViewableItemsChanged = nil
	module_2.ref = arg1._captureRef
	do
		return React_upvr.createElement(VirtualizedList_upvr, Object_upvr.assign({}, Object_upvr.assign({}, arg1.props, {
			ItemSeparatorComponent = Object_upvr.None;
			SectionSeparatorComponent = Object_upvr.None;
			renderItem = Object_upvr.None;
			renderSectionFooter = Object_upvr.None;
			renderSectionHeader = Object_upvr.None;
			sections = Object_upvr.None;
			stickySectionHeadersEnabled = Object_upvr.None;
		}), module_2))
	end
	-- KONSTANTERROR: [68] 43. Error Block 30 end (CF ANALYSIS FAILED)
end
function any_extend_result1._getItem(arg1, arg2, arg3, arg4) -- Line 418
	if not arg3 then
		return nil
	end
	local var64 = arg4 - 1
	local const_number = 1
	while const_number <= #arg3 do
		local var66 = arg3[const_number]
		local data = var66.data
		local any_getItemCount_result1 = arg2.getItemCount(data)
		if var64 == 0 or var64 == any_getItemCount_result1 + 1 then
			return var66
		end
		if var64 <= any_getItemCount_result1 then
			return arg2.getItem(data, var64)
		end
	end
	return nil
end
function any_extend_result1._subExtractor(arg1, arg2) -- Line 449
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: keyExtractor_2_upvr (readonly)
	]]
	local props = arg1.props
	local getItem_2 = props.getItem
	local getItemCount = props.getItemCount
	local sections_2 = props.sections
	local var86 = 1
	while true do
		local var87
		if var86 > #sections_2 then break end
		local var88 = sections_2[var86]
		local data_2 = var88.data
		if Boolean_upvr.toJSBoolean(var88.key) then
			var87 = tostring(var88.key)
		else
			var87 = tostring(var86)
		end
		local var90 = arg2 - 1
		if getItemCount(data_2) + 1 < var90 then
		else
			if (var90) - (getItemCount(data_2) + 1) == 0 then
				return {
					section = var88;
					key = var87..":header";
					index = nil;
					header = true;
					trailingSection = sections_2[var86 + 1];
				}
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if (var90) - (getItemCount(data_2) + 1) == getItemCount(data_2) + 1 then
				local tbl_2 = {
					section = var88;
					key = var87..":footer";
					index = nil;
					header = false;
					trailingSection = sections_2[var86 + 1];
				}
				return tbl_2
			end
			tbl_2 = var88.keyExtractor
			local var93 = tbl_2
			if not var93 then
				var93 = props.keyExtractor
				if not var93 then
					var93 = keyExtractor_2_upvr
				end
			end
			local module = {
				section = var88;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			module.key = var87..':'..tostring(var93(getItem_2(data_2, (var90) - (getItemCount(data_2) + 1)), (var90) - (getItemCount(data_2) + 1)))
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module.index = (var90) - (getItemCount(data_2) + 1)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module.leadingItem = getItem_2(data_2, (var90) - (getItemCount(data_2) + 1) - 1)
			module.leadingSection = sections_2[var86 - 1]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module.trailingItem = getItem_2(data_2, (var90) - (getItemCount(data_2) + 1) + 1)
			module.trailingSection = sections_2[var86 + 1]
			return module
		end
	end
	return nil
end
function any_extend_result1._getSeparatorComponent(arg1, arg2, arg3, arg4) -- Line 511
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if arg3 then
	else
		local any__subExtractor_result1_5 = arg1:_subExtractor(arg2)
	end
	if not any__subExtractor_result1_5 then
		return nil
	end
	local var100 = any__subExtractor_result1_5
	if not Boolean_upvr.toJSBoolean(var100.section.ItemSeparatorComponent) or not var100.section.ItemSeparatorComponent then
		local ItemSeparatorComponent = arg1.props.ItemSeparatorComponent
	end
	local SectionSeparatorComponent_2 = arg1.props.SectionSeparatorComponent
	if arg2 ~= arg4 then
	else
	end
	if var100.index ~= arg1.props.getItemCount(var100.section.data) then
	else
	end
	if SectionSeparatorComponent_2 and true then
		return SectionSeparatorComponent_2
	end
	if ItemSeparatorComponent then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not true and not true then
			return ItemSeparatorComponent
		end
	end
	return nil
end
local View_upvr = require(Parent_2.Components.View.View)
function ItemWithSeparator_upvw(arg1) -- Line 563, Named "ItemWithSeparator"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: View_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local LeadingSeparatorComponent_upvr = arg1.LeadingSeparatorComponent
	local SeparatorComponent_upvr = arg1.SeparatorComponent
	local cellKey_upvr = arg1.cellKey
	local prevCellKey_upvr = arg1.prevCellKey
	local setSelfHighlightCallback_upvr = arg1.setSelfHighlightCallback
	local updateHighlightFor_upvr = arg1.updateHighlightFor
	local setSelfUpdatePropsCallback_upvr = arg1.setSelfUpdatePropsCallback
	local any_useState_result1, any_useState_result2_upvr_4 = React_upvr.useState(false)
	local _, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_upvr, any_useState_result2_upvr_3 = React_upvr.useState({
		leadingItem = arg1.leadingItem;
		leadingSection = arg1.leadingSection;
		section = arg1.section;
		trailingItem = arg1.item;
		trailingSection = arg1.trailingSection;
		LayoutOrder = -1;
	})
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState({
		leadingItem = arg1.item;
		leadingSection = arg1.leadingSection;
		section = arg1.section;
		trailingItem = arg1.trailingItem;
		trailingSection = arg1.trailingSection;
		LayoutOrder = 1;
	})
	React_upvr.useEffect(function() -- Line 601
		--[[ Upvalues[5]:
			[1]: setSelfHighlightCallback_upvr (readonly)
			[2]: cellKey_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: setSelfUpdatePropsCallback_upvr (readonly)
			[5]: any_useState_result2_upvr_2 (readonly)
		]]
		setSelfHighlightCallback_upvr(cellKey_upvr, any_useState_result2_upvr)
		setSelfUpdatePropsCallback_upvr(cellKey_upvr, any_useState_result2_upvr_2)
		return function() -- Line 604
			--[[ Upvalues[3]:
				[1]: setSelfUpdatePropsCallback_upvr (copied, readonly)
				[2]: cellKey_upvr (copied, readonly)
				[3]: setSelfHighlightCallback_upvr (copied, readonly)
			]]
			setSelfUpdatePropsCallback_upvr(cellKey_upvr, nil)
			setSelfHighlightCallback_upvr(cellKey_upvr, nil)
		end
	end, {cellKey_upvr, setSelfHighlightCallback_upvr, any_useState_result2_upvr_2, setSelfUpdatePropsCallback_upvr})
	local tbl = {
		highlight = function() -- Line 611, Named "highlight"
			--[[ Upvalues[4]:
				[1]: any_useState_result2_upvr_4 (readonly)
				[2]: any_useState_result2_upvr (readonly)
				[3]: prevCellKey_upvr (readonly)
				[4]: updateHighlightFor_upvr (readonly)
			]]
			any_useState_result2_upvr_4(true)
			any_useState_result2_upvr(true)
			if prevCellKey_upvr ~= nil then
				updateHighlightFor_upvr(prevCellKey_upvr, true)
			end
		end;
		unhighlight = function() -- Line 618, Named "unhighlight"
			--[[ Upvalues[4]:
				[1]: any_useState_result2_upvr_4 (readonly)
				[2]: any_useState_result2_upvr (readonly)
				[3]: prevCellKey_upvr (readonly)
				[4]: updateHighlightFor_upvr (readonly)
			]]
			any_useState_result2_upvr_4(false)
			any_useState_result2_upvr(false)
			if prevCellKey_upvr ~= nil then
				updateHighlightFor_upvr(prevCellKey_upvr, false)
			end
		end;
	}
	local updatePropsFor_upvr = arg1.updatePropsFor
	function tbl.updateProps(arg1_13, arg2) -- Line 625
		--[[ Upvalues[9]:
			[1]: LeadingSeparatorComponent_upvr (readonly)
			[2]: any_useState_result2_upvr_3 (readonly)
			[3]: Object_upvr (copied, readonly)
			[4]: any_useState_result1_upvr (readonly)
			[5]: prevCellKey_upvr (readonly)
			[6]: updatePropsFor_upvr (readonly)
			[7]: SeparatorComponent_upvr (readonly)
			[8]: any_useState_result2_upvr_2 (readonly)
			[9]: any_useState_result1_upvr_2 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 15. Error Block 5 start (CF ANALYSIS FAILED)
		updatePropsFor_upvr(prevCellKey_upvr, Object_upvr.assign({}, any_useState_result1_upvr, arg2))
		do
			return
		end
		-- KONSTANTERROR: [19] 15. Error Block 5 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 25. Error Block 10 start (CF ANALYSIS FAILED)
		if arg1_13 == "trailing" and SeparatorComponent_upvr ~= nil then
			any_useState_result2_upvr_2(Object_upvr.assign({}, any_useState_result1_upvr_2, arg2))
		end
		-- KONSTANTERROR: [31] 25. Error Block 10 end (CF ANALYSIS FAILED)
	end
	local _ = {
		item = arg1.item;
		index = arg1.index;
		section = arg1.section;
		separators = tbl;
	}
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [150] 101. Error Block 2 start (CF ANALYSIS FAILED)
	local _ = {
		highlighted = any_useState_result1;
	}
	-- KONSTANTERROR: [150] 101. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [163] 111. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [163] 111. Error Block 3 end (CF ANALYSIS FAILED)
end
return any_extend_result1