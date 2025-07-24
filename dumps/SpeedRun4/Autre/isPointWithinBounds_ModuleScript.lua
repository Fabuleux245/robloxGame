-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:50
-- Luau version 6, Types version 3
-- Time taken: 0.000713 seconds

return function(arg1, arg2, arg3) -- Line 1, Named "isPointWithinBounds"
	local var1 = false
	if math.clamp(arg1.X, arg2.X, arg2.X + arg3.X) == arg1.X then
		if math.clamp(arg1.Y, arg2.Y, arg2.Y + arg3.Y) ~= arg1.Y then
			var1 = false
		else
			var1 = true
		end
	end
	return var1
end