-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:13
-- Luau version 6, Types version 3
-- Time taken: 0.001013 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useGetConversationFromId_upvr = require(AppChat.Hooks.useGetConversationFromId)
local useGetOneToOneFriendIdFromConversationId_upvr = require(AppChat.Hooks.useGetOneToOneFriendIdFromConversationId)
local FFlagAppChatFixModalRecordEvent_upvr = require(AppChat.Flags.FFlagAppChatFixModalRecordEvent)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
return function(arg1) -- Line 12
	--[[ Upvalues[5]:
		[1]: useDispatch_upvr (readonly)
		[2]: useGetConversationFromId_upvr (readonly)
		[3]: useGetOneToOneFriendIdFromConversationId_upvr (readonly)
		[4]: FFlagAppChatFixModalRecordEvent_upvr (readonly)
		[5]: AppChatNetworking_upvr (readonly)
	]]
	local useGetConversationFromId_upvr_result1_upvr = useGetConversationFromId_upvr(arg1)
	local var6_result1_upvw = useGetOneToOneFriendIdFromConversationId_upvr(arg1)
	if not FFlagAppChatFixModalRecordEvent_upvr and useGetConversationFromId_upvr_result1_upvr and useGetConversationFromId_upvr_result1_upvr.source == "friends" then
		var6_result1_upvw = useGetOneToOneFriendIdFromConversationId_upvr(arg1)
	end
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	return function(arg1_2, arg2, arg3, arg4) -- Line 24
		--[[ Upvalues[5]:
			[1]: useGetConversationFromId_upvr_result1_upvr (readonly)
			[2]: var6_result1_upvw (read and write)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: AppChatNetworking_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		if useGetConversationFromId_upvr_result1_upvr and useGetConversationFromId_upvr_result1_upvr.source == "friends" and var6_result1_upvw then
			return useDispatch_upvr_result1_upvr(AppChatNetworking_upvr.rodux.RecordModalSequenceResponse.API(arg1_2, arg2, arg3, arg4, nil, var6_result1_upvw))
		end
		return useDispatch_upvr_result1_upvr(AppChatNetworking_upvr.rodux.RecordModalSequenceResponse.API(arg1_2, arg2, arg3, arg4, arg1))
	end
end