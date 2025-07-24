-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:19
-- Luau version 6, Types version 3
-- Time taken: 0.000351 seconds

return function(arg1, arg2) -- Line 1, Named "getClosestItemToCenter"
	local CanvasPosition = arg2.CanvasPosition
	local var2 = math.floor((CanvasPosition.X + arg2.AbsoluteSize.X / 2) / arg1.X) + 1
	return var2, math.abs(CanvasPosition.X - (var2 - 1) * arg1.X)
end