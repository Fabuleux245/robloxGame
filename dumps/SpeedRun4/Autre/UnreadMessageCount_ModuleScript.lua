-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:30
-- Luau version 6, Types version 3
-- Time taken: 0.000460 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
return require(Parent.Rodux).createReducer(0, {
	[require(Parent.AppChatNetworking).rodux.GetConversationMetadata.Succeeded.name] = function(arg1, arg2) -- Line 10
		local responseBody = arg2.responseBody
		if responseBody and responseBody.global_unread_message_count then
			return responseBody.global_unread_message_count
		end
		return arg1
	end;
})