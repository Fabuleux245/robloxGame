-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:36
-- Luau version 6, Types version 3
-- Time taken: 0.002629 seconds

local function _(arg1) -- Line 15, Named "isStackRoute"
	local var2 = false
	if arg1.index ~= nil then
		var2 = false
		if arg1.routes ~= nil then
			if arg1.isTransitioning == nil then
				var2 = false
			else
				var2 = true
			end
		end
	end
	return var2
end
local Array_upvr = require(script:FindFirstAncestor("Navigation").Parent.LuauPolyfill).Array
local function getActiveRoutes_upvr(arg1) -- Line 29, Named "getActiveRoutes"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: getActiveRoutes_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_2 = {}
	if arg1 == nil then
		return module_2
	end
	if arg1.key or arg1.routeName then
		table.insert(module_2, arg1)
	end
	local routes_2 = arg1.routes
	if routes_2 then
		if arg1.index == nil then
			routes_2 = false
		else
			routes_2 = true
		end
	end
	if routes_2 then
		local index_2 = arg1.index
		local var18 = false
		if arg1.index ~= nil then
			var18 = false
			if arg1.routes ~= nil then
				if arg1.isTransitioning == nil then
					var18 = false
				else
					var18 = true
				end
			end
		end
		if var18 then
			for i = 1, index_2 - 1 do
				module_2 = Array_upvr.concat(module_2, getActiveRoutes_upvr(arg1.routes[i]))
				local var19
			end
		end
		module_2 = Array_upvr.concat(module_2, getActiveRoutes_upvr(var19[index_2]))
	end
	return module_2
end
return getActiveRoutes_upvr