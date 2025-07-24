-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:24
-- Luau version 6, Types version 3
-- Time taken: 0.000336 seconds

return require(script:FindFirstAncestor("RoduxSquads").Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2, arg3, arg4) -- Line 7
	local module = {}
	local tbl = {}
	tbl.experienceInviteId = arg1
	tbl.membershipEntityId = arg2
	tbl.notificationId = arg3
	tbl.isInviter = arg4
	module.payload = tbl
	return module
end)