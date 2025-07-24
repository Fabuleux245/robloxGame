-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:25
-- Luau version 6, Types version 3
-- Time taken: 0.001163 seconds

local var1_upvr = "([".."$%^()-[].?":gsub("(.)", "%%%1").."])"
return function(arg1, arg2, arg3) -- Line 24, Named "findOr"
	--[[ Upvalues[1]:
		[1]: var1_upvr (readonly)
	]]
	local tbl = {}
	local var11
	for _, v in var11 do
		v = v:gsub(var1_upvr, "%%%1")
		local string_find_result1, string_find_result2 = string.find(arg1, v, utf8.offset(arg1, arg3 or 1))
		if string_find_result1 then
			local string_sub_result1 = string.sub(arg1, 1, string_find_result1 - 1)
			local utf8_len_result1, utf8_len_result2 = utf8.len(string_sub_result1)
			if utf8_len_result1 == nil then
				error("string `%s` has an invalid byte at position %s":format(string_sub_result1, tostring(utf8_len_result2)))
			end
			table.insert(tbl, {
				index = utf8_len_result1 + 1;
				match = string.sub(arg1, string_find_result1, string_find_result2);
			})
		end
	end
	var11 = #tbl
	if var11 == 0 then
		var11 = nil
		return var11
	end
	var11 = nil
	for _, v_2 in tbl do
		if var11 == nil then
			var11 = v_2
		end
		if v_2.index < var11.index then
			var11 = v_2
		end
	end
	return var11
end