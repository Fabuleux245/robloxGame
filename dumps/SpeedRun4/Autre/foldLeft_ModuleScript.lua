-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:45:28
-- Luau version 6, Types version 3
-- Time taken: 0.000367 seconds

return function(arg1, arg2, arg3) -- Line 4, Named "foldLeft"
	local var3 = arg3
	for i = 1, #arg1 do
		var3 = arg2(var3, arg1[i], i)
	end
	return var3
end