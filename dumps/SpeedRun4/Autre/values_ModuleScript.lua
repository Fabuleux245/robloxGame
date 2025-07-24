-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:35
-- Luau version 6, Types version 3
-- Time taken: 0.001225 seconds

return function(arg1) -- Line 7
	if arg1 == nil then
		error("cannot extract values from a nil value")
	end
	local typeof_result1 = typeof(arg1)
	if typeof_result1 == "table" then
		for _, v in pairs(arg1) do
			table.insert({}, v)
			local var13
		end
		return var13
	end
	if typeof_result1 == "string" then
		local any_len_result1 = arg1:len()
		for i_2 = 1, any_len_result1 do
			table.create(any_len_result1)[i_2] = arg1:sub(i_2, i_2)
			local var15
		end
	end
	return var15
end