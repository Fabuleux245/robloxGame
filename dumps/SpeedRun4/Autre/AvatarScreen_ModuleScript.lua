-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:20
-- Luau version 6, Types version 3
-- Time taken: 0.001520 seconds

local module = {
	None = "None";
	AvatarExperienceLandingPage = "AvatarExperienceLandingPage";
	AvatarEditor = "AvatarEditor";
	SlotBasedEditor = "SlotBasedEditor";
	Catalog = "Catalog";
	CatalogSearch = "CatalogSearch";
	CatalogSearchLanding = "CatalogSearchLanding";
	ItemDetails = "ItemDetails";
	OutfitDetails = "OutfitDetails";
	SellItemPage = "SellItemPage";
	ItemOwnershipPage = "ItemOwnershipPage";
	ResellersPage = "ResellersPage";
	AvatarBackground = "AvatarBackground";
	ProfilePictureEditorEmotes = "ProfilePictureEditorEmotes";
	TryOnItem = "TryOnItem";
	TryOnManager = "TryOnManager";
	LookDetails = "LookDetails";
	AvatarRefinement = "AvatarRefinement";
	SortAndFilters = "SortAndFilters";
	EditEmotes = "EditEmotes";
	AccessoryAdjustment = "AccessoryAdjustment";
	AdjustAccessoryView = "AdjustAccessoryView";
	LayeredClothingSort = "LayeredClothingSort";
	HeadRefinement = "HeadRefinement";
	ColorAdjustment = "ColorAdjustment";
	BodyShape = "BodyShape";
	Photobooth = "Photobooth";
	ProfilePictureEditorCamera = "ProfilePictureEditorCamera";
	ProfilePictureEditorFinal = "ProfilePictureEditorFinal";
	ProfilePictureEditorRevertToDefaultPrompt = "ProfilePictureEditorRevertToDefaultPrompt";
	PurchaseCatalogItem = "PurchaseCatalogItem";
	InsufficientRobuxPrompt = "InsufficientRobuxPrompt";
	LeaveCatalogToAvatarPrompt = "LeaveCatalogToAvatarPrompt";
	CatalogContextMenu = "CatalogContextMenu";
	ContextMenu = "ContextMenu";
	LCSortContextMenu = "LCSortContextMenu";
	SellItemPrompt = "SellItemPrompt";
	SellItemPeekView = "SellItemPeekView";
	RemoveCurrentlySellingItemPrompt = "RemoveCurrentlySellingItemPrompt";
	RemoveItemPrompt = "RemoveItemPrompt";
	ResetLCSortPrompt = "ResetLCSortPrompt";
	ResetToNewCharacterPrompt = "ResetToNewCharacterPrompt";
	OutfitIncompletePrompt = "OutfitIncompletePrompt";
	PurchaseLookPrompt = "PurchaseLookPrompt";
	PurchaseOutfitPrompt = "PurchaseOutfitPrompt";
	PremiumSellOnlyPrompt = "PremiumSellOnlyPrompt";
	AvatarExperienceQuickMenu = "AvatarExperienceQuickMenu";
	EquipOutfitConfirmation = "EquipOutfitConfirmation";
	PremiumUpsellPrompt = "PremiumUpsellPrompt";
	RobuxUpsellPrompt = "RobuxUpsellPrompt";
	TwoStepRequiredPrompt = "TwoStepRequiredPrompt";
	SaveOutfitPrompt = "SaveOutfitPrompt";
	RenameOutfitPrompt = "RenameOutfitPrompt";
	DeleteOutfitPrompt = "DeleteOutfitPrompt";
	DuplicateOutfitNamePrompt = "DuplicateOutfitNamePrompt";
	DuplicateOutfitInfoPrompt = "DuplicateOutfitInfoPrompt";
	R15UpgradePrompt = "R15UpgradePrompt";
	LayeredClothingR6SwitchPrompt = "LayeredClothingR6SwitchPrompt";
	CatalogReport = "CatalogReport";
	ReportDialog = "AvatarReportDialog";
	CreateOrUpdateOutfitMenu = "CreateOrUpdateOutfitMenu";
	AXTransitionContextualMenu = "AXTransitionContextualMenu";
	AXTransitionSegmentedMenu = "AXTransitionSegmentedMenu";
	CollectiblesInfoPrompt = "CollectiblesInfoPrompt";
	ResaleFeePolicyPrompt = "ResaleFeePolicyPrompt";
	GenericPrompt = "GenericPrompt";
	ItemExperiencesMenu = "ItemExperiencesMenu";
	OpenExperienceTraversalPrompt = "OpenExperienceTraversalPrompt";
	DeleteAvatarConfirmationPrompt = "DeleteAvatarConfirmationPrompt";
	CommunityAvatarSharePrompt = "CommunityAvatarSharePrompt";
	LooksConfirmationPrompt = "LooksConfirmationPrompt";
	AccessoryAdjustmentResetPrompt = "AccessoryAdjustmentResetPrompt";
	AccessoryAdjustmentUnsavedPrompt = "AccessoryAdjustmentUnsavedPrompt";
	SlotEditorClearAllConfirmationPrompt = "SlotEditorClearAllConfirmationPrompt";
	SaveAvatarOnLeaveAvatarExperiencePrompt = "SaveAvatarOnLeaveAvatarExperiencePrompt";
	SlotsAvatarSwitcherFtuxPrompt = "SlotsAvatarSwitcherFtuxPrompt";
}
local var2 = "SlotsCustomizeFtuxPrompt"
module.SlotsCustomizeFtuxPrompt = var2
if require(script:FindFirstAncestor("AvatarExperienceNavigation").Parent.AvatarExperienceFlags).FFlagAXEditorSubcategoryFilters then
	var2 = "SubcategoryFiltersDropdown"
else
	var2 = nil
end
module.SubcategoryFiltersDropdown = var2
module.UpdateOutfitPage = "UpdateOutfitPage"
module.ManageOutfitPage = "ManageOutfitPage"
module.AvatarSwitcher = "AvatarSwitcher"
module.MySharedAvatars = "MySharedAvatars"
module.CommunityAvatarEntryMenu = "CommunityAvatarEntryMenu"
module.LookComposerPage = "LookComposerPage"
module.SearchLandingFocusedWidgetPage = "SearchLandingFocusedWidgetPage"
module.AvatarExperienceRoot = "AvatarExperienceRoot"
module.AvatarExperienceMainStackNavigator = "AvatarExperienceMainStackNavigator"
module.AvatarRefinementSwitchNavigator = "AvatarRefinementSwitchNavigator"
module.AvatarRefinementStackNavigator = "AvatarRefinementStackNavigator"
module.HeadRefinementStackNavigator = "HeadRefinementStackNavigator"
module.ColorAdjustmentStackNavigator = "ColorAdjustmentStackNavigator"
module.LandingPageSwitchNavigator = "LandingPageSwitchNavigator"
module.AccessoryAdjustmentStackNavigator = "AccessoryAdjustmentStackNavigator"
module.LayeredClothingSortStackNavigator = "LayeredClothingSortStackNavigator"
return module