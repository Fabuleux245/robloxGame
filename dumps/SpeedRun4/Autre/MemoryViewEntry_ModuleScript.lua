-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:24
-- Luau version 6, Types version 3
-- Time taken: 0.002553 seconds

local Components = script.Parent.Parent.Parent.Components
local Constants = require(script.Parent.Parent.Parent.Constants)
local DepthIndent_upvr = Constants.MemoryFormatting.DepthIndent
local ValueCellWidth_upvr = Constants.MemoryFormatting.ValueCellWidth
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local BannerButton_upvr = require(Components.BannerButton)
local EntryFrameHeight_upvr = Constants.GeneralFormatting.EntryFrameHeight
local CellLabel_upvr = require(Components.CellLabel)
local CellPadding_upvr = Constants.MemoryFormatting.CellPadding
local LineWidth_upvr = Constants.GeneralFormatting.LineWidth
local LineColor_upvr = Constants.GeneralFormatting.LineColor
local ValuePadding_upvr = Constants.MemoryFormatting.ValuePadding
local LineGraph_upvr = require(Components.LineGraph)
local convertTimeStamp_upvr = require(script.Parent.Parent.Parent.Util.convertTimeStamp)
return function(arg1) -- Line 22
	--[[ Upvalues[12]:
		[1]: DepthIndent_upvr (readonly)
		[2]: ValueCellWidth_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: BannerButton_upvr (readonly)
		[5]: EntryFrameHeight_upvr (readonly)
		[6]: CellLabel_upvr (readonly)
		[7]: CellPadding_upvr (readonly)
		[8]: LineWidth_upvr (readonly)
		[9]: LineColor_upvr (readonly)
		[10]: ValuePadding_upvr (readonly)
		[11]: LineGraph_upvr (readonly)
		[12]: convertTimeStamp_upvr (readonly)
	]]
	local showGraph = arg1.showGraph
	local dataStats = arg1.dataStats
	local formatValueStr = arg1.formatValueStr
	local var19 = arg1.depth * DepthIndent_upvr
	local name = arg1.name
	local value = arg1.value
	if dataStats then
		value = dataStats.dataSet:back().data
	end
	local module = {
		button = Roact_upvr.createElement(BannerButton_upvr, {
			size = UDim2.new(1, -var19, 0, EntryFrameHeight_upvr);
			pos = UDim2.new(0, var19, 0, 0);
			isExpanded = showGraph;
			onButtonPress = arg1.onButtonPress;
		}, {
			name = Roact_upvr.createElement(CellLabel_upvr, {
				text = name;
				size = UDim2.new(UDim.new(1 - ValueCellWidth_upvr, -var19), UDim.new(1, 0));
				pos = UDim2.new(0, CellPadding_upvr, 0, 0);
			});
			horizonal1 = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, -var19, 0, LineWidth_upvr);
				Position = UDim2.new(0, var19, 0, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
			horizonal2 = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, -var19, 0, LineWidth_upvr);
				Position = UDim2.new(0, var19, 1, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
		});
	}
	local var29 = value
	if var29 then
		var29 = Roact_upvr.createElement
		var29 = var29(CellLabel_upvr, {
			text = formatValueStr(value);
			size = UDim2.new(ValueCellWidth_upvr, -ValuePadding_upvr, 0, EntryFrameHeight_upvr);
			pos = UDim2.new(1 - ValueCellWidth_upvr, ValuePadding_upvr, 0, 0);
		})
	end
	module.value = var29
	module.vertical = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(0, 1, 0, EntryFrameHeight_upvr);
		Position = UDim2.new(1 - ValueCellWidth_upvr, 0, 0, 0);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	local var32 = showGraph
	if var32 then
		var32 = Roact_upvr.createElement
		var32 = var32(LineGraph_upvr, {
			pos = UDim2.new(0, 0, 0, EntryFrameHeight_upvr);
			size = UDim2.new(1, 0, 1, -EntryFrameHeight_upvr);
			graphData = dataStats.dataSet;
			maxY = dataStats.max;
			minY = dataStats.min;
			getX = arg1.getX;
			getY = arg1.getY;
			stringFormatX = convertTimeStamp_upvr;
			stringFormatY = formatValueStr;
			axisLabelX = "Timestamp";
			axisLabelY = name;
		})
	end
	module.Graph = var32
	return Roact_upvr.createElement("Frame", {
		Size = arg1.size;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}, module)
end