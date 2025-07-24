-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:30
-- Luau version 6, Types version 3
-- Time taken: 0.000599 seconds

return function(arg1, arg2) -- Line 12, Named "last"
	for i = #arg1, 1, -1 do
		local var2 = arg1[i]
		if not arg2 then
			return var2
		end
		if arg2 and arg2(var2, i) then
			return var2
		end
	end
	return nil
end