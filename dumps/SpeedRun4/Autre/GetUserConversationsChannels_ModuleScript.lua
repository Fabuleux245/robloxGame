-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:24
-- Luau version 6, Types version 3
-- Time taken: 0.001161 seconds

local AppChatNetworking = script:FindFirstAncestor("AppChatNetworking")
local Parent = AppChatNetworking.Parent
local CHAT_PLATFORM_BASE_URL_upvr = require(AppChatNetworking.url.CHAT_PLATFORM_BASE_URL)
local GetFFlagEnableSocialCards_upvr = require(Parent.SharedFlags).GetFFlagEnableSocialCards
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
return require(script.Parent.RoduxNetworking).GET(script, function(arg1, arg2) -- Line 9
	--[[ Upvalues[3]:
		[1]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
		[2]: GetFFlagEnableSocialCards_upvr (readonly)
		[3]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
	]]
	local module = {}
	module.cursor = arg2
	local var8
	if GetFFlagEnableSocialCards_upvr() then
		var8 = true
	else
		var8 = false
	end
	module.include_cards = var8
	var8 = true
	module.include_user_data = var8
	var8 = true
	module.include_messages = var8
	if GetFFlagLuaAppEnableSquadPage_upvr() then
		var8 = true
	else
		var8 = false
	end
	module.check_for_group_up = var8
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("get-user-conversations"):queryArgs(module)
end)