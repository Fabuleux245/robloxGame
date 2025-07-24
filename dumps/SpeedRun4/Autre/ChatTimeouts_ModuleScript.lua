-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:23
-- Luau version 6, Types version 3
-- Time taken: 0.002172 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Cryo_upvr = require(Parent.Cryo)
local function serializeChatTimeoutRange_upvr(arg1) -- Line 32, Named "serializeChatTimeoutRange"
	local DateTime_now_result1 = DateTime.now()
	return {
		endTimestamp = math.clamp(DateTime_now_result1.UnixTimestamp + arg1.time_remaining, -17987443200, 253402300799);
		decisionEventId = arg1.decision_event_id;
		duration = math.clamp((DateTime.fromIsoDate(arg1.end_time) or DateTime_now_result1).UnixTimestamp - (DateTime.fromIsoDate(arg1.start_time) or DateTime_now_result1).UnixTimestamp, 0, 253402300799);
	}
end
return require(Parent.Rodux).createReducer({
	userTimeout = {};
	byConversationId = {};
}, {
	[require(Parent.AppChatNetworking).rodux.GetChatModerationStatuses.Succeeded.name] = function(arg1, arg2) -- Line 44
		--[[ Upvalues[2]:
			[1]: serializeChatTimeoutRange_upvr (readonly)
			[2]: Cryo_upvr (readonly)
		]]
		local responseBody = arg2.responseBody
		local var14
		if responseBody.user_timeout_range then
			var14 = Cryo_upvr.Dictionary.join(var14, {
				userTimeout = serializeChatTimeoutRange_upvr(responseBody.user_timeout_range);
			})
		end
		if responseBody.conversation_timeout_ranges then
			for _, v in responseBody.conversation_timeout_ranges do
				var14 = Cryo_upvr.Dictionary.join(var14, {
					byConversationId = Cryo_upvr.Dictionary.join(var14.byConversationId, {
						[v.id] = serializeChatTimeoutRange_upvr(v.timeout_range);
					});
				})
			end
		end
		return var14
	end;
	[require(AppChat.Conversations.Actions.RemovedConversation).name] = function(arg1, arg2) -- Line 65
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			byConversationId = Cryo_upvr.Dictionary.join(arg1.byConversationId, {
				[arg2.conversationId] = Cryo_upvr.None;
			});
		})
	end;
})