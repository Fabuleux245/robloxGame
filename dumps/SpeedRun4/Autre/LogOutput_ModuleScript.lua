-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:15
-- Luau version 6, Types version 3
-- Time taken: 0.006236 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local TextFrameHeight_upvr = Constants_upvr.LogFormatting.TextFrameHeight
local TextFramePadding_upvr = Constants_upvr.LogFormatting.TextFramePadding
local any_extend_result1 = Roact_upvr.Component:extend("LogOutput")
function any_extend_result1.init(arg1, arg2) -- Line 18
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local initLogOutput = arg2.initLogOutput
	if initLogOutput then
		initLogOutput = arg2.initLogOutput()
	end
	function arg1.onCanvasChange() -- Line 21
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local current_2 = arg1.ref.current
		local var9
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var9 = current_2.CanvasPosition
			return arg1.state.canvasPos ~= var9
		end
		if current_2 and (INLINED() or arg1.state.absSize ~= current_2.AbsoluteSize) then
			if current_2.CanvasPosition.Y + current_2.AbsoluteSize.Y ~= current_2.CanvasSize.Y.Offset then
			else
			end
			local tbl = {
				canvasPos = var9;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.absSize = current_2.AbsoluteSize
			tbl.autoScroll = true
			arg1:setState(tbl)
		end
	end
	arg1.ref = Roact_upvr.createRef()
	arg1.state = {
		logData = initLogOutput;
		absSize = Vector2.new();
		canvasPos = Vector2.new();
		autoScroll = true;
		wordWrap = true;
	}
end
function any_extend_result1.willUpdate(arg1, arg2, arg3) -- Line 51
	arg1._canvasSignal:Disconnect()
	arg1._absSizeSignal:Disconnect()
end
function any_extend_result1.didUpdate(arg1) -- Line 56
	arg1._canvasSignal = arg1.ref.current:GetPropertyChangedSignal("CanvasPosition"):Connect(arg1.onCanvasChange)
	arg1._absSizeSignal = arg1.ref.current:GetPropertyChangedSignal("AbsoluteSize"):Connect(arg1.onCanvasChange)
	if arg1.state.autoScroll then
		local current_3 = arg1.ref.current
		if current_3 then
			current_3.CanvasPosition = Vector2.new(current_3.CanvasPosition.X, arg1.ref.current.CanvasSize.Y.Offset + arg1.ref.current.AbsoluteSize.Y)
		end
	end
end
function any_extend_result1.didMount(arg1) -- Line 72
	--[[ Upvalues[2]:
		[1]: TextFrameHeight_upvr (readonly)
		[2]: TextFramePadding_upvr (readonly)
	]]
	arg1.logConnector = arg1.props.targetSignal:Connect(function(arg1_2) -- Line 73
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: TextFrameHeight_upvr (copied, readonly)
			[3]: TextFramePadding_upvr (copied, readonly)
		]]
		if not arg1.state.autoScroll and arg1_2:getSize() == arg1_2:getMaxSize() then
			local canvasPos = arg1.state.canvasPos
			local Y = canvasPos.Y
			local any_back_result1 = arg1_2:back()
			if any_back_result1 then
				local var18 = arg1.state.absSize.X - TextFrameHeight_upvr
				local var19
				if arg1.state.wordWrap and 0 < var18 then
					var19 = math.ceil(any_back_result1.Dims.Y * math.ceil(any_back_result1.Dims.X / var18))
				end
				Y = math.max(0, Y - var19 - TextFramePadding_upvr)
			end
			local tbl_3 = {}
			tbl_3.logData = arg1_2
			tbl_3.canvasPos = Vector2.new(canvasPos.X, Y)
			arg1:setState(tbl_3)
		else
			local tbl_2 = {}
			tbl_2.logData = arg1_2
			arg1:setState(tbl_2)
		end
	end)
	arg1._canvasSignal = arg1.ref.current:GetPropertyChangedSignal("CanvasPosition"):Connect(arg1.onCanvasChange)
	arg1._absSizeSignal = arg1.ref.current:GetPropertyChangedSignal("AbsoluteSize"):Connect(arg1.onCanvasChange)
	if 0 < arg1.ref.current.AbsoluteSize.Magnitude then
		arg1:setState({
			absSize = arg1.ref.current.AbsoluteSize;
		})
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 117
	arg1.logConnector:Disconnect()
	arg1.logConnector = nil
end
local IconHeight_upvr = Constants_upvr.LogFormatting.IconHeight
local MainWindow_upvr = Constants_upvr.DefaultFontSize.MainWindow
local Log_upvr = Constants_upvr.Font.Log
local MaxStringSize_upvr = Constants_upvr.LogFormatting.MaxStringSize
local TextService_upvr = game:GetService("TextService")
function any_extend_result1.render(arg1) -- Line 122
	--[[ Upvalues[9]:
		[1]: TextFrameHeight_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: IconHeight_upvr (readonly)
		[5]: MainWindow_upvr (readonly)
		[6]: Log_upvr (readonly)
		[7]: TextFramePadding_upvr (readonly)
		[8]: MaxStringSize_upvr (readonly)
		[9]: TextService_upvr (readonly)
	]]
	local logData = arg1.state.logData
	local absSize = arg1.state.absSize
	local wordWrap = arg1.state.wordWrap
	local module_2 = {}
	local var32
	local var33
	if arg1.ref.current and logData then
		var33 = absSize.X
		local var34 = var33 - TextFrameHeight_upvr
		var33 = -1
		local any_iterator_result1 = logData:iterator()
		local any_next_result1 = any_iterator_result1:next()
		while any_next_result1 do
			local CharCount = any_next_result1.CharCount
			local var39
			if wordWrap and 0 < var34 then
				var39 = math.ceil(any_next_result1.Dims.Y * math.ceil(any_next_result1.Dims.X / var34))
			end
			local var40 = 1 + 1
			if arg1.state.canvasPos.Y <= var32 + var39 then
				if 0 < absSize.Y then
					local Text = Constants_upvr.Color.Text
					local var42 = ""
					if any_next_result1.Type == Enum.MessageType.MessageOutput.Value then
						Text = Constants_upvr.Color.Text
					elseif any_next_result1.Type == Enum.MessageType.MessageInfo.Value then
						Text = Constants_upvr.Color.HighlightBlue
						var42 = Constants_upvr.Image.Info
					elseif any_next_result1.Type == Enum.MessageType.MessageWarning.Value then
						Text = Constants_upvr.Color.WarningYellow
						var42 = Constants_upvr.Image.Warning
					elseif any_next_result1.Type == Enum.MessageType.MessageError.Value then
						Text = Constants_upvr.Color.ErrorRed
						var42 = Constants_upvr.Image.Error
					end
					module_2[var40] = Roact_upvr.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, var39);
						BackgroundTransparency = 1;
						LayoutOrder = var40;
					}, {
						image = Roact_upvr.createElement("ImageLabel", {
							Image = var42;
							Size = UDim2.new(0, IconHeight_upvr, 0, IconHeight_upvr);
							Position = UDim2.new(0, IconHeight_upvr / 4, 0.5, -IconHeight_upvr / 2);
							BackgroundTransparency = 1;
						});
						msg = Roact_upvr.createElement("TextLabel", {
							Text = any_next_result1.Message;
							TextColor3 = Text;
							TextSize = MainWindow_upvr;
							Font = Log_upvr;
							TextXAlignment = Enum.TextXAlignment.Left;
							TextWrapped = wordWrap;
							Size = UDim2.new(1, 0, 0, var39);
							Position = UDim2.new(0, TextFrameHeight_upvr, 0, 0);
							BackgroundTransparency = 1;
						});
					})
				end
				if var33 < 0 then
					var33 = var32
				else
				end
			end
			var32 = var32 + var39 + TextFramePadding_upvr
			if CharCount < MaxStringSize_upvr then
			else
				local formatted = string.format(" -- Could not display entire %d character message because message exceeds max displayable length of %d", CharCount, MaxStringSize_upvr)
				local tbl_4 = {
					Message = formatted;
					CharCount = #formatted;
					Type = any_iterator_result1:next().Type;
					Dims = TextService_upvr:GetTextSize(formatted, MainWindow_upvr, Log_upvr, Vector2.new());
				}
			end
		end
		module_2.UIListLayout = Roact_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, TextFramePadding_upvr);
		})
		module_2.WindowingPadding = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, var33);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		})
	end
	local module = {
		Size = arg1.props.size;
		BackgroundTransparency = 1;
		VerticalScrollBarInset = 1;
		ScrollBarThickness = 6;
		CanvasSize = UDim2.new(0, 0, 0, var32);
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.CanvasPosition = arg1.state.canvasPos
	module.LayoutOrder = arg1.props.layoutOrder
	module[Roact_upvr.Ref] = arg1.ref
	return Roact_upvr.createElement("ScrollingFrame", module, module_2)
end
return any_extend_result1