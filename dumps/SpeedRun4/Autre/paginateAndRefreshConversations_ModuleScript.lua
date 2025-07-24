-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:15
-- Luau version 6, Types version 3
-- Time taken: 0.002731 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local AppChatNetworking_upvr = require(AppChat.Parent.AppChatNetworking)
local getDeepValue_upvr = require(AppChat.Utils.getDeepValue)
local ConversationChannels_upvr = require(AppChat.Models.ConversationChannels)
local hasConversationChanged_upvr = require(AppChat.Conversations.hasConversationChanged)
local getShouldRefetchMessages_upvr = require(AppChat.Conversations.getShouldRefetchMessages)
local any_new_result1_upvr = require(AppChat.Logger):new("paginateAndRefreshConversations")
local paginateForNewerMessages_upvr = require(AppChat.Conversations.Thunks.paginateForNewerMessages)
local function paginateAndRefreshConversations_upvr(arg1) -- Line 27, Named "paginateAndRefreshConversations"
	--[[ Upvalues[8]:
		[1]: AppChatNetworking_upvr (readonly)
		[2]: getDeepValue_upvr (readonly)
		[3]: ConversationChannels_upvr (readonly)
		[4]: hasConversationChanged_upvr (readonly)
		[5]: getShouldRefetchMessages_upvr (readonly)
		[6]: any_new_result1_upvr (readonly)
		[7]: paginateForNewerMessages_upvr (readonly)
		[8]: paginateAndRefreshConversations_upvr (readonly)
	]]
	return function(arg1_2) -- Line 28
		--[[ Upvalues[9]:
			[1]: AppChatNetworking_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: getDeepValue_upvr (copied, readonly)
			[4]: ConversationChannels_upvr (copied, readonly)
			[5]: hasConversationChanged_upvr (copied, readonly)
			[6]: getShouldRefetchMessages_upvr (copied, readonly)
			[7]: any_new_result1_upvr (copied, readonly)
			[8]: paginateForNewerMessages_upvr (copied, readonly)
			[9]: paginateAndRefreshConversations_upvr (copied, readonly)
		]]
		local any_getState_result1_upvr = arg1_2:getState()
		return arg1_2:dispatch(AppChatNetworking_upvr.rodux.GetUserConversations.API(arg1)):andThen(function(arg1_3) -- Line 35
			--[[ Upvalues[9]:
				[1]: getDeepValue_upvr (copied, readonly)
				[2]: any_getState_result1_upvr (readonly)
				[3]: ConversationChannels_upvr (copied, readonly)
				[4]: hasConversationChanged_upvr (copied, readonly)
				[5]: getShouldRefetchMessages_upvr (copied, readonly)
				[6]: any_new_result1_upvr (copied, readonly)
				[7]: arg1_2 (readonly)
				[8]: paginateForNewerMessages_upvr (copied, readonly)
				[9]: paginateAndRefreshConversations_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [59] 47. Error Block 6 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [59] 47. Error Block 6 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 7. Error Block 15 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [59.9]
			if nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil then
					-- KONSTANTWARNING: GOTO [59] #47
				end
			else
			end
			-- KONSTANTERROR: [8] 7. Error Block 15 end (CF ANALYSIS FAILED)
		end):catch(function(arg1_4) -- Line 63
			warn("Failure in paginateAndRefreshConversations: ", tostring(arg1_4))
			return arg1_4
		end)
	end
end
return function() -- Line 70
	--[[ Upvalues[8]:
		[1]: AppChatNetworking_upvr (readonly)
		[2]: getDeepValue_upvr (readonly)
		[3]: ConversationChannels_upvr (readonly)
		[4]: hasConversationChanged_upvr (readonly)
		[5]: getShouldRefetchMessages_upvr (readonly)
		[6]: any_new_result1_upvr (readonly)
		[7]: paginateForNewerMessages_upvr (readonly)
		[8]: paginateAndRefreshConversations_upvr (readonly)
	]]
	return function(arg1) -- Line 71
		--[[ Upvalues[8]:
			[1]: AppChatNetworking_upvr (copied, readonly)
			[2]: getDeepValue_upvr (copied, readonly)
			[3]: ConversationChannels_upvr (copied, readonly)
			[4]: hasConversationChanged_upvr (copied, readonly)
			[5]: getShouldRefetchMessages_upvr (copied, readonly)
			[6]: any_new_result1_upvr (copied, readonly)
			[7]: paginateForNewerMessages_upvr (copied, readonly)
			[8]: paginateAndRefreshConversations_upvr (copied, readonly)
		]]
		local var16_upvr
		return arg1:dispatch(function(arg1_5) -- Line 28
			--[[ Upvalues[9]:
				[1]: AppChatNetworking_upvr (copied, readonly)
				[2]: var16_upvr (readonly)
				[3]: getDeepValue_upvr (copied, readonly)
				[4]: ConversationChannels_upvr (copied, readonly)
				[5]: hasConversationChanged_upvr (copied, readonly)
				[6]: getShouldRefetchMessages_upvr (copied, readonly)
				[7]: any_new_result1_upvr (copied, readonly)
				[8]: paginateForNewerMessages_upvr (copied, readonly)
				[9]: paginateAndRefreshConversations_upvr (copied, readonly)
			]]
			local any_getState_result1_upvr_2 = arg1_5:getState()
			return arg1_5:dispatch(AppChatNetworking_upvr.rodux.GetUserConversations.API(var16_upvr)):andThen(function(arg1_6) -- Line 35
				--[[ Upvalues[9]:
					[1]: getDeepValue_upvr (copied, readonly)
					[2]: any_getState_result1_upvr_2 (readonly)
					[3]: ConversationChannels_upvr (copied, readonly)
					[4]: hasConversationChanged_upvr (copied, readonly)
					[5]: getShouldRefetchMessages_upvr (copied, readonly)
					[6]: any_new_result1_upvr (copied, readonly)
					[7]: arg1_5 (readonly)
					[8]: paginateForNewerMessages_upvr (copied, readonly)
					[9]: paginateAndRefreshConversations_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [59] 47. Error Block 6 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [59] 47. Error Block 6 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [8] 7. Error Block 15 start (CF ANALYSIS FAILED)
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [59.9]
				if nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if nil then
						-- KONSTANTWARNING: GOTO [59] #47
					end
				else
				end
				-- KONSTANTERROR: [8] 7. Error Block 15 end (CF ANALYSIS FAILED)
			end):catch(function(arg1_7) -- Line 63
				warn("Failure in paginateAndRefreshConversations: ", tostring(arg1_7))
				return arg1_7
			end)
		end)
	end
end