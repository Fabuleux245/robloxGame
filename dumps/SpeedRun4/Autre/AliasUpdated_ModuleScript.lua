-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:50
-- Luau version 6, Types version 3
-- Time taken: 0.000518 seconds

return require(script:FindFirstAncestor("RoduxAliases").Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2) -- Line 5
	local module = {}
	local tbl = {}
	tbl.userId = arg1
	tbl.newAlias = arg2
	module.payload = tbl
	return module
end)