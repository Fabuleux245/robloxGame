-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:23
-- Luau version 6, Types version 3
-- Time taken: 0.000449 seconds

return function(arg1, arg2, arg3) -- Line 10, Named "getOrSet"
	if arg1[arg2] == nil then
		arg1[arg2] = arg3(arg1, arg2)
	end
	return arg1[arg2]
end