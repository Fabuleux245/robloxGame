-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:06
-- Luau version 6, Types version 3
-- Time taken: 0.002018 seconds

local PresenceType = require(script:FindFirstAncestor("FriendsLanding").dependencies).RoduxPresence.Enums.PresenceType
return {
	OnlineFriend = {
		displayName = "OnlineFriend";
		gameId = "Game-OoooOO-Id";
		id = "37";
		lastLocation = "LastLocation";
		lastOnline = "LastOnline-OOOoOO";
		placeId = 123;
		rootPlaceId = 234;
		thumbnail = "rbxthumb://type=Avatar&id=37&w=150&h=150";
		universeId = 345;
		userId = 456;
		userPresenceType = PresenceType.Online;
		username = "username37";
	};
	DeletedFriend = {
		displayName = "DeletedFriend";
		gameId = "Game-OoooOO-Id";
		id = "37";
		lastLocation = "LastLocation";
		lastOnline = "LastOnline-OOOoOO";
		placeId = 123;
		rootPlaceId = 234;
		thumbnail = "rbxthumb://type=Avatar&id=37&w=150&h=150";
		universeId = 345;
		userId = 456;
		userPresenceType = PresenceType.Offline;
		username = "username37";
		isDeleted = true;
	};
	OfflineFriend = {
		displayName = "OfflineFriend";
		gameId = "Game-OoooOO-Id";
		id = "37";
		lastLocation = "LastLocation";
		lastOnline = "LastOnline-OOOoOO";
		placeId = 123;
		rootPlaceId = 234;
		thumbnail = "rbxthumb://type=Avatar&id=37&w=150&h=150";
		universeId = 345;
		userId = 456;
		userPresenceType = PresenceType.Offline;
		username = "username37";
	};
	InGameFriend = {
		displayName = "InGameFriend";
		gameId = "Game-OoooOO-Id";
		id = "37";
		lastLocation = "LastLocation";
		lastOnline = "LastOnline-OOOoOO";
		placeId = 123;
		rootPlaceId = 234;
		thumbnail = "rbxthumb://type=Avatar&id=37&w=150&h=150";
		universeId = 345;
		userId = 456;
		userPresenceType = PresenceType.InGame;
		username = "username37";
	};
	InStudioFriend = {
		displayName = "InStudioFriend";
		gameId = "Game-OoooOO-Id";
		id = "37";
		lastLocation = "LastLocation";
		lastOnline = "LastOnline-OOOoOO";
		placeId = 123;
		rootPlaceId = 234;
		thumbnail = "rbxthumb://type=Avatar&id=37&w=150&h=150";
		universeId = 345;
		userId = 456;
		userPresenceType = PresenceType.InStudio;
		username = "username37";
	};
	InGameWithoutLastLocationFriend = {
		displayName = "InGameWithoutLastLocationFriend";
		gameId = "Game-OoooOO-Id";
		id = "37";
		lastLocation = "";
		lastOnline = "LastOnline-OOOoOO";
		placeId = 123;
		rootPlaceId = 234;
		thumbnail = "rbxthumb://type=Avatar&id=37&w=150&h=150";
		universeId = 345;
		userId = 456;
		userPresenceType = PresenceType.InGame;
		username = "username37";
	};
	InStudioWithoutLastLocationFriend = {
		displayName = "InStudioWithoutLastLocationFriend";
		gameId = "Game-OoooOO-Id";
		id = "37";
		lastLocation = "";
		lastOnline = "LastOnline-OOOoOO";
		placeId = 123;
		rootPlaceId = 234;
		thumbnail = "rbxthumb://type=Avatar&id=37&w=150&h=150";
		universeId = 345;
		userId = 456;
		userPresenceType = PresenceType.InStudio;
		username = "username37";
	};
}