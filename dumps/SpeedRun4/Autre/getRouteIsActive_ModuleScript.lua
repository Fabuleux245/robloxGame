-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:40
-- Luau version 6, Types version 3
-- Time taken: 0.000950 seconds

local Navigation = script:FindFirstAncestor("Navigation")
local Array_upvr = require(Navigation.Parent.LuauPolyfill).Array
local getActiveRoutes_upvr = require(Navigation.getActiveRoutes)
return function(arg1, arg2) -- Line 12, Named "getRouteIsActive"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: getActiveRoutes_upvr (readonly)
	]]
	local var6
	if Array_upvr.find(getActiveRoutes_upvr(arg1), function(arg1_2) -- Line 13
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var5
		if arg1_2.routeName ~= arg2 then
			var5 = false
		else
			var5 = true
		end
		return var5
	end) == nil then
		var6 = false
	else
		var6 = true
	end
	return var6
end