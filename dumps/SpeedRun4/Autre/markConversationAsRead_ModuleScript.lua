-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:39
-- Luau version 6, Types version 3
-- Time taken: 0.000745 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local getDeepValue_upvr = require(AppChat.Utils.getDeepValue)
local Logger_upvr = require(AppChat.Logger)
local AppChatNetworking_upvr = require(AppChat.Parent.AppChatNetworking)
return function(arg1) -- Line 8, Named "markConversationAsRead"
	--[[ Upvalues[3]:
		[1]: getDeepValue_upvr (readonly)
		[2]: Logger_upvr (readonly)
		[3]: AppChatNetworking_upvr (readonly)
	]]
	return function(arg1_2) -- Line 9
		--[[ Upvalues[4]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Logger_upvr (copied, readonly)
			[4]: AppChatNetworking_upvr (copied, readonly)
		]]
		local var2_result1 = getDeepValue_upvr(arg1_2:getState(), string.format("ChatAppReducer.Conversations.%s", arg1 or ""))
		if var2_result1 and var2_result1.hasUnreadMessages then
			Logger_upvr:info("Marking conversation {} as read", arg1)
			arg1_2:dispatch(AppChatNetworking_upvr.rodux.MarkConversation.API(arg1)):catch(function(arg1_3) -- Line 14
				--[[ Upvalues[1]:
					[1]: Logger_upvr (copied, readonly)
				]]
				Logger_upvr:error(`AppChatNetworking failure in markConversationAsRead, Status: {tostring(arg1_3)}`)
			end)
		end
	end
end