-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:20
-- Luau version 6, Types version 3
-- Time taken: 0.004259 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local CellLabel_upvr = require(Components.CellLabel)
local Constants = require(script.Parent.Parent.Parent.Constants)
local StatEntryFrameHeight_upvr = Constants.LuauHeapFormatting.StatEntryFrameHeight
local ValueCellWidth_upvr = Constants.LuauHeapFormatting.ValueCellWidth
local ValuePadding_upvr = Constants.LuauHeapFormatting.ValuePadding
local any_extend_result1 = Roact_upvr.PureComponent:extend("LuauHeapViewStatEntry")
local LineWidth_upvr = Constants.GeneralFormatting.LineWidth
local LineColor_upvr = Constants.GeneralFormatting.LineColor
local function BorderedCellLabel_upvr(arg1) -- Line 31, Named "BorderedCellLabel"
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
function any_extend_result1.renderValues(arg1, arg2) -- Line 49
	--[[ Upvalues[5]:
		[1]: ValueCellWidth_upvr (readonly)
		[2]: ValuePadding_upvr (readonly)
		[3]: StatEntryFrameHeight_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: BorderedCellLabel_upvr (readonly)
	]]
	local module = {}
	local udim2 = UDim2.new(ValueCellWidth_upvr, -ValuePadding_upvr, 0, StatEntryFrameHeight_upvr)
	local udim2_2 = UDim2.new(1 - ValueCellWidth_upvr * #arg2, ValuePadding_upvr, 0, 0)
	for i, v in arg2 do
		module[tostring(i)] = Roact_upvr.createElement(BorderedCellLabel_upvr, {
			text = tostring(v);
			size = udim2;
			pos = udim2_2 + UDim2.fromScale(ValueCellWidth_upvr * (i - 1), 0);
		})
	end
	return module
end
local BannerButton_upvr = require(Components.BannerButton)
local CellPadding_upvr = Constants.LuauHeapFormatting.CellPadding
function any_extend_result1.render(arg1) -- Line 64
	--[[ Upvalues[6]:
		[1]: StatEntryFrameHeight_upvr (readonly)
		[2]: ValueCellWidth_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: BannerButton_upvr (readonly)
		[5]: CellLabel_upvr (readonly)
		[6]: CellPadding_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local props = arg1.props
	local size = props.size
	if not size then
		size = UDim2.new(1, 0, 0, StatEntryFrameHeight_upvr)
	end
	local data = props.data
	local compare = props.compare
	local formatted_2 = string.format("%.0f", data.Size)
	local formatted = string.format("%.0f", data.Count)
	if compare then
		local var30
		if compare.Size ~= data.Size then
			if data.Size < compare.Size then
				var30 = "0f0"
			else
				var30 = "f00"
			end
			if data.Size < compare.Size then
			else
			end
			formatted_2 = string.format("%d <font color=\"#%s\">(%s%d)</font>", data.Size, var30, '+', data.Size - compare.Size)
		end
		if compare.Count ~= data.Count then
			if data.Count < compare.Count then
				var30 = "0f0"
			else
				var30 = "f00"
			end
			if data.Count < compare.Count then
			else
			end
			formatted = string.format("%d <font color=\"#%s\">(%s%d)</font>", data.Count, var30, '+', data.Count - compare.Count)
		end
	end
	local tbl = {formatted_2, formatted}
	return Roact_upvr.createElement("Frame", {
		Size = size;
		BackgroundTransparency = 1;
		LayoutOrder = props.layoutOrder or 0;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, {
		layout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		button = Roact_upvr.createElement(BannerButton_upvr, {
			size = UDim2.new(1, 0, 0, StatEntryFrameHeight_upvr);
			inset = 0;
			isExpanded = false;
			isExpandable = false;
			layoutOrder = -1;
		}, {
			name = Roact_upvr.createElement(CellLabel_upvr, {
				text = data.Name;
				size = UDim2.new(UDim.new(1 - ValueCellWidth_upvr * #tbl, 0), UDim.new(1, 0));
				pos = UDim2.new(0, CellPadding_upvr, 0, 0);
			});
			values = Roact_upvr.createFragment(arg1:renderValues(tbl));
		});
	})
end
return any_extend_result1