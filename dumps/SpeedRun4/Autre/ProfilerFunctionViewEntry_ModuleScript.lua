-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:42
-- Luau version 6, Types version 3
-- Time taken: 0.008148 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local ProfilerUtil_upvr = require(script.Parent.ProfilerUtil)
local Components = script.Parent.Parent.Parent.Components
local CellLabel_upvr = require(Components.CellLabel)
local Constants = require(script.Parent.Parent.Parent.Constants)
local EntryFrameHeight_upvr = Constants.GeneralFormatting.EntryFrameHeight
local ValueCellWidth_upvr = Constants.ScriptProfilerFormatting.ValueCellWidth
local ValuePadding_upvr = Constants.ScriptProfilerFormatting.ValuePadding
local any_extend_result1 = Roact_upvr.PureComponent:extend("ProfilerFunctionViewEntry")
local LineWidth_upvr = Constants.GeneralFormatting.LineWidth
local LineColor_upvr = Constants.GeneralFormatting.LineColor
local function BorderedCellLabel_upvr(arg1) -- Line 42, Named "BorderedCellLabel"
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
function any_extend_result1.init(arg1) -- Line 59
	local tbl = {}
	local var16
	if arg1.props.depth ~= 0 then
		var16 = false
	else
		var16 = true
	end
	tbl.expanded = var16
	var16 = false
	tbl.showTooltip = var16
	var16 = UDim2.fromOffset(0, 0)
	tbl.tooltipPos = var16
	arg1.state = tbl
	function arg1.onButtonPress() -- Line 66
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState(function(arg1_2) -- Line 67
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			return {
				expanded = not arg1.state.expanded;
			}
		end)
	end
	function arg1.onMouseEnter(arg1_3, arg2, arg3) -- Line 74
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showTooltip = true;
			tooltipPos = UDim2.fromOffset(arg2, arg3);
		})
	end
	function arg1.onMouseMove(arg1_4, arg2, arg3) -- Line 81
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showTooltip = true;
			tooltipPos = UDim2.fromOffset(arg2, arg3);
		})
	end
	function arg1.onMouseLeave() -- Line 88
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showTooltip = false;
		})
	end
end
function any_extend_result1.renderValues(arg1, arg2) -- Line 95
	--[[ Upvalues[5]:
		[1]: ValueCellWidth_upvr (readonly)
		[2]: ValuePadding_upvr (readonly)
		[3]: EntryFrameHeight_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: BorderedCellLabel_upvr (readonly)
	]]
	local module_2 = {}
	local udim2 = UDim2.new(ValueCellWidth_upvr, -ValuePadding_upvr, 0, EntryFrameHeight_upvr)
	local udim2_2 = UDim2.new(1 - ValueCellWidth_upvr * #arg2, ValuePadding_upvr, 0, 0)
	for i, v in ipairs(arg2) do
		module_2[tostring(i)] = Roact_upvr.createElement(BorderedCellLabel_upvr, {
			text = tostring(v);
			size = udim2;
			pos = udim2_2 + UDim2.fromScale(ValueCellWidth_upvr * (i - 1), 0);
		})
	end
	return module_2
end
local getNativeFlag_upvr = ProfilerUtil_upvr.getNativeFlag
local getPluginFlag_upvr = ProfilerUtil_upvr.getPluginFlag
local Tooltip_upvr = require(Components.Tooltip)
local BannerButton_upvr = require(Components.BannerButton)
local CellPadding_upvr = Constants.ScriptProfilerFormatting.CellPadding
function any_extend_result1.render(arg1) -- Line 110
	--[[ Upvalues[10]:
		[1]: EntryFrameHeight_upvr (readonly)
		[2]: getNativeFlag_upvr (readonly)
		[3]: getPluginFlag_upvr (readonly)
		[4]: ProfilerUtil_upvr (readonly)
		[5]: ValueCellWidth_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: Tooltip_upvr (readonly)
		[8]: BannerButton_upvr (readonly)
		[9]: CellLabel_upvr (readonly)
		[10]: CellPadding_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local props = arg1.props
	local var43
	if not props.size then
	end
	local percentageRatio = props.percentageRatio
	local data = props.data
	local var46 = data.Functions[props.functionId]
	local var47
	if percentageRatio then
		if percentageRatio == 0 then
			var47 = "N/A"
		else
			var43 = "%.3f%%"
			var47 = string.format(var43, (var46.TotalDuration / arg1.props.average - (arg1.props.gcOffset or 0)) / percentageRatio)
		end
	else
		var43 = "%.3f"
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var47 = string.format(var43, (var46.TotalDuration / arg1.props.average - (arg1.props.gcOffset or 0)) * 1000)
	end
	local tbl_2 = {}
	var43 = var47
	tbl_2[1] = var43
	var43 = props.nodeName
	if not var43 or #var43 == 0 then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if "<anonymous>" == "<anonymous>" then
	end
	if getPluginFlag_upvr(data, var46) then
	end
	if getNativeFlag_upvr(data, var46) then
	end
	local module = {}
	if arg1.state.showTooltip then
		local _ = {
			text = "";
			pos = arg1.state.tooltipPos;
		}
	else
	end
	module.tooltip = nil
	module.layout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Right;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	module.button = Roact_upvr.createElement(BannerButton_upvr, {
		size = UDim2.new(1, 0, 0, EntryFrameHeight_upvr);
		inset = 0;
		isExpanded = arg1.state.expanded;
		isExpandable = false;
		onButtonPress = arg1.onButtonPress;
		onMouseEnter = arg1.onMouseEnter;
		onMouseLeave = arg1.onMouseLeave;
		onMouseMove = arg1.onMouseMove;
		layoutOrder = -1;
	}, {
		name = Roact_upvr.createElement(CellLabel_upvr, {
			text = ProfilerUtil_upvr.getSourceLocationString(data, var46, "<anonymous>").." <plugin>".." <native>";
			size = UDim2.new(UDim.new(1 - ValueCellWidth_upvr * #tbl_2, -0), UDim.new(1, 0));
			pos = UDim2.new(0, CellPadding_upvr + 0, 0, 0);
		});
		values = Roact_upvr.createFragment(arg1:renderValues(tbl_2));
	})
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, EntryFrameHeight_upvr);
		BackgroundTransparency = 1;
		LayoutOrder = props.layoutOrder or 0;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, module)
end
return any_extend_result1