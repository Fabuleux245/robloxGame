-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:33
-- Luau version 6, Types version 3
-- Time taken: 0.000754 seconds

return function(arg1, arg2) -- Line 12, Named "mapOne"
	for i, v in pairs(arg1) do
		local var8
		if arg2 then
			var8 = arg2(v, i)
		else
			var8 = v
		end
		if var8 ~= nil then
			return var8
		end
	end
	return nil
end