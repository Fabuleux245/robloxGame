-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:31
-- Luau version 6, Types version 3
-- Time taken: 0.001501 seconds

return function(arg1) -- Line 7
	if arg1 == nil then
	else
	end
	assert(true, "cannot get entries from a nil value")
	local typeof_result1 = typeof(arg1)
	if typeof_result1 == "table" then
		for i, v in pairs(arg1) do
			table.insert({}, {i, v})
			local var14
		end
		return var14
	end
	if typeof_result1 == "string" then
		for i_2 = 1, string.len(arg1) do
			var14[i_2] = {tostring(i_2), string.sub(arg1, i_2, i_2)}
			local var16
		end
	end
	return var16
end