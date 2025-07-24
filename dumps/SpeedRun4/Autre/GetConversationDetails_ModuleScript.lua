-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:19
-- Luau version 6, Types version 3
-- Time taken: 0.001426 seconds

local AppChatNetworking = script:FindFirstAncestor("AppChatNetworking")
local Parent = AppChatNetworking.Parent
local CHAT_PLATFORM_BASE_URL_upvr = require(AppChatNetworking.url.CHAT_PLATFORM_BASE_URL)
local GetFFlagEnableSocialCards_upvr = require(Parent.SharedFlags).GetFFlagEnableSocialCards
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
return require(script.Parent.RoduxNetworking).POST(script, function(arg1, arg2) -- Line 9
	--[[ Upvalues[3]:
		[1]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
		[2]: GetFFlagEnableSocialCards_upvr (readonly)
		[3]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
	]]
	local module = {}
	local tbl = {}
	tbl[1] = arg2
	module.ids = tbl
	if GetFFlagEnableSocialCards_upvr() then
		tbl = true
	else
		tbl = false
	end
	module.include_cards = tbl
	tbl = true
	module.include_participants = tbl
	tbl = true
	module.include_user_data = tbl
	tbl = true
	module.include_messages = tbl
	if GetFFlagLuaAppEnableSquadPage_upvr() then
		tbl = true
	else
		tbl = false
	end
	module.check_for_group_up = tbl
	local module_2 = {}
	tbl = arg2
	module_2[1] = tbl
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("get-conversations"):body(module):setStatusIds(module_2)
end)