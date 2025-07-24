-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:26
-- Luau version 6, Types version 3
-- Time taken: 0.000755 seconds

local AppChatNetworking = script:FindFirstAncestor("AppChatNetworking")
local CHAT_PLATFORM_BASE_URL_upvr = require(AppChatNetworking.url.CHAT_PLATFORM_BASE_URL)
local GetFFlagEnableSocialCards_upvr = require(AppChatNetworking.Parent.SharedFlags).GetFFlagEnableSocialCards
return require(script.Parent.RoduxNetworking).POST(script, function(arg1, arg2) -- Line 9
	--[[ Upvalues[2]:
		[1]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
		[2]: GetFFlagEnableSocialCards_upvr (readonly)
	]]
	local module = {}
	module.ids = arg2
	local var6
	if GetFFlagEnableSocialCards_upvr() then
		var6 = true
	else
		var6 = false
	end
	module.include_cards = var6
	var6 = true
	module.include_participants = var6
	var6 = true
	module.include_user_data = var6
	var6 = true
	module.include_messages = var6
	var6 = true
	module.check_for_group_up = var6
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("get-conversations"):body(module):setStatusIds(arg2)
end)