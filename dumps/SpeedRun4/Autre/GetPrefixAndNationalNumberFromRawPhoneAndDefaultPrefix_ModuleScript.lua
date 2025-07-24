-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:01
-- Luau version 6, Types version 3
-- Time taken: 0.000402 seconds

return function(arg1, arg2) -- Line 1
	local any_gsub_result1_2 = arg1:gsub("%D", "")
	local any_gsub_result1 = arg2:gsub("%D", "")
	if string.find(any_gsub_result1_2, any_gsub_result1) == 1 then
		return arg2, string.sub(any_gsub_result1_2, string.len(any_gsub_result1) + 1)
	end
	return arg2, any_gsub_result1_2
end