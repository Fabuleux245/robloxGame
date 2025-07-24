-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:26
-- Luau version 6, Types version 3
-- Time taken: 0.000871 seconds

local Packages = script:FindFirstAncestor("Packages")
local FFlagAppChatEnableFriendConversationModals_upvr = require(Packages.SharedFlags).FFlagAppChatEnableFriendConversationModals
local any_new_result1_upvr = require(Packages.Loggers).Logger:new(script.Name)
local CHAT_PLATFORM_BASE_URL_upvr = require(script:FindFirstAncestor("AppChatNetworking").url.CHAT_PLATFORM_BASE_URL)
return require(script.Parent.RoduxNetworking).POST(script, function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 14
	--[[ Upvalues[3]:
		[1]: FFlagAppChatEnableFriendConversationModals_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
	]]
	if FFlagAppChatEnableFriendConversationModals_upvr and arg6 and arg7 then
		any_new_result1_upvr:warn("Both conversation ID and friend ID provided to RecordModalSequenceResponse.")
	end
	local module = {}
	module.action_type = arg2
	module.modal_sequence = arg3
	module.modal_id = arg4
	module.modal_variant = arg5
	module.conversation_id = arg6
	module.friend_id = arg7
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("record-modal-sequence-response"):body(module)
end)