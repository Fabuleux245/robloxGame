-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:47
-- Luau version 6, Types version 3
-- Time taken: 0.000589 seconds

return {
	transformTriangleToWorld = function(arg1, arg2, arg3, arg4, arg5) -- Line 10, Named "transformTriangleToWorld"
		local var2 = (arg4) * (arg1 * arg5)
		local var3 = (arg4) * (arg2 * arg5)
		local var4 = (arg4) * (arg3 * arg5)
		return var2, var3, var4, var3 - var2:Cross(var4 - var2).Unit
	end;
}