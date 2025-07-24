-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:04
-- Luau version 6, Types version 3
-- Time taken: 0.000972 seconds

local module = {}
local Array_upvr = require(script.Parent.Parent.Parent.Parent.LuauPolyfill).Array
function module.isNonEmptyArray(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	return (function() -- Line 15
		--[[ Upvalues[2]:
			[1]: Array_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local any_isArray_result1 = Array_upvr.isArray(arg1)
		if any_isArray_result1 then
			if 0 >= #arg1 then
				any_isArray_result1 = false
			else
				any_isArray_result1 = true
			end
			return any_isArray_result1
		end
		return Array_upvr.isArray(arg1)
	end)()
end
return module