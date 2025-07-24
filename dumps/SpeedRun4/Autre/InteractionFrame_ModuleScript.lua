-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:09
-- Luau version 6, Types version 3
-- Time taken: 0.010014 seconds

local CorePackages = game:GetService("CorePackages")
local UserInputService_upvr = game:GetService("UserInputService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local function _(arg1) -- Line 15, Named "splitInputType"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var5
	if arg1.UserInputType ~= var5 then
	else
	end
	var5 = arg1.UserInputType
	if var5 ~= Enum.UserInputType.MouseButton1 then
		-- KONSTANTWARNING: GOTO [16] #11
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 10. Error Block 22 start (CF ANALYSIS FAILED)
	local var6 = true
	if arg1.UserInputType ~= Enum.UserInputType.MouseButton2 then
		var5 = false
	else
		var5 = true
	end
	do
		return true, var6 or var5, var6, var5
	end
	-- KONSTANTERROR: [15] 10. Error Block 22 end (CF ANALYSIS FAILED)
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("InteractionFrame")
any_extend_result1.defaultProps = {
	Visible = true;
}
any_extend_result1.validateProps = t.interface({
	panByPixels = t.callback;
	rotateByPixels = t.callback;
	setAngularVelocityByPixels = t.callback;
	zoomToPoint = t.callback;
	doubleTap = t.optional(t.callback);
	Size = t.optional(t.UDim2);
	Position = t.optional(t.UDim2);
	Visible = t.optional(t.boolean);
	ZIndex = t.optional(t.number);
})
function any_extend_result1.disconnectEvents(arg1) -- Line 43
	arg1.inputChangedConnection:Disconnect()
	arg1.inputEndedConnection:Disconnect()
	arg1.renderSteppedConnection:Disconnect()
	arg1.inputChangedConnection = nil
	arg1.inputEndedConnection = nil
	arg1.renderSteppedConnection = nil
end
function any_extend_result1.getActiveInput(arg1, arg2) -- Line 52
	-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
	if arg2.UserInputType ~= Enum.UserInputType.Touch then
	else
	end
	if arg2.UserInputType ~= Enum.UserInputType.MouseButton1 then
		-- KONSTANTWARNING: GOTO [16] #11
	end
	-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 10. Error Block 41 start (CF ANALYSIS FAILED)
	if arg2.UserInputType ~= Enum.UserInputType.MouseButton2 then
		-- KONSTANTWARNING: GOTO [24] #16
	end
	-- KONSTANTERROR: [15] 10. Error Block 41 end (CF ANALYSIS FAILED)
end
function any_extend_result1.removeActivePointerInput(arg1, arg2, arg3) -- Line 71
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	if arg3 then
		local any_IsMouseButtonPressed_result1 = UserInputService_upvr:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
		if not any_IsMouseButtonPressed_result1 then
			any_IsMouseButtonPressed_result1 = UserInputService_upvr:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
		end
		if not any_IsMouseButtonPressed_result1 then
			arg1.activeMouseInput = nil
		else
			return
		end
	else
		arg1.activeTouchInputs[arg2] = nil
		arg1.numActiveTouchInputs -= 1
	end
	arg1.numActiveInputs -= 1
	if arg1.numActiveInputs == 0 then
		arg1:disconnectEvents()
	end
end
function any_extend_result1.handleDoubleTap(arg1, arg2, arg3) -- Line 94
	if arg1.lastPrimaryPointerInputBeganPosition and arg1.props.doubleTap and (arg1.lastPrimaryPointerInputBeganPosition - arg2.Position).Magnitude < 30 and arg3 - arg1.lastPrimaryPointerInputBeganTime < 0.25 then
		arg1.props.doubleTap()
	end
	arg1.lastPrimaryPointerInputBeganPosition = arg2.Position
	arg1.lastPrimaryPointerInputBeganTime = arg3
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.addActivePointerInput(arg1, arg2, arg3, arg4) -- Line 112
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	if arg1:getActiveInput(arg2) then
	else
		local tbl = {
			lastPosition = arg2.Position;
		}
		tbl.lastTime = arg4
		if arg3 then
			arg1.activeMouseInput = tbl
		else
			arg1.activeTouchInputs[arg2] = Cryo_upvr.Dictionary.join(tbl, {
				lastDeltaTime = 0;
				lastDeltaPosition = Vector3.new(0, 0, 0);
			})
			arg1.numActiveTouchInputs += 1
		end
		arg1.numActiveInputs += 1
		if arg1.numActiveInputs == 1 then
			arg1.props.setAngularVelocityByPixels(0)
			arg1.inputChangedConnection = UserInputService_upvr.InputChanged:Connect(arg1.onInputChanged)
			arg1.inputEndedConnection = UserInputService_upvr.InputEnded:Connect(arg1.onInputEnded)
			arg1.renderSteppedConnection = RunService_upvr.RenderStepped:Connect(arg1.setInputNotChanged)
		end
	end
end
function any_extend_result1.init(arg1) -- Line 141
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	arg1.inputChangedConnection = nil
	arg1.inputEndedConnection = nil
	arg1.lastPinchDistance = 1
	arg1.lastPanTime = 0
	arg1.lastPrimaryPointerInputBeganTime = 0
	arg1.lastPrimaryPointerInputBeganPosition = nil
	arg1.activeTouchInputs = {}
	arg1.numActiveTouchInputs = 0
	arg1.activeMouseInput = nil
	arg1.numActiveInputs = 0
	function arg1.handleScroll(arg1_2, arg2) -- Line 156
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseWheel then
			arg1.props.zoomToPoint(-arg2.Position.Z, UserInputService_upvr:GetMouseLocation())
		end
	end
	function arg1.setInputNotChanged(arg1_3) -- Line 163
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		for _, v in arg1.activeTouchInputs do
			v.changedThisFrame = false
		end
	end
	function arg1.onInputChanged(arg1_4, arg2) -- Line 169
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var20
		if arg1_4.UserInputType ~= Enum.UserInputType.MouseMovement then
			var20 = false
		else
			var20 = true
		end
		if arg1_4.UserInputType ~= Enum.UserInputType.Touch then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		if not (var20 or true) then
		else
			local any_getActiveInput_result1 = arg1:getActiveInput(arg1_4)
			if not any_getActiveInput_result1 then return end
			local tick_result1 = tick()
			local var24 = tick_result1 - any_getActiveInput_result1.lastTime
			local var25 = arg1_4.Position - any_getActiveInput_result1.lastPosition
			if 0.1 >= tick_result1 - arg1.lastPanTime then
			else
			end
			local function INLINED() -- Internal function, doesn't exist in bytecode
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return true
			end
			if var20 and UserInputService_upvr:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) or INLINED() and arg1.numActiveTouchInputs == 1 or true then
				arg1.props.rotateByPixels(-(Vector2.new(var25.X, var25.Y) * Vector2.new(-1, 1)))
			end
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return true
			end
			if var20 and UserInputService_upvr:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) or INLINED_2() and arg1.numActiveTouchInputs == 2 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg1.props.panByPixels(Vector2.new(var25.X, var25.Y) * Vector2.new(-1, 1) / arg1.numActiveInputs)
				arg1.lastPanTime = tick_result1
			end
			any_getActiveInput_result1.lastPosition = arg1_4.Position
			any_getActiveInput_result1.lastTime = tick_result1
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true then
				if any_getActiveInput_result1.changedThisFrame then
					any_getActiveInput_result1.lastDeltaPosition = var25 + any_getActiveInput_result1.lastDeltaPosition
					any_getActiveInput_result1.lastDeltaTime = var24 + any_getActiveInput_result1.lastDeltaTime
					return
				end
				any_getActiveInput_result1.lastDeltaPosition = var25
				any_getActiveInput_result1.lastDeltaTime = var24
				any_getActiveInput_result1.changedThisFrame = true
			end
		end
	end
	function arg1.onInputEnded(arg1_5, arg2) -- Line 221
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
		local var27
		if arg1_5.UserInputType ~= var27 then
		else
		end
		var27 = arg1_5.UserInputType
		if var27 ~= Enum.UserInputType.MouseButton1 then
			-- KONSTANTWARNING: GOTO [16] #11
		end
		-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 10. Error Block 52 start (CF ANALYSIS FAILED)
		local var28 = true
		if arg1_5.UserInputType ~= Enum.UserInputType.MouseButton2 then
			var27 = false
		else
			var27 = true
		end
		local var29 = true
		local var30 = var28 or var27
		local var31 = var28
		if not (var29 or var30) then
		else
			local any_getActiveInput_result1_2 = arg1:getActiveInput(arg1_5)
			if not any_getActiveInput_result1_2 then return end
			var27 = tick()
			local var33 = var29
			if var33 then
				var33 = any_getActiveInput_result1_2.changedThisFrame
			end
			local var34 = false
			if arg1.numActiveInputs == 1 then
				if 0.1 >= var27 - arg1.lastPanTime then
					var34 = false
				else
					var34 = true
				end
			end
			if var33 or var31 or var34 then
				local var35
				local var36
				if var31 then
					var35 = arg1_5.Position - any_getActiveInput_result1_2.lastPosition
					var36 = var27 - any_getActiveInput_result1_2.lastTime
				else
					var35 = any_getActiveInput_result1_2.lastDeltaPosition
					var36 = any_getActiveInput_result1_2.lastDeltaTime
				end
				arg1.props.setAngularVelocityByPixels(var35.X / var36)
			end
			arg1:removeActivePointerInput(arg1_5, var30)
			-- KONSTANTERROR: [15] 10. Error Block 52 end (CF ANALYSIS FAILED)
		end
	end
	function arg1.onInputBegan(arg1_6, arg2) -- Line 259
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
		arg1.handleScroll(arg1_6, arg2)
		local var38
		if arg2.UserInputType ~= var38 then
		else
		end
		var38 = arg2.UserInputType
		if var38 ~= Enum.UserInputType.MouseButton1 then
			-- KONSTANTWARNING: GOTO [22] #16
		end
		-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 15. Error Block 29 start (CF ANALYSIS FAILED)
		local var39 = true
		if arg2.UserInputType ~= Enum.UserInputType.MouseButton2 then
			var38 = false
		else
			var38 = true
		end
		local var40 = true
		local var41 = var39 or var38
		if not (var40 or var41) then
		else
			var38 = tick()
			if var40 or var39 then
				arg1:handleDoubleTap(arg2, var38)
			end
			arg1:addActivePointerInput(arg2, var41, var38)
			-- KONSTANTERROR: [21] 15. Error Block 29 end (CF ANALYSIS FAILED)
		end
	end
	function arg1.onTouchPinch(arg1_7, arg2, arg3, arg4, arg5) -- Line 279
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2[2] == nil then
		else
			if arg5 == Enum.UserInputState.Begin then
				arg1.lastPinchDistance = (arg2[1] - arg2[2]).Magnitude
				return
			end
			local Magnitude = (arg2[1] - arg2[2]).Magnitude
			arg1.lastPinchDistance = Magnitude
			arg1.props.zoomToPoint((Magnitude - arg1.lastPinchDistance) * -0.05, (arg2[1] + arg2[2]) / 2)
		end
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 296
	if arg1.inputChangedConnection then
		arg1:disconnectEvents()
	end
end
function any_extend_result1.render(arg1) -- Line 302
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local Size = arg1.props.Size
	if not Size then
		Size = UDim2.new(1, 0, 1, 0)
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = Size;
		Position = arg1.props.Position;
		ZIndex = arg1.props.ZIndex;
		Visible = arg1.props.Visible;
		Active = true;
		[Roact_upvr.Event.InputBegan] = arg1.onInputBegan;
		[Roact_upvr.Event.InputChanged] = arg1.handleScroll;
		[Roact_upvr.Event.TouchPinch] = arg1.onTouchPinch;
	}, arg1.props[Roact_upvr.Children])
end
return any_extend_result1