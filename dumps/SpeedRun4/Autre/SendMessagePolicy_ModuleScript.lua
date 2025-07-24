-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:21
-- Luau version 6, Types version 3
-- Time taken: 0.000535 seconds

local module = {}
module.__index = module
function module.onBeforeSendingMessage(arg1, arg2) -- Line 9
end
local Promise_upvr = require(script:FindFirstAncestor("AppChat").Parent.Promise)
function module.sendMessage(arg1, arg2) -- Line 11
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.reject("Not implemented")
end
function module.onSuccess(arg1, arg2, arg3) -- Line 15
	return arg3
end
function module.onFailure(arg1, arg2, arg3) -- Line 19
	return arg3
end
return module