-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:44
-- Luau version 6, Types version 3
-- Time taken: 0.000486 seconds

return {
	stringIndexOf = function(arg1, arg2) -- Line 11, Named "stringIndexOf"
		local string_find_result1, string_find_result2 = string.find(arg1, arg2)
		if string_find_result1 == nil then
			return -1
		end
		return string_find_result1
	end;
}