-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:15
-- Luau version 6, Types version 3
-- Time taken: 0.000735 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent
return require(CorePackages.Packages.Rodux).combineReducers({
	view = require(Parent.View);
	playerId = require(Parent.PlayerId);
	playerName = require(Parent.PlayerName);
	assets = require(Parent.Assets);
	bundles = require(Parent.Bundles);
	assetBundles = require(Parent.AssetBundles);
	equippedAssets = require(Parent.EquippedAssets);
	detailsInformation = require(Parent.DetailsInformation);
	tryingOnInfo = require(Parent.TryingOnInfo);
	favorites = require(Parent.Favorites);
	locale = require(Parent.Locale);
	visible = require(Parent.Visible);
	itemBeingPurchased = require(Parent.ItemBeingPurchased);
	gamepadEnabled = require(Parent.GamepadEnabled);
	isLoaded = require(Parent.IsLoaded);
	isSubjectToChinaPolicies = require(Parent.IsSubjectToChinaPolicies);
	FetchingStatus = require(CorePackages.Workspace.Packages.Http).Reducers.FetchingStatus;
	storeId = require(Parent.StoreId);
	collectibleResellableInstances = require(Parent.CollectibleResellableInstances);
	creatingExperiences = require(Parent.CreatingExperiences);
	overlay = require(Parent.Overlay);
})