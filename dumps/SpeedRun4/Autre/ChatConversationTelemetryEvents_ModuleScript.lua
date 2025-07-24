-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:39
-- Luau version 6, Types version 3
-- Time taken: 0.004173 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Telemetry = require(AppChat.Telemetry.Telemetry)
local SocialLuaAnalytics_upvr = require(AppChat.Parent.SocialLuaAnalytics)
local function robloxCounterWithName(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: SocialLuaAnalytics_upvr (readonly)
	]]
	return {
		type = SocialLuaAnalytics_upvr.Analytics.Enums.SupportedTelemetryBackends.RobloxTelemetryCounter;
		overrideName = function() -- Line 12, Named "overrideName"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1
		end;
		format = function() -- Line 15, Named "format"
			return {}
		end;
		standardizedFields = nil;
		throttlingThousandths = nil;
	}
end
local function eventIngestWithFormatFunction(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: SocialLuaAnalytics_upvr (readonly)
	]]
	local module = {
		type = SocialLuaAnalytics_upvr.Analytics.Enums.SupportedTelemetryBackends.EventIngest;
		standardizedFields = {"addSessionId", "addSessionInfo"};
	}
	module.format = arg1
	module.overrideName = nil
	module.throttlingThousandths = nil
	return module
end
return {
	ScreenRendered = Telemetry.new({
		name = "conversationScreenRendered";
		description = "";
		lastUpdated = {2021, 1, 1};
		backendsList = {robloxCounterWithName("AppChat.ChatConversation.Rendered"), eventIngestWithFormatFunction(function(arg1, arg2) -- Line 53
			return {
				context = arg2.context;
				userId = arg2.userId;
				locale = arg2.locale;
				entryPoint = arg2.entryPoint;
				conversationId = arg2.conversationId;
				moderationType = arg2.moderationType;
				userPendingStatus = arg2.userPendingStatus;
				loadedMessageCount = arg1.loadedMessageCount;
			}
		end)};
	});
	ScreenExit = Telemetry.new({
		name = "conversationScreenExit";
		description = "";
		lastUpdated = {2021, 1, 1};
		backendsList = {robloxCounterWithName("AppChat.ChatConversation.Exit"), eventIngestWithFormatFunction(function(arg1, arg2) -- Line 75
			return {
				context = arg2.context;
				userId = arg2.userId;
				locale = arg2.locale;
				entryPoint = arg2.entryPoint;
				conversationId = arg2.conversationId;
				moderationType = arg2.moderationType;
				userPendingStatus = arg2.userPendingStatus;
				conversationExitType = arg1.conversationExitType;
			}
		end)};
	});
	ConversationInfoBtnClicked = Telemetry.new({
		name = "conversationInfoBtnClicked";
		description = "";
		lastUpdated = {2021, 1, 1};
		backendsList = {robloxCounterWithName("AppChat.ChatConversation.Button.Info"), eventIngestWithFormatFunction(function(arg1, arg2) -- Line 33
			return {
				context = arg2.context;
				userId = arg2.userId;
				locale = arg2.locale;
				entryPoint = arg2.entryPoint;
				conversationId = arg2.conversationId;
				moderationType = arg2.moderationType;
				userPendingStatus = arg2.userPendingStatus;
			}
		end)};
	});
	ConversationMessageSent = Telemetry.new({
		name = "conversationMessageSent";
		description = "";
		lastUpdated = {2021, 1, 1};
		backendsList = {robloxCounterWithName("AppChat.ChatConversation.Message.Sent"), eventIngestWithFormatFunction(function(arg1, arg2) -- Line 105
			return {
				context = arg2.context;
				userId = arg2.userId;
				locale = arg2.locale;
				entryPoint = arg2.entryPoint;
				conversationId = arg2.conversationId;
				moderationType = arg2.moderationType;
				userPendingStatus = arg2.userPendingStatus;
				messageSentResult = arg1.messageSentResult;
				messageId = arg1.messageId;
				recipientIds = arg1.recipientIds;
				targetMessageId = arg1.targetMessageId;
				targetMessageSenderId = arg1.targetMessageSenderId;
				targetMessageSentAt = arg1.targetMessageSentAt;
				targetMessageLength = arg1.targetMessageLength;
			}
		end)};
	});
	ConversationSendBtnClicked = Telemetry.new({
		name = "conversationSendBtnClicked";
		description = "";
		lastUpdated = {2021, 1, 1};
		backendsList = {robloxCounterWithName("AppChat.ChatConversation.Button.Send"), eventIngestWithFormatFunction(function(arg1, arg2) -- Line 142
			return {
				context = arg2.context;
				userId = arg2.userId;
				locale = arg2.locale;
				entryPoint = arg2.entryPoint;
				conversationId = arg2.conversationId;
				moderationType = arg2.moderationType;
				userPendingStatus = arg2.userPendingStatus;
				sendBtnClickResult = arg1.sendBtnClickResult;
			}
		end)};
	});
}