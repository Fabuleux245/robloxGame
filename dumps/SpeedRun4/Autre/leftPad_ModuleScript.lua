-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:31
-- Luau version 6, Types version 3
-- Time taken: 0.000539 seconds

return function(arg1, arg2, arg3) -- Line 8, Named "leftPad"
	local var1 = arg3 or ' '
	local var2 = arg2 - arg1:len()
	local var3 = var2 % var1:len()
	return string.rep(var1 or ' ', (var2 - var3) / var1:len())..var1:sub(1, var3)..arg1
end