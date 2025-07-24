-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:15
-- Luau version 6, Types version 3
-- Time taken: 0.007315 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("MainViewLog")
function any_extend_result1.init(arg1) -- Line 21
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	function arg1.onUtilTabHeightChanged(arg1_2) -- Line 22
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_2 = {}
		tbl_2.utilTabHeight = arg1_2
		arg1:setState(tbl_2)
	end
	function arg1.onClientButton() -- Line 28
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.dispatchSetActiveTab("Log", true)
	end
	function arg1.onServerButton() -- Line 32
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.dispatchSetActiveTab("Log", false)
	end
	function arg1.onCheckBoxChanged(arg1_3, arg2) -- Line 36
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.isClientView then
			arg1.props.ClientLogData:setFilter(arg1_3, arg2)
		else
			arg1.props.ServerLogData:setFilter(arg1_3, arg2)
		end
	end
	function arg1.filterUpdated() -- Line 44
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.forceUpdate then
			arg1:forceUpdate()
		else
			arg1:setState({})
		end
	end
	function arg1.onSearchTermChanged(arg1_4) -- Line 52
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.isClientView then
			arg1.props.ClientLogData:setSearchTerm(arg1_4)
		else
			arg1.props.ServerLogData:setSearchTerm(arg1_4)
		end
	end
	arg1.clientFilterConnection = arg1.props.ClientLogData:filterUpdatedSignal():Connect(arg1.filterUpdated)
	arg1.serverFilterConnection = arg1.props.ServerLogData:filterUpdatedSignal():Connect(arg1.filterUpdated)
	arg1.utilRef = Roact_upvr.createRef()
	arg1.state = {
		utilTabHeight = 0;
	}
end
function any_extend_result1.didMount(arg1) -- Line 73
	arg1:setState({
		utilTabHeight = arg1.utilRef.current.Size.Y.Offset;
	})
end
function any_extend_result1.didUpdate(arg1) -- Line 80
	local Size = arg1.utilRef.current.Size
	if Size.Y.Offset ~= arg1.state.utilTabHeight then
		arg1:setState({
			utilTabHeight = Size.Y.Offset;
		})
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 89
	if arg1.clientFilterConnection then
		arg1.clientFilterConnection:Disconnect()
		arg1.clientFilterConnection = nil
	end
	if arg1.serverFilterConnection then
		arg1.serverFilterConnection:Disconnect()
		arg1.serverFilterConnection = nil
	end
end
local MainRowPadding_upvr = Constants_upvr.GeneralFormatting.MainRowPadding
local MsgTypeNamesOrdered_upvr = Constants_upvr.MsgTypeNamesOrdered
local UtilAndTab_upvr = require(Components.UtilAndTab)
local ClientLog_upvr = require(Components.Log.ClientLog)
local ServerLog_upvr = require(Components.Log.ServerLog)
function any_extend_result1.render(arg1) -- Line 100
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: MainRowPadding_upvr (readonly)
		[3]: MsgTypeNamesOrdered_upvr (readonly)
		[4]: UtilAndTab_upvr (readonly)
		[5]: ClientLog_upvr (readonly)
		[6]: ServerLog_upvr (readonly)
		[7]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local size = arg1.props.size
	local isDeveloperView = arg1.props.isDeveloperView
	local isClientView = arg1.props.isClientView
	local utilTabHeight = arg1.state.utilTabHeight
	local var34
	if isClientView then
		var34 = arg1.props
	else
		var34 = arg1.props
	end
	local module = {}
	var34 = Roact_upvr.createElement
	var34 = var34("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, MainRowPadding_upvr);
	})
	module.UIListLayout = var34
	var34 = nil
	if isClientView then
		var34 = arg1.props.ClientLogData:getFilters()
	else
		var34 = arg1.props.ServerLogData:getFilters()
	end
	for i, v in ipairs(MsgTypeNamesOrdered_upvr) do
		({})[i] = {
			name = v;
			state = var34[v];
		}
		local var42
	end
	local tbl = {
		windowWidth = size.X.Offset;
		formFactor = arg1.props.formFactor;
		tabList = arg1.props.tabList;
		orderedCheckBoxState = var42;
		isClientView = isClientView;
		searchTerm = var34.ServerLogData:getSearchTerm();
		layoutOrder = 1;
		refForParent = arg1.utilRef;
	}
	if isDeveloperView then
	end
	tbl.onClientButton = arg1.onClientButton
	local var44 = isDeveloperView
	if var44 then
		var44 = arg1.onServerButton
	end
	tbl.onServerButton = var44
	tbl.onCheckBoxChanged = arg1.onCheckBoxChanged
	tbl.onSearchTermChanged = arg1.onSearchTermChanged
	module.UtilAndTab = Roact_upvr.createElement(UtilAndTab_upvr, tbl)
	if 0 < utilTabHeight then
		if isClientView then
			module.ClientLog = Roact_upvr.createElement(ClientLog_upvr, {
				size = UDim2.new(1, 0, 1, -utilTabHeight);
				layoutOrder = 2;
			})
		else
			module.ServerLog = Roact_upvr.createElement(ServerLog_upvr, {
				size = UDim2.new(1, 0, 1, -utilTabHeight);
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
local SetActiveTab_upvr = require(script.Parent.Parent.Parent.Actions.SetActiveTab)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 177, Named "mapStateToProps"
	return {
		isClientView = arg1.MainView.isClientView;
	}
end, function(arg1) -- Line 183, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetActiveTab_upvr (readonly)
	]]
	return {
		dispatchSetActiveTab = function(arg1_5, arg2) -- Line 185, Named "dispatchSetActiveTab"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetActiveTab_upvr (copied, readonly)
			]]
			arg1(SetActiveTab_upvr(arg1_5, arg2))
		end;
	}
end)(require(Components.DataConsumer)(any_extend_result1, "ClientLogData", "ServerLogData"))