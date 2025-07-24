-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:48
-- Luau version 6, Types version 3
-- Time taken: 0.014128 seconds

local CorePackages = game:GetService("CorePackages")
local Players_upvr = game:GetService("Players")
local Parent = script.Parent.Parent
local Roact_upvr = require(CorePackages.Packages.Roact)
local Constants_upvr = require(Parent.Constants)
local UtilityFunctions_upvr = require(Parent.UtilityFunctions)
local FFlagEnableFavoriteButtonForUgc_upvr = require(Parent.Flags.FFlagEnableFavoriteButtonForUgc)
local any_extend_result1 = Roact_upvr.PureComponent:extend("DetailsButtons")
local function _(arg1) -- Line 38, Named "isAnimationAsset"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var9
	if Constants_upvr.AnimationAssetTypes[arg1] == nil then
		var9 = false
	else
		var9 = true
	end
	return var9
end
local GetFFlagIBEnableCollectiblesSystemSupport_upvr = require(Parent.Flags.GetFFlagIBEnableCollectiblesSystemSupport)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local function getBuyText_upvr(arg1, arg2, arg3, arg4) -- Line 42, Named "getBuyText"
	--[[ Upvalues[4]:
		[1]: GetFFlagIBEnableCollectiblesSystemSupport_upvr (readonly)
		[2]: RobloxTranslator_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: Players_upvr (readonly)
	]]
	local var15
	if not var15 then
		var15 = GetFFlagIBEnableCollectiblesSystemSupport_upvr()
		if var15 then
			var15 = arg1.isLimitedUnique
		end
	end
	if arg4 then
		return RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Action.FromResale", arg2, {
			PRICE = tostring(arg4);
		})
	end
	if arg3 and arg1.isForSale then
		return RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Action.LimitReached", arg2)
	end
	if arg1.price ~= nil and arg1.productType == Constants_upvr.ProductType.CollectibleItem and arg1.isForSale then
		return arg1.price
	end
	if arg1.owned then
		return RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Label.Owned", arg2)
	end
	if var15 then
		return RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Label.Limited", arg2)
	end
	local var17
	if not arg1.isForSale and not var15 then
		var17 = RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Label.Offsale", arg2)
		return var17
	end
	if arg1.isForSale then
		if arg1.premiumPricing ~= nil then
			if Players_upvr.LocalPlayer.MembershipType == Enum.MembershipType.Premium then
				var17 = arg1.premiumPricing.premiumPriceInRobux
				return var17
			end
			if arg1.price == nil then
				var17 = RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Label.PremiumOnly", arg2)
				return var17
			end
			var17 = arg1.price
			return var17
		end
		var17 = arg1.price
	end
	return var17
end
function any_extend_result1.init(arg1) -- Line 86
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.tryOnButtonRef = Roact_upvr.createRef()
	arg1.buyButtonRef = Roact_upvr.createRef()
	arg1.favoriteButtonRef = Roact_upvr.createRef()
end
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1.didUpdate(arg1, arg2) -- Line 92
	--[[ Upvalues[3]:
		[1]: Constants_upvr (readonly)
		[2]: FFlagEnableFavoriteButtonForUgc_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	local detailsInformation_2 = arg1.props.detailsInformation
	if detailsInformation_2.viewingDetails then
		local assetInfo = arg1.props.assetInfo
		local var27
		if Constants_upvr.AnimationAssetTypes[assetInfo.assetTypeId] == nil then
			var27 = false
		else
			var27 = true
		end
		var27 = arg1.props.visible
		local var28
		if arg1.props.gamepadEnabled and var27 then
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var28 = assetInfo.creatorId
				return var28
			end
			if not assetInfo or not INLINED_2() then
				var28 = 0
			end
			if FFlagEnableFavoriteButtonForUgc_upvr then
				GuiService_upvr.SelectedCoreObject = arg1.favoriteButtonRef.current
			elseif var28 == '1' then
				GuiService_upvr.SelectedCoreObject = arg1.favoriteButtonRef.current
			elseif not var27 then
				GuiService_upvr.SelectedCoreObject = arg1.tryOnButtonRef.current
			else
				GuiService_upvr.SelectedCoreObject = arg1.buyButtonRef.current
			end
			-- KONSTANTWARNING: GOTO [90] #59
		end
	else
		var27 = arg1.props
		if var27.assetInfo.bundlesAssetIsIn == nil and detailsInformation_2.viewingDetails then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if arg1.props.gamepadEnabled then
				GuiService_upvr.SelectedCoreObject = nil
			end
		end
	end
	local overlay = arg1.props.overlay
	local overlay_3 = arg2.overlay
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if arg1.props.gamepadEnabled and overlay then
		var27 = overlay.overlay
		if var27 == nil and overlay_3 then
			var27 = overlay_3.overlay
			if var27 ~= nil then
				var27 = GuiService_upvr
				var28 = arg1.tryOnButtonRef.current
				var27.SelectedCoreObject = var28
			end
		end
	end
end
local tutils_upvr = require(CorePackages.Packages.tutils)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("IBFixResaleAfterQuantityLimit", false)
function any_extend_result1.calculateBuyStatusForLimitedItem(arg1, arg2, arg3, arg4) -- Line 130
	--[[ Upvalues[6]:
		[1]: UtilityFunctions_upvr (readonly)
		[2]: tutils_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: getBuyText_upvr (readonly)
		[6]: Constants_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 14. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 14. Error Block 3 end (CF ANALYSIS FAILED)
end
local GetFFlagIBGateUGC4ACollectibleAssetsBundles_upvr = require(Parent.Flags.GetFFlagIBGateUGC4ACollectibleAssetsBundles)
local InspectAndBuyControllerBar_upvr = require(Parent.Components.InspectAndBuyControllerBar)
local FavoritesButton_upvr = require(Parent.Components.FavoritesButton)
local TryOnButton_upvr = require(Parent.Components.TryOnButton)
local BuyButton_upvr = require(Parent.Components.BuyButton)
function any_extend_result1.render(arg1) -- Line 210
	--[[ Upvalues[9]:
		[1]: UtilityFunctions_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: GetFFlagIBGateUGC4ACollectibleAssetsBundles_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: InspectAndBuyControllerBar_upvr (readonly)
		[6]: FFlagEnableFavoriteButtonForUgc_upvr (readonly)
		[7]: FavoritesButton_upvr (readonly)
		[8]: TryOnButton_upvr (readonly)
		[9]: BuyButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assetInfo_3 = arg1.props.assetInfo
	local var58
	if not assetInfo_3 or not assetInfo_3.creatorId then
	end
	if assetInfo_3 then
		if assetInfo_3.parentBundleId == nil then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		if true then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
			local _ = Constants_upvr.ItemType.Bundle
		else
		end
		local var61 = assetInfo_3
		local any_calculateBuyStatusForLimitedItem_result1 = arg1:calculateBuyStatusForLimitedItem(var61, arg1.props.locale, nil)
		if Constants_upvr.AnimationAssetTypes[assetInfo_3.assetTypeId] == nil then
			var61 = false
		else
			var61 = true
		end
		if Constants_upvr.AssetTypeIdStringToHumanoidDescriptionProp[assetInfo_3.assetTypeId] == nil and Constants_upvr.AssetTypeIdToAccessoryTypeEnum[assetInfo_3.assetTypeId] == nil then
			local var63 = false
		end
	end
	if GetFFlagIBGateUGC4ACollectibleAssetsBundles_upvr() then
		local any_isUnlimitedCollectibleAsset_result1 = UtilityFunctions_upvr.isUnlimitedCollectibleAsset(Constants_upvr.ItemType.Asset, assetInfo_3)
		if not any_isUnlimitedCollectibleAsset_result1 then
			any_isUnlimitedCollectibleAsset_result1 = UtilityFunctions_upvr.isLimitedBundle
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			any_isUnlimitedCollectibleAsset_result1 = any_isUnlimitedCollectibleAsset_result1(Constants_upvr.ItemType.Asset, assetInfo_3)
			if not any_isUnlimitedCollectibleAsset_result1 then
				any_isUnlimitedCollectibleAsset_result1 = UtilityFunctions_upvr.isUnlimitedCollectibleBundle
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				any_isUnlimitedCollectibleAsset_result1 = any_isUnlimitedCollectibleAsset_result1(Constants_upvr.ItemType.Asset, assetInfo_3)
			end
		end
	end
	if assetInfo_3 then
		local var65 = true
		if var65 then
			if 1 >= #arg1.props.assetBundles[assetInfo_3.assetId] then
				var65 = false
			else
				var65 = true
			end
		end
	end
	if arg1.props.detailsInformation.viewingDetails then
	end
	local module = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, 10);
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	if arg1.props.gamepadEnabled then
		local tbl_6 = {
			showTryOn = var63;
		}
		local tryingOn_2 = arg1.props.tryingOn
		tbl_6.tryingOn = tryingOn_2
		if FFlagEnableFavoriteButtonForUgc_upvr then
			tryingOn_2 = true
		elseif 0 ~= '1' then
			tryingOn_2 = false
		else
			tryingOn_2 = true
		end
		tbl_6.showFavorite = tryingOn_2
		tbl_6.isFavorited = arg1.props.isFavorited
	end
	module.ControllerBar = Roact_upvr.createElement(InspectAndBuyControllerBar_upvr, tbl_6)
	module.FavoriteButton = Roact_upvr.createElement(FavoritesButton_upvr, {
		favoriteButtonRef = arg1.favoriteButtonRef;
	})
	module.TryOnButton = Roact_upvr.createElement(TryOnButton_upvr, {
		showTryOn = var63;
		assetInfo = assetInfo_3;
		partOfBundleAndOffsale = not assetInfo_3.isForSale;
		bundleId = UtilityFunctions_upvr.getBundleId(assetInfo_3);
		tryOnButtonRef = arg1.tryOnButtonRef;
		localPlayerModel = arg1.props.localPlayerModel;
	})
	module.TryOnFiller = Roact_upvr.createElement("ImageLabel", {
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundTransparency = 1;
		Size = UDim2.new(0.5, -32, 0, 44);
		Visible = not var63;
		LayoutOrder = 2;
		Image = "";
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(5, 5, 120, 20);
	})
	local var74
	if GetFFlagIBGateUGC4ACollectibleAssetsBundles_upvr() and var65 then
		var74 = nil
	else
		var74 = Roact_upvr.createElement
		local tbl_8 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_8.itemType = Constants_upvr.ItemType.Asset
		tbl_8.itemId = assetInfo_3.assetId
		tbl_8.showRobuxIcon = any_calculateBuyStatusForLimitedItem_result1.showRobuxIcon
		tbl_8.forSale = any_calculateBuyStatusForLimitedItem_result1.forSale
		tbl_8.buyText = any_calculateBuyStatusForLimitedItem_result1.buyText
		tbl_8.buyButtonRef = arg1.buyButtonRef
		tbl_8.collectibleItemId = assetInfo_3.collectibleItemId
		tbl_8.collectibleLowestAvailableResaleProductId = any_calculateBuyStatusForLimitedItem_result1.collectibleLowestAvailableResaleProductId
		tbl_8.collectibleLowestAvailableResaleItemInstanceId = any_calculateBuyStatusForLimitedItem_result1.collectibleLowestAvailableResaleItemInstanceId
		tbl_8.collectibleLowestResalePrice = any_calculateBuyStatusForLimitedItem_result1.collectibleLowestResalePrice
		var74 = var74(BuyButton_upvr, tbl_8)
	end
	module.BuyButton = var74
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 51);
		Position = UDim2.new(0, 0, 1, -51);
	}, module)
end
local GetIsFavorite_upvr = require(Parent.Selectors.GetIsFavorite)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 338
	--[[ Upvalues[1]:
		[1]: GetIsFavorite_upvr (readonly)
	]]
	local module_5 = {
		visible = arg1.visible;
	}
	local var79 = arg1.assets[arg1.detailsInformation.assetId]
	if not var79 then
		var79 = {}
	end
	module_5.assetInfo = var79
	module_5.assetBundles = arg1.assetBundles
	module_5.detailsInformation = arg1.detailsInformation
	module_5.bundleInfo = arg1.bundles
	module_5.locale = arg1.locale
	module_5.gamepadEnabled = arg1.gamepadEnabled
	module_5.isFavorited = GetIsFavorite_upvr(arg1)
	module_5.tryingOn = arg1.tryingOnInfo.tryingOn
	module_5.resellableInstances = arg1.collectibleResellableInstances
	module_5.overlay = arg1.overlay
	return module_5
end)(any_extend_result1)