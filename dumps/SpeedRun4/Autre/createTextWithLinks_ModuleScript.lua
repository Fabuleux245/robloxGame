-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:20
-- Luau version 6, Types version 3
-- Time taken: 0.000972 seconds

return function(arg1, arg2) -- Line 20
	if arg2 == nil then
		return arg1
	end
	for i in string.gmatch(arg1, "{%S+}") do
		local string_sub_result1 = string.sub(i, 2, #i - 1)
		if arg2[string_sub_result1] then
		end
	end
	return string.gsub(arg1, i, arg2[string_sub_result1].label)
end