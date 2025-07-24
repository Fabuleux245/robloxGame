-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:17
-- Luau version 6, Types version 3
-- Time taken: 0.000944 seconds

local AppChatNetworking = script:FindFirstAncestor("AppChatNetworking")
local LuauPolyfill_upvr = require(AppChatNetworking.Parent.LuauPolyfill)
local CHAT_PLATFORM_BASE_URL_upvr = require(AppChatNetworking.url.CHAT_PLATFORM_BASE_URL)
return require(script.Parent.RoduxNetworking).POST(script, function(arg1, arg2, arg3) -- Line 10
	--[[ Upvalues[2]:
		[1]: LuauPolyfill_upvr (readonly)
		[2]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
	]]
	local module = {}
	module.source_conversation_id = arg2
	module.participant_user_ids = LuauPolyfill_upvr.Array.map(arg3, function(arg1_2) -- Line 11
		return tonumber(arg1_2)
	end)
	local module_2 = {}
	module_2[1] = arg2
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("expand-to-group-conversation"):body(module):setStatusIds(module_2)
end)