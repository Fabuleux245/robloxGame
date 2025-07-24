-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:01
-- Luau version 6, Types version 3
-- Time taken: 0.000953 seconds

return {
	mock = function(arg1) -- Line 41, Named "mock"
		return {
			id = arg1 or -1;
			rootPlaceId = -2;
			name = "Experience name";
			description = "Experience description";
			sourceName = "Source name";
			sourceDescription = "Source description";
			creator = {
				id = -3;
				name = "CreatorName";
				type = "User";
				isRNVAccount = false;
				hasVerifiedBadge = false;
			};
			price = 0;
			allowedGearGenres = {};
			allowedGearCategories = {};
			isGenreEnforced = false;
			copyingAllowed = false;
			playing = 0;
			visits = 0;
			maxPlayers = 10;
			created = DateTime.now():ToIsoDate();
			updated = DateTime.now():ToIsoDate();
			studioAccessToApisAllowed = false;
			universeAvatarType = "MorphR6";
			genre = "";
			isAllGenre = false;
			isFavoritedByUser = false;
			favoritedCount = 0;
		}
	end;
}