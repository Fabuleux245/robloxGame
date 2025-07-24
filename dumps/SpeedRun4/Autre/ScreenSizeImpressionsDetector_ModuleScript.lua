-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:30
-- Luau version 6, Types version 3
-- Time taken: 0.001807 seconds

local Parent = script:FindFirstAncestor("Impressions").Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ScreenSizeImpressionsDetector")
any_extend_result1.validateProps = t.strictInterface({
	impressionsTag = t.string;
	parentRef = t.optional(t.table);
	onRequestImpressionsSignal = t.table;
	filterImpressionFunc = t.optional(t.callback);
	onImpressionsDetected = t.callback;
	skipZeroSizes = t.optional(t.boolean);
	screenSize = t.Vector2;
	globalGuiInset = t.table;
	topBarHeight = t.number;
})
local ImpressionsDetector_upvr = require(script.Parent.ImpressionsDetector)
local any_memoize_result1_upvr = require(Parent.AppCommonLib).memoize(function(arg1, arg2, arg3) -- Line 26
	return {
		min = Vector2.new(0, arg1);
		max = Vector2.new(arg2.X, arg2.Y - arg3.bottom);
	}
end)
function any_extend_result1.render(arg1) -- Line 33
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ImpressionsDetector_upvr (readonly)
		[3]: any_memoize_result1_upvr (readonly)
	]]
	return Roact_upvr.createElement(ImpressionsDetector_upvr, {
		parentRef = arg1.props.parentRef;
		impressionsTag = arg1.props.impressionsTag;
		onRequestImpressionsSignal = arg1.props.onRequestImpressionsSignal;
		viewPortBounds = any_memoize_result1_upvr(arg1.props.topBarHeight, arg1.props.screenSize, arg1.props.globalGuiInset);
		filterImpressionFunc = arg1.props.filterImpressionFunc;
		onImpressionsDetected = arg1.props.onImpressionsDetected;
		skipZeroSizes = arg1.props.skipZeroSizes;
	})
end
return require(Parent.RoactRodux).connect(function(arg1, arg2) -- Line 49
	return {
		topBarHeight = arg1.TopBar.topBarHeight;
		globalGuiInset = arg1.GlobalGuiInset;
		screenSize = arg1.ScreenSize;
	}
end)(any_extend_result1)