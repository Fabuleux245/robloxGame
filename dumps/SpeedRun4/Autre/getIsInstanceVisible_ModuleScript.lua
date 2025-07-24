-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:55
-- Luau version 6, Types version 3
-- Time taken: 0.000930 seconds

return function(arg1, arg2, arg3) -- Line 1, Named "getIsInstanceVisible"
	if not arg1 then
		return false
	end
	local AbsoluteSize = arg1.AbsoluteSize
	if AbsoluteSize.X <= 0 or AbsoluteSize.Y <= 0 then
		return false
	end
	local AbsolutePosition = arg1.AbsolutePosition
	local var3 = AbsolutePosition + AbsoluteSize
	local var4 = math.min(var3.X, arg2.max.X) - math.max(AbsolutePosition.X, arg2.min.X)
	if var4 <= 0 then
		return false
	end
	local var5 = math.min(var3.Y, arg2.max.Y) - math.max(AbsolutePosition.Y, arg2.min.Y)
	if var5 <= 0 then
		return false
	end
	local X = AbsoluteSize.X
	if arg3 > (var4 * var5 * 100) / (X * AbsoluteSize.Y) then
		X = false
	else
		X = true
	end
	return X
end