-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:41
-- Luau version 6, Types version 3
-- Time taken: 0.000385 seconds

return function(arg1, ...) -- Line 1, Named "assign"
	for i = 1, select('#', ...) do
		for i_2, v in pairs(select(i, ...)) do
			arg1[i_2] = v
		end
	end
	return arg1
end