-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:05
-- Luau version 6, Types version 3
-- Time taken: 0.000596 seconds

return function(arg1, arg2, arg3) -- Line 11
	if arg2 then
		local len = #arg1
		for i = 1, len do
			if arg3 ~= nil then
				table.create(len)[i] = arg2(arg3, arg1[i], i)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.create(len)[i] = arg2(arg1[i], i)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return table.create(len)
	end
	return table.clone(arg1)
end