-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:12
-- Luau version 6, Types version 3
-- Time taken: 0.012035 seconds

local CorePackages = game:GetService("CorePackages")
local TextService_upvr = game:GetService("TextService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Constants)
local TopBar_upvr = Constants_upvr.DefaultFontSize.TopBar
local TopBar_upvr_2 = Constants_upvr.Font.TopBar
local any_extend_result1 = Roact_upvr.PureComponent:extend("LiveUpdateElement")
function any_extend_result1.didMount(arg1) -- Line 34
	arg1.totalMemConnector = arg1.props.ClientMemoryData:totalMemSignal():Connect(function(arg1_2) -- Line 36
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_14 = {}
		tbl_14.totalClientMemory = arg1_2
		arg1:setState(tbl_14)
	end)
	arg1.avgPingConnector = arg1.props.ServerStatsData:avgPing():Connect(function(arg1_3) -- Line 40
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_11 = {}
		tbl_11.averagePing = arg1_3
		arg1:setState(tbl_11)
	end)
	arg1.logWarningErrorConnector = arg1.props.ClientLogData:errorWarningSignal():Connect(function(arg1_4, arg2) -- Line 44
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_9 = {}
		tbl_9.numErrors = arg1_4
		tbl_9.numWarnings = arg2
		arg1:setState(tbl_9)
	end)
	arg1:doSizeCheck()
end
function any_extend_result1.didUpdate(arg1) -- Line 54
	arg1:doSizeCheck()
end
function any_extend_result1.doSizeCheck(arg1) -- Line 58
	local var14
	if arg1.ref.current then
		var14 = arg1.state
		if arg1.ref.current.AbsoluteSize.X >= var14.formFactorThreshold then
			var14 = false
		else
			var14 = true
		end
		if var14 ~= arg1.state.isSmallerThanFormFactorThreshold then
			arg1:setState({
				isSmallerThanFormFactorThreshold = var14;
			})
		end
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 71
	arg1.totalMemConnector:Disconnect()
	arg1.totalMemConnector = nil
	arg1.avgPingConnector:Disconnect()
	arg1.avgPingConnector = nil
	arg1.logWarningErrorConnector:Disconnect()
	arg1.logWarningErrorConnector = nil
end
local MsgTypeNamesOrdered_upvr = Constants_upvr.MsgTypeNamesOrdered
function any_extend_result1.init(arg1) -- Line 82
	--[[ Upvalues[2]:
		[1]: MsgTypeNamesOrdered_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	local any_getErrorWarningCount_result1, any_getErrorWarningCount_result2 = arg1.props.ClientLogData:getErrorWarningCount()
	function arg1.onLogWarningButton() -- Line 84
		--[[ Upvalues[2]:
			[1]: MsgTypeNamesOrdered_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local tbl_18 = {}
		for _, v in pairs(MsgTypeNamesOrdered_upvr) do
			tbl_18[v] = false
		end
		tbl_18.Warning = true
		arg1.props.ClientLogData:setFilters(tbl_18)
		arg1.props.dispatchChangeTabClientLog()
	end
	function arg1.onLogErrorButton() -- Line 95
		--[[ Upvalues[2]:
			[1]: MsgTypeNamesOrdered_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local tbl_12 = {}
		for _, v_2 in pairs(MsgTypeNamesOrdered_upvr) do
			tbl_12[v_2] = false
		end
		tbl_12.Error = true
		arg1.props.ClientLogData:setFilters(tbl_12)
		arg1.props.dispatchChangeTabClientLog()
	end
	arg1.ref = Roact_upvr.createRef()
	arg1.state = {
		numErrors = any_getErrorWarningCount_result1;
		numWarnings = any_getErrorWarningCount_result2;
		totalClientMemory = 0;
		averagePing = 0;
		formFactorThreshold = 380;
		isSmallerThanFormFactorThreshold = false;
	}
end
local any_GetTextSize_result1_upvr_2 = TextService_upvr:GetTextSize("Client Memory Usage:", TopBar_upvr, TopBar_upvr_2, Vector2.new(0, 0))
local any_GetTextSize_result1_upvr_3 = TextService_upvr:GetTextSize("Client Mem:", TopBar_upvr, TopBar_upvr_2, Vector2.new(0, 0))
local udim2_upvr = UDim2.new(0, TopBar_upvr, 0, TopBar_upvr)
local Text_upvr = Constants_upvr.Color.Text
local any_GetTextSize_result1_upvr = TextService_upvr:GetTextSize("Avg. Ping:", TopBar_upvr, TopBar_upvr_2, Vector2.new(0, 0))
function any_extend_result1.render(arg1) -- Line 118
	--[[ Upvalues[10]:
		[1]: any_GetTextSize_result1_upvr_2 (readonly)
		[2]: Constants_upvr (readonly)
		[3]: any_GetTextSize_result1_upvr_3 (readonly)
		[4]: TextService_upvr (readonly)
		[5]: TopBar_upvr (readonly)
		[6]: TopBar_upvr_2 (readonly)
		[7]: Roact_upvr (readonly)
		[8]: udim2_upvr (readonly)
		[9]: Text_upvr (readonly)
		[10]: any_GetTextSize_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local formFactor = arg1.props.formFactor
	local averagePing_2 = arg1.state.averagePing
	local isSmallerThanFormFactorThreshold_2 = arg1.state.isSmallerThanFormFactorThreshold
	local var70
	if formFactor == Constants_upvr.FormFactor.Small or isSmallerThanFormFactorThreshold_2 then
		var70 += UDim2.new(0, 12, 0, 0)
	end
	local formatted_6 = string.format("%d", arg1.state.numErrors)
	local formatted_3 = string.format("%d", arg1.state.numWarnings)
	local formatted_4 = string.format("%d MB", arg1.state.totalClientMemory)
	local formatted_7 = string.format("%d ms", averagePing_2)
	if formFactor == Constants_upvr.FormFactor.Small or isSmallerThanFormFactorThreshold_2 then
		var70 += UDim2.new(0, 12, 0, 0)
		local var75 = true
	end
	if 0 >= averagePing_2 then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	local module_3 = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, 6);
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		LogErrorIcon = Roact_upvr.createElement("ImageButton", {
			Image = Constants_upvr.Image.Error;
			Size = udim2_upvr;
			BackgroundTransparency = 1;
			LayoutOrder = 1;
			[Roact_upvr.Event.Activated] = arg1.onLogErrorButton;
		});
		LogErrorCount = Roact_upvr.createElement("TextButton", {
			Text = formatted_6;
			TextSize = TopBar_upvr;
			TextColor3 = Text_upvr;
			TextXAlignment = Enum.TextXAlignment.Left;
			Font = TopBar_upvr_2;
			Size = UDim2.new(0, TextService_upvr:GetTextSize(formatted_6, TopBar_upvr, TopBar_upvr_2, Vector2.new(0, 0)).X, 1, 0);
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			[Roact_upvr.Event.Activated] = arg1.onLogErrorButton;
		});
		ErrorWarningPad = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 3;
		});
		LogWarningIcon = Roact_upvr.createElement("ImageButton", {
			Image = Constants_upvr.Image.Warning;
			Size = udim2_upvr;
			BackgroundTransparency = 1;
			LayoutOrder = 4;
			[Roact_upvr.Event.Activated] = arg1.onLogWarningButton;
		});
		LogWarningCount = Roact_upvr.createElement("TextButton", {
			Text = formatted_3;
			TextSize = TopBar_upvr;
			TextColor3 = Text_upvr;
			TextXAlignment = Enum.TextXAlignment.Left;
			Font = TopBar_upvr_2;
			Size = UDim2.new(0, TextService_upvr:GetTextSize(formatted_3, TopBar_upvr, TopBar_upvr_2, Vector2.new(0, 0)).X, 1, 0);
			BackgroundTransparency = 9;
			LayoutOrder = 5;
			[Roact_upvr.Event.Activated] = arg1.onLogWarningButton;
		});
		WarningMemoryPad = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 6;
		});
	}
	local tbl_3 = {}
	if var75 then
	else
	end
	tbl_3.Text = "Client Memory Usage:"
	tbl_3.TextSize = TopBar_upvr
	tbl_3.TextColor3 = Constants_upvr.Color.WarningYellow
	tbl_3.TextXAlignment = Enum.TextXAlignment.Right
	tbl_3.Font = TopBar_upvr_2
	tbl_3.Size = UDim2.new(0, any_GetTextSize_result1_upvr_3.X, 1, 0)
	tbl_3.BackgroundTransparency = 1
	tbl_3.LayoutOrder = 7
	tbl_3[Roact_upvr.Event.Activated] = arg1.props.dispatchChangeTabClientMemory
	module_3.MemoryUsage = Roact_upvr.createElement("TextButton", tbl_3)
	module_3.MemoryUsage_MB = Roact_upvr.createElement("TextButton", {
		Text = formatted_4;
		TextSize = TopBar_upvr;
		TextColor3 = Text_upvr;
		TextXAlignment = Enum.TextXAlignment.Left;
		Font = TopBar_upvr_2;
		Size = UDim2.new(0, TextService_upvr:GetTextSize(formatted_4, TopBar_upvr, TopBar_upvr_2, Vector2.new(0, 0)).X, 1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 8;
		[Roact_upvr.Event.Activated] = arg1.props.dispatchChangeTabClientMemory;
	})
	module_3.MemoryPingPad = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 9;
	})
	local var89 = not var75
	if var89 then
		var89 = true
		if var89 then
			var89 = Roact_upvr.createElement
			var89 = var89("TextButton", {
				Text = "Avg. Ping:";
				TextSize = TopBar_upvr;
				TextColor3 = Constants_upvr.Color.WarningYellow;
				TextXAlignment = Enum.TextXAlignment.Right;
				Font = TopBar_upvr_2;
				Size = UDim2.new(0, any_GetTextSize_result1_upvr.X, 1, 0);
				BackgroundTransparency = 1;
				LayoutOrder = 10;
				[Roact_upvr.Event.Activated] = arg1.props.dispatchChangeTabNetworkPing;
			})
		end
	end
	module_3.AvgPing = var89
	var89 = not var75
	local var91 = var89
	if var91 then
		var91 = true
		if var91 then
			var91 = Roact_upvr.createElement
			var91 = var91("TextButton", {
				Text = formatted_7;
				TextSize = TopBar_upvr;
				TextColor3 = Text_upvr;
				TextXAlignment = Enum.TextXAlignment.Left;
				Font = TopBar_upvr_2;
				Size = UDim2.new(0, TextService_upvr:GetTextSize(formatted_7, TopBar_upvr, TopBar_upvr_2, Vector2.new(0, 0)).X, 1, 0);
				BackgroundTransparency = 1;
				LayoutOrder = 11;
				[Roact_upvr.Event.Activated] = arg1.props.dispatchChangeTabNetworkPing;
			})
		end
	end
	module_3.AvgPing_ms = var91
	return Roact_upvr.createElement("Frame", {
		Position = var70;
		Size = arg1.props.size;
		BackgroundTransparency = 1;
		[Roact_upvr.Ref] = arg1.ref;
	}, module_3)
end
local SetActiveTab_upvr = require(script.Parent.Parent.Actions.SetActiveTab)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(nil, function(arg1) -- Line 282, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetActiveTab_upvr (readonly)
	]]
	return {
		dispatchChangeTabClientLog = function() -- Line 284, Named "dispatchChangeTabClientLog"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetActiveTab_upvr (copied, readonly)
			]]
			arg1(SetActiveTab_upvr("Log", true))
		end;
		dispatchChangeTabClientMemory = function() -- Line 287, Named "dispatchChangeTabClientMemory"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetActiveTab_upvr (copied, readonly)
			]]
			arg1(SetActiveTab_upvr("Memory", true))
		end;
		dispatchChangeTabNetworkPing = function() -- Line 290, Named "dispatchChangeTabNetworkPing"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetActiveTab_upvr (copied, readonly)
			]]
			arg1(SetActiveTab_upvr("ServerStats", true))
		end;
	}
end)(require(script.Parent.Parent.Components.DataConsumer)(any_extend_result1, "ServerStatsData", "ClientMemoryData", "ClientLogData"))