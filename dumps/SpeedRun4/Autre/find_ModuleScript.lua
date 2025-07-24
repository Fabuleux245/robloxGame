-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:03
-- Luau version 6, Types version 3
-- Time taken: 0.000551 seconds

return function(arg1, arg2) -- Line 7
	for i = 1, #arg1 do
		local var3 = arg1[i]
		if arg2(var3, i, arg1) then
			return var3
		end
	end
	return nil
end