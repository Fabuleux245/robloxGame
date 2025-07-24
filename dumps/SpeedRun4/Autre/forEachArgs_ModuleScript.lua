-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:20
-- Luau version 6, Types version 3
-- Time taken: 0.000504 seconds

return function(arg1, ...) -- Line 7, Named "forEachArgs"
	for i = 1, select('#', ...) do
		arg1(select(i, ...), i)
	end
end