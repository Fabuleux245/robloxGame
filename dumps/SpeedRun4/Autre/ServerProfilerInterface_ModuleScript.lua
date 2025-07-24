-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:27
-- Luau version 6, Types version 3
-- Time taken: 0.009401 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.Component:extend("ServerProfilerInteraface")
local GameSettings_upvr = UserSettings().GameSettings
local getClientReplicator_upvr = require(script.Parent.Parent.Parent.Util.getClientReplicator)
function any_extend_result1.init(arg1) -- Line 32
	--[[ Upvalues[2]:
		[1]: GameSettings_upvr (readonly)
		[2]: getClientReplicator_upvr (readonly)
	]]
	function arg1.onUtilTabHeightChanged(arg1_2) -- Line 33
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_8 = {}
		tbl_8.utilTabHeight = arg1_2
		arg1:setState(tbl_8)
	end
	function arg1.onFocusLostFrameRate(arg1_3, arg2, arg3) -- Line 39
		--[[ Upvalues[1]:
			[1]: GameSettings_upvr (copied, readonly)
		]]
		GameSettings_upvr.RCCProfilerRecordFrameRate = arg1_3.Text
		arg1_3.Text = GameSettings_upvr.RCCProfilerRecordFrameRate
	end
	function arg1.onFocusLostTimeFrame(arg1_4, arg2, arg3) -- Line 47
		--[[ Upvalues[1]:
			[1]: GameSettings_upvr (copied, readonly)
		]]
		GameSettings_upvr.RCCProfilerRecordTimeFrame = arg1_4.Text
		arg1_4.Text = GameSettings_upvr.RCCProfilerRecordTimeFrame
	end
	function arg1.requestRCCProfilerData(arg1_5) -- Line 55
		--[[ Upvalues[3]:
			[1]: getClientReplicator_upvr (copied, readonly)
			[2]: GameSettings_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local getClientReplicator_upvr_result1 = getClientReplicator_upvr()
		if getClientReplicator_upvr_result1 then
			getClientReplicator_upvr_result1:RequestRCCProfilerData(GameSettings_upvr.RCCProfilerRecordFrameRate, GameSettings_upvr.RCCProfilerRecordTimeFrame)
			arg1.props.dispatchSetRCCProfilerState(true)
		end
	end
	function arg1.changeProfilerState(arg1_6) -- Line 68
		--[[ Upvalues[2]:
			[1]: GameSettings_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return function() -- Line 69
			--[[ Upvalues[3]:
				[1]: GameSettings_upvr (copied, readonly)
				[2]: arg1_6 (readonly)
				[3]: arg1 (copied, readonly)
			]]
			GameSettings_upvr.OnScreenProfilerEnabled = arg1_6
			local tbl_5 = {}
			tbl_5.clientProfilerEnabled = arg1_6
			arg1:setState(tbl_5)
		end
	end
	arg1.state = {
		frameRate = GameSettings_upvr.RCCProfilerRecordFrameRate;
		timeFrame = GameSettings_upvr.RCCProfilerRecordTimeFrame;
	}
end
local ButtonWidth_upvr = Constants_upvr.MicroProfilerFormatting.ButtonWidth
local MainWindowHeader_upvr = Constants_upvr.Font.MainWindowHeader
local ButtonTextSize_upvr = Constants_upvr.MicroProfilerFormatting.ButtonTextSize
local UnselectedGray_upvr_2 = Constants_upvr.Color.UnselectedGray
local MainWindow_upvr = Constants_upvr.Font.MainWindow
local UnselectedGray_upvr = Constants_upvr.Color.UnselectedGray
local SelectedBlue_upvr = Constants_upvr.Color.SelectedBlue
function any_extend_result1.render(arg1) -- Line 83
	--[[ Upvalues[9]:
		[1]: ButtonWidth_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: MainWindowHeader_upvr (readonly)
		[4]: ButtonTextSize_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: UnselectedGray_upvr_2 (readonly)
		[7]: MainWindow_upvr (readonly)
		[8]: UnselectedGray_upvr (readonly)
		[9]: SelectedBlue_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
	local waitingForRecording = arg1.props.waitingForRecording
	local var25
	if not waitingForRecording then
		if 0 >= #arg1.props.lastFileOutputLocation then
		else
		end
	end
	local udim2 = UDim2.new(0.8, -ButtonWidth_upvr, 0, 30)
	local module = {}
	local tbl = {}
	var25 = 30
	tbl.Size = UDim2.new(0, ButtonWidth_upvr, 0, var25)
	var25 = 0
	tbl.Position = UDim2.new(0.1, 0, 0, var25)
	tbl.Text = "ServerProfiler"
	tbl.Font = MainWindowHeader_upvr
	tbl.TextSize = ButtonTextSize_upvr
	tbl.TextColor3 = Constants_upvr.Color.Text
	tbl.TextXAlignment = Enum.TextXAlignment.Left
	tbl.TextYAlignment = Enum.TextYAlignment.Center
	tbl.BackgroundColor3 = UnselectedGray_upvr_2
	tbl.BackgroundTransparency = 1
	module.Label = Roact_upvr.createElement("TextLabel", tbl)
	local tbl_9 = {}
	var25 = 1
	tbl_9.Size = UDim2.new(1, 0, 0, var25)
	var25 = 30
	tbl_9.Position = UDim2.new(0, 0, 0, var25)
	module.HorizontalLine = Roact_upvr.createElement("Frame", tbl_9)
	local tbl_10 = {}
	var25 = 30
	tbl_10.Size = UDim2.new(0, ButtonWidth_upvr, 0, var25)
	var25 = 37.5
	tbl_10.Position = UDim2.new(0.1, 0, 0, var25)
	tbl_10.Text = "Frames Per Second"
	tbl_10.Font = MainWindow_upvr
	tbl_10.TextSize = ButtonTextSize_upvr
	tbl_10.TextColor3 = Constants_upvr.Color.Text
	tbl_10.TextXAlignment = Enum.TextXAlignment.Left
	tbl_10.TextYAlignment = Enum.TextYAlignment.Center
	tbl_10.BackgroundColor3 = UnselectedGray_upvr_2
	tbl_10.BackgroundTransparency = 1
	module.LabelFPS = Roact_upvr.createElement("TextLabel", tbl_10)
	local tbl_11 = {
		Size = udim2;
	}
	var25 = 37.5
	tbl_11.Position = UDim2.new(0.09999999999999998, ButtonWidth_upvr, 0, var25)
	tbl_11.Text = arg1.state.frameRate
	tbl_11.Font = MainWindow_upvr
	tbl_11.TextSize = ButtonTextSize_upvr
	tbl_11.TextColor3 = Constants_upvr.Color.Text
	tbl_11.TextXAlignment = Enum.TextXAlignment.Center
	tbl_11.TextYAlignment = Enum.TextYAlignment.Center
	tbl_11.BackgroundColor3 = UnselectedGray_upvr_2
	tbl_11.BackgroundTransparency = 0
	tbl_11[Roact_upvr.Event.FocusLost] = arg1.onFocusLostFrameRate
	module.FPSTextBox = Roact_upvr.createElement("TextBox", tbl_11)
	local tbl_2 = {}
	var25 = 30
	tbl_2.Size = UDim2.new(0, ButtonWidth_upvr, 0, var25)
	var25 = 67.5
	tbl_2.Position = UDim2.new(0.1, 0, 0, var25)
	tbl_2.Text = "Seconds to Record"
	tbl_2.Font = MainWindow_upvr
	tbl_2.TextSize = ButtonTextSize_upvr
	tbl_2.TextColor3 = Constants_upvr.Color.Text
	tbl_2.TextXAlignment = Enum.TextXAlignment.Left
	tbl_2.TextYAlignment = Enum.TextYAlignment.Center
	tbl_2.BackgroundTransparency = 1
	module.LabelTimeFrame = Roact_upvr.createElement("TextLabel", tbl_2)
	local tbl_4 = {
		Size = udim2;
	}
	var25 = 67.5
	tbl_4.Position = UDim2.new(0.09999999999999998, ButtonWidth_upvr, 0, var25)
	tbl_4.Text = arg1.state.timeFrame
	tbl_4.Font = MainWindow_upvr
	tbl_4.TextSize = ButtonTextSize_upvr
	tbl_4.TextColor3 = Constants_upvr.Color.Text
	tbl_4.TextXAlignment = Enum.TextXAlignment.Center
	tbl_4.TextYAlignment = Enum.TextYAlignment.Center
	tbl_4.BackgroundColor3 = UnselectedGray_upvr_2
	tbl_4.BackgroundTransparency = 0
	tbl_4[Roact_upvr.Event.FocusLost] = arg1.onFocusLostTimeFrame
	local tbl_3 = {}
	local tbl_6 = {}
	var25 = UDim2.new(0, ButtonWidth_upvr * 0.7, 0, 30)
	tbl_6.Size = var25
	var25 = UDim2.new(1, -ButtonWidth_upvr * 0.7, 1, 30)
	tbl_6.Position = var25
	if waitingForRecording then
		var25 = "Recording"
		-- KONSTANTWARNING: GOTO [414] #283
	end
	-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [413] 282. Error Block 32 start (CF ANALYSIS FAILED)
	var25 = "Start Recording"
	tbl_6.Text = var25
	var25 = MainWindow_upvr
	tbl_6.Font = var25
	var25 = ButtonTextSize_upvr
	tbl_6.TextSize = var25
	var25 = Constants_upvr.Color.Text
	tbl_6.TextColor3 = var25
	var25 = Enum.TextXAlignment.Center
	tbl_6.TextXAlignment = var25
	var25 = Enum.TextYAlignment.Center
	tbl_6.TextYAlignment = var25
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var25 = UnselectedGray_upvr
		return var25
	end
	if not waitingForRecording or not INLINED() then
		var25 = SelectedBlue_upvr
	end
	tbl_6.BackgroundColor3 = var25
	if waitingForRecording then
		var25 = 0.3
	else
		var25 = 0
	end
	tbl_6.BackgroundTransparency = var25
	var25 = not waitingForRecording
	tbl_6.AutoButtonColor = var25
	var25 = not waitingForRecording
	tbl_6.Active = var25
	var25 = Roact_upvr.Event.Activated
	tbl_6[var25] = arg1.requestRCCProfilerData
	tbl_3.GetDumpButton = Roact_upvr.createElement("TextButton", tbl_6)
	module.TimeFrameTextBox = Roact_upvr.createElement("TextBox", tbl_4, tbl_3)
	local var37 = true
	if var37 then
		var37 = Roact_upvr.createElement
		local tbl_7 = {}
		var25 = 30
		tbl_7.Size = UDim2.new(1, 0, 0, var25)
		var25 = 97.5
		tbl_7.Position = UDim2.new(0, 0, 0, var25)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_7.Text = arg1.props.lastFileOutputLocation
		tbl_7.Font = MainWindow_upvr
		tbl_7.TextSize = ButtonTextSize_upvr
		tbl_7.TextColor3 = Constants_upvr.Color.Text
		tbl_7.TextXAlignment = Enum.TextXAlignment.Center
		tbl_7.TextYAlignment = Enum.TextYAlignment.Center
		var37 = var37("TextLabel", tbl_7)
	end
	module.OutputPath = var37
	do
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 135);
			BackgroundTransparency = 1;
			LayoutOrder = 4;
		}, module)
	end
	-- KONSTANTERROR: [413] 282. Error Block 32 end (CF ANALYSIS FAILED)
end
local SetRCCProfilerState_upvr = require(script.Parent.Parent.Parent.Actions.SetRCCProfilerState)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 210, Named "mapStateToProps"
	return {
		waitingForRecording = arg1.MicroProfiler.waitingForRecording;
		lastFileOutputLocation = arg1.MicroProfiler.lastFileOutputLocation;
	}
end, function(arg1) -- Line 217, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetRCCProfilerState_upvr (readonly)
	]]
	return {
		dispatchSetRCCProfilerState = function(arg1_7, arg2) -- Line 219, Named "dispatchSetRCCProfilerState"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetRCCProfilerState_upvr (copied, readonly)
			]]
			arg1(SetRCCProfilerState_upvr(arg1_7, arg2))
		end;
	}
end)(any_extend_result1)