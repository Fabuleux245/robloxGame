-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:18
-- Luau version 6, Types version 3
-- Time taken: 0.009015 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local CellLabel_upvr = require(Components.CellLabel)
local Constants = require(script.Parent.Parent.Parent.Constants)
local GraphEntryFrameHeight_upvr = Constants.LuauHeapFormatting.GraphEntryFrameHeight
local ValueCellWidth_upvr = Constants.LuauHeapFormatting.ValueCellWidth
local ValuePadding_upvr = Constants.LuauHeapFormatting.ValuePadding
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("LuauHeapViewEntry")
local LineWidth_upvr = Constants.GeneralFormatting.LineWidth
local LineColor_upvr = Constants.GeneralFormatting.LineColor
local function BorderedCellLabel_upvr(arg1) -- Line 32, Named "BorderedCellLabel"
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: CellLabel_upvr (readonly)
		[3]: LineWidth_upvr (readonly)
		[4]: ValuePadding_upvr (readonly)
		[5]: LineColor_upvr (readonly)
	]]
	return Roact_upvr.createFragment({
		Label = Roact_upvr.createElement(CellLabel_upvr, {
			text = arg1.text;
			size = arg1.size;
			pos = arg1.pos;
			richText = true;
		});
		LeftBorder = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(UDim.new(0, LineWidth_upvr), arg1.size.Y);
			Position = UDim2.fromOffset(-ValuePadding_upvr, 0) + arg1.pos;
			AnchorPoint = Vector2.new(0, 0);
			BackgroundColor3 = LineColor_upvr;
			BorderSizePixel = 0;
		});
	})
end
function any_extend_result1_upvr.init(arg1) -- Line 50
	local tbl = {}
	local var15
	if arg1.props.depth ~= 0 then
		var15 = false
	else
		var15 = true
	end
	tbl.expanded = var15
	var15 = false
	tbl.expandedEllipsis = var15
	var15 = false
	tbl.showTooltip = var15
	var15 = UDim2.fromOffset(0, 0)
	tbl.tooltipPos = var15
	arg1.state = tbl
	function arg1.onButtonPress() -- Line 58
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState(function(arg1_2) -- Line 59
			return {
				expanded = not arg1_2.expanded;
			}
		end)
	end
	function arg1.onExpandEllipsis() -- Line 66
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			expandedEllipsis = true;
		})
	end
	function arg1.onMouseEnter(arg1_3, arg2, arg3) -- Line 72
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showTooltip = true;
			tooltipPos = UDim2.fromOffset(arg2, arg3);
		})
	end
	function arg1.onMouseMove(arg1_4, arg2, arg3) -- Line 79
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showTooltip = true;
			tooltipPos = UDim2.fromOffset(arg2, arg3);
		})
	end
	function arg1.onMouseLeave() -- Line 86
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showTooltip = false;
		})
	end
end
function any_extend_result1_upvr.renderChildren(arg1, arg2, arg3) -- Line 93
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 61 start (CF ANALYSIS FAILED)
	if not arg1.state.expanded then
		return {}
	end
	local var36 = true
	if #arg2 == 0 then
		var36 = false
		if arg3 ~= nil then
			if #arg3 == 0 then
				var36 = false
			else
				var36 = true
			end
		end
	end
	if not var36 then
		return {}
	end
	local function _(arg1_6) -- Line 117, Named "getCompareInfo"
		--[[ Upvalues[1]:
			[1]: arg3 (readonly)
		]]
		if arg3 then
			for _, v in ipairs(arg3) do
				if arg1_6.Name == v.Name then
					return v
				end
			end
		end
		return nil
	end
	local ipairs_result1_2, ipairs_result2_3, ipairs_result3_2 = ipairs(arg2)
	-- KONSTANTERROR: [0] 1. Error Block 61 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [105] 74. Error Block 25 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [105] 74. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 34. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 34. Error Block 11 end (CF ANALYSIS FAILED)
end
function any_extend_result1_upvr.renderValues(arg1, arg2) -- Line 223
	--[[ Upvalues[5]:
		[1]: ValueCellWidth_upvr (readonly)
		[2]: ValuePadding_upvr (readonly)
		[3]: GraphEntryFrameHeight_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: BorderedCellLabel_upvr (readonly)
	]]
	local module = {}
	local udim2 = UDim2.new(ValueCellWidth_upvr, -ValuePadding_upvr, 0, GraphEntryFrameHeight_upvr)
	local udim2_2 = UDim2.new(1 - ValueCellWidth_upvr * #arg2, ValuePadding_upvr, 0, 0)
	for i_2, v_2 in ipairs(arg2) do
		module[tostring(i_2)] = Roact_upvr.createElement(BorderedCellLabel_upvr, {
			text = tostring(v_2);
			size = udim2;
			pos = udim2_2 + UDim2.fromScale(ValueCellWidth_upvr * (i_2 - 1), 0);
		})
	end
	return module
end
local DepthIndent_upvr = Constants.LuauHeapFormatting.DepthIndent
local CellPadding_upvr = Constants.LuauHeapFormatting.CellPadding
local Tooltip_upvr = require(Components.Tooltip)
local BannerButton_upvr = require(Components.BannerButton)
function any_extend_result1_upvr.render(arg1) -- Line 238
	--[[ Upvalues[8]:
		[1]: GraphEntryFrameHeight_upvr (readonly)
		[2]: DepthIndent_upvr (readonly)
		[3]: ValueCellWidth_upvr (readonly)
		[4]: CellPadding_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: Tooltip_upvr (readonly)
		[7]: BannerButton_upvr (readonly)
		[8]: CellLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 104 start (CF ANALYSIS FAILED)
	local props_2 = arg1.props
	if not props_2.size then
	end
	local data_2 = props_2.data
	local compare_2 = props_2.compare
	if compare_2 then
		local var72
		if compare_2.TotalSize ~= data_2.TotalSize then
			if data_2.TotalSize < compare_2.TotalSize then
				var72 = "0f0"
			else
				var72 = "f00"
			end
			if data_2.TotalSize < compare_2.TotalSize then
			else
			end
			-- KONSTANTWARNING: GOTO [70] #49
		end
	end
	local var73
	if compare_2 and compare_2.Size ~= data_2.Size then
		if data_2.Size < compare_2.Size then
			var72 = "0f0"
		else
			var72 = "f00"
		end
		if data_2.Size < compare_2.Size then
		else
		end
		var73 = string.format("%d <font color=\"#%s\">(%s%d)</font>", data_2.Size, var72, '+', data_2.Size - compare_2.Size)
	else
		var73 = string.format("%.0f", data_2.Size)
	end
	local _ = {string.format("%.0f", data_2.TotalSize), var73}
	if props_2.depth == 0 then
	else
	end
	if not data_2.Name or #data_2.Name == 0 then
	else
	end
	if not data_2.Source or #data_2.Source == 0 then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 104 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [168] 117. Error Block 47 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [168] 117. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [179] 124. Error Block 51 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [179] 124. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [180] 125. Error Block 85 start (CF ANALYSIS FAILED)
	if props_2.customButtonPress then
		-- KONSTANTWARNING: GOTO [188] #130
	end
	-- KONSTANTERROR: [180] 125. Error Block 85 end (CF ANALYSIS FAILED)
end
return any_extend_result1_upvr