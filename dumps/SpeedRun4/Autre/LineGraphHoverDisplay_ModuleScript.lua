-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:12
-- Luau version 6, Types version 3
-- Time taken: 0.001524 seconds

local Constants = require(script.Parent.Parent.Constants)
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local LineWidth_upvr = Constants.GeneralFormatting.LineWidth
local HoverGreen_upvr = Constants.Color.HoverGreen
local TextPadding_upvr = Constants.Graph.TextPadding
local InnerPaddingY_upvr = Constants.Graph.InnerPaddingY
return function(arg1) -- Line 10
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: LineWidth_upvr (readonly)
		[3]: HoverGreen_upvr (readonly)
		[4]: TextPadding_upvr (readonly)
		[5]: InnerPaddingY_upvr (readonly)
	]]
	local hoverLineX = arg1.hoverLineX
	local hoverLineY = arg1.hoverLineY
	local hoverValX = arg1.hoverValX
	local hoverValY = arg1.hoverValY
	local module = {
		hoverLine = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, LineWidth_upvr, 1, 0);
			Position = UDim2.new(0, hoverLineX, 0, 0);
			BackgroundColor3 = HoverGreen_upvr;
			BorderSizePixel = 0;
		});
		HoverHorizontal = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, hoverLineX + TextPadding_upvr, 0, LineWidth_upvr);
			Position = UDim2.new(0, -TextPadding_upvr, 1 - InnerPaddingY_upvr, -hoverLineY);
			BackgroundColor3 = HoverGreen_upvr;
			BorderSizePixel = 0;
		});
	}
	local tbl_2 = {}
	local var19
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var19 = arg1.stringFormatY(hoverValY)
		return var19
	end
	if not arg1.stringFormatY or not INLINED() then
		var19 = hoverValY
	end
	tbl_2.Text = var19
	var19 = HoverGreen_upvr
	tbl_2.TextColor3 = var19
	var19 = Enum.TextXAlignment.Right
	tbl_2.TextXAlignment = var19
	var19 = UDim2.new(0, -TextPadding_upvr - 2, 1 - InnerPaddingY_upvr, -hoverLineY)
	tbl_2.Position = var19
	var19 = 1
	tbl_2.BackgroundTransparency = var19
	module.HoverTextY = Roact_upvr.createElement("TextLabel", tbl_2)
	local tbl = {}
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var19 = arg1.stringFormatX(hoverValX)
		return var19
	end
	if not arg1.stringFormatX or not INLINED_2() then
		var19 = hoverValX
	end
	tbl.Text = var19
	var19 = HoverGreen_upvr
	tbl.TextColor3 = var19
	var19 = Enum.TextXAlignment.Center
	tbl.TextXAlignment = var19
	var19 = UDim2.new(0, hoverLineX, 1, TextPadding_upvr)
	tbl.Position = var19
	var19 = 1
	tbl.BackgroundTransparency = var19
	module.HoverTextX = Roact_upvr.createElement("TextLabel", tbl)
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, module)
end