-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:39
-- Luau version 6, Types version 3
-- Time taken: 0.000729 seconds

local Array_upvr = require(script:FindFirstAncestor("Navigation").Parent.LuauPolyfill).Array
local function getFocusedRoutes_upvr(arg1) -- Line 10, Named "getFocusedRoutes"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: getFocusedRoutes_upvr (readonly)
	]]
	local var2
	if arg1 == nil then
		return var2
	end
	if arg1.key or arg1.routeName then
		table.insert(var2, arg1)
	end
	local routes = arg1.routes
	if routes then
		if arg1.index == nil then
			routes = false
		else
			routes = true
		end
	end
	if routes then
		var2 = Array_upvr.concat(var2, getFocusedRoutes_upvr(arg1.routes[arg1.index]))
	end
	return var2
end
return getFocusedRoutes_upvr