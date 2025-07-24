-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:12
-- Luau version 6, Types version 3
-- Time taken: 0.000910 seconds

return function(arg1, arg2, arg3) -- Line 14, Named "springCoefficients"
	if arg1 == 0 or arg3 == 0 then
		return 1, 0, 0, 1
	end
	if 1 < arg2 then
		local var1 = arg1 * arg3
		local squareroot_2 = math.sqrt(arg2 ^ 2 - 1)
		local var3 = -0.5 / squareroot_2
		local var4 = -squareroot_2 - arg2
		local var5 = 1 / var4
		local exponentiated_2 = math.exp(var1 * var4)
		local exponentiated_3 = math.exp(var1 * var5)
		return (exponentiated_3 * var4 - exponentiated_2 * var5) * var3, (exponentiated_2 - exponentiated_3) * var3 / arg3, (exponentiated_3 - exponentiated_2) * var3 * arg3, (exponentiated_2 * var4 - exponentiated_3 * var5) * var3
	end
	if arg2 == 1 then
		local var8 = arg1 * arg3
		local exponentiated_4 = math.exp(-var8)
		return exponentiated_4 * (var8 + 1), exponentiated_4 * arg1, (exponentiated_4) * (-var8 * arg3), exponentiated_4 * (1 - var8)
	end
	local var10 = arg1 * arg3
	local squareroot = math.sqrt(1 - arg2 ^ 2)
	local var12 = squareroot * var10
	local exponentiated = math.exp(-var10 * arg2)
	local var14 = exponentiated * math.sin(var12)
	local var15 = exponentiated * math.cos(var12)
	local var16 = (var14) * (1 / squareroot)
	local var17 = var16 * arg2
	return var17 + var15, var16, -(var17 * arg2 + var14 * squareroot), var15 - var17
end