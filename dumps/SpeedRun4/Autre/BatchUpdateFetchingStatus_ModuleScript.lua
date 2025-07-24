-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:47
-- Luau version 6, Types version 3
-- Time taken: 0.000554 seconds

return require(script:FindFirstAncestor("Http").Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2) -- Line 11
	local module = {}
	module.fetchingStatuses = arg1
	module.shouldImmediatelyDispatch = arg2 or false
	return module
end)