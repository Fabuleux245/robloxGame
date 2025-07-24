-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:07
-- Luau version 6, Types version 3
-- Time taken: 0.001241 seconds

return function(arg1, arg2, arg3) -- Line 11
	local len = #arg1
	local table_create_result1 = table.create(len)
	if arg2 then
		for i = 1, len do
			if arg3 ~= nil then
				table_create_result1[i] = arg2(arg3, string.sub(arg1, i, i), i)
			else
				table_create_result1[i] = arg2(string.sub(arg1, i, i), i)
			end
		end
		return table_create_result1
	end
	for i_2 = 1, len do
		table_create_result1[i_2] = string.sub(arg1, i_2, i_2)
	end
	return table_create_result1
end