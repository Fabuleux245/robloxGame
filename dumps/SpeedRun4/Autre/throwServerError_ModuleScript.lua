-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:36
-- Luau version 6, Types version 3
-- Time taken: 0.000683 seconds

local module = {}
local Error_upvr = require(script.Parent.Parent.Parent.Parent.LuauPolyfill).Error
function module.throwServerError(arg1, arg2, arg3) -- Line 31
	--[[ Upvalues[1]:
		[1]: Error_upvr (readonly)
	]]
	local any_new_result1 = Error_upvr.new(arg3)
	any_new_result1.name = "ServerError"
	any_new_result1.response = arg1
	any_new_result1.statusCode = arg1.status
	any_new_result1.result = arg2
	error(any_new_result1)
end
return module