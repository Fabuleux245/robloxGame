-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:51
-- Luau version 6, Types version 3
-- Time taken: 0.001697 seconds

local invariant_upvr = require(script.Parent.utils.invariant)
return function(arg1, arg2) -- Line 4
	--[[ Upvalues[1]:
		[1]: invariant_upvr (readonly)
	]]
	local var5
	if arg1.childRouters then
		var5 = arg1.childRouters
		if var5[arg2] then
			var5 = arg1.childRouters
			return var5[arg2]
		end
	end
	if type(arg1.getComponentForRouteName) ~= "function" then
		var5 = false
	else
		var5 = true
	end
	invariant_upvr(var5, "router.getComponentForRouteName must be a function if no child routers are specified")
	var5 = arg2
	local any_getComponentForRouteName_result1_2 = arg1.getComponentForRouteName(var5)
	var5 = type(any_getComponentForRouteName_result1_2)
	if var5 == "table" then
		var5 = any_getComponentForRouteName_result1_2.router
		return var5
	end
	var5 = nil
	return var5
end