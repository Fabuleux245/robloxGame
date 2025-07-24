-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:36
-- Luau version 6, Types version 3
-- Time taken: 0.005532 seconds

local Telemetry = require(script:FindFirstAncestor("AppChat").Telemetry.Telemetry)
local tbl_2 = {
	type = "EventIngest";
	standardizedFields = {"addSessionId", "addSessionInfo"};
}
local function format(arg1, arg2) -- Line 10
	return {
		context = arg2.context;
		userId = arg2.userId;
		locale = arg2.locale;
		entryPoint = arg2.entryPoint;
		unfilteredThreadsEligibility = arg2.unfilteredThreadsEligibility;
		playSessionId = arg2.playSessionId;
		currentSquadId = arg2.currentSquadId;
		chatLandingListCount = arg2.chatLandingListCount;
		pendingConversationCount = arg2.pendingConversationCount;
		unfilteredConversationCount = arg2.unfilteredConversationCount;
	}
end
tbl_2.format = format
local function robloxCounterWithName(arg1) -- Line 26
	local module = {
		type = "RobloxTelemetryCounter";
		overrideName = function() -- Line 29, Named "overrideName"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1
		end;
	}
	local function format() -- Line 32
		return {}
	end
	module.format = format
	module.standardizedFields = nil
	module.throttlingThousandths = nil
	return module
end
local module_2 = {}
local tbl_12 = {
	name = "appChatVisible";
	description = "";
	lastUpdated = {2021, 1, 1};
}
local tbl = {}
local tbl_5 = {
	type = "EventIngest";
	standardizedFields = {"addSessionId", "addSessionInfo"};
}
local function format(arg1, arg2) -- Line 50
	return {
		context = arg2.context;
		userId = arg2.userId;
		locale = arg2.locale;
		entryPoint = arg2.entryPoint;
		unfilteredThreadsEligibility = arg2.unfilteredThreadsEligibility;
		playSessionId = arg2.playSessionId;
		currentSquadId = arg2.currentSquadId;
		isChatEnabled = arg1.isChatEnabled;
		isChatLoading = arg1.isChatLoading;
	}
end
tbl_5.format = format
tbl[1] = robloxCounterWithName("AppChat.Navigation.Visible")
tbl[2] = tbl_5
tbl_12.backendsList = tbl
module_2.AppChatVisible = Telemetry.new(tbl_12)
local tbl_9 = {
	name = "chatLandingScreenRendered";
	description = "";
	lastUpdated = {2021, 1, 1};
}
local tbl_8 = {}
local tbl_10 = {
	type = "EventIngest";
	standardizedFields = {"addSessionId", "addSessionInfo"};
}
local function format(arg1, arg2) -- Line 75
	return {
		context = arg2.context;
		userId = arg2.userId;
		locale = arg2.locale;
		entryPoint = arg2.entryPoint;
		chatLandingListCount = arg2.chatLandingListCount;
		pendingConversationCount = arg2.pendingConversationCount;
		unfilteredConversationCount = arg2.unfilteredConversationCount;
		isChatEnabled = arg1.isChatEnabled;
	}
end
tbl_10.format = format
tbl_8[1] = robloxCounterWithName("AppChat.ChatLanding.Rendered")
tbl_8[2] = tbl_10
tbl_9.backendsList = tbl_8
module_2.ScreenRendered = Telemetry.new(tbl_9)
local tbl_13 = {
	name = "chatEmptyStateScreenRendered";
	description = "";
	lastUpdated = {2021, 1, 1};
}
local tbl_3 = {}
local tbl_4 = {
	type = "EventIngest";
	standardizedFields = {"addSessionId", "addSessionInfo"};
}
local function format(arg1, arg2) -- Line 98
	return {
		context = arg2.context;
		userId = arg2.userId;
		locale = arg2.locale;
		entryPoint = arg2.entryPoint;
		unfilteredThreadsEligibility = arg2.unfilteredThreadsEligibility;
		playSessionId = arg2.playSessionId;
		currentSquadId = arg2.currentSquadId;
		chatLandingListCount = arg2.chatLandingListCount;
		pendingConversationCount = arg2.pendingConversationCount;
		unfilteredConversationCount = arg2.unfilteredConversationCount;
		emptyStateType = arg1.emptyStateType;
	}
end
tbl_4.format = format
tbl_3[1] = tbl_4
tbl_13.backendsList = tbl_3
module_2.ChatEmptyStateScreenRendered = Telemetry.new(tbl_13)
module_2.ChatAddFriendsBtnClicked = Telemetry.new({
	name = "chatAddFriendsBtnClicked";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {tbl_2};
})
module_2.ChatLandingSearchBtnClicked = Telemetry.new({
	name = "chatLandingSearchBtnClicked";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.Button.Search"), tbl_2};
})
module_2.ChatLandingComposeBtnClicked = Telemetry.new({
	name = "chatLandingComposeBtnClicked";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.Button.Compose"), tbl_2};
})
module_2.ChatLandingNotifBtnClicked = Telemetry.new({
	name = "chatLandingNotifBtnClicked";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.Button.Notifications"), tbl_2};
})
local tbl_6 = {
	name = "chatLandingSnoozeBtnClicked";
	description = "";
	lastUpdated = {2021, 1, 1};
}
local tbl_7 = {}
local tbl_11 = {
	type = "EventIngest";
	standardizedFields = {"addSessionId", "addSessionInfo"};
}
local function format(arg1, arg2) -- Line 160
	return {
		context = arg2.context;
		userId = arg2.userId;
		locale = arg2.locale;
		entryPoint = arg2.entryPoint;
		unfilteredThreadsEligibility = arg2.unfilteredThreadsEligibility;
		playSessionId = arg2.playSessionId;
		currentSquadId = arg2.currentSquadId;
		chatLandingListCount = arg2.chatLandingListCount;
		pendingConversationCount = arg2.pendingConversationCount;
		unfilteredConversationCount = arg2.unfilteredConversationCount;
		isChatNotificationsMuted = arg1.isChatNotificationsMuted;
	}
end
tbl_11.format = format
tbl_7[1] = robloxCounterWithName("AppChat.ChatLanding.Button.Snooze")
tbl_7[2] = tbl_11
tbl_6.backendsList = tbl_7
module_2.ChatLandingSnoozeBtnClicked = Telemetry.new(tbl_6)
module_2.ConversationClicked = Telemetry.new({
	name = "chatLandingConversationClicked";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.Button.Conversation"), {
		type = "EventIngest";
		standardizedFields = {"addSessionId", "addSessionInfo"};
		format = function(arg1, arg2) -- Line 190, Named "format"
			return {
				context = arg2.context;
				userId = arg2.userId;
				locale = arg2.locale;
				entryPoint = arg2.entryPoint;
				unfilteredThreadsEligibility = arg2.unfilteredThreadsEligibility;
				playSessionId = arg2.playSessionId;
				currentSquadId = arg2.currentSquadId;
				chatLandingListCount = arg2.chatLandingListCount;
				pendingConversationCount = arg2.pendingConversationCount;
				unfilteredConversationCount = arg2.unfilteredConversationCount;
				isFiltered = arg1.isFiltered;
				conversationListCount = arg1.conversationListCount;
				selectedConversationId = arg1.selectedConversationId;
				selectedIndex = arg1.selectedIndex;
				hasUnreadMessages = arg1.hasUnreadMessages;
				selectedConversationModerationType = arg1.selectedConversationModerationType;
				selectedConversationUserPendingStatus = arg1.selectedConversationUserPendingStatus;
			}
		end;
	}};
})
module_2.ChatLandingGroupsBtnClicked = Telemetry.new({
	name = "chatLandingGroupsBtnClicked";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.Button.Groups"), tbl_2};
})
module_2.ChatLandingPvUpsellRendered = Telemetry.new({
	name = "chatLandingPvUpsellRendered";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.PvUpsell.Rendered"), tbl_2};
})
module_2.ChatLandingPvUpsellDismissed = Telemetry.new({
	name = "chatLandingPvUpsellDismissed";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.PvUpsell.Dismissed"), tbl_2};
})
module_2.ChatLandingPvUpsellContinueClicked = Telemetry.new({
	name = "chatLandingPvUpsellContinueClicked";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.PvUpsell.Button.Continue"), tbl_2};
})
module_2.ChatLandingPvUpsellSucceeded = Telemetry.new({
	name = "chatLandingPvUpsellSucceeded";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.PvUpsell.Succeeded"), tbl_2};
})
module_2.ChatLandingPvUpsellFailed = Telemetry.new({
	name = "chatLandingPvUpsellFailed";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.PvUpsell.Failed"), tbl_2};
})
module_2.ChatLandingUnfilteredThreadsFtuxRendered = Telemetry.new({
	name = "chatLandingUnfilteredThreadsFtuxRendered";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.UnfilteredThreadsFtux.Rendered"), tbl_2};
})
module_2.ChatLandingUnfilteredThreadsFtuxDismissed = Telemetry.new({
	name = "chatLandingUnfilteredThreadsFtuxDismissed";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.UnfilteredThreadsFtux.Dismissed"), tbl_2};
})
module_2.ChatLandingUnfilteredThreadsFtuxLearnMoreClicked = Telemetry.new({
	name = "chatLandingUnfilteredThreadsFtuxLearnMoreClicked";
	description = "";
	lastUpdated = {2021, 1, 1};
	backendsList = {robloxCounterWithName("AppChat.ChatLanding.UnfilteredThreadsFtux.Button.LearnMore"), tbl_2};
})
return module_2