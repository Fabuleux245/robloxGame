-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:07
-- Luau version 6, Types version 3
-- Time taken: 0.000659 seconds

return function(arg1, arg2) -- Line 20
	local var9
	for _, v in ipairs(arg2:split('.')) do
		if var9[v] == nil then
			return nil
		end
		var9 = var9[v]
	end
	return var9
end