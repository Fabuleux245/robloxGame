-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:36
-- Luau version 6, Types version 3
-- Time taken: 0.000429 seconds

return function(arg1, arg2) -- Line 1
	local var9
	for _, v in ipairs(arg2:split('.')) do
		if not var9[v] then
			return nil
		end
		var9 = var9[v]
	end
	return var9
end