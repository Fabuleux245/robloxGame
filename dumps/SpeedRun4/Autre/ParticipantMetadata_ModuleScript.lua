-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:27
-- Luau version 6, Types version 3
-- Time taken: 0.001629 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Cryo_upvr = require(Parent.Cryo)
return require(Parent.Rodux).createReducer({}, {
	[require(Parent.AppChatNetworking).rodux.GetConversationsParticipantsMetadata.Succeeded.name] = function(arg1, arg2) -- Line 22
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		local var14
		for i, v in arg2.responseBody.conversation_participants_metadata do
			local tbl = {}
			for i_2, v_2 in v.participants_metadata do
				tbl[i_2] = {
					isPending = v_2.is_pending;
				}
			end
			var14 = Cryo_upvr.Dictionary.join(var14, {
				[i] = tbl;
			})
		end
		return var14
	end;
	[require(AppChat.Conversations.Actions.RemovedConversation).name] = function(arg1, arg2) -- Line 40
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		local conversationId = arg2.conversationId
		if not conversationId then
			return arg1
		end
		return Cryo_upvr.Dictionary.join(arg1, {
			[conversationId] = Cryo_upvr.None;
		})
	end;
})