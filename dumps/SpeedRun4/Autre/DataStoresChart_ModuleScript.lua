-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:04
-- Luau version 6, Types version 3
-- Time taken: 0.011044 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.Component:extend("DataStoresChart")
local function getX_upvr(arg1) -- Line 30, Named "getX"
	return arg1.time
end
local function getY_upvr(arg1) -- Line 34, Named "getY"
	return arg1.value
end
local function stringFormatY_upvr(arg1) -- Line 38, Named "stringFormatY"
	return math.ceil(arg1)
end
function any_extend_result1.init(arg1, arg2) -- Line 42
	local any_getCurrentData_result1, any_getCurrentData_result2 = arg2.DataStoresData:getCurrentData()
	function arg1.getOnButtonPress(arg1_2) -- Line 45
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return function(arg1_3, arg2_2) -- Line 46
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			local tbl_3 = {}
			local var10 = false
			if arg1.state.expandedEntry ~= arg1_2 then
				var10 = arg1_2
			end
			tbl_3.expandedEntry = var10
			arg1:setState(tbl_3)
		end
	end
	arg1.state = {
		dataStoresData = any_getCurrentData_result1;
		dataStoresDataCount = any_getCurrentData_result2;
		expandedEntry = nil;
	}
end
function any_extend_result1.didMount(arg1) -- Line 60
	arg1.statsConnector = arg1.props.DataStoresData:Signal():Connect(function(arg1_4, arg2) -- Line 61
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.dataStoresData = arg1_4
		tbl.dataStoresDataCount = arg2
		arg1:setState(tbl)
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 69
	arg1.statsConnector:Disconnect()
	arg1.statsConnector = nil
end
local HeaderFrameHeight_upvr = Constants_upvr.DataStoresFormatting.HeaderFrameHeight
local EntryFrameHeight_upvr = Constants_upvr.DataStoresFormatting.EntryFrameHeight
local LineGraphHeight_upvr = Constants_upvr.GeneralFormatting.LineGraphHeight
local BannerButton_upvr = require(Components.BannerButton)
local CellLabel_upvr = require(Components.CellLabel)
local ValueCellWidth_upvr = Constants_upvr.DataStoresFormatting.ValueCellWidth
local CellPadding_upvr = Constants_upvr.DataStoresFormatting.CellPadding
local ExpandArrowPadding_upvr = Constants_upvr.DataStoresFormatting.ExpandArrowPadding
local LineWidth_upvr = Constants_upvr.GeneralFormatting.LineWidth
local LineColor_upvr = Constants_upvr.GeneralFormatting.LineColor
local LineGraph_upvr = require(Components.LineGraph)
local convertTimeStamp_upvr = require(script.Parent.Parent.Parent.Util.convertTimeStamp)
local NoResultSearchStr_upvr = Constants_upvr.GeneralFormatting.NoResultSearchStr
local ChartHeaderNames_upvr = Constants_upvr.DataStoresFormatting.ChartHeaderNames
function any_extend_result1.render(arg1) -- Line 74
	--[[ Upvalues[19]:
		[1]: Roact_upvr (readonly)
		[2]: HeaderFrameHeight_upvr (readonly)
		[3]: EntryFrameHeight_upvr (readonly)
		[4]: LineGraphHeight_upvr (readonly)
		[5]: BannerButton_upvr (readonly)
		[6]: CellLabel_upvr (readonly)
		[7]: ValueCellWidth_upvr (readonly)
		[8]: CellPadding_upvr (readonly)
		[9]: ExpandArrowPadding_upvr (readonly)
		[10]: LineWidth_upvr (readonly)
		[11]: LineColor_upvr (readonly)
		[12]: LineGraph_upvr (readonly)
		[13]: getX_upvr (readonly)
		[14]: getY_upvr (readonly)
		[15]: convertTimeStamp_upvr (readonly)
		[16]: stringFormatY_upvr (readonly)
		[17]: Constants_upvr (readonly)
		[18]: NoResultSearchStr_upvr (readonly)
		[19]: ChartHeaderNames_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_4 = {}
	local searchTerm = arg1.props.searchTerm
	local size = arg1.props.size
	tbl_4.UIListLayout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	local var40 = HeaderFrameHeight_upvr
	local dataStoresData = arg1.state.dataStoresData
	local var42 = 0
	local var43 = 1
	if dataStoresData then
		for i, v in pairs(dataStoresData) do
			var42 += 1
			local var47
			if not searchTerm or string.find(i:lower(), searchTerm:lower()) ~= nil then
				var43 += 1
				if arg1.state.expandedEntry ~= i then
					local _ = false
					-- KONSTANTWARNING: Skipped task `defvar` above
				else
				end
				if not true or not (EntryFrameHeight_upvr + LineGraphHeight_upvr) then
				end
				local tbl_2 = {}
				local tbl_5 = {
					size = UDim2.new(1, 0, 0, EntryFrameHeight_upvr);
					pos = UDim2.new();
				}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_5.isExpanded = true
				tbl_5.onButtonPress = arg1.getOnButtonPress(i)
				tbl_2.DataButton = Roact_upvr.createElement(BannerButton_upvr, tbl_5, {
					[i] = Roact_upvr.createElement(CellLabel_upvr, {
						text = i;
						size = UDim2.new(1 - ValueCellWidth_upvr, -CellPadding_upvr - ExpandArrowPadding_upvr, 1, 0);
						pos = UDim2.new(0, CellPadding_upvr + ExpandArrowPadding_upvr, 0, 0);
					});
					Data = Roact_upvr.createElement(CellLabel_upvr, {
						text = v.dataSet:back().value;
						size = UDim2.new(ValueCellWidth_upvr, -CellPadding_upvr, 1, 0);
						pos = UDim2.new(1 - ValueCellWidth_upvr, CellPadding_upvr, 0, 0);
					});
					VerticalLine = Roact_upvr.createElement("Frame", {
						Size = UDim2.new(0, LineWidth_upvr, 0, EntryFrameHeight_upvr);
						Position = UDim2.new(1 - ValueCellWidth_upvr, 0, 0, 0);
						BackgroundColor3 = LineColor_upvr;
						BorderSizePixel = 0;
					});
					lowerHorizontalLine = Roact_upvr.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, LineWidth_upvr);
						Position = UDim2.new(0, 0, 1, 0);
						BackgroundColor3 = LineColor_upvr;
						BorderSizePixel = 0;
					});
				})
				local var57 = true
				if var57 then
					var57 = Roact_upvr.createElement
					var57 = var57(LineGraph_upvr, {
						pos = UDim2.new(0, 0, 0, EntryFrameHeight_upvr);
						size = UDim2.new(1, 0, 1, -EntryFrameHeight_upvr);
						graphData = v.dataSet;
						maxY = v.max;
						minY = v.min;
						getX = getX_upvr;
						getY = getY_upvr;
						axisLabelX = "Timestamp";
						axisLabelY = i;
						stringFormatX = convertTimeStamp_upvr;
						stringFormatY = stringFormatY_upvr;
					})
				end
				tbl_2.Graph = var57
				tbl_4[i] = Roact_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, EntryFrameHeight_upvr);
					BackgroundTransparency = 1;
					LayoutOrder = var43;
				}, tbl_2)
				var40 += EntryFrameHeight_upvr
			end
		end
	end
	if var43 == 1 then
		if var42 == 0 then
			local module = {
				Size = size;
			}
			i = "Initialize DataStoresService to view DataStore Budget."
			module.Text = i
			v = Constants_upvr.Color
			i = v.Text
			module.TextColor3 = i
			i = 1
			module.BackgroundTransparency = i
			module.LayoutOrder = arg1.props.layoutOrder
			return Roact_upvr.createElement("TextLabel", module)
		end
		tbl_4.emptyResult = Roact_upvr.createElement("TextLabel", {
			Size = size;
			Text = string.format(NoResultSearchStr_upvr, searchTerm);
			TextColor3 = Constants_upvr.Color.Text;
			BackgroundTransparency = 1;
		})
	end
	local module_2 = {
		Size = size;
		BackgroundTransparency = 1;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_2.LayoutOrder = arg1.props.layoutOrder
	return Roact_upvr.createElement("Frame", module_2, {
		Header = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, HeaderFrameHeight_upvr);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		}, {
			[ChartHeaderNames_upvr[1]] = Roact_upvr.createElement(CellLabel_upvr, {
				text = ChartHeaderNames_upvr[1];
				size = UDim2.new(1 - ValueCellWidth_upvr, -CellPadding_upvr - ExpandArrowPadding_upvr, 1, 0);
				pos = UDim2.new(0, CellPadding_upvr + ExpandArrowPadding_upvr, 0, 0);
			});
			[ChartHeaderNames_upvr[2]] = Roact_upvr.createElement(CellLabel_upvr, {
				text = ChartHeaderNames_upvr[2];
				size = UDim2.new(ValueCellWidth_upvr, -CellPadding_upvr, 1, 0);
				pos = UDim2.new(1 - ValueCellWidth_upvr, CellPadding_upvr, 0, 0);
			});
			upperHorizontalLine = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LineWidth_upvr);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
			vertical = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, LineWidth_upvr, 1, 0);
				Position = UDim2.new(1 - ValueCellWidth_upvr, 0, 0, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
			lowerHorizontalLine = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LineWidth_upvr);
				Position = UDim2.new(0, 0, 1, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
		});
		mainFrame = Roact_upvr.createElement("ScrollingFrame", {
			Position = UDim2.new(0, 0, 0, HeaderFrameHeight_upvr);
			Size = UDim2.new(1, 0, 1, -HeaderFrameHeight_upvr);
			ScrollBarThickness = 5;
			CanvasSize = UDim2.new(1, 0, 0, var40);
			BackgroundTransparency = 1;
		}, tbl_4);
	})
end
return require(Components.DataConsumer)(any_extend_result1, "DataStoresData")