-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:29
-- Luau version 6, Types version 3
-- Time taken: 0.014002 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local ChartCellWidths = Constants_upvr.NetworkFormatting.ChartCellWidths
local CellPadding = Constants_upvr.NetworkFormatting.CellPadding
local HeaderFrameHeight_upvr = Constants_upvr.NetworkFormatting.HeaderFrameHeight
local EntryFrameHeight_upvr = Constants_upvr.NetworkFormatting.EntryFrameHeight
local var31 = 0
local _, pairs_result2, pairs_result3 = pairs(ChartCellWidths)
local var35
for _, v in var35, pairs_result2, pairs_result3 do
	var31 += v
end
var35 = 0
local tbl_6_upvr = {}
local tbl_16_upvr = {}
for _, v_2 in ipairs(ChartCellWidths) do
	table.insert({}, UDim2.new(0, var35 + CellPadding, 0, 0))
	table.insert(tbl_6_upvr, UDim2.new(0, v_2 - CellPadding, 0, HeaderFrameHeight_upvr))
	table.insert(tbl_16_upvr, UDim2.new(0, v_2 - CellPadding, 0, EntryFrameHeight_upvr))
	var35 += v_2
	local var42_upvr
end
table.insert(var42_upvr, UDim2.new(0, var35 + CellPadding, 0, 0))
table.insert(tbl_6_upvr, UDim2.new(1, -var31 - CellPadding, 0, HeaderFrameHeight_upvr))
table.insert(tbl_16_upvr, UDim2.new(1, -var31 - CellPadding, 0, EntryFrameHeight_upvr))
for i_3, v_3 in ipairs(var42_upvr) do
	({})[i_3] = UDim2.new(v_3.X.Scale, v_3.X.Offset - CellPadding, v_3.Y.Scale, v_3.Y.Offset)
	local var47_upvr
end
local any_extend_result1 = Roact_upvr.Component:extend("NetworkChart")
function any_extend_result1.init(arg1) -- Line 57
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	function arg1.getOnExpandEntry(arg1_2) -- Line 58
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return function(arg1_3, arg2) -- Line 59
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			local tbl_19 = {}
			local var52 = false
			if arg1.state.expandIndex ~= arg1_2 then
				var52 = arg1_2
			end
			tbl_19.expandIndex = var52
			arg1:setState(tbl_19)
		end
	end
	function arg1.onCanvasPosChanged() -- Line 66
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local CanvasPosition = arg1.scrollingRef.current.CanvasPosition
		if arg1.state.canvasPos ~= CanvasPosition then
			arg1:setState({
				absScrollSize = arg1.scrollingRef.current.AbsoluteSize;
				canvasPos = CanvasPosition;
			})
		end
	end
	arg1.ref = Roact_upvr.createRef()
	arg1.scrollingRef = Roact_upvr.createRef()
	arg1.state = {
		expandIndex = false;
	}
end
function any_extend_result1.willUpdate(arg1) -- Line 84
	if arg1.canvasPosConnector then
		arg1.canvasPosConnector:Disconnect()
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 90
	if arg1.scrollingRef.current then
		arg1.canvasPosConnector = arg1.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition"):Connect(arg1.onCanvasPosChanged)
		local AbsoluteSize = arg1.scrollingRef.current.AbsoluteSize
		if arg1.state.absScrollSize ~= AbsoluteSize then
			arg1:setState({
				absScrollSize = AbsoluteSize;
			})
		end
	end
end
function any_extend_result1.didMount(arg1) -- Line 104
	if arg1.scrollingRef.current then
		arg1.canvasPosConnector = arg1.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition"):Connect(arg1.onCanvasPosChanged)
		arg1:setState({
			absScrollSize = arg1.scrollingRef.current.AbsoluteSize;
			canvasPos = arg1.scrollingRef.current.CanvasPosition;
		})
	end
end
local ChartHeaderNames_upvr = Constants_upvr.NetworkFormatting.ChartHeaderNames
local HeaderButton_upvr = require(script.Parent.Parent.Parent.Components.HeaderButton)
local LineWidth_upvr = Constants_upvr.GeneralFormatting.LineWidth
local LineColor_upvr = Constants_upvr.GeneralFormatting.LineColor
local ResponseStrHeight_upvr = Constants_upvr.NetworkFormatting.ResponseStrHeight
local ResponseWidthRatio_upvr = Constants_upvr.NetworkFormatting.ResponseWidthRatio
local TextService_upvr = game:GetService("TextService")
local MainWindow_upvr_2 = Constants_upvr.DefaultFontSize.MainWindow
local MainWindow_upvr = Constants_upvr.Font.MainWindow
local NetworkChartEntry_upvr = require(script.Parent.NetworkChartEntry)
function any_extend_result1.render(arg1) -- Line 116
	--[[ Upvalues[18]:
		[1]: ChartHeaderNames_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: HeaderButton_upvr (readonly)
		[4]: tbl_6_upvr (readonly)
		[5]: var42_upvr (readonly)
		[6]: var47_upvr (readonly)
		[7]: LineWidth_upvr (readonly)
		[8]: HeaderFrameHeight_upvr (readonly)
		[9]: LineColor_upvr (readonly)
		[10]: EntryFrameHeight_upvr (readonly)
		[11]: ResponseStrHeight_upvr (readonly)
		[12]: ResponseWidthRatio_upvr (readonly)
		[13]: TextService_upvr (readonly)
		[14]: MainWindow_upvr_2 (readonly)
		[15]: MainWindow_upvr (readonly)
		[16]: NetworkChartEntry_upvr (readonly)
		[17]: tbl_16_upvr (readonly)
		[18]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local httpEntryList_2 = arg1.props.httpEntryList
	if not httpEntryList_2 then
		httpEntryList_2 = {}
	end
	local chartHeight = arg1.props.chartHeight
	local searchTerm_2 = arg1.props.searchTerm
	local canvasPos = arg1.state.canvasPos
	for i_4, v_4 in ipairs(ChartHeaderNames_upvr) do
		({})[v_4] = Roact_upvr.createElement(HeaderButton_upvr, {
			text = v_4;
			size = tbl_6_upvr[i_4];
			pos = var42_upvr[i_4];
			sortfunction = arg1.props.onSortChanged;
		})
		local _
	end
	for i_5 = 2, #var47_upvr do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({})[string.format("VerticalLine_%d", i_5)] = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, LineWidth_upvr, 0, HeaderFrameHeight_upvr);
			Position = var47_upvr[i_5];
			BackgroundColor3 = LineColor_upvr;
			BorderSizePixel = 0;
		})
		local var157
	end
	local tbl_10 = {}
	local var159 = 0
	tbl_10.UIListLayout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	local var162
	if canvasPos and arg1.state.absScrollSize then
		for i_6, v_5 in ipairs(httpEntryList_2) do
			local var166
			if searchTerm_2 ~= "" then
				local var167 = true
				if string.find(v_5.RequestType:lower(), searchTerm_2:lower()) == nil then
					if string.find(v_5.Url:lower(), searchTerm_2:lower()) == nil then
						var167 = false
					else
						var167 = true
					end
				end
				var166 = var167
			end
			local var168
			if var168 ~= "Default" and var166 then
				var162 += 1
				if arg1.state.expandIndex ~= v_5.Num then
					var168 = false
				else
					var168 = true
				end
				if var168 then
					if arg1.ref.current then
						local var169 = (EntryFrameHeight_upvr + ResponseStrHeight_upvr) + (ResponseStrHeight_upvr + TextService_upvr:GetTextSize(v_5.Response, MainWindow_upvr_2, MainWindow_upvr, Vector2.new(arg1.ref.current.AbsoluteSize.X * ResponseWidthRatio_upvr, 100000000)).Y)
					end
				end
				if canvasPos.Y <= var159 + var169 then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					local var170
					if 0 < var170 then
						local function INLINED_2() -- Internal function, doesn't exist in bytecode
							var170 = #httpEntryList_2 - i_6
							return var170
						end
						if not arg1.props.reverseSort or not INLINED_2() then
							var170 = i_6
						end
						local tbl_5 = {
							size = UDim2.new(1, 0, 0, var169);
							entry = v_5;
							entryCellSize = tbl_16_upvr;
							cellOffset = var42_upvr;
							verticalOffsets = var47_upvr;
							showResponse = var168;
						}
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						tbl_5.responseBodyHeight = ResponseStrHeight_upvr + TextService_upvr:GetTextSize(v_5.Response, MainWindow_upvr_2, MainWindow_upvr, Vector2.new(arg1.ref.current.AbsoluteSize.X * ResponseWidthRatio_upvr, 100000000)).Y
						tbl_5.layoutOrder = var170 + 1
						tbl_5.onButtonPress = arg1.getOnExpandEntry(v_5.Num)
						tbl_10[i_6] = Roact_upvr.createElement(NetworkChartEntry_upvr, tbl_5)
					end
					if -1 < 0 then
					else
					end
				end
			end
		end
		if 0 < var162 then
			local tbl_11 = {}
			i_6 = UDim2.new
			v_5 = 1
			var166 = 0
			var168 = 0
			i_6 = i_6(v_5, var166, var168, var159)
			tbl_11.Size = i_6
			i_6 = 1
			tbl_11.BackgroundTransparency = i_6
			i_6 = 1
			tbl_11.LayoutOrder = i_6
			tbl_10.WindowingPadding = Roact_upvr.createElement("Frame", tbl_11)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if #httpEntryList_2 == 0 or var162 == 0 then
		local tbl_13 = {}
		var168 = 0
		tbl_13.Size = UDim2.new(1, 0, var168, chartHeight)
		tbl_13.Text = "No Network Entries Found"
		tbl_13.TextColor3 = Constants_upvr.Color.Text
		tbl_13.BackgroundTransparency = 1
		tbl_10["NONE FOUND"] = Roact_upvr.createElement("TextLabel", tbl_13)
	end
	local module = {}
	var168 = 0
	module.Size = UDim2.new(1, 0, var168, chartHeight)
	module.BackgroundTransparency = 1
	module.ClipsDescendants = true
	module.LayoutOrder = arg1.props.layoutOrder
	module[Roact_upvr.Ref] = arg1.ref
	local module_2 = {}
	var168 = {}
	local var176 = var168
	var176.FillDirection = Enum.FillDirection.Vertical
	var176.HorizontalAlignment = Enum.HorizontalAlignment.Left
	var176.VerticalAlignment = Enum.VerticalAlignment.Top
	var176.SortOrder = Enum.SortOrder.LayoutOrder
	module_2.Layout = Roact_upvr.createElement("UIListLayout", var176)
	var176 = {}
	local var177 = var176
	var177.Size = UDim2.new(1, 0, 0, HeaderFrameHeight_upvr)
	var177.BackgroundTransparency = 1
	var177.LayoutOrder = 1
	module_2.Header = Roact_upvr.createElement("Frame", var177, var157)
	var177 = {}
	local var178 = var177
	var178.Size = UDim2.new(1, 0, 0, LineWidth_upvr)
	var178.BackgroundColor3 = LineColor_upvr
	var178.BorderSizePixel = 0
	var178.BackgroundTransparency = 0
	var178.LayoutOrder = 2
	module_2.HorizontalLine_1 = Roact_upvr.createElement("Frame", var178)
	var178 = {}
	local var179 = var178
	var179.Size = UDim2.new(1, 0, 1, -HeaderFrameHeight_upvr)
	var179.CanvasSize = UDim2.new(0, arg1.props.width, 0, var159 + var169)
	var179.ScrollBarThickness = 6
	var179.BackgroundTransparency = 1
	var179.LayoutOrder = 3
	var179[Roact_upvr.Ref] = arg1.scrollingRef
	module_2.scrollingFrameEntries = Roact_upvr.createElement("ScrollingFrame", var179, tbl_10)
	return Roact_upvr.createElement("Frame", module, module_2)
end
return any_extend_result1