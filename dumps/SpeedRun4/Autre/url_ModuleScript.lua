-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:21
-- Luau version 6, Types version 3
-- Time taken: 0.002873 seconds

local ContentProvider_upvr = game:GetService("ContentProvider")
local function preventTableModification_upvr(arg1, arg2, arg3) -- Line 33, Named "preventTableModification"
	error("Attempt to modify read-only table")
end
local function _(arg1) -- Line 36, Named "createReadOnlyTable"
	--[[ Upvalues[1]:
		[1]: preventTableModification_upvr (readonly)
	]]
	local module_2 = {}
	module_2.__index = arg1
	module_2.__newindex = preventTableModification_upvr
	module_2.__metatable = false
	return setmetatable({}, module_2)
end
local parseBaseUrlInformation_result1, parseBaseUrlInformation_result2, parseBaseUrlInformation_result3 = (function() -- Line 11, Named "parseBaseUrlInformation"
	--[[ Upvalues[1]:
		[1]: ContentProvider_upvr (readonly)
	]]
	local BaseUrl = ContentProvider_upvr.BaseUrl
	if BaseUrl:sub(#BaseUrl) ~= '/' then
		BaseUrl = BaseUrl..'/'
	end
	local _, any_find_result2 = BaseUrl:find("://")
	local any_find_result1, any_find_result2_2 = BaseUrl:find("%.", any_find_result2 + 1)
	return BaseUrl, BaseUrl:sub(any_find_result2 + 1, any_find_result1 - 1), BaseUrl:sub(any_find_result2_2 + 1)
end)()
return setmetatable({}, {
	__index = {
		DOMAIN = parseBaseUrlInformation_result3;
		PREFIX = parseBaseUrlInformation_result2;
		BASE_URL = parseBaseUrlInformation_result1;
		BASE_URL_SECURE = string.gsub(parseBaseUrlInformation_result1, "http://", "https://");
		API_URL = string.format("https://api.%s", parseBaseUrlInformation_result3);
		APIS_URL = string.format("https://apis.%s", parseBaseUrlInformation_result3);
		AUTH_URL = string.format("https://auth.%s", parseBaseUrlInformation_result3);
		ACCOUNT_SETTINGS_URL = string.format("https://accountsettings.%s", parseBaseUrlInformation_result3);
		AVATAR_URL = string.format("https://avatar.%s", parseBaseUrlInformation_result3);
		CATALOG_URL = string.format("https://catalog.%s", parseBaseUrlInformation_result3);
		CREATOR_HUB_URL = string.format("https://create.%s", parseBaseUrlInformation_result3);
		GAME_URL = string.format("https://games.%s", parseBaseUrlInformation_result3);
		GAME_ASSET_URL = string.format("https://assetgame.%s", parseBaseUrlInformation_result3);
		CHAT_URL = string.format("https://chat.%sv2", parseBaseUrlInformation_result3);
		FRIEND_URL = string.format("https://friends.%sv1", parseBaseUrlInformation_result3);
		PRESENCE_URL = string.format("https://presence.%sv1", parseBaseUrlInformation_result3);
		NOTIFICATION_URL = string.format("https://notifications.%s", parseBaseUrlInformation_result3);
		REALTIME_URL = string.format("https://realtime.%s", parseBaseUrlInformation_result3);
		WEB_URL = string.format("https://web.%s", parseBaseUrlInformation_result3);
		WWW_URL = string.format("https://www.%s", parseBaseUrlInformation_result3);
		ADS_URL = string.format("https://ads.%s", parseBaseUrlInformation_result3);
		FOLLOWINGS_URL = string.format("https://followings.%s", parseBaseUrlInformation_result3);
		ECONOMY_URL = string.format("https://economy.%s", parseBaseUrlInformation_result3);
		THUMBNAILS_URL = string.format("https://thumbnails.%s", parseBaseUrlInformation_result3);
		BADGES_URL = string.format("https://badges.%s", parseBaseUrlInformation_result3);
		ACCOUNT_SETTINGS = string.format("https://accountsettings.%s", parseBaseUrlInformation_result3);
		PREMIUM_FEATURES = string.format("https://premiumfeatures.%s", parseBaseUrlInformation_result3);
		LOCALE = string.format("https://locale.%s", parseBaseUrlInformation_result3);
		METRICS_URL = string.format("https://metrics.%sv1", parseBaseUrlInformation_result3);
		APIS_RCS_URL = string.format("https://apis.rcs.%s", parseBaseUrlInformation_result3);
		DISCUSSIONS_URL = string.format("https://discussions.%s", parseBaseUrlInformation_result3);
		BLOG_URL = "https://blog.roblox.com/";
		CORP_URL = "https://corp.roblox.com/";
		GAME_I18N_URL = string.format("https://gameinternationalization.%s", parseBaseUrlInformation_result3);
		getUserProfileUrl = function(arg1, arg2) -- Line 117, Named "getUserProfileUrl"
			return string.format("%susers/%s/profile", arg1.BASE_URL, arg2)
		end;
		getUserFriendsUrl = function(arg1, arg2) -- Line 121, Named "getUserFriendsUrl"
			return string.format("%susers/%s/friends", arg1.BASE_URL, arg2)
		end;
		getUserInventoryUrl = function(arg1, arg2) -- Line 125, Named "getUserInventoryUrl"
			return string.format("%susers/%s/inventory", arg1.BASE_URL, arg2)
		end;
		getPlaceDefaultThumbnailUrl = function(arg1, arg2, arg3, arg4) -- Line 129, Named "getPlaceDefaultThumbnailUrl"
			return string.format("%sThumbs/Asset.ashx?width=%d&height=%d&assetId=%s&ignorePlaceMediaItems=true", arg1.BASE_URL, arg3, arg4, tostring(arg2))
		end;
		isVanitySite = function(arg1) -- Line 138, Named "isVanitySite"
			local var12
			if arg1.PREFIX == "www" then
				var12 = false
			else
				var12 = true
			end
			return var12
		end;
		makeQueryString = function(arg1, arg2) -- Line 143, Named "makeQueryString"
			local module = {}
			for i, v in pairs(arg2) do
				if v ~= nil then
					if type(v) == "table" then
						for i_2 = 1, #v do
							table.insert(module, i..'='..v[i_2])
						end
					else
						i_2 = i..'='..tostring(v)
						table.insert(module, i_2)
					end
				end
			end
			return table.concat(module, '&')
		end;
	};
	__newindex = preventTableModification_upvr;
	__metatable = false;
})