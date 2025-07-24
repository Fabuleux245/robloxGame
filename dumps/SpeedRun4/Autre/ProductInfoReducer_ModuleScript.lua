-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:39
-- Luau version 6, Types version 3
-- Time taken: 0.001774 seconds

local Parent = script.Parent.Parent
local getPreviewImageUrl_upvr = require(Parent.getPreviewImageUrl)
local module = {}
local Constants_upvr = require(Parent.Misc.Constants)
local GetFFlagTranslateDevProducts_upvr = require(Parent.Flags.GetFFlagTranslateDevProducts)
local GetFFlagEnableCreatorStorePurchasingCutover_upvr = require(Parent.Flags.GetFFlagEnableCreatorStorePurchasingCutover)
module[require(Parent.Actions.ProductInfoReceived).name] = function(arg1, arg2) -- Line 25
	--[[ Upvalues[4]:
		[1]: Constants_upvr (readonly)
		[2]: GetFFlagTranslateDevProducts_upvr (readonly)
		[3]: getPreviewImageUrl_upvr (readonly)
		[4]: GetFFlagEnableCreatorStorePurchasingCutover_upvr (readonly)
	]]
	local productInfo = arg2.productInfo
	local var9 = ""
	local var10 = ""
	local var11
	if productInfo.ProductType == var11 then
		var9 = productInfo.CollectibleItemId
		var10 = productInfo.CollectibleProductId
	end
	local module_2 = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11 = productInfo.DisplayName
		return var11
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var11 = productInfo.Name
		return var11
	end
	if not GetFFlagTranslateDevProducts_upvr() or not INLINED() and not INLINED_2() then
		var11 = productInfo.Name
	end
	module_2.name = var11
	var11 = productInfo.Description
	module_2.description = var11
	var11 = productInfo.PriceInRobux or 0
	module_2.price = var11
	var11 = productInfo.PremiumPriceInRobux
	module_2.premiumPrice = var11
	var11 = getPreviewImageUrl_upvr(productInfo)
	module_2.imageUrl = var11
	var11 = productInfo.AssetTypeId
	module_2.assetTypeId = var11
	if GetFFlagEnableCreatorStorePurchasingCutover_upvr() then
		var11 = productInfo.AssetType
	else
		var11 = nil
	end
	module_2.assetType = var11
	var11 = productInfo.ProductId
	module_2.productId = var11
	var11 = productInfo.ProductType
	module_2.productType = var11
	var11 = productInfo.MinimumMembershipLevel
	module_2.membershipTypeRequired = var11
	var11 = productInfo.AssetTypeId
	module_2.itemType = var11
	module_2.collectibleItemId = var9
	module_2.collectibleProductId = var10
	return module_2
end
local GetFFlagFixBundlePromptThumbnail_upvr = require(Parent.Flags.GetFFlagFixBundlePromptThumbnail)
local ItemType_upvr = require(Parent.Enums.ItemType)
module[require(Parent.Actions.BundleProductInfoReceived).name] = function(arg1, arg2) -- Line 52
	--[[ Upvalues[3]:
		[1]: GetFFlagFixBundlePromptThumbnail_upvr (readonly)
		[2]: ItemType_upvr (readonly)
		[3]: getPreviewImageUrl_upvr (readonly)
	]]
	local bundleProductInfo = arg2.bundleProductInfo
	local var24
	for _, v in ipairs(bundleProductInfo.items) do
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			return GetFFlagFixBundlePromptThumbnail_upvr()
		end
		if v.type ~= "UserOutfit" or INLINED_3() then break end
	end
	bundleProductInfo.costumeId = nil
	bundleProductInfo.itemType = ItemType_upvr.Bundle
	return {
		name = bundleProductInfo.name;
		price = bundleProductInfo.product.priceInRobux or 0;
		imageUrl = getPreviewImageUrl_upvr(bundleProductInfo);
		assetTypeId = nil;
		productId = bundleProductInfo.product.id;
		membershipTypeRequired = nil;
		itemType = bundleProductInfo.itemType;
	}
end
module[require(Parent.Actions.CompleteRequest).name] = function(arg1, arg2) -- Line 79
	return {}
end
return require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Rodux.createReducer({}, module)