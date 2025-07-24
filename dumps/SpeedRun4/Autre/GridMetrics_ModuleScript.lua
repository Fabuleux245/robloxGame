-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:43
-- Luau version 6, Types version 3
-- Time taken: 0.002074 seconds

local t = require(script.Parent.Parent.Parent.Parent.t)
local function _(arg1, arg2, arg3) -- Line 24, Named "getItemMetrics"
	local maximum = math.max(arg3.minimumItemsPerRow, math.floor((arg1 + arg2) / (arg3.minimumItemWidth + arg2)))
	return {
		itemsPerRow = maximum;
		itemWidth = math.floor((arg1 - (maximum - 1) * arg2) / maximum);
	}
end
local module_2_upvr = {}
local any_strictInterface_result1_upvr = t.strictInterface({
	minimumItemsPerRow = t.intersection(t.integer, t.numberMin(1));
	minimumItemWidth = t.numberMin(0);
})
local any_tuple_result1_upvr = t.tuple(t.numberMin(0), t.number)
function module_2_upvr.makeCustomMetricsGetter(arg1) -- Line 48
	--[[ Upvalues[2]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: any_tuple_result1_upvr (readonly)
	]]
	assert(any_strictInterface_result1_upvr(arg1))
	return function(arg1_2, arg2) -- Line 51
		--[[ Upvalues[2]:
			[1]: any_tuple_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		assert(any_tuple_result1_upvr(arg1_2, arg2))
		local var11 = arg1
		local maximum_2 = math.max(var11.minimumItemsPerRow, math.floor((arg1_2 + arg2) / (var11.minimumItemWidth + arg2)))
		return {
			itemsPerRow = maximum_2;
			itemWidth = math.floor((arg1_2 - (maximum_2 - 1) * arg2) / maximum_2);
		}
	end
end
module_2_upvr.getLargeMetrics = module_2_upvr.makeCustomMetricsGetter({
	minimumItemsPerRow = 1;
	minimumItemWidth = 332;
})
module_2_upvr.getMediumMetrics = module_2_upvr.makeCustomMetricsGetter({
	minimumItemsPerRow = 2;
	minimumItemWidth = 160;
})
function module_2_upvr.getSmallMetrics(arg1, arg2) -- Line 60
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var14 = module_2_upvr.getMediumMetrics(arg1, arg2).itemsPerRow + 1
	return {
		itemsPerRow = var14;
		itemWidth = math.floor((arg1 - (var14 - 1) * arg2) / var14);
	}
end
function module_2_upvr.getMetricsForFixedColumns(arg1, arg2, arg3) -- Line 73
	local module = {}
	module.itemsPerRow = arg3
	module.itemWidth = math.floor((arg1 - (arg3 - 1) * arg2) / arg3)
	return module
end
return module_2_upvr