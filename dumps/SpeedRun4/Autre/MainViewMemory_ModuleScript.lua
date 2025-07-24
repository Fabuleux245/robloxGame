-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:23
-- Luau version 6, Types version 3
-- Time taken: 0.005331 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local Actions = script.Parent.Parent.Parent.Actions
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.Component:extend("LogButton")
local function init(arg1) -- Line 21
	function arg1.onAction() -- Line 22
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var8
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var8 = arg1.props.ClientMemoryData
			return var8
		end
		if not arg1.props.isClientView or not INLINED() then
			var8 = arg1.props.ServerMemoryData
		end
		local var9_upvw = '\n'
		local function _(arg1_2) -- Line 25, Named "line"
			--[[ Upvalues[1]:
				[1]: var9_upvw (read and write)
			]]
			var9_upvw = var9_upvw..arg1_2..'\n'
		end
		var9_upvw = var9_upvw.."Name                                       Min   Max"..'\n'
		var9_upvw = var9_upvw.."----------------------------------------   ---   ---"..'\n'
		local var10_upvw = var9_upvw
		local function recurseMemoryTree_upvr(arg1_3, arg2, arg3) -- Line 32, Named "recurseMemoryTree"
			--[[ Upvalues[2]:
				[1]: var10_upvw (read and write)
				[2]: recurseMemoryTree_upvr (readonly)
			]]
			var10_upvw = var10_upvw..string.format("%s %s %s %3d   %3d", string.rep(' ', arg3), arg1_3, string.rep(' ', 40 - arg3 - #arg1_3), arg2.min, arg2.max)..'\n'
			if arg2.children then
				for i, v in pairs(arg2.children) do
					recurseMemoryTree_upvr(i, v, arg3 + 2)
				end
			end
		end
		recurseMemoryTree_upvr("Memory", var8._memoryData.Memory, 0)
		print(var10_upvw)
	end
end
any_extend_result1.init = init
local function render(arg1) -- Line 54
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	return Roact_upvr.createElement("TextButton", {
		Text = "Log";
		Visible = true;
		BorderSizePixel = 1;
		BackgroundColor3 = Constants_upvr.Color.UnselectedGray;
		TextColor3 = Constants_upvr.Color.Text;
		[Roact_upvr.Event.Activated] = arg1.onAction;
	})
end
any_extend_result1.render = render
local any_extend_result1_2 = Roact_upvr.Component:extend("MainViewMemory")
function any_extend_result1_2.init(arg1) -- Line 67
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	function arg1.onUtilTabHeightChanged(arg1_4) -- Line 68
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.utilTabHeight = arg1_4
		arg1:setState(tbl)
	end
	function arg1.onClientButton() -- Line 74
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isClientView = true;
		})
	end
	function arg1.onServerButton() -- Line 78
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isClientView = false;
		})
	end
	function arg1.onSearchTermChanged(arg1_5) -- Line 82
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.isClientView then
			arg1.props.dispatchClientMemoryUpdateSearchFilter(arg1_5, {})
		else
			arg1.props.dispatchServerMemoryUpdateSearchFilter(arg1_5, {})
		end
	end
	arg1.utilRef = Roact_upvr.createRef()
	arg1.state = {
		utilTabHeight = 0;
		isClientView = true;
	}
end
function any_extend_result1_2.didMount(arg1) -- Line 98
	arg1:setState({
		utilTabHeight = arg1.utilRef.current.Size.Y.Offset;
	})
end
function any_extend_result1_2.didUpdate(arg1) -- Line 105
	local Offset = arg1.utilRef.current.Size.Y.Offset
	if Offset ~= arg1.state.utilTabHeight then
		arg1:setState({
			utilTabHeight = Offset;
		})
	end
end
local MainRowPadding_upvr = Constants_upvr.GeneralFormatting.MainRowPadding
local UtilAndTab_upvr = require(Components.UtilAndTab)
local var31_upvw = require(Components.DataConsumer)(any_extend_result1, "ClientMemoryData", "ServerMemoryData")
local ClientMemory_upvr = require(Components.Memory.ClientMemory)
local ServerMemory_upvr = require(Components.Memory.ServerMemory)
function any_extend_result1_2.render(arg1) -- Line 116
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: MainRowPadding_upvr (readonly)
		[3]: UtilAndTab_upvr (readonly)
		[4]: var31_upvw (read and write)
		[5]: ClientMemory_upvr (readonly)
		[6]: ServerMemory_upvr (readonly)
		[7]: Constants_upvr (readonly)
	]]
	local module = {}
	local size = arg1.props.size
	local isDeveloperView = arg1.props.isDeveloperView
	local utilTabHeight = arg1.state.utilTabHeight
	local isClientView = arg1.state.isClientView
	local var39
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var39 = arg1.props.clientSearchTerm
		return var39
	end
	if not isClientView or not INLINED_2() then
		var39 = arg1.props.serverSearchTerm
	end
	module.UIListLayout = Roact_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, MainRowPadding_upvr);
	})
	local tbl_2 = {
		windowWidth = size.X.Offset;
		formFactor = arg1.props.formFactor;
		tabList = arg1.props.tabList;
		isClientView = isClientView;
		searchTerm = var39;
		layoutOrder = 1;
		refForParent = arg1.utilRef;
		onHeightChanged = arg1.onUtilTabHeightChanged;
	}
	local var42 = isDeveloperView
	if var42 then
		var42 = arg1.onClientButton
	end
	tbl_2.onClientButton = var42
	var42 = isDeveloperView
	local var43 = var42
	if var43 then
		var43 = arg1.onServerButton
	end
	tbl_2.onServerButton = var43
	tbl_2.onSearchTermChanged = arg1.onSearchTermChanged
	local tbl_3 = {}
	local var45 = var31_upvw
	if var45 then
		var45 = Roact_upvr.createElement
		var45 = var45(var31_upvw, {
			isClientView = isClientView;
		})
	end
	tbl_3[1] = var45
	module.UtilAndTab = Roact_upvr.createElement(UtilAndTab_upvr, tbl_2, tbl_3)
	if 0 < utilTabHeight then
		if isClientView then
			module.ClientMemory = Roact_upvr.createElement(ClientMemory_upvr, {
				size = UDim2.new(1, 0, 1, -utilTabHeight);
				searchTerm = var39;
				layoutOrder = 2;
			})
		else
			module.ServerMemory = Roact_upvr.createElement(ServerMemory_upvr, {
				size = UDim2.new(1, 0, 1, -utilTabHeight);
				searchTerm = var39;
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
local ClientMemoryUpdateSearchFilter_upvr = require(Actions.ClientMemoryUpdateSearchFilter)
local ServerMemoryUpdateSearchFilter_upvr = require(Actions.ServerMemoryUpdateSearchFilter)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 174, Named "mapStateToProps"
	return {
		clientSearchTerm = arg1.MemoryData.clientSearchTerm;
		clientTypeFilters = arg1.MemoryData.clientTypeFilters;
		serverSearchTerm = arg1.MemoryData.serverSearchTerm;
		serverTypeFilters = arg1.MemoryData.serverTypeFilters;
	}
end, function(arg1) -- Line 183, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: ClientMemoryUpdateSearchFilter_upvr (readonly)
		[2]: ServerMemoryUpdateSearchFilter_upvr (readonly)
	]]
	return {
		dispatchClientMemoryUpdateSearchFilter = function(arg1_6, arg2) -- Line 185, Named "dispatchClientMemoryUpdateSearchFilter"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ClientMemoryUpdateSearchFilter_upvr (copied, readonly)
			]]
			arg1(ClientMemoryUpdateSearchFilter_upvr(arg1_6, arg2))
		end;
		dispatchServerMemoryUpdateSearchFilter = function(arg1_7, arg2) -- Line 189, Named "dispatchServerMemoryUpdateSearchFilter"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ServerMemoryUpdateSearchFilter_upvr (copied, readonly)
			]]
			arg1(ServerMemoryUpdateSearchFilter_upvr(arg1_7, arg2))
		end;
	}
end)(any_extend_result1_2)