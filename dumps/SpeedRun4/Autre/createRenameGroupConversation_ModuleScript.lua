-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:35
-- Luau version 6, Types version 3
-- Time taken: 0.000529 seconds

local CHAT_URL_upvr = require(script.Parent.Parent.CHAT_URL)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: CHAT_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "RenameGroupConversation";
	}, function(arg1_2, arg2, arg3) -- Line 9
		--[[ Upvalues[1]:
			[1]: CHAT_URL_upvr (copied, readonly)
		]]
		local module = {}
		module.conversationId = arg2
		module.newTitle = arg3
		local module_2 = {}
		module_2[1] = arg2
		return arg1_2(CHAT_URL_upvr):path("v2"):path("rename-group-conversation"):body(module):setStatusIds(module_2)
	end)
end