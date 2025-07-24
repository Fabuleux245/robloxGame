-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:44
-- Luau version 6, Types version 3
-- Time taken: 0.000501 seconds

return function(arg1, ...) -- Line 2, Named "add"
	local module = {}
	for i, _ in pairs(arg1) do
		module[i] = true
	end
	for i_2 = 1, select('#', ...) do
		module[select(i_2, ...)] = true
	end
	return module
end