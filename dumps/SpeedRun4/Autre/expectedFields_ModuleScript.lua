-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:03
-- Luau version 6, Types version 3
-- Time taken: 0.000917 seconds

return function(arg1, arg2) -- Line 1, Named "expectedFields"
	local tbl = {}
	for _, v in ipairs(arg2) do
		tbl[v] = true
	end
	for i_2 in pairs(tbl) do
		local var16
		if arg1[i_2] == nil then
			var16 = false
		else
			var16 = true
		end
		assert(var16, string.format("Expected field %q", i_2))
	end
	for i_3 in pairs(arg1) do
		if tbl[i_3] == nil then
			var16 = false
		else
			var16 = true
		end
		assert(var16, string.format("Did not expect field %q", i_3))
	end
end