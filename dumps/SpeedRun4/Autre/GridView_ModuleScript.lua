-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:44
-- Luau version 6, Types version 3
-- Time taken: 0.023340 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local RoactGamepad_upvr = require(Parent_2.RoactGamepad)
local isCallable = require(Parent.Utility.isCallable)
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("GridView")
any_extend_result1_upvr.validateProps = t.strictInterface({
	renderItem = isCallable;
	itemSize = require(Parent.Utility.isPositiveVector2);
	itemPadding = t.Vector2;
	items = t.table;
	maxHeight = t.numberMin(0);
	windowHeight = t.optional(t.numberMin(0));
	LayoutOrder = t.optional(t.integer);
	onWidthChanged = t.optional(isCallable);
	onNumItemsPerRowChanged = t.optional(isCallable);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	frameRef = t.optional(t.table);
	restorePreviousChildFocus = t.optional(t.boolean);
	onFocusGained = t.optional(t.callback);
	defaultChildIndex = t.optional(t.numberMin(1));
})
function any_extend_result1_upvr.itemsAreVisible(arg1) -- Line 57
	local isInDataModel = arg1.state.isInDataModel
	if isInDataModel then
		isInDataModel = false
		if arg1.state.containerWidth ~= 0 then
			if arg1.props.itemSize.X == 0 then
				isInDataModel = false
			else
				isInDataModel = true
			end
		end
	end
	return isInDataModel
end
any_extend_result1_upvr.defaultProps = {
	maxHeight = math.huge;
	restorePreviousChildFocus = true;
}
function any_extend_result1_upvr.init(arg1) -- Line 70
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: RoactGamepad_upvr (readonly)
	]]
	arg1.currentItemsPerRow = -1
	arg1.frameRef = Roact_upvr.createRef()
	arg1.isMounted = false
	arg1.state = {
		containerWidth = 0;
		containerYPosition = 0;
		isInDataModel = false;
	}
	arg1.focusableRefs = RoactGamepad_upvr.createRefCache()
	function arg1.onAncestryChanged(arg1_2) -- Line 83
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_2:IsDescendantOf(game) then
			arg1:setState(function(arg1_3) -- Line 85
				--[[ Upvalues[1]:
					[1]: arg1_2 (readonly)
				]]
				if not arg1_3.isInDataModel or arg1_3.containerWidth ~= arg1_2.AbsoluteSize.X then
					return {
						isInDataModel = true;
						containerWidth = arg1_2.AbsoluteSize.X;
					}
				end
				return nil
			end)
		end
	end
end
local UIBloxConfig_upvr = require(Parent.UIBloxConfig)
function any_extend_result1_upvr.render(arg1) -- Line 98
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: RoactGamepad_upvr (readonly)
		[3]: UIBloxConfig_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local items_upvr_2 = arg1.props.items
	local len_2 = #items_upvr_2
	local itemSize_upvr_2 = arg1.props.itemSize
	local itemPadding = arg1.props.itemPadding
	local maxHeight = arg1.props.maxHeight
	local containerWidth_2 = arg1.state.containerWidth
	local defaultChildIndex = arg1.props.defaultChildIndex
	local onNumItemsPerRowChanged = arg1.props.onNumItemsPerRowChanged
	local module_3 = {}
	local var89_upvw = 0
	local floored_2_upvw = math.floor((containerWidth_2 + itemPadding.X) / math.max(1, itemSize_upvr_2.X + itemPadding.X))
	local var91_upvw
	if floored_2_upvw ~= arg1.currentItemsPerRow then
		arg1.currentItemsPerRow = floored_2_upvw
		if onNumItemsPerRowChanged then
			onNumItemsPerRowChanged(floored_2_upvw)
		end
	end
	local minimum_2 = math.min(math.floor((maxHeight + itemPadding.Y) / math.max(1, itemSize_upvr_2.Y + itemPadding.Y)), math.ceil(len_2 / floored_2_upvw))
	local var93 = minimum_2 * itemSize_upvr_2.Y + math.max(minimum_2 - 1, 0) * itemPadding.Y
	if arg1.props.windowHeight ~= nil then
		local floored = math.floor((arg1.state.containerYPosition + itemPadding.Y) / (itemSize_upvr_2.Y + itemPadding.Y))
		var91_upvw = math.max(1, floored * floored_2_upvw + 1)
		local minimum_upvw = math.min(len_2, (math.min(minimum_2, (floored) + (math.floor((arg1.props.windowHeight + itemPadding.Y) / (itemSize_upvr_2.Y + itemPadding.Y)) + 2)) + 1) * floored_2_upvw)
		local var96_upvw = floored * itemSize_upvr_2.Y + floored * itemPadding.Y
	end
	local function _(arg1_8, arg2) -- Line 148, Named "getItemIndexRef"
		--[[ Upvalues[4]:
			[1]: floored_2_upvw (read and write)
			[2]: var91_upvw (read and write)
			[3]: minimum_upvw (read and write)
			[4]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var97 = false
		local var98
		if 0 < arg1_8 then
			var97 = false
			if 0 < arg2 then
				if arg2 > floored_2_upvw then
					var97 = false
				else
					var97 = true
				end
			end
		end
		var98 = 1
		local var99 = (var98) + (((arg1_8 - 1) * floored_2_upvw) + (arg2 - 1))
		var98 = false
		if var91_upvw <= var99 then
			if var99 > minimum_upvw then
				var98 = false
			else
				var98 = true
			end
		end
		if not var98 or not var97 or not arg1.focusableRefs[var99] then
		end
		return nil
	end
	local function renderItem(arg1_9) -- Line 157
		--[[ Upvalues[11]:
			[1]: floored_2_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: RoactGamepad_upvr (copied, readonly)
			[5]: var89_upvw (read and write)
			[6]: var96_upvw (read and write)
			[7]: itemSize_upvr_2 (readonly)
			[8]: var91_upvw (read and write)
			[9]: minimum_upvw (read and write)
			[10]: items_upvr_2 (readonly)
			[11]: UIBloxConfig_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var100 = math.floor((arg1_9 - 1) / floored_2_upvw) + 1
		local var101 = 1 + (arg1_9 - 1) % floored_2_upvw
		local module_9 = {
			BackgroundTransparency = 1;
			Position = UDim2.new(0, var89_upvw, 0, var96_upvw);
			Size = UDim2.new(0, itemSize_upvr_2.X, 0, itemSize_upvr_2.Y);
		}
		local var103 = var101 - 1
		local var104 = false
		local var105
		if 0 < var100 then
			var104 = false
			if 0 < var103 then
				if var103 > floored_2_upvw then
					var104 = false
				else
					var104 = true
				end
			end
		end
		var105 = 1
		local var106 = (var105) + (((var100 - 1) * floored_2_upvw) + (var103 - 1))
		var105 = false
		if var91_upvw <= var106 then
			if var106 > minimum_upvw then
				var105 = false
			else
				var105 = true
			end
		end
		if not var105 or not var104 or not arg1.focusableRefs[var106] then
		end
		module_9.NextSelectionLeft = nil
		local var107 = var101 + 1
		if 0 < var100 then
			if 0 < var107 then
				if var107 > floored_2_upvw then
				else
				end
			end
		end
		var105 = 1
		local var108 = (var105) + (((var100 - 1) * floored_2_upvw) + (var107 - 1))
		var105 = false
		if var91_upvw <= var108 then
			if var108 > minimum_upvw then
				var105 = false
			else
				var105 = true
			end
		end
		if not var105 or not true or not arg1.focusableRefs[var108] then
		end
		module_9.NextSelectionRight = nil
		local var109 = var100 - 1
		if 0 < var109 then
			if 0 < var101 then
				if var101 > floored_2_upvw then
				else
				end
			end
		end
		var105 = 1
		local var110 = (var105) + (((var109 - 1) * floored_2_upvw) + (var101 - 1))
		var105 = false
		if var91_upvw <= var110 then
			if var110 > minimum_upvw then
				var105 = false
			else
				var105 = true
			end
		end
		if not var105 or not true or not arg1.focusableRefs[var110] then
		end
		module_9.NextSelectionUp = nil
		local var111 = var100 + 1
		if 0 < var111 then
			if 0 < var101 then
				if var101 > floored_2_upvw then
				else
				end
			end
		end
		var105 = 1
		local var112 = (var105) + (((var111 - 1) * floored_2_upvw) + (var101 - 1))
		var105 = false
		if var91_upvw <= var112 then
			if var112 > minimum_upvw then
				var105 = false
			else
				var105 = true
			end
		end
		if not var105 or not true or not arg1.focusableRefs[var112] then
		end
		module_9.NextSelectionDown = nil
		module_9[Roact_upvr.Ref] = arg1.focusableRefs[arg1_9]
		module_9.onFocusGained = arg1.props.onFocusGained
		local module_6 = {}
		if arg1:itemsAreVisible() then
			if UIBloxConfig_upvr.passRowAndColumnDataToItemInGridView then
				({}).row = var100
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({}).column = var101
			else
			end
		end
		module_6.Content = arg1.props.renderItem(items_upvr_2[arg1_9], arg1_9, nil)
		return Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, module_9, module_6)
	end
	if var93 < maxHeight then
		local var114 = defaultChildIndex
		if var114 then
			if defaultChildIndex > len_2 then
				var114 = false
			else
				var114 = true
			end
		end
		for i = var91_upvw, minimum_upvw do
			if i == defaultChildIndex then
			end
			module_3[tostring(i)] = renderItem(i)
			var89_upvw = math.floor(var89_upvw + itemSize_upvr_2.X + itemPadding.X)
			if containerWidth_2 < var89_upvw + itemSize_upvr_2.X and i < minimum_upvw then
				var89_upvw = 0
				var96_upvw = var96_upvw + itemPadding.Y + itemSize_upvr_2.Y
			end
		end
		if var114 and not true then
			i = itemSize_upvr_2.X
			var89_upvw = (defaultChildIndex - 1) % floored_2_upvw * (i + itemPadding.X)
			i = defaultChildIndex - 1
			i = itemPadding.Y
			var96_upvw = math.floor(i / floored_2_upvw) * (i + itemSize_upvr_2.Y)
			i = defaultChildIndex
			module_3[tostring(defaultChildIndex)] = renderItem(i)
		end
	end
	local module_4 = {
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.LayoutOrder;
		Size = UDim2.new(1, 0, 0, var93);
	}
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		return function(arg1_10) -- Line 231
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.isMounted then
				arg1:setState({
					containerYPosition = -math.min(0, arg1_10.AbsolutePosition.Y);
				})
			end
		end
	end
	if arg1.props.windowHeight == nil or not INLINED_6() then
	end
	module_4[Roact_upvr.Change.AbsolutePosition] = nil
	module_4[Roact_upvr.Change.AbsoluteSize] = function(arg1_11) -- Line 238
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.isMounted then
			if arg1.state.isInDataModel then
				arg1:setState({
					containerWidth = arg1_11.AbsoluteSize.X;
				})
			end
			if arg1.props.onWidthChanged ~= nil then
				arg1.props.onWidthChanged(arg1_11.AbsoluteSize.X)
			end
		end
	end
	module_4[Roact_upvr.Event.AncestryChanged] = arg1.onAncestryChanged
	module_4.NextSelectionLeft = arg1.props.NextSelectionLeft
	module_4.NextSelectionRight = arg1.props.NextSelectionRight
	module_4.NextSelectionUp = arg1.props.NextSelectionUp
	module_4.NextSelectionDown = arg1.props.NextSelectionDown
	local frameRef = arg1.props.frameRef
	if not frameRef then
		frameRef = arg1.frameRef
	end
	module_4[Roact_upvr.Ref] = frameRef
	if not defaultChildIndex or not arg1.focusableRefs[defaultChildIndex] then
	end
	module_4.defaultChild = nil
	module_4.restorePreviousChildFocus = arg1.props.restorePreviousChildFocus
	return Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, module_4, module_3)
end
function any_extend_result1_upvr.didMount(arg1) -- Line 267
	arg1.isMounted = true
	local var121_upvr
	if not var121_upvr then
		var121_upvr = arg1.frameRef
	end
	if var121_upvr:getValue() and var121_upvr:getValue().AbsoluteSize.X ~= 0 then
		if var121_upvr:getValue():IsDescendantOf(game) then
			arg1:setState(function(arg1_12) -- Line 277
				--[[ Upvalues[1]:
					[1]: var121_upvr (readonly)
				]]
				if var121_upvr:getValue() then
					return {
						isInDataModel = true;
						containerWidth = var121_upvr:getValue().AbsoluteSize.X;
					}
				end
				return nil
			end)
		end
		if arg1.props.onWidthChanged ~= nil then
			delay(0, function() -- Line 290
				--[[ Upvalues[2]:
					[1]: var121_upvr (readonly)
					[2]: arg1 (readonly)
				]]
				if var121_upvr:getValue() then
					arg1.props.onWidthChanged(var121_upvr:getValue().AbsoluteSize.X)
				end
			end)
		end
	end
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 299
	arg1.isMounted = false
end
local Cryo_upvr = require(Parent_2.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 303
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.frameRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)