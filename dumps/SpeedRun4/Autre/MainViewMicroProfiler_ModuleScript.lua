-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:25
-- Luau version 6, Types version 3
-- Time taken: 0.006877 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.Component:extend("MainViewProfiler")
local GameSettings_upvr = UserSettings().GameSettings
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
function any_extend_result1.init(arg1) -- Line 31
	--[[ Upvalues[3]:
		[1]: GameSettings_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	function arg1.onUtilTabHeightChanged(arg1_2) -- Line 32
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_6 = {}
		tbl_6.utilTabHeight = arg1_2
		arg1:setState(tbl_6)
	end
	function arg1.changeProfilerState(arg1_3) -- Line 38
		--[[ Upvalues[3]:
			[1]: GameSettings_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: RbxAnalyticsService_upvr (copied, readonly)
		]]
		return function() -- Line 39
			--[[ Upvalues[4]:
				[1]: GameSettings_upvr (copied, readonly)
				[2]: arg1_3 (readonly)
				[3]: arg1 (copied, readonly)
				[4]: RbxAnalyticsService_upvr (copied, readonly)
			]]
			GameSettings_upvr.OnScreenProfilerEnabled = arg1_3
			local tbl_7 = {}
			tbl_7.clientProfilerEnabled = arg1_3
			arg1:setState(tbl_7)
			RbxAnalyticsService_upvr:ReportCounter("MicroprofilerDevConsolePressed")
		end
	end
	arg1.microProfilerChangedConnection = GameSettings_upvr:GetPropertyChangedSignal("OnScreenProfilerEnabled"):Connect(function() -- Line 50
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GameSettings_upvr (copied, readonly)
		]]
		arg1:setState({
			clientProfilerEnabled = GameSettings_upvr.OnScreenProfilerEnabled;
		})
	end)
	arg1.utilRef = Roact_upvr.createRef()
	arg1.state = {
		utilTabHeight = 0;
	}
end
function any_extend_result1.didMount(arg1) -- Line 63
	arg1:setState({
		utilTabHeight = arg1.utilRef.current.Size.Y.Offset;
	})
end
function any_extend_result1.willUnmount(arg1) -- Line 71
	if arg1.microProfilerChangedConnection then
		arg1.microProfilerChangedConnection:Disconnect()
		arg1.microProfilerChangedConnection = nil
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 78
	local Size = arg1.utilRef.current.Size
	if Size.Y.Offset ~= arg1.state.utilTabHeight then
		arg1:setState({
			utilTabHeight = Size.Y.Offset;
		})
	end
end
local ButtonWidth_upvr = Constants_upvr.MicroProfilerFormatting.ButtonWidth
local MainRowPadding_upvr = Constants_upvr.GeneralFormatting.MainRowPadding
local UtilAndTab_upvr = require(script.Parent.Parent.Parent.Components.UtilAndTab)
local MainWindowHeader_upvr = Constants_upvr.Font.MainWindowHeader
local ButtonTextSize_upvr = Constants_upvr.MicroProfilerFormatting.ButtonTextSize
local UnselectedGray_upvr = Constants_upvr.Color.UnselectedGray
local UnselectedGray_upvr_2 = Constants_upvr.Color.UnselectedGray
local SelectedBlue_upvr = Constants_upvr.Color.SelectedBlue
local ServerProfilerInterface_upvr = require(script.Parent.ServerProfilerInterface)
function any_extend_result1.render(arg1) -- Line 87
	--[[ Upvalues[11]:
		[1]: ButtonWidth_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: MainRowPadding_upvr (readonly)
		[5]: UtilAndTab_upvr (readonly)
		[6]: MainWindowHeader_upvr (readonly)
		[7]: ButtonTextSize_upvr (readonly)
		[8]: UnselectedGray_upvr (readonly)
		[9]: UnselectedGray_upvr_2 (readonly)
		[10]: SelectedBlue_upvr (readonly)
		[11]: ServerProfilerInterface_upvr (readonly)
	]]
	local size = arg1.props.size
	local utilTabHeight = arg1.state.utilTabHeight
	local clientProfilerEnabled = arg1.state.clientProfilerEnabled
	local module = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, MainRowPadding_upvr);
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		UtilAndTab = Roact_upvr.createElement(UtilAndTab_upvr, {
			windowWidth = size.X.Offset;
			formFactor = arg1.props.formFactor;
			tabList = arg1.props.tabList;
			layoutOrder = 1;
			refForParent = arg1.utilRef;
			onHeightChanged = arg1.onUtilTabHeightChanged;
		});
	}
	local tbl_2 = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, MainRowPadding_upvr * 2);
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl_3 = {
		Label = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(0, ButtonWidth_upvr, 0, 30);
			Position = UDim2.new(0.1, 0, 0, 0);
			Text = "MicroProfiler";
			Font = MainWindowHeader_upvr;
			TextSize = ButtonTextSize_upvr;
			TextColor3 = Constants_upvr.Color.Text;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Center;
			BackgroundColor3 = UnselectedGray_upvr;
			BackgroundTransparency = 1;
		});
		HorizontalLine = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 1);
			Position = UDim2.new(0, 0, 0, 30);
		});
	}
	local tbl_5 = {}
	local tbl = {
		Size = UDim2.new(0.5, 0, 1, 0);
		Text = "Off";
		Font = MainWindowHeader_upvr;
		TextSize = ButtonTextSize_upvr;
		TextColor3 = Constants_upvr.Color.Text;
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Center;
	}
	local var43
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var43 = UnselectedGray_upvr_2
		return var43
	end
	if not clientProfilerEnabled or not INLINED() then
		var43 = SelectedBlue_upvr
	end
	tbl.BackgroundColor3 = var43
	var43 = Roact_upvr.Event.Activated
	tbl[var43] = arg1.changeProfilerState(false)
	tbl_5.OffButton = Roact_upvr.createElement("TextButton", tbl)
	local tbl_4 = {}
	var43 = UDim2.new(0.5, 0, 1, 0)
	tbl_4.Size = var43
	var43 = UDim2.new(0.5, 0, 0, 0)
	tbl_4.Position = var43
	var43 = "Client"
	tbl_4.Text = var43
	var43 = MainWindowHeader_upvr
	tbl_4.Font = var43
	var43 = ButtonTextSize_upvr
	tbl_4.TextSize = var43
	var43 = Constants_upvr.Color.Text
	tbl_4.TextColor3 = var43
	var43 = Enum.TextXAlignment.Center
	tbl_4.TextXAlignment = var43
	var43 = Enum.TextYAlignment.Center
	tbl_4.TextYAlignment = var43
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var43 = SelectedBlue_upvr
		return var43
	end
	if not clientProfilerEnabled or not INLINED_2() then
		var43 = UnselectedGray_upvr_2
	end
	tbl_4.BackgroundColor3 = var43
	var43 = Roact_upvr.Event.Activated
	tbl_4[var43] = arg1.changeProfilerState(true)
	tbl_5.ClientButton = Roact_upvr.createElement("TextButton", tbl_4)
	tbl_3.ToggleButton = Roact_upvr.createElement("TextLabel", {
		Size = UDim2.new(0.8, -ButtonWidth_upvr, 0, 30);
		Position = UDim2.new(0.09999999999999998, ButtonWidth_upvr, 0, 37.5);
		BackgroundTransparency = 1;
	}, tbl_5)
	tbl_2.MicroProfilerRow = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 90);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, tbl_3)
	tbl_2.HorizontalLine = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, MainRowPadding_upvr);
		BackgroundTransparency = 1;
		LayoutOrder = 3;
	})
	tbl_2.ServerProfiler = Roact_upvr.createElement(ServerProfilerInterface_upvr, {
		Size = UDim2.new(1, 0, 0, 135);
		BackgroundTransparency = 1;
		LayoutOrder = 4;
	})
	module.MainFrame = Roact_upvr.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 1, -utilTabHeight);
		CanvasSize = UDim2.new(1, 0, 1, -utilTabHeight);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, tbl_2)
	return Roact_upvr.createElement("Frame", {
		Size = size;
		BackgroundColor3 = Constants_upvr.Color.BaseGray;
		BackgroundTransparency = 1;
		LayoutOrder = 3;
	}, module)
end
return any_extend_result1