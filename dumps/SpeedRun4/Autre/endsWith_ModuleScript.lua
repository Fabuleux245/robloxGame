-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:24
-- Luau version 6, Types version 3
-- Time taken: 0.000898 seconds

return function(arg1, arg2, arg3) -- Line 16, Named "endsWith"
	local any_len_result1_2 = arg2:len()
	if any_len_result1_2 == 0 then
		return true
	end
	local any_len_result1 = arg1:len()
	local var3 = arg3 or any_len_result1
	if any_len_result1 < var3 then
		var3 = any_len_result1
	end
	if var3 < 1 then
		return false
	end
	local var4 = var3 - any_len_result1_2
	local var5 = var4 + 1
	if arg1:find(arg2, var5, true) ~= var5 then
		var4 = false
	else
		var4 = true
	end
	return var4
end