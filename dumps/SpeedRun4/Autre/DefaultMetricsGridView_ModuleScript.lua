-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:43
-- Luau version 6, Types version 3
-- Time taken: 0.002291 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local function validateWindowHeight_upvr(arg1) -- Line 15, Named "validateWindowHeight"
	if arg1.windowHeight ~= nil and arg1.maxHeight < arg1.windowHeight then
		return false, "windowHeight must be less than or equal to maxHeight\nmaxHeight: %f\nwindowHeight: %f":format(arg1.maxHeight, arg1.windowHeight)
	end
	return true
end
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("DefaultMetricsGridView")
any_extend_result1_upvr.validateProps = t.strictInterface({
	getItemHeight = t.callback;
	getItemMetrics = t.callback;
	windowHeight = t.optional(t.numberMin(0));
	renderItem = t.callback;
	itemPadding = t.Vector2;
	items = t.table;
	maxHeight = t.numberMin(0);
	LayoutOrder = t.optional(t.integer);
	onNumItemsPerRowChanged = t.optional(t.callback);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	frameRef = t.optional(t.table);
	restorePreviousChildFocus = t.optional(t.boolean);
	onFocusGained = t.optional(t.callback);
	defaultChildIndex = t.optional(t.numberMin(1));
})
any_extend_result1_upvr.defaultProps = {
	maxHeight = math.huge;
}
function any_extend_result1_upvr.init(arg1) -- Line 71
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.isMounted = false
	arg1.state = {
		containerWidth = 0;
	}
	arg1.initialSizeCheckerRef = Roact_upvr.createRef()
end
local GridView_upvr = require(Parent_2.GridView)
function any_extend_result1_upvr.render(arg1) -- Line 81
	--[[ Upvalues[3]:
		[1]: validateWindowHeight_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: GridView_upvr (readonly)
	]]
	assert(validateWindowHeight_upvr(arg1.props))
	local any_getItemMetrics_result1 = arg1.props.getItemMetrics(arg1.state.containerWidth, arg1.props.itemPadding.X)
	return Roact_upvr.createElement(GridView_upvr, {
		renderItem = arg1.props.renderItem;
		windowHeight = arg1.props.windowHeight;
		maxHeight = arg1.props.maxHeight;
		itemSize = Vector2.new(math.max(0, any_getItemMetrics_result1.itemWidth), math.max(0, arg1.props.getItemHeight(any_getItemMetrics_result1.itemWidth)));
		itemPadding = arg1.props.itemPadding;
		items = arg1.props.items;
		LayoutOrder = arg1.props.LayoutOrder;
		onNumItemsPerRowChanged = arg1.props.onNumItemsPerRowChanged;
		NextSelectionLeft = arg1.props.NextSelectionLeft;
		NextSelectionRight = arg1.props.NextSelectionRight;
		NextSelectionUp = arg1.props.NextSelectionUp;
		NextSelectionDown = arg1.props.NextSelectionDown;
		[Roact_upvr.Ref] = arg1.props.frameRef;
		defaultChildIndex = arg1.props.defaultChildIndex;
		restorePreviousChildFocus = arg1.props.restorePreviousChildFocus;
		onFocusGained = arg1.props.onFocusGained;
		onWidthChanged = function(arg1_2) -- Line 110, Named "onWidthChanged"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.isMounted then
				local tbl = {}
				tbl.containerWidth = arg1_2
				arg1:setState(tbl)
			end
		end;
	})
end
function any_extend_result1_upvr.didMount(arg1) -- Line 120
	arg1.isMounted = true
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 124
	arg1.isMounted = false
end
local Cryo_upvr = require(Parent.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 128
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.frameRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)