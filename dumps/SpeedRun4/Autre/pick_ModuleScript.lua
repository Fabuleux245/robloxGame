-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:36
-- Luau version 6, Types version 3
-- Time taken: 0.000486 seconds

return function(arg1, arg2) -- Line 10, Named "pick"
	for i, v in arg1 do
		if arg2(v, i) then
			({})[i] = v
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end