-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:38:58
-- Luau version 6, Types version 3
-- Time taken: 0.016466 seconds

local module = require(game:GetService("ReplicatedStorage"):WaitForChild("FeatureFlags"))
local module_3_upvr = {}
module_3_upvr.__index = module_3_upvr
local Players_upvr = game:GetService("Players")
local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local VRService_upvr = game:GetService("VRService")
local module_4_upvr = require(script:WaitForChild("Keyboard"))
local module_2_upvr = require(script:WaitForChild("Gamepad"))
local module_upvr = require(script:WaitForChild("DynamicThumbstick"))
local UserVRAvatarGestures_upvr = module.UserVRAvatarGestures
local UserFixTouchJumpBug_upvr = module.UserFixTouchJumpBug
local module_5_upvr = require(script:WaitForChild("TouchThumbstick"))
local module_6_upvr = require(script:WaitForChild("ClickToMoveController"))
local module_7_upvr = require(script:WaitForChild("TouchJump"))
local Value_upvr = Enum.ContextActionPriority.Medium.Value
local tbl_upvr_2 = {
	[Enum.TouchMovementMode.DPad] = module_upvr;
	[Enum.DevTouchMovementMode.DPad] = module_upvr;
	[Enum.TouchMovementMode.Thumbpad] = module_upvr;
	[Enum.DevTouchMovementMode.Thumbpad] = module_upvr;
	[Enum.TouchMovementMode.Thumbstick] = module_5_upvr;
	[Enum.DevTouchMovementMode.Thumbstick] = module_5_upvr;
	[Enum.TouchMovementMode.DynamicThumbstick] = module_upvr;
	[Enum.DevTouchMovementMode.DynamicThumbstick] = module_upvr;
	[Enum.TouchMovementMode.ClickToMove] = module_6_upvr;
	[Enum.DevTouchMovementMode.ClickToMove] = module_6_upvr;
	[Enum.TouchMovementMode.Default] = module_upvr;
	[Enum.ComputerMovementMode.Default] = module_4_upvr;
	[Enum.ComputerMovementMode.KeyboardMouse] = module_4_upvr;
	[Enum.DevComputerMovementMode.KeyboardMouse] = module_4_upvr;
	[Enum.DevComputerMovementMode.Scriptable] = nil;
	[Enum.ComputerMovementMode.ClickToMove] = module_6_upvr;
	[Enum.DevComputerMovementMode.ClickToMove] = module_6_upvr;
}
local tbl_upvr = {
	[Enum.UserInputType.Keyboard] = module_4_upvr;
	[Enum.UserInputType.MouseButton1] = module_4_upvr;
	[Enum.UserInputType.MouseButton2] = module_4_upvr;
	[Enum.UserInputType.MouseButton3] = module_4_upvr;
	[Enum.UserInputType.MouseWheel] = module_4_upvr;
	[Enum.UserInputType.MouseMovement] = module_4_upvr;
	[Enum.UserInputType.Gamepad1] = module_2_upvr;
	[Enum.UserInputType.Gamepad2] = module_2_upvr;
	[Enum.UserInputType.Gamepad3] = module_2_upvr;
	[Enum.UserInputType.Gamepad4] = module_2_upvr;
}
local var19_upvw
local module_8_upvr = require(script:WaitForChild("VehicleController"))
local RunService_upvr = game:GetService("RunService")
function module_3_upvr.new() -- Line 92
	--[[ Upvalues[9]:
		[1]: module_3_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: UserVRAvatarGestures_upvr (readonly)
		[4]: module_8_upvr (readonly)
		[5]: Value_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
		[8]: UserGameSettings_upvr (readonly)
		[9]: GuiService_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_3_upvr)
	setmetatable_result1_upvr.controllers = {}
	setmetatable_result1_upvr.activeControlModule = nil
	setmetatable_result1_upvr.activeController = nil
	setmetatable_result1_upvr.touchJumpController = nil
	setmetatable_result1_upvr.moveFunction = Players_upvr.LocalPlayer.Move
	setmetatable_result1_upvr.humanoid = nil
	setmetatable_result1_upvr.lastInputType = Enum.UserInputType.None
	setmetatable_result1_upvr.controlsEnabled = true
	setmetatable_result1_upvr.humanoidSeatedConn = nil
	setmetatable_result1_upvr.vehicleController = nil
	setmetatable_result1_upvr.touchControlFrame = nil
	setmetatable_result1_upvr.currentTorsoAngle = 0
	if UserVRAvatarGestures_upvr then
		setmetatable_result1_upvr.inputMoveVector = Vector3.new(0, 0, 0)
	end
	setmetatable_result1_upvr.vehicleController = module_8_upvr.new(Value_upvr)
	Players_upvr.LocalPlayer.CharacterAdded:Connect(function(arg1) -- Line 120
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnCharacterAdded(arg1)
	end)
	Players_upvr.LocalPlayer.CharacterRemoving:Connect(function(arg1) -- Line 121
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnCharacterRemoving(arg1)
	end)
	if Players_upvr.LocalPlayer.Character then
		setmetatable_result1_upvr:OnCharacterAdded(Players_upvr.LocalPlayer.Character)
	end
	RunService_upvr:BindToRenderStep("ControlScriptRenderstep", Enum.RenderPriority.Input.Value, function(arg1) -- Line 126
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnRenderStepped(arg1)
	end)
	UserInputService_upvr.LastInputTypeChanged:Connect(function(arg1) -- Line 130
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnLastInputTypeChanged(arg1)
	end)
	UserGameSettings_upvr:GetPropertyChangedSignal("TouchMovementMode"):Connect(function() -- Line 135
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnTouchMovementModeChange()
	end)
	Players_upvr.LocalPlayer:GetPropertyChangedSignal("DevTouchMovementMode"):Connect(function() -- Line 138
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnTouchMovementModeChange()
	end)
	UserGameSettings_upvr:GetPropertyChangedSignal("ComputerMovementMode"):Connect(function() -- Line 142
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnComputerMovementModeChange()
	end)
	Players_upvr.LocalPlayer:GetPropertyChangedSignal("DevComputerMovementMode"):Connect(function() -- Line 145
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnComputerMovementModeChange()
	end)
	setmetatable_result1_upvr.playerGui = nil
	setmetatable_result1_upvr.touchGui = nil
	setmetatable_result1_upvr.playerGuiAddedConn = nil
	GuiService_upvr:GetPropertyChangedSignal("TouchControlsEnabled"):Connect(function() -- Line 154
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:UpdateTouchGuiVisibility()
		setmetatable_result1_upvr:UpdateActiveControlModuleEnabled()
	end)
	if UserInputService_upvr.TouchEnabled then
		setmetatable_result1_upvr.playerGui = Players_upvr.LocalPlayer:FindFirstChildOfClass("PlayerGui")
		if setmetatable_result1_upvr.playerGui then
			setmetatable_result1_upvr:CreateTouchGuiContainer()
			setmetatable_result1_upvr:OnLastInputTypeChanged(UserInputService_upvr:GetLastInputType())
			return setmetatable_result1_upvr
		end
		setmetatable_result1_upvr.playerGuiAddedConn = Players_upvr.LocalPlayer.ChildAdded:Connect(function(arg1) -- Line 165
			--[[ Upvalues[2]:
				[1]: setmetatable_result1_upvr (readonly)
				[2]: UserInputService_upvr (copied, readonly)
			]]
			if arg1:IsA("PlayerGui") then
				setmetatable_result1_upvr.playerGui = arg1
				setmetatable_result1_upvr:CreateTouchGuiContainer()
				setmetatable_result1_upvr.playerGuiAddedConn:Disconnect()
				setmetatable_result1_upvr.playerGuiAddedConn = nil
				setmetatable_result1_upvr:OnLastInputTypeChanged(UserInputService_upvr:GetLastInputType())
			end
		end)
		return setmetatable_result1_upvr
	end
	setmetatable_result1_upvr:OnLastInputTypeChanged(UserInputService_upvr:GetLastInputType())
	return setmetatable_result1_upvr
end
function module_3_upvr.GetMoveVector(arg1) -- Line 185
	if arg1.activeController then
		return arg1.activeController:GetMoveVector()
	end
	return Vector3.new(0, 0, 0)
end
local function _(arg1) -- Line 192, Named "NormalizeAngle"
	arg1 = (arg1 + 12.566370614359172) % (-math.pi*2)
	local var33 = arg1
	if math.pi < var33 then
		var33 -= (-math.pi*2)
	end
	return var33
end
local function _(arg1, arg2) -- Line 200, Named "AverageAngle"
	local var34 = (arg2 - arg1 + 12.566370614359172) % (-math.pi*2)
	if math.pi < var34 then
		var34 -= (-math.pi*2)
	end
	local var35 = (arg1 + var34 / 2 + 12.566370614359172) % (-math.pi*2)
	if math.pi < var35 then
		var35 -= (-math.pi*2)
	end
	return var35
end
function module_3_upvr.GetEstimatedVRTorsoFrame(arg1) -- Line 205
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	local any_GetUserCFrame_result1 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
	local _, any_ToEulerAnglesYXZ_result2, _ = any_GetUserCFrame_result1:ToEulerAnglesYXZ()
	local var40
	if not VRService_upvr:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) or not VRService_upvr:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand) then
		arg1.currentTorsoAngle = -any_ToEulerAnglesYXZ_result2
	else
		local var41 = any_GetUserCFrame_result1.Position - VRService_upvr:GetUserCFrame(Enum.UserCFrame.LeftHand).Position
		local _ = any_GetUserCFrame_result1.Position - VRService_upvr:GetUserCFrame(Enum.UserCFrame.RightHand).Position
		local _ = -math.atan2(var41.X, var41.Z)
		var40 = _.Z
		var40 = -math.atan2(_.X, var40) - _
		var40 = (var40 + 12.566370614359172) % (-math.pi*2)
		if math.pi < var40 then
			var40 -= (-math.pi*2)
		end
		var40 = _ + var40 / 2
		var40 = (var40 + 12.566370614359172) % (-math.pi*2)
		if math.pi < var40 then
			var40 -= (-math.pi*2)
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if math.pi < (-any_ToEulerAnglesYXZ_result2 - arg1.currentTorsoAngle + 12.566370614359172) % (-math.pi*2) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
		local var44 = (-any_ToEulerAnglesYXZ_result2 - arg1.currentTorsoAngle + 12.566370614359172) % (-math.pi*2) - (-math.pi*2)
		local var45 = (var40 - arg1.currentTorsoAngle + 12.566370614359172) % (-math.pi*2)
		if math.pi < var45 then
			var45 -= (-math.pi*2)
		end
		var45 = false
		local var46 = var45
		if (-math.pi/2) < var45 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if var45 >= (math.pi/2) then
				var46 = false
			else
				var46 = true
			end
		end
		if not var46 then
		end
		local minimum = math.min(var44, var44)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local maximum = math.max(var44, var44)
		local var49 = 0
		if 0 < minimum then
			var49 = minimum
		elseif maximum < 0 then
			var49 = maximum
		end
		arg1.currentTorsoAngle = var49 + arg1.currentTorsoAngle
	end
	return CFrame.new(any_GetUserCFrame_result1.Position) * CFrame.fromEulerAnglesYXZ(0, -arg1.currentTorsoAngle, 0)
end
function module_3_upvr.GetActiveController(arg1) -- Line 249
	return arg1.activeController
end
function module_3_upvr.UpdateActiveControlModuleEnabled(arg1) -- Line 254
	--[[ Upvalues[8]:
		[1]: UserFixTouchJumpBug_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: module_7_upvr (readonly)
		[7]: GuiService_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
	]]
	local function _() -- Line 256
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: UserFixTouchJumpBug_upvr (copied, readonly)
			[3]: Players_upvr (copied, readonly)
		]]
		arg1.activeController:Enable(false)
		if UserFixTouchJumpBug_upvr then
			arg1.touchJumpController:Enable(false)
		end
		if arg1.moveFunction then
			arg1.moveFunction(Players_upvr.LocalPlayer, Vector3.new(0, 0, 0), true)
		end
	end
	if not arg1.activeController then
	else
		if not arg1.controlsEnabled then
			arg1.activeController:Enable(false)
			if UserFixTouchJumpBug_upvr then
				arg1.touchJumpController:Enable(false)
			end
			if arg1.moveFunction then
				arg1.moveFunction(Players_upvr.LocalPlayer, Vector3.new(0, 0, 0), true)
			end
			return
		end
		if not GuiService_upvr.TouchControlsEnabled and UserInputService_upvr.TouchEnabled and (arg1.activeControlModule == module_6_upvr or arg1.activeControlModule == module_5_upvr or arg1.activeControlModule == module_upvr) then
			arg1.activeController:Enable(false)
			if UserFixTouchJumpBug_upvr then
				arg1.touchJumpController:Enable(false)
			end
			if arg1.moveFunction then
				arg1.moveFunction(Players_upvr.LocalPlayer, Vector3.new(0, 0, 0), true)
			end
			return
		end
		;(function() -- Line 267
			--[[ Upvalues[7]:
				[1]: UserFixTouchJumpBug_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: module_6_upvr (copied, readonly)
				[4]: module_5_upvr (copied, readonly)
				[5]: module_upvr (copied, readonly)
				[6]: module_7_upvr (copied, readonly)
				[7]: Players_upvr (copied, readonly)
			]]
			if UserFixTouchJumpBug_upvr then
				if arg1.touchControlFrame and (arg1.activeControlModule == module_6_upvr or arg1.activeControlModule == module_5_upvr or arg1.activeControlModule == module_upvr) then
					if not arg1.controllers[module_7_upvr] then
						arg1.controllers[module_7_upvr] = module_7_upvr.new()
					end
					arg1.touchJumpController = arg1.controllers[module_7_upvr]
					arg1.touchJumpController:Enable(true, arg1.touchControlFrame)
				elseif arg1.touchJumpController then
					arg1.touchJumpController:Enable(false)
				end
			end
			local var52
			if arg1.activeControlModule == module_6_upvr then
				if Players_upvr.LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.UserChoice then
					var52 = false
				else
					var52 = true
				end
				arg1.activeController:Enable(true, var52, arg1.touchJumpController)
			else
				if arg1.touchControlFrame then
					var52 = arg1.touchControlFrame
					arg1.activeController:Enable(true, var52)
					return
				end
				arg1.activeController:Enable(true)
			end
		end)()
	end
end
function module_3_upvr.Enable(arg1, arg2) -- Line 328
	if arg2 == nil then
	end
	arg1.controlsEnabled = true
	if not arg1.activeController then
	else
		arg1:UpdateActiveControlModuleEnabled()
	end
end
function module_3_upvr.Disable(arg1) -- Line 342
	arg1.controlsEnabled = false
	arg1:UpdateActiveControlModuleEnabled()
end
function module_3_upvr.SelectComputerMovementModule(arg1) -- Line 350
	--[[ Upvalues[8]:
		[1]: UserInputService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: var19_upvw (read and write)
		[5]: UserGameSettings_upvr (readonly)
		[6]: module_4_upvr (readonly)
		[7]: module_6_upvr (readonly)
		[8]: tbl_upvr_2 (readonly)
	]]
	if not UserInputService_upvr.KeyboardEnabled and not UserInputService_upvr.GamepadEnabled then
		return nil, false
	end
	local var53
	local DevComputerMovementMode = Players_upvr.LocalPlayer.DevComputerMovementMode
	if DevComputerMovementMode == Enum.DevComputerMovementMode.UserChoice then
		var53 = tbl_upvr[var19_upvw]
		if UserGameSettings_upvr.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove and var53 == module_4_upvr then
			var53 = module_6_upvr
			-- KONSTANTWARNING: GOTO [48] #36
		end
	else
		var53 = tbl_upvr_2[DevComputerMovementMode]
		if not var53 and DevComputerMovementMode ~= Enum.DevComputerMovementMode.Scriptable then
			warn("No character control module is associated with DevComputerMovementMode ", DevComputerMovementMode)
		end
	end
	if var53 then
		return var53, true
	end
	if DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable then
		return nil, true
	end
	return nil, false
end
function module_3_upvr.SelectTouchModule(arg1) -- Line 388
	--[[ Upvalues[4]:
		[1]: UserInputService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: UserGameSettings_upvr (readonly)
	]]
	if not UserInputService_upvr.TouchEnabled then
		return nil, false
	end
	local var55
	local DevTouchMovementMode = Players_upvr.LocalPlayer.DevTouchMovementMode
	if DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
		var55 = tbl_upvr_2[UserGameSettings_upvr.TouchMovementMode]
	else
		if DevTouchMovementMode == Enum.DevTouchMovementMode.Scriptable then
			return nil, true
		end
		var55 = tbl_upvr_2[DevTouchMovementMode]
	end
	return var55, true
end
local function getGamepadRightThumbstickPosition_upvr() -- Line 404, Named "getGamepadRightThumbstickPosition"
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	for _, v in pairs(UserInputService_upvr:GetGamepadState(Enum.UserInputType.Gamepad1)) do
		if v.KeyCode == Enum.KeyCode.Thumbstick2 then
			return v.Position
		end
	end
	return Vector3.new(0, 0, 0)
end
local Workspace_upvr = game:GetService("Workspace")
function module_3_upvr.calculateRawMoveVector(arg1, arg2, arg3) -- Line 414
	--[[ Upvalues[3]:
		[1]: Workspace_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: getGamepadRightThumbstickPosition_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local CurrentCamera = Workspace_upvr.CurrentCamera
	if not CurrentCamera then
		return arg3
	end
	local var64
	if VRService_upvr.VREnabled and arg2.RootPart then
		local any_GetEstimatedVRTorsoFrame_result1 = arg1:GetEstimatedVRTorsoFrame()
		if (CurrentCamera.Focus.Position - var64.Position).Magnitude < 3 then
			var64 *= any_GetEstimatedVRTorsoFrame_result1
		else
			var64 = CurrentCamera.CFrame * (any_GetEstimatedVRTorsoFrame_result1.Rotation + any_GetEstimatedVRTorsoFrame_result1.Position * CurrentCamera.HeadScale)
		end
	end
	if arg2:GetState() == Enum.HumanoidStateType.Swimming then
		if VRService_upvr.VREnabled then
			local vector3 = Vector3.new(arg3.X, 0, arg3.Z)
			if vector3.Magnitude < 0.01 then
				return Vector3.new(0, 0, 0)
			end
			local _, any_ToEulerAnglesYXZ_result2_2, _ = var64:ToEulerAnglesYXZ()
			return CFrame.fromEulerAnglesYXZ(-getGamepadRightThumbstickPosition_upvr().Y * 1.3962634015954636, math.atan2(-vector3.X, -vector3.Z) + any_ToEulerAnglesYXZ_result2_2, 0).LookVector
		end
		return var64:VectorToWorldSpace(vector3)
	end
	local _, _, _, any_GetComponents_result4, any_GetComponents_result5, any_GetComponents_result6, _, _, any_GetComponents_result9, _, _, any_GetComponents_result12 = var64:GetComponents()
	local var82
	if any_GetComponents_result9 < 1 and -1 < any_GetComponents_result9 then
		var82 = any_GetComponents_result12
		local _ = any_GetComponents_result6
	else
		var82 = any_GetComponents_result4
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local squareroot = math.sqrt(var82 * var82 + (-any_GetComponents_result5 * math.sign(any_GetComponents_result9)) * (-any_GetComponents_result5 * math.sign(any_GetComponents_result9)))
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	return Vector3.new((var82 * vector3.X + -any_GetComponents_result5 * math.sign(any_GetComponents_result9) * vector3.Z) / squareroot, 0, (var82 * vector3.Z - -any_GetComponents_result5 * math.sign(any_GetComponents_result9) * vector3.X) / squareroot)
end
function module_3_upvr.OnRenderStepped(arg1, arg2) -- Line 473
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: UserVRAvatarGestures_upvr (readonly)
		[3]: VRService_upvr (readonly)
		[4]: Players_upvr (readonly)
	]]
	if arg1.activeController and arg1.activeController.enabled then
		local var92
		if var92 then
			var92 = arg1.activeController:OnRenderStepped
			var92(arg2)
			var92 = arg1.activeController:GetMoveVector()
			local any_IsMoveVectorCameraRelative_result1_2 = arg1.activeController:IsMoveVectorCameraRelative()
			local any_GetClickToMoveController_result1 = arg1:GetClickToMoveController()
			if arg1.activeController ~= any_GetClickToMoveController_result1 then
				if 0 < var92.magnitude then
					any_GetClickToMoveController_result1:CleanupPath()
				else
					any_GetClickToMoveController_result1:OnRenderStepped(arg2)
					var92 = any_GetClickToMoveController_result1:GetMoveVector()
					any_IsMoveVectorCameraRelative_result1_2 = any_GetClickToMoveController_result1:IsMoveVectorCameraRelative()
				end
			end
			local var95
			if arg1.vehicleController then
				if arg1.activeControlModule ~= module_2_upvr then
					var95 = false
				else
					var95 = true
				end
				local any_Update_result1_2, _ = arg1.vehicleController:Update(var92, any_IsMoveVectorCameraRelative_result1_2, var95)
				var92 = any_Update_result1_2
			end
			if any_IsMoveVectorCameraRelative_result1_2 then
				var92 = arg1:calculateRawMoveVector(arg1.humanoid, var92)
			end
			if UserVRAvatarGestures_upvr then
				arg1.inputMoveVector = var92
				if VRService_upvr.VREnabled then
					var92 = arg1:updateVRMoveVector(var92)
				end
			end
			arg1.moveFunction(Players_upvr.LocalPlayer, var92, false)
			local any_GetIsJumping_result1 = arg1.activeController:GetIsJumping()
			if not any_GetIsJumping_result1 then
				any_GetIsJumping_result1 = arg1.touchJumpController
				if any_GetIsJumping_result1 then
					any_GetIsJumping_result1 = arg1.touchJumpController:GetIsJumping()
				end
			end
			arg1.humanoid.Jump = any_GetIsJumping_result1
		end
	end
end
function module_3_upvr.updateVRMoveVector(arg1, arg2) -- Line 524
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	local CurrentCamera_2 = workspace.CurrentCamera
	local var100
	if (CurrentCamera_2.Focus.Position - CurrentCamera_2.CFrame.Position).Magnitude < 5 then
		var100 = true
	end
	if arg2.Magnitude == 0 and var100 and VRService_upvr.AvatarGestures and arg1.humanoid then
		local any_GetUserCFrame_result1_2 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
		local var102 = (CurrentCamera_2.CFrame * (any_GetUserCFrame_result1_2.Rotation + any_GetUserCFrame_result1_2.Position * CurrentCamera_2.HeadScale) * CFrame.new(0, -0.7 * arg1.humanoid.RootPart.Size.Y / 2, 0)).Position - arg1.humanoid.RootPart.CFrame.Position
		return Vector3.new(var102.x, 0, var102.z)
	end
	return arg2
end
function module_3_upvr.OnHumanoidSeated(arg1, arg2, arg3) -- Line 547
	--[[ Upvalues[1]:
		[1]: Value_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 7. Error Block 12 start (CF ANALYSIS FAILED)
	if not arg1.vehicleController then
		arg1.vehicleController = arg1.vehicleController.new(Value_upvr)
	end
	arg1.vehicleController:Enable(true, arg3)
	do
		return
	end
	-- KONSTANTERROR: [7] 7. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 20. Error Block 10 start (CF ANALYSIS FAILED)
	if arg1.vehicleController then
		arg1.vehicleController:Enable(false, arg3)
	end
	-- KONSTANTERROR: [26] 20. Error Block 10 end (CF ANALYSIS FAILED)
end
function module_3_upvr.OnCharacterAdded(arg1, arg2) -- Line 562
	arg1.humanoid = arg2:FindFirstChildOfClass("Humanoid")
	while not arg1.humanoid do
		arg2.ChildAdded:wait()
		arg1.humanoid = arg2:FindFirstChildOfClass("Humanoid")
	end
	arg1:UpdateTouchGuiVisibility()
	if arg1.humanoidSeatedConn then
		arg1.humanoidSeatedConn:Disconnect()
		arg1.humanoidSeatedConn = nil
	end
	arg1.humanoidSeatedConn = arg1.humanoid.Seated:Connect(function(arg1_2, arg2_2) -- Line 575
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:OnHumanoidSeated(arg1_2, arg2_2)
	end)
end
function module_3_upvr.OnCharacterRemoving(arg1, arg2) -- Line 580
	arg1.humanoid = nil
	arg1:UpdateTouchGuiVisibility()
end
function module_3_upvr.UpdateTouchGuiVisibility(arg1) -- Line 586
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	if arg1.touchGui then
		local humanoid = arg1.humanoid
		if humanoid then
			humanoid = GuiService_upvr.TouchControlsEnabled
		end
		arg1.touchGui.Enabled = not not humanoid
	end
end
function module_3_upvr.SwitchToController(arg1, arg2) -- Line 600
	--[[ Upvalues[6]:
		[1]: Value_upvr (readonly)
		[2]: UserFixTouchJumpBug_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: module_7_upvr (readonly)
	]]
	if not arg2 then
		if arg1.activeController then
			arg1.activeController:Enable(false)
		end
		arg1.activeController = nil
		arg1.activeControlModule = nil
	else
		if not arg1.controllers[arg2] then
			arg1.controllers[arg2] = arg2.new(Value_upvr)
		end
		if arg1.activeController ~= arg1.controllers[arg2] then
			if arg1.activeController then
				arg1.activeController:Enable(false)
			end
			arg1.activeController = arg1.controllers[arg2]
			arg1.activeControlModule = arg2
			if not UserFixTouchJumpBug_upvr then
				if arg1.touchControlFrame and (arg1.activeControlModule == module_6_upvr or arg1.activeControlModule == module_5_upvr or arg1.activeControlModule == module_upvr) then
					if not arg1.controllers[module_7_upvr] then
						arg1.controllers[module_7_upvr] = module_7_upvr.new()
					end
					arg1.touchJumpController = arg1.controllers[module_7_upvr]
					arg1.touchJumpController:Enable(true, arg1.touchControlFrame)
				elseif arg1.touchJumpController then
					arg1.touchJumpController:Enable(false)
				end
			end
			arg1:UpdateActiveControlModuleEnabled()
		end
	end
end
function module_3_upvr.OnLastInputTypeChanged(arg1, arg2) -- Line 644
	--[[ Upvalues[2]:
		[1]: var19_upvw (read and write)
		[2]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	if var19_upvw == arg2 then
		warn("LastInputType Change listener called with current type.")
	end
	var19_upvw = arg2
	if var19_upvw == Enum.UserInputType.Touch then
		local any_SelectTouchModule_result1_2, any_SelectTouchModule_result2_3 = arg1:SelectTouchModule()
		if any_SelectTouchModule_result2_3 then
			while not arg1.touchControlFrame do
				wait()
			end
			arg1:SwitchToController(any_SelectTouchModule_result1_2)
			-- KONSTANTWARNING: GOTO [42] #32
		end
	elseif tbl_upvr[var19_upvw] ~= nil then
		local any_SelectComputerMovementModule_result1 = arg1:SelectComputerMovementModule()
		if any_SelectComputerMovementModule_result1 then
			arg1:SwitchToController(any_SelectComputerMovementModule_result1)
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 32. Error Block 14 start (CF ANALYSIS FAILED)
	arg1:UpdateTouchGuiVisibility()
	-- KONSTANTERROR: [42] 32. Error Block 14 end (CF ANALYSIS FAILED)
end
function module_3_upvr.OnComputerMovementModeChange(arg1) -- Line 671
	local any_SelectComputerMovementModule_result1_3, any_SelectComputerMovementModule_result2 = arg1:SelectComputerMovementModule()
	if any_SelectComputerMovementModule_result2 then
		arg1:SwitchToController(any_SelectComputerMovementModule_result1_3)
	end
end
function module_3_upvr.OnTouchMovementModeChange(arg1) -- Line 678
	local any_SelectTouchModule_result1, any_SelectTouchModule_result2 = arg1:SelectTouchModule()
	if any_SelectTouchModule_result2 then
		while not arg1.touchControlFrame do
			wait()
		end
		arg1:SwitchToController(any_SelectTouchModule_result1)
	end
end
local UserDynamicThumbstickSafeAreaUpdate_upvr = module.UserDynamicThumbstickSafeAreaUpdate
function module_3_upvr.CreateTouchGuiContainer(arg1) -- Line 688
	--[[ Upvalues[1]:
		[1]: UserDynamicThumbstickSafeAreaUpdate_upvr (readonly)
	]]
	if arg1.touchGui then
		arg1.touchGui:Destroy()
	end
	arg1.touchGui = Instance.new("ScreenGui")
	arg1.touchGui.Name = "TouchGui"
	arg1.touchGui.ResetOnSpawn = false
	arg1.touchGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	arg1:UpdateTouchGuiVisibility()
	if UserDynamicThumbstickSafeAreaUpdate_upvr then
		arg1.touchGui.ClipToDeviceSafeArea = false
	end
	arg1.touchControlFrame = Instance.new("Frame")
	arg1.touchControlFrame.Name = "TouchControlFrame"
	arg1.touchControlFrame.Size = UDim2.new(1, 0, 1, 0)
	arg1.touchControlFrame.BackgroundTransparency = 1
	arg1.touchControlFrame.Parent = arg1.touchGui
	arg1.touchGui.Parent = arg1.playerGui
end
function module_3_upvr.GetClickToMoveController(arg1) -- Line 711
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: Value_upvr (readonly)
	]]
	if not arg1.controllers[module_6_upvr] then
		arg1.controllers[module_6_upvr] = module_6_upvr.new(Value_upvr)
	end
	return arg1.controllers[module_6_upvr]
end
return module_3_upvr.new()