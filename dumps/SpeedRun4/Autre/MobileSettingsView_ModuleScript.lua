-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:40
-- Luau version 6, Types version 3
-- Time taken: 0.010288 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local ProfilerUtil_upvr = require(script.Parent.ProfilerUtil)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local SmallFrameHeight_upvr = Constants_upvr.UtilityBarFormatting.SmallFrameHeight
local MainWindowHeader_upvr = Constants_upvr.Font.MainWindowHeader
local ButtonTextSize_upvr = Constants_upvr.MicroProfilerFormatting.ButtonTextSize
local UnselectedGray_upvr_2 = Constants_upvr.Color.UnselectedGray
local ButtonWidth_upvr = Constants_upvr.MicroProfilerFormatting.ButtonWidth
local DropDownArrowHeight_upvr = Constants_upvr.GeneralFormatting.DropDownArrowHeight
local function _(arg1, arg2) -- Line 43, Named "makeFormattedStringTable"
	local table_create_result1 = table.create(#arg1)
	for _, v in arg1 do
		table.insert(table_create_result1, arg2(v))
	end
	return table_create_result1
end
local function formatTimeSelection(arg1) -- Line 53
	--[[ Upvalues[1]:
		[1]: ProfilerUtil_upvr (readonly)
	]]
	if arg1 == 0 then
		return "Off"
	end
	return ProfilerUtil_upvr.formatTimer(arg1)
end
local tbl_8_upvr = {"Callgraph", "Functions"}
local tbl_11_upvr = {0, 1, 60, 300, 600}
local table_create_result1_upvr = table.create(#tbl_11_upvr)
for _, v_2 in tbl_11_upvr do
	table.insert(table_create_result1_upvr, formatTimeSelection(v_2))
end
local tbl_9_upvr = {1000, 10000}
for _, v_3 in tbl_9_upvr do
	table.insert(table.create(#tbl_9_upvr), ProfilerUtil_upvr.formatFrequency(v_3))
	local var45_upvr
end
local tbl_6_upvr = {0, 60, 300, 600}
for _, v_4 in tbl_6_upvr do
	table.insert(table.create(#tbl_6_upvr), formatTimeSelection(v_4))
	local var48_upvr
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("MobileSettingsView")
function any_extend_result1.init(arg1) -- Line 74
end
function any_extend_result1.didMount(arg1) -- Line 76
end
function any_extend_result1.didUpdate(arg1) -- Line 78
end
function any_extend_result1.GetState(arg1, arg2) -- Line 80
	local var50
	if arg1.props.isClientView then
		var50 = arg1.props.client
	else
		var50 = arg1.props.server
	end
	return var50[arg2]
end
function any_extend_result1.UpdateState(arg1, arg2, arg3) -- Line 86
	local var51
	if arg1.props.isClientView then
		var51 = arg1.props.client
	else
		var51 = arg1.props.server
	end
	local clone = table.clone(var51)
	clone[arg2] = arg3
	arg1.props.dispatchSetScriptProfilerState(arg1.props.isClientView, clone)
end
local UnselectedGray_upvr = Constants_upvr.Color.UnselectedGray
local SelectedBlue_upvr = Constants_upvr.Color.SelectedBlue
function any_extend_result1.renderToggle(arg1, arg2, arg3, arg4) -- Line 95
	--[[ Upvalues[9]:
		[1]: Roact_upvr (readonly)
		[2]: SmallFrameHeight_upvr (readonly)
		[3]: ButtonWidth_upvr (readonly)
		[4]: MainWindowHeader_upvr (readonly)
		[5]: ButtonTextSize_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: UnselectedGray_upvr_2 (readonly)
		[8]: UnselectedGray_upvr (readonly)
		[9]: SelectedBlue_upvr (readonly)
	]]
	local module_3 = {}
	local tbl_10 = {
		Size = UDim2.new(0, ButtonWidth_upvr, 0, SmallFrameHeight_upvr);
		Position = UDim2.new(0.1, 0, 0, 0);
	}
	tbl_10.Text = arg2
	tbl_10.Font = MainWindowHeader_upvr
	tbl_10.TextSize = ButtonTextSize_upvr
	tbl_10.TextColor3 = Constants_upvr.Color.Text
	tbl_10.TextXAlignment = Enum.TextXAlignment.Left
	tbl_10.TextYAlignment = Enum.TextYAlignment.Center
	tbl_10.BackgroundColor3 = UnselectedGray_upvr_2
	tbl_10.BackgroundTransparency = 1
	module_3.Label = Roact_upvr.createElement("TextLabel", tbl_10)
	local tbl_4 = {}
	local tbl_3 = {
		Size = UDim2.new(0.5, 0, 1, 0);
		Text = "Off";
		Font = MainWindowHeader_upvr;
		TextSize = ButtonTextSize_upvr;
		TextColor3 = Constants_upvr.Color.Text;
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Center;
	}
	local var61
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var61 = UnselectedGray_upvr
		return var61
	end
	if not arg3 or not INLINED() then
		var61 = SelectedBlue_upvr
	end
	tbl_3.BackgroundColor3 = var61
	var61 = Roact_upvr.Event.Activated
	tbl_3[var61] = function() -- Line 129
		--[[ Upvalues[1]:
			[1]: arg4 (readonly)
		]]
		arg4(false)
	end
	tbl_4.OffButton = Roact_upvr.createElement("TextButton", tbl_3)
	local tbl = {}
	var61 = UDim2.new(0.5, 0, 1, 0)
	tbl.Size = var61
	var61 = UDim2.new(0.5, 0, 0, 0)
	tbl.Position = var61
	var61 = "On"
	tbl.Text = var61
	var61 = MainWindowHeader_upvr
	tbl.Font = var61
	var61 = ButtonTextSize_upvr
	tbl.TextSize = var61
	var61 = Constants_upvr.Color.Text
	tbl.TextColor3 = var61
	var61 = Enum.TextXAlignment.Center
	tbl.TextXAlignment = var61
	var61 = Enum.TextYAlignment.Center
	tbl.TextYAlignment = var61
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var61 = SelectedBlue_upvr
		return var61
	end
	if not arg3 or not INLINED_2() then
		var61 = UnselectedGray_upvr
	end
	tbl.BackgroundColor3 = var61
	var61 = Roact_upvr.Event.Activated
	tbl[var61] = function() -- Line 145
		--[[ Upvalues[1]:
			[1]: arg4 (readonly)
		]]
		arg4(true)
	end
	tbl_4.OnButton = Roact_upvr.createElement("TextButton", tbl)
	module_3.ToggleButton = Roact_upvr.createElement("TextLabel", {
		Size = UDim2.new(0, ButtonWidth_upvr * 2, 0, SmallFrameHeight_upvr);
		Position = UDim2.new(0.9, -ButtonWidth_upvr * 2, 0, 0);
		BackgroundTransparency = 1;
	}, tbl_4)
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, SmallFrameHeight_upvr);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, module_3)
end
function any_extend_result1.renderStateToggle(arg1, arg2, arg3, arg4) -- Line 153
	return arg1:renderToggle(arg2, arg1:GetState(arg3), function(arg1_2) -- Line 156
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg3 (readonly)
		]]
		arg1:UpdateState(arg3, arg1_2)
	end)
end
local Text_upvr = Constants_upvr.Color.Text
local MainWindow_upvr = Constants_upvr.Font.MainWindow
local DownArrow_upvr = Constants_upvr.Image.DownArrow
local var69_upvr = DropDownArrowHeight_upvr / 2
local DropDown_upvr = require(script.Parent.Parent.Parent.Components.DropDown)
function any_extend_result1.renderDropDown(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 161
	--[[ Upvalues[13]:
		[1]: Roact_upvr (readonly)
		[2]: ButtonWidth_upvr (readonly)
		[3]: SmallFrameHeight_upvr (readonly)
		[4]: ButtonTextSize_upvr (readonly)
		[5]: Text_upvr (readonly)
		[6]: MainWindow_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: DownArrow_upvr (readonly)
		[9]: DropDownArrowHeight_upvr (readonly)
		[10]: var69_upvr (readonly)
		[11]: DropDown_upvr (readonly)
		[12]: MainWindowHeader_upvr (readonly)
		[13]: UnselectedGray_upvr_2 (readonly)
	]]
	local var71
	if arg7 then
		var71 = Roact_upvr.createElement("TextButton", {
			Position = UDim2.new(0.9, -ButtonWidth_upvr, 0, 0);
			Size = UDim2.new(0, ButtonWidth_upvr, 0, SmallFrameHeight_upvr);
			Text = arg4[arg6];
			TextSize = ButtonTextSize_upvr;
			TextColor3 = Text_upvr;
			Font = MainWindow_upvr;
			AutoButtonColor = true;
			BackgroundColor3 = Constants_upvr.Color.InactiveBox;
			BackgroundTransparency = 0;
		}, {
			arrow = Roact_upvr.createElement("ImageLabel", {
				Image = DownArrow_upvr;
				BackgroundTransparency = 1;
				Size = UDim2.new(0, DropDownArrowHeight_upvr, 0, DropDownArrowHeight_upvr);
				Position = UDim2.new(1, -DropDownArrowHeight_upvr - var69_upvr, 0.5, -var69_upvr);
			});
		})
	else
		local tbl_5 = {}
		local tbl_2 = {
			buttonSize = UDim2.new(1, 0, 0, SmallFrameHeight_upvr);
		}
		tbl_2.dropDownList = arg4
		tbl_2.selectedIndex = arg6
		function tbl_2.onSelection(arg1_3) -- Line 193
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: arg3 (readonly)
				[3]: arg5 (readonly)
			]]
			local any_GetState_result1_2 = arg1:GetState(arg3)
			if typeof(any_GetState_result1_2) == "boolean" then
				if arg1_3 ~= 2 then
					any_GetState_result1_2 = false
				else
					any_GetState_result1_2 = true
				end
			elseif typeof(any_GetState_result1_2) == "number" then
				any_GetState_result1_2 = arg5[arg1_3]
			end
			arg1:UpdateState(arg3, any_GetState_result1_2)
		end
		tbl_5.Selection = Roact_upvr.createElement(DropDown_upvr, tbl_2)
		var71 = Roact_upvr.createElement("Frame", {
			Position = UDim2.new(0.9, -ButtonWidth_upvr, 0, 0);
			Size = UDim2.new(0, ButtonWidth_upvr, 0, SmallFrameHeight_upvr);
		}, tbl_5)
	end
	local module_2 = {}
	local tbl_7 = {
		Size = UDim2.new(0, ButtonWidth_upvr, 0, SmallFrameHeight_upvr);
		Position = UDim2.new(0.1, 0, 0, 0);
	}
	tbl_7.Text = arg2
	tbl_7.Font = MainWindowHeader_upvr
	tbl_7.TextSize = ButtonTextSize_upvr
	tbl_7.TextColor3 = Constants_upvr.Color.Text
	tbl_7.TextXAlignment = Enum.TextXAlignment.Left
	tbl_7.TextYAlignment = Enum.TextYAlignment.Center
	tbl_7.BackgroundColor3 = UnselectedGray_upvr_2
	tbl_7.BackgroundTransparency = 1
	module_2.Label = Roact_upvr.createElement("TextLabel", tbl_7)
	module_2.DropDown = var71
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, SmallFrameHeight_upvr);
		BackgroundTransparency = 1;
	}, module_2)
end
local var82_upvr = Constants_upvr.GeneralFormatting.MainRowPadding * 2
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ScriptProfilerShowPlugins2", false)
function any_extend_result1.render(arg1) -- Line 229
	--[[ Upvalues[12]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: var82_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: table_create_result1_upvr (readonly)
		[6]: tbl_11_upvr (readonly)
		[7]: var45_upvr (readonly)
		[8]: tbl_9_upvr (readonly)
		[9]: ProfilerUtil_upvr (readonly)
		[10]: var48_upvr (readonly)
		[11]: tbl_6_upvr (readonly)
		[12]: tbl_8_upvr (readonly)
	]]
	local any_GetState_result1 = arg1:GetState("isProfiling")
	local module = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, var82_upvr);
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		Percentages = arg1:renderToggle("Percentages", arg1.props.usePercentages, function(arg1_4) -- Line 245
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.dispatchSetScriptProfilerUsePercentages(arg1_4)
		end);
	}
	local any_renderStateToggle_result1 = arg1:renderStateToggle("Live Update", "liveUpdate")
	module.LiveToggle = any_renderStateToggle_result1
	local var90
	if not game_DefineFastFlag_result1_upvr then
		any_renderStateToggle_result1 = nil
	else
		any_renderStateToggle_result1 = arg1:renderStateToggle("Show Plugins", "showPlugins")
	end
	module.PluginsToggle = any_renderStateToggle_result1
	module.GCToggle = arg1:renderStateToggle("GC Overhead", "showGc")
	var90 = table.find(tbl_11_upvr, arg1:GetState("average")) or 1
	module.AverageDropDown = arg1:renderDropDown("Average", "average", table_create_result1_upvr, tbl_11_upvr, var90)
	local var91 = var45_upvr
	var90 = table.find(tbl_9_upvr, arg1:GetState("frequency")) or 1
	module.FrequencyDropDown = arg1:renderDropDown("Frequency", "frequency", var91, tbl_9_upvr, var90, any_GetState_result1)
	if any_GetState_result1 then
		var90 = ProfilerUtil_upvr.formatTimer(arg1:GetState("timedProfilingCountdown"))
		var91 = ": "..var90
	else
		var91 = ""
	end
	var90 = table.find(tbl_6_upvr, arg1:GetState("timedProfilingDuration")) or 1
	module.TimerDropDown = arg1:renderDropDown("Timer"..var91, "timedProfilingDuration", var48_upvr, tbl_6_upvr, var90, any_GetState_result1)
	if arg1:GetState("isFunctionsView") then
		var90 = 2
	else
		var90 = 1
	end
	module.ViewDropDown = arg1:renderDropDown("View", "isFunctionsView", tbl_8_upvr, nil, var90)
	return Roact_upvr.createElement("ScrollingFrame", {
		Size = arg1.props.size;
		BackgroundColor3 = Constants_upvr.Color.BaseGray;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
	}, module)
end
local SetScriptProfilerState_upvr = require(script.Parent.Parent.Parent.Actions.SetScriptProfilerState)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 296, Named "mapStateToProps"
	return {
		usePercentages = arg1.ScriptProfiler.usePercentages;
		isClientView = arg1.ScriptProfiler.isClientView;
		client = arg1.ScriptProfiler.client;
		server = arg1.ScriptProfiler.server;
	}
end, function(arg1) -- Line 305, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetScriptProfilerState_upvr (readonly)
	]]
	return {
		dispatchSetScriptProfilerState = function(arg1_5, arg2) -- Line 307, Named "dispatchSetScriptProfilerState"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetScriptProfilerState_upvr (copied, readonly)
			]]
			if arg1_5 then
				arg1(SetScriptProfilerState_upvr(arg1_5, nil, arg2, nil))
			else
				arg1(SetScriptProfilerState_upvr(arg1_5, nil, nil, arg2))
			end
		end;
		dispatchSetScriptProfilerUsePercentages = function(arg1_6) -- Line 315, Named "dispatchSetScriptProfilerUsePercentages"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetScriptProfilerState_upvr (copied, readonly)
			]]
			arg1(SetScriptProfilerState_upvr(nil, arg1_6))
		end;
	}
end)(any_extend_result1)