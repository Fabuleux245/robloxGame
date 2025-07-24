-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:50
-- Luau version 6, Types version 3
-- Time taken: 0.000344 seconds

return require(script:FindFirstAncestor("RoduxAliases").Parent.Rodux).makeActionCreator(require(script.Parent.ActionDomain)..script.Name, function(arg1) -- Line 6
	local module = {}
	local tbl = {}
	tbl.showUserAlias = arg1
	module.payload = tbl
	return module
end)