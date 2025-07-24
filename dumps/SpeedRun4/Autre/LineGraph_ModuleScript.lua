-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:11
-- Luau version 6, Types version 3
-- Time taken: 0.011364 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants = require(script.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.Component:extend("LineGraph")
function any_extend_result1.init(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	function arg1.onGraphInputChanged(arg1_2, arg2) -- Line 25
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseMovement and not arg1.state.holdPos then
			arg1:setState({
				inputPosition = arg2.Position;
			})
		end
	end
	function arg1.onGraphInputEnded(arg1_3, arg2) -- Line 35
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 8. Error Block 3 start (CF ANALYSIS FAILED)
		arg1:setState({
			inputPosition = false;
		})
		do
			return
		end
		-- KONSTANTERROR: [12] 8. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 15. Error Block 7 start (CF ANALYSIS FAILED)
		if arg2.UserInputType == Enum.UserInputType.MouseButton1 then
			arg1:setState({
				holdPos = not arg1.state.holdPos;
			})
		end
		-- KONSTANTERROR: [21] 15. Error Block 7 end (CF ANALYSIS FAILED)
	end
	arg1.graphRef = Roact_upvr.createRef()
	arg1.state = {
		selectedTimeStamps = {};
	}
end
function any_extend_result1.didUpdate(arg1) -- Line 55
	if arg1.state.absGraphSize ~= arg1.graphRef.current.AbsoluteSize then
		arg1:setState({
			absGraphSize = arg1.graphRef.current.AbsoluteSize;
			absGraphPos = arg1.graphRef.current.AbsolutePosition;
		})
	end
end
function any_extend_result1.didMount(arg1) -- Line 67
	arg1:setState({
		absGraphSize = arg1.graphRef.current.AbsoluteSize;
		absGraphPos = arg1.graphRef.current.AbsolutePosition;
	})
end
local InnerScaleY_upvr = Constants.Graph.InnerScaleY
local LineWidth_upvr = Constants.GeneralFormatting.LineWidth
local InnerPaddingY_upvr = Constants.Graph.InnerPaddingY
local HighlightBlue_upvr = Constants.Color.HighlightBlue
local PointWidth_upvr = Constants.Graph.PointWidth
local PointOffset_upvr = Constants.Graph.PointOffset
local LineGraphHoverDisplay_upvr = require(script.Parent.LineGraphHoverDisplay)
local TextPadding_upvr = Constants.Graph.TextPadding
local LineColor_upvr = Constants.GeneralFormatting.LineColor
local Text_upvr = Constants.Color.Text
local Padding_upvr = Constants.Graph.Padding
local Scale_upvr = Constants.Graph.Scale
function any_extend_result1.render(arg1) -- Line 77
	--[[ Upvalues[13]:
		[1]: InnerScaleY_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LineWidth_upvr (readonly)
		[4]: InnerPaddingY_upvr (readonly)
		[5]: HighlightBlue_upvr (readonly)
		[6]: PointWidth_upvr (readonly)
		[7]: PointOffset_upvr (readonly)
		[8]: LineGraphHoverDisplay_upvr (readonly)
		[9]: TextPadding_upvr (readonly)
		[10]: LineColor_upvr (readonly)
		[11]: Text_upvr (readonly)
		[12]: Padding_upvr (readonly)
		[13]: Scale_upvr (readonly)
	]]
	local graphData = arg1.props.graphData
	local getX = arg1.props.getX
	local getY_2 = arg1.props.getY
	local stringFormatX_2 = arg1.props.stringFormatX
	local stringFormatY = arg1.props.stringFormatY
	local inputPosition_2 = arg1.state.inputPosition
	local absGraphSize = arg1.state.absGraphSize
	local getX_result1_2 = getX(graphData:back())
	local var77_result1 = getX(graphData:front())
	local minY_2 = arg1.props.minY
	local var86
	local tbl_10 = {}
	local var88
	if absGraphSize then
		local tbl_12 = {}
		local any_next_result1 = graphData:iterator():next()
		local var92
		while any_next_result1 do
			local var93 = getX_result1_2 - var77_result1
			local function INLINED_5() -- Internal function, doesn't exist in bytecode
				var92 = (getX(any_next_result1) - var77_result1) / var93
				return var92
			end
			if 0 >= var93 or not INLINED_5() then
				var92 = 0
			end
			local var94 = arg1.props.maxY - minY_2
			local function INLINED_6() -- Internal function, doesn't exist in bytecode
				var88 = (getY_2(any_next_result1) - minY_2) / var94
				return var88
			end
			if 0 >= var94 or not INLINED_6() then
				var88 = 1
			end
			table.insert(tbl_12, {
				X = var92;
				Y = var88;
				data = any_next_result1;
			})
		end
		for i = 2, #tbl_12 do
			var88 = tbl_12[i]
			var88 = absGraphSize.X
			var92 = var88.X * var88
			var88 = tbl_12[i].Y * absGraphSize.Y
			local var96 = var88 * InnerScaleY_upvr
			var88 = tbl_12[i - 1].X * absGraphSize.X
			local var97 = tbl_12[i - 1].Y * absGraphSize.Y * InnerScaleY_upvr
			if var92 ~= var88 then
				local var98 = var92 - var88
				local var99 = var96 - var97
				local squareroot = math.sqrt(var98 * var98 + var99 * var99)
				table.insert(tbl_10, Roact_upvr.createElement("Frame", {
					Size = UDim2.new(0, squareroot, 0, LineWidth_upvr);
					Position = UDim2.new(0, (var92 + var88) / 2 - squareroot / 2, 1 - InnerPaddingY_upvr, -((var96 + var97) / 2));
					BackgroundColor3 = HighlightBlue_upvr;
					BorderSizePixel = 0;
					Rotation = -math.deg(math.atan2(var99, var98));
				}))
				table.insert(tbl_10, Roact_upvr.createElement("Frame", {
					Size = UDim2.new(0, PointWidth_upvr, 0, PointWidth_upvr);
					Position = UDim2.new(0, var92, 1 - InnerPaddingY_upvr, -var96 - PointOffset_upvr);
					BackgroundColor3 = HighlightBlue_upvr;
					BorderSizePixel = 0;
				}))
				if inputPosition_2 then
					local var103 = inputPosition_2.X - arg1.state.absGraphPos.X
					if var103 < var92 and var88 < var103 then
						local getX_result1 = getX(tbl_12[i - 1].data)
						local var78_result1_2 = getY_2(tbl_12[i - 1].data)
						local var106 = (var103 - var88) / var98
						var86 = var97 + var99 * var106
						tbl_10.HoverDetails = Roact_upvr.createElement(LineGraphHoverDisplay_upvr, {
							hoverLineX = var103;
							hoverLineY = var86;
							hoverValX = (getX(tbl_12[i].data) - getX_result1) * var106 + getX_result1;
							hoverValY = (getY_2(tbl_12[i].data) - var78_result1_2) * var106 + var78_result1_2;
							stringFormatX = stringFormatX_2;
							stringFormatY = stringFormatY;
						})
					end
				end
			end
		end
		if 0 < #tbl_12 then
			var92 = tbl_12[#tbl_12]
			i = var92.Y
			var92 = absGraphSize.Y
			i = InnerScaleY_upvr
			local var108 = i * var92 * i
			var92 = tbl_12[#tbl_12]
			i = var92.data
			local var78_result1 = getY_2(i)
			var92 = var86
			if var92 then
				var88 = var108 - var86
				var88 = 10
				if math.abs(var88) >= var88 then
					var92 = false
				else
					var92 = true
				end
			end
			i = not var92
			if var86 then
				var88 = var86
				var88 = 10
				if math.abs(var88) >= var88 then
				else
				end
			end
			var88 = true
			if not var88 then
				if math.abs(var108) >= 10 then
				else
				end
			end
			local var110
			if i then
				local tbl_23 = {}
				var110 = UDim2.new(1, TextPadding_upvr, 0, LineWidth_upvr)
				tbl_23.Size = var110
				var110 = UDim2.new(0, -TextPadding_upvr, 1 - InnerPaddingY_upvr, -var108)
				tbl_23.Position = var110
				var110 = LineColor_upvr
				tbl_23.BackgroundColor3 = var110
				var110 = 0.5
				tbl_23.BackgroundTransparency = var110
				var110 = 0
				tbl_23.BorderSizePixel = var110
				tbl_10.LatestEntryLine = Roact_upvr.createElement("Frame", tbl_23)
				local tbl_15 = {}
				local function INLINED_7() -- Internal function, doesn't exist in bytecode
					var110 = stringFormatY(var78_result1)
					return var110
				end
				if not stringFormatY or not INLINED_7() then
					var110 = var78_result1
				end
				tbl_15.Text = var110
				var110 = Text_upvr
				tbl_15.TextColor3 = var110
				var110 = Enum.TextXAlignment.Right
				tbl_15.TextXAlignment = var110
				var110 = UDim2.new(0, -TextPadding_upvr - 2, 1 - InnerPaddingY_upvr, -var108)
				tbl_15.Position = var110
				var110 = 1
				tbl_15.BackgroundTransparency = var110
				tbl_10.LatestEntryText = Roact_upvr.createElement("TextLabel", tbl_15)
			end
			if not true then
				local tbl_7 = {}
				local function INLINED_8() -- Internal function, doesn't exist in bytecode
					var110 = stringFormatY(minY_2)
					return var110
				end
				if not stringFormatY or not INLINED_8() then
					var110 = minY_2
				end
				tbl_7.Text = var110
				var110 = Text_upvr
				tbl_7.TextColor3 = var110
				var110 = Enum.TextXAlignment.Right
				tbl_7.TextXAlignment = var110
				var110 = UDim2.new(0, -TextPadding_upvr - 2, 1 - InnerPaddingY_upvr, 0)
				tbl_7.Position = var110
				var110 = 1
				tbl_7.BackgroundTransparency = var110
				tbl_10.AxisTextY0 = Roact_upvr.createElement("TextLabel", tbl_7)
			end
			tbl_10.AxisX = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LineWidth_upvr);
				Position = UDim2.new(0, 0, 1, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			})
			tbl_10.AxisY = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, LineWidth_upvr, 1, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			})
		end
	end
	local var116 = 2 * TextPadding_upvr + 2
	local module_2 = {
		name = Roact_upvr.createElement("TextLabel", {
			Text = arg1.props.axisLabelY;
			TextColor3 = Text_upvr;
			TextXAlignment = Enum.TextXAlignment.Left;
			Position = UDim2.new(Padding_upvr, 0, Padding_upvr, -TextPadding_upvr);
			BackgroundTransparency = 1;
		});
	}
	local tbl_14 = {}
	if not stringFormatX_2 or not stringFormatX_2(var77_result1) then
	end
	tbl_14.Text = var77_result1
	tbl_14.TextColor3 = Text_upvr
	tbl_14.TextXAlignment = Enum.TextXAlignment.Center
	tbl_14.Position = UDim2.new(Padding_upvr, 0, Padding_upvr + Scale_upvr, var116)
	tbl_14.BackgroundTransparency = 1
	module_2.minX = Roact_upvr.createElement("TextLabel", tbl_14)
	local tbl_21 = {}
	if not stringFormatX_2 or not stringFormatX_2(getX_result1_2) then
	end
	tbl_21.Text = getX_result1_2
	tbl_21.TextColor3 = Text_upvr
	tbl_21.TextXAlignment = Enum.TextXAlignment.Center
	tbl_21.Position = UDim2.new(Padding_upvr + Scale_upvr, 0, Padding_upvr + Scale_upvr, var116)
	tbl_21.BackgroundTransparency = 1
	module_2.maxX = Roact_upvr.createElement("TextLabel", tbl_21)
	module_2.axisLabelX = Roact_upvr.createElement("TextLabel", {
		Text = arg1.props.axisLabelX;
		TextColor3 = Text_upvr;
		TextXAlignment = Enum.TextXAlignment.Center;
		Position = UDim2.new(0.5, 0, Padding_upvr + Scale_upvr, var116);
		BackgroundTransparency = 1;
	})
	module_2.graph = Roact_upvr.createElement("Frame", {
		Position = UDim2.new(Padding_upvr, 0, Padding_upvr, 0);
		Size = UDim2.new(Scale_upvr, 0, Scale_upvr, 0);
		BackgroundTransparency = 1;
		[Roact_upvr.Ref] = arg1.graphRef;
		[Roact_upvr.Event.InputChanged] = arg1.onGraphInputChanged;
		[Roact_upvr.Event.InputEnded] = arg1.onGraphInputEnded;
	}, tbl_10)
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.size;
		Position = arg1.props.pos;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.layoutOrder;
	}, module_2)
end
return any_extend_result1