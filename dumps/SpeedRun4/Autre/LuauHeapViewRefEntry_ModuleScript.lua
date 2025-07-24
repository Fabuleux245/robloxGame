-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:19
-- Luau version 6, Types version 3
-- Time taken: 0.003796 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local CellLabel_upvr = require(Components.CellLabel)
local Constants = require(script.Parent.Parent.Parent.Constants)
local RefEntryFrameHeight_upvr = Constants.LuauHeapFormatting.RefEntryFrameHeight
local ValueCellWidth_upvr = Constants.LuauHeapFormatting.ValueCellWidth
local ValuePadding_upvr = Constants.LuauHeapFormatting.ValuePadding
local any_extend_result1 = Roact_upvr.PureComponent:extend("LuauHeapViewRefEntry")
local LineWidth_upvr = Constants.GeneralFormatting.LineWidth
local LineColor_upvr = Constants.GeneralFormatting.LineColor
local function BorderedCellLabel_upvr(arg1) -- Line 33, Named "BorderedCellLabel"
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
function any_extend_result1.init(arg1) -- Line 51
	arg1.state = {
		expanded = false;
	}
	function arg1.onButtonPress() -- Line 56
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState(function(arg1_2) -- Line 57
			return {
				expanded = not arg1_2.expanded;
			}
		end)
	end
end
function any_extend_result1.renderValues(arg1, arg2) -- Line 65
	--[[ Upvalues[5]:
		[1]: ValueCellWidth_upvr (readonly)
		[2]: ValuePadding_upvr (readonly)
		[3]: RefEntryFrameHeight_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: BorderedCellLabel_upvr (readonly)
	]]
	local module_3 = {}
	local udim2_2 = UDim2.new(ValueCellWidth_upvr, -ValuePadding_upvr, 0, RefEntryFrameHeight_upvr)
	local udim2 = UDim2.new(1 - ValueCellWidth_upvr * #arg2, ValuePadding_upvr, 0, 0)
	for i, v in arg2 do
		module_3[tostring(i)] = Roact_upvr.createElement(BorderedCellLabel_upvr, {
			text = tostring(v);
			size = udim2_2;
			pos = udim2 + UDim2.fromScale(ValueCellWidth_upvr * (i - 1), 0);
		})
	end
	return module_3
end
local LuauHeapViewPathEntry_upvr = require(script.Parent.LuauHeapViewPathEntry)
function any_extend_result1.renderChildren(arg1, arg2) -- Line 80
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LuauHeapViewPathEntry_upvr (readonly)
	]]
	local module = {}
	if arg1.state.expanded and arg2 and #arg2 then
		for i_2, v_2 in ipairs(arg2) do
			module[i_2] = Roact_upvr.createElement(LuauHeapViewPathEntry_upvr, {
				layoutOrder = i_2;
				depth = 1;
				name = `Path #{i_2}`;
				data = v_2;
			})
		end
	end
	return module
end
local BannerButton_upvr = require(Components.BannerButton)
local CellPadding_upvr = Constants.LuauHeapFormatting.CellPadding
function any_extend_result1.render(arg1) -- Line 97
	--[[ Upvalues[6]:
		[1]: RefEntryFrameHeight_upvr (readonly)
		[2]: ValueCellWidth_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: BannerButton_upvr (readonly)
		[5]: CellLabel_upvr (readonly)
		[6]: CellPadding_upvr (readonly)
	]]
	local props = arg1.props
	local size = props.size
	if not size then
		size = UDim2.new(1, 0, 0, RefEntryFrameHeight_upvr)
	end
	local data = props.data
	local tbl_2 = {`{data.Count}`, `{data.Instances}`}
	local module_2 = {
		layout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl = {
		size = UDim2.new(1, 0, 0, RefEntryFrameHeight_upvr);
		inset = 0;
		isExpanded = arg1.state.expanded;
	}
	local Paths = data.Paths
	if Paths then
		if #data.Paths == 0 then
			Paths = false
		else
			Paths = true
		end
	end
	tbl.isExpandable = Paths
	tbl.onButtonPress = arg1.onButtonPress
	tbl.layoutOrder = -1
	module_2.button = Roact_upvr.createElement(BannerButton_upvr, tbl, {
		name = Roact_upvr.createElement(CellLabel_upvr, {
			text = data.Name;
			size = UDim2.new(UDim.new(1 - ValueCellWidth_upvr * #tbl_2, 0), UDim.new(1, 0));
			pos = UDim2.new(0, CellPadding_upvr, 0, 0);
		});
		values = Roact_upvr.createFragment(arg1:renderValues(tbl_2));
	})
	module_2.children = Roact_upvr.createFragment(arg1:renderChildren(data.Paths))
	return Roact_upvr.createElement("Frame", {
		Size = size;
		BackgroundTransparency = 1;
		LayoutOrder = props.layoutOrder or 0;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, module_2)
end
return any_extend_result1