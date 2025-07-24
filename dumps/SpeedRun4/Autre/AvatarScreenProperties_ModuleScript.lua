-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:15
-- Luau version 6, Types version 3
-- Time taken: 0.003748 seconds

local AvatarExperienceNavigation = script:FindFirstAncestor("AvatarExperienceNavigation")
local Parent = AvatarExperienceNavigation.Parent
local AvatarScreen = require(AvatarExperienceNavigation.Enums.AvatarScreen)
local UnifiedLoggingSurface = require(AvatarExperienceNavigation.Enums.UnifiedLoggingSurface)
local game_DefineFastFlag_result1 = game:DefineFastFlag("AXEnableMultiTryOnUI", false)
local tbl = {
	[AvatarScreen.AccessoryAdjustment] = {
		isRefinementPage = true;
		isMultiTryOn = game_DefineFastFlag_result1;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.CUSTOMIZE;
		};
	};
	[AvatarScreen.AvatarExperienceLandingPage] = {
		isTryOnOutfitResetPage = true;
	};
	[AvatarScreen.AvatarExperienceRoot] = {};
	[AvatarScreen.AvatarBackground] = {
		isTransparent = false;
	};
	[AvatarScreen.Catalog] = {
		refinementButtonVisible = true;
		VRPanelPlacement = "None";
		VRPanelRoundedCorners = true;
		isMultiTryOn = game_DefineFastFlag_result1;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.CATALOG;
		};
	};
	[AvatarScreen.CatalogContextMenu] = {
		VRPanelPlacement = "Right";
	};
	[AvatarScreen.CatalogSearch] = {
		refinementButtonVisible = true;
		VRPanelPlacement = "None";
		VRPanelRoundedCorners = true;
		isMultiTryOn = game_DefineFastFlag_result1;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.SEARCH_RESULTS;
		};
	};
	[AvatarScreen.CatalogSearchLanding] = {
		refinementButtonVisible = true;
		VRPanelPlacement = "None";
		VRPanelRoundedCorners = true;
		isMultiTryOn = game_DefineFastFlag_result1;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.SEARCH_LANDING_PAGE;
		};
	};
	[AvatarScreen.ItemDetails] = {
		isTransparent = true;
		coversSceneWhenExpanded = true;
		VRPanelPlacement = "Right";
		VRPanelRoundedCorners = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.ITEM_DETAILS;
		};
	};
	[AvatarScreen.OutfitDetails] = {
		isTransparent = true;
		coversSceneWhenExpanded = true;
		VRPanelPlacement = "Right";
		VRPanelRoundedCorners = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.ITEM_DETAILS;
		};
	};
	[AvatarScreen.ItemOwnershipPage] = {
		isTransparent = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.ITEM_DETAILS;
		};
	};
	[AvatarScreen.CreateOrUpdateOutfitMenu] = {
		VRPanelPlacement = "Left";
	};
	[AvatarScreen.LayeredClothingSort] = {
		isRefinementPage = true;
		VRPanelPlacement = "Center";
		isMultiTryOn = game_DefineFastFlag_result1;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.CUSTOMIZE;
		};
	};
	[AvatarScreen.LCSortContextMenu] = {
		VRPanelPlacement = "Right";
	};
	[AvatarScreen.AvatarEditor] = {
		isTryOnOutfitResetPage = true;
		refinementButtonVisible = true;
		VRPanelPlacement = "None";
		VRPanelRoundedCorners = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.CUSTOMIZE;
		};
	};
	[AvatarScreen.AvatarRefinement] = {
		VRPanelPlacement = "Right";
		VRPanelRoundedCorners = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.CUSTOMIZE;
		};
	};
	[AvatarScreen.ManageOutfitPage] = {
		isTransparent = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.CUSTOMIZE;
		};
	};
	[AvatarScreen.ProfilePictureEditorEmotes] = {
		isTryOnOutfitResetPage = true;
	};
	[AvatarScreen.ResellersPage] = {
		isTransparent = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.ITEM_DETAILS;
		};
	};
	[AvatarScreen.SellItemPage] = {
		isTransparent = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.ITEM_DETAILS;
		};
	};
	[AvatarScreen.SellItemPeekView] = {
		isTransparent = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.ITEM_DETAILS;
		};
	};
	[AvatarScreen.SortAndFilters] = {
		isTransparent = true;
		VRPanelPlacement = "Left";
	};
	[AvatarScreen.TryOnItem] = {
		isTransparent = false;
	};
	[AvatarScreen.TryOnManager] = {
		isTransparent = true;
	};
	[AvatarScreen.UpdateOutfitPage] = {
		isTransparent = true;
		VRPanelPlacement = "Left";
		VRPanelRoundedCorners = true;
	};
	[AvatarScreen.AdjustAccessoryView] = {
		isTransparent = false;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.CUSTOMIZE;
		};
	};
	[AvatarScreen.HeadRefinement] = {
		isRefinementPage = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.CUSTOMIZE;
		};
	};
	[AvatarScreen.LookDetails] = {
		isTransparent = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.ITEM_DETAILS;
		};
	};
	[AvatarScreen.MySharedAvatars] = {
		isTryOnOutfitResetPage = true;
		refinementButtonVisible = true;
		VRPanelPlacement = "None";
		VRPanelRoundedCorners = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.CUSTOMIZE;
		};
	};
	[AvatarScreen.CommunityAvatarEntryMenu] = {
		VRPanelPlacement = "Left";
	};
	[AvatarScreen.SearchLandingFocusedWidgetPage] = {
		refinementButtonVisible = true;
		VRPanelPlacement = "None";
		VRPanelRoundedCorners = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.SEARCH_LANDING_PAGE;
		};
	};
	[AvatarScreen.BodyShape] = {
		isRefinementPage = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.CUSTOMIZE;
		};
	};
	[AvatarScreen.AvatarSwitcher] = {
		isTransparent = false;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.CUSTOMIZE;
		};
	};
	[AvatarScreen.EditEmotes] = {
		isTransparent = false;
		isTryOnOutfitResetPage = true;
		VRPanelPlacement = "None";
		VRPanelRoundedCorners = true;
		analyticsData = {
			unifiedLoggingSurface = UnifiedLoggingSurface.MarketplaceUnifiedSurface.CUSTOMIZE;
		};
	};
}
if require(Parent.AvatarExperienceFlags).FFlagAXEditorSubcategoryFilters then
	tbl[AvatarScreen.SubcategoryFiltersDropdown] = {
		isTransparent = true;
		VRPanelPlacement = "Left";
	}
end
local module = {}
for _, v in AvatarScreen do
	local var69 = tbl[v]
	if not var69 then
		var69 = {}
	end
	module[v] = require(Parent.Cryo).Dictionary.join({
		isTransparent = false;
		coversSceneWhenExpanded = false;
		isMultiTryOn = false;
		isTryOnOutfitResetPage = false;
		isRefinementPage = false;
		refinementButtonVisible = false;
		VRPanelRoundedCorners = false;
		VRPanelPlacement = "Center";
	}, var69)
end
return module