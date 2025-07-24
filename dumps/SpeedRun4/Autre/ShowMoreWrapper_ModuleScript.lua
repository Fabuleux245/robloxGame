-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:11
-- Luau version 6, Types version 3
-- Time taken: 0.004875 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local dependencies = require(FriendsLanding.dependencies)
local llama_upvr = dependencies.llama
local Roact_upvr = dependencies.Roact
local Dictionary_upvr = llama_upvr.Dictionary
local filterStates_upvr = require(FriendsLanding.Friends.filterStates)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ShowMoreWrapper")
any_extend_result1_upvr.defaultProps = {
	listComponent = require(FriendsLanding.Components.FriendsLandingPage);
	itemSize = 175;
	visibleRows = 6;
	friends = {};
	analytics = nil;
	filter = filterStates_upvr.All;
	overrideRenderShowMore = nil;
	handleShowMore = nil;
	spacingIfEmpty = 48;
	sectionType = require(FriendsLanding.Enums.ShowMoreSectionTypeEnum).Friends;
}
local updateFriendsWithWidth_upvr = require(script.helpers.updateFriendsWithWidth)
local friendsPerLoadGroup_upvr = require(script.helpers.friendsPerLoadGroup)
local ButtonClickEvents_upvr = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local friendsPerRow_upvr = require(script.helpers.friendsPerRow)
local loadFriendGroup_upvr = require(script.helpers.loadFriendGroup)
local memoize_upvr = dependencies.memoize
local limitFriends_upvr = require(script.helpers.limitFriends)
local ShowMoreButton_upvr = require(FriendsLanding.Components.ShowMoreButton)
function any_extend_result1_upvr.init(arg1) -- Line 49
	--[[ Upvalues[11]:
		[1]: Dictionary_upvr (readonly)
		[2]: filterStates_upvr (readonly)
		[3]: updateFriendsWithWidth_upvr (readonly)
		[4]: friendsPerLoadGroup_upvr (readonly)
		[5]: ButtonClickEvents_upvr (readonly)
		[6]: friendsPerRow_upvr (readonly)
		[7]: loadFriendGroup_upvr (readonly)
		[8]: memoize_upvr (readonly)
		[9]: limitFriends_upvr (readonly)
		[10]: Roact_upvr (readonly)
		[11]: ShowMoreButton_upvr (readonly)
	]]
	arg1.state = {
		width = 100;
		filterFriendCounts = Dictionary_upvr.map(filterStates_upvr, function() -- Line 52
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.props.visibleRows
		end);
		selectedItemIndex = nil;
	}
	function arg1.updateWidth(arg1_2) -- Line 58
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: updateFriendsWithWidth_upvr (copied, readonly)
		]]
		arg1:setState(updateFriendsWithWidth_upvr(arg1_2.AbsoluteSize.X))
		if arg1.props.onWidthUpdated then
			arg1.props.onWidthUpdated(arg1_2.AbsoluteSize.X)
		end
	end
	function arg1.reset() -- Line 66
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Dictionary_upvr (copied, readonly)
			[3]: friendsPerLoadGroup_upvr (copied, readonly)
		]]
		arg1:setState(function(arg1_3, arg2) -- Line 67
			--[[ Upvalues[3]:
				[1]: Dictionary_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: friendsPerLoadGroup_upvr (copied, readonly)
			]]
			return {
				filterFriendCounts = Dictionary_upvr.join(arg1.state.filterFriendCounts, {
					[arg1.props.filter] = friendsPerLoadGroup_upvr(arg1_3, arg2);
				});
			}
		end)
	end
	function arg1.showMore() -- Line 77
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: ButtonClickEvents_upvr (copied, readonly)
			[3]: friendsPerRow_upvr (copied, readonly)
			[4]: Dictionary_upvr (copied, readonly)
			[5]: loadFriendGroup_upvr (copied, readonly)
		]]
		if arg1.props.analytics then
			arg1.props.analytics:buttonClick(ButtonClickEvents_upvr.LoadMoreUsers, {
				sectionType = arg1.props.sectionType;
			})
		end
		if arg1.props.fireOnShowMore then
			arg1.props.fireOnShowMore(arg1.props.sectionType)
		end
		if arg1.props.handleShowMore then
			arg1.props.handleShowMore(friendsPerRow_upvr(Dictionary_upvr.join({
				width = arg1.state.width;
			}, arg1.props)))
		else
			arg1:setState(function(arg1_4, arg2) -- Line 95
				--[[ Upvalues[2]:
					[1]: Dictionary_upvr (copied, readonly)
					[2]: loadFriendGroup_upvr (copied, readonly)
				]]
				return Dictionary_upvr.join(loadFriendGroup_upvr(arg1_4, arg2), {
					selectedItemIndex = arg1_4.filterFriendCounts[arg2.filter] + 1;
				})
			end)
		end
	end
	arg1.limitFriends = memoize_upvr(limitFriends_upvr)
	arg1.renderShowMore = memoize_upvr(function(arg1_5, arg2, arg3) -- Line 108
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ShowMoreButton_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return function(arg1_6) -- Line 109
			--[[ Upvalues[6]:
				[1]: arg3 (readonly)
				[2]: arg2 (readonly)
				[3]: arg1_5 (readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: ShowMoreButton_upvr (copied, readonly)
				[6]: arg1 (copied, readonly)
			]]
			local var32 = arg3
			if var32 then
				var32 = arg3(arg2)
			end
			if arg2 < arg1_5 or var32 then
				local module_2 = {}
				module_2.layoutOrder = arg1_6
				module_2.onSizeChange = arg1.updateWidth
				module_2.onActivated = arg1.showMore
				return Roact_upvr.createElement(ShowMoreButton_upvr, module_2)
			end
			local module_3 = {
				Name = "showMoreSpacing";
				Size = UDim2.fromOffset(0, arg1.props.spacingIfEmpty);
				BackgroundTransparency = 1;
			}
			module_3.LayoutOrder = arg1_6
			return Roact_upvr.createElement("Frame", module_3)
		end
	end)
	function arg1.checkAndResetIfNeeded(arg1_7) -- Line 130
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if #arg1.props.friends ~= #arg1_7.friends or arg1_7.visibleRows ~= arg1.props.visibleRows then
			arg1.reset()
		end
	end
end
function any_extend_result1_upvr.didUpdate(arg1, arg2) -- Line 137
	arg1.checkAndResetIfNeeded(arg2)
end
function any_extend_result1_upvr.render(arg1) -- Line 141
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Dictionary_upvr (readonly)
	]]
	local var36 = arg1.state.filterFriendCounts[arg1.props.filter]
	return Roact_upvr.createElement(arg1.props.listComponent, Dictionary_upvr.join(arg1.props, {
		friends = arg1.limitFriends(var36, arg1.props.friends);
		showMore = arg1.showMore;
		totalFilteredFriends = #arg1.props.friends;
		renderShowMore = arg1.renderShowMore(#arg1.props.friends, var36, arg1.props.overrideRenderShowMore);
		resetShowMore = arg1.reset;
		totalInactiveFriends = arg1.props.totalInactiveFriends;
		selectedItemIndex = arg1.state.selectedItemIndex;
	}))
end
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useUiModeInfo_upvr = require(Parent.RobloxAppHooks).useUiModeInfo
local UiMode_upvr = require(Parent.RobloxAppEnums).UiMode
local React_upvr = dependencies.React
local GridMetrics_upvr = dependencies.UIBlox.App.Grid.GridMetrics
return function(arg1) -- Line 159, Named "ShowMoreWrapperFn"
	--[[ Upvalues[7]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: useUiModeInfo_upvr (readonly)
		[3]: UiMode_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: GridMetrics_upvr (readonly)
		[6]: any_extend_result1_upvr (readonly)
		[7]: llama_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var38_result1 = useDesignTokens_upvr()
	local var44_upvr
	if useUiModeInfo_upvr().uiMode ~= UiMode_upvr.TenFoot then
		var44_upvr = false
	else
		var44_upvr = true
	end
	local GridViewItemMetrics_upvr = var38_result1.LuaApps.FriendsLanding.FriendsLandingPage.GridViewItemMetrics
	local GridHorizontalSpacing_upvr = var38_result1.LuaApps.FriendsLanding.FriendsLandingPage.GridHorizontalSpacing
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 168
		--[[ Upvalues[3]:
			[1]: var44_upvr (readonly)
			[2]: GridMetrics_upvr (copied, readonly)
			[3]: GridViewItemMetrics_upvr (readonly)
		]]
		if var44_upvr then
			return GridMetrics_upvr.makeCustomMetricsGetter(GridViewItemMetrics_upvr)
		end
		return nil
	end, {var44_upvr, GridViewItemMetrics_upvr})
	local any_useState_result1_upvr, any_useState_result2 = React_upvr.useState(100)
	local module = {}
	if var44_upvr then
	else
	end
	module.onWidthUpdated = nil
	module.itemSize = React_upvr.useMemo(function() -- Line 177
		--[[ Upvalues[4]:
			[1]: var44_upvr (readonly)
			[2]: any_useMemo_result1_upvr (readonly)
			[3]: GridHorizontalSpacing_upvr (readonly)
			[4]: any_useState_result1_upvr (readonly)
		]]
		if var44_upvr and any_useMemo_result1_upvr and GridHorizontalSpacing_upvr then
			return any_useMemo_result1_upvr(any_useState_result1_upvr, GridHorizontalSpacing_upvr).itemWidth
		end
		return nil
	end, {var44_upvr, any_useMemo_result1_upvr, any_useState_result1_upvr, GridHorizontalSpacing_upvr})
	module.getItemMetrics = any_useMemo_result1_upvr
	module.gridHorizontalSpacing = GridHorizontalSpacing_upvr
	module.gridVerticalSpacing = var38_result1.LuaApps.FriendsLanding.FriendsLandingPage.GridVerticalSpacing
	return React_upvr.createElement(any_extend_result1_upvr, llama_upvr.Dictionary.join(module, arg1))
end