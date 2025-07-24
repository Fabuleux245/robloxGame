-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:38
-- Luau version 6, Types version 3
-- Time taken: 0.000505 seconds

return require(script:FindFirstAncestor("FriendsRodux").Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2) -- Line 5
	local module = {}
	local tbl = {}
	tbl.userId1 = arg1
	tbl.userId2 = arg2
	module.payload = tbl
	return module
end)