-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:09
-- Luau version 6, Types version 3
-- Time taken: 0.001681 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Logger_upvr = require(AppChat.Logger)
local AppChatNetworking_upvr = require(AppChat.Parent.AppChatNetworking)
local processConversations_upvr = require(script.Parent.processConversations)
local ConversationChannels_upvr = require(AppChat.Models.ConversationChannels)
return function(arg1) -- Line 15
	--[[ Upvalues[4]:
		[1]: Logger_upvr (readonly)
		[2]: AppChatNetworking_upvr (readonly)
		[3]: processConversations_upvr (readonly)
		[4]: ConversationChannels_upvr (readonly)
	]]
	return function(arg1_2) -- Line 16
		--[[ Upvalues[5]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: AppChatNetworking_upvr (copied, readonly)
			[4]: processConversations_upvr (copied, readonly)
			[5]: ConversationChannels_upvr (copied, readonly)
		]]
		Logger_upvr:info("Fetching latest conversation details for conversationId: {}", arg1)
		return arg1_2:dispatch(AppChatNetworking_upvr.rodux.GetConversationDetails.API(arg1)):andThen(function(arg1_3) -- Line 20
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: processConversations_upvr (copied, readonly)
				[3]: ConversationChannels_upvr (copied, readonly)
			]]
			local responseBody = arg1_3.responseBody
			local conversations = responseBody.conversations
			if conversations then
				if #responseBody.conversations ~= 1 then
					conversations = false
				else
					conversations = true
				end
			end
			assert(conversations, "Expected exactly one conversation in response body")
			arg1_2:dispatch(processConversations_upvr(responseBody.conversations))
			return ConversationChannels_upvr.fromChannelsApi(responseBody.conversations[1])
		end):catch(function(arg1_4) -- Line 31
			--[[ Upvalues[1]:
				[1]: Logger_upvr (copied, readonly)
			]]
			Logger_upvr:warning("Failure in fetchLatestConversationDetails, Status: "..tostring(arg1_4))
		end)
	end
end