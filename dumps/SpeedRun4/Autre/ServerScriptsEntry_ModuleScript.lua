-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:47
-- Luau version 6, Types version 3
-- Time taken: 0.004026 seconds

local Components = script.Parent.Parent.Parent.Components
local Constants = require(script.Parent.Parent.Parent.Constants)
local ActivityBoxPadding_upvr = Constants.ServerScriptsFormatting.ActivityBoxPadding
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local BannerButton_upvr = require(Components.BannerButton)
local EntryFrameHeight_upvr = Constants.ServerScriptsFormatting.EntryFrameHeight
local ActivityBoxWidth_upvr = Constants.ServerScriptsFormatting.ActivityBoxWidth
local CellLabel_upvr = require(Components.CellLabel)
local udim2_upvr = UDim2.new(0, ActivityBoxPadding_upvr, 0, 0)
local LineWidth_upvr = Constants.GeneralFormatting.LineWidth
local LineColor_upvr = Constants.GeneralFormatting.LineColor
local LineGraph_upvr = require(Components.LineGraph)
local LineGraphHeight_upvr = Constants.GeneralFormatting.LineGraphHeight
local convertTimeStamp_upvr = require(script.Parent.Parent.Parent.Util.convertTimeStamp)
local ChartHeaderNames_upvr = Constants.ServerScriptsFormatting.ChartHeaderNames
return function(arg1) -- Line 24
	--[[ Upvalues[13]:
		[1]: Roact_upvr (readonly)
		[2]: BannerButton_upvr (readonly)
		[3]: EntryFrameHeight_upvr (readonly)
		[4]: ActivityBoxWidth_upvr (readonly)
		[5]: ActivityBoxPadding_upvr (readonly)
		[6]: CellLabel_upvr (readonly)
		[7]: udim2_upvr (readonly)
		[8]: LineWidth_upvr (readonly)
		[9]: LineColor_upvr (readonly)
		[10]: LineGraph_upvr (readonly)
		[11]: LineGraphHeight_upvr (readonly)
		[12]: convertTimeStamp_upvr (readonly)
		[13]: ChartHeaderNames_upvr (readonly)
	]]
	local scriptData = arg1.scriptData
	local showGraph = arg1.showGraph
	local entryCellSize = arg1.entryCellSize
	local cellOffset = arg1.cellOffset
	local verticalOffsets = arg1.verticalOffsets
	local getX = arg1.getX
	local formatScriptsData = arg1.formatScriptsData
	local dataStats = scriptData.dataStats
	local any_back_result1 = dataStats.dataSet:back()
	local module = {
		button = Roact_upvr.createElement(BannerButton_upvr, {
			size = UDim2.new(1, 0, 0, EntryFrameHeight_upvr);
			pos = UDim2.new();
			isExpanded = showGraph;
			onButtonPress = arg1.onButtonPress;
		}, {
			ActivityBox = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, ActivityBoxWidth_upvr, 0, ActivityBoxWidth_upvr);
				Position = UDim2.new(0, ActivityBoxPadding_upvr, 0, (EntryFrameHeight_upvr - ActivityBoxWidth_upvr) / 2);
				BackgroundColor3 = arg1.activityBoxColor;
			});
			ScriptName = Roact_upvr.createElement(CellLabel_upvr, {
				text = scriptData.name;
				size = entryCellSize[1] - udim2_upvr;
				pos = cellOffset[1] + udim2_upvr;
			});
			ScriptAcitivity = Roact_upvr.createElement(CellLabel_upvr, {
				text = formatScriptsData(any_back_result1.data[1]);
				size = entryCellSize[2];
				pos = cellOffset[2];
			});
			scriptFreqStr = Roact_upvr.createElement(CellLabel_upvr, {
				text = formatScriptsData(any_back_result1.data[2]);
				size = entryCellSize[3];
				pos = cellOffset[3];
			});
			upperHorizontalLine = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LineWidth_upvr);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
			verticalLine1 = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, LineWidth_upvr, 1, 0);
				Position = verticalOffsets[2];
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
			verticalLine2 = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, LineWidth_upvr, 1, 0);
				Position = verticalOffsets[3];
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
	}
	local var38 = showGraph
	if var38 then
		var38 = Roact_upvr.createElement
		var38 = var38(LineGraph_upvr, {
			pos = UDim2.new(0, 0, 0, EntryFrameHeight_upvr);
			size = UDim2.new(1, 0, 0, LineGraphHeight_upvr);
			graphData = dataStats.dataSet;
			maxY = dataStats.max[1];
			minY = dataStats.min[1];
			getX = getX;
			getY = arg1.getActivity;
			stringFormatX = convertTimeStamp_upvr;
			stringFormatY = formatScriptsData;
			axisLabelX = "Timestamp";
			axisLabelY = ChartHeaderNames_upvr[2];
		})
	end
	module.ActivityGraph = var38
	var38 = showGraph
	local var40 = var38
	if var40 then
		var40 = Roact_upvr.createElement
		var40 = var40(LineGraph_upvr, {
			pos = UDim2.new(0, 0, 0, EntryFrameHeight_upvr + LineGraphHeight_upvr);
			size = UDim2.new(1, 0, 0, LineGraphHeight_upvr);
			graphData = dataStats.dataSet;
			maxY = dataStats.max[2];
			minY = dataStats.min[2];
			getX = getX;
			getY = arg1.getRate;
			stringFormatX = convertTimeStamp_upvr;
			stringFormatY = formatScriptsData;
			axisLabelX = "Timestamp";
			axisLabelY = ChartHeaderNames_upvr[3];
		})
	end
	module.RateGraph = var40
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, arg1.frameHeight);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}, module)
end