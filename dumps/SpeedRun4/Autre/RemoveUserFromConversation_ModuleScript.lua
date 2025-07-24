-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:27
-- Luau version 6, Types version 3
-- Time taken: 0.000759 seconds

local CHAT_PLATFORM_BASE_URL_upvr = require(script:FindFirstAncestor("AppChatNetworking").url.CHAT_PLATFORM_BASE_URL)
return require(script.Parent.RoduxNetworking).POST(script, function(arg1, arg2, arg3) -- Line 6
	--[[ Upvalues[1]:
		[1]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
	]]
	local tonumber_result1 = tonumber(arg3)
	assert(tonumber_result1, "Invalid removingUserId provided. Could not be converted to a number.")
	local module = {}
	module.conversation_id = arg2
	module.user_ids = {tonumber_result1}
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("remove-users"):body(module)
end)