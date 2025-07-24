-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:06
-- Luau version 6, Types version 3
-- Time taken: 0.005522 seconds

local GameCollections = script:FindFirstAncestor("GameCollections")
local Parent = GameCollections.Parent
local React_upvr = require(Parent.React)
local Responsive_upvr = require(Parent.Responsive)
local function renderItem_upvr(arg1, arg2, arg3, arg4) -- Line 35, Named "renderItem"
	return nil, "placeholder"
end
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local useGameCollectionLayoutParams_upvr = require(GameCollections.useGameCollectionLayoutParams)
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local GameTileConstants_upvr = require(Parent.GameTile).GameTileConstants
local useGetGameTileHeight_upvr = require(GameCollections.useGetGameTileHeight)
local tbl_upvr = {}
local CollectionGrid_upvr = require(Parent.CollectionViews).CollectionGrid
return React_upvr.memo(function(arg1) -- Line 42, Named "PlaceholderGameGrid"
	--[[ Upvalues[11]:
		[1]: useAppPolicy_upvr (readonly)
		[2]: usePreferredInput_upvr (readonly)
		[3]: Responsive_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useGameCollectionLayoutParams_upvr (readonly)
		[6]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[7]: GameTileConstants_upvr (readonly)
		[8]: useGetGameTileHeight_upvr (readonly)
		[9]: tbl_upvr (readonly)
		[10]: CollectionGrid_upvr (readonly)
		[11]: renderItem_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
	local var5_result1 = useAppPolicy_upvr(function(arg1_3) -- Line 44
		return arg1_3.useGridPageLayout()
	end)
	local isHoverSupportEnabled = arg1.isHoverSupportEnabled
	if isHoverSupportEnabled then
		isHoverSupportEnabled = var5_result1
		if isHoverSupportEnabled then
			if usePreferredInput_upvr() ~= Responsive_upvr.Input.Pointer then
				isHoverSupportEnabled = false
			else
				isHoverSupportEnabled = true
			end
		end
	end
	local var36 = arg1.gameTileLayoutType or "Narrow"
	local any_useState_result1_2, any_useState_result2 = React_upvr.useState(nil)
	React_upvr.useRef(any_useState_result1_2).current = any_useState_result1_2
	if var5_result1 then
		-- KONSTANTWARNING: GOTO [42] #33
	end
	-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 30. Error Block 34 start (CF ANALYSIS FAILED)
	local var7_result1_upvr = useGameCollectionLayoutParams_upvr(var36, any_useState_result1_2, false, {
		sideMargin = arg1.sideMargin;
	})
	if FFlagLuaAppMigrateGameTile_upvr then
		if GameTileConstants_upvr.TileTextLines[var36] then
			-- KONSTANTWARNING: GOTO [72] #57
		end
	else
	end
	if FFlagLuaAppMigrateGameTile_upvr then
		-- KONSTANTWARNING: GOTO [85] #70
	end
	local any_useRef_result1_upvr_2 = React_upvr.useRef(0)
	React_upvr.useEffect(function() -- Line 85
		--[[ Upvalues[3]:
			[1]: var7_result1_upvr (readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: arg1 (readonly)
		]]
		if var7_result1_upvr.numColumns ~= any_useRef_result1_upvr_2.current then
			any_useRef_result1_upvr_2.current = var7_result1_upvr.numColumns
			if arg1.onItemsPerRowChanged then
				arg1.onItemsPerRowChanged(var7_result1_upvr.numColumns)
			end
		end
	end, {var7_result1_upvr.numColumns, arg1.onItemsPerRowChanged, any_useRef_result1_upvr_2})
	local clamped_upvr = math.clamp(arg1.numRows, 0, 4)
	local module_2 = {}
	local tbl = {}
	if 0 < clamped_upvr then
	else
	end
	tbl.title = nil
	tbl.containerRef = any_useState_result2
	tbl.verticalScrollingFrameRef = arg1.verticalScrollingFrameRef
	tbl.hideHeaderButton = true
	tbl.items = React_upvr.useMemo(function() -- Line 98
		--[[ Upvalues[3]:
			[1]: var7_result1_upvr (readonly)
			[2]: clamped_upvr (readonly)
			[3]: tbl_upvr (copied, readonly)
		]]
		local module_3 = {}
		for _ = 1, var7_result1_upvr.numColumns * clamped_upvr do
			table.insert(module_3, tbl_upvr)
		end
		return module_3
	end, {var7_result1_upvr.numColumns, clamped_upvr})
	if not var5_result1 or not arg1.gridSupportAllowed then
	end
	tbl.shouldUseGridPageLayout_legacy = false
	tbl.renderItem = renderItem_upvr
	tbl.getItemHeight = useGetGameTileHeight_upvr(isHoverSupportEnabled, var36, arg1.containedTile or false, arg1.shouldHideTileMetadata or false, arg1.shouldHideTileTitle or false, nil, nil, nil)
	tbl.numColumns = var7_result1_upvr.numColumns
	tbl.columnGap = var7_result1_upvr.columnGap
	tbl.sideMargin = var7_result1_upvr.sideMargin
	module_2.GameGrid = React_upvr.createElement(CollectionGrid_upvr, tbl)
	do
		return React_upvr.createElement(React_upvr.Fragment, nil, module_2)
	end
	-- KONSTANTERROR: [37] 30. Error Block 34 end (CF ANALYSIS FAILED)
end)