-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:05
-- Luau version 6, Types version 3
-- Time taken: 0.002769 seconds

local module_upvr = {
	snapToScale = function(arg1, arg2) -- Line 3, Named "snapToScale"
		return math.clamp(math.round(arg1 / arg2) * arg2, 0, 1)
	end;
}
function lerp(arg1, arg2, arg3) -- Line 7
	return (1 - arg3) * arg1 + arg3 * arg2
end
function module_upvr.map(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 11
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var2
	if not arg6 then
		return lerp(arg4, arg5, module_upvr.getAlphaBetween(arg2, arg3, arg1))
	end
	if var2 < arg5 then
		var2 = arg5
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return math.max(math.min(lerp(arg4, arg5, module_upvr.getAlphaBetween(arg2, arg3, arg1)), var2), var2)
end
function module_upvr.getNewPosition(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var3 = arg1._data.Button.AbsoluteSize[arg1._config.Axis]
	local var4 = arg1._holder.AbsoluteSize[arg1._config.Axis]
	local var5 = arg1._data.Button.AnchorPoint[arg1._config.Axis]
	local var6 = var5 * var3 / var4 + arg1._config.Padding / var4
	local any_map_result1 = module_upvr.map(arg1._data._percent, 0, 1, var6, 1 - var6 + (2 * var3 * var5 - var3) / var4, true)
	if arg1._config.Axis == 'X' then
		return UDim2.fromScale(any_map_result1, arg1._data.Button.Position.Y.Scale)
	end
	return UDim2.fromScale(arg1._data.Button.Position.X.Scale, any_map_result1)
end
function module_upvr.getScaleIncrement(arg1) -- Line 50
	return (1) / ((arg1._config.SliderData.End - arg1._config.SliderData.Start) / arg1._config.SliderData.Increment)
end
function module_upvr.getAlphaBetween(arg1, arg2, arg3) -- Line 54
	return (arg3 - arg1) / (arg2 - arg1)
end
function module_upvr.getNewValue(arg1) -- Line 58
	local var8 = 1 / arg1._config.SliderData.Increment
	return math.round(lerp(arg1._config.SliderData.Start, arg1._config.SliderData.End, arg1._data._percent) * var8) / var8
end
return module_upvr