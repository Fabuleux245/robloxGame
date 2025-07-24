-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:21
-- Luau version 6, Types version 3
-- Time taken: 0.002300 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local dependencies = require(FriendsLanding.AddFriends.dependencies)
local Roact_upvr = dependencies.Roact
local t = dependencies.t
local UIBlox = dependencies.UIBlox
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("AddFriendsGridView")
any_extend_result1_upvr.validateProps = t.strictInterface({
	items = t.table;
	windowSize = t.Vector2;
	renderAddFriendsTile = t.callback;
	layoutOrder = t.optional(t.integer);
	itemMargin = t.optional(t.integer);
	getItemMetrics = t.optional(t.callback);
	tileHeightOffset = t.number;
})
any_extend_result1_upvr.defaultProps = {
	layoutOrder = 1;
	itemMargin = 12;
	getItemMetrics = UIBlox.App.Grid.GridMetrics.getMediumMetrics;
}
function any_extend_result1_upvr.init(arg1) -- Line 37
	function arg1.renderItem(arg1_2, arg2) -- Line 38
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local itemWidth = arg1.props.getItemMetrics(arg1.props.windowSize.X, arg1.props.itemMargin).itemWidth
		return arg1.props.renderAddFriendsTile(arg1_2, itemWidth, arg1.getItemHeight(itemWidth), arg2)
	end
	function arg1.getItemHeight(arg1_3) -- Line 45
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_3 + arg1.props.tileHeightOffset
	end
end
local DefaultMetricsGridView_upvr = UIBlox.App.Grid.DefaultMetricsGridView
function any_extend_result1_upvr.render(arg1) -- Line 50
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: DefaultMetricsGridView_upvr (readonly)
	]]
	return Roact_upvr.createElement(DefaultMetricsGridView_upvr, {
		getItemHeight = arg1.getItemHeight;
		items = arg1.props.items;
		getItemMetrics = arg1.props.getItemMetrics;
		renderItem = arg1.renderItem;
		itemPadding = Vector2.new(12, 12);
		maxHeight = math.huge;
		defaultChildIndex = 1;
		LayoutOrder = arg1.props.layoutOrder;
	})
end
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useUiModeInfo_upvr = require(Parent.RobloxAppHooks).useUiModeInfo
local UiMode_upvr = require(Parent.RobloxAppEnums).UiMode
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 63, Named "AddFriendsGridViewFunctional"
	--[[ Upvalues[6]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: useUiModeInfo_upvr (readonly)
		[3]: UiMode_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: any_extend_result1_upvr (readonly)
		[6]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var19
	if useUiModeInfo_upvr().uiMode ~= UiMode_upvr.TenFoot then
		var19 = false
	else
		var19 = true
	end
	if var19 then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, {
		tileHeightOffset = useDesignTokens_upvr().Global.Space_1000;
	}))
end