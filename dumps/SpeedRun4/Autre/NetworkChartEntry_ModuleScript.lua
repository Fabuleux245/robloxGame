-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:29
-- Luau version 6, Types version 3
-- Time taken: 0.004106 seconds

local Constants = require(script.Parent.Parent.Parent.Constants)
local ResponseWidthRatio = Constants.NetworkFormatting.ResponseWidthRatio
local Components = script.Parent.Parent.Parent.Components
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local CellLabel_upvr = require(Components.CellLabel)
local LineColor_upvr = Constants.GeneralFormatting.LineColor
local LineWidth_upvr = Constants.GeneralFormatting.LineWidth
local EntryFrameHeight_upvr = Constants.NetworkFormatting.EntryFrameHeight
local BannerButton_upvr = require(Components.BannerButton)
local var11_upvr = (1 - ResponseWidthRatio) / 2
local HeaderButton_upvr = require(Components.HeaderButton)
local ResponseStrHeight_upvr = Constants.NetworkFormatting.ResponseStrHeight
local var14_upvr = (1 - ResponseWidthRatio) / 4
return function(arg1) -- Line 21
	--[[ Upvalues[10]:
		[1]: Roact_upvr (readonly)
		[2]: CellLabel_upvr (readonly)
		[3]: LineColor_upvr (readonly)
		[4]: LineWidth_upvr (readonly)
		[5]: EntryFrameHeight_upvr (readonly)
		[6]: BannerButton_upvr (readonly)
		[7]: var11_upvr (readonly)
		[8]: HeaderButton_upvr (readonly)
		[9]: ResponseStrHeight_upvr (readonly)
		[10]: var14_upvr (readonly)
	]]
	local entry = arg1.entry
	local entryCellSize = arg1.entryCellSize
	local cellOffset = arg1.cellOffset
	local verticalOffsets = arg1.verticalOffsets
	local showResponse = arg1.showResponse
	local tbl = {
		Num = Roact_upvr.createElement(CellLabel_upvr, {
			text = entry.Num;
			size = entryCellSize[1];
			pos = cellOffset[1];
		});
		Method = Roact_upvr.createElement(CellLabel_upvr, {
			text = entry.Method;
			size = entryCellSize[2];
			pos = cellOffset[2];
		});
		Status = Roact_upvr.createElement(CellLabel_upvr, {
			text = entry.Status;
			size = entryCellSize[3];
			pos = cellOffset[3];
		});
		Time = Roact_upvr.createElement(CellLabel_upvr, {
			text = string.format("%.3f", entry.Time);
			size = entryCellSize[4];
			pos = cellOffset[4];
		});
		RequestType = Roact_upvr.createElement(CellLabel_upvr, {
			text = entry.RequestType;
			size = entryCellSize[5];
			pos = cellOffset[5];
		});
		Url = Roact_upvr.createElement(CellLabel_upvr, {
			text = entry.Url;
			size = entryCellSize[6];
			pos = cellOffset[6];
		});
		LowerHorizontalLine = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 1);
			BackgroundColor3 = LineColor_upvr;
			BorderSizePixel = 0;
		});
	}
	for i = 2, #verticalOffsets do
		tbl[string.format("VerticalLine_%d", i)] = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, LineWidth_upvr, 0, EntryFrameHeight_upvr);
			Position = verticalOffsets[i];
			BackgroundColor3 = LineColor_upvr;
			BorderSizePixel = 0;
		})
	end
	local module = {
		Button = Roact_upvr.createElement(BannerButton_upvr, {
			size = UDim2.new(1, 0, 0, EntryFrameHeight_upvr);
			pos = UDim2.new();
			isExpanded = showResponse;
			onButtonPress = arg1.onButtonPress;
		}, tbl);
	}
	local var34 = showResponse
	if var34 then
		var34 = Roact_upvr.createElement
		var34 = var34("Frame", {
			Size = UDim2.new(1, 0, 0, arg1.responseBodyHeight);
			Position = UDim2.new(var11_upvr, 0, 0, EntryFrameHeight_upvr);
			BackgroundTransparency = 1;
		}, {
			Text = Roact_upvr.createElement(HeaderButton_upvr, {
				text = "Response Body:";
				size = UDim2.new(1, 0, 0, ResponseStrHeight_upvr);
				pos = UDim2.new(-var14_upvr, 0, 0, 0);
			});
			ResponseBody = Roact_upvr.createElement(CellLabel_upvr, {
				text = entry.Response;
				size = UDim2.new(0.8, 0, 1, -ResponseStrHeight_upvr);
				pos = UDim2.new(0, 0, 0, ResponseStrHeight_upvr);
			});
		})
	end
	module.Response = var34
	return Roact_upvr.createElement("Frame", {
		Size = arg1.size;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}, module)
end