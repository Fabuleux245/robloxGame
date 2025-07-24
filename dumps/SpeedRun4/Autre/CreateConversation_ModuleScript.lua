-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:15
-- Luau version 6, Types version 3
-- Time taken: 0.000983 seconds

local AppChatNetworking = script:FindFirstAncestor("AppChatNetworking")
local LuauPolyfill_upvr = require(AppChatNetworking.Parent.LuauPolyfill)
local CHAT_PLATFORM_BASE_URL_upvr = require(AppChatNetworking.url.CHAT_PLATFORM_BASE_URL)
return require(script.Parent.RoduxNetworking).POST(script, function(arg1, arg2, arg3, arg4) -- Line 15
	--[[ Upvalues[2]:
		[1]: LuauPolyfill_upvr (readonly)
		[2]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
	]]
	local module = {}
	local tbl_2 = {}
	local tbl = {}
	tbl.type = arg2
	tbl.name = arg4
	tbl.participant_user_ids = LuauPolyfill_upvr.Array.map(arg3, function(arg1_2) -- Line 21
		return tonumber(arg1_2)
	end)
	tbl_2[1] = tbl
	module.conversations = tbl_2
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("create-conversations"):body(module):setStatusIds(arg3)
end)