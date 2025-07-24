-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:35
-- Luau version 6, Types version 3
-- Time taken: 0.001385 seconds

local module_2_upvr = {
	BloxbizConfigDefaults = {};
}
local BloxbizConfigDefaults_upvr = module_2_upvr.BloxbizConfigDefaults
BloxbizConfigDefaults_upvr.Ads = {}
BloxbizConfigDefaults_upvr.Ads3D = {}
BloxbizConfigDefaults_upvr.AdsPortals = {}
BloxbizConfigDefaults_upvr.AdFallbackURL = {}
BloxbizConfigDefaults_upvr.AdFallbackURLVertical = {}
BloxbizConfigDefaults_upvr.AdBlocklistURL = {}
BloxbizConfigDefaults_upvr.AdStorageEditMode = false
BloxbizConfigDefaults_upvr.GIFAdsDefault = false
BloxbizConfigDefaults_upvr.VideoAdsDefault = false
BloxbizConfigDefaults_upvr.VideoZoomEnabled = false
BloxbizConfigDefaults_upvr.RateLimitThreshold = 400
BloxbizConfigDefaults_upvr.AdsPortalMaxDisplayPercentage = 100
BloxbizConfigDefaults_upvr.Ad3DMaxRaycastDistance = 2000
BloxbizConfigDefaults_upvr.RaycastFilterType = Enum.RaycastFilterType.Blacklist
function BloxbizConfigDefaults_upvr.RaycastFilterList() -- Line 24
	return {}
end
BloxbizConfigDefaults_upvr.DebugMode = false
BloxbizConfigDefaults_upvr.DebugModeVideoAd = false
BloxbizConfigDefaults_upvr.DebugModeInteractions = false
BloxbizConfigDefaults_upvr.DebugModeCharacterAd = false
BloxbizConfigDefaults_upvr.DebugModePortalAd = false
function BloxbizConfigDefaults_upvr.DebugAPI() -- Line 33
	return game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("DebugGui"):WaitForChild("DebugAPI")
end
BloxbizConfigDefaults_upvr.SalesMeasurement = true
BloxbizConfigDefaults_upvr.VariablePricing = false
BloxbizConfigDefaults_upvr.CatalogEnabled = false
BloxbizConfigDefaults_upvr.CatalogOutfitFeedEnabled = true
BloxbizConfigDefaults_upvr.CatalogShowToolbarButton = true
BloxbizConfigDefaults_upvr.CatalogToolbarButtonLabel = "Avatar"
BloxbizConfigDefaults_upvr.CatalogToolbarIcon = 14693703386
BloxbizConfigDefaults_upvr.CatalogPersistentWear = false
BloxbizConfigDefaults_upvr.CatalogClothingLimits = true
BloxbizConfigDefaults_upvr.CatalogCopyOutfitsFromPlayersEnabled = false
BloxbizConfigDefaults_upvr.CatalogPurchaseBlockList = {}
BloxbizConfigDefaults_upvr.PopfeedEnabled = false
BloxbizConfigDefaults_upvr.PopfeedShowToolbarButton = true
BloxbizConfigDefaults_upvr.PopfeedProfilePlayerBannersEnabled = false
BloxbizConfigDefaults_upvr.IsGameVoiceChatEnabled = false
BloxbizConfigDefaults_upvr.UseDataStoresNotHttp = false
BloxbizConfigDefaults_upvr.PromoCodesEnabled = false
BloxbizConfigDefaults_upvr.AutoValidatePromoCodesClaims = false
local BloxbizConfig_upvr = require(game.ReplicatedStorage.BloxbizConfig)
function module_2_upvr.read(arg1, arg2) -- Line 63
	--[[ Upvalues[2]:
		[1]: BloxbizConfig_upvr (readonly)
		[2]: BloxbizConfigDefaults_upvr (readonly)
	]]
	if BloxbizConfig_upvr[arg2] ~= nil then
		return BloxbizConfig_upvr[arg2]
	end
	if BloxbizConfigDefaults_upvr[arg2] ~= nil then
		return BloxbizConfigDefaults_upvr[arg2]
	end
	error(arg2.." must be defined in BloxbizConfig")
end
function module_2_upvr.getFullConfigWithDefaults(arg1) -- Line 73
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: BloxbizConfig_upvr (readonly)
	]]
	local module = {}
	for i, v in pairs(module_2_upvr.BloxbizConfigDefaults) do
		module[i] = v
	end
	for i_2, v_2 in pairs(BloxbizConfig_upvr) do
		module[i_2] = v_2
	end
	return module
end
return module_2_upvr