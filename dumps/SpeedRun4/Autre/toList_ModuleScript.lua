-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:46
-- Luau version 6, Types version 3
-- Time taken: 0.000587 seconds

return function(arg1) -- Line 2, Named "toList"
	local module = {}
	local var6 = 1
	for i, _ in pairs(arg1) do
		module[var6] = i
		var6 += 1
	end
	return module
end