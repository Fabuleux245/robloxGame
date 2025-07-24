-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:16
-- Luau version 6, Types version 3
-- Time taken: 0.000835 seconds

local CHAT_PLATFORM_BASE_URL_upvr = require(script:FindFirstAncestor("AppChatNetworking").url.CHAT_PLATFORM_BASE_URL)
return require(script.Parent.RoduxNetworking).POST(script, function(arg1, arg2, arg3) -- Line 10
	--[[ Upvalues[1]:
		[1]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
	]]
	local module = {}
	local tbl_2 = {}
	local tbl = {}
	tbl.conversation_to_duplicate = arg2
	tbl.moderation_type = arg3
	tbl.type = "group"
	tbl.participant_user_ids = {}
	tbl_2[1] = tbl
	module.conversations = tbl_2
	local module_2 = {}
	module_2[1] = arg2
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("create-conversations"):body(module):setStatusIds(module_2)
end)