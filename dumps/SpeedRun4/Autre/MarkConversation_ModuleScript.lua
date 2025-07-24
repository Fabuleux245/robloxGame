-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:24
-- Luau version 6, Types version 3
-- Time taken: 0.000682 seconds

local CHAT_PLATFORM_BASE_URL_upvr = require(script:FindFirstAncestor("AppChatNetworking").url.CHAT_PLATFORM_BASE_URL)
return require(script.Parent.RoduxNetworking).POST(script, function(arg1, arg2) -- Line 9
	--[[ Upvalues[1]:
		[1]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
	]]
	local module_2 = {}
	local tbl = {}
	tbl[1] = arg2
	module_2.conversation_ids = tbl
	local module = {}
	module[1] = arg2
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("mark-conversations"):body(module_2):setStatusIds(module)
end)