-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:26
-- Luau version 6, Types version 3
-- Time taken: 0.006368 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Promise_upvr = require(CorePackages.Packages.Promise)
local module_upvr = {{
	id = 100425207;
	name = "Reinforced Wizard";
	assetType = {
		id = 8;
		name = "Hat";
	};
}, {
	id = 2510238627;
	name = "Rthro Run";
	assetType = {
		id = 53;
		name = "Run Animation";
	};
}, {
	id = 2807164805;
	name = "Mech Golem - Head";
	assetType = {
		id = 17;
		name = "Head";
	};
}}
local module_2_upvr = {
	data = {{
		id = 451;
		name = "test name";
		description = "test description";
		bundleType = "testBundleType";
		items = {{
			owned = false;
			id = 2510230574;
			name = "test asset name";
		}, {
			owned = false;
			id = 2510233257;
			name = "test asset name 2";
		}, {
			owned = false;
			type = "UserOutfit";
			id = 2510233258;
			name = "Outfit";
		}};
		creator = {
			id = 1;
			name = "test creator name";
		};
		product = {
			id = 480872498;
			isForSale = true;
			priceInRobux = 250;
		};
	}};
}
local HumanoidDescription_upvr_3 = Instance.new("HumanoidDescription")
HumanoidDescription_upvr_3.HatAccessory = 1
HumanoidDescription_upvr_3.LeftArm = 2
HumanoidDescription_upvr_3.ClimbAnimation = 3
HumanoidDescription_upvr_3.BodyTypeScale = 0.3
HumanoidDescription_upvr_3.LeftLegColor = Color3.new(0, 0, 0)
HumanoidDescription_upvr_3.GraphicTShirt = 4
local HumanoidDescription_upvr = Instance.new("HumanoidDescription")
HumanoidDescription_upvr:SetEmotes({
	Wave = {1};
	Laugh = {2};
	Cheer = {3};
})
local module_4_upvr = {
	assetId = 123;
	userId = 401784814;
	created = "";
}
local module_7_upvr = {
	Name = "test name";
	Description = "test description";
	PriceInRobux = 100;
	Creator = {
		Id = 1;
		Name = "TEST CREATOR";
	};
	AssetId = 100425207;
	AssetTypeId = 8;
	ProductId = 18929548;
}
local module_3_upvr = {
	Owned = true;
	IsPurchasable = false;
	Id = 100425207;
	ItemType = "Asset";
}
local module_11_upvr = {
	purchasable = false;
	reason = "InsufficientFunds";
	price = 200;
	assetId = 10;
}
local tbl_2_upvr = {
	playabilityStatus = require(CorePackages.Workspace.Packages.PlayabilityRodux).Enums.PlayabilityStatusEnum.Playable;
	universeId = 13;
	isPlayable = true;
}
local tbl_6_upvr = {
	name = "fakename";
	id = 13;
	rootPlaceId = 17;
}
local function getRobloxProductInfo_upvr(arg1) -- Line 145, Named "getRobloxProductInfo"
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	local module_5 = {}
	module_5.AssetId = arg1
	return Promise_upvr.resolve(Cryo_upvr.Dictionary.join(module_7_upvr, module_5))
end
local function getProductInfo_upvr(arg1) -- Line 150, Named "getProductInfo"
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	local tbl = {}
	tbl.AssetId = arg1
	local any_join_result1 = Cryo_upvr.Dictionary.join(module_7_upvr, tbl)
	any_join_result1.Creator.Id = 2
	return Promise_upvr.resolve(any_join_result1)
end
local function getItemDetails_upvr(arg1, arg2) -- Line 156, Named "getItemDetails"
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	local module_9 = {}
	module_9.Id = arg1
	module_9.ItemType = arg2
	return Promise_upvr.resolve(Cryo_upvr.Dictionary.join(module_3_upvr, module_9))
end
local module_8_upvr = {
	data = {{
		assetId = 17;
		creatingUniverseId = 13;
	}};
}
local function getVersionInfo_upvr(arg1) -- Line 175, Named "getVersionInfo"
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	local module_6 = {}
	module_6.AssetId = arg1
	return Promise_upvr.resolve(Cryo_upvr.Dictionary.join(module_8_upvr, module_6))
end
local function getExperiencePlayability_upvr(arg1) -- Line 180, Named "getExperiencePlayability"
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	local tbl_4 = {}
	tbl_4.universeId = arg1
	return Promise_upvr.resolve({Cryo_upvr.Dictionary.join(tbl_2_upvr, tbl_4)})
end
local function getExperienceInfo_upvr(arg1) -- Line 185, Named "getExperienceInfo"
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	local tbl_3 = {}
	tbl_3.id = arg1
	return Promise_upvr.resolve({
		data = {Cryo_upvr.Dictionary.join(tbl_6_upvr, tbl_3)};
	})
end
local function getAssetBundles_upvr(arg1) -- Line 190, Named "getAssetBundles"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	return Promise_upvr.resolve(module_2_upvr)
end
local function getPlayerName_upvr(arg1) -- Line 194, Named "getPlayerName"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.resolve("TEST")
end
local function createFavoriteForAsset_upvr(arg1) -- Line 198, Named "createFavoriteForAsset"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.resolve()
end
local function createFavoriteForBundle_upvr(arg1) -- Line 202, Named "createFavoriteForBundle"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.resolve()
end
local function deleteFavoriteForAsset_upvr(arg1) -- Line 206, Named "deleteFavoriteForAsset"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.resolve()
end
local function deleteFavoriteForBundle_upvr(arg1) -- Line 210, Named "deleteFavoriteForBundle"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.resolve()
end
local function getAssetFavoriteCount_upvr(arg1) -- Line 214, Named "getAssetFavoriteCount"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.resolve(120)
end
local function getBundleFavoriteCount_upvr(arg1) -- Line 218, Named "getBundleFavoriteCount"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.resolve(120)
end
local function getFavoriteForAsset_upvr(arg1) -- Line 222, Named "getFavoriteForAsset"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	if arg1 == "GetFavoriteModel" then
		return Promise_upvr.resolve(module_4_upvr)
	end
	return Promise_upvr.resolve("null")
end
local function getFavoriteForBundle_upvr(arg1) -- Line 230, Named "getFavoriteForBundle"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	if arg1 == "GetFavoriteModel" then
		return Promise_upvr.resolve(module_4_upvr)
	end
	return Promise_upvr.resolve("null")
end
local function getEconomyProductInfo_upvr(arg1) -- Line 238, Named "getEconomyProductInfo"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: module_11_upvr (readonly)
	]]
	return Promise_upvr.resolve(module_11_upvr)
end
local function getModelFromUserId_upvr(arg1) -- Line 242, Named "getModelFromUserId"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.resolve()
end
local function networkFailure_upvr(arg1, arg2) -- Line 246, Named "networkFailure"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.reject("Failed to access network service")
end
local module = {}
module.__index = module
function module.new(arg1, arg2) -- Line 253
	--[[ Upvalues[19]:
		[1]: networkFailure_upvr (readonly)
		[2]: getProductInfo_upvr (readonly)
		[3]: getRobloxProductInfo_upvr (readonly)
		[4]: getPlayerName_upvr (readonly)
		[5]: getAssetBundles_upvr (readonly)
		[6]: createFavoriteForAsset_upvr (readonly)
		[7]: createFavoriteForBundle_upvr (readonly)
		[8]: deleteFavoriteForAsset_upvr (readonly)
		[9]: deleteFavoriteForBundle_upvr (readonly)
		[10]: getAssetFavoriteCount_upvr (readonly)
		[11]: getBundleFavoriteCount_upvr (readonly)
		[12]: getFavoriteForAsset_upvr (readonly)
		[13]: getFavoriteForBundle_upvr (readonly)
		[14]: getEconomyProductInfo_upvr (readonly)
		[15]: getModelFromUserId_upvr (readonly)
		[16]: getVersionInfo_upvr (readonly)
		[17]: getExperiencePlayability_upvr (readonly)
		[18]: getExperienceInfo_upvr (readonly)
		[19]: getItemDetails_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var47
	if arg1 then
		local tbl_5 = {}
		var47 = networkFailure_upvr
		tbl_5.getProductInfo = var47
		var47 = networkFailure_upvr
		tbl_5.getPlayerName = var47
		var47 = networkFailure_upvr
		tbl_5.getAssetBundles = var47
		var47 = networkFailure_upvr
		tbl_5.createFavoriteForAsset = var47
		var47 = networkFailure_upvr
		tbl_5.createFavoriteForBundle = var47
		var47 = networkFailure_upvr
		tbl_5.deleteFavoriteForAsset = var47
		var47 = networkFailure_upvr
		tbl_5.deleteFavoriteForBundle = var47
		var47 = networkFailure_upvr
		tbl_5.getAssetFavoriteCount = var47
		var47 = networkFailure_upvr
		tbl_5.getBundleFavoriteCount = var47
		var47 = networkFailure_upvr
		tbl_5.getFavoriteForAsset = var47
		var47 = networkFailure_upvr
		tbl_5.getFavoriteForBundle = var47
		var47 = networkFailure_upvr
		tbl_5.getEconomyProductInfo = var47
		var47 = networkFailure_upvr
		tbl_5.getModelFromUserId = var47
		var47 = networkFailure_upvr
		tbl_5.getVersionInfo = var47
		var47 = networkFailure_upvr
		tbl_5.getExperiencePlayability = var47
		var47 = networkFailure_upvr
		tbl_5.getExperienceInfo = var47
		var47 = networkFailure_upvr
		tbl_5.getItemDetails = var47
		local _ = tbl_5
	else
		local module_10 = {}
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var47 = getProductInfo_upvr
			return var47
		end
		if not arg2 or not INLINED() then
			var47 = getRobloxProductInfo_upvr
		end
		module_10.getProductInfo = var47
		var47 = getPlayerName_upvr
		module_10.getPlayerName = var47
		var47 = getAssetBundles_upvr
		module_10.getAssetBundles = var47
		var47 = createFavoriteForAsset_upvr
		module_10.createFavoriteForAsset = var47
		var47 = createFavoriteForBundle_upvr
		module_10.createFavoriteForBundle = var47
		var47 = deleteFavoriteForAsset_upvr
		module_10.deleteFavoriteForAsset = var47
		var47 = deleteFavoriteForBundle_upvr
		module_10.deleteFavoriteForBundle = var47
		var47 = getAssetFavoriteCount_upvr
		module_10.getAssetFavoriteCount = var47
		var47 = getBundleFavoriteCount_upvr
		module_10.getBundleFavoriteCount = var47
		var47 = getFavoriteForAsset_upvr
		module_10.getFavoriteForAsset = var47
		var47 = getFavoriteForBundle_upvr
		module_10.getFavoriteForBundle = var47
		var47 = getEconomyProductInfo_upvr
		module_10.getEconomyProductInfo = var47
		var47 = getModelFromUserId_upvr
		module_10.getModelFromUserId = var47
		var47 = getVersionInfo_upvr
		module_10.getVersionInfo = var47
		var47 = getExperiencePlayability_upvr
		module_10.getExperiencePlayability = var47
		var47 = getExperienceInfo_upvr
		module_10.getExperienceInfo = var47
		var47 = getItemDetails_upvr
		module_10.getItemDetails = var47
	end
	setmetatable(module_10, {
		__tostring = function() -- Line 299, Named "__tostring"
			return "MockService(Network)"
		end;
	})
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return module_10
end
function module.GetMockAssetData() -- Line 307
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr
end
function module.GetMockHumanoidDescription() -- Line 311
	--[[ Upvalues[1]:
		[1]: HumanoidDescription_upvr_3 (readonly)
	]]
	return HumanoidDescription_upvr_3
end
local HumanoidDescription_upvr_2 = Instance.new("HumanoidDescription")
function module.GetMockHumanoidDescriptionEmpty() -- Line 315
	--[[ Upvalues[1]:
		[1]: HumanoidDescription_upvr_2 (readonly)
	]]
	return HumanoidDescription_upvr_2
end
function module.GetMockPlayerName() -- Line 319
	return "TEST"
end
function module.GetMockAssetBundlesData() -- Line 323
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr
end
function module.GetMockFavoriteCount() -- Line 327
	return 120
end
function module.GetFavoriteModelId() -- Line 331
	return "GetFavoriteModel"
end
function module.GetProductInfo() -- Line 335
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	return module_7_upvr
end
function module.GetEconomyProductInfo() -- Line 339
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	return module_11_upvr
end
function module.GetMockHumanoidDescriptionEmotes() -- Line 343
	--[[ Upvalues[1]:
		[1]: HumanoidDescription_upvr (readonly)
	]]
	return HumanoidDescription_upvr
end
function module.GetVersionInfo() -- Line 347
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	return module_8_upvr
end
function module.GetExperiencePlayability() -- Line 351
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	return {tbl_2_upvr}
end
function module.GetExperienceInfo() -- Line 355
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	return {
		data = {tbl_6_upvr};
	}
end
return module