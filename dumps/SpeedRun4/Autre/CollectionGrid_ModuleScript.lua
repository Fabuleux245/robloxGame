-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:43
-- Luau version 6, Types version 3
-- Time taken: 0.002763 seconds

local CollectionViews = script:FindFirstAncestor("CollectionViews")
local Parent = CollectionViews.Parent
local React_upvr = require(Parent.React)
local t = require(Parent.t)
local tbl_upvr = {
	numColumns = 0;
	columnGap = 0;
	sideMargin = 0;
	verticalPadding = 0;
}
local validateProps_upvr = require(Parent.DiscoveryUtils).validateProps
local any_strictInterface_result1_upvr = t.strictInterface({
	Position = t.optional(t.UDim2);
	LayoutOrder = t.optional(t.number);
	containerRef = t.optional(t.union(t.table, t.callback));
	verticalPadding = t.optional(t.number);
	maxNumRows = t.optional(t.number);
	verticalScrollingFrameRef = t.optional(t.table);
	numColumns = t.number;
	items = t.table;
	renderItem = t.callback;
	getItemHeight = t.callback;
	columnGap = t.optional(t.number);
	sideMargin = t.optional(t.number);
	title = t.optional(t.union(t.string, t.callback));
	subtitle = t.optional(t.string);
	tooltipInfoText = t.optional(t.string);
	onActivateInfoIcon = t.optional(t.callback);
	tooltipSupportsVR = t.optional(t.boolean);
	tooltipSupportsTenFootUi = t.optional(t.boolean);
	onActivateHeader = t.optional(t.callback);
	headerButtonText = t.optional(t.string);
	onViewableItemsChanged = t.optional(t.callback);
	onContainerSizeChanged = t.optional(t.callback);
	shouldUseGridPageLayout_legacy = t.optional(t.boolean);
	hideHeaderButton = t.optional(t.boolean);
	bufferRowsBelowScreen = t.optional(t.number);
	bufferRowsAboveScreen = t.optional(t.number);
	disableRelativeGap = t.optional(t.boolean);
	headerComponent = t.optional(t.table);
})
local Cryo_upvr = require(Parent.Cryo)
local ArgCheck_upvr = require(Parent.ArgCheck)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useCollectionSizeBindings_upvr = require(CollectionViews.useCollectionSizeBindings)
local CollectionHeader_upvr = require(CollectionViews.CollectionHeader)
local FFlagLuaAppUpdateCollectionHeader_upvr = require(Parent.SharedFlags).FFlagLuaAppUpdateCollectionHeader
local GridOfCollectionItems_upvr = require(CollectionViews.Grid.GridOfCollectionItems)
return React_upvr.memo(function(arg1) -- Line 152, Named "CollectionGrid"
	--[[ Upvalues[11]:
		[1]: validateProps_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: ArgCheck_upvr (readonly)
		[6]: useDesignTokens_upvr (readonly)
		[7]: useCollectionSizeBindings_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: CollectionHeader_upvr (readonly)
		[10]: FFlagLuaAppUpdateCollectionHeader_upvr (readonly)
		[11]: GridOfCollectionItems_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 57 start (CF ANALYSIS FAILED)
	validateProps_upvr(any_strictInterface_result1_upvr, arg1)
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var17 = ArgCheck_upvr
	if 1 > any_join_result1.numColumns then
		var17 = false
	else
		var17 = true
	end
	var17.assert(var17)
	if 0 > any_join_result1.sideMargin then
		-- KONSTANTWARNING: GOTO [33] #26
	end
	-- KONSTANTERROR: [0] 1. Error Block 57 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 25. Error Block 62 start (CF ANALYSIS FAILED)
	ArgCheck_upvr.assert(true)
	if 0 > any_join_result1.verticalPadding then
		-- KONSTANTWARNING: GOTO [44] #34
	end
	-- KONSTANTERROR: [32] 25. Error Block 62 end (CF ANALYSIS FAILED)
end)