-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:33
-- Luau version 6, Types version 3
-- Time taken: 0.001385 seconds

return function(arg1, arg2, arg3) -- Line 3, Named "StringTrim"
	if not arg2 then
		local const_string = "%s"
	end
	if #const_string == 0 then
		return arg1
	end
	if not arg3 then
		local var3 = {
			left = true;
			right = true;
		}
	end
	local var4 = arg1
	if var3.left then
		local string_find_result1_2 = string.find(var4, "[^"..const_string..']')
		if not string_find_result1_2 then
			return ""
		end
		local string_sub_result1 = string.sub(var4, string_find_result1_2)
	end
	if var3.right then
		local string_find_result1 = string.find(string_sub_result1, '['..const_string.."]+$")
		if not string_find_result1 then
			return string_sub_result1
		end
	end
	return string.sub(string_sub_result1, 1, string_find_result1 - 1)
end