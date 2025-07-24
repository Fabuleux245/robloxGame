-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:46
-- Luau version 6, Types version 3
-- Time taken: 0.000841 seconds

return {
	localUserId = '1';
	offlineFriend = {
		__typename = "Friend";
		id = '2';
		hasVerifiedBadge = false;
		targetUserId = '1';
	};
	onlineFriend = {
		__typename = "Friend";
		id = '5';
		targetUserId = '1';
		presence = {
			__typename = "UserPresence";
			id = '5';
			userPresenceType = "Online";
			lastLocation = "Website";
			lastOnline = "time3";
			gameId = "";
			placeId = "";
			rootPlaceId = "";
			universeId = "";
		};
	};
	inGameFriend = {
		__typename = "Friend";
		id = '3';
		targetUserId = '1';
		presence = {
			__typename = "UserPresence";
			id = '3';
			userPresenceType = "InGame";
			lastLocation = "location";
			lastOnline = "time";
			gameId = "game-id";
			placeId = "123";
			rootPlaceId = "456";
			universeId = "789";
		};
	};
	inStudioFriend = {
		__typename = "Friend";
		id = '4';
		targetUserId = '1';
		presence = {
			__typename = "UserPresence";
			id = '4';
			userPresenceType = "InStudio";
			lastLocation = "Studio";
			lastOnline = "time2";
			gameId = "";
			placeId = "";
			rootPlaceId = "";
			universeId = "";
		};
	};
	inGameFriendNoUniverseId = {
		__typename = "Friend";
		id = '6';
		targetUserId = '1';
		presence = {
			__typename = "UserPresence";
			id = '6';
			userPresenceType = "InGame";
			lastLocation = "";
			lastOnline = "time4";
			gameId = "";
			placeId = "";
			rootPlaceId = "";
			universeId = "";
		};
	};
}