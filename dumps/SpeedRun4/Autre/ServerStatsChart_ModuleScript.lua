-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:51
-- Luau version 6, Types version 3
-- Time taken: 0.012508 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.Component:extend("ServerStats")
local function formatData_upvr(arg1) -- Line 29, Named "formatData"
	return string.format("%.3f", arg1)
end
local function getX_upvr(arg1) -- Line 32, Named "getX"
	return arg1.time
end
local function getY_upvr(arg1) -- Line 36, Named "getY"
	return arg1.value
end
function any_extend_result1.init(arg1) -- Line 40
	function arg1.getOnButtonPress(arg1_2) -- Line 43
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return function(arg1_3, arg2) -- Line 44
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			local tbl_5 = {}
			local var8 = false
			if arg1.state.expandedEntry ~= arg1_2 then
				var8 = arg1_2
			end
			tbl_5.expandedEntry = var8
			arg1:setState(tbl_5)
		end
	end
	arg1.state = {
		serverStatsData = arg1.props.ServerStatsData:getCurrentData();
	}
end
function any_extend_result1.didMount(arg1) -- Line 56
	arg1.statsConnector = arg1.props.ServerStatsData:Signal():Connect(function(arg1_4) -- Line 57
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_3 = {}
		tbl_3.serverStatsData = arg1_4
		arg1:setState(tbl_3)
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 64
	arg1.statsConnector:Disconnect()
	arg1.statsConnector = nil
end
local EntryFrameHeight_upvr = Constants_upvr.ServerStatsFormatting.EntryFrameHeight
local LineGraphHeight_upvr = Constants_upvr.GeneralFormatting.LineGraphHeight
local BannerButton_upvr = require(Components.BannerButton)
local CellLabel_upvr = require(Components.CellLabel)
local ValueCellWidth_upvr = Constants_upvr.ServerStatsFormatting.ValueCellWidth
local CellPadding_upvr = Constants_upvr.ServerStatsFormatting.CellPadding
local ExpandArrowPadding_upvr = Constants_upvr.ServerStatsFormatting.ExpandArrowPadding
local LineWidth_upvr = Constants_upvr.GeneralFormatting.LineWidth
local LineColor_upvr = Constants_upvr.GeneralFormatting.LineColor
local LineGraph_upvr = require(Components.LineGraph)
local convertTimeStamp_upvr = require(script.Parent.Parent.Parent.Util.convertTimeStamp)
local NoResultSearchStr_upvr = Constants_upvr.GeneralFormatting.NoResultSearchStr
local HeaderFrameHeight_upvr = Constants_upvr.ServerStatsFormatting.HeaderFrameHeight
local ChartHeaderNames_upvr = Constants_upvr.ServerStatsFormatting.ChartHeaderNames
function any_extend_result1.render(arg1) -- Line 69
	--[[ Upvalues[19]:
		[1]: EntryFrameHeight_upvr (readonly)
		[2]: LineGraphHeight_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: BannerButton_upvr (readonly)
		[5]: CellLabel_upvr (readonly)
		[6]: ValueCellWidth_upvr (readonly)
		[7]: CellPadding_upvr (readonly)
		[8]: ExpandArrowPadding_upvr (readonly)
		[9]: LineWidth_upvr (readonly)
		[10]: LineColor_upvr (readonly)
		[11]: LineGraph_upvr (readonly)
		[12]: getX_upvr (readonly)
		[13]: getY_upvr (readonly)
		[14]: convertTimeStamp_upvr (readonly)
		[15]: formatData_upvr (readonly)
		[16]: Constants_upvr (readonly)
		[17]: NoResultSearchStr_upvr (readonly)
		[18]: HeaderFrameHeight_upvr (readonly)
		[19]: ChartHeaderNames_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {}
	local searchTerm = arg1.props.searchTerm
	local size = arg1.props.size
	local serverStatsData = arg1.state.serverStatsData
	local var38 = 1
	local var39 = 0
	local var40 = 0
	if serverStatsData then
		for i, v in pairs(serverStatsData) do
			var39 += 1
			local var44
			if not searchTerm or string.find(i:lower(), searchTerm:lower()) ~= nil then
				var38 += 1
				if arg1.state.expandedEntry ~= i then
					local _ = false
					-- KONSTANTWARNING: Skipped task `defvar` above
				else
				end
				if not true or not (EntryFrameHeight_upvr + LineGraphHeight_upvr) then
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not true or not (var40 + 1) then
				end
				var40 = var40
				local tbl_4 = {}
				local tbl_2 = {
					size = UDim2.new(1, 0, 0, EntryFrameHeight_upvr);
					pos = UDim2.new();
				}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_2.isExpanded = true
				tbl_2.onButtonPress = arg1.getOnButtonPress(i)
				tbl_4.DataButton = Roact_upvr.createElement(BannerButton_upvr, tbl_2, {
					[i] = Roact_upvr.createElement(CellLabel_upvr, {
						text = i;
						size = UDim2.new(1 - ValueCellWidth_upvr, -CellPadding_upvr - ExpandArrowPadding_upvr, 1, 0);
						pos = UDim2.new(0, CellPadding_upvr + ExpandArrowPadding_upvr, 0, 0);
					});
					Data = Roact_upvr.createElement(CellLabel_upvr, {
						text = string.format("%.3f", v.dataSet:back().value);
						size = UDim2.new(ValueCellWidth_upvr, -CellPadding_upvr, 1, 0);
						pos = UDim2.new(1 - ValueCellWidth_upvr, CellPadding_upvr, 0, 0);
					});
					VerticalLine = Roact_upvr.createElement("Frame", {
						Size = UDim2.new(0, LineWidth_upvr, 1, 0);
						Position = UDim2.new(1 - ValueCellWidth_upvr, 0, 0, 0);
						BackgroundColor3 = LineColor_upvr;
						BorderSizePixel = 0;
					});
					HorizontalAlignment = Roact_upvr.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, LineWidth_upvr);
						Position = UDim2.new(0, 0, 1, 0);
						BackgroundColor3 = LineColor_upvr;
						BorderSizePixel = 0;
					});
				})
				local var54 = true
				if var54 then
					var54 = Roact_upvr.createElement
					var54 = var54(LineGraph_upvr, {
						pos = UDim2.new(0, 0, 0, EntryFrameHeight_upvr);
						size = UDim2.new(1, 0, 1, -EntryFrameHeight_upvr);
						graphData = v.dataSet;
						minY = v.min;
						maxY = v.max;
						getX = getX_upvr;
						getY = getY_upvr;
						axisLabelX = "Timestamp";
						axisLabelY = i;
						stringFormatX = convertTimeStamp_upvr;
						stringFormatY = formatData_upvr;
					})
				end
				tbl_4.Graph = var54
				tbl[i] = Roact_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, EntryFrameHeight_upvr);
					BackgroundTransparency = 1;
					LayoutOrder = var38;
				}, tbl_4)
			end
		end
	end
	if var38 == 1 then
		if var39 == 0 then
			local module_2 = {
				Size = size;
			}
			i = UDim2.new
			v = 0
			i = i(v, 0, 0, 0)
			module_2.Position = i
			i = "Awaiting Server Stats"
			module_2.Text = i
			v = Constants_upvr.Color
			i = v.Text
			module_2.TextColor3 = i
			i = 1
			module_2.BackgroundTransparency = i
			module_2.LayoutOrder = arg1.props.layoutOrder
			return Roact_upvr.createElement("TextLabel", module_2)
		end
		tbl.emptyResult = Roact_upvr.createElement("TextLabel", {
			Size = size;
			Text = string.format(NoResultSearchStr_upvr, searchTerm);
			TextColor3 = Constants_upvr.Color.Text;
			BackgroundTransparency = 1;
		})
	end
	tbl.UIListLayout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	local module = {
		Size = size;
		BackgroundTransparency = 1;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.LayoutOrder = arg1.props.layoutOrder
	return Roact_upvr.createElement("Frame", module, {
		Header = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, HeaderFrameHeight_upvr);
			BackgroundTransparency = 1;
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
			VerticalLine = Roact_upvr.createElement("Frame", {
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
			CanvasSize = UDim2.new(1, 0, 0, var39 * EntryFrameHeight_upvr + var40 * LineGraphHeight_upvr);
			ScrollBarThickness = 5;
			BackgroundTransparency = 1;
		}, tbl);
	})
end
return require(Components.DataConsumer)(any_extend_result1, "ServerStatsData")