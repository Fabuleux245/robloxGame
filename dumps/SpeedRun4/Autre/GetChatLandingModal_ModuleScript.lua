-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:17
-- Luau version 6, Types version 3
-- Time taken: 0.000691 seconds

local CHAT_PLATFORM_BASE_URL_upvr = require(script:FindFirstAncestor("AppChatNetworking").url.CHAT_PLATFORM_BASE_URL)
return require(script.Parent.RoduxNetworking).POST(script, function(arg1, arg2) -- Line 6
	--[[ Upvalues[1]:
		[1]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
	]]
	local module = {}
	module.is_in_experience = arg2
	module.modal_sequence = "chat_landing_modal"
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v2"):path("get-modal-sequence"):body(module):setStatusIds({"chat_landing_modal"})
end)