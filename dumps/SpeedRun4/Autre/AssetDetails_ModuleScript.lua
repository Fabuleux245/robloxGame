-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:43
-- Luau version 6, Types version 3
-- Time taken: 0.010395 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Parent = script.Parent.Parent
local Roact_upvr = require(CorePackages.Packages.Roact)
local UtilityFunctions_upvr = require(Parent.UtilityFunctions)
local tutils_upvr = require(CorePackages.Packages.tutils)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("AssetDetails")
function any_extend_result1.setScrollingEnabled(arg1, arg2) -- Line 48
	if arg1.state.scrollingEnabled ~= arg2 then
		local tbl = {}
		tbl.scrollingEnabled = arg2
		arg1:setState(tbl)
	end
end
local AttributionConstants_upvr = require(Parent.AttributionConstants)
local Overlay_upvr = require(Parent.Enums.Overlay)
local Constants_upvr = require(Parent.Constants)
function any_extend_result1.getInfoRowProps(arg1) -- Line 58
	--[[ Upvalues[5]:
		[1]: RobloxTranslator_upvr (readonly)
		[2]: AttributionConstants_upvr (readonly)
		[3]: Overlay_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assetInfo = arg1.props.assetInfo
	if not assetInfo then
		assetInfo = {}
	end
	local props = arg1.props
	local locale = props.locale
	if assetInfo.parentBundleId == nil then
		props = false
	else
		props = true
	end
	local creatingUniverseId_2 = assetInfo.creatingUniverseId
	if creatingUniverseId_2 then
		local var30_upvr = arg1.props.creatingExperiences[creatingUniverseId_2]
		if var30_upvr and AttributionConstants_upvr.ShowPlayableAttributionMapper[var30_upvr.playabilityStatus] then
		end
	end
	var30_upvr = nil
	local var32 = var30_upvr
	if props then
		var32 = RobloxTranslator_upvr:FormatByKeyForLocale("Feature.Catalog.Label.Bundle", locale)
	else
		local var33 = Constants_upvr.AssetCategoriesLocalized[Constants_upvr.AssetTypeIdToCategory[assetInfo.assetTypeId]]
		local var34 = Constants_upvr.AssetTypeIdToTypeLocalized[assetInfo.assetTypeId]
		if var33 and var34 then
			var32 = RobloxTranslator_upvr:FormatByKeyForLocale(var33, locale).." | "..RobloxTranslator_upvr:FormatByKeyForLocale(var34, locale)
		end
	end
	return {{
		infoName = RobloxTranslator_upvr:FormatByKeyForLocale("Feature.Catalog.Label.Filter.Creator", locale);
		infoData = assetInfo.creatorName or "";
		hasVerifiedBadge = assetInfo.creatorHasVerifiedBadge;
		LayoutOrder = 1;
		Selectable = false;
	}, {
		infoName = RobloxTranslator_upvr:FormatByKeyForLocale("Feature.Catalog.Label.Attribution", locale);
		infoData = var30_upvr.name or "";
		onActivate = function() -- Line 91, Named "onActivate"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: Overlay_upvr (copied, readonly)
				[3]: var30_upvr (readonly)
			]]
			arg1.props.openOverlay(Overlay_upvr.AttributionTraversal, var30_upvr)
		end;
		LayoutOrder = 2;
		[Roact_upvr.Ref] = arg1.attributionRef;
		Selectable = true;
	}, {
		infoName = RobloxTranslator_upvr:FormatByKeyForLocale("Feature.Catalog.Label.CategoryType", locale);
		infoData = var32;
		LayoutOrder = 3;
		Selectable = false;
	}}
end
function any_extend_result1.init(arg1) -- Line 135
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.state = {
		scrollingEnabled = true;
	}
	arg1.attributionRef = Roact_upvr.createRef()
end
function any_extend_result1.willUpdate(arg1, arg2) -- Line 143
	--[[ Upvalues[2]:
		[1]: UtilityFunctions_upvr (readonly)
		[2]: tutils_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var44
	if UtilityFunctions_upvr.isCollectibles(arg1.props.assetInfo) then
		local collectibleItemId = arg1.props.assetInfo.collectibleItemId
		local resellableInstances = arg1.props.resellableInstances
		local resellableInstances_3 = arg2.resellableInstances
		var44 = resellableInstances
		if var44 then
			var44 = resellableInstances[collectibleItemId]
			if var44 then
				var44 = resellableInstances_3
				if var44 then
					var44 = resellableInstances_3[collectibleItemId]
				end
			end
		end
		if var44 and tutils_upvr.fieldCount(resellableInstances[collectibleItemId]) ~= tutils_upvr.fieldCount(resellableInstances_3[collectibleItemId]) then
			arg1:setState({})
		end
	end
	if arg1.props.assetInfo then
		local parentBundleId = arg1.props.assetInfo.parentBundleId
	end
	local bundles = arg1.props.bundles
	local bundles_2 = arg2.bundles
	if parentBundleId and bundles then
		var44 = bundles[parentBundleId]
		if var44 and bundles_2 then
			var44 = bundles_2[parentBundleId]
			if var44 then
				var44 = bundles_2[parentBundleId]
				if var44 ~= bundles[parentBundleId] then
					var44 = arg1.props.setAssetFromBundleInfo
					var44(arg1.props.assetInfo.assetId, bundles_2[parentBundleId])
				end
			end
		end
	end
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 176
	--[[ Upvalues[1]:
		[1]: UtilityFunctions_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assetInfo_3 = arg1.props.assetInfo
	local var52 = assetInfo_3
	if var52 then
		if assetInfo_3 == arg2.assetInfo then
			var52 = false
		else
			var52 = true
			local var53
		end
	end
	if var52 then
		var53 = arg1.props
		if assetInfo_3.parentBundleId == nil then
			var53 = false
		else
			var53 = true
		end
		if var53 then
			local any_getBundleId_result1 = UtilityFunctions_upvr.getBundleId(assetInfo_3)
			local var55
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var55 = assetInfo_3.owned
			return var55 == nil
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var55 = var53.bundles[any_getBundleId_result1].owned
			return var55 == nil
		end
		if not var53 and INLINED() or var53 and INLINED_2() then
			var55 = assetInfo_3.assetId
			local Asset = Enum.AvatarItemType.Asset
			if var53 then
				var55 = any_getBundleId_result1
				Asset = Enum.AvatarItemType.Bundle
			end
			arg1.props.getItemDetails(var55, Asset)
		end
	end
	local viewingDetails = arg1.props.detailsInformation.viewingDetails
	if viewingDetails then
		viewingDetails = not arg2.detailsInformation.viewingDetails
	end
	if viewingDetails then
		arg1.props.reportOpenDetailsPage(assetInfo_3)
	end
end
local Images_upvr = UIBlox.App.ImageSet.Images
local InspectAndBuyContext_upvr = require(Parent.Components.InspectAndBuyContext)
local GetFFlagDisplayCollectiblesIcon_upvr = require(Parent.Flags.GetFFlagDisplayCollectiblesIcon)
local Players_upvr = game:GetService("Players")
local ControllerBarHeight_upvr = require(CoreGui.RobloxGui.Modules.InGameMenuConstants).ControllerBarHeight
local Theme_upvr = require(CoreGui.RobloxGui.Modules.Settings.Theme)
local Colors_upvr = require(Parent.Colors)
local DetailsButtons_upvr = require(Parent.Components.DetailsButtons)
local DetailsThumbnail_upvr = require(Parent.Components.DetailsThumbnail)
local isInExperienceUIVREnabled_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local TryOnViewport_upvr = require(Parent.Components.TryOnViewport)
local DetailsText_upvr = require(Parent.Components.DetailsText)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local DetailsDescription_upvr = require(Parent.Components.DetailsDescription)
local ItemInfoList_upvr = require(CorePackages.Workspace.Packages.ItemDetails).ItemInfoList
local function render(arg1) -- Line 214
	--[[ Upvalues[20]:
		[1]: Images_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: InspectAndBuyContext_upvr (readonly)
		[4]: GetFFlagDisplayCollectiblesIcon_upvr (readonly)
		[5]: UtilityFunctions_upvr (readonly)
		[6]: Players_upvr (readonly)
		[7]: tutils_upvr (readonly)
		[8]: ControllerBarHeight_upvr (readonly)
		[9]: Theme_upvr (readonly)
		[10]: Colors_upvr (readonly)
		[11]: DetailsButtons_upvr (readonly)
		[12]: DetailsThumbnail_upvr (readonly)
		[13]: isInExperienceUIVREnabled_upvr (readonly)
		[14]: TryOnViewport_upvr (readonly)
		[15]: DetailsText_upvr (readonly)
		[16]: ImageSetLabel_upvr (readonly)
		[17]: RobloxTranslator_upvr (readonly)
		[18]: AppFonts_upvr (readonly)
		[19]: DetailsDescription_upvr (readonly)
		[20]: ItemInfoList_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assetInfo_upvr = arg1.props.assetInfo
	if not assetInfo_upvr then
		assetInfo_upvr = {}
	end
	local icons_status_item_owned_upvr = Images_upvr["icons/status/item/owned"]
	if not icons_status_item_owned_upvr or not (icons_status_item_owned_upvr.ImageRectSize / Images_upvr.ImagesResolutionScale) then
	end
	local module = {}
	local view_upvr = arg1.props.view
	local detailsInformation_upvr = arg1.props.detailsInformation
	local localPlayerModel_upvr = arg1.props.localPlayerModel
	local scrollingEnabled_upvr = arg1.state.scrollingEnabled
	local vector2_upvr = Vector2.new(0, 0)
	local locale_2_upvr = arg1.props.locale
	function module.render(arg1_2) -- Line 225
		--[[ Upvalues[27]:
			[1]: view_upvr (readonly)
			[2]: GetFFlagDisplayCollectiblesIcon_upvr (copied, readonly)
			[3]: UtilityFunctions_upvr (copied, readonly)
			[4]: assetInfo_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: Players_upvr (copied, readonly)
			[7]: tutils_upvr (copied, readonly)
			[8]: ControllerBarHeight_upvr (copied, readonly)
			[9]: Theme_upvr (copied, readonly)
			[10]: Roact_upvr (copied, readonly)
			[11]: Colors_upvr (copied, readonly)
			[12]: detailsInformation_upvr (readonly)
			[13]: DetailsButtons_upvr (copied, readonly)
			[14]: localPlayerModel_upvr (readonly)
			[15]: scrollingEnabled_upvr (readonly)
			[16]: DetailsThumbnail_upvr (copied, readonly)
			[17]: isInExperienceUIVREnabled_upvr (copied, readonly)
			[18]: TryOnViewport_upvr (copied, readonly)
			[19]: DetailsText_upvr (copied, readonly)
			[20]: vector2_upvr (readonly)
			[21]: ImageSetLabel_upvr (copied, readonly)
			[22]: icons_status_item_owned_upvr (readonly)
			[23]: RobloxTranslator_upvr (copied, readonly)
			[24]: locale_2_upvr (readonly)
			[25]: AppFonts_upvr (copied, readonly)
			[26]: DetailsDescription_upvr (copied, readonly)
			[27]: ItemInfoList_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 7. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 7. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 11. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 11. Error Block 3 end (CF ANALYSIS FAILED)
	end
	return Roact_upvr.createElement(InspectAndBuyContext_upvr.Consumer, module)
end
any_extend_result1.render = render
local GetAssetBundles_upvr = require(Parent.Thunks.GetAssetBundles)
local GetEconomyProductInfo_upvr = require(Parent.Thunks.GetEconomyProductInfo)
local ReportOpenDetailsPage_upvr = require(Parent.Thunks.ReportOpenDetailsPage)
local GetCollectibleResellableInstances_upvr = require(Parent.Thunks.GetCollectibleResellableInstances)
local OpenOverlay_upvr = require(Parent.Actions.OpenOverlay)
local GetItemDetails_upvr = require(Parent.Thunks.GetItemDetails)
local SetAssetFromBundleInfo_upvr = require(Parent.Actions.SetAssetFromBundleInfo)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 335
	return {
		view = arg1.view;
		detailsInformation = arg1.detailsInformation;
		assetInfo = arg1.assets[arg1.detailsInformation.assetId];
		bundles = arg1.bundles;
		gamepadEnabled = arg1.gamepadEnabled;
		locale = arg1.locale;
		resellableInstances = arg1.collectibleResellableInstances;
		creatingExperiences = arg1.creatingExperiences;
	}
end, function(arg1) -- Line 348
	--[[ Upvalues[7]:
		[1]: GetAssetBundles_upvr (readonly)
		[2]: GetEconomyProductInfo_upvr (readonly)
		[3]: ReportOpenDetailsPage_upvr (readonly)
		[4]: GetCollectibleResellableInstances_upvr (readonly)
		[5]: OpenOverlay_upvr (readonly)
		[6]: GetItemDetails_upvr (readonly)
		[7]: SetAssetFromBundleInfo_upvr (readonly)
	]]
	return {
		getAssetBundles = function(arg1_3) -- Line 350, Named "getAssetBundles"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: GetAssetBundles_upvr (copied, readonly)
			]]
			arg1(GetAssetBundles_upvr(arg1_3))
		end;
		getEconomyProductInfo = function(arg1_4, arg2, arg3) -- Line 353, Named "getEconomyProductInfo"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: GetEconomyProductInfo_upvr (copied, readonly)
			]]
			arg1(GetEconomyProductInfo_upvr(arg1_4, arg2, arg3))
		end;
		reportOpenDetailsPage = function(arg1_5) -- Line 356, Named "reportOpenDetailsPage"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ReportOpenDetailsPage_upvr (copied, readonly)
			]]
			arg1(ReportOpenDetailsPage_upvr(arg1_5))
		end;
		getCollectibleResellableInstances = function(arg1_6, arg2) -- Line 359, Named "getCollectibleResellableInstances"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: GetCollectibleResellableInstances_upvr (copied, readonly)
			]]
			arg1(GetCollectibleResellableInstances_upvr(arg1_6, arg2))
		end;
		openOverlay = function(arg1_7, arg2) -- Line 362, Named "openOverlay"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: OpenOverlay_upvr (copied, readonly)
			]]
			arg1(OpenOverlay_upvr(arg1_7, arg2))
		end;
		getItemDetails = function(arg1_8, arg2) -- Line 365, Named "getItemDetails"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: GetItemDetails_upvr (copied, readonly)
			]]
			arg1(GetItemDetails_upvr(arg1_8, arg2))
		end;
		setAssetFromBundleInfo = function(arg1_9, arg2) -- Line 368, Named "setAssetFromBundleInfo"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetAssetFromBundleInfo_upvr (copied, readonly)
			]]
			arg1(SetAssetFromBundleInfo_upvr(arg1_9, arg2))
		end;
	}
end)(any_extend_result1)