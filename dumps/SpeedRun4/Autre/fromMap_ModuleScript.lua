-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:06
-- Luau version 6, Types version 3
-- Time taken: 0.001126 seconds

return function(arg1, arg2, arg3) -- Line 11
	if arg2 then
		for i, v in arg1 do
			if arg3 ~= nil then
				({})[i] = arg2(arg3, v, i)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({})[i] = arg2(v, i)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end
	for i_2, v_2 in arg1 do
		({})[i_2] = v_2
		local var11
	end
	return var11
end