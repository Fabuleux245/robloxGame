-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:01
-- Luau version 6, Types version 3
-- Time taken: 0.000970 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local useLocalUserId_upvr = require(AppChat.Parent.RobloxAppHooks).useLocalUserId
local useGetConversationFromId_upvr = require(AppChat.Hooks.useGetConversationFromId)
local getOtherParticipants_upvr = require(AppChat.Conversations.getOtherParticipants)
return function(arg1) -- Line 8
	--[[ Upvalues[3]:
		[1]: useLocalUserId_upvr (readonly)
		[2]: useGetConversationFromId_upvr (readonly)
		[3]: getOtherParticipants_upvr (readonly)
	]]
	local useLocalUserId_upvr_result1 = useLocalUserId_upvr()
	if not arg1 or not useLocalUserId_upvr_result1 then
		return nil
	end
	local useGetConversationFromId_upvr_result1 = useGetConversationFromId_upvr(arg1)
	if not useGetConversationFromId_upvr_result1 then
		return nil
	end
	if useGetConversationFromId_upvr_result1.type ~= "one_to_one" then
		return nil
	end
	local var5_result1 = getOtherParticipants_upvr(useGetConversationFromId_upvr_result1, useLocalUserId_upvr_result1)
	if #var5_result1 ~= 1 then
		return nil
	end
	return var5_result1[1]
end