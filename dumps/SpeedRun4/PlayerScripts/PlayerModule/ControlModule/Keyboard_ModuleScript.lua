-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:23
-- Luau version 6, Types version 3
-- Time taken: 0.005175 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local module_upvr = require(script.Parent:WaitForChild("BaseCharacterController"))
local setmetatable_result1_upvr = setmetatable({}, module_upvr)
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
function setmetatable_result1_upvr.new(arg1) -- Line 20
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable(module_upvr.new(), setmetatable_result1_upvr)
	setmetatable_result1.CONTROL_ACTION_PRIORITY = arg1
	setmetatable_result1.textFocusReleasedConn = nil
	setmetatable_result1.textFocusGainedConn = nil
	setmetatable_result1.windowFocusReleasedConn = nil
	setmetatable_result1.forwardValue = 0
	setmetatable_result1.backwardValue = 0
	setmetatable_result1.leftValue = 0
	setmetatable_result1.rightValue = 0
	setmetatable_result1.jumpEnabled = true
	return setmetatable_result1
end
function setmetatable_result1_upvr.Enable(arg1, arg2) -- Line 39
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	if not UserInputService_upvr.KeyboardEnabled then
		return false
	end
	if arg2 == arg1.enabled then
		return true
	end
	arg1.forwardValue = 0
	arg1.backwardValue = 0
	arg1.leftValue = 0
	arg1.rightValue = 0
	arg1.moveVector = Vector3.new(0, 0, 0)
	arg1.jumpRequested = false
	arg1:UpdateJump()
	if arg2 then
		arg1:BindContextActions()
		arg1:ConnectFocusEventListeners()
	else
		arg1:UnbindContextActions()
		arg1:DisconnectFocusEventListeners()
	end
	arg1.enabled = arg2
	return true
end
function setmetatable_result1_upvr.UpdateMovement(arg1, arg2) -- Line 71
	if arg2 == Enum.UserInputState.Cancel then
		arg1.moveVector = Vector3.new(0, 0, 0)
	else
		arg1.moveVector = Vector3.new(arg1.leftValue + arg1.rightValue, 0, arg1.forwardValue + arg1.backwardValue)
	end
end
function setmetatable_result1_upvr.UpdateJump(arg1) -- Line 79
	arg1.isJumping = arg1.jumpRequested
end
function setmetatable_result1_upvr.BindContextActions(arg1) -- Line 83
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:BindActionAtPriority("moveForwardAction", function(arg1_2, arg2, arg3) -- Line 89
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var7
		if arg2 == Enum.UserInputState.Begin then
			var7 = -1
		else
			var7 = 0
		end
		arg1.forwardValue = var7
		arg1:UpdateMovement(arg2)
		return Enum.ContextActionResult.Pass
	end, false, arg1.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterForward)
	ContextActionService_upvr:BindActionAtPriority("moveBackwardAction", function(arg1_3, arg2, arg3) -- Line 95
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var9
		if arg2 == Enum.UserInputState.Begin then
			var9 = 1
		else
			var9 = 0
		end
		arg1.backwardValue = var9
		arg1:UpdateMovement(arg2)
		return Enum.ContextActionResult.Pass
	end, false, arg1.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterBackward)
	ContextActionService_upvr:BindActionAtPriority("moveLeftAction", function(arg1_4, arg2, arg3) -- Line 101
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var11
		if arg2 == Enum.UserInputState.Begin then
			var11 = -1
		else
			var11 = 0
		end
		arg1.leftValue = var11
		arg1:UpdateMovement(arg2)
		return Enum.ContextActionResult.Pass
	end, false, arg1.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterLeft)
	ContextActionService_upvr:BindActionAtPriority("moveRightAction", function(arg1_5, arg2, arg3) -- Line 107
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var13
		if arg2 == Enum.UserInputState.Begin then
			var13 = 1
		else
			var13 = 0
		end
		arg1.rightValue = var13
		arg1:UpdateMovement(arg2)
		return Enum.ContextActionResult.Pass
	end, false, arg1.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterRight)
	ContextActionService_upvr:BindActionAtPriority("jumpAction", function(arg1_6, arg2, arg3) -- Line 113
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local jumpEnabled = arg1.jumpEnabled
		if jumpEnabled then
			if arg2 ~= Enum.UserInputState.Begin then
				jumpEnabled = false
			else
				jumpEnabled = true
			end
		end
		arg1.jumpRequested = jumpEnabled
		arg1:UpdateJump()
		return Enum.ContextActionResult.Pass
	end, false, arg1.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterJump)
end
function setmetatable_result1_upvr.UnbindContextActions(arg1) -- Line 133
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindAction("moveForwardAction")
	ContextActionService_upvr:UnbindAction("moveBackwardAction")
	ContextActionService_upvr:UnbindAction("moveLeftAction")
	ContextActionService_upvr:UnbindAction("moveRightAction")
	ContextActionService_upvr:UnbindAction("jumpAction")
end
function setmetatable_result1_upvr.ConnectFocusEventListeners(arg1) -- Line 141
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local function onFocusReleased() -- Line 142
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.moveVector = Vector3.new(0, 0, 0)
		arg1.forwardValue = 0
		arg1.backwardValue = 0
		arg1.leftValue = 0
		arg1.rightValue = 0
		arg1.jumpRequested = false
		arg1:UpdateJump()
	end
	arg1.textFocusReleasedConn = UserInputService_upvr.TextBoxFocusReleased:Connect(onFocusReleased)
	arg1.textFocusGainedConn = UserInputService_upvr.TextBoxFocused:Connect(function(arg1_7) -- Line 152, Named "onTextFocusGained"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.jumpRequested = false
		arg1:UpdateJump()
	end)
	arg1.windowFocusReleasedConn = UserInputService_upvr.WindowFocused:Connect(onFocusReleased)
end
function setmetatable_result1_upvr.DisconnectFocusEventListeners(arg1) -- Line 162
	if arg1.textFocusReleasedConn then
		arg1.textFocusReleasedConn:Disconnect()
		arg1.textFocusReleasedConn = nil
	end
	if arg1.textFocusGainedConn then
		arg1.textFocusGainedConn:Disconnect()
		arg1.textFocusGainedConn = nil
	end
	if arg1.windowFocusReleasedConn then
		arg1.windowFocusReleasedConn:Disconnect()
		arg1.windowFocusReleasedConn = nil
	end
end
return setmetatable_result1_upvr