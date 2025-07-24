-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:37
-- Luau version 6, Types version 3
-- Time taken: 0.000334 seconds

return require(script:FindFirstAncestor("UserLib").Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2, arg3) -- Line 6
	local module = {
		userId = tostring(arg1);
	}
	module.presence = arg2
	module.lastLocation = arg3
	return module
end)