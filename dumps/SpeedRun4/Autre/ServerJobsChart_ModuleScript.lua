-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:49
-- Luau version 6, Types version 3
-- Time taken: 0.015735 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local LineWidth_upvr = Constants_upvr.GeneralFormatting.LineWidth
local EntryFrameHeight_upvr = Constants_upvr.ServerJobsFormatting.EntryFrameHeight
local HeaderFrameHeight_upvr = Constants_upvr.ServerJobsFormatting.HeaderFrameHeight
local CellPadding_upvr = Constants_upvr.ServerJobsFormatting.CellPadding
local tbl_4_upvr = {}
local function var19(arg1) -- Line 33
	if not arg1 or not string.format("%.4fms", arg1) then
	end
	return ""
end
tbl_4_upvr[1] = function(arg1) -- Line 27
	if not arg1 or not string.format("%.4f%%", arg1) then
	end
	return ""
end
tbl_4_upvr[2] = function(arg1) -- Line 30
	if not arg1 or not string.format("%.4f/s", arg1) then
	end
	return ""
end
tbl_4_upvr[3] = var19
local var20 = 0
var19 = {}
local var21_upvr = var19
local tbl_2_upvr = {}
local tbl_3 = {}
local var24 = EntryFrameHeight_upvr - LineWidth_upvr
for _, v in ipairs(Constants_upvr.ServerJobsFormatting.ValueCellWidth) do
	table.insert(var21_upvr, UDim2.new(var20, CellPadding_upvr, 0, 0))
	table.insert(tbl_2_upvr, UDim2.new(v, -CellPadding_upvr, 0, HeaderFrameHeight_upvr))
	table.insert(tbl_3, UDim2.new(v, -CellPadding_upvr, 0, var24))
	var20 += v
end
for i_2, v_2 in ipairs(var21_upvr) do
	({})[i_2] = UDim2.new(v_2.X.Scale, v_2.X.Offset - CellPadding_upvr, v_2.Y.Scale, v_2.Y.Offset)
	local var32_upvr
end
local any_extend_result1 = Roact_upvr.Component:extend("ServerJobsChart")
local function getX_upvr(arg1) -- Line 63, Named "getX"
	return arg1.time
end
local function getDutyCycle_upvr(arg1) -- Line 67, Named "getDutyCycle"
	return arg1.data[1]
end
local function getStepsPerSec_upvr(arg1) -- Line 71, Named "getStepsPerSec"
	return arg1.data[2]
end
local function getStepTime_upvr(arg1) -- Line 75, Named "getStepTime"
	return arg1.data[3]
end
function any_extend_result1.init(arg1, arg2) -- Line 79
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	function arg1.getOnButtonPress(arg1_2) -- Line 82
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return function(arg1_3, arg2_2) -- Line 83
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			local tbl_5 = {}
			local var37 = false
			if arg1.state.expandIndex ~= arg1_2 then
				var37 = arg1_2
			end
			tbl_5.expandIndex = var37
			arg1:setState(tbl_5)
		end
	end
	function arg1.onSortChanged(arg1_4) -- Line 90
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		if arg1_4 == arg2.ServerJobsData:getSortType() then
			arg1:setState({
				reverseSort = not arg1.state.reverseSort;
			})
		else
			arg2.ServerJobsData:setSortType(arg1_4)
			arg1:setState({
				reverseSort = false;
			})
		end
	end
	function arg1.onCanvasPosChanged() -- Line 104
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local CanvasPosition = arg1.scrollingRef.current.CanvasPosition
		if arg1.state.canvasPos ~= CanvasPosition then
			arg1:setState({
				canvasPos = CanvasPosition;
			})
		end
	end
	arg1.scrollingRef = Roact_upvr.createRef()
	arg1.state = {
		serverJobsList = arg2.ServerJobsData:getCurrentData();
		reverseSort = false;
		expandIndex = nil;
	}
end
function any_extend_result1.willUpdate(arg1) -- Line 122
	if arg1.canvasPosConnector then
		arg1.canvasPosConnector:Disconnect()
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 128
	local function INLINED() -- Internal function, doesn't exist in bytecode
		local absScrollSize = arg1.state.absScrollSize
		local AbsoluteSize = arg1.scrollingRef.current.AbsoluteSize
		arg1.canvasPosConnector = arg1.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition"):Connect(arg1.onCanvasPosChanged)
		return AbsoluteSize.X ~= absScrollSize.X
	end
	if arg1.scrollingRef.current and (INLINED() or AbsoluteSize.Y ~= absScrollSize.Y) then
		arg1:setState({
			absScrollSize = AbsoluteSize;
		})
	end
end
function any_extend_result1.didMount(arg1) -- Line 143
	arg1.statsConnector = arg1.props.ServerJobsData:Signal():Connect(function(arg1_5) -- Line 144
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.serverJobsList = arg1_5
		arg1:setState(tbl)
	end)
	if arg1.scrollingRef.current then
		arg1.canvasPosConnector = arg1.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition"):Connect(arg1.onCanvasPosChanged)
		arg1:setState({
			absScrollSize = arg1.scrollingRef.current.AbsoluteSize;
			canvasPos = arg1.scrollingRef.current.CanvasPosition;
		})
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 161
	arg1.statsConnector:Disconnect()
	arg1.statsConnector = nil
	if arg1.canvasPosConnector then
		arg1.canvasPosConnector:Disconnect()
		arg1.canvasPosConnector = nil
	end
end
local MinFrameWidth_upvr = Constants_upvr.ServerJobsFormatting.MinFrameWidth
local LineGraphHeight_upvr = Constants_upvr.GeneralFormatting.LineGraphHeight
local CellLabel_upvr = require(Components.CellLabel)
local ChartHeaderNames_upvr = Constants_upvr.ServerJobsFormatting.ChartHeaderNames
local LineColor_upvr = Constants_upvr.GeneralFormatting.LineColor
local BannerButton_upvr = require(Components.BannerButton)
local LineGraph_upvr = require(Components.LineGraph)
local convertTimeStamp_upvr = require(script.Parent.Parent.Parent.Util.convertTimeStamp)
local NoResultSearchStr_upvr = Constants_upvr.GeneralFormatting.NoResultSearchStr
local HeaderButton_upvr = require(Components.HeaderButton)
function any_extend_result1.render(arg1) -- Line 170
	--[[ Upvalues[24]:
		[1]: MinFrameWidth_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: EntryFrameHeight_upvr (readonly)
		[5]: LineGraphHeight_upvr (readonly)
		[6]: CellPadding_upvr (readonly)
		[7]: CellLabel_upvr (readonly)
		[8]: tbl_2_upvr (readonly)
		[9]: var21_upvr (readonly)
		[10]: ChartHeaderNames_upvr (readonly)
		[11]: tbl_4_upvr (readonly)
		[12]: var32_upvr (readonly)
		[13]: LineWidth_upvr (readonly)
		[14]: LineColor_upvr (readonly)
		[15]: BannerButton_upvr (readonly)
		[16]: LineGraph_upvr (readonly)
		[17]: getX_upvr (readonly)
		[18]: getDutyCycle_upvr (readonly)
		[19]: convertTimeStamp_upvr (readonly)
		[20]: getStepsPerSec_upvr (readonly)
		[21]: getStepTime_upvr (readonly)
		[22]: NoResultSearchStr_upvr (readonly)
		[23]: HeaderButton_upvr (readonly)
		[24]: HeaderFrameHeight_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_7 = {}
	local searchTerm = arg1.props.searchTerm
	local serverJobsList = arg1.state.serverJobsList
	local absScrollSize_2 = arg1.state.absScrollSize
	local var93
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var93 = math.max(absScrollSize_2.X, MinFrameWidth_upvr)
		return var93
	end
	if not absScrollSize_2 or not INLINED_2() then
		var93 = MinFrameWidth_upvr
	end
	local len = #serverJobsList
	if len == 0 then
		return Roact_upvr.createElement("TextLabel", {
			Size = arg1.props.size;
			Position = UDim2.new(0, 0, 0, 0);
			Text = "Awaiting Server Jobs Information";
			TextColor3 = Constants_upvr.Color.Text;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.layoutOrder;
		})
	end
	local var96 = 0
	local var97
	if absScrollSize_2 then
		var97 = -1
		for i_3, v_3 in pairs(serverJobsList) do
			local name = v_3.name
			local var103
			if not searchTerm or string.find(name:lower(), searchTerm:lower()) ~= nil then
				local dataStats = v_3.dataStats
				if arg1.state.expandIndex ~= name then
					local _ = false
					-- KONSTANTWARNING: Skipped task `defvar` above
				else
				end
				if not true or not (EntryFrameHeight_upvr + 3 * LineGraphHeight_upvr / 2 + CellPadding_upvr * 4) then
					local var106 = EntryFrameHeight_upvr
				end
				if arg1.state.canvasPos.Y <= var96 + var106 then
					local var107
					if 0 < var107 then
						local function INLINED_3() -- Internal function, doesn't exist in bytecode
							var107 = len - i_3
							return var107
						end
						if not arg1.state.reverseSort or not INLINED_3() then
							var107 = i_3
						end
						for i_4, v_4 in pairs(dataStats.dataSet:back().data) do
							({
								[name] = Roact_upvr.createElement(CellLabel_upvr, {
									text = name;
									size = tbl_2_upvr[1];
									pos = var21_upvr[1];
								});
							})[ChartHeaderNames_upvr[i_4]] = Roact_upvr.createElement(CellLabel_upvr, {
								text = tbl_4_upvr[i_4](v_4);
								size = tbl_2_upvr[i_4 + 1];
								pos = var21_upvr[i_4 + 1];
							})
							local var114
						end
						for i_5 = 2, #var32_upvr do
							var114[string.format("VerticalLine_%d", i_5)] = Roact_upvr.createElement("Frame", {
								Size = UDim2.new(0, LineWidth_upvr, 1, 0);
								Position = var32_upvr[i_5];
								BackgroundColor3 = LineColor_upvr;
								BorderSizePixel = 0;
							})
						end
						var114.lowerHorizontalLine = Roact_upvr.createElement("Frame", {
							Size = UDim2.new(1, 0, 0, LineWidth_upvr);
							Position = UDim2.new(0, 0, 1, 0);
							BackgroundColor3 = LineColor_upvr;
							BorderSizePixel = 0;
						})
						local tbl_9 = {}
						local tbl_8 = {
							size = UDim2.new(1, 0, 0, EntryFrameHeight_upvr);
							pos = UDim2.new();
						}
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						tbl_8.isExpanded = true
						tbl_8.onButtonPress = arg1.getOnButtonPress(name)
						tbl_9.Button = Roact_upvr.createElement(BannerButton_upvr, tbl_8, var114)
						local var120 = true
						if var120 then
							var120 = Roact_upvr.createElement
							var120 = var120(LineGraph_upvr, {
								pos = UDim2.new(0, 0, 0, EntryFrameHeight_upvr + CellPadding_upvr);
								size = UDim2.new(0, var93, 0, LineGraphHeight_upvr / 2);
								graphData = dataStats.dataSet;
								maxY = dataStats.max[1];
								minY = dataStats.min[1];
								getX = getX_upvr;
								getY = getDutyCycle_upvr;
								stringFormatX = convertTimeStamp_upvr;
								stringFormatY = tbl_4_upvr[1];
								axisLabelX = "Timestamp";
								axisLabelY = name..' '..ChartHeaderNames_upvr[2];
							})
						end
						tbl_9.DutyCycleGraph = var120
						var120 = true
						local var122 = var120
						if var122 then
							var122 = Roact_upvr.createElement
							var122 = var122(LineGraph_upvr, {
								pos = UDim2.new(0, 0, 0, EntryFrameHeight_upvr + LineGraphHeight_upvr / 2 + CellPadding_upvr * 2);
								size = UDim2.new(0, var93, 0, LineGraphHeight_upvr / 2);
								graphData = dataStats.dataSet;
								maxY = dataStats.max[2];
								minY = dataStats.min[2];
								getX = getX_upvr;
								getY = getStepsPerSec_upvr;
								stringFormatX = convertTimeStamp_upvr;
								stringFormatY = tbl_4_upvr[2];
								axisLabelX = "Timestamp";
								axisLabelY = name..' '..ChartHeaderNames_upvr[3];
							})
						end
						tbl_9.StepsPerSecGraph = var122
						var122 = true
						local var124 = var122
						if var124 then
							var124 = Roact_upvr.createElement
							var124 = var124(LineGraph_upvr, {
								pos = UDim2.new(0, 0, 0, EntryFrameHeight_upvr + LineGraphHeight_upvr + CellPadding_upvr * 3);
								size = UDim2.new(0, var93, 0, LineGraphHeight_upvr / 2);
								graphData = dataStats.dataSet;
								maxY = dataStats.max[3];
								minY = dataStats.min[3];
								getX = getX_upvr;
								getY = getStepTime_upvr;
								stringFormatX = convertTimeStamp_upvr;
								stringFormatY = tbl_4_upvr[3];
								axisLabelX = "Timestamp";
								axisLabelY = name..' '..ChartHeaderNames_upvr[4];
							})
						end
						tbl_9.StepTimeGraph = var124
						tbl_7[name] = Roact_upvr.createElement("Frame", {
							Size = UDim2.new(0, var93, 0, var106);
							BackgroundTransparency = 1;
							LayoutOrder = var107 + 1;
						}, tbl_9)
					end
					if var97 < 0 then
						var97 = var96
					else
					end
				end
			end
		end
		if var97 == -1 then
			i_3 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			i_3.Size = arg1.props.size
			i_3.Text = string.format(NoResultSearchStr_upvr, searchTerm)
			v_3 = Constants_upvr.Color.Text
			i_3.TextColor3 = v_3
			v_3 = 1
			i_3.BackgroundTransparency = v_3
			tbl_7.emptyResult = Roact_upvr.createElement("TextLabel", i_3)
		else
			local tbl_6 = {}
			i_3 = UDim2.new
			v_3 = 1
			i_3 = i_3(v_3, 0, 0, var97)
			tbl_6.Size = i_3
			i_3 = 1
			tbl_6.BackgroundTransparency = i_3
			i_3 = 1
			tbl_6.LayoutOrder = i_3
			tbl_7.WindowingPadding = Roact_upvr.createElement("Frame", tbl_6)
		end
	end
	for i_6 = 1, #ChartHeaderNames_upvr do
		({})[ChartHeaderNames_upvr[i_6]] = Roact_upvr.createElement(HeaderButton_upvr, {
			text = ChartHeaderNames_upvr[i_6];
			size = tbl_2_upvr[i_6];
			pos = var21_upvr[i_6];
			sortfunction = arg1.onSortChanged;
		})
		local var129
	end
	var129.upperHorizontalLine = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth_upvr);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	var129.lowerHorizontalLine = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth_upvr);
		Position = UDim2.new(0, 0, 1, -LineWidth_upvr);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	for i_7 = 2, #var32_upvr do
		var129[string.format("VerticalLine_%d", i_7)] = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, LineWidth_upvr, 1, 0);
			Position = var32_upvr[i_7];
			BackgroundColor3 = LineColor_upvr;
			BorderSizePixel = 0;
		})
		local var133
	end
	tbl_7.UIListLayout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	local module = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.Size = arg1.props.size
	module.BackgroundTransparency = 1
	module.ClipsDescendants = true
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.LayoutOrder = arg1.props.layoutOrder
	return Roact_upvr.createElement("Frame", module, {
		Header = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, var93, 0, HeaderFrameHeight_upvr);
			BackgroundTransparency = 1;
		}, var133);
		MainChart = Roact_upvr.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, -HeaderFrameHeight_upvr);
			Position = UDim2.new(0, 0, 0, HeaderFrameHeight_upvr);
			BackgroundTransparency = 1;
			VerticalScrollBarInset = 1;
			ScrollBarThickness = 5;
			CanvasSize = UDim2.new(0, var93, 0, var96 + var106);
			[Roact_upvr.Ref] = arg1.scrollingRef;
		}, tbl_7);
	})
end
return require(Components.DataConsumer)(any_extend_result1, "ServerJobsData")