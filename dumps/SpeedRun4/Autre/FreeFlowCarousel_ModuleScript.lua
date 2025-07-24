-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:06
-- Luau version 6, Types version 3
-- Time taken: 0.002646 seconds

local Parent_3 = script.Parent
local Parent = Parent_3.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FreeFlowCarousel")
any_extend_result1.validateProps = t.strictInterface({
	identifier = t.optional(t.callback);
	headerText = t.optional(t.string);
	onSeeAll = t.optional(t.callback);
	itemList = t.array(t.any);
	renderItem = t.callback;
	itemSize = t.optional(t.Vector2);
	itemPadding = t.optional(t.number);
	carouselMargin = t.optional(t.number);
	innerPadding = t.optional(t.number);
	layoutOrder = t.optional(t.integer);
	loadNext = t.optional(t.callback);
	maxNumOfItemsVisible = t.optional(t.integer);
	viewabilityConfigCallbackPairs = t.optional(t.array(t.strictInterface({
		viewabilityConfig = t.strictInterface({
			minimumViewTime = t.optional(t.number);
			viewAreaCoveragePercentThreshold = t.optional(t.number);
			itemVisiblePercentThreshold = t.optional(t.number);
			waitForInteraction = t.optional(t.boolean);
		});
		onViewableItemsChanged = require(Parent.Utility.isCallable);
	})));
})
any_extend_result1.defaultProps = {
	headerText = "";
	innerPadding = 12;
	itemPadding = 12;
	carouselMargin = 24;
}
local FitFrameOnAxis_upvr = require(Parent_2.FitFrame).FitFrameOnAxis
local CarouselHeader_upvr = require(Parent_3.CarouselHeader)
local HorizontalCarousel_upvr = require(Parent_3.HorizontalCarousel)
function any_extend_result1.render(arg1) -- Line 77
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: FitFrameOnAxis_upvr (readonly)
		[3]: CarouselHeader_upvr (readonly)
		[4]: HorizontalCarousel_upvr (readonly)
	]]
	local innerPadding = arg1.props.innerPadding
	local carouselMargin = arg1.props.carouselMargin
	return Roact_upvr.createElement(FitFrameOnAxis_upvr, {
		axis = FitFrameOnAxis_upvr.Axis.Vertical;
		minimumSize = UDim2.fromScale(1, 0);
		LayoutOrder = arg1.props.layoutOrder;
		contentPadding = UDim.new(0, innerPadding);
		BackgroundTransparency = 1;
	}, {
		CarouselHeader = Roact_upvr.createElement(CarouselHeader_upvr, {
			headerText = arg1.props.headerText;
			onSeeAll = arg1.props.onSeeAll;
			carouselMargin = carouselMargin;
			layoutOrder = 1;
		});
		Carousel = Roact_upvr.createElement(HorizontalCarousel_upvr, {
			identifier = arg1.props.identifier;
			itemList = arg1.props.itemList;
			renderItem = arg1.props.renderItem;
			itemSize = arg1.props.itemSize;
			itemPadding = innerPadding;
			carouselMargin = carouselMargin;
			layoutOrder = 2;
			loadNext = arg1.props.loadNext;
			maxNumOfItemsVisible = arg1.props.maxNumOfItemsVisible;
			viewabilityConfigCallbackPairs = arg1.props.viewabilityConfigCallbackPairs;
		});
	})
end
return any_extend_result1