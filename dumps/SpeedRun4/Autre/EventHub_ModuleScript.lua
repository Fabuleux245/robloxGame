-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:46
-- Luau version 6, Types version 3
-- Time taken: 0.002611 seconds

local tbl_2_upvr = {}
local function _(arg1, arg2) -- Line 6, Named "createListener"
	local module = {}
	module.id = arg1
	module.callback = arg2
	return module
end
return {
	addEventListener = function(arg1, arg2, arg3, arg4) -- Line 18, Named "addEventListener"
		--[[ Upvalues[1]:
			[1]: tbl_2_upvr (readonly)
		]]
		if tbl_2_upvr[arg2] == nil then
			tbl_2_upvr[arg2] = {}
		end
		local tbl = {}
		tbl.id = arg3
		tbl.callback = arg4
		table.insert(tbl_2_upvr[arg2], tbl)
	end;
	removeEventListener = function(arg1, arg2, arg3) -- Line 26, Named "removeEventListener"
		--[[ Upvalues[1]:
			[1]: tbl_2_upvr (readonly)
		]]
		if tbl_2_upvr[arg2] == nil then
		else
			for i, v in ipairs(tbl_2_upvr[arg2]) do
				if v ~= nil and v.id == arg3 then
					table.remove(tbl_2_upvr[arg2], i)
				end
			end
		end
	end;
	removeCallbackFromEvent = function(arg1, arg2, arg3, arg4) -- Line 40, Named "removeCallbackFromEvent"
		--[[ Upvalues[1]:
			[1]: tbl_2_upvr (readonly)
		]]
		if tbl_2_upvr[arg2] == nil then
		else
			for i_2, v_2 in ipairs(tbl_2_upvr[arg2]) do
				if v_2 ~= nil and v_2.id == arg3 and v_2.callback == arg4 then
					table.remove(tbl_2_upvr[arg2], i_2)
					return
				end
			end
		end
	end;
	dispatchEvent = function(arg1, arg2, ...) -- Line 56, Named "dispatchEvent"
		--[[ Upvalues[1]:
			[1]: tbl_2_upvr (readonly)
		]]
		if tbl_2_upvr[arg2] == nil then
		else
			for _, v_3 in ipairs(tbl_2_upvr[arg2]) do
				v_3.callback(...)
			end
		end
	end;
	Notifications = {
		AuthenticationSuccess = "rbxNotificationAuthenticationSuccess";
		GameJoin = "rbxNotificationGameJoin";
		OpenGames = "rbxNotificationOpenGames";
		OpenGameDetail = "rbxNotificationOpenGameDetail";
		OpenGameGenre = "rbxNotificationOpenGameGenre";
		OpenBadgeScreen = "rbxNotificationOpenBadgeScreen";
		OpenSettingsScreen = "rbxNotificationOpenSettingsScreen";
		OpenSearchScreen = "rbxNotificationOpenSearchScreen";
		OpenStoreScreen = "rbxNotificationOpenStoreScreen";
		OpenAvatarEditorScreen = "rbxNotificationOpenAvatarEditorScreen";
		OpenAccountSettingsScreen = "rbxNotificationOpenAccountSettingsScreen";
		NavigateToEquippedAvatar = "rbxNotificationNavigateToEquippedAvatar";
		NavigateToRobuxScreen = "rbxNotificationNavigateToRobuxScreen";
		RobuxCatalogPurchaseInitiated = "rbxRobuxCatalogPurchaseInitiated";
		DonnedDifferentPackage = "rbxDonnedDifferentPackage";
		VotedOnPlace = "rbxVotedOnPlace";
		AvatarEquipBegin = "rbxAvatarEquipBegin";
		DonnedDifferentOutfit = "rbxDonnedDifferentOutfit";
		AvatarEquipSuccess = "rbxAvatarEquipSuccess";
		AvatarPurchaseBegin = "rbxAvatarPurchaseBegin";
		AvatarPurchaseSuccess = "rbxAvatarPurchaseSuccess";
		FavoriteToggle = "rbxFavoriteToggle";
		PlayedGamesChanged = "rbxPlayedGamesChanged";
		UnlockedUGC = "rbxNotificationUnlockedUGC";
		SetGamesHints = "rbxNotificationSetGamesHints";
		CharacterEquipped = "CharacterEquipped";
		CharacterUpdated = "CharacterUpdated";
		HardwareBundleGranted = "HardwareBundleGranted";
	};
}