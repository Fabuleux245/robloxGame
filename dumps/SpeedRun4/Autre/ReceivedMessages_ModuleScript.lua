-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:50
-- Luau version 6, Types version 3
-- Time taken: 0.000337 seconds

return require(script:FindFirstAncestor("AppChat").Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2, arg3, arg4) -- Line 6
	local module = {}
	module.conversationId = arg1
	module.messages = arg2
	module.shouldMarkConversationUnread = arg3
	module.exclusiveStartMessageId = arg4
	return module
end)