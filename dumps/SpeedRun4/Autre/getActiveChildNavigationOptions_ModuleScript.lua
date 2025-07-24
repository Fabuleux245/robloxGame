-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:07
-- Luau version 6, Types version 3
-- Time taken: 0.000286 seconds

return function(arg1, arg2) -- Line 4
	local state = arg1.state
	return arg1.router.getScreenOptions(arg1.getChildNavigation(state.routes[state.index].key), arg2)
end