-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:01
-- Luau version 6, Types version 3
-- Time taken: 0.013963 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Otter_upvr = InGameMenuDependencies.Otter
local tbl_7_upvr = {
	frequency = 5;
}
local function isGamepad_upvr(arg1) -- Line 43, Named "isGamepad"
	local var14 = true
	if arg1 ~= Enum.UserInputType.Gamepad1 then
		var14 = true
		if arg1 ~= Enum.UserInputType.Gamepad2 then
			var14 = true
			if arg1 ~= Enum.UserInputType.Gamepad3 then
				var14 = true
				if arg1 ~= Enum.UserInputType.Gamepad4 then
					var14 = true
					if arg1 ~= Enum.UserInputType.Gamepad5 then
						var14 = true
						if arg1 ~= Enum.UserInputType.Gamepad6 then
							var14 = true
							if arg1 ~= Enum.UserInputType.Gamepad7 then
								if arg1 ~= Enum.UserInputType.Gamepad8 then
									var14 = false
								else
									var14 = true
								end
							end
						end
					end
				end
			end
		end
	end
	return var14
end
local module_3_upvr = {}
local function getInputObjects_upvr() -- Line 56, Named "getInputObjects"
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: isGamepad_upvr (readonly)
		[3]: module_3_upvr (readonly)
	]]
	local any_GetLastInputType_result1 = UserInputService_upvr:GetLastInputType()
	if not isGamepad_upvr(any_GetLastInputType_result1) then
		return nil
	end
	if module_3_upvr[any_GetLastInputType_result1] == nil then
		for _, v in ipairs(UserInputService_upvr:GetGamepadState(any_GetLastInputType_result1)) do
			({})[v.KeyCode] = v
			local var25
		end
		module_3_upvr[any_GetLastInputType_result1] = var25
	end
	return module_3_upvr[any_GetLastInputType_result1]
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("Slider")
any_extend_result1.validateProps = t.intersection(t.strictInterface({
	min = t.number;
	max = t.number;
	stepInterval = t.numberPositive;
	value = t.number;
	valueChanged = t.callback;
	disabled = t.optional(t.boolean);
	width = t.optional(t.UDim);
	AnchorPoint = t.optional(t.Vector2);
	LayoutOrder = t.optional(t.integer);
	Position = t.optional(t.UDim2);
	canCaptureFocus = t.optional(t.boolean);
	isMenuOpen = t.optional(t.boolean);
	onSelectionLost = t.optional(t.callback);
	onSelectionGained = t.optional(t.callback);
	NextSelectionRight = t.optional(t.table);
	sliderDotRef = t.optional(t.union(t.callback, t.table));
}), function(arg1) -- Line 115
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return false, "min must be less than or equal to max"
	end
	-- KONSTANTERROR: [6] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 3 end (CF ANALYSIS FAILED)
end)
any_extend_result1.defaultProps = {
	width = UDim.new(1, 0);
	disabled = false;
}
function any_extend_result1.init(arg1) -- Line 133
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
	]]
	arg1.state = {
		dragging = false;
		hovering = false;
		entryMode = false;
	}
	arg1.totalMoveTime = 0
	arg1.isFirstMove = true
	arg1.unhandledTime = 0
	arg1.rootButtonRef = Roact_upvr.createRef()
	arg1.hoverRef = Roact_upvr.createRef()
	arg1.hoverMotor = Otter_upvr.createSingleMotor(0)
	arg1.hoverMotor:onStep(function(arg1_2) -- Line 148
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local current_4 = arg1.hoverRef.current
		if current_4 ~= nil then
			current_4.Size = UDim2.new(0, arg1_2, 0, arg1_2)
		end
	end)
	function arg1.onInputBegan(arg1_3, arg2) -- Line 156
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.disabled then
		else
			local UserInputType_3 = arg2.UserInputType
			if UserInputType_3 ~= Enum.UserInputType.MouseButton1 and UserInputType_3 ~= Enum.UserInputType.Touch then return end
			arg1:processDrag(arg2.Position.X)
			arg1:startListeningForDrag()
		end
	end
end
local FocusHandler_upvr = require(script.Parent.Connection.FocusHandler)
local GuiService_upvr = game:GetService("GuiService")
local RunService_upvr = game:GetService("RunService")
local ContextActionService_upvr = game:GetService("ContextActionService")
function any_extend_result1.renderFocusHandler(arg1) -- Line 173
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: FocusHandler_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: getInputObjects_upvr (readonly)
		[6]: ContextActionService_upvr (readonly)
	]]
	local module = {}
	local entryMode = arg1.state.entryMode
	if entryMode then
		entryMode = arg1.props.canCaptureFocus
	end
	module.isFocused = entryMode
	function module.didFocus() -- Line 177
		--[[ Upvalues[5]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: RunService_upvr (copied, readonly)
			[4]: getInputObjects_upvr (copied, readonly)
			[5]: ContextActionService_upvr (copied, readonly)
		]]
		GuiService_upvr.CoreGuiNavigationEnabled = false
		arg1.joystickListener = RunService_upvr.Heartbeat:Connect(function(arg1_4) -- Line 181
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: getInputObjects_upvr (copied, readonly)
			]]
			arg1:onMoveStep(arg1_4, getInputObjects_upvr())
		end)
		local value_upvr = arg1.props.value
		ContextActionService_upvr:BindCoreAction("LeaveEntryMode", function(arg1_5, arg2) -- Line 190
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: value_upvr (readonly)
			]]
			if arg2 == Enum.UserInputState.End then
				arg1:setState({
					entryMode = false;
				})
				arg1.props.valueChanged(value_upvr)
				return Enum.ContextActionResult.Sink
			end
			return Enum.ContextActionResult.Pass
		end, false, Enum.KeyCode.ButtonB)
	end
	function module.didBlur() -- Line 200
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: ContextActionService_upvr (copied, readonly)
		]]
		arg1.joystickListener:Disconnect()
		GuiService_upvr.CoreGuiNavigationEnabled = true
		ContextActionService_upvr:UnbindCoreAction("LeaveEntryMode")
		arg1:setState({
			entryMode = false;
		})
	end
	return Roact_upvr.createElement(FocusHandler_upvr, module) or nil
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local AssetImage_upvr = require(script.Parent.AssetImage)
local divideTransparency_upvr = require(script.Parent.Parent.Utility.divideTransparency)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 209
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetButton_upvr (readonly)
		[4]: AssetImage_upvr (readonly)
		[5]: divideTransparency_upvr (readonly)
		[6]: CursorKind_upvr (readonly)
	]]
	local min_2 = arg1.props.min
	local var51_upvr = (arg1.props.value - min_2) / (arg1.props.max - min_2)
	local entryMode_upvr = arg1.state.entryMode
	if entryMode_upvr then
		entryMode_upvr = arg1.props.canCaptureFocus
	end
	local var54_upvr = var51_upvr / 2
	local absolute_upvr = math.abs(var51_upvr)
	return withStyle_upvr(function(arg1_6) -- Line 220
		--[[ Upvalues[11]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetButton_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: AssetImage_upvr (copied, readonly)
			[5]: divideTransparency_upvr (copied, readonly)
			[6]: var54_upvr (readonly)
			[7]: absolute_upvr (readonly)
			[8]: var51_upvr (readonly)
			[9]: arg2 (readonly)
			[10]: entryMode_upvr (readonly)
			[11]: CursorKind_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module_2 = {
			FocusHandler = arg1:renderFocusHandler();
		}
		local tbl_5 = {}
		local tbl_2 = {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			imageKey = "SliderCircle";
			ImageColor3 = arg1_6.Theme.ContextualPrimaryDefault.Color;
		}
		local ContextualPrimaryDefault = arg1_6.Theme.ContextualPrimaryDefault
		local var62
		if arg1.props.disabled then
			ContextualPrimaryDefault = 2
		else
			ContextualPrimaryDefault = 1
		end
		var62 = var62(ContextualPrimaryDefault.Transparency, ContextualPrimaryDefault)
		tbl_2.ImageTransparency = var62
		var62 = UDim2.new(var54_upvr, 0, 0.5, 0)
		tbl_2.Position = var62
		var62 = UDim2.new(absolute_upvr, 0, 1, 0)
		tbl_2.Size = var62
		tbl_5.FilledGutter = Roact_upvr.createElement(AssetImage_upvr.Label, tbl_2)
		module_2.Gutter = Roact_upvr.createElement(AssetImage_upvr.Label, {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			imageKey = "SliderCircle";
			ImageColor3 = arg1_6.Theme.UIMuted.Color;
			ImageTransparency = arg1_6.Theme.UIMuted.Transparency;
			Position = UDim2.new(0.5, 0, 0.5, 0);
			Size = UDim2.new(1, 0, 0, 4);
		}, tbl_5)
		local tbl = {}
		var62 = 0
		tbl.Size = UDim2.new(1, -12, 1, var62)
		tbl.BackgroundTransparency = 1
		tbl.AnchorPoint = Vector2.new(0.5, 0.5)
		var62 = 0
		tbl.Position = UDim2.new(0.5, 0, 0.5, var62)
		tbl.ZIndex = 4
		tbl.Selectable = false
		local tbl_3 = {}
		local tbl_4 = {}
		var62 = Vector2.new(0.5, 0.5)
		tbl_4.AnchorPoint = var62
		var62 = 1
		tbl_4.BackgroundTransparency = var62
		var62 = "SliderButton"
		tbl_4.imageKey = var62
		var62 = UDim2.new(var51_upvr, 0, 0.5, 0)
		tbl_4.Position = var62
		var62 = UDim2.new(0, 42, 0, 42)
		tbl_4.Size = var62
		if arg1.props.disabled then
			var62 = 0.5
		else
			var62 = 0
		end
		tbl_4.ImageTransparency = var62
		var62 = 2
		tbl_4.ZIndex = var62
		var62 = arg2
		if not entryMode_upvr or not CursorKind_upvr.SelectedKnob then
		end
		var62 = var62(CursorKind_upvr.UnselectedKnob)
		tbl_4.SelectionImageObject = var62
		var62 = Roact_upvr.Event.Activated
		tbl_4[var62] = function(arg1_7, arg2_2) -- Line 274
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			if arg2_2.KeyCode == Enum.KeyCode.ButtonA then
				arg1:setState({
					entryMode = not arg1.state.entryMode;
				})
			end
		end
		var62 = Roact_upvr.Event.InputBegan
		tbl_4[var62] = function(arg1_8, arg2_3) -- Line 281
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			if arg1.props.disabled then
			else
				if arg2_3.UserInputType == Enum.UserInputType.MouseMovement then
					arg1:setState({
						hovering = true;
					})
					return
				end
				arg1.onInputBegan(arg1_8, arg2_3)
			end
		end
		var62 = Roact_upvr.Event.InputEnded
		tbl_4[var62] = function(arg1_9, arg2_4) -- Line 294
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			if arg1.props.disabled then
			elseif arg2_4.UserInputType == Enum.UserInputType.MouseMovement then
				arg1:setState({
					hovering = false;
				})
			end
		end
		var62 = Roact_upvr.Ref
		tbl_4[var62] = arg1.props.sliderDotRef
		var62 = Roact_upvr.Event.SelectionLost
		tbl_4[var62] = arg1.props.onSelectionLost
		var62 = Roact_upvr.Event.SelectionGained
		tbl_4[var62] = arg1.props.onSelectionGained
		var62 = arg1.props.NextSelectionRight
		tbl_4.NextSelectionRight = var62
		tbl_3.Dot = Roact_upvr.createElement(AssetImage_upvr.Button, tbl_4)
		local tbl_6 = {}
		var62 = Vector2.new(0.5, 0.5)
		tbl_6.AnchorPoint = var62
		var62 = 1
		tbl_6.BackgroundTransparency = var62
		var62 = "SliderHover"
		tbl_6.imageKey = var62
		var62 = UDim2.new(var51_upvr, 0, 0.5, 0)
		tbl_6.Position = var62
		var62 = UDim2.new(0, 0, 0, 0)
		tbl_6.Size = var62
		var62 = Roact_upvr.Ref
		tbl_6[var62] = arg1.hoverRef
		tbl_3.HoverOverlay = Roact_upvr.createElement(AssetImage_upvr.Label, tbl_6)
		module_2.DotTrack = Roact_upvr.createElement("Frame", tbl, tbl_3)
		return Roact_upvr.createElement(ImageSetButton_upvr, {
			AnchorPoint = arg1.props.AnchorPoint;
			BackgroundTransparency = 1;
			Image = "";
			LayoutOrder = arg1.props.LayoutOrder;
			Position = arg1.props.Position;
			Size = UDim2.new(arg1.props.width.Scale, arg1.props.width.Offset, 0, 36);
			[Roact_upvr.Ref] = arg1.rootButtonRef;
			[Roact_upvr.Event.InputBegan] = arg1.onInputBegan;
			Selectable = false;
		}, module_2)
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 323
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_10) -- Line 324
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_10)
	end)
end
function any_extend_result1.didMount(arg1) -- Line 329
	local current_3_upvr = arg1.rootButtonRef.current
	local var77_upvw
	var77_upvw = current_3_upvr.AncestryChanged:Connect(function() -- Line 337
		--[[ Upvalues[3]:
			[1]: current_3_upvr (readonly)
			[2]: var77_upvw (read and write)
			[3]: arg1 (readonly)
		]]
		local var78
		if not current_3_upvr:IsDescendantOf(game) then
		else
			var77_upvw:Disconnect()
			if current_3_upvr:FindFirstAncestorWhichIsA("PluginGui") ~= nil then
				var78 = false
			else
				var78 = true
			end
			arg1.canUseUserInputService = var78
		end
	end)
	arg1.hoverMotor:start()
end
function any_extend_result1.didUpdate(arg1) -- Line 352
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
	arg1:stopListeningForDrag()
	-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 3 end (CF ANALYSIS FAILED)
end
function any_extend_result1.willUnmount(arg1) -- Line 365
	arg1.hoverMotor:stop()
	arg1:disconnectDragEvents()
end
function any_extend_result1.startListeningForDrag(arg1) -- Line 370
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local current_2 = arg1.rootButtonRef.current
	if current_2 == nil then
	else
		if arg1.state.dragging then return end
		if arg1.canUseUserInputService then
			arg1.moveConnection = UserInputService_upvr.InputChanged:Connect(function(arg1_11) -- Line 383
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if not arg1.state.dragging then
				else
					local UserInputType = arg1_11.UserInputType
					if UserInputType ~= Enum.UserInputType.MouseMovement and UserInputType ~= Enum.UserInputType.Touch then return end
					if arg1_11.UserInputState ~= Enum.UserInputState.Change then return end
					arg1:processDrag(arg1_11.Position.X)
				end
			end)
			arg1.releaseConnection = UserInputService_upvr.InputEnded:Connect(function(arg1_12) -- Line 405
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local UserInputType_2 = arg1_12.UserInputType
				if UserInputType_2 ~= Enum.UserInputType.MouseButton1 then
					if UserInputType_2 ~= Enum.UserInputType.Touch then return end
				end
				arg1:stopListeningForDrag()
				arg1:processDrag(arg1_12.Position.X)
			end)
			arg1.focusLostConnection = UserInputService_upvr.WindowFocusReleased:Connect(function() -- Line 420
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:stopListeningForDrag()
			end)
		else
			local ImageButton = Instance.new("ImageButton")
			ImageButton.BackgroundTransparency = 1
			ImageButton.Image = ""
			ImageButton.Name = "SliderPluginGuiInputCapturer"
			ImageButton.Size = UDim2.new(1, 0, 1, 0)
			ImageButton.ZIndex = 100000
			arg1.moveConnection = ImageButton.MouseMoved:Connect(function(arg1_13) -- Line 440
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:processDrag(arg1_13)
			end)
			arg1.releaseConnection = ImageButton.MouseButton1Up:Connect(function(arg1_14) -- Line 444
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:stopListeningForDrag()
				arg1:processDrag(arg1_14)
			end)
			arg1.focusLostConnection = ImageButton.MouseLeave:Connect(function(arg1_15) -- Line 449
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:stopListeningForDrag()
				arg1:processDrag(arg1_15)
			end)
			ImageButton.Parent = current_2:FindFirstAncestorWhichIsA("PluginGui")
			arg1.inputCapturerButton = ImageButton
		end
		arg1:setState({
			dragging = true;
		})
	end
end
function any_extend_result1.processDrag(arg1, arg2) -- Line 463
	local current = arg1.rootButtonRef.current
	if current == nil then
	else
		local min = arg1.props.min
		local stepInterval = arg1.props.stepInterval
		local X = current.AbsoluteSize.X
		local var94 = math.floor((math.clamp(arg2 - current.AbsolutePosition.X, 0, X) / X * (arg1.props.max - min) + min) / stepInterval + 0.5) * stepInterval
		if var94 ~= arg1.props.value then
			arg1.props.valueChanged(var94)
		end
	end
end
function any_extend_result1.disconnectDragEvents(arg1) -- Line 486
	if arg1.moveConnection ~= nil then
		arg1.moveConnection:Disconnect()
		arg1.moveConnection = nil
	end
	if arg1.releaseConnection ~= nil then
		arg1.releaseConnection:Disconnect()
		arg1.releaseConnection = nil
	end
	if arg1.focusLostConnection ~= nil then
		arg1.focusLostConnection:Disconnect()
		arg1.focusLostConnection = nil
	end
	if arg1.inputCapturerButton ~= nil then
		arg1.inputCapturerButton:Destroy()
		arg1.inputCapturerButton = nil
	end
end
function any_extend_result1.stopListeningForDrag(arg1) -- Line 508
	if not arg1.state.dragging then
	else
		arg1:disconnectDragEvents()
		arg1:setState({
			dragging = false;
		})
	end
end
function any_extend_result1.processGamepadInput(arg1, arg2, arg3) -- Line 520
	local maximum = math.max(math.min(arg1.props.value + arg1.props.stepInterval * arg2 * arg3, arg1.props.max), arg1.props.min)
	if maximum ~= arg1.props.value then
		arg1.props.valueChanged(maximum)
	end
end
function any_extend_result1.onMoveStep(arg1, arg2, arg3) -- Line 531
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 54 start (CF ANALYSIS FAILED)
	local var97 = arg3[Enum.KeyCode.Thumbstick1]
	local Position = var97.Position
	local var99
	if 0.2 >= Position.Magnitude then
		var97 = false
	else
		var97 = true
	end
	arg1.totalMoveTime += arg2
	if var97 then
		if 0 < Position.x then
		else
		end
		-- KONSTANTWARNING: GOTO [61] #46
	end
	-- KONSTANTERROR: [0] 1. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 27. Error Block 44 start (CF ANALYSIS FAILED)
	if arg3[Enum.KeyCode.DPadLeft].UserInputState == Enum.UserInputState.Begin then
		-- KONSTANTWARNING: GOTO [46] #35
	end
	-- KONSTANTERROR: [34] 27. Error Block 44 end (CF ANALYSIS FAILED)
end
function any_extend_result1.getDerivedStateFromProps(arg1) -- Line 581
	if not arg1.isMenuOpen then
		return {
			entryMode = false;
		}
	end
	return nil
end
return any_extend_result1