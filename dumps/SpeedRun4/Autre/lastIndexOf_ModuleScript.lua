-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:26
-- Luau version 6, Types version 3
-- Time taken: 0.001046 seconds

return function(arg1, arg2, arg3) -- Line 16, Named "lastIndexOf"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local string_len_result1 = string.len(arg1)
	if arg3 then
	else
	end
	if arg3 and arg3 < 1 then
		local var2
	end
	if arg3 and string_len_result1 < arg3 then
		var2 = string_len_result1
	end
	if arg2 == "" then
		return var2
	end
	repeat
		local var3
		local string_find_result1, string_find_result2 = string.find(arg1, arg2, 0 + 1, true)
		local var6 = string_find_result1
	until var6 == nil and var2 < var6
	if var3 == nil then
		return -1
	end
	return var3
end