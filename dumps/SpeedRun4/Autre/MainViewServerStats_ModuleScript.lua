-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:50
-- Luau version 6, Types version 3
-- Time taken: 0.002347 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.Component:extend("MainViewServerStats")
function any_extend_result1.init(arg1) -- Line 17
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	function arg1.onUtilTabHeightChanged(arg1_2) -- Line 18
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.utilTabHeight = arg1_2
		arg1:setState(tbl)
	end
	function arg1.onSearchTermChanged(arg1_3) -- Line 24
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.dispatchServerStatsUpdateSearchFilter(arg1_3, {})
	end
	arg1.utilRef = Roact_upvr.createRef()
	arg1.state = {
		utilTabHeight = 0;
	}
end
function any_extend_result1.didMount(arg1) -- Line 35
	arg1:setState({
		utilTabHeight = arg1.utilRef.current.Size.Y.Offset;
	})
end
function any_extend_result1.didUpdate(arg1) -- Line 42
	local Size = arg1.utilRef.current.Size
	if Size.Y.Offset ~= arg1.state.utilTabHeight then
		arg1:setState({
			utilTabHeight = Size.Y.Offset;
		})
	end
end
local MainRowPadding_upvr = Constants_upvr.GeneralFormatting.MainRowPadding
local UtilAndTab_upvr = require(Components.UtilAndTab)
local ServerStatsChart_upvr = require(Components.ServerStats.ServerStatsChart)
function any_extend_result1.render(arg1) -- Line 51
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: MainRowPadding_upvr (readonly)
		[4]: UtilAndTab_upvr (readonly)
		[5]: ServerStatsChart_upvr (readonly)
	]]
	local size = arg1.props.size
	local statsSearchTerm = arg1.props.statsSearchTerm
	local utilTabHeight = arg1.state.utilTabHeight
	local module = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, MainRowPadding_upvr);
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		UtilAndTab = Roact_upvr.createElement(UtilAndTab_upvr, {
			windowWidth = size.X.Offset;
			formFactor = arg1.props.formFactor;
			tabList = arg1.props.tabList;
			searchTerm = statsSearchTerm;
			layoutOrder = 1;
			refForParent = arg1.utilRef;
			onHeightChanged = arg1.onUtilTabHeightChanged;
			onSearchTermChanged = arg1.onSearchTermChanged;
		});
	}
	local var23 = false
	if 0 < utilTabHeight then
		var23 = Roact_upvr.createElement
		var23 = var23(ServerStatsChart_upvr, {
			size = UDim2.new(1, 0, 1, -utilTabHeight);
			searchTerm = statsSearchTerm;
			layoutOrder = 2;
		})
	end
	module.ServerStats = var23
	return Roact_upvr.createElement("Frame", {
		Size = size;
		BackgroundColor3 = Constants_upvr.Color.BaseGray;
		BackgroundTransparency = 1;
		LayoutOrder = 3;
	}, module)
end
local ServerStatsUpdateSearchFilter_upvr = require(script.Parent.Parent.Parent.Actions.ServerStatsUpdateSearchFilter)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 91, Named "mapStateToProps"
	return {
		statsSearchTerm = arg1.ServerStatsData.statsSearchTerm;
	}
end, function(arg1) -- Line 97, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: ServerStatsUpdateSearchFilter_upvr (readonly)
	]]
	return {
		dispatchServerStatsUpdateSearchFilter = function(arg1_4, arg2) -- Line 99, Named "dispatchServerStatsUpdateSearchFilter"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ServerStatsUpdateSearchFilter_upvr (copied, readonly)
			]]
			arg1(ServerStatsUpdateSearchFilter_upvr(arg1_4, arg2))
		end;
	}
end)(any_extend_result1)