-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:56
-- Luau version 6, Types version 3
-- Time taken: 0.000342 seconds

return require(script:FindFirstAncestor("ExpChatShared").Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2, arg3, arg4) -- Line 15
	local module = {
		userId = tostring(arg1);
	}
	module.username = arg2
	module.displayName = arg3
	module.hasVerifiedBadge = arg4
	return module
end)