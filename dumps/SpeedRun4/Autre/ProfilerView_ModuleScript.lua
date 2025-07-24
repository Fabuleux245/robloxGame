-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:43
-- Luau version 6, Types version 3
-- Time taken: 0.004887 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local ProfilerUtil = require(script.Parent.ProfilerUtil)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ProfilerView")
local getDurations_upvr = ProfilerUtil.getDurations
local ProfilerViewEntry_upvr = require(script.Parent.ProfilerViewEntry)
function any_extend_result1.renderChildren(arg1) -- Line 29
	--[[ Upvalues[3]:
		[1]: getDurations_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ProfilerViewEntry_upvr (readonly)
	]]
	local data = arg1.props.data
	local var8
	if data.Version ~= 2 then
		var8 = false
	else
		var8 = true
	end
	assert(var8)
	var8 = data
	var8 = 1
	if 0 < arg1.props.average and arg1.props.sessionLength then
		var8 = arg1.props.sessionLength / 1000 / arg1.props.average
	end
	local module_2 = {
		layoutOrder = 0;
		depth = 0;
		data = data;
		nodeId = arg1.props.rootNode;
		functionId = arg1.props.rootFunc;
		nodeName = arg1.props.rootNodeName;
		average = var8;
		searchTerm = arg1.props.searchTerm;
		searchFilter = arg1.props.searchFilter;
		showPlugins = arg1.props.showPlugins;
		pluginOffsets = arg1.props.pluginOffsets;
		showGC = arg1.props.showGC;
		gcNodeOffsets = arg1.props.gcNodeOffsets;
		pluginGCOffsets = arg1.props.pluginGCOffsets;
	}
	local expandedNodes = arg1.props.expandedNodes
	module_2.expandedNodes = expandedNodes
	if arg1.props.showAsPercentages then
		expandedNodes = getDurations_upvr(var8, 0) / 100
	else
		expandedNodes = nil
	end
	module_2.percentageRatio = expandedNodes
	return Roact_upvr.createElement(ProfilerViewEntry_upvr, module_2)
end
local formatSessionLength_upvr = ProfilerUtil.formatSessionLength
local HeaderFrameHeight_upvr = Constants_upvr.GeneralFormatting.HeaderFrameHeight
local HeaderButton_upvr = require(script.Parent.Parent.Parent.Components.HeaderButton)
local ValueCellWidth_upvr = Constants_upvr.ScriptProfilerFormatting.ValueCellWidth
local ValuePadding_upvr = Constants_upvr.ScriptProfilerFormatting.ValuePadding
local CellPadding_upvr = Constants_upvr.ScriptProfilerFormatting.CellPadding
local LineColor_upvr = Constants_upvr.GeneralFormatting.LineColor
local HeaderNames_upvr = Constants_upvr.ScriptProfilerFormatting.HeaderNames
local LineWidth_upvr = Constants_upvr.GeneralFormatting.LineWidth
function any_extend_result1.render(arg1) -- Line 62
	--[[ Upvalues[11]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: formatSessionLength_upvr (readonly)
		[4]: HeaderFrameHeight_upvr (readonly)
		[5]: HeaderButton_upvr (readonly)
		[6]: ValueCellWidth_upvr (readonly)
		[7]: ValuePadding_upvr (readonly)
		[8]: CellPadding_upvr (readonly)
		[9]: LineColor_upvr (readonly)
		[10]: HeaderNames_upvr (readonly)
		[11]: LineWidth_upvr (readonly)
	]]
	local layoutOrder = arg1.props.layoutOrder
	local var21
	if arg1.props.profiling and not arg1.props.data then
		var21 = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			Text = "Press Stop to Finish Profiling";
			TextColor3 = Constants_upvr.Color.Text;
			BackgroundTransparency = 1;
			LayoutOrder = layoutOrder;
		})
	elseif not arg1.props.data then
		var21 = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			Text = "Start Profiling to View Data";
			TextColor3 = Constants_upvr.Color.Text;
			BackgroundTransparency = 1;
			LayoutOrder = layoutOrder;
		})
	end
	local formatSessionLength_upvr_result1 = formatSessionLength_upvr(arg1.props.sessionLength)
	if formatSessionLength_upvr_result1 then
		formatSessionLength_upvr_result1 = "Session Duration: "..formatSessionLength_upvr_result1
	end
	local module = {
		SessionInfo = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, HeaderFrameHeight_upvr);
			BackgroundTransparency = 1;
		}, {
			Name = Roact_upvr.createElement(HeaderButton_upvr, {
				text = formatSessionLength_upvr_result1 or "Session Info";
				size = UDim2.new(1 - ValueCellWidth_upvr * 2, -ValuePadding_upvr - CellPadding_upvr, 0, HeaderFrameHeight_upvr);
				pos = UDim2.new(0, CellPadding_upvr, 0, 0);
			});
			TopHorizontal = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
		});
		Header = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, HeaderFrameHeight_upvr);
			BackgroundTransparency = 1;
			Position = UDim2.new(0, 0, 0, HeaderFrameHeight_upvr);
		}, {
			Name = Roact_upvr.createElement(HeaderButton_upvr, {
				text = HeaderNames_upvr[1];
				size = UDim2.new(1 - ValueCellWidth_upvr * 2, -ValuePadding_upvr - CellPadding_upvr, 0, HeaderFrameHeight_upvr);
				pos = UDim2.new(0, CellPadding_upvr, 0, 0);
				sortfunction = arg1.onSortChanged;
			});
			Inclusive = Roact_upvr.createElement(HeaderButton_upvr, {
				text = HeaderNames_upvr[2];
				size = UDim2.new(ValueCellWidth_upvr, -CellPadding_upvr, 0, HeaderFrameHeight_upvr);
				pos = UDim2.new(1 - ValueCellWidth_upvr * 2, ValuePadding_upvr, 0, 0);
				sortfunction = arg1.onSortChanged;
			});
			Self = Roact_upvr.createElement(HeaderButton_upvr, {
				text = HeaderNames_upvr[3];
				size = UDim2.new(ValueCellWidth_upvr, -CellPadding_upvr, 0, HeaderFrameHeight_upvr);
				pos = UDim2.new(1 - ValueCellWidth_upvr, ValuePadding_upvr, 0, 0);
				sortfunction = arg1.onSortChanged;
			});
			TopHorizontal = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
			LowerHorizontal = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LineWidth_upvr);
				Position = UDim2.new(0, 0, 1, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
			Vertical1 = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, LineWidth_upvr, 1, 0);
				Position = UDim2.new(1 - ValueCellWidth_upvr, 0, 0, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
			Vertical2 = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, LineWidth_upvr, 1, 0);
				Position = UDim2.new(1 - ValueCellWidth_upvr * 2, 0, 0, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
		});
	}
	local tbl = {}
	local any_createElement_result1 = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
	})
	tbl.Layout = any_createElement_result1
	if var21 then
		any_createElement_result1 = var21
	else
		any_createElement_result1 = Roact_upvr.createFragment(arg1:renderChildren())
	end
	tbl.Children = any_createElement_result1
	module.Entries = Roact_upvr.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 1, -HeaderFrameHeight_upvr * 2);
		Position = UDim2.new(0, 0, 0, HeaderFrameHeight_upvr * 2);
		BackgroundTransparency = 1;
		VerticalScrollBarInset = Enum.ScrollBarInset.None;
		ScrollBarThickness = 5;
		CanvasSize = UDim2.fromScale(0, 0);
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
	}, tbl)
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.size;
		BackgroundTransparency = 1;
		LayoutOrder = layoutOrder;
	}, module)
end
return any_extend_result1