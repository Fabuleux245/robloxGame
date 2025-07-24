-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:44
-- Luau version 6, Types version 3
-- Time taken: 0.012761 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local ProfilerUtil_upvr = require(script.Parent.ProfilerUtil)
local getDurations_upvr = ProfilerUtil_upvr.getDurations
local getPluginFlag_upvr = ProfilerUtil_upvr.getPluginFlag
local Components = script.Parent.Parent.Parent.Components
local CellLabel_upvr = require(Components.CellLabel)
local Constants = require(script.Parent.Parent.Parent.Constants)
local EntryFrameHeight_upvr = Constants.GeneralFormatting.EntryFrameHeight
local ValueCellWidth_upvr = Constants.ScriptProfilerFormatting.ValueCellWidth
local ValuePadding_upvr = Constants.ScriptProfilerFormatting.ValuePadding
local any_extend_result1 = Roact_upvr.PureComponent:extend("ProfilerViewEntry")
local SetScriptProfilerRoot_upvr = require(script.Parent.Parent.Parent.Actions.SetScriptProfilerRoot)
local var15_upvr = require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(nil, function(arg1) -- Line 39, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetScriptProfilerRoot_upvr (readonly)
	]]
	return {
		dispatchSetScriptProfilerRoot = function(arg1_2, arg2, arg3) -- Line 41, Named "dispatchSetScriptProfilerRoot"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetScriptProfilerRoot_upvr (copied, readonly)
			]]
			arg1(SetScriptProfilerRoot_upvr(arg1_2, arg2, arg3))
		end;
	}
end)(any_extend_result1)
local LineWidth_upvr = Constants.GeneralFormatting.LineWidth
local LineColor_upvr = Constants.GeneralFormatting.LineColor
local function BorderedCellLabel_upvr(arg1) -- Line 59, Named "BorderedCellLabel"
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
local function _(arg1) -- Line 76, Named "getNodeName"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var22
	if arg1.depth == 0 and arg1.functionId == 0 then
		var22 = "<root>"
	else
		var22 = "<anonymous>"
	end
	local nodeName = arg1.nodeName
	if not nodeName or #nodeName == 0 then
		return var22
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return var22
end
function any_extend_result1.init(arg1) -- Line 90
	local tbl_6 = {}
	local var25 = true
	if arg1.props.depth ~= 0 then
		var25 = arg1.props.expandedNodes[arg1.props.nodeId]
	end
	tbl_6.expanded = var25
	tbl_6.showTooltip = false
	tbl_6.tooltipPos = UDim2.fromOffset(0, 0)
	arg1.state = tbl_6
	function arg1.onButtonPress() -- Line 97
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.expandedNodes[arg1.props.nodeId] = not arg1.state.expanded
		arg1:setState(function(arg1_3) -- Line 100
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			return {
				expanded = not arg1.state.expanded;
			}
		end)
	end
	function arg1.onMouseEnter(arg1_4, arg2, arg3) -- Line 107
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showTooltip = true;
			tooltipPos = UDim2.fromOffset(arg2, arg3);
		})
	end
	function arg1.onMouseMove(arg1_5, arg2, arg3) -- Line 114
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showTooltip = true;
			tooltipPos = UDim2.fromOffset(arg2, arg3);
		})
	end
	function arg1.onMouseLeave() -- Line 121
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showTooltip = false;
		})
	end
	function arg1.onMouse2Click() -- Line 127
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local props_2 = arg1.props
		local var38
		if props_2.depth == 0 and props_2.functionId == 0 then
			var38 = "<root>"
		else
			var38 = "<anonymous>"
		end
		local nodeName_3 = props_2.nodeName
		if not nodeName_3 or #nodeName_3 == 0 then
		end
		arg1.props.dispatchSetScriptProfilerRoot(arg1.props.nodeId, arg1.props.functionId, var38)
	end
end
function any_extend_result1.renderChildren(arg1, arg2) -- Line 132
	--[[ Upvalues[4]:
		[1]: getDurations_upvr (readonly)
		[2]: getPluginFlag_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: var15_upvr (readonly)
	]]
	local module_2 = {}
	if arg1.state.expanded then
		local searchFilter_2 = arg1.props.searchFilter
		local showPlugins = arg1.props.showPlugins
		local showGC_2 = arg1.props.showGC
		local data_2 = arg1.props.data
		if arg2 then
			local pairs_result1_2, pairs_result2_2, pairs_result3 = pairs(arg2)
			for i, v in pairs_result1_2, pairs_result2_2, pairs_result3 do
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					local var78 = data_2.Functions[i]
					return showPlugins
				end
				if 0 >= #searchFilter_2 or searchFilter_2[v] or showGC_2 or i ~= data_2.GCFuncId or INLINED_2() or not getPluginFlag_upvr(data_2, var78) then
					module_2[i] = Roact_upvr.createElement(var15_upvr, {
						layoutOrder = (getDurations_upvr(arg1.props.data, arg1.props.nodeId) - getDurations_upvr(data_2, v)) * 1000000;
						depth = arg1.props.depth + 1;
						data = data_2;
						nodeId = v;
						functionId = i;
						nodeName = var78.Name;
						average = arg1.props.average;
						percentageRatio = arg1.props.percentageRatio;
						searchTerm = arg1.props.searchTerm;
						searchFilter = searchFilter_2;
						showPlugins = showPlugins;
						showGC = showGC_2;
						gcNodeOffsets = arg1.props.gcNodeOffsets;
						expandedNodes = arg1.props.expandedNodes;
					})
				end
			end
			return module_2
		end
		pairs_result2_2 = arg1.props
		local var80 = pairs_result2_2
		if var80.nodeId == 0 then
			if arg2 ~= nil then
				var80 = false
			else
				var80 = true
			end
			assert(var80)
			var80 = nil
			for i_2, v_2 in data_2.Categories, var80 do
				if 0 >= #searchFilter_2 or searchFilter_2[v_2.NodeId] then
					local getDurations_upvr_result1_2 = getDurations_upvr(data_2, v_2.NodeId)
					local var82 = arg1.props.pluginOffsets[i_2]
					if not showPlugins then
						getDurations_upvr_result1_2 -= var82
						if showGC_2 then
							getDurations_upvr_result1_2 -= arg1.props.pluginGCOffsets[i_2]
						end
					end
					local tbl_3 = {}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_3.layoutOrder = (getDurations_upvr(arg1.props.data, arg1.props.nodeId) - getDurations_upvr_result1_2) * 1000000
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_3.depth = arg1.props.depth + 1
					tbl_3.data = data_2
					tbl_3.nodeId = v_2.NodeId
					tbl_3.functionId = nil
					tbl_3.nodeName = v_2.Name
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_3.average = arg1.props.average
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_3.percentageRatio = arg1.props.percentageRatio
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_3.searchTerm = arg1.props.searchTerm
					tbl_3.searchFilter = searchFilter_2
					tbl_3.showPlugins = showPlugins
					tbl_3.pluginOffset = var82
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_3.pluginGCOffset = arg1.props.pluginGCOffsets[i_2]
					tbl_3.showGC = showGC_2
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_3.gcNodeOffsets = arg1.props.gcNodeOffsets
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_3.expandedNodes = arg1.props.expandedNodes
					module_2[i_2] = Roact_upvr.createElement(var15_upvr, tbl_3)
				end
			end
		end
	end
	return module_2
end
function any_extend_result1.renderValues(arg1, arg2) -- Line 231
	--[[ Upvalues[5]:
		[1]: ValueCellWidth_upvr (readonly)
		[2]: ValuePadding_upvr (readonly)
		[3]: EntryFrameHeight_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: BorderedCellLabel_upvr (readonly)
	]]
	local module_4 = {}
	local udim2_2 = UDim2.new(ValueCellWidth_upvr, -ValuePadding_upvr, 0, EntryFrameHeight_upvr)
	local udim2 = UDim2.new(1 - ValueCellWidth_upvr * #arg2, ValuePadding_upvr, 0, 0)
	for i_3, v_3 in ipairs(arg2) do
		module_4[tostring(i_3)] = Roact_upvr.createElement(BorderedCellLabel_upvr, {
			text = tostring(v_3);
			size = udim2_2;
			pos = udim2 + UDim2.fromScale(ValueCellWidth_upvr * (i_3 - 1), 0);
		})
	end
	return module_4
end
local DepthIndent_upvr = Constants.ScriptProfilerFormatting.DepthIndent
local standardizeChildren_upvr = ProfilerUtil_upvr.standardizeChildren
local getNativeFlag_upvr = ProfilerUtil_upvr.getNativeFlag
local Tooltip_upvr = require(Components.Tooltip)
local BannerButton_upvr = require(Components.BannerButton)
local CellPadding_upvr = Constants.ScriptProfilerFormatting.CellPadding
function any_extend_result1.render(arg1) -- Line 246
	--[[ Upvalues[13]:
		[1]: EntryFrameHeight_upvr (readonly)
		[2]: DepthIndent_upvr (readonly)
		[3]: getDurations_upvr (readonly)
		[4]: standardizeChildren_upvr (readonly)
		[5]: ProfilerUtil_upvr (readonly)
		[6]: getNativeFlag_upvr (readonly)
		[7]: getPluginFlag_upvr (readonly)
		[8]: ValueCellWidth_upvr (readonly)
		[9]: Roact_upvr (readonly)
		[10]: Tooltip_upvr (readonly)
		[11]: BannerButton_upvr (readonly)
		[12]: CellLabel_upvr (readonly)
		[13]: CellPadding_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local props = arg1.props
	local var102
	if not props.size then
	end
	local depth = props.depth
	local var104 = depth * DepthIndent_upvr
	local percentageRatio = props.percentageRatio
	local data = props.data
	local nodeId = props.nodeId
	local var108 = data.Functions[props.functionId]
	var102 = data.Nodes
	var102 = getDurations_upvr(data, nodeId)
	local getDurations_upvr_result1, var4_result2 = getDurations_upvr(data, nodeId)
	getDurations_upvr_result1 /= arg1.props.average
	local standardizeChildren_upvr_result1 = standardizeChildren_upvr(data, var102[nodeId])
	if not props.showPlugins then
		if nodeId == 0 then
			getDurations_upvr_result1 -= arg1.props.pluginOffsets.Total or 0
			if props.showGC then
				getDurations_upvr_result1 -= arg1.props.pluginGCOffsets.Total or 0
				-- KONSTANTWARNING: GOTO [89] #62
			end
		else
			getDurations_upvr_result1 -= arg1.props.pluginOffset or 0
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if props.showGC then
				getDurations_upvr_result1 -= arg1.props.pluginGCOffset or 0
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if not props.showGC then
		if nodeId == 0 then
			getDurations_upvr_result1 -= props.gcNodeOffsets.Total or 0
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			getDurations_upvr_result1 -= props.gcNodeOffsets[nodeId] or 0
		end
	end
	if percentageRatio then
		if percentageRatio == 0 then
		else
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	local tbl_4 = {string.format("%.3f", getDurations_upvr_result1 * 1000), string.format("%.3f", var4_result2 / arg1.props.average * 1000)}
	if props.depth == 0 and props.functionId == 0 then
	else
	end
	local nodeName_2 = props.nodeName
	if not nodeName_2 or #nodeName_2 == 0 then
	end
	local var115 = "<anonymous>"
	if getPluginFlag_upvr(data, var108) then
	end
	if getNativeFlag_upvr(data, var108) then
	end
	local module_3 = {}
	if arg1.state.showTooltip then
		local _ = {
			text = ProfilerUtil_upvr.getSourceLocationString(data, var108, var115);
			pos = arg1.state.tooltipPos;
		}
	else
	end
	module_3.tooltip = nil
	module_3.layout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Right;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	local tbl_2 = {
		size = UDim2.new(1, 0, 0, EntryFrameHeight_upvr);
		inset = var104;
		isExpanded = arg1.state.expanded;
	}
	if not standardizeChildren_upvr_result1 or next(standardizeChildren_upvr_result1) == nil then
		if depth ~= 0 then
		else
		end
	end
	tbl_2.isExpandable = true
	tbl_2.onButtonPress = arg1.onButtonPress
	tbl_2.onMouseEnter = arg1.onMouseEnter
	tbl_2.onMouseLeave = arg1.onMouseLeave
	tbl_2.onMouseMove = arg1.onMouseMove
	tbl_2.onMouse2Click = arg1.onMouse2Click
	tbl_2.layoutOrder = -1
	module_3.button = Roact_upvr.createElement(BannerButton_upvr, tbl_2, {
		name = Roact_upvr.createElement(CellLabel_upvr, {
			text = var115.." <plugin>".." <native>";
			size = UDim2.new(UDim.new(1 - ValueCellWidth_upvr * #tbl_4, -var104), UDim.new(1, 0));
			pos = UDim2.new(0, CellPadding_upvr + var104, 0, 0);
		});
		values = Roact_upvr.createFragment(arg1:renderValues(tbl_4));
	})
	module_3.children = Roact_upvr.createFragment(arg1:renderChildren(standardizeChildren_upvr_result1))
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, EntryFrameHeight_upvr);
		BackgroundTransparency = 1;
		LayoutOrder = props.layoutOrder or 0;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, module_3)
end
return var15_upvr