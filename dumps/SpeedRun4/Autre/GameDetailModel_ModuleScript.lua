-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:22
-- Luau version 6, Types version 3
-- Time taken: 0.002056 seconds

local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local Parent = GameDetailRodux.Parent
local FFlagLuaAppGenreUpdate_upvr = require(Parent.SharedFlags).FFlagLuaAppGenreUpdate
local module_upvr = {
	new = function() -- Line 54, Named "new"
		return {}
	end;
}
local DateTime_upvr = require(Parent.Time).DateTime
function module_upvr.mock(arg1, arg2, arg3) -- Line 60
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: DateTime_upvr (readonly)
		[3]: FFlagLuaAppGenreUpdate_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new()
	local any_new_result1_2 = DateTime_upvr.new()
	any_new_result1.id = arg1
	any_new_result1.rootPlaceId = "370731277"
	any_new_result1.name = arg2
	any_new_result1.description = "This is MeepCity"
	any_new_result1.creator = {
		id = 123247;
		name = "alexnewtron";
		type = "User";
		isRNVAccount = false;
		hasVerifiedBadge = false;
	}
	any_new_result1.price = nil
	any_new_result1.isExperimental = false
	any_new_result1.allowedGearGenres = {"TownAndCity"}
	any_new_result1.allowedGearCategories = {}
	any_new_result1.playing = 49252
	any_new_result1.visits = 2358954901
	any_new_result1.maxPlayers = arg3 or 110
	any_new_result1.created = any_new_result1_2:GetIsoDate()
	any_new_result1.updated = DateTime_upvr.fromUnixTimestamp(any_new_result1_2:GetUnixTimestamp() + 60):GetIsoDate()
	any_new_result1.studioAccessToApisAllowed = true
	any_new_result1.universeAvatarType = "MorphToR15"
	any_new_result1.genre = "Town and City"
	if FFlagLuaAppGenreUpdate_upvr then
		any_new_result1.genre_l1 = "Test Genre"
	end
	any_new_result1.genre_l2 = "Test Subgenre"
	return any_new_result1
end
local getZendeskUrl_upvr = require(GameDetailRodux.GameDetails.getZendeskUrl)
function module_upvr.fromJsonData(arg1) -- Line 96
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: FFlagLuaAppGenreUpdate_upvr (readonly)
		[3]: getZendeskUrl_upvr (readonly)
	]]
	local any_new_result1_3 = module_upvr.new()
	any_new_result1_3.id = tostring(arg1.id)
	any_new_result1_3.rootPlaceId = tostring(arg1.rootPlaceId)
	any_new_result1_3.name = arg1.name
	any_new_result1_3.description = arg1.description
	any_new_result1_3.creator = {
		id = arg1.creator.id;
		name = arg1.creator.name;
		type = arg1.creator.type;
		isRNVAccount = arg1.creator.isRNVAccount;
		hasVerifiedBadge = arg1.creator.hasVerifiedBadge;
	}
	any_new_result1_3.price = arg1.price
	any_new_result1_3.isExperimental = arg1.isExperimental
	any_new_result1_3.allowedGearGenres = arg1.allowedGearGenres
	any_new_result1_3.allowedGearCategories = arg1.allowedGearCategories
	any_new_result1_3.playing = arg1.playing
	any_new_result1_3.visits = arg1.visits
	any_new_result1_3.maxPlayers = arg1.maxPlayers
	any_new_result1_3.created = arg1.created
	any_new_result1_3.updated = arg1.updated
	any_new_result1_3.studioAccessToApisAllowed = arg1.studioAccessToApisAllowed
	any_new_result1_3.universeAvatarType = arg1.universeAvatarType
	any_new_result1_3.genre = arg1.genre
	if FFlagLuaAppGenreUpdate_upvr then
		any_new_result1_3.genre_l1 = arg1.genre_l1
	end
	any_new_result1_3.genre_l2 = arg1.genre_l2
	any_new_result1_3.licenseDescription = arg1.licenseDescription
	any_new_result1_3.localizedFiatPrice = arg1.localizedFiatPrice
	any_new_result1_3.refundLink = arg1.refundLink
	if arg1.refundPolicy then
		any_new_result1_3.refundPolicy = {
			policyText = arg1.refundPolicy.policyText;
			learnMoreUrl = getZendeskUrl_upvr(arg1.refundPolicy.learnMoreBaseUrl, arg1.refundPolicy.locale, arg1.refundPolicy.articleId);
		}
	end
	return any_new_result1_3
end
return module_upvr