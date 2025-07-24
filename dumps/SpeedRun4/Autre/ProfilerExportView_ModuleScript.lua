-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:41
-- Luau version 6, Types version 3
-- Time taken: 0.008399 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local MainWindowHeader_upvr = Constants_upvr.Font.MainWindowHeader
local ButtonTextSize_upvr = Constants_upvr.MicroProfilerFormatting.ButtonTextSize
local UnselectedGray_upvr = Constants_upvr.Color.UnselectedGray
local any_extend_result1 = Roact_upvr.PureComponent:extend("ProfilerExportView")
local function _(arg1, arg2, arg3) -- Line 31, Named "generateDefaultExportName"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var8
	if arg1 then
	else
	end
	var8 = arg2
	if var8 then
		var8 = arg2.SessionStartTime
	end
	if var8 then
	end
	return "scriptprofiler-"..(os.date("%Y%b%d-%H%M%S-", var8 / 1000) or "").."server"..arg3
end
function any_extend_result1.init(arg1) -- Line 45
end
function any_extend_result1.didMount(arg1) -- Line 47
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_2 = {}
	local data = arg1.props.client.data
	local var11 = data
	if var11 then
		var11 = data.SessionStartTime
	end
	if var11 then
	end
	tbl_2.exportFilenameClient = "scriptprofiler-"..(os.date("%Y%b%d-%H%M%S-", var11 / 1000) or "").."client"..".json"
	local data_2 = arg1.props.server.data
	local var13 = data_2
	if var13 then
		var13 = data_2.SessionStartTime
	end
	if var13 then
	end
	tbl_2.exportFilenameServer = "scriptprofiler-"..(os.date("%Y%b%d-%H%M%S-", var13 / 1000) or "").."server"..".json"
	arg1:setState(tbl_2)
end
function any_extend_result1.didUpdate(arg1) -- Line 54
end
local MainWindow_upvr = Constants_upvr.Font.MainWindow
local ScrollingTextBox_upvr = require(script.Parent.Parent.Parent.Components.ScrollingTextBox)
local ScriptProfilerService_upvr = game:GetService("ScriptProfilerService")
function any_extend_result1.renderExportInputAndButton(arg1, arg2, arg3, arg4) -- Line 56
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: UnselectedGray_upvr (readonly)
		[3]: ButtonTextSize_upvr (readonly)
		[4]: MainWindow_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: ScrollingTextBox_upvr (readonly)
		[7]: MainWindowHeader_upvr (readonly)
		[8]: ScriptProfilerService_upvr (readonly)
	]]
	local module = {
		Size = UDim2.new(0.9, 0, 0, 30);
		Position = UDim2.new(0.05, 0, 0, 37.5);
		BackgroundTransparency = 0;
	}
	local var18 = UnselectedGray_upvr
	module.BackgroundColor3 = var18
	if arg4 then
		var18 = ""
	else
		var18 = "Complete a profiling session to export data"
	end
	module.Text = var18
	var18 = ButtonTextSize_upvr
	module.TextSize = var18
	var18 = MainWindow_upvr
	module.Font = var18
	var18 = Constants_upvr.Color.Text
	module.TextColor3 = var18
	if arg4 then
		var18 = {}
		local tbl_3 = {}
		tbl_3.Text = arg3
		tbl_3.TextSize = ButtonTextSize_upvr
		tbl_3.Font = MainWindow_upvr
		tbl_3.Size = UDim2.new(0.8, 0, 1, 0)
		tbl_3.Position = UDim2.new(0, 0, 0, 0)
		tbl_3.ShowNativeInput = true
		tbl_3.TextColor3 = Constants_upvr.Color.Text
		tbl_3.TextXAlignment = Enum.TextXAlignment.Left
		tbl_3.ClearTextOnFocus = false
		tbl_3.PlaceholderText = "Filename for export"
		function tbl_3.TextBoxFocusLost(arg1_2, arg2_2, arg3_2) -- Line 86
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: arg1 (readonly)
			]]
			if arg2 then
				arg1:setState({
					exportFilenameClient = arg1_2.text;
				})
			else
				arg1:setState({
					exportFilenameServer = arg1_2.text;
				})
			end
		end
		var18.InputField = Roact_upvr.createElement(ScrollingTextBox_upvr, tbl_3)
		var18.ExportButton = Roact_upvr.createElement("TextButton", {
			Size = UDim2.new(0.2, 0, 1, 0);
			Position = UDim2.new(0.8, 0, 0, 0);
			Text = "Export";
			Font = MainWindowHeader_upvr;
			TextSize = ButtonTextSize_upvr;
			TextColor3 = Constants_upvr.Color.Text;
			TextXAlignment = Enum.TextXAlignment.Center;
			TextYAlignment = Enum.TextYAlignment.Center;
			BackgroundColor3 = UnselectedGray_upvr;
			[Roact_upvr.Event.Activated] = function() -- Line 110
				--[[ Upvalues[5]:
					[1]: ScriptProfilerService_upvr (copied, readonly)
					[2]: arg4 (readonly)
					[3]: arg3 (readonly)
					[4]: arg2 (readonly)
					[5]: arg1 (readonly)
				]]
				local any_SaveScriptProfilingData_result1 = ScriptProfilerService_upvr:SaveScriptProfilingData(arg4, arg3)
				if arg2 then
					arg1:setState({
						clientSavePath = any_SaveScriptProfilingData_result1;
					})
				else
					arg1:setState({
						serverSavePath = any_SaveScriptProfilingData_result1;
					})
				end
			end;
		})
	else
		var18 = {}
	end
	return Roact_upvr.createElement("TextLabel", module, var18)
end
local ButtonWidth_upvr = Constants_upvr.MicroProfilerFormatting.ButtonWidth
function any_extend_result1.renderExportSection(arg1, arg2, arg3) -- Line 129
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: ButtonWidth_upvr (readonly)
		[3]: MainWindowHeader_upvr (readonly)
		[4]: ButtonTextSize_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: UnselectedGray_upvr (readonly)
	]]
	local var28
	local var29
	local var30
	if arg2 then
		var28 = arg1.state.exportFilenameClient
		var29 = arg1.props.client.serializedData
		var30 = arg1.state.clientSavePath
	else
		var28 = arg1.state.exportFilenameServer
		var29 = arg1.props.server.serializedData
		var30 = arg1.state.serverSavePath
	end
	local module_2 = {}
	local tbl = {
		Size = UDim2.new(0, ButtonWidth_upvr, 0, 30);
		Position = UDim2.new(0.1, 0, 0, 0);
	}
	tbl.Text = arg3
	tbl.Font = MainWindowHeader_upvr
	tbl.TextSize = ButtonTextSize_upvr
	tbl.TextColor3 = Constants_upvr.Color.Text
	tbl.TextXAlignment = Enum.TextXAlignment.Left
	tbl.TextYAlignment = Enum.TextYAlignment.Center
	tbl.BackgroundColor3 = UnselectedGray_upvr
	tbl.BackgroundTransparency = 1
	module_2.Label = Roact_upvr.createElement("TextLabel", tbl)
	module_2.HorizontalLine = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 1);
		Position = UDim2.new(0, 0, 0, 30);
	})
	local any_renderExportInputAndButton_result1 = arg1:renderExportInputAndButton(arg2, var28, var29)
	module_2.Export = any_renderExportInputAndButton_result1
	if not var30 then
		any_renderExportInputAndButton_result1 = nil
	else
		any_renderExportInputAndButton_result1 = Roact_upvr.createElement
		any_renderExportInputAndButton_result1 = any_renderExportInputAndButton_result1("TextBox", {
			Size = UDim2.new(0.95, 0, 0, 30);
			Position = UDim2.new(0.05, 0, 0, 75);
			Text = "Saved to "..var30;
			Font = MainWindowHeader_upvr;
			TextSize = ButtonTextSize_upvr;
			TextColor3 = Constants_upvr.Color.Text;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Center;
			BackgroundColor3 = UnselectedGray_upvr;
			BackgroundTransparency = 1;
			TextEditable = false;
			ClearTextOnFocus = false;
		})
	end
	module_2.SavedPath = any_renderExportInputAndButton_result1
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 90);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, module_2)
end
local MainRowPadding_upvr = Constants_upvr.GeneralFormatting.MainRowPadding
function any_extend_result1.render(arg1) -- Line 188
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: MainRowPadding_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.size;
		BackgroundColor3 = Constants_upvr.Color.BaseGray;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, MainRowPadding_upvr * 2);
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		Row = arg1:renderExportSection(true, "Client");
		HorizontalLine = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, MainRowPadding_upvr);
			BackgroundTransparency = 1;
			LayoutOrder = 3;
		});
		Row2 = arg1:renderExportSection(false, "Server");
	})
end
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 212, Named "mapStateToProps"
	return {
		client = arg1.ScriptProfiler.client;
		server = arg1.ScriptProfiler.server;
	}
end, nil)(any_extend_result1)