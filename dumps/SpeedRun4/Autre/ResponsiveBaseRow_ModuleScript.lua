-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:09
-- Luau version 6, Types version 3
-- Time taken: 0.008120 seconds

local Parent = script.Parent
local Parent_2 = Parent.Parent.Parent.Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local Object_upvr = require(Parent_2.LuauPolyfill).Object
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ResponsiveBaseRow")
local function multilineScrollingValidator_upvr(arg1) -- Line 16, Named "multilineScrollingValidator"
	if arg1.multiLine and arg1.scrollable then
		return false, "multiLine can't be scrollable"
	end
	return true
end
any_extend_result1_upvr.validateProps = t.strictInterface({
	kind = t.optional(t.string);
	layoutOrder = t.optional(t.integer);
	zIndex = t.optional(t.number);
	scrollable = t.optional(t.boolean);
	clipsDescendants = t.optional(t.boolean);
	selectable = t.optional(t.boolean);
	pages = t.optional(t.numberPositive);
	multiLine = t.optional(t.boolean);
	lines = t.optional(t.intersection(t.integer, t.numberMin(0)));
	paddingTopLines = t.optional(t.intersection(t.integer, t.numberMin(0)));
	relativeHeight = t.optional(t.UDim);
	scrollingFrameRef = t.optional(t.table);
	[Roact_upvr.Children] = t.optional(t.table);
	gridBasicRowRef = t.optional(t.union(t.table, t.callback));
})
any_extend_result1_upvr.defaultProps = {
	kind = "default";
	scrollable = false;
	selectable = false;
	clipsDescendants = true;
	multiLine = false;
}
function any_extend_result1_upvr.renderChildrenWithPadding(arg1, arg2, arg3) -- Line 64
	--[[ Upvalues[2]:
		[1]: Object_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	local var9 = arg1.props.lines or 1
	local var10 = arg1.props.paddingTopLines or 0
	local module = {}
	local tbl_6 = {
		PaddingLeft = UDim.new(0, arg2);
	}
	local udim = UDim.new(0, arg2)
	tbl_6.PaddingRight = udim
	if arg1.props.multiLine and 0 < var10 and 0 < var9 then
		udim = UDim.new(var10 / var9, var10 / var9 * arg3)
	else
		udim = nil
	end
	tbl_6.PaddingTop = udim
	module._uiblox_grid_padding_ = Roact_upvr.createElement("UIPadding", tbl_6)
	udim = Roact_upvr
	return Object_upvr.assign(module, arg1.props[udim.Children])
end
function any_extend_result1_upvr.renderChildrenMultiline(arg1, arg2, arg3, arg4, arg5) -- Line 80
	--[[ Upvalues[2]:
		[1]: Object_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	local var14 = arg1.props.lines or 1
	if arg1.props.paddingTopLines then
		var14 -= arg1.props.paddingTopLines
	end
	local maximum = math.max(var14, 1)
	local module_4 = {}
	local tbl_5 = {
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
	}
	tbl_5.FillDirectionMaxCells = arg2
	tbl_5.CellSize = UDim2.new(1 / arg2, math.floor((1 - arg2) / arg2 * arg4), 1 / maximum, math.floor((1 - maximum) / maximum * arg5))
	tbl_5.CellPadding = UDim2.fromOffset(arg4, arg5)
	module_4._uiblox_grid_layout_ = Roact_upvr.createElement("UIGridLayout", tbl_5)
	return Object_upvr.assign(module_4, arg1:renderChildrenWithPadding(arg3, arg5))
end
function any_extend_result1_upvr.renderChildren(arg1, arg2, arg3, arg4, arg5) -- Line 102
	--[[ Upvalues[2]:
		[1]: Object_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	local any_assign_result1_2 = Object_upvr.assign({
		_uiblox_grid_layout_ = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, arg4);
		});
	}, arg1:renderChildrenWithPadding(arg3, arg5))
	local var21
	if arg2 then
		local var22 = arg1.props.pages or 1
		local module_6 = {}
		local tbl_2 = {}
		var21 = UDim2.fromScale(1, 1)
		tbl_2.Size = var21
		var21 = 1
		tbl_2.BackgroundTransparency = var21
		var21 = Enum.ScrollingDirection.X
		tbl_2.ScrollingDirection = var21
		var21 = 0
		tbl_2.ScrollBarThickness = var21
		var21 = UDim2.new(var22, (var22 - 1) * (arg4 - 2 * arg3), 1, 0)
		tbl_2.CanvasSize = var21
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var21 = Enum.AutomaticSize.None
			return var21
		end
		if not arg1.props.pages or not INLINED() then
			var21 = Enum.AutomaticSize.X
		end
		tbl_2.AutomaticCanvasSize = var21
		var21 = arg1.props.selectable
		tbl_2.Selectable = var21
		var21 = arg1.props.clipsDescendants
		tbl_2.ClipsDescendants = var21
		var21 = Roact_upvr.Ref
		tbl_2[var21] = arg1.props.scrollingFrameRef
		var21 = any_assign_result1_2
		module_6.ResponsiveRowScroller = Roact_upvr.createElement("ScrollingFrame", tbl_2, var21)
		return module_6
	end
	return any_assign_result1_2
end
local function _(arg1, arg2) -- Line 136, Named "applyUDim"
	return arg1.Scale * arg2 + arg1.Offset
end
function any_extend_result1_upvr.getSize(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 141
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg2 == nil then
		return UDim2.fromScale(1, 0)
	end
	local var25
	if arg1.props.multiLine and arg1.props.lines then
		if arg1.props.lines == 0 then
			return UDim2.fromScale(1, 0)
		end
		var25 *= arg1.props.lines
	end
	return UDim2.new(1, 0, var25, (arg2.Scale * ((arg3 - 2 * arg5) / arg6 - arg3) + arg2.Offset) * arg1.props.lines + (arg1.props.lines - 1) * arg4)
end
local ResponsiveLayoutContext_upvr = require(Parent.ResponsiveLayoutContext)
local ResponsiveLayoutConfigReader_upvr = require(Parent.ResponsiveLayoutConfigReader)
local function render(arg1) -- Line 165
	--[[ Upvalues[5]:
		[1]: multilineScrollingValidator_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ResponsiveLayoutContext_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: ResponsiveLayoutConfigReader_upvr (readonly)
	]]
	assert(multilineScrollingValidator_upvr(arg1.props))
	local props_upvr = arg1.props
	if arg1.props.layoutOrder then
		props_upvr = string.format("ResponsiveRow%02d", arg1.props.layoutOrder)
	else
		props_upvr = "ResponsiveRow"
	end
	local module_3 = {}
	local scrollable_upvr = arg1.props.scrollable
	local multiLine_upvr = props_upvr.multiLine
	local relativeHeight_upvw = arg1.props.relativeHeight
	function module_3.render(arg1_2) -- Line 174
		--[[ Upvalues[9]:
			[1]: Object_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: scrollable_upvr (readonly)
			[4]: multiLine_upvr (readonly)
			[5]: relativeHeight_upvw (read and write)
			[6]: ResponsiveLayoutConfigReader_upvr (copied, readonly)
			[7]: Roact_upvr (copied, readonly)
			[8]: ResponsiveLayoutContext_upvr (copied, readonly)
			[9]: props_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl_3 = {}
		local kind = arg1.props.kind
		if not kind then
			kind = Object_upvr.None
		end
		tbl_3.kind = kind
		tbl_3.scrollable = scrollable_upvr
		tbl_3.pages = arg1.props.pages or 1
		tbl_3.multiLine = multiLine_upvr
		tbl_3.relativeHeight = relativeHeight_upvw
		tbl_3.subPixelOffset = 0
		local any_assign_result1 = Object_upvr.assign({}, arg1_2, tbl_3)
		if not relativeHeight_upvw then
			relativeHeight_upvw = ResponsiveLayoutConfigReader_upvr.getValue(any_assign_result1, "relativeHeight")
			any_assign_result1.relativeHeight = relativeHeight_upvw
		end
		local any_getValue_result1 = ResponsiveLayoutConfigReader_upvr.getValue(any_assign_result1, "width")
		local var37 = ResponsiveLayoutConfigReader_upvr.getValue(any_assign_result1, "gutter") or 0
		local var38 = ResponsiveLayoutConfigReader_upvr.getValue(any_assign_result1, "verticalGutter") or var37
		local var39 = ResponsiveLayoutConfigReader_upvr.getValue(any_assign_result1, "margin") or 0
		local var40 = ResponsiveLayoutConfigReader_upvr.getValue(any_assign_result1, "columns") or 1
		local var41 = relativeHeight_upvw
		if var41 then
			if multiLine_upvr then
				var41 = arg1.props.lines
			else
				var41 = true
			end
		end
		local var42
		local any_getSize_result1 = arg1:getSize(relativeHeight_upvw, var37, var38, var39, var40)
		local module_2 = {}
		local tbl_4 = {
			Size = any_getSize_result1;
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
		}
		if var41 then
		else
		end
		tbl_4.AutomaticSize = Enum.AutomaticSize.Y
		tbl_4.BackgroundTransparency = 1
		tbl_4.LayoutOrder = arg1.props.layoutOrder
		tbl_4.ZIndex = arg1.props.zIndex
		tbl_4[Roact_upvr.Ref] = arg1.props.gridBasicRowRef
		local tbl = {}
		if any_getValue_result1 then
			if relativeHeight_upvw then
				local Y = any_getSize_result1.Y
				var42 = Y.Scale * any_getValue_result1 + Y.Offset
			else
				var42 = math.huge
			end
			;({}).MaxSize = Vector2.new(any_getValue_result1, var42)
		else
		end
		tbl._uiblox_grid_maxwidth_ = nil
		if multiLine_upvr then
			var42 = var38
			local _ = arg1:renderChildrenMultiline(var40, var39, var37, var42)
		else
			var42 = var38
		end
		module_2[props_upvr] = Roact_upvr.createElement("Frame", tbl_4, Object_upvr.assign(tbl, arg1:renderChildren(scrollable_upvr, var39, var37, var42)))
		return Roact_upvr.createElement(ResponsiveLayoutContext_upvr.Provider, {
			value = any_assign_result1;
		}, module_2)
	end
	return Roact_upvr.createElement(ResponsiveLayoutContext_upvr.Consumer, module_3)
end
any_extend_result1_upvr.render = render
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 230
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	local module_5 = {}
	module_5.gridBasicRowRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Object_upvr.assign({}, arg1, module_5))
end)