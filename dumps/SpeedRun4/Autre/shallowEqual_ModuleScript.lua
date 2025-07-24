-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:50
-- Luau version 6, Types version 3
-- Time taken: 0.002074 seconds

return function(arg1, arg2, arg3) -- Line 5
	if not arg1 or not arg2 then
		return false
	end
	if arg1 == arg2 then
		return true
	end
	if not arg3 then
	end
	for i, v in pairs(arg1) do
		if arg2[i] ~= v and not ({})[i] then
			return false
		end
	end
	for i_2, v_2 in pairs(arg2) do
		if arg1[i_2] ~= v_2 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not ({})[i_2] then
				return false
			end
		end
	end
	return true
end