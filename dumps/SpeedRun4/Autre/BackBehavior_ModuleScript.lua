-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:48
-- Luau version 6, Types version 3
-- Time taken: 0.000710 seconds

local NavigationSymbol = require(script.Parent.NavigationSymbol)
local module = {
	None = NavigationSymbol("NONE");
	InitialRoute = NavigationSymbol("INITIAL_ROUTE");
	Order = NavigationSymbol("ORDER");
	History = NavigationSymbol("HISTORY");
}
setmetatable(module, {
	__index = function(arg1, arg2) -- Line 24, Named "__index"
		error("%q is not a valid member of BackBehavior":format(tostring(arg2)), 2)
	end;
})
return module