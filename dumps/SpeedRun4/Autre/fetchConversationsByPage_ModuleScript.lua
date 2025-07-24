-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:08
-- Luau version 6, Types version 3
-- Time taken: 0.001594 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local AppChatNetworking_upvr = require(AppChat.Parent.AppChatNetworking)
local processConversations_upvr = require(script.Parent.processConversations)
return function(arg1) -- Line 15
	--[[ Upvalues[3]:
		[1]: any_new_result1_upvr (readonly)
		[2]: AppChatNetworking_upvr (readonly)
		[3]: processConversations_upvr (readonly)
	]]
	any_new_result1_upvr:info("Fetching conversations by page with cursor {}", arg1 or "nil")
	return function(arg1_2) -- Line 17
		--[[ Upvalues[4]:
			[1]: AppChatNetworking_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: processConversations_upvr (copied, readonly)
			[4]: any_new_result1_upvr (copied, readonly)
		]]
		return arg1_2:dispatch(AppChatNetworking_upvr.rodux.GetUserConversations.API(arg1)):tap(function(arg1_3) -- Line 20
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: processConversations_upvr (copied, readonly)
			]]
			arg1_2:dispatch(processConversations_upvr(arg1_3.responseBody.conversations))
		end):andThen(function(arg1_4) -- Line 23
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			local responseBody = arg1_4.responseBody
			if responseBody and responseBody.next_cursor and responseBody.next_cursor ~= "" then
				any_new_result1_upvr:debug("Next cursor found: {}", responseBody.next_cursor)
				return arg1, responseBody.next_cursor
			end
			any_new_result1_upvr:debug("No next cursor found")
			return arg1, ""
		end):catch(function(arg1_5) -- Line 33
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (copied, readonly)
			]]
			any_new_result1_upvr:warning("Error in GetUserConversations request. Error: {}", tostring(arg1_5))
		end)
	end
end