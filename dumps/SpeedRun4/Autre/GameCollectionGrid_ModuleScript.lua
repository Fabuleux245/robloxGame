-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:58
-- Luau version 6, Types version 3
-- Time taken: 0.008998 seconds

local GameCollections = script:FindFirstAncestor("GameCollections")
local Parent = GameCollections.Parent
local React_upvr = require(Parent.React)
local t = require(Parent.t)
local Responsive_upvr = require(Parent.Responsive)
local HoldToPlay = require(Parent.HoldToPlay)
local FFlagLuaAppCollectionSelectionOrder_upvr = require(Parent.SharedFlags).FFlagLuaAppCollectionSelectionOrder
local tbl_2 = {
	entries = t.optional(t.table);
	title = t.string;
	verticalScrollingFrameRef = t.table;
	maxNumRows = t.optional(t.number);
	useGridTiles = t.optional(t.boolean);
	gameSortId = t.string;
	sortIndex = t.number;
	pageContext = t.string;
	scrollViewPositionChangedSignal = t.optional(t.table);
	friendFooterEnabled = t.optional(t.boolean);
	playerCountStyle = t.optional(t.string);
	isSponsoredFooterAllowed = t.optional(t.boolean);
	componentType = t.optional(t.string);
	gameTileLayoutType = t.optional(t.string);
	infoText = t.optional(t.string);
	linkPath = t.optional(t.string);
	gridSupportAllowed = t.optional(t.boolean);
	isHoverSupportEnabled = t.optional(t.boolean);
	onItemsPerRowChanged = t.optional(t.callback);
	startRow = t.optional(t.number);
	playButtonStyle = t.optional(t.string);
	sideMargin = t.optional(t.number);
	shouldHideTileMetadata = t.optional(t.boolean);
	shouldHideTileTitle = t.optional(t.boolean);
	containedTile = t.optional(t.boolean);
}
local any_optional_result1 = t.optional(t.number)
tbl_2.numUpdatesToDelayImpressions = any_optional_result1
if FFlagLuaAppCollectionSelectionOrder_upvr then
	any_optional_result1 = t.optional(t.number)
else
	any_optional_result1 = nil
end
tbl_2.selectionOrderBase = any_optional_result1
local validateProps_upvr = require(Parent.DiscoveryUtils).validateProps
local any_strictInterface_result1_upvr = t.strictInterface(tbl_2)
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local useGameSortData_upvr = require(GameCollections.useGameSortData)
local useGameSortAnalytics_upvr = require(GameCollections.useGameSortAnalytics)
local useGameSortTooltipParams_upvr = require(GameCollections.useGameSortTooltipParams)
local useGameCollectionLayoutParams_upvr = require(GameCollections.useGameCollectionLayoutParams)
local useGameSortImpressionsParams_upvr = require(GameCollections.Impressions.useGameSortImpressionsParams)
local useIsHoldToPlayEnabledForGames_upvr = require(GameCollections.useIsHoldToPlayEnabledForGames)
local useHoldToPlayStateAndCallbacks_upvr = HoldToPlay.useHoldToPlayStateAndCallbacks
local useControllerBarFocusNavigationBindings_upvr = require(GameCollections.GameCollectionNavigationBindings).useControllerBarFocusNavigationBindings
local useTextSizeOffset_upvr = require(Parent.UIBlox).Core.Style.useTextSizeOffset
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local GameTileConstants_upvr = require(Parent.GameTile).GameTileConstants
local useGetGameTileHeight_upvr = require(GameCollections.useGetGameTileHeight)
local useRenderGameCollectionItem_upvr = require(GameCollections.useRenderGameCollectionItem)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local DiscoveryAnalytics_upvr = require(Parent.DiscoveryAnalytics)
local GameSortImpressionsDetector_upvr = require(GameCollections.Impressions.GameSortImpressionsDetector)
local CollectionGrid_upvr = require(Parent.CollectionViews).CollectionGrid
local WaitForPropWrapper_upvr = require(GameCollections.Impressions.WaitForPropWrapper)
local HoldToPlayLauncher_upvr = HoldToPlay.HoldToPlayLauncher
return React_upvr.memo(function(arg1) -- Line 108, Named "GameCollectionGrid"
	--[[ Upvalues[26]:
		[1]: validateProps_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: useAppPolicy_upvr (readonly)
		[4]: usePreferredInput_upvr (readonly)
		[5]: Responsive_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: useGameSortData_upvr (readonly)
		[8]: useGameSortAnalytics_upvr (readonly)
		[9]: useGameSortTooltipParams_upvr (readonly)
		[10]: useGameCollectionLayoutParams_upvr (readonly)
		[11]: useGameSortImpressionsParams_upvr (readonly)
		[12]: useIsHoldToPlayEnabledForGames_upvr (readonly)
		[13]: useHoldToPlayStateAndCallbacks_upvr (readonly)
		[14]: useControllerBarFocusNavigationBindings_upvr (readonly)
		[15]: useTextSizeOffset_upvr (readonly)
		[16]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[17]: GameTileConstants_upvr (readonly)
		[18]: useGetGameTileHeight_upvr (readonly)
		[19]: useRenderGameCollectionItem_upvr (readonly)
		[20]: AppPage_upvr (readonly)
		[21]: DiscoveryAnalytics_upvr (readonly)
		[22]: FFlagLuaAppCollectionSelectionOrder_upvr (readonly)
		[23]: GameSortImpressionsDetector_upvr (readonly)
		[24]: CollectionGrid_upvr (readonly)
		[25]: WaitForPropWrapper_upvr (readonly)
		[26]: HoldToPlayLauncher_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 144 start (CF ANALYSIS FAILED)
	validateProps_upvr(any_strictInterface_result1_upvr, arg1)
	local useAppPolicy_upvr_result1_2 = useAppPolicy_upvr(function(arg1_3) -- Line 112
		return arg1_3.useGridPageLayout()
	end)
	local usePreferredInput_upvr_result1 = usePreferredInput_upvr()
	local var56
	if usePreferredInput_upvr_result1 == Responsive_upvr.Input.Directional then
	else
	end
	var56 = Responsive_upvr.Input.Directional
	if usePreferredInput_upvr_result1 == var56 then
	else
	end
	var56 = arg1.isHoverSupportEnabled
	if var56 then
		var56 = useAppPolicy_upvr_result1_2
		if var56 then
			if usePreferredInput_upvr_result1 ~= Responsive_upvr.Input.Pointer then
				var56 = false
			else
				var56 = true
			end
		end
	end
	local var57 = arg1.gameTileLayoutType or "Narrow"
	local any_useState_result1_upvr, _ = React_upvr.useState(nil)
	React_upvr.useRef(any_useState_result1_upvr).current = any_useState_result1_upvr
	local var14_result1 = useGameSortData_upvr(arg1.gameSortId, arg1.pageContext)
	local _, _ = useGameSortAnalytics_upvr(var14_result1.sort, var14_result1.isOmni, arg1.sortIndex, arg1.pageContext, nil, arg1.entries)
	local _, _ = useGameSortTooltipParams_upvr(var14_result1.sort, var14_result1.isOmni, arg1.infoText)
	if useAppPolicy_upvr_result1_2 then
		-- KONSTANTWARNING: GOTO [93] #68
	end
	-- KONSTANTERROR: [0] 1. Error Block 144 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [88] 65. Error Block 143 start (CF ANALYSIS FAILED)
	local gameSortId_2 = arg1.gameSortId
	local _, _, _ = useGameSortImpressionsParams_upvr(var14_result1.sort, var14_result1.isOmni, arg1.sortIndex, arg1.pageContext, arg1.useGridTiles, arg1.componentType, var14_result1.gamesApiSortPageId, gameSortId_2, arg1.scrollViewPositionChangedSignal, useGameCollectionLayoutParams_upvr(var57, any_useState_result1_upvr, false, {
		sideMargin = arg1.sideMargin;
	}).numColumns or 0, arg1.startRow, arg1.entries)
	if useIsHoldToPlayEnabledForGames_upvr() then
		gameSortId_2 = useHoldToPlayStateAndCallbacks_upvr().holdToPlayEventHandler
	else
		gameSortId_2 = nil
	end
	local useControllerBarFocusNavigationBindings_upvr_result1_upvr = useControllerBarFocusNavigationBindings_upvr(nil, gameSortId_2)
	React_upvr.useEffect(function() -- Line 180
		--[[ Upvalues[2]:
			[1]: useControllerBarFocusNavigationBindings_upvr_result1_upvr (readonly)
			[2]: any_useState_result1_upvr (readonly)
		]]
		if useControllerBarFocusNavigationBindings_upvr_result1_upvr then
			useControllerBarFocusNavigationBindings_upvr_result1_upvr(any_useState_result1_upvr)
		end
	end, {useControllerBarFocusNavigationBindings_upvr_result1_upvr, any_useState_result1_upvr})
	if FFlagLuaAppMigrateGameTile_upvr then
		if GameTileConstants_upvr.TileTextLines[var57] then
			-- KONSTANTWARNING: GOTO [186] #136
		end
	else
	end
	if FFlagLuaAppMigrateGameTile_upvr then
		-- KONSTANTWARNING: GOTO [199] #149
	end
	-- KONSTANTERROR: [88] 65. Error Block 143 end (CF ANALYSIS FAILED)
end)