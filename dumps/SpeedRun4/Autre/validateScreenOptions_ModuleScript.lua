-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:06
-- Luau version 6, Types version 3
-- Time taken: 0.000651 seconds

local invariant_upvr = require(script.Parent.Parent.utils.invariant)
return function(arg1, arg2) -- Line 3
	--[[ Upvalues[1]:
		[1]: invariant_upvr (readonly)
	]]
	local var3
	if type(arg1.title) == "function" then
		var3 = false
	else
		var3 = true
	end
	invariant_upvr(var3, "title cannot be defined as a function in navigation options for screen '%s'", arg2.routeName)
end