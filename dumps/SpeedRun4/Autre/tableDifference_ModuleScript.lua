-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:51
-- Luau version 6, Types version 3
-- Time taken: 0.000500 seconds

return function(arg1, arg2) -- Line 5
	for i, v in pairs(arg1) do
		if arg2[i] ~= arg1[i] then
			({})[i] = v
		end
	end
	for i_2, v_2 in pairs(arg2) do
		if arg2[i_2] ~= arg1[i_2] then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[i_2] = v_2
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end