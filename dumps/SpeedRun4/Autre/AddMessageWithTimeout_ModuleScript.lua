-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:40
-- Luau version 6, Types version 3
-- Time taken: 0.001938 seconds

local maybeAssert_upvr = require(script.Parent.Parent.Helpers.maybeAssert)
local Types_upvr = require(script.Parent.Parent.Types)
local AddMessage_upvr = require(script.Parent.AddMessage)
local getSettingsForMessage_upvr = require(script.Parent.Parent.Helpers.getSettingsForMessage)
local RemoveMessage_upvr = require(script.Parent.RemoveMessage)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local game_DefineFastInt_result1_upvr = game:DefineFastInt("BubbleChatAddMessageRolloutPercent", 100)
return function(arg1) -- Line 13, Named "addMessageWithTimeout"
	--[[ Upvalues[7]:
		[1]: maybeAssert_upvr (readonly)
		[2]: Types_upvr (readonly)
		[3]: AddMessage_upvr (readonly)
		[4]: getSettingsForMessage_upvr (readonly)
		[5]: RemoveMessage_upvr (readonly)
		[6]: RbxAnalyticsService_upvr (readonly)
		[7]: game_DefineFastInt_result1_upvr (readonly)
	]]
	maybeAssert_upvr(Types_upvr.IMessage(arg1))
	return function(arg1_2) -- Line 16
		--[[ Upvalues[6]:
			[1]: AddMessage_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: getSettingsForMessage_upvr (copied, readonly)
			[4]: RemoveMessage_upvr (copied, readonly)
			[5]: RbxAnalyticsService_upvr (copied, readonly)
			[6]: game_DefineFastInt_result1_upvr (copied, readonly)
		]]
		arg1_2:dispatch(AddMessage_upvr(arg1))
		local var4_result1 = getSettingsForMessage_upvr(arg1_2:getState().chatSettings, arg1)
		local var12 = arg1_2:getState().userMessages[arg1.userId]
		local messages = arg1_2:getState().messages
		for i = 1, #var12 - var4_result1.MaxBubbles do
			arg1_2:dispatch(RemoveMessage_upvr(messages[var12[i]]))
		end
		RbxAnalyticsService_upvr:ReportCounter("RoactBubbleChat-MessagesSent")
		if math.random(1, 100) <= game_DefineFastInt_result1_upvr then
			RbxAnalyticsService_upvr:SendEventDeferred("client", "bubbleChatMetric", "messageAdded", {
				placeId = game.PlaceId;
				senderUserId = arg1.userId;
			})
		end
		wait(var4_result1.BubbleDuration)
		arg1_2:dispatch(RemoveMessage_upvr(arg1))
	end
end