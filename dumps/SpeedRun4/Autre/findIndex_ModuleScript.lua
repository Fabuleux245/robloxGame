-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:03
-- Luau version 6, Types version 3
-- Time taken: 0.000571 seconds

return function(arg1, arg2) -- Line 7
	for i = 1, #arg1 do
		if arg2(arg1[i], i, arg1) then
			return i
		end
	end
	return -1
end