-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:49
-- Luau version 6, Types version 3
-- Time taken: 0.000483 seconds

return function(arg1, arg2) -- Line 1, Named "getFitSize"
	if arg1.X == 0 or arg1.Y == 0 or arg2.X == 0 or arg2.Y == 0 then
		return UDim2.fromScale(1, 1)
	end
	local var1 = arg1.X / arg1.Y
	local var2 = arg2.X / arg2.Y
	if var1 < var2 then
		return UDim2.fromScale(1, var1 / var2)
	end
	return UDim2.fromScale(var2 / var1, 1)
end