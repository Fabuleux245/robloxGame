-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:32
-- Luau version 6, Types version 3
-- Time taken: 0.000357 seconds

return function(arg1, arg2) -- Line 10, Named "mapFirst"
	for i, v in ipairs(arg1) do
		local arg2_result1 = arg2(v, i)
		if arg2_result1 ~= nil then
			return arg2_result1
		end
	end
	return nil
end