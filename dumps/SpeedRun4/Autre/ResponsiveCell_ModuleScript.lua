-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:10
-- Luau version 6, Types version 3
-- Time taken: 0.006686 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ResponsiveCell")
any_extend_result1_upvr.validateProps = t.interface({
	layoutOrder = t.optional(t.integer);
	zIndex = t.optional(t.integer);
	colspan = t.optional(t.union(t.integer, t.table));
	rowspan = t.optional(t.union(t.integer, t.table));
	order = t.optional(t.union(t.integer, t.table));
	[Roact_upvr.Children] = t.optional(t.table);
	gridCellRef = t.optional(t.union(t.table, t.callback));
})
local function findProp_upvr(arg1, arg2, arg3) -- Line 35, Named "findProp"
	if arg3 == nil then
		local const_string = "default"
	end
	if arg1[arg2..'_'..const_string] ~= nil then
		return arg1[arg2..'_'..const_string]
	end
	if arg1[arg2] ~= nil then
		if type(arg1[arg2]) == "table" then
			if arg1[arg2][const_string] ~= nil then
				return arg1[arg2][const_string]
			end
			return arg1[arg2].default
		end
		return arg1[arg2]
	end
	return nil
end
function any_extend_result1_upvr.getColspan(arg1, arg2) -- Line 56
	--[[ Upvalues[1]:
		[1]: findProp_upvr (readonly)
	]]
	local findProp_upvr_result1 = findProp_upvr(arg1.props, "colspan", arg2)
	if findProp_upvr_result1 ~= nil then
		return findProp_upvr_result1
	end
	return 1
end
function any_extend_result1_upvr.getRowspan(arg1, arg2) -- Line 61
	--[[ Upvalues[1]:
		[1]: findProp_upvr (readonly)
	]]
	local findProp_upvr_result1_2 = findProp_upvr(arg1.props, "rowspan", arg2)
	if findProp_upvr_result1_2 ~= nil then
		return findProp_upvr_result1_2
	end
	return 1
end
function any_extend_result1_upvr.getOrder(arg1, arg2) -- Line 66
	--[[ Upvalues[1]:
		[1]: findProp_upvr (readonly)
	]]
	if arg1.props.layoutOrder then
		return arg1.props.layoutOrder
	end
	return findProp_upvr(arg1.props, "order", arg2)
end
local function _(arg1, arg2) -- Line 75, Named "round"
	local floored = math.floor(arg1)
	arg2.subPixelOffset += arg1 - floored
	local rounded_2 = math.floor(arg2.subPixelOffset + 0.5)
	arg2.subPixelOffset -= rounded_2
	return floored + rounded_2
end
local ResponsiveLayoutConfigReader_upvr = require(Parent_2.ResponsiveLayoutConfigReader)
function any_extend_result1_upvr.getSize(arg1, arg2, arg3, arg4) -- Line 84
	--[[ Upvalues[1]:
		[1]: ResponsiveLayoutConfigReader_upvr (readonly)
	]]
	local var13 = ResponsiveLayoutConfigReader_upvr.getValue(arg4, "gutter") or 0
	if arg4.multiLine then
		return UDim2.new(arg2, (arg2 - 1) * var13, arg3, (arg3 - 1) * (ResponsiveLayoutConfigReader_upvr.getValue(arg4, "verticalGutter") or var13))
	end
	local var14 = ResponsiveLayoutConfigReader_upvr.getValue(arg4, "columns") or 1
	if arg4.scrollable then
		var14 *= math.max(arg4.pages, 1)
	end
	local var15 = (arg2 / var14 - 1) * var13
	local floored_2 = math.floor(var15)
	arg4.subPixelOffset += var15 - floored_2
	local rounded = math.floor(arg4.subPixelOffset + 0.5)
	arg4.subPixelOffset -= rounded
	return UDim2.new(arg2 / var14, floored_2 + rounded, 1, 0)
end
local ResponsiveLayoutContext_upvr = require(Parent_2.ResponsiveLayoutContext)
local function render(arg1) -- Line 103
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ResponsiveLayoutContext_upvr (readonly)
	]]
	return Roact_upvr.createElement(ResponsiveLayoutContext_upvr.Consumer, {
		render = function(arg1_2) -- Line 105, Named "render"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Roact_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
			local any_getColspan_result1 = arg1:getColspan(arg1_2.breakpoint)
			local var21
			if arg1_2.multiLine then
				var21 = arg1
				local breakpoint = arg1_2.breakpoint
				var21 = var21:getRowspan(breakpoint)
			else
				var21 = 1
			end
			-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [20] 15. Error Block 6 start (CF ANALYSIS FAILED)
			local var23 = 0
			-- KONSTANTERROR: [20] 15. Error Block 6 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [58] 44. Error Block 44 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [59.8]
			nil.Name = breakpoint
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.Size = arg1:getSize(any_getColspan_result1, var21, arg1_2)
			if arg1_2.relativeHeight then
			else
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.AutomaticSize = Enum.AutomaticSize.Y
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.BackgroundTransparency = 1
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.LayoutOrder = var23
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.ZIndex = arg1.props.zIndex
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil[Roact_upvr.Ref] = arg1.props.gridCellRef
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [108.6]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [108.7]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local var24 = nil(nil, nil, arg1.props[Roact_upvr.Children])
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [109.5]
			if nil then
				return Roact_upvr.createElement("Frame", {
					Name = breakpoint;
					BackgroundTransparency = 1;
					LayoutOrder = var23;
				}, {
					ResponsiveCellInner = var24;
				})
			end
			do
				return var24
			end
			-- KONSTANTERROR: [58] 44. Error Block 44 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [128] 92. Error Block 28 start (CF ANALYSIS FAILED)
			do
				return nil
			end
			-- KONSTANTERROR: [128] 92. Error Block 28 end (CF ANALYSIS FAILED)
		end;
	})
end
any_extend_result1_upvr.render = render
local Object_upvr = require(Parent.LuauPolyfill).Object
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 141
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	local module = {}
	module.gridCellRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Object_upvr.assign({}, arg1, module))
end)