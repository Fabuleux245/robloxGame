-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:08
-- Luau version 6, Types version 3
-- Time taken: 0.001859 seconds

local module = require(game:GetService("CoreGui"):FindFirstChild("RobloxGui"):FindFirstChild("Modules"):FindFirstChild("Shell"):FindFirstChild("LocalizedStrings"))
return {
	Default = {
		Title = module:LocalizedString("AlertOccurredTitle");
		Msg = module:LocalizedString("DefaultAlertPhrase");
		Id = 0;
	};
	UnlockedUGC = {
		Title = module:LocalizedString("UnlockedUGCTitle");
		Msg = module:LocalizedString("UnlockedUGCPhrase");
		Id = 101;
	};
	LostConnection = {
		Controller = {
			Title = module:LocalizedString("ControllerLostConnectionTitle");
			Msg = module:LocalizedString("ControllerLostConnectionPhrase");
			Id = 201;
		};
		ActiveUser = {
			Title = module:LocalizedString("ActiveUserLostConnectionTitle");
			Msg = module:LocalizedString("ActiveUserLostConnectionPhrase");
			Id = 202;
		};
	};
	PlayMyPlaceMoreGames = {
		Title = module:LocalizedString("PlayMyPlaceMoreGamesTitle");
		Msg = module:LocalizedString("PlayMyPlaceMoreGamesPhrase");
		Id = 301;
	};
	CrossPlatformPlayWelcome = {
		Title = module:LocalizedString("CPPWelcomeTitle");
		Msg = module:LocalizedString("CPPWelcomePhrase");
		Id = 401;
	};
	Reauthentication = {{
		Title = module:LocalizedString("ReauthSignedOutTitle");
		Msg = module:LocalizedString("ReauthSignedOutPhrase");
		Id = 1002;
	}, {
		Title = module:LocalizedString("ReauthRemovedTitle");
		Msg = module:LocalizedString("ReauthRemovedPhrase");
		Id = 1003;
	}, {
		Title = module:LocalizedString("ReauthSignedOutTitle");
		Msg = module:LocalizedString("ReauthInvalidSessionPhrase");
		Id = 1004;
	}, {
		Title = module:LocalizedString("ReauthUnlinkTitle");
		Msg = module:LocalizedString("ReauthUnlinkPhrase");
		Id = 1005;
	}, {
		Title = module:LocalizedString("ReauthRemovedTitle");
		Msg = module:LocalizedString("ReauthRemovedPhrase");
		Id = 1006;
	}, {
		Title = module:LocalizedString("ReauthRemovedTitle");
		Msg = module:LocalizedString("ReauthRemovedPhrase");
		Id = 1007;
	}, {
		Title = module:LocalizedString("ReauthRemovedTitle");
		Msg = module:LocalizedString("ReauthRemovedPhrase");
		Id = 1008;
	}};
	SignOut = {{
		Title = module:LocalizedString("ReauthSignedOutTitle");
		Msg = module:LocalizedString("ReauthSignedOutPhrase");
		Id = 1002;
	}, {
		Title = module:LocalizedString("ReauthSignedOutTitle");
		Msg = module:LocalizedString("ReauthInvalidSessionPhrase");
		Id = 1003;
	}, {
		Title = module:LocalizedString("ReauthUnlinkTitle");
		Msg = module:LocalizedString("ReauthUnlinkPhrase");
		Id = 1004;
	}, {
		Title = module:LocalizedString("ReauthRemovedTitle");
		Msg = module:LocalizedString("ReauthRemovedPhrase");
		Id = 1005;
	}, {
		Title = module:LocalizedString("ReauthRemovedTitle");
		Msg = module:LocalizedString("ReauthRemovedPhrase");
		Id = 1006;
	}, nil, {
		Title = module:LocalizedString("ReauthMaintenanceTitle");
		Msg = module:LocalizedString("ReauthMaintenancePhrase");
		Id = 1007;
	}};
	PlatformLink = {
		Title = module:LocalizedString("PlatformLinkInfoTitle");
		Msg = module:LocalizedString("PlatformLinkInfoMessage");
		Id = 1201;
	};
}