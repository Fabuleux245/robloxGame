-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:57
-- Luau version 6, Types version 3
-- Time taken: 0.011341 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local GeneralFormatting = Constants_upvr.GeneralFormatting
local LineWidth_upvr = GeneralFormatting.LineWidth
local LineColor_upvr = GeneralFormatting.LineColor
local ActionBindingsFormatting = Constants_upvr.ActionBindingsFormatting
local ChartCellWidths = ActionBindingsFormatting.ChartCellWidths
local HeaderFrameHeight_upvr = ActionBindingsFormatting.HeaderFrameHeight
local EntryFrameHeight_upvr = ActionBindingsFormatting.EntryFrameHeight
local CellPadding = ActionBindingsFormatting.CellPadding
local var36 = 0
for _, v in ipairs(ChartCellWidths) do
	var36 += v
end
local tbl_6 = {}
local tbl_upvr = {}
local tbl_5_upvr = {}
local var43 = -var36 / 2
table.insert(tbl_6, UDim2.new(0, CellPadding, 0, 0))
table.insert(tbl_upvr, UDim2.new(0.5, var43 - CellPadding, 0, HeaderFrameHeight_upvr))
table.insert(tbl_5_upvr, UDim2.new(0.5, var43 - CellPadding, 0, EntryFrameHeight_upvr))
for _, v_2 in ipairs(ChartCellWidths) do
	table.insert(tbl_6, UDim2.new(0.5, var43 + CellPadding, 0, 0))
	table.insert(tbl_upvr, UDim2.new(0, v_2 - CellPadding, 0, HeaderFrameHeight_upvr))
	table.insert(tbl_5_upvr, UDim2.new(0, v_2 - CellPadding, 0, EntryFrameHeight_upvr))
	local var47_upvr
end
table.insert(var47_upvr, UDim2.new(0.5, var43 + v_2 + CellPadding, 0, 0))
table.insert(tbl_upvr, UDim2.new(0.5, -var36 / 2 - CellPadding, 0, HeaderFrameHeight_upvr))
table.insert(tbl_5_upvr, UDim2.new(0.5, -var36 / 2 - CellPadding, 0, EntryFrameHeight_upvr))
for i_3, v_3 in ipairs(var47_upvr) do
	({})[i_3] = UDim2.new(v_3.X.Scale, v_3.X.Offset - CellPadding, v_3.Y.Scale, v_3.Y.Offset)
	local var52_upvr
end
local any_extend_result1 = Roact_upvr.Component:extend("ActionBindingsChart")
local ChartHeaderNames_upvr = ActionBindingsFormatting.ChartHeaderNames
local HeaderButton_upvr = require(Components.HeaderButton)
local function constructHeader_upvr(arg1, arg2) -- Line 63, Named "constructHeader"
	--[[ Upvalues[9]:
		[1]: ChartHeaderNames_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: HeaderButton_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: var47_upvr (readonly)
		[6]: LineWidth_upvr (readonly)
		[7]: LineColor_upvr (readonly)
		[8]: var52_upvr (readonly)
		[9]: HeaderFrameHeight_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_2 = {}
	for i_4, v_4 in ipairs(ChartHeaderNames_upvr) do
		local tbl_2 = {
			text = v_4;
			size = tbl_upvr[i_4];
			pos = var47_upvr[i_4];
		}
		tbl_2.sortfunction = arg1
		module_2[v_4] = Roact_upvr.createElement(HeaderButton_upvr, tbl_2)
	end
	module_2.upperHorizontalLine = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth_upvr);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	module_2.lowerHorizontalLine = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth_upvr);
		Position = UDim2.new(0, 0, 1, -LineWidth_upvr);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	for i_5 = 2, #var52_upvr do
		module_2[string.format("VerticalLine_%d", i_5)] = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, LineWidth_upvr, 1, 0);
			Position = var52_upvr[i_5];
			BackgroundColor3 = LineColor_upvr;
			BorderSizePixel = 0;
		})
	end
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(0, arg2, 0, HeaderFrameHeight_upvr);
		BackgroundTransparency = 1;
	}, module_2)
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixActionBindingSecurity", false)
local CellLabel_upvr = require(Components.CellLabel)
local function constructEntry_upvr(arg1, arg2, arg3) -- Line 105, Named "constructEntry"
	--[[ Upvalues[9]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: var52_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: LineWidth_upvr (readonly)
		[5]: LineColor_upvr (readonly)
		[6]: CellLabel_upvr (readonly)
		[7]: tbl_5_upvr (readonly)
		[8]: var47_upvr (readonly)
		[9]: EntryFrameHeight_upvr (readonly)
	]]
	local name = arg1.name
	local actionInfo = arg1.actionInfo
	local tostring_result1 = tostring(actionInfo.inputTypes[1])
	local var84
	if game_DefineFastFlag_result1_upvr then
		var84 = "Developer"
		if actionInfo.isCore then
			var84 = "Core"
			-- KONSTANTWARNING: GOTO [25] #20
		end
	else
		var84 = "Core"
		if actionInfo.isCore then
			var84 = "Developer"
		end
	end
	for i_6 = 2, #var52_upvr do
		({})[string.format("line_%d", i_6)] = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, LineWidth_upvr, 1, 0);
			Position = var52_upvr[i_6];
			BackgroundColor3 = LineColor_upvr;
			BorderSizePixel = 0;
		})
		local var87
	end
	var87[name] = Roact_upvr.createElement(CellLabel_upvr, {
		text = tostring_result1;
		size = tbl_5_upvr[1];
		pos = var47_upvr[1];
	})
	var87.priorityLevel = Roact_upvr.createElement(CellLabel_upvr, {
		text = actionInfo.priorityLevel;
		size = tbl_5_upvr[2];
		pos = var47_upvr[2];
	})
	var87.isCore = Roact_upvr.createElement(CellLabel_upvr, {
		text = var84;
		size = tbl_5_upvr[3];
		pos = var47_upvr[3];
	})
	var87.actionName = Roact_upvr.createElement(CellLabel_upvr, {
		text = name;
		size = tbl_5_upvr[4];
		pos = var47_upvr[4];
	})
	var87.inputTypes = Roact_upvr.createElement(CellLabel_upvr, {
		text = tostring_result1;
		size = tbl_5_upvr[5];
		pos = var47_upvr[5];
	})
	var87.lowerHorizontalLine = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth_upvr);
		Position = UDim2.new(0, 0, 1, 0);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	local module = {
		Size = UDim2.new(0, arg2, 0, EntryFrameHeight_upvr);
		BackgroundTransparency = 1;
	}
	module.LayoutOrder = arg3
	return Roact_upvr.createElement("Frame", module, var87)
end
function any_extend_result1.init(arg1, arg2) -- Line 182
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	function arg1.onSortChanged(arg1_2) -- Line 185
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		if arg1_2 == arg2.ActionBindingsData:getSortType() then
			arg1:setState({
				reverseSort = not arg1.state.reverseSort;
			})
		else
			arg2.ActionBindingsData:setSortType(arg1_2)
			arg1:setState({
				reverseSort = false;
			})
		end
	end
	function arg1.onCanvasPosChanged() -- Line 199
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local CanvasPosition = arg1.scrollingRef.current.CanvasPosition
		if arg1.state.canvasPos ~= CanvasPosition then
			arg1:setState({
				canvasPos = CanvasPosition;
			})
		end
	end
	arg1.scrollingRef = Roact_upvr.createRef()
	arg1.state = {
		actionBindingEntries = arg2.ActionBindingsData:getCurrentData();
		reverseSort = false;
	}
end
function any_extend_result1.willUpdate(arg1) -- Line 216
	if arg1.canvasPosConnector then
		arg1.canvasPosConnector:Disconnect()
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 222
	local function INLINED() -- Internal function, doesn't exist in bytecode
		local absScrollSize_2 = arg1.state.absScrollSize
		local AbsoluteSize = arg1.scrollingRef.current.AbsoluteSize
		arg1.canvasPosConnector = arg1.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition"):Connect(arg1.onCanvasPosChanged)
		return AbsoluteSize.X ~= absScrollSize_2.X
	end
	if arg1.scrollingRef.current and (INLINED() or AbsoluteSize.Y ~= absScrollSize_2.Y) then
		arg1:setState({
			absScrollSize = AbsoluteSize;
		})
	end
end
function any_extend_result1.didMount(arg1) -- Line 237
	arg1.bindingsUpdated = arg1.props.ActionBindingsData:Signal():Connect(function(arg1_3) -- Line 238
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_3 = {}
		tbl_3.actionBindingEntries = arg1_3
		arg1:setState(tbl_3)
	end)
	if arg1.scrollingRef.current then
		arg1.canvasPosConnector = arg1.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition"):Connect(arg1.onCanvasPosChanged)
		arg1:setState({
			absScrollSize = arg1.scrollingRef.current.AbsoluteSize;
			canvasPos = arg1.scrollingRef.current.CanvasPosition;
		})
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 255
	arg1.bindingsUpdated:Disconnect()
	arg1.bindingsUpdated = nil
	arg1.canvasPosConnector:Disconnect()
	arg1.canvasPosConnector = nil
end
local MinFrameWidth_upvr = ActionBindingsFormatting.MinFrameWidth
function any_extend_result1.render(arg1) -- Line 262
	--[[ Upvalues[8]:
		[1]: MinFrameWidth_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: EntryFrameHeight_upvr (readonly)
		[4]: constructEntry_upvr (readonly)
		[5]: LineColor_upvr (readonly)
		[6]: constructHeader_upvr (readonly)
		[7]: HeaderFrameHeight_upvr (readonly)
		[8]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_7 = {}
	local searchTerm = arg1.props.searchTerm
	local actionBindingEntries = arg1.state.actionBindingEntries
	local absScrollSize = arg1.state.absScrollSize
	local var121
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var121 = math.max(absScrollSize.X, MinFrameWidth_upvr)
		return var121
	end
	if not absScrollSize or not INLINED_2() then
		var121 = MinFrameWidth_upvr
	end
	tbl_7.UIListLayout = Roact_upvr.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	local var123 = 0
	local var124
	if absScrollSize and arg1.state.canvasPos then
		var124 = 0
		for i_7, v_5 in ipairs(actionBindingEntries) do
			local var129 = false
			if searchTerm then
				if string.find(tostring(v_5.actionInfo.inputTypes[1]):lower(), searchTerm:lower()) == nil then
					var129 = false
				else
					var129 = true
				end
				if not var129 then
					if string.find(v_5.name:lower(), searchTerm:lower()) == nil then
					else
					end
				end
				var129 = true
			end
			if not searchTerm or var129 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if arg1.state.canvasPos.Y <= var123 + EntryFrameHeight_upvr then
					local var130
					if 0 < var130 then
						local function INLINED_3() -- Internal function, doesn't exist in bytecode
							var130 = #actionBindingEntries - i_7
							return var130
						end
						if not arg1.state.reverseSort or not INLINED_3() then
							var130 = i_7
						end
						tbl_7[i_7] = constructEntry_upvr(v_5, var121, var130 + 1)
					end
					if -1 < 0 then
					else
					end
					var124 += 1
				end
			end
		end
		if var124 == 0 then
			local tbl = {}
			i_7 = UDim2.new
			v_5 = 1
			i_7 = i_7(v_5, 0, 1, 0)
			tbl.Size = i_7
			i_7 = "No ActionBindings Found"
			tbl.Text = i_7
			i_7 = LineColor_upvr
			tbl.TextColor3 = i_7
			i_7 = 1
			tbl.BackgroundTransparency = i_7
			i_7 = 1
			tbl.LayoutOrder = i_7
			tbl_7.NoneFound = Roact_upvr.createElement("TextLabel", tbl)
		else
			local tbl_4 = {}
			i_7 = UDim2.new
			v_5 = 1
			i_7 = i_7(v_5, 0, 0, var123)
			tbl_4.Size = i_7
			i_7 = 1
			tbl_4.BackgroundTransparency = i_7
			i_7 = 1
			tbl_4.LayoutOrder = i_7
			tbl_7.WindowingPadding = Roact_upvr.createElement("Frame", tbl_4)
		end
	end
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.size;
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		LayoutOrder = arg1.props.layoutOrder;
	}, {
		Header = constructHeader_upvr(arg1.onSortChanged, var121);
		MainChart = Roact_upvr.createElement("ScrollingFrame", {
			Position = UDim2.new(0, 0, 0, HeaderFrameHeight_upvr);
			Size = UDim2.new(1, 0, 1, -HeaderFrameHeight_upvr);
			CanvasSize = UDim2.new(0, var121, 0, var123 + EntryFrameHeight_upvr);
			ScrollBarThickness = 6;
			BackgroundColor3 = Constants_upvr.Color.BaseGray;
			BackgroundTransparency = 1;
			[Roact_upvr.Ref] = arg1.scrollingRef;
		}, tbl_7);
	})
end
return require(Components.DataConsumer)(any_extend_result1, "ActionBindingsData")