-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:32
-- Luau version 6, Types version 3
-- Time taken: 0.000573 seconds

local module = {
	addPath = function(arg1, arg2, arg3) -- Line 21, Named "addPath"
		local module_3 = {}
		module_3.prev = arg1
		module_3.key = arg2
		module_3.typename = arg3
		return module_3
	end;
}
local Array_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Array
function module.pathToArray(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local module_2 = {}
	local var5 = arg1
	while var5 do
		table.insert(module_2, var5.key)
	end
	return Array_upvr.reverse(module_2)
end
return module