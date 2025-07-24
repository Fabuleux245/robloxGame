-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:04
-- Luau version 6, Types version 3
-- Time taken: 0.003664 seconds

local CorePackages = game:GetService("CorePackages")
local Dash = require(CorePackages.Packages.Dash)
local Enums = require(CorePackages.Workspace.Packages.SocialLuaAnalytics).Analytics.Enums
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local EventNamesEnum = require(script.Parent.EventNamesEnum)
local LocalPlayer = game:GetService("Players").LocalPlayer
local any_GetPlatform_result1 = game:GetService("UserInputService"):GetPlatform()
local any_GetPlaySessionId_result1 = game:GetService("RbxAnalyticsService"):GetPlaySessionId()
local var10
if any_GetPlatform_result1 == Enum.Platform.Windows or any_GetPlatform_result1 == Enum.Platform.OSX then
	var10 = "desktop"
elseif any_GetPlatform_result1 == Enum.Platform.IOS then
	var10 = "ios"
elseif any_GetPlatform_result1 == Enum.Platform.Android then
	var10 = "android"
elseif any_GetPlatform_result1 == Enum.Platform.XBox360 or any_GetPlatform_result1 == Enum.Platform.PS3 or any_GetPlatform_result1 == Enum.Platform.PS4 or any_GetPlatform_result1 == Enum.Platform.XBoxOne or any_GetPlatform_result1 == Enum.Platform.WiiU then
	var10 = "console"
else
	var10 = "other"
end
return {
	[EventNamesEnum.CallBarHangUpClicked] = {
		context = Contexts.ContactList;
		eventType = EventTypes.CallBarHangUpClicked;
		additionalInfo = {
			uid = LocalPlayer.UserId;
			universeId = game.GameId;
			placeId = game.PlaceId;
			deviceType = var10;
			playSessionId = any_GetPlaySessionId_result1;
		};
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity;
			calleeUserId = Dash.identity;
			callerUserId = Dash.identity;
			callId = Dash.identity;
			callStatus = Dash.identity;
			isRetry = Dash.identity;
		};
	};
	[EventNamesEnum.PhoneBookNavigate] = {
		context = Contexts.ContactList;
		eventType = EventTypes.PhoneBookNavigate;
		additionalInfo = {
			uid = LocalPlayer.UserId;
			universeId = game.GameId;
			placeId = game.PlaceId;
			deviceType = var10;
			playSessionId = any_GetPlaySessionId_result1;
		};
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity;
			startingPage = Dash.identity;
			destinationPage = Dash.identity;
		};
	};
	[EventNamesEnum.PhoneBookSearchClicked] = {
		context = Contexts.ContactList;
		eventType = EventTypes.PhoneBookSearchClicked;
		additionalInfo = {
			uid = LocalPlayer.UserId;
			universeId = game.GameId;
			placeId = game.PlaceId;
			deviceType = var10;
		};
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity;
			playSessionId = any_GetPlaySessionId_result1;
		};
	};
	[EventNamesEnum.PhoneBookSearchAttempted] = {
		context = Contexts.ContactList;
		eventType = EventTypes.PhoneBookSearchAttempted;
		additionalInfo = {
			uid = LocalPlayer.UserId;
			universeId = game.GameId;
			placeId = game.PlaceId;
			deviceType = var10;
			playSessionId = any_GetPlaySessionId_result1;
		};
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity;
			searchQueryString = Dash.identity;
		};
	};
	[EventNamesEnum.PhoneBookSearchFinished] = {
		context = Contexts.ContactList;
		eventType = EventTypes.PhoneBookSearchFinished;
		additionalInfo = {
			uid = LocalPlayer.UserId;
			universeId = game.GameId;
			placeId = game.PlaceId;
			deviceType = var10;
			playSessionId = any_GetPlaySessionId_result1;
		};
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity;
			searchQueryString = Dash.identity;
			searchResultCount = Dash.identity;
		};
	};
	[EventNamesEnum.PhoneBookPlayerMenuOpened] = {
		context = Contexts.ContactList;
		eventType = EventTypes.PhoneBookPlayerMenuOpened;
		additionalInfo = {
			uid = LocalPlayer.UserId;
			universeId = game.GameId;
			placeId = game.PlaceId;
			deviceType = var10;
			playSessionId = any_GetPlaySessionId_result1;
		};
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity;
			friendUserId = Dash.identity;
			searchQueryString = Dash.identity;
			itemListIndex = Dash.identity;
			isSuggestedUser = Dash.identity;
			page = Dash.identity;
		};
	};
	[EventNamesEnum.PhoneBookPlayerMenuUnfriendClicked] = {
		context = Contexts.ContactList;
		eventType = EventTypes.PhoneBookPlayerMenuUnfriendClicked;
		additionalInfo = {
			uid = LocalPlayer.UserId;
			universeId = game.GameId;
			placeId = game.PlaceId;
			deviceType = var10;
			playSessionId = any_GetPlaySessionId_result1;
		};
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity;
			friendUserId = Dash.identity;
		};
	};
	[EventNamesEnum.PhoneBookPlayerMenuUnfriendFinished] = {
		context = Contexts.ContactList;
		eventType = EventTypes.PhoneBookPlayerMenuUnfriendFinished;
		additionalInfo = {
			uid = LocalPlayer.UserId;
			universeId = game.GameId;
			placeId = game.PlaceId;
			deviceType = var10;
			playSessionId = any_GetPlaySessionId_result1;
		};
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity;
			friendUserId = Dash.identity;
			success = Dash.identity;
		};
	};
	[EventNamesEnum.PhoneBookPlayerMenuBlockClicked] = {
		context = Contexts.ContactList;
		eventType = EventTypes.PhoneBookPlayerMenuBlockClicked;
		additionalInfo = {
			uid = LocalPlayer.UserId;
			universeId = game.GameId;
			placeId = game.PlaceId;
			deviceType = var10;
			playSessionId = any_GetPlaySessionId_result1;
		};
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity;
			friendUserId = Dash.identity;
		};
	};
	[EventNamesEnum.PhoneBookCallFriendClicked] = {
		context = Contexts.ContactList;
		eventType = EventTypes.PhoneBookCallFriendClicked;
		additionalInfo = {
			uid = LocalPlayer.UserId;
			universeId = game.GameId;
			placeId = game.PlaceId;
			deviceType = var10;
			playSessionId = any_GetPlaySessionId_result1;
		};
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity;
			friendUserId = Dash.identity;
			searchQueryString = Dash.identity;
			itemListIndex = Dash.identity;
			isSuggestedUser = Dash.identity;
			page = Dash.identity;
		};
	};
	[EventNamesEnum.PhoneBookCallFriendFailed] = {
		context = Contexts.ContactList;
		eventType = EventTypes.PhoneBookCallFriendFailed;
		additionalInfo = {
			uid = LocalPlayer.UserId;
			universeId = game.GameId;
			placeId = game.PlaceId;
			deviceType = var10;
			playSessionId = any_GetPlaySessionId_result1;
		};
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity;
			calleeUserId = Dash.identity;
			callerUserId = Dash.identity;
			errorMsg = Dash.identity;
		};
	};
}