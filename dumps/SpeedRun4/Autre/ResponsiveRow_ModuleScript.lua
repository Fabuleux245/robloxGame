-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:12
-- Luau version 6, Types version 3
-- Time taken: 0.008660 seconds

local Parent_2 = script.Parent
local Parent_3 = Parent_2.Parent.Parent.Parent
local Parent = Parent_3.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local LuauPolyfill = require(Parent.LuauPolyfill)
local Object_upvr = LuauPolyfill.Object
local Array_upvr = LuauPolyfill.Array
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ResponsiveRow")
any_extend_result1_upvr.validateProps = t.strictInterface({
	kind = t.optional(t.string);
	layoutOrder = t.optional(t.integer);
	zIndex = t.optional(t.number);
	scrollable = t.optional(t.boolean);
	clipsDescendants = t.optional(t.boolean);
	selectable = t.optional(t.boolean);
	multiLine = t.optional(t.boolean);
	displayLines = t.optional(t.NumberRange);
	relativeHeight = t.optional(t.UDim);
	data = t.optional(t.any);
	getItem = t.optional(t.callback);
	getItemCount = t.optional(t.callback);
	renderItem = t.optional(t.callback);
	keyExtractor = t.optional(t.callback);
	getCellColspan = t.optional(t.callback);
	getCellRowspan = t.optional(t.callback);
	getCellOrder = t.optional(t.callback);
	scrollingFrameRef = t.optional(t.table);
	forwardedRef = t.optional(t.union(t.table, t.callback));
})
any_extend_result1_upvr.defaultProps = {
	kind = "default";
	multiLine = false;
	data = {};
	getItem = function(arg1, arg2, arg3) -- Line 78, Named "getItem"
		if type(arg1) == "table" then
			return arg1[arg2]
		end
		return nil
	end;
	renderItem = function(arg1, arg2) -- Line 85, Named "renderItem"
		return arg1
	end;
	getCellColspan = function(arg1, arg2) -- Line 88, Named "getCellColspan"
		return nil
	end;
	getCellRowspan = function(arg1, arg2) -- Line 91, Named "getCellRowspan"
		return nil
	end;
	getCellOrder = function(arg1, arg2) -- Line 94, Named "getCellOrder"
		return nil
	end;
}
local function countItems_upvr(arg1, arg2) -- Line 99, Named "countItems"
	--[[ Upvalues[1]:
		[1]: any_extend_result1_upvr (readonly)
	]]
	if arg1.getItemCount then
		return arg1.getItemCount(arg1.data, arg2)
	end
	if arg1.getItem == any_extend_result1_upvr.defaultProps.getItem then
		return #arg1.data
	end
	for i = 1, arg2.columns do
		if arg1.getItem(arg1.data, i, arg2) == nil then
			return i - 1
		end
	end
	return arg2.columns
end
local function _(arg1, arg2, arg3, arg4) -- Line 114, Named "resolveCellProp"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	local arg1_result1 = arg1(arg2, arg3)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 19. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 19. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 24. Error Block 8 start (CF ANALYSIS FAILED)
	do
		return arg1_result1
	end
	-- KONSTANTERROR: [32] 24. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 25. Error Block 9 start (CF ANALYSIS FAILED)
	do
		return arg4
	end
	-- KONSTANTERROR: [33] 25. Error Block 9 end (CF ANALYSIS FAILED)
end
local function addPaddingCells_upvr(arg1, arg2) -- Line 133, Named "addPaddingCells"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local tbl_2_upvr = {}
	local function _(arg1_2) -- Line 135, Named "shouldSkip"
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: tbl_2_upvr (readonly)
		]]
		local floored_3 = math.floor(arg1_2 / arg2.columns)
		return tbl_2_upvr[string.format("%d,%d", arg1_2 - floored_3 * arg2.columns, floored_3)]
	end
	local function setSkip_upvr(arg1_3, arg2_2, arg3) -- Line 140, Named "setSkip"
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: tbl_2_upvr (readonly)
		]]
		local floored = math.floor(arg1_3 / arg2.columns)
		local var19 = arg1_3 - floored * arg2.columns
		for i_2 = var19, var19 + arg2_2 - 1 do
			for i_3 = floored, floored + arg3 - 1 do
				tbl_2_upvr[string.format("%d,%d", i_2, i_3)] = true
			end
		end
	end
	return Array_upvr.reduce(arg1, function(arg1_4, arg2_3) -- Line 149
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: setSkip_upvr (readonly)
			[4]: Object_upvr (copied, readonly)
		]]
		while true do
			local len = #arg1_4
			local floored_2 = math.floor(len / arg2.columns)
			if not tbl_2_upvr[string.format("%d,%d", len - floored_2 * arg2.columns, floored_2)] then break end
			table.insert(arg1_4, {
				order = #arg1_4 + 1;
			})
		end
		if 1 < arg2_3.colspan or 1 < arg2_3.rowspan then
			setSkip_upvr(#arg1_4, arg2_3.colspan, arg2_3.rowspan)
		end
		table.insert(arg1_4, Object_upvr.assign({}, arg2_3, {
			order = #arg1_4 + 1;
		}))
		return arg1_4
	end, {})
end
local function _(arg1, arg2) -- Line 169, Named "formatCellKey"
	return string.format("ResponsiveRowCell%0"..math.floor(math.log10(arg2) + 1)..'d', arg1)
end
function filterDisplayedCells(arg1, arg2, arg3) -- Line 175
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local var26_upvr = (arg3.Min - 1) * arg2.columns + 1
	local var27_upvr = arg3.Max * arg2.columns
	local var30_upvr = (arg3.Max - arg3.Min + 1) * arg2.columns
	return Array_upvr.map(Array_upvr.filter(arg1, function(arg1_5, arg2_4) -- Line 179
		--[[ Upvalues[2]:
			[1]: var26_upvr (readonly)
			[2]: var27_upvr (readonly)
		]]
		local var28 = false
		if var26_upvr <= arg2_4 then
			if arg2_4 > var27_upvr then
				var28 = false
			else
				var28 = true
			end
		end
		return var28
	end), function(arg1_6, arg2_5) -- Line 184
		--[[ Upvalues[2]:
			[1]: Object_upvr (copied, readonly)
			[2]: var30_upvr (readonly)
		]]
		return Object_upvr.assign({}, arg1_6, {
			key = string.format("ResponsiveRowCell%0"..math.floor(math.log10(var30_upvr) + 1)..'d', (arg1_6.order - 1) % var30_upvr + 1);
		})
	end)
end
function any_extend_result1_upvr.init(arg1) -- Line 193
	arg1.itemCache = {}
end
local UIBloxConfig_upvr = require(Parent_3.UIBloxConfig)
local ResponsiveCell_upvr = require(Parent_2.ResponsiveCell)
function any_extend_result1_upvr.renderChildren(arg1, arg2) -- Line 197
	--[[ Upvalues[6]:
		[1]: countItems_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: addPaddingCells_upvr (readonly)
		[4]: UIBloxConfig_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ResponsiveCell_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = 1
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 2 end (CF ANALYSIS FAILED)
end
local ResponsiveLayoutContext_upvr = require(Parent_2.ResponsiveLayoutContext)
local ResponsiveLayoutConfigReader_upvr = require(Parent_2.ResponsiveLayoutConfigReader)
local ResponsiveBaseRow_upvr = require(Parent_2.ResponsiveBaseRow)
local function render(arg1) -- Line 265
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: ResponsiveLayoutContext_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: ResponsiveLayoutConfigReader_upvr (readonly)
		[5]: ResponsiveBaseRow_upvr (readonly)
	]]
	return Roact_upvr.createElement(ResponsiveLayoutContext_upvr.Consumer, {
		render = function(arg1_7) -- Line 267, Named "render"
			--[[ Upvalues[5]:
				[1]: Object_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: ResponsiveLayoutConfigReader_upvr (copied, readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: ResponsiveBaseRow_upvr (copied, readonly)
			]]
			local tbl_4 = {}
			local var46
			if not var46 then
				var46 = Object_upvr.None
			end
			tbl_4.kind = var46
			local any_assign_result1 = Object_upvr.assign({}, arg1_7, tbl_4)
			local tbl = {}
			var46 = any_assign_result1.breakpoint
			tbl.breakpoint = var46
			var46 = any_assign_result1.kind
			tbl.kind = var46
			var46 = ResponsiveLayoutConfigReader_upvr.getValue(any_assign_result1, "width") or 1
			tbl.width = var46
			var46 = ResponsiveLayoutConfigReader_upvr.getValue(any_assign_result1, "columns") or 1
			tbl.columns = var46
			var46 = ResponsiveLayoutConfigReader_upvr.getValue(any_assign_result1, "margin") or 1
			tbl.margin = var46
			var46 = ResponsiveLayoutConfigReader_upvr.getValue(any_assign_result1, "gutter") or 1
			tbl.gutter = var46
			var46 = ResponsiveLayoutConfigReader_upvr.getValue(any_assign_result1, "verticalGutter")
			tbl.verticalGutter = var46
			local any_renderChildren_result1, any_renderChildren_result2, any_renderChildren_result3 = arg1:renderChildren(tbl)
			var46 = Roact_upvr.createElement
			local tbl_3 = {
				kind = arg1.props.kind;
				layoutOrder = arg1.props.layoutOrder;
				zIndex = arg1.props.zIndex;
				scrollable = arg1.props.scrollable;
				clipsDescendants = arg1.props.clipsDescendants;
				selectable = arg1.props.selectable;
				pages = any_renderChildren_result2;
				multiLine = arg1.props.multiLine;
				lines = any_renderChildren_result3;
			}
			local var53
			if arg1.props.multiLine and arg1.props.displayLines then
				var53 = math.max(arg1.props.displayLines.Min - 1, 0)
			else
				var53 = nil
			end
			tbl_3.paddingTopLines = var53
			var53 = arg1.props.relativeHeight
			tbl_3.relativeHeight = var53
			var53 = arg1.props.scrollingFrameRef
			tbl_3.scrollingFrameRef = var53
			var53 = Roact_upvr.Ref
			tbl_3[var53] = arg1.props.forwardedRef
			var53 = any_renderChildren_result1
			var46 = var46(ResponsiveBaseRow_upvr, tbl_3, var53)
			return var46
		end;
	})
end
any_extend_result1_upvr.render = render
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 302
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	local module = {}
	module.forwardedRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Object_upvr.assign({}, arg1, module))
end)