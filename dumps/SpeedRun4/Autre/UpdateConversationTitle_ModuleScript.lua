-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:28
-- Luau version 6, Types version 3
-- Time taken: 0.000446 seconds

local CHAT_PLATFORM_BASE_URL_upvr = require(script:FindFirstAncestor("AppChatNetworking").url.CHAT_PLATFORM_BASE_URL)
return require(script.Parent.RoduxNetworking).POST(script, function(arg1, arg2, arg3) -- Line 10
	--[[ Upvalues[1]:
		[1]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
	]]
	local module = {}
	local tbl = {}
	local tbl_2 = {}
	tbl_2.id = arg2
	tbl_2.name = arg3
	tbl[1] = tbl_2
	module.conversations = tbl
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("update-conversations"):body(module):setStatusIds(arg2)
end)