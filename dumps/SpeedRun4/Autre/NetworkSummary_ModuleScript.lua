-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:30
-- Luau version 6, Types version 3
-- Time taken: 0.007774 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants = require(script.Parent.Parent.Parent.Constants)
local SummaryCellWidths = Constants.NetworkFormatting.SummaryCellWidths
local HeaderFrameHeight_upvr = Constants.NetworkFormatting.HeaderFrameHeight
local EntryFrameHeight_upvr = Constants.NetworkFormatting.EntryFrameHeight
local CellPadding = Constants.NetworkFormatting.CellPadding
local var31 = 0
for _, v in pairs(SummaryCellWidths) do
	var31 += v
end
local tbl_5 = {}
local tbl_4_upvr = {}
local tbl_3 = {}
table.insert(tbl_5, UDim2.new(0, CellPadding, 0, 0))
table.insert(tbl_4_upvr, UDim2.new(1, -var31 - CellPadding, 0, HeaderFrameHeight_upvr))
table.insert(tbl_3, UDim2.new(1, -var31 - CellPadding, 0, EntryFrameHeight_upvr))
for _, v_2 in ipairs(SummaryCellWidths) do
	table.insert(tbl_5, UDim2.new(1, -var31 + CellPadding, 0, 0))
	table.insert(tbl_4_upvr, UDim2.new(0, v_2 - CellPadding, 0, HeaderFrameHeight_upvr))
	table.insert(tbl_3, UDim2.new(0, v_2 - CellPadding, 0, EntryFrameHeight_upvr))
	local var42_upvr
end
for i_3, v_3 in ipairs(var42_upvr) do
	({})[i_3] = UDim2.new(v_3.X.Scale, v_3.X.Offset - CellPadding, v_3.Y.Scale, v_3.Y.Offset)
	local var47_upvr
end
local any_extend_result1 = Roact_upvr.Component:extend("NetworkSummary")
local LineWidth_upvr = Constants.GeneralFormatting.LineWidth
local LineColor_upvr = Constants.GeneralFormatting.LineColor
local SummaryHeaderNames_upvr = Constants.NetworkFormatting.SummaryHeaderNames
local HeaderButton_upvr = require(script.Parent.Parent.Parent.Components.HeaderButton)
local CellLabel_upvr = require(script.Parent.Parent.Parent.Components.CellLabel)
local Text_upvr = Constants.Color.Text
function any_extend_result1.render(arg1) -- Line 50
	--[[ Upvalues[12]:
		[1]: Roact_upvr (readonly)
		[2]: LineWidth_upvr (readonly)
		[3]: LineColor_upvr (readonly)
		[4]: var47_upvr (readonly)
		[5]: HeaderFrameHeight_upvr (readonly)
		[6]: SummaryHeaderNames_upvr (readonly)
		[7]: HeaderButton_upvr (readonly)
		[8]: tbl_4_upvr (readonly)
		[9]: var42_upvr (readonly)
		[10]: CellLabel_upvr (readonly)
		[11]: EntryFrameHeight_upvr (readonly)
		[12]: Text_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local width = arg1.props.width
	local httpSummaryTable = arg1.props.httpSummaryTable
	if not httpSummaryTable then
		httpSummaryTable = {}
	end
	local module = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	for i_4 = 2, #var47_upvr do
		({
			UpperHorizontalLine = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LineWidth_upvr);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
			LowerHorizontalLine = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LineWidth_upvr);
				Position = UDim2.new(0, 0, 1, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
		})[string.format("VerticalLine_%d", i_4)] = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, LineWidth_upvr, 0, HeaderFrameHeight_upvr);
			Position = var47_upvr[i_4];
			BackgroundColor3 = LineColor_upvr;
			BorderSizePixel = 0;
		})
		local var87
	end
	for i_5, v_4 in ipairs(SummaryHeaderNames_upvr) do
		var87[v_4] = Roact_upvr.createElement(HeaderButton_upvr, {
			text = v_4;
			size = tbl_4_upvr[i_5];
			pos = var42_upvr[i_5];
		})
	end
	module.Header = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(0, width, 0, HeaderFrameHeight_upvr);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	}, var87)
	for i_6, v_5 in pairs(httpSummaryTable) do
		local var96 = 0 + 1
		local tbl_2 = {
			RequestType = Roact_upvr.createElement(CellLabel_upvr, {
				text = v_5.RequestType;
				size = tbl_4_upvr[1];
				pos = var42_upvr[1];
			});
			RequestCount = Roact_upvr.createElement(CellLabel_upvr, {
				text = v_5.RequestCount;
				size = tbl_4_upvr[2];
				pos = var42_upvr[2];
			});
			FailedCount = Roact_upvr.createElement(CellLabel_upvr, {
				text = v_5.FailedCount;
				size = tbl_4_upvr[3];
				pos = var42_upvr[3];
			});
			AverageTime = Roact_upvr.createElement(CellLabel_upvr, {
				text = string.format("%.3f", v_5.AverageTime);
				size = tbl_4_upvr[4];
				pos = var42_upvr[4];
			});
			MinTime = Roact_upvr.createElement(CellLabel_upvr, {
				text = string.format("%.3f", v_5.MinTime);
				size = tbl_4_upvr[5];
				pos = var42_upvr[5];
			});
			MaxTime = Roact_upvr.createElement(CellLabel_upvr, {
				text = string.format("%.3f", v_5.MaxTime);
				size = tbl_4_upvr[6];
				pos = var42_upvr[6];
			});
			LowerHorizontalLine = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LineWidth_upvr);
				Position = UDim2.new(0, 0, 1, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
		}
		for i_7 = 2, #var47_upvr do
			tbl_2[string.format("VerticalLine_%d", i_7)] = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, LineWidth_upvr, 1, 0);
				Position = var47_upvr[i_7];
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			})
		end
		module[v_5.RequestType] = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, width, 0, EntryFrameHeight_upvr);
			BackgroundTransparency = 1;
			LayoutOrder = var96 + 1;
		}, tbl_2)
	end
	if var96 == 0 then
		local tbl = {}
		i_6 = UDim2.new
		v_5 = 0
		i_6 = i_6(v_5, width, 0, EntryFrameHeight_upvr)
		tbl.Size = i_6
		i_6 = "No Summary Data Found"
		tbl.Text = i_6
		i_6 = Text_upvr
		tbl.TextColor3 = i_6
		i_6 = 1
		tbl.BackgroundTransparency = i_6
		i_6 = 2
		tbl.LayoutOrder = i_6
		module.Padding = Roact_upvr.createElement("TextLabel", tbl)
	end
	return Roact_upvr.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 0, 1 * EntryFrameHeight_upvr + HeaderFrameHeight_upvr);
		ScrollingEnabled = false;
		ScrollBarThickness = 0;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.layoutOrder;
	}, module)
end
return any_extend_result1