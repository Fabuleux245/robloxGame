-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:22
-- Luau version 6, Types version 3
-- Time taken: 0.001133 seconds

local AppChatNetworking = script:FindFirstAncestor("AppChatNetworking")
local CHAT_PLATFORM_BASE_URL_upvr = require(AppChatNetworking.url.CHAT_PLATFORM_BASE_URL)
local Constants_upvr = require(AppChatNetworking.Constants)
local GetFFlagEnableSocialCards_upvr = require(AppChatNetworking.Parent.SharedFlags).GetFFlagEnableSocialCards
return require(script.Parent.RoduxNetworking).GET(script, function(arg1, arg2, arg3) -- Line 17
	--[[ Upvalues[3]:
		[1]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: GetFFlagEnableSocialCards_upvr (readonly)
	]]
	local module_2 = {}
	module_2.conversation_id = arg2
	module_2.cursor = arg3
	local PageSize = Constants_upvr.PageSize
	module_2[1] = PageSize.GET_NEW_MESSAGES
	if GetFFlagEnableSocialCards_upvr() then
		PageSize = true
	else
		PageSize = false
	end
	module_2.include_cards = PageSize
	local module = {}
	module[1] = arg2
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("get-conversation-messages"):queryArgs(module_2):setStatusIds(module)
end)