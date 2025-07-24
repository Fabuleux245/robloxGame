-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:24
-- Luau version 6, Types version 3
-- Time taken: 0.006929 seconds

local CorePackages = game:GetService("CorePackages")
local Players_upvr = game:GetService("Players")
local HttpService_upvr = game:GetService("HttpService")
local Promise_upvr = require(CorePackages.Packages.Promise)
local Url_upvr = require(CorePackages.Workspace.Packages.Http).Url
local function _(arg1, arg2, arg3, arg4) -- Line 20, Named "request"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	return HttpService_upvr:RequestInternal(arg1):Start(function(arg1_2, arg2_2) -- Line 21
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: HttpService_upvr (copied, readonly)
			[3]: arg3 (readonly)
			[4]: arg4 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if arg1_2 and arg2_2.StatusCode == 200 then
			local var7
			if arg2 and arg2_2.Body ~= "null" then
				local pcall_result1_5, _ = pcall(HttpService_upvr.JSONDecode, HttpService_upvr, arg2_2.Body)
				var7 = pcall_result1_5
			else
			end
			if var7 then
				arg3(arg2_2.Body)
			else
				arg4("Could not parse JSON.")
			end
		end
		arg4(arg2_2)
	end)
end
local function createYieldingPromise_upvr(arg1, arg2) -- Line 43, Named "createYieldingPromise"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_3, arg2_3) -- Line 44
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: HttpService_upvr (copied, readonly)
		]]
		coroutine.wrap(function() -- Line 45
			--[[ Upvalues[5]:
				[1]: arg1 (copied, readonly)
				[2]: arg2 (copied, readonly)
				[3]: arg1_3 (readonly)
				[4]: arg2_3 (readonly)
				[5]: HttpService_upvr (copied, readonly)
			]]
			local function _(arg1_4, arg2_4) -- Line 21
				--[[ Upvalues[4]:
					[1]: arg2 (readonly)
					[2]: HttpService_upvr (copied, readonly)
					[3]: arg1_3 (readonly)
					[4]: arg2_3 (readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				if arg1_4 and arg2_4.StatusCode == 200 then
					local var13
					if arg2 and arg2_4.Body ~= "null" then
						local pcall_result1_3, pcall_result2_4 = pcall(HttpService_upvr.JSONDecode, HttpService_upvr, arg2_4.Body)
						var13 = pcall_result1_3
					else
					end
					if var13 then
						arg1_3(arg2_4.Body)
					else
						arg2_3("Could not parse JSON.")
					end
				end
				arg2_3(arg2_4)
			end
		end)()
	end)
end
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local function getProductInfo_upvr(arg1) -- Line 54, Named "getProductInfo"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: MarketplaceService_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_5, arg2) -- Line 55
		--[[ Upvalues[2]:
			[1]: MarketplaceService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 56
			--[[ Upvalues[2]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			return MarketplaceService_upvr:GetProductInfo(arg1)
		end)
		if pcall_result1 then
			arg1_5(pcall_result2_2)
		else
			arg2("Failure in getProductInfo: ", tostring(pcall_result2_2))
		end
	end)
end
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local function getItemDetails_upvr(arg1, arg2) -- Line 71, Named "getItemDetails"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: AvatarEditorService_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_6, arg2_5) -- Line 72
		--[[ Upvalues[3]:
			[1]: AvatarEditorService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		local pcall_result1_4, pcall_result2_3 = pcall(function() -- Line 73
			--[[ Upvalues[3]:
				[1]: AvatarEditorService_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg2 (copied, readonly)
			]]
			return AvatarEditorService_upvr:GetItemDetails(arg1, arg2)
		end)
		if pcall_result1_4 then
			arg1_6(pcall_result2_3)
		else
			arg2_5("Failure in getItemDetails: ", tostring(pcall_result2_3))
		end
	end)
end
local function getPlayerName_upvr(arg1) -- Line 88, Named "getPlayerName"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_7, arg2) -- Line 89
		--[[ Upvalues[2]:
			[1]: Players_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local pcall_result1_2, pcall_result2 = pcall(function() -- Line 90
			--[[ Upvalues[2]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			return Players_upvr:GetNameFromUserIdAsync(arg1)
		end)
		if pcall_result1_2 then
			arg1_7(pcall_result2)
		else
			arg2("Failure in getPlayerName: ", tostring(pcall_result2))
		end
	end)
end
local function getAssetBundles_upvr(arg1) -- Line 105, Named "getAssetBundles"
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = Url_upvr.CATALOG_URL.."v1/assets/"..tostring(arg1).."/bundles";
		Method = "GET";
	}, true)
end
local function getHumanoidDescriptionFromCostumeId_upvr(arg1) -- Line 118, Named "getHumanoidDescriptionFromCostumeId"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_8, arg2) -- Line 119
		--[[ Upvalues[2]:
			[1]: Players_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		spawn(function() -- Line 120
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_8 (readonly)
			]]
			local any_GetHumanoidDescriptionFromOutfitId_result1 = Players_upvr:GetHumanoidDescriptionFromOutfitId(arg1)
			if any_GetHumanoidDescriptionFromOutfitId_result1 then
				arg1_8(any_GetHumanoidDescriptionFromOutfitId_result1)
			end
		end)
	end)
end
local function getAssetFavoriteCount_upvr(arg1) -- Line 133, Named "getAssetFavoriteCount"
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = Url_upvr.CATALOG_URL.."v1/favorites/assets/"..tostring(arg1).."/count";
		Method = "GET";
	}, false)
end
local function getBundleFavoriteCount_upvr(arg1) -- Line 146, Named "getBundleFavoriteCount"
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = Url_upvr.CATALOG_URL.."v1/favorites/bundles/"..tostring(arg1).."/count";
		Method = "GET";
	}, false)
end
local function getFavoriteForAsset_upvr(arg1) -- Line 159, Named "getFavoriteForAsset"
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = Url_upvr.CATALOG_URL.."v1/favorites/users/"..tostring(Players_upvr.LocalPlayer.UserId).."/assets/"..tostring(arg1).."/favorite";
		Method = "GET";
	}, true)
end
local function getFavoriteForBundle_upvr(arg1) -- Line 178, Named "getFavoriteForBundle"
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = Url_upvr.CATALOG_URL.."v1/favorites/users/"..tostring(Players_upvr.LocalPlayer.UserId).."/bundles/"..tostring(arg1).."/favorite";
		Method = "GET";
	}, true)
end
local function createFavoriteForAsset_upvr(arg1) -- Line 197, Named "createFavoriteForAsset"
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = Url_upvr.CATALOG_URL.."v1/favorites/users/"..tostring(Players_upvr.LocalPlayer.UserId).."/assets/"..tostring(arg1).."/favorite";
		Method = "POST";
		Body = HttpService_upvr:JSONEncode({});
	}, true)
end
local function deleteFavoriteForAsset_upvr(arg1) -- Line 217, Named "deleteFavoriteForAsset"
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = Url_upvr.CATALOG_URL.."v1/favorites/users/"..tostring(Players_upvr.LocalPlayer.UserId).."/assets/"..tostring(arg1).."/favorite";
		Method = "DELETE";
	}, true)
end
local function createFavoriteForBundle_upvr(arg1) -- Line 236, Named "createFavoriteForBundle"
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = Url_upvr.CATALOG_URL.."v1/favorites/users/"..tostring(Players_upvr.LocalPlayer.UserId).."/bundles/"..tostring(arg1).."/favorite";
		Method = "POST";
		Body = HttpService_upvr:JSONEncode({});
	}, true)
end
local function deleteFavoriteForBundle_upvr(arg1) -- Line 256, Named "deleteFavoriteForBundle"
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = Url_upvr.CATALOG_URL.."v1/favorites/users/"..tostring(Players_upvr.LocalPlayer.UserId).."/bundles/"..tostring(arg1).."/favorite";
		Method = "DELETE";
	}, true)
end
local function getEconomyProductInfo_upvr(arg1) -- Line 275, Named "getEconomyProductInfo"
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = Url_upvr.ECONOMY_URL.."v1/products/"..tostring(arg1).."?showPurchasable=true";
		Method = "GET";
	}, true)
end
local function getModelFromUserId_upvr(arg1) -- Line 288, Named "getModelFromUserId"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_9, arg2) -- Line 289
		--[[ Upvalues[2]:
			[1]: Players_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		spawn(function() -- Line 290
			--[[ Upvalues[4]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_9 (readonly)
				[4]: arg2 (readonly)
			]]
			local any_CreateHumanoidModelFromUserId_result1 = Players_upvr:CreateHumanoidModelFromUserId(arg1)
			if any_CreateHumanoidModelFromUserId_result1 then
				arg1_9(any_CreateHumanoidModelFromUserId_result1)
			else
				arg2("Failure in getModelFromUserId")
			end
		end)
	end)
end
local function getCollectibleResellableInstances_upvr(arg1, arg2) -- Line 305, Named "getCollectibleResellableInstances"
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = string.format("%smarketplace-sales/v1/item/%s/resellable-instances?%s", Url_upvr.APIS_URL, arg1, Url_upvr:makeQueryString({
			ownerId = tostring(arg2);
			ownerType = "User";
			cursor = "";
			limit = 500;
		}));
		Method = "GET";
	}, true)
end
local formatted_upvr = string.format("https://develop.%s", Url_upvr.DOMAIN)
local function getVersionInfo_upvr(arg1) -- Line 322, Named "getVersionInfo"
	--[[ Upvalues[2]:
		[1]: formatted_upvr (readonly)
		[2]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = string.format("%sv1/assets/%s/saved-versions", formatted_upvr, arg1);
		Method = "GET";
	}, true)
end
local function getExperiencePlayability_upvr(arg1) -- Line 331, Named "getExperiencePlayability"
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = string.format("%sv1/games/multiget-playability-status?universeIds=%s", Url_upvr.GAME_URL, arg1);
		Method = "GET";
	}, true)
end
local function getExperienceInfo_upvr(arg1) -- Line 340, Named "getExperienceInfo"
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: createYieldingPromise_upvr (readonly)
	]]
	return createYieldingPromise_upvr({
		Url = string.format("%sv1/games?universeIds=%s", Url_upvr.GAME_URL, arg1);
		Method = "GET";
	}, true)
end
return {
	new = function() -- Line 351, Named "new"
		--[[ Upvalues[19]:
			[1]: getProductInfo_upvr (readonly)
			[2]: getEconomyProductInfo_upvr (readonly)
			[3]: getPlayerName_upvr (readonly)
			[4]: getAssetBundles_upvr (readonly)
			[5]: getHumanoidDescriptionFromCostumeId_upvr (readonly)
			[6]: getAssetFavoriteCount_upvr (readonly)
			[7]: getBundleFavoriteCount_upvr (readonly)
			[8]: getFavoriteForAsset_upvr (readonly)
			[9]: getFavoriteForBundle_upvr (readonly)
			[10]: createFavoriteForAsset_upvr (readonly)
			[11]: deleteFavoriteForAsset_upvr (readonly)
			[12]: createFavoriteForBundle_upvr (readonly)
			[13]: deleteFavoriteForBundle_upvr (readonly)
			[14]: getModelFromUserId_upvr (readonly)
			[15]: getCollectibleResellableInstances_upvr (readonly)
			[16]: getVersionInfo_upvr (readonly)
			[17]: getExperiencePlayability_upvr (readonly)
			[18]: getExperienceInfo_upvr (readonly)
			[19]: getItemDetails_upvr (readonly)
		]]
		local module = {
			getProductInfo = getProductInfo_upvr;
			getEconomyProductInfo = getEconomyProductInfo_upvr;
			getPlayerName = getPlayerName_upvr;
			getAssetBundles = getAssetBundles_upvr;
			getHumanoidDescriptionFromCostumeId = getHumanoidDescriptionFromCostumeId_upvr;
			getAssetFavoriteCount = getAssetFavoriteCount_upvr;
			getBundleFavoriteCount = getBundleFavoriteCount_upvr;
			getFavoriteForAsset = getFavoriteForAsset_upvr;
			getFavoriteForBundle = getFavoriteForBundle_upvr;
			createFavoriteForAsset = createFavoriteForAsset_upvr;
			deleteFavoriteForAsset = deleteFavoriteForAsset_upvr;
			createFavoriteForBundle = createFavoriteForBundle_upvr;
			deleteFavoriteForBundle = deleteFavoriteForBundle_upvr;
			getModelFromUserId = getModelFromUserId_upvr;
			getCollectibleResellableInstances = getCollectibleResellableInstances_upvr;
			getVersionInfo = getVersionInfo_upvr;
			getExperiencePlayability = getExperiencePlayability_upvr;
			getExperienceInfo = getExperienceInfo_upvr;
			getItemDetails = getItemDetails_upvr;
		}
		setmetatable(module, {
			__tostring = function() -- Line 381, Named "__tostring"
				return "Service(Network)"
			end;
		})
		return module
	end;
}