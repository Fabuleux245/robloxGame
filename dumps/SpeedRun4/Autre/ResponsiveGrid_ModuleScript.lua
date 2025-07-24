-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:10
-- Luau version 6, Types version 3
-- Time taken: 0.004164 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local ReactUtils = require(Parent_2.ReactUtils)
local useResponsiveLayout_upvr = require(Parent.Core.Layout.Responsive.useResponsiveLayout)
local function useCellAbsoluteHeight_upvr(arg1, arg2) -- Line 60, Named "useCellAbsoluteHeight"
	--[[ Upvalues[2]:
		[1]: useResponsiveLayout_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local var6_upvr = useResponsiveLayout_upvr("columns", arg2) or 1
	local var7_upvr = useResponsiveLayout_upvr("gutter", arg2) or 0
	local var8_upvr = useResponsiveLayout_upvr("verticalGutter", arg2) or var7_upvr
	local var9_upvr = useResponsiveLayout_upvr("margin", arg2) or 0
	local var10_upvr = arg1 or useResponsiveLayout_upvr("relativeHeight", arg2)
	return React_upvr.useCallback(function(arg1_2) -- Line 69
		--[[ Upvalues[5]:
			[1]: var10_upvr (readonly)
			[2]: var9_upvr (readonly)
			[3]: var7_upvr (readonly)
			[4]: var6_upvr (readonly)
			[5]: var8_upvr (readonly)
		]]
		if var10_upvr then
			return math.max(((arg1_2 - 2 * var9_upvr + var7_upvr) / var6_upvr - var7_upvr) * var10_upvr.Scale + var10_upvr.Offset, 0) + var8_upvr
		end
		return nil
	end, {var6_upvr, var7_upvr, var8_upvr, var9_upvr, var10_upvr})
end
local var13_upvr = 0
if require(Parent.UIBloxConfig).responsiveGridDisplayLinesNonNil then
	var13_upvr = NumberRange.new(var13_upvr, 0)
else
	var13_upvr = nil
end
local usePropertiesDeferred_upvr = ReactUtils.usePropertiesDeferred
local useProperties_upvr = ReactUtils.useProperties
local ResponsiveRow_upvr = require(Parent.Core.Layout.Responsive.ResponsiveRow)
return React_upvr.forwardRef(function(arg1, arg2) -- Line 83, Named "ResponsiveGrid"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: var13_upvr (readonly)
		[3]: useCellAbsoluteHeight_upvr (readonly)
		[4]: usePropertiesDeferred_upvr (readonly)
		[5]: useProperties_upvr (readonly)
		[6]: ResponsiveRow_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(var13_upvr)
	local useCellAbsoluteHeight_result1_upvr = useCellAbsoluteHeight_upvr(arg1.relativeHeight, arg1.kind)
	local var26
	if arg1.enableDeferredRefPropEvents then
		var26 = usePropertiesDeferred_upvr
	else
		var26 = useProperties_upvr
	end
	local var27
	local tbl = {}
	var27 = "AbsolutePosition"
	tbl[1] = var27
	tbl[2] = "AbsoluteSize"
	local module = {}
	var27 = arg1.kind
	module.kind = var27
	var27 = arg1.layoutOrder
	module.layoutOrder = var27
	var27 = false
	module.scrollable = var27
	var27 = true
	module.multiLine = var27
	if arg1.absoluteWindowTop and arg1.absoluteWindowHeight then
		var27 = any_useState_result1
	else
		var27 = nil
	end
	module.displayLines = var27
	var27 = arg1.relativeHeight
	module.relativeHeight = var27
	var27 = arg1.data
	module.data = var27
	var27 = arg1.getItem
	module.getItem = var27
	var27 = arg1.getItemCount
	module.getItemCount = var27
	var27 = arg1.renderItem
	module.renderItem = var27
	var27 = arg1.keyExtractor
	module.keyExtractor = var27
	var27 = arg1.getCellColspan
	module.getCellColspan = var27
	var27 = arg1.getCellRowspan
	module.getCellRowspan = var27
	var27 = arg1.getCellOrder
	module.getCellOrder = var27
	module.ref = var26(arg2, React_upvr.useCallback(function(arg1_3, arg2_2) -- Line 87
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: useCellAbsoluteHeight_result1_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: var13_upvr (copied, readonly)
		]]
		if arg1.absoluteWindowTop and arg1.absoluteWindowHeight then
			local var19_result1 = useCellAbsoluteHeight_result1_upvr(arg2_2.X)
			if var19_result1 and 0 < var19_result1 then
				local var24 = math.floor(math.max(arg1.absoluteWindowTop - arg1_3.Y, 0) / var19_result1) + 1
				return any_useState_result2_upvr(NumberRange.new(var24, (var24) + (math.ceil(math.max(arg1.absoluteWindowHeight, 0) / var19_result1) + 1) - 1))
			end
		end
		return any_useState_result2_upvr(var13_upvr)
	end, {useCellAbsoluteHeight_result1_upvr, arg1.absoluteWindowTop, arg1.absoluteWindowHeight, any_useState_result2_upvr}), tbl)
	return React_upvr.createElement(ResponsiveRow_upvr, module)
end)