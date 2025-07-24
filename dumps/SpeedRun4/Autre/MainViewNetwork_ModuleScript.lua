-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:28
-- Luau version 6, Types version 3
-- Time taken: 0.003322 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local Actions = script.Parent.Parent.Parent.Actions
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.Component:extend("MainViewNetwork")
function any_extend_result1.init(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	function arg1.onUtilTabHeightChanged(arg1_2) -- Line 21
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.utilTabHeight = arg1_2
		arg1:setState(tbl)
	end
	function arg1.onClientButton() -- Line 27
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.dispatchSetActiveTab("Network", true)
	end
	function arg1.onServerButton() -- Line 31
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.dispatchSetActiveTab("Network", false)
	end
	function arg1.onSearchTermChanged(arg1_3) -- Line 35
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.isClientView then
			arg1.props.dispatchClientNetworkUpdateSearchFilter(arg1_3, {})
		else
			arg1.props.dispatchServerNetworkUpdateSearchFilter(arg1_3, {})
		end
	end
	arg1.utilRef = Roact_upvr.createRef()
	arg1.state = {
		utilTabHeight = 0;
	}
end
function any_extend_result1.didMount(arg1) -- Line 50
	arg1:setState({
		utilTabHeight = arg1.utilRef.current.Size.Y.Offset;
	})
end
function any_extend_result1.didUpdate(arg1) -- Line 57
	local Size = arg1.utilRef.current.Size
	if Size.Y.Offset ~= arg1.state.utilTabHeight then
		arg1:setState({
			utilTabHeight = Size.Y.Offset;
		})
	end
end
local MainRowPadding_upvr = Constants_upvr.GeneralFormatting.MainRowPadding
local UtilAndTab_upvr = require(Components.UtilAndTab)
local ClientNetwork_upvr = require(Components.Network.ClientNetwork)
local ServerNetwork_upvr = require(Components.Network.ServerNetwork)
function any_extend_result1.render(arg1) -- Line 66
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: MainRowPadding_upvr (readonly)
		[3]: UtilAndTab_upvr (readonly)
		[4]: ClientNetwork_upvr (readonly)
		[5]: ServerNetwork_upvr (readonly)
		[6]: Constants_upvr (readonly)
	]]
	local module = {}
	local size = arg1.props.size
	local isClientView = arg1.props.isClientView
	local utilTabHeight = arg1.state.utilTabHeight
	local var24
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var24 = arg1.props.clientSearchTerm
		return var24
	end
	if not isClientView or not INLINED() then
		var24 = arg1.props.serverSearchTerm
	end
	module.UIListLayout = Roact_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, MainRowPadding_upvr);
	})
	module.UtilAndTab = Roact_upvr.createElement(UtilAndTab_upvr, {
		windowWidth = size.X.Offset;
		formFactor = arg1.props.formFactor;
		tabList = arg1.props.tabList;
		isClientView = isClientView;
		searchTerm = var24;
		layoutOrder = 1;
		refForParent = arg1.utilRef;
		onHeightChanged = arg1.onUtilTabHeightChanged;
		onClientButton = arg1.onClientButton;
		onServerButton = arg1.onServerButton;
		onSearchTermChanged = arg1.onSearchTermChanged;
	})
	if 0 < utilTabHeight then
		if isClientView then
			module.ClientNetwork = Roact_upvr.createElement(ClientNetwork_upvr, {
				size = UDim2.new(1, 0, 1, -utilTabHeight);
				searchTerm = var24;
				layoutOrder = 2;
			})
		else
			module.ServerNetwork = Roact_upvr.createElement(ServerNetwork_upvr, {
				size = UDim2.new(1, 0, 1, -utilTabHeight);
				searchTerm = var24;
				layoutOrder = 2;
			})
		end
	end
	return Roact_upvr.createElement("Frame", {
		Size = size;
		BackgroundColor3 = Constants_upvr.Color.BaseGray;
		BackgroundTransparency = 1;
		LayoutOrder = 3;
	}, module)
end
local ClientNetworkUpdateSearchFilter_upvr = require(Actions.ClientNetworkUpdateSearchFilter)
local ServerNetworkUpdateSearchFilter_upvr = require(Actions.ServerNetworkUpdateSearchFilter)
local SetActiveTab_upvr = require(Actions.SetActiveTab)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 121, Named "mapStateToProps"
	return {
		isClientView = arg1.MainView.isClientView;
		clientSearchTerm = arg1.NetworkData.clientSearchTerm;
		serverSearchTerm = arg1.NetworkData.serverSearchTerm;
	}
end, function(arg1) -- Line 129, Named "mapDispatchToProps"
	--[[ Upvalues[3]:
		[1]: ClientNetworkUpdateSearchFilter_upvr (readonly)
		[2]: ServerNetworkUpdateSearchFilter_upvr (readonly)
		[3]: SetActiveTab_upvr (readonly)
	]]
	return {
		dispatchClientNetworkUpdateSearchFilter = function(arg1_4, arg2) -- Line 131, Named "dispatchClientNetworkUpdateSearchFilter"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ClientNetworkUpdateSearchFilter_upvr (copied, readonly)
			]]
			arg1(ClientNetworkUpdateSearchFilter_upvr(arg1_4, arg2))
		end;
		dispatchServerNetworkUpdateSearchFilter = function(arg1_5, arg2) -- Line 135, Named "dispatchServerNetworkUpdateSearchFilter"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ServerNetworkUpdateSearchFilter_upvr (copied, readonly)
			]]
			arg1(ServerNetworkUpdateSearchFilter_upvr(arg1_5, arg2))
		end;
		dispatchSetActiveTab = function(arg1_6, arg2) -- Line 138, Named "dispatchSetActiveTab"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetActiveTab_upvr (copied, readonly)
			]]
			arg1(SetActiveTab_upvr(arg1_6, arg2))
		end;
	}
end)(any_extend_result1)