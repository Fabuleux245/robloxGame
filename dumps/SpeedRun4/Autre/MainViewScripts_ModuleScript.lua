-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:45
-- Luau version 6, Types version 3
-- Time taken: 0.002850 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local tbl_3_upvr = {"Active", "Inactive"}
local any_extend_result1 = Roact_upvr.PureComponent:extend("MainViewScripts")
function any_extend_result1.init(arg1) -- Line 22
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	function arg1.onUtilTabHeightChanged(arg1_2) -- Line 23
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_4 = {}
		tbl_4.utilTabHeight = arg1_2
		arg1:setState(tbl_4)
	end
	function arg1.onCheckBoxChanged(arg1_3, arg2) -- Line 29
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl[arg1_3] = arg2
		arg1.props.dispatchServerScriptsUpdateSearchFilter(nil, tbl)
	end
	function arg1.onSearchTermChanged(arg1_4) -- Line 36
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.dispatchServerScriptsUpdateSearchFilter(arg1_4, {})
	end
	arg1.utilRef = Roact_upvr.createRef()
	arg1.state = {
		utilTabHeight = 0;
		isClientView = true;
	}
end
function any_extend_result1.didMount(arg1) -- Line 48
	arg1:setState({
		utilTabHeight = arg1.utilRef.current.Size.Y.Offset;
	})
end
function any_extend_result1.didUpdate(arg1) -- Line 55
	local Size = arg1.utilRef.current.Size
	if Size.Y.Offset ~= arg1.state.utilTabHeight then
		arg1:setState({
			utilTabHeight = Size.Y.Offset;
		})
	end
end
local MainRowPadding_upvr = Constants_upvr.GeneralFormatting.MainRowPadding
local UtilAndTab_upvr = require(Components.UtilAndTab)
local ServerScripts_upvr = require(Components.Scripts.ServerScripts)
function any_extend_result1.render(arg1) -- Line 64
	--[[ Upvalues[6]:
		[1]: tbl_3_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: MainRowPadding_upvr (readonly)
		[5]: UtilAndTab_upvr (readonly)
		[6]: ServerScripts_upvr (readonly)
	]]
	local size = arg1.props.size
	local serverTypeFilters = arg1.props.serverTypeFilters
	local utilTabHeight = arg1.state.utilTabHeight
	local serverSearchTerm = arg1.props.serverSearchTerm
	local tbl_2 = {}
	for i, v in ipairs(tbl_3_upvr) do
		local var31 = serverTypeFilters[v]
		if var31 == nil then
			var31 = true
		end
		tbl_2[i] = {
			name = v;
			state = var31;
		}
	end
	local module = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, MainRowPadding_upvr);
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		UtilAndTab = Roact_upvr.createElement(UtilAndTab_upvr, {
			windowWidth = size.X.Offset;
			formFactor = arg1.props.formFactor;
			tabList = arg1.props.tabList;
			orderedCheckBoxState = tbl_2;
			searchTerm = serverSearchTerm;
			layoutOrder = 1;
			refForParent = arg1.utilRef;
			onHeightChanged = arg1.onUtilTabHeightChanged;
			onCheckBoxChanged = arg1.onCheckBoxChanged;
			onSearchTermChanged = arg1.onSearchTermChanged;
		});
	}
	local var37 = false
	if 0 < utilTabHeight then
		var37 = Roact_upvr.createElement
		var37 = var37(ServerScripts_upvr, {
			size = UDim2.new(1, 0, 1, -utilTabHeight);
			searchTerm = serverSearchTerm;
			scriptFilters = serverTypeFilters;
			layoutOrder = 2;
		})
	end
	module.ServerScripts = var37
	return Roact_upvr.createElement("Frame", {
		Size = size;
		BackgroundColor3 = Constants_upvr.Color.BaseGray;
		BackgroundTransparency = 1;
		LayoutOrder = 3;
	}, module)
end
local ServerScriptsUpdateSearchFilter_upvr = require(script.Parent.Parent.Parent.Actions.ServerScriptsUpdateSearchFilter)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 121, Named "mapStateToProps"
	return {
		serverSearchTerm = arg1.ScriptsData.serverSearchTerm;
		serverTypeFilters = arg1.ScriptsData.serverTypeFilters;
	}
end, function(arg1) -- Line 128, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: ServerScriptsUpdateSearchFilter_upvr (readonly)
	]]
	return {
		dispatchServerScriptsUpdateSearchFilter = function(arg1_5, arg2) -- Line 130, Named "dispatchServerScriptsUpdateSearchFilter"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ServerScriptsUpdateSearchFilter_upvr (copied, readonly)
			]]
			arg1(ServerScriptsUpdateSearchFilter_upvr(arg1_5, arg2))
		end;
	}
end)(any_extend_result1)