-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:06
-- Luau version 6, Types version 3
-- Time taken: 0.001021 seconds

local AppChatNetworking = script:FindFirstAncestor("AppChatNetworking")
local default_upvr = require(AppChatNetworking.url.HttpRequest).default
local HttpService_upvr = game:GetService("HttpService")
local CHAT_PLATFORM_BASE_URL_upvr = require(AppChatNetworking.url.CHAT_PLATFORM_BASE_URL)
return function(arg1, arg2, arg3, arg4) -- Line 10
	--[[ Upvalues[3]:
		[1]: default_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
	]]
	local var6 = arg1
	if not var6 then
		var6 = default_upvr
	end
	local tbl_3 = {}
	tbl_3.conversation_id = arg2
	local tbl = {}
	local tbl_2 = {}
	tbl_2.content = arg3
	tbl_2.replies_to = arg4
	tbl[1] = tbl_2
	tbl_3.messages = tbl
	return var6(`{CHAT_PLATFORM_BASE_URL_upvr}/v1/send-messages`, "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl_3);
	})
end