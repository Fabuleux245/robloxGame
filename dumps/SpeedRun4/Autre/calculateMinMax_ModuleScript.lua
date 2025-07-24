-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:16
-- Luau version 6, Types version 3
-- Time taken: 0.000948 seconds

local function _(arg1, arg2, arg3) -- Line 5, Named "compare"
	if arg1 and arg2 then
		return Vector3.new(arg3(arg1.X, arg2.X), arg3(arg1.Y, arg2.Y), arg3(arg1.Z, arg2.Z))
	end
	return arg1 or arg2
end
return function(arg1, arg2, arg3, arg4) -- Line 14, Named "calculateMinMax"
	local min = math.min
	local var2
	if arg1 and arg3 then
		var2 = Vector3.new(min(arg1.X, arg3.X), min(arg1.Y, arg3.Y), min(arg1.Z, arg3.Z))
	else
		var2 = arg1 or arg3
	end
	local max = math.max
	if arg2 and arg4 then
		return var2, Vector3.new(max(arg2.X, arg4.X), max(arg2.Y, arg4.Y), max(arg2.Z, arg4.Z))
	end
	return var2, arg2 or arg4
end