-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:01
-- Luau version 6, Types version 3
-- Time taken: 0.000506 seconds

return function(arg1) -- Line 1, Named "getAncestors"
	local module = {}
	module[1] = arg1
	local var2 = arg1
	while var2.Parent do
		table.insert(module, var2.Parent)
	end
	return module
end