-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:36
-- Luau version 6, Types version 3
-- Time taken: 0.005581 seconds

local CollectionViews = script:FindFirstAncestor("CollectionViews")
local Parent = CollectionViews.Parent
local React_upvr = require(Parent.React)
local Responsive_upvr = require(Parent.Responsive)
local t = require(Parent.t)
local FFlagLuaAppScrollableDesktopCarousels_upvr = require(Parent.SharedFlags).FFlagLuaAppScrollableDesktopCarousels
local tbl_upvr = {
	numColumns = 0;
	fractionalItemAmount = 0;
	columnGap = 0;
	sideMargin = 0;
}
local function _(arg1, arg2, arg3, arg4) -- Line 202, Named "isScrollingEnabled"
	--[[ Upvalues[2]:
		[1]: FFlagLuaAppScrollableDesktopCarousels_upvr (readonly)
		[2]: Responsive_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1 ~= nil then
		return arg1
	end
	local var9
	if not var9 and arg3 then
		if arg4 == Responsive_upvr.Input.Pointer then
			var9 = false
		else
			var9 = true
		end
		return var9
	end
	var9 = not arg2
	return var9
end
local function _(arg1, arg2, arg3, arg4) -- Line 221, Named "areScrollButtonsEnabled"
	--[[ Upvalues[1]:
		[1]: Responsive_upvr (readonly)
	]]
	if not arg3 then
		return false
	end
	if arg4 ~= nil then
		return arg4
	end
	if arg1 ~= Responsive_upvr.Input.Pointer then
	else
	end
	return true
end
local validateProps_upvr = require(Parent.DiscoveryUtils).validateProps
local any_strictInterface_result1_upvr = t.strictInterface({
	Position = t.optional(t.UDim2);
	LayoutOrder = t.optional(t.number);
	containerRef = t.optional(t.union(t.table, t.callback));
	scrollingFrameRef = t.optional(t.table);
	onScrollingFrameRefCallback = t.optional(t.callback);
	numColumns = t.number;
	fractionalItemAmount = t.optional(t.number);
	items = t.table;
	renderItem = t.callback;
	getItemHeight = t.callback;
	columnGap = t.optional(t.number);
	sideMargin = t.optional(t.number);
	backgroundMuralUrl = t.optional(t.string);
	title = t.optional(t.union(t.string, t.callback));
	subtitle = t.optional(t.string);
	tooltipInfoText = t.optional(t.string);
	onActivateInfoIcon = t.optional(t.callback);
	tooltipSupportsVR = t.optional(t.boolean);
	tooltipSupportsTenFootUi = t.optional(t.boolean);
	onActivateHeader = t.optional(t.callback);
	onActivateSubtitle = t.optional(t.callback);
	headerButtonText = t.optional(t.string);
	onViewableItemsChanged = t.optional(t.callback);
	onContainerSizeChanged = t.optional(t.callback);
	onChangeCanvasPosition = t.optional(t.callback);
	onReachedThresholdFromEnd = t.optional(t.callback);
	thresholdFromEnd = t.optional(t.number);
	scrollingEnabledOverride = t.optional(t.boolean);
	shouldShowScrollButtonsOverride = t.optional(t.boolean);
	shouldUseGridPageLayout_legacy = t.optional(t.boolean);
	hideHeaderButton = t.optional(t.boolean);
	maxItemsToShow = t.optional(t.number);
	numItemsToRenderOffScreen = t.optional(t.number);
	onScrollButtonEnter = t.optional(t.callback);
	onScrollButtonLeave = t.optional(t.callback);
	forceScrollable = t.optional(t.boolean);
	AutomaticSize = t.optional(t.enum(Enum.AutomaticSize));
	headerComponent = t.optional(t.table);
})
local Cryo_upvr = require(Parent.Cryo)
local ArgCheck_upvr = require(Parent.ArgCheck)
local FFlagLuaAppScrollableDesktopCarouselsIXP_upvr = require(Parent.SharedFlags).FFlagLuaAppScrollableDesktopCarouselsIXP
local CarouselUpdatesExperimentation_upvr = require(CollectionViews.CarouselUpdatesExperimentation)
local useLastInput_upvr = Responsive_upvr.useLastInput
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local useIsSpatial_upvr = Responsive_upvr.useIsSpatial
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppFixCollectionCarouselHeight", false)
local useCollectionSizeBindings_upvr = require(CollectionViews.useCollectionSizeBindings)
local useScrollButtonHandlers_upvr = require(CollectionViews.Carousel.useScrollButtonHandlers)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local CollectionBackgroundMural_upvr = require(CollectionViews.Carousel.CollectionBackgroundMural)
local maybeForceDarkTheme_upvr = require(CollectionViews.maybeForceDarkTheme)
local CollectionHeader_upvr = require(CollectionViews.CollectionHeader)
local FFlagLuaAppUpdateCollectionHeader_upvr = require(Parent.SharedFlags).FFlagLuaAppUpdateCollectionHeader
local ScrollingRowOfCollectionItems_upvr = require(CollectionViews.Carousel.ScrollingRowOfCollectionItems)
local CarouselScrollButtons_upvr = require(CollectionViews.Carousel.CarouselScrollButtons)
return React_upvr.memo(function(arg1) -- Line 240, Named "CollectionCarousel"
	--[[ Upvalues[23]:
		[1]: validateProps_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: ArgCheck_upvr (readonly)
		[6]: FFlagLuaAppScrollableDesktopCarousels_upvr (readonly)
		[7]: FFlagLuaAppScrollableDesktopCarouselsIXP_upvr (readonly)
		[8]: CarouselUpdatesExperimentation_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: useLastInput_upvr (readonly)
		[11]: usePreferredInput_upvr (readonly)
		[12]: useIsSpatial_upvr (readonly)
		[13]: Responsive_upvr (readonly)
		[14]: game_DefineFastFlag_result1_upvr (readonly)
		[15]: useCollectionSizeBindings_upvr (readonly)
		[16]: useScrollButtonHandlers_upvr (readonly)
		[17]: useDesignTokens_upvr (readonly)
		[18]: CollectionBackgroundMural_upvr (readonly)
		[19]: maybeForceDarkTheme_upvr (readonly)
		[20]: CollectionHeader_upvr (readonly)
		[21]: FFlagLuaAppUpdateCollectionHeader_upvr (readonly)
		[22]: ScrollingRowOfCollectionItems_upvr (readonly)
		[23]: CarouselScrollButtons_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 164 start (CF ANALYSIS FAILED)
	validateProps_upvr(any_strictInterface_result1_upvr, arg1)
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var30 = ArgCheck_upvr
	if 1 > any_join_result1.numColumns then
		var30 = false
	else
		var30 = true
	end
	var30.assert(var30)
	if 0 > any_join_result1.sideMargin then
		-- KONSTANTWARNING: GOTO [33] #26
	end
	-- KONSTANTERROR: [0] 1. Error Block 164 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 25. Error Block 177 start (CF ANALYSIS FAILED)
	ArgCheck_upvr.assert(true)
	if 0 > any_join_result1.fractionalItemAmount then
		-- KONSTANTWARNING: GOTO [44] #34
	end
	-- KONSTANTERROR: [32] 25. Error Block 177 end (CF ANALYSIS FAILED)
end)