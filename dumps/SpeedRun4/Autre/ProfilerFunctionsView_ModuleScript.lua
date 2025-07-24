-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:41
-- Luau version 6, Types version 3
-- Time taken: 0.006425 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local ProfilerUtil = require(script.Parent.ProfilerUtil)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ProfilerView")
local getDurations_upvr = ProfilerUtil.getDurations
local getPluginFlag_upvr = ProfilerUtil.getPluginFlag
local ProfilerFunctionViewEntry_upvr = require(script.Parent.ProfilerFunctionViewEntry)
function any_extend_result1.renderChildren(arg1) -- Line 29
	--[[ Upvalues[4]:
		[1]: getDurations_upvr (readonly)
		[2]: getPluginFlag_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ProfilerFunctionViewEntry_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
	local data = arg1.props.data
	local var9
	if data.Version ~= 2 then
		var9 = false
	else
		var9 = true
	end
	assert(var9)
	var9 = data
	var9 = {}
	if 0 < arg1.props.average and arg1.props.sessionLength then
	end
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(data.Functions)
	-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [116] 79. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [116] 79. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [65] 41. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [116.15]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [116.2147483650]
	-- KONSTANTERROR: [65] 41. Error Block 9 end (CF ANALYSIS FAILED)
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
function any_extend_result1.render(arg1) -- Line 70
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
	local var23
	if arg1.props.profiling and not arg1.props.data then
		var23 = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			Text = "Press Stop to Finish Profiling";
			TextColor3 = Constants_upvr.Color.Text;
			BackgroundTransparency = 1;
			LayoutOrder = layoutOrder;
		})
	elseif not arg1.props.data then
		var23 = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			Text = "Start Profiling to View Data";
			TextColor3 = Constants_upvr.Color.Text;
			BackgroundTransparency = 1;
			LayoutOrder = layoutOrder;
		})
	end
	local var13_result1 = formatSessionLength_upvr(arg1.props.sessionLength)
	if var13_result1 then
		var13_result1 = "Session Duration: "..var13_result1
	end
	local module = {
		SessionInfo = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, HeaderFrameHeight_upvr);
			BackgroundTransparency = 1;
		}, {
			Name = Roact_upvr.createElement(HeaderButton_upvr, {
				text = var13_result1 or "Session Info";
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
				pos = UDim2.new(1 - ValueCellWidth_upvr * 1, ValuePadding_upvr, 0, 0);
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
		});
	}
	local tbl = {}
	local any_createElement_result1 = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	tbl.Layout = any_createElement_result1
	if var23 then
		any_createElement_result1 = var23
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