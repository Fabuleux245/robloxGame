-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:01
-- Luau version 6, Types version 3
-- Time taken: 0.015383 seconds

local module_upvr_4 = {}
module_upvr_4.__index = module_upvr_4
local tbl_upvr = {"CameraMinZoomDistance", "CameraMaxZoomDistance", "CameraMode", "DevCameraOcclusionMode", "DevComputerCameraMode", "DevTouchCameraMode", "DevComputerMovementMode", "DevTouchMovementMode", "DevEnableMouseLock"}
local tbl_upvr_3 = {"ComputerCameraMovementMode", "ComputerMovementMode", "ControlMode", "GamepadCameraSensitivity", "MouseSensitivity", "RotationType", "TouchCameraMovementMode", "TouchMovementMode"}
local Players_upvr = game:GetService("Players")
local UserInputService_upvr = game:GetService("UserInputService")
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local module_upvr_7 = require(script:WaitForChild("CameraUtils"))
local PlayerScripts = Players_upvr.LocalPlayer:WaitForChild("PlayerScripts")
PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Default)
PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Follow)
PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Classic)
PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Default)
PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Follow)
PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Classic)
PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.CameraToggle)
local module_upvr_6 = require(script:WaitForChild("TransparencyController"))
local module_upvr = require(script:WaitForChild("MouseLockController"))
local RunService_upvr = game:GetService("RunService")
function module_upvr_4.new() -- Line 95
	--[[ Upvalues[9]:
		[1]: module_upvr_4 (readonly)
		[2]: Players_upvr (readonly)
		[3]: module_upvr_6 (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: tbl_upvr (readonly)
		[8]: tbl_upvr_3 (readonly)
		[9]: UserGameSettings_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local setmetatable_result1_upvr = setmetatable({}, module_upvr_4)
	setmetatable_result1_upvr.activeCameraController = nil
	setmetatable_result1_upvr.activeOcclusionModule = nil
	setmetatable_result1_upvr.activeTransparencyController = nil
	setmetatable_result1_upvr.activeMouseLockController = nil
	setmetatable_result1_upvr.currentComputerCameraMovementMode = nil
	setmetatable_result1_upvr.cameraSubjectChangedConn = nil
	setmetatable_result1_upvr.cameraTypeChangedConn = nil
	for var71, v in pairs(Players_upvr:GetPlayers()) do
		setmetatable_result1_upvr:OnPlayerAdded(v)
	end
	Players_upvr.PlayerAdded:Connect(function(arg1) -- Line 116
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnPlayerAdded(arg1)
	end)
	setmetatable_result1_upvr.activeTransparencyController = module_upvr_6.new()
	setmetatable_result1_upvr.activeTransparencyController:Enable(true)
	if not UserInputService_upvr.TouchEnabled then
		setmetatable_result1_upvr.activeMouseLockController = module_upvr.new()
		local any_GetBindableToggleEvent_result1 = setmetatable_result1_upvr.activeMouseLockController:GetBindableToggleEvent()
		if any_GetBindableToggleEvent_result1 then
			function var71() -- Line 127
				--[[ Upvalues[1]:
					[1]: setmetatable_result1_upvr (readonly)
				]]
				setmetatable_result1_upvr:OnMouseLockToggled()
			end
			any_GetBindableToggleEvent_result1:Connect(var71)
		end
	end
	setmetatable_result1_upvr:ActivateCameraController(setmetatable_result1_upvr:GetCameraControlChoice())
	setmetatable_result1_upvr:ActivateOcclusionModule(Players_upvr.LocalPlayer.DevCameraOcclusionMode)
	setmetatable_result1_upvr:OnCurrentCameraChanged()
	RunService_upvr:BindToRenderStep("cameraRenderUpdate", Enum.RenderPriority.Camera.Value, function(arg1) -- Line 136
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:Update(arg1)
	end)
	for _, v_2_upvr in pairs(tbl_upvr) do
		Players_upvr.LocalPlayer:GetPropertyChangedSignal(v_2_upvr):Connect(function() -- Line 140
			--[[ Upvalues[2]:
				[1]: setmetatable_result1_upvr (readonly)
				[2]: v_2_upvr (readonly)
			]]
			setmetatable_result1_upvr:OnLocalPlayerCameraPropertyChanged(v_2_upvr)
		end)
	end
	for _, v_3_upvr in pairs(tbl_upvr_3) do
		UserGameSettings_upvr:GetPropertyChangedSignal(v_3_upvr):Connect(function() -- Line 146
			--[[ Upvalues[2]:
				[1]: setmetatable_result1_upvr (readonly)
				[2]: v_3_upvr (readonly)
			]]
			setmetatable_result1_upvr:OnUserGameSettingsPropertyChanged(v_3_upvr)
		end)
	end
	game.Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 150
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnCurrentCameraChanged()
	end)
	return setmetatable_result1_upvr
end
function module_upvr_4.GetCameraMovementModeFromSettings(arg1) -- Line 157
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: module_upvr_7 (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: UserGameSettings_upvr (readonly)
	]]
	local var82
	if Players_upvr.LocalPlayer.CameraMode == Enum.CameraMode.LockFirstPerson then
		var82 = module_upvr_7
		var82 = Enum.ComputerCameraMovementMode.Classic
		return var82.ConvertCameraModeEnumToStandard(var82)
	end
	local var83
	var82 = nil
	if UserInputService_upvr.TouchEnabled then
		var83 = module_upvr_7.ConvertCameraModeEnumToStandard(Players_upvr.LocalPlayer.DevTouchCameraMode)
		var82 = module_upvr_7.ConvertCameraModeEnumToStandard(UserGameSettings_upvr.TouchCameraMovementMode)
	else
		var83 = module_upvr_7.ConvertCameraModeEnumToStandard(Players_upvr.LocalPlayer.DevComputerCameraMode)
		var82 = module_upvr_7.ConvertCameraModeEnumToStandard(UserGameSettings_upvr.ComputerCameraMovementMode)
	end
	if var83 == Enum.DevComputerCameraMovementMode.UserChoice then
		return var82
	end
	return var83
end
local module_upvr_5 = require(script:WaitForChild("Poppercam"))
local module_upvr_12 = require(script:WaitForChild("Invisicam"))
local tbl_upvr_2 = {}
function module_upvr_4.ActivateOcclusionModule(arg1, arg2) -- Line 182
	--[[ Upvalues[4]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr_12 (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: Players_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 54 start (CF ANALYSIS FAILED)
	local var87
	if arg2 == Enum.DevCameraOcclusionMode.Zoom then
		var87 = module_upvr_5
	elseif arg2 == Enum.DevCameraOcclusionMode.Invisicam then
		var87 = module_upvr_12
	else
		warn("CameraScript ActivateOcclusionModule called with unsupported mode")
		return
	end
	arg1.occlusionMode = arg2
	-- KONSTANTERROR: [0] 1. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 17. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 17. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 21. Error Block 38 start (CF ANALYSIS FAILED)
	if not arg1.activeOcclusionModule:GetEnabled() then
		arg1.activeOcclusionModule:Enable(true)
	end
	do
		return
	end
	-- KONSTANTERROR: [30] 21. Error Block 38 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 30. Error Block 13 start (CF ANALYSIS FAILED)
	arg1.activeOcclusionModule = tbl_upvr_2[var87]
	-- KONSTANTERROR: [43] 30. Error Block 13 end (CF ANALYSIS FAILED)
end
function module_upvr_4.ShouldUseVehicleCamera(arg1) -- Line 261
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local CurrentCamera = workspace.CurrentCamera
	local var95
	if not CurrentCamera then
		return false
	end
	local CameraType_2 = CurrentCamera.CameraType
	local var98 = true
	var95 = Enum.CameraType.Custom
	if CameraType_2 ~= var95 then
		var95 = Enum.CameraType.Follow
		if CameraType_2 ~= var95 then
			var98 = false
		else
			var98 = true
		end
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var95 = CurrentCamera.CameraSubject:IsA("VehicleSeat")
		return var95
	end
	if not CurrentCamera.CameraSubject or not INLINED_2() then
		var95 = false
	end
	if arg1.occlusionMode == Enum.DevCameraOcclusionMode.Invisicam then
	else
	end
	if var95 then
		if var98 then
		end
	end
	return true
end
local module_upvr_9 = require(script:WaitForChild("LegacyCamera"))
local VRService_upvr = game:GetService("VRService")
local module_upvr_3 = require(script:WaitForChild("VRCamera"))
local module_upvr_13 = require(script:WaitForChild("ClassicCamera"))
local module_upvr_11 = require(script:WaitForChild("OrbitalCamera"))
local module_upvr_8 = require(script:WaitForChild("VRVehicleCamera"))
local module_upvr_2 = require(script:WaitForChild("VehicleCamera"))
local tbl_upvr_4 = {}
function module_upvr_4.ActivateCameraController(arg1, arg2, arg3) -- Line 279
	--[[ Upvalues[8]:
		[1]: module_upvr_9 (readonly)
		[2]: VRService_upvr (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: module_upvr_13 (readonly)
		[5]: module_upvr_11 (readonly)
		[6]: module_upvr_8 (readonly)
		[7]: module_upvr_2 (readonly)
		[8]: tbl_upvr_4 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 105 start (CF ANALYSIS FAILED)
	if arg3 == Enum.CameraType.Scriptable then
		if arg1.activeCameraController then
			arg1.activeCameraController:Enable(false)
			arg1.activeCameraController = nil
		end
		return
	end
	if arg3 == Enum.CameraType.Custom then
		-- KONSTANTWARNING: GOTO [69] #44
	end
	-- KONSTANTERROR: [3] 3. Error Block 105 end (CF ANALYSIS FAILED)
end
function module_upvr_4.OnCameraSubjectChanged(arg1) -- Line 384
	local CurrentCamera_2 = workspace.CurrentCamera
	local var108
	if var108 then
		var108 = CurrentCamera_2.CameraSubject
	end
	if arg1.activeTransparencyController then
		arg1.activeTransparencyController:SetSubject(var108)
	end
	if arg1.activeOcclusionModule then
		arg1.activeOcclusionModule:OnCameraSubjectChanged(var108)
	end
	arg1:ActivateCameraController(nil, CurrentCamera_2.CameraType)
end
function module_upvr_4.OnCameraTypeChanged(arg1, arg2) -- Line 399
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: module_upvr_7 (readonly)
	]]
	if arg2 == Enum.CameraType.Scriptable and UserInputService_upvr.MouseBehavior == Enum.MouseBehavior.LockCenter then
		module_upvr_7.restoreMouseBehavior()
	end
	arg1:ActivateCameraController(nil, arg2)
end
function module_upvr_4.OnCurrentCameraChanged(arg1) -- Line 411
	local CurrentCamera_3_upvr = game.Workspace.CurrentCamera
	if not CurrentCamera_3_upvr then
	else
		if arg1.cameraSubjectChangedConn then
			arg1.cameraSubjectChangedConn:Disconnect()
		end
		if arg1.cameraTypeChangedConn then
			arg1.cameraTypeChangedConn:Disconnect()
		end
		arg1.cameraSubjectChangedConn = CurrentCamera_3_upvr:GetPropertyChangedSignal("CameraSubject"):Connect(function() -- Line 423
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CurrentCamera_3_upvr (readonly)
			]]
			arg1:OnCameraSubjectChanged(CurrentCamera_3_upvr.CameraSubject)
		end)
		arg1.cameraTypeChangedConn = CurrentCamera_3_upvr:GetPropertyChangedSignal("CameraType"):Connect(function() -- Line 427
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CurrentCamera_3_upvr (readonly)
			]]
			arg1:OnCameraTypeChanged(CurrentCamera_3_upvr.CameraType)
		end)
		arg1:OnCameraSubjectChanged(CurrentCamera_3_upvr.CameraSubject)
		arg1:OnCameraTypeChanged(CurrentCamera_3_upvr.CameraType)
	end
end
function module_upvr_4.OnLocalPlayerCameraPropertyChanged(arg1, arg2) -- Line 435
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: module_upvr_7 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 25. Error Block 34 start (CF ANALYSIS FAILED)
	if Players_upvr.LocalPlayer.CameraMode == Enum.CameraMode.Classic then
		arg1:ActivateCameraController(module_upvr_7.ConvertCameraModeEnumToStandard(arg1:GetCameraMovementModeFromSettings()))
		return
	end
	warn("Unhandled value for property player.CameraMode: ", Players_upvr.LocalPlayer.CameraMode)
	do
		return
	end
	-- KONSTANTERROR: [39] 25. Error Block 34 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [70] 46. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [70] 46. Error Block 12 end (CF ANALYSIS FAILED)
end
function module_upvr_4.OnUserGameSettingsPropertyChanged(arg1, arg2) -- Line 479
	--[[ Upvalues[1]:
		[1]: module_upvr_7 (readonly)
	]]
	if arg2 == "ComputerCameraMovementMode" then
		arg1:ActivateCameraController(module_upvr_7.ConvertCameraModeEnumToStandard(arg1:GetCameraMovementModeFromSettings()))
	end
end
local module_upvr_10 = require(script:WaitForChild("CameraInput"))
function module_upvr_4.Update(arg1, arg2) -- Line 492
	--[[ Upvalues[1]:
		[1]: module_upvr_10 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1.activeCameraController then
		arg1.activeCameraController:UpdateMouseBehavior()
		local any_Update_result1, any_Update_result2_2 = arg1.activeCameraController:Update(arg2)
		if arg1.activeOcclusionModule then
			local any_Update_result1_2, any_Update_result2 = arg1.activeOcclusionModule:Update(arg2, any_Update_result1, any_Update_result2_2)
			any_Update_result1 = any_Update_result1_2
		end
		local CurrentCamera_5 = game.Workspace.CurrentCamera
		CurrentCamera_5.CFrame = any_Update_result1
		CurrentCamera_5.Focus = any_Update_result2
		if arg1.activeTransparencyController then
			arg1.activeTransparencyController:Update(arg2)
		end
		if module_upvr_10.getInputEnabled() then
			module_upvr_10.resetInputForFrameEnd()
		end
	end
end
function module_upvr_4.GetCameraControlChoice(arg1) -- Line 520
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: module_upvr_7 (readonly)
		[4]: UserGameSettings_upvr (readonly)
	]]
	local LocalPlayer = Players_upvr.LocalPlayer
	if LocalPlayer then
		if UserInputService_upvr:GetLastInputType() == Enum.UserInputType.Touch or UserInputService_upvr.TouchEnabled then
			if LocalPlayer.DevTouchCameraMode == Enum.DevTouchCameraMovementMode.UserChoice then
				return module_upvr_7.ConvertCameraModeEnumToStandard(UserGameSettings_upvr.TouchCameraMovementMode)
			end
			return module_upvr_7.ConvertCameraModeEnumToStandard(LocalPlayer.DevTouchCameraMode)
		end
		if LocalPlayer.DevComputerCameraMode == Enum.DevComputerCameraMovementMode.UserChoice then
			return module_upvr_7.ConvertCameraModeEnumToStandard(module_upvr_7.ConvertCameraModeEnumToStandard(UserGameSettings_upvr.ComputerCameraMovementMode))
		end
		return module_upvr_7.ConvertCameraModeEnumToStandard(LocalPlayer.DevComputerCameraMode)
	end
end
function module_upvr_4.OnCharacterAdded(arg1, arg2, arg3) -- Line 543
	if arg1.activeOcclusionModule then
		arg1.activeOcclusionModule:CharacterAdded(arg2, arg3)
	end
end
function module_upvr_4.OnCharacterRemoving(arg1, arg2, arg3) -- Line 549
	if arg1.activeOcclusionModule then
		arg1.activeOcclusionModule:CharacterRemoving(arg2, arg3)
	end
end
function module_upvr_4.OnPlayerAdded(arg1, arg2) -- Line 555
	arg2.CharacterAdded:Connect(function(arg1_2) -- Line 556
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1:OnCharacterAdded(arg1_2, arg2)
	end)
	arg2.CharacterRemoving:Connect(function(arg1_3) -- Line 559
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1:OnCharacterRemoving(arg1_3, arg2)
	end)
end
function module_upvr_4.OnMouseLockToggled(arg1) -- Line 564
	if arg1.activeMouseLockController and arg1.activeCameraController then
		arg1.activeCameraController:SetIsMouseLocked(arg1.activeMouseLockController:GetIsMouseLocked())
		arg1.activeCameraController:SetMouseLockOffset(arg1.activeMouseLockController:GetMouseLockOffset())
	end
end
return module_upvr_4.new()