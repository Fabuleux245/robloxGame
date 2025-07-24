-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:02
-- Luau version 6, Types version 3
-- Time taken: 0.020051 seconds

local module = require(game:GetService("ReplicatedStorage"):WaitForChild("FeatureFlags"))
local UserFixCameraOffsetJitter_upvr = module.UserFixCameraOffsetJitter
local module_6_upvr = require(script.Parent:WaitForChild("CameraUtils"))
local module_3_upvr = require(script.Parent:WaitForChild("ZoomController"))
local module_5_upvr = require(script.Parent:WaitForChild("CameraInput"))
local UserInputService_upvr = game:GetService("UserInputService")
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new() -- Line 65
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: UserGameSettings_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_2_upvr)
	setmetatable_result1_upvr.gamepadZoomLevels = {0, 10, 20}
	setmetatable_result1_upvr.FIRST_PERSON_DISTANCE_THRESHOLD = 1
	setmetatable_result1_upvr.cameraType = nil
	setmetatable_result1_upvr.cameraMovementMode = nil
	setmetatable_result1_upvr.lastCameraTransform = nil
	setmetatable_result1_upvr.lastUserPanCamera = tick()
	setmetatable_result1_upvr.humanoidRootPart = nil
	setmetatable_result1_upvr.humanoidCache = {}
	setmetatable_result1_upvr.lastSubject = nil
	setmetatable_result1_upvr.lastSubjectPosition = Vector3.new(0, 5, 0)
	setmetatable_result1_upvr.lastSubjectCFrame = CFrame.new(setmetatable_result1_upvr.lastSubjectPosition)
	setmetatable_result1_upvr.currentSubjectDistance = math.clamp(12.5, LocalPlayer_upvr.CameraMinZoomDistance, LocalPlayer_upvr.CameraMaxZoomDistance)
	setmetatable_result1_upvr.inFirstPerson = false
	setmetatable_result1_upvr.inMouseLockedMode = false
	setmetatable_result1_upvr.portraitMode = false
	setmetatable_result1_upvr.isSmallTouchScreen = false
	setmetatable_result1_upvr.resetCameraAngle = true
	setmetatable_result1_upvr.enabled = false
	setmetatable_result1_upvr.PlayerGui = nil
	setmetatable_result1_upvr.cameraChangedConn = nil
	setmetatable_result1_upvr.viewportSizeChangedConn = nil
	setmetatable_result1_upvr.shouldUseVRRotation = false
	setmetatable_result1_upvr.VRRotationIntensityAvailable = false
	setmetatable_result1_upvr.lastVRRotationIntensityCheckTime = 0
	setmetatable_result1_upvr.lastVRRotationTime = 0
	setmetatable_result1_upvr.vrRotateKeyCooldown = {}
	setmetatable_result1_upvr.cameraTranslationConstraints = Vector3.new(1, 1, 1)
	setmetatable_result1_upvr.humanoidJumpOrigin = nil
	setmetatable_result1_upvr.trackingHumanoid = nil
	setmetatable_result1_upvr.cameraFrozen = false
	setmetatable_result1_upvr.subjectStateChangedConn = nil
	setmetatable_result1_upvr.gamepadZoomPressConnection = nil
	setmetatable_result1_upvr.mouseLockOffset = Vector3.new(0, 0, 0)
	if LocalPlayer_upvr.Character then
		setmetatable_result1_upvr:OnCharacterAdded(LocalPlayer_upvr.Character)
	end
	LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 130
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnCharacterAdded(arg1)
	end)
	if setmetatable_result1_upvr.playerCameraModeChangeConn then
		setmetatable_result1_upvr.playerCameraModeChangeConn:Disconnect()
	end
	setmetatable_result1_upvr.playerCameraModeChangeConn = LocalPlayer_upvr:GetPropertyChangedSignal("CameraMode"):Connect(function() -- Line 135
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnPlayerCameraPropertyChange()
	end)
	if setmetatable_result1_upvr.minDistanceChangeConn then
		setmetatable_result1_upvr.minDistanceChangeConn:Disconnect()
	end
	setmetatable_result1_upvr.minDistanceChangeConn = LocalPlayer_upvr:GetPropertyChangedSignal("CameraMinZoomDistance"):Connect(function() -- Line 140
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnPlayerCameraPropertyChange()
	end)
	if setmetatable_result1_upvr.maxDistanceChangeConn then
		setmetatable_result1_upvr.maxDistanceChangeConn:Disconnect()
	end
	setmetatable_result1_upvr.maxDistanceChangeConn = LocalPlayer_upvr:GetPropertyChangedSignal("CameraMaxZoomDistance"):Connect(function() -- Line 145
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnPlayerCameraPropertyChange()
	end)
	if setmetatable_result1_upvr.playerDevTouchMoveModeChangeConn then
		setmetatable_result1_upvr.playerDevTouchMoveModeChangeConn:Disconnect()
	end
	setmetatable_result1_upvr.playerDevTouchMoveModeChangeConn = LocalPlayer_upvr:GetPropertyChangedSignal("DevTouchMovementMode"):Connect(function() -- Line 150
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnDevTouchMovementModeChanged()
	end)
	setmetatable_result1_upvr:OnDevTouchMovementModeChanged()
	if setmetatable_result1_upvr.gameSettingsTouchMoveMoveChangeConn then
		setmetatable_result1_upvr.gameSettingsTouchMoveMoveChangeConn:Disconnect()
	end
	setmetatable_result1_upvr.gameSettingsTouchMoveMoveChangeConn = UserGameSettings_upvr:GetPropertyChangedSignal("TouchMovementMode"):Connect(function() -- Line 156
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnGameSettingsTouchMovementModeChanged()
	end)
	setmetatable_result1_upvr:OnGameSettingsTouchMovementModeChanged()
	UserGameSettings_upvr:SetCameraYInvertVisible()
	UserGameSettings_upvr:SetGamepadCameraSensitivityVisible()
	setmetatable_result1_upvr.hasGameLoaded = game:IsLoaded()
	if not setmetatable_result1_upvr.hasGameLoaded then
		setmetatable_result1_upvr.gameLoadedConn = game.Loaded:Connect(function() -- Line 166
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			setmetatable_result1_upvr.hasGameLoaded = true
			setmetatable_result1_upvr.gameLoadedConn:Disconnect()
			setmetatable_result1_upvr.gameLoadedConn = nil
		end)
	end
	setmetatable_result1_upvr:OnPlayerCameraPropertyChange()
	return setmetatable_result1_upvr
end
function module_2_upvr.GetModuleName(arg1) -- Line 178
	return "BaseCamera"
end
function module_2_upvr.OnCharacterAdded(arg1, arg2) -- Line 182
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	local resetCameraAngle = arg1.resetCameraAngle
	if not resetCameraAngle then
		resetCameraAngle = arg1:GetEnabled()
	end
	arg1.resetCameraAngle = resetCameraAngle
	arg1.humanoidRootPart = nil
	if UserInputService_upvr.TouchEnabled then
		arg1.PlayerGui = LocalPlayer_upvr:WaitForChild("PlayerGui")
		for _, v in ipairs(arg2:GetChildren()) do
			if v:IsA("Tool") then
				arg1.isAToolEquipped = true
			end
		end
		arg2.ChildAdded:Connect(function(arg1_2) -- Line 192
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_2:IsA("Tool") then
				arg1.isAToolEquipped = true
			end
		end)
		arg2.ChildRemoved:Connect(function(arg1_3) -- Line 197
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_3:IsA("Tool") then
				arg1.isAToolEquipped = false
			end
		end)
	end
end
function module_2_upvr.GetHumanoidRootPart(arg1) -- Line 205
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	if not arg1.humanoidRootPart then
		if LocalPlayer_upvr.Character then
			local class_Humanoid_2 = LocalPlayer_upvr.Character:FindFirstChildOfClass("Humanoid")
			if class_Humanoid_2 then
				arg1.humanoidRootPart = class_Humanoid_2.RootPart
			end
		end
	end
	return arg1.humanoidRootPart
end
function module_2_upvr.GetBodyPartToFollow(arg1, arg2, arg3) -- Line 217
	if arg2:GetState() == Enum.HumanoidStateType.Dead then
		local Parent = arg2.Parent
		if Parent and Parent:IsA("Model") then
			local Head_2 = Parent:FindFirstChild("Head")
			if not Head_2 then
				Head_2 = arg2.RootPart
			end
			return Head_2
		end
	end
	return arg2.RootPart
end
function module_2_upvr.GetSubjectCFrame(arg1) -- Line 229
	--[[ Upvalues[1]:
		[1]: UserFixCameraOffsetJitter_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local CurrentCamera_7 = workspace.CurrentCamera
	local var43 = CurrentCamera_7
	if var43 then
		var43 = CurrentCamera_7.CameraSubject
	end
	if not var43 then
		return arg1.lastSubjectCFrame
	end
	if var43:IsA("Humanoid") then
		local var44
		if var43:GetState() ~= Enum.HumanoidStateType.Dead then
			var44 = false
		else
			var44 = true
		end
		if UserFixCameraOffsetJitter_upvr and arg1:GetIsMouseLocked() then
		end
		local RootPart_7 = var43.RootPart
		if var44 and var43.Parent and var43.Parent:IsA("Model") then
			RootPart_7 = var43.Parent:FindFirstChild("Head") or RootPart_7
		end
		if RootPart_7 then
			local var46
			if var46 then
				var46 = nil
				if var43.RigType == Enum.HumanoidRigType.R15 then
					if var43.AutomaticScalingEnabled then
						var46 = Vector3.new(0, 1.5, 0)
						local RootPart_5 = var43.RootPart
						if RootPart_7 == RootPart_5 then
							var46 += Vector3.new(0, (RootPart_5.Size.Y - Vector3.new(2, 2, 1).Y) / 2, 0)
							-- KONSTANTWARNING: GOTO [102] #74
						end
					else
						var46 = Vector3.new(0, 2, 0)
					end
				else
					var46 = Vector3.new(0, 1.5, 0)
				end
				if var44 then
					var46 = Vector3.new(0, 0, 0)
				end
				local _ = RootPart_7.CFrame * CFrame.new(var46 + Vector3.new())
				-- KONSTANTWARNING: GOTO [137] #101
			end
			-- KONSTANTWARNING: GOTO [137] #101
		end
	else
		RootPart_7 = "BasePart"
		var44 = var43:IsA(RootPart_7)
		if var44 then
		else
			RootPart_7 = "Model"
			var44 = var43:IsA(RootPart_7)
			if var44 then
				var44 = var43.PrimaryPart
				if var44 then
					var44 = var43:GetPrimaryPartCFrame()
				else
					var44 = CFrame.new()
				end
			end
		end
	end
	if var44 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.lastSubjectCFrame = var44
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return var44
end
function module_2_upvr.GetSubjectVelocity(arg1) -- Line 303
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local CurrentCamera_3 = workspace.CurrentCamera
	local var54 = CurrentCamera_3
	if var54 then
		var54 = CurrentCamera_3.CameraSubject
	end
	if not var54 then
		return Vector3.new(0, 0, 0)
	end
	if var54:IsA("BasePart") then
		return var54.Velocity
	end
	if var54:IsA("Humanoid") then
		local RootPart_4 = var54.RootPart
		if RootPart_4 then
			do
				return RootPart_4.Velocity
			end
			-- KONSTANTWARNING: GOTO [42] #32
		end
	elseif var54:IsA("Model") then
		local PrimaryPart_2 = var54.PrimaryPart
		if PrimaryPart_2 then
			return PrimaryPart_2.Velocity
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 32. Error Block 14 start (CF ANALYSIS FAILED)
	do
		return Vector3.new(0, 0, 0)
	end
	-- KONSTANTERROR: [42] 32. Error Block 14 end (CF ANALYSIS FAILED)
end
function module_2_upvr.GetSubjectRotVelocity(arg1) -- Line 332
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local CurrentCamera_8 = workspace.CurrentCamera
	local var58 = CurrentCamera_8
	if var58 then
		var58 = CurrentCamera_8.CameraSubject
	end
	if not var58 then
		return Vector3.new(0, 0, 0)
	end
	if var58:IsA("BasePart") then
		return var58.RotVelocity
	end
	if var58:IsA("Humanoid") then
		local RootPart_2 = var58.RootPart
		if RootPart_2 then
			do
				return RootPart_2.RotVelocity
			end
			-- KONSTANTWARNING: GOTO [42] #32
		end
	elseif var58:IsA("Model") then
		local PrimaryPart = var58.PrimaryPart
		if PrimaryPart then
			return PrimaryPart.RotVelocity
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 32. Error Block 14 start (CF ANALYSIS FAILED)
	do
		return Vector3.new(0, 0, 0)
	end
	-- KONSTANTERROR: [42] 32. Error Block 14 end (CF ANALYSIS FAILED)
end
function module_2_upvr.StepZoom(arg1) -- Line 361
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	local _ = arg1.currentSubjectDistance
	local var63
	if 0 < var63 then
		var63 = nil
		if 0 < module_5_upvr.getZoomDelta() then
			var63 = _ + module_5_upvr.getZoomDelta() * (_ * 0.5 + 1)
			var63 = math.max(var63, arg1.FIRST_PERSON_DISTANCE_THRESHOLD)
		else
			var63 = (_ + module_5_upvr.getZoomDelta()) / (1 - module_5_upvr.getZoomDelta() * 0.5)
			var63 = math.max(var63, 0.5)
		end
		if var63 < arg1.FIRST_PERSON_DISTANCE_THRESHOLD then
		end
		arg1:SetCameraToSubjectDistance(0.5)
	end
	return module_3_upvr.GetZoomRadius()
end
function module_2_upvr.GetSubjectPosition(arg1) -- Line 386
	--[[ Upvalues[1]:
		[1]: UserFixCameraOffsetJitter_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 75 start (CF ANALYSIS FAILED)
	local CurrentCamera_2 = game.Workspace.CurrentCamera
	local var65 = CurrentCamera_2
	if var65 then
		var65 = CurrentCamera_2.CameraSubject
	end
	if var65 then
		if var65:IsA("Humanoid") then
			local var66
			if var65:GetState() ~= Enum.HumanoidStateType.Dead then
				var66 = false
			else
				var66 = true
			end
			if UserFixCameraOffsetJitter_upvr and arg1:GetIsMouseLocked() then
			end
			local RootPart_3 = var65.RootPart
			if var66 and var65.Parent and var65.Parent:IsA("Model") then
				RootPart_3 = var65.Parent:FindFirstChild("Head") or RootPart_3
			end
			if RootPart_3 then
				local var68
				if var68 then
					var68 = nil
					if var65.RigType == Enum.HumanoidRigType.R15 then
						if var65.AutomaticScalingEnabled then
							var68 = Vector3.new(0, 1.5, 0)
							if RootPart_3 == var65.RootPart then
								var68 += Vector3.new(0, var65.RootPart.Size.Y / 2 - Vector3.new(2, 2, 1).Y / 2, 0)
								-- KONSTANTWARNING: GOTO [106] #76
							end
						else
							var68 = Vector3.new(0, 2, 0)
						end
					else
						var68 = Vector3.new(0, 1.5, 0)
					end
					if var66 then
						var68 = Vector3.new(0, 0, 0)
					end
					local _ = RootPart_3.CFrame.p + RootPart_3.CFrame:vectorToWorldSpace(var68 + Vector3.new())
					-- KONSTANTWARNING: GOTO [181] #130
				end
				-- KONSTANTWARNING: GOTO [181] #130
			end
		else
			RootPart_3 = "VehicleSeat"
			var66 = var65:IsA(RootPart_3)
			if var66 then
				var66 = var65.CFrame.p
				var68 = Vector3.new(0, 5, 0)
			else
				RootPart_3 = "SkateboardPlatform"
				var66 = var65:IsA(RootPart_3)
				if var66 then
					var66 = var65.CFrame.p
				else
					RootPart_3 = "BasePart"
					var66 = var65:IsA(RootPart_3)
					if var66 then
						var66 = var65.CFrame
					else
						RootPart_3 = "Model"
						var66 = var65:IsA(RootPart_3)
						if var66 then
							var66 = var65.PrimaryPart
							if var66 then
								var66 = var65:GetPrimaryPartCFrame()
							else
								var66 = var65:GetModelCFrame()
							end
							-- KONSTANTWARNING: GOTO [181] #130
						end
					end
				end
			end
		end
	else
		var66 = nil
		return var66
	end
	-- KONSTANTERROR: [0] 1. Error Block 75 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [181] 130. Error Block 45 start (CF ANALYSIS FAILED)
	arg1.lastSubject = var65
	arg1.lastSubjectPosition = var66.p
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	do
		return var66.p
	end
	-- KONSTANTERROR: [181] 130. Error Block 45 end (CF ANALYSIS FAILED)
end
function module_2_upvr.OnViewportSizeChanged(arg1) -- Line 463
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local game = game
	local ViewportSize = game.Workspace.CurrentCamera.ViewportSize
	if ViewportSize.X >= ViewportSize.Y then
		game = false
	else
		game = true
	end
	arg1.portraitMode = game
	game = UserInputService_upvr.TouchEnabled
	if game then
		game = true
		if ViewportSize.Y >= 500 then
			if ViewportSize.X >= 700 then
				game = false
			else
				game = true
			end
		end
	end
	arg1.isSmallTouchScreen = game
end
function module_2_upvr.OnCurrentCameraChanged(arg1) -- Line 471
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	if UserInputService_upvr.TouchEnabled then
		if arg1.viewportSizeChangedConn then
			arg1.viewportSizeChangedConn:Disconnect()
			arg1.viewportSizeChangedConn = nil
		end
		local CurrentCamera_9 = game.Workspace.CurrentCamera
		if CurrentCamera_9 then
			arg1:OnViewportSizeChanged()
			arg1.viewportSizeChangedConn = CurrentCamera_9:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 482
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:OnViewportSizeChanged()
			end)
		end
	end
	if arg1.cameraSubjectChangedConn then
		arg1.cameraSubjectChangedConn:Disconnect()
		arg1.cameraSubjectChangedConn = nil
	end
	local CurrentCamera_4 = game.Workspace.CurrentCamera
	if CurrentCamera_4 then
		arg1.cameraSubjectChangedConn = CurrentCamera_4:GetPropertyChangedSignal("CameraSubject"):Connect(function() -- Line 496
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:OnNewCameraSubject()
		end)
		arg1:OnNewCameraSubject()
	end
end
function module_2_upvr.OnDynamicThumbstickEnabled(arg1) -- Line 503
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	if UserInputService_upvr.TouchEnabled then
		arg1.isDynamicThumbstickEnabled = true
	end
end
function module_2_upvr.OnDynamicThumbstickDisabled(arg1) -- Line 509
	arg1.isDynamicThumbstickEnabled = false
end
function module_2_upvr.OnGameSettingsTouchMovementModeChanged(arg1) -- Line 513
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
	]]
	if LocalPlayer_upvr.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
		if UserGameSettings_upvr.TouchMovementMode == Enum.TouchMovementMode.DynamicThumbstick or UserGameSettings_upvr.TouchMovementMode == Enum.TouchMovementMode.Default then
			arg1:OnDynamicThumbstickEnabled()
			return
		end
		arg1:OnDynamicThumbstickDisabled()
	end
end
function module_2_upvr.OnDevTouchMovementModeChanged(arg1) -- Line 524
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	if LocalPlayer_upvr.DevTouchMovementMode == Enum.DevTouchMovementMode.DynamicThumbstick then
		arg1:OnDynamicThumbstickEnabled()
	else
		arg1:OnGameSettingsTouchMovementModeChanged()
	end
end
function module_2_upvr.OnPlayerCameraPropertyChange(arg1) -- Line 532
	arg1:SetCameraToSubjectDistance(arg1.currentSubjectDistance)
end
function module_2_upvr.InputTranslationToCameraAngleChange(arg1, arg2, arg3) -- Line 537
	return arg2 * arg3
end
local UserFixGamepadMaxZoom_upvr = module.UserFixGamepadMaxZoom
function module_2_upvr.GamepadZoomPress(arg1) -- Line 543
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: UserFixGamepadMaxZoom_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = #arg1.gamepadZoomLevels
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 33. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 33. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [44.2147485261]
	-- KONSTANTERROR: [12] 10. Error Block 2 end (CF ANALYSIS FAILED)
end
function module_2_upvr.Enable(arg1, arg2) -- Line 588
	if arg1.enabled ~= arg2 then
		arg1.enabled = arg2
		arg1:OnEnabledChanged()
	end
end
function module_2_upvr.OnEnabledChanged(arg1) -- Line 596
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	if arg1.enabled then
		module_5_upvr.setInputEnabled(true)
		arg1.gamepadZoomPressConnection = module_5_upvr.gamepadZoomPress:Connect(function() -- Line 600
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:GamepadZoomPress()
		end)
		if LocalPlayer_upvr.CameraMode == Enum.CameraMode.LockFirstPerson then
			arg1.currentSubjectDistance = 0.5
			if not arg1.inFirstPerson then
				arg1:EnterFirstPerson()
			end
		end
		if arg1.cameraChangedConn then
			arg1.cameraChangedConn:Disconnect()
			arg1.cameraChangedConn = nil
		end
		arg1.cameraChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 612
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:OnCurrentCameraChanged()
		end)
		arg1:OnCurrentCameraChanged()
	else
		module_5_upvr.setInputEnabled(false)
		if arg1.gamepadZoomPressConnection then
			arg1.gamepadZoomPressConnection:Disconnect()
			arg1.gamepadZoomPressConnection = nil
		end
		arg1:Cleanup()
	end
end
function module_2_upvr.GetEnabled(arg1) -- Line 628
	return arg1.enabled
end
function module_2_upvr.Cleanup(arg1) -- Line 632
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if arg1.subjectStateChangedConn then
		arg1.subjectStateChangedConn:Disconnect()
		arg1.subjectStateChangedConn = nil
	end
	if arg1.viewportSizeChangedConn then
		arg1.viewportSizeChangedConn:Disconnect()
		arg1.viewportSizeChangedConn = nil
	end
	if arg1.cameraChangedConn then
		arg1.cameraChangedConn:Disconnect()
		arg1.cameraChangedConn = nil
	end
	arg1.lastCameraTransform = nil
	arg1.lastSubjectCFrame = nil
	module_6_upvr.restoreMouseBehavior()
end
local module_7_upvr = require(script.Parent:WaitForChild("CameraUI"))
local module_4_upvr = require(script.Parent:WaitForChild("CameraToggleStateController"))
function module_2_upvr.UpdateMouseBehavior(arg1) -- Line 653
	--[[ Upvalues[5]:
		[1]: UserGameSettings_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: module_4_upvr (readonly)
		[5]: module_6_upvr (readonly)
	]]
	local var87
	if UserGameSettings_upvr.ComputerMovementMode ~= Enum.ComputerMovementMode.ClickToMove then
		var87 = false
	else
		var87 = true
	end
	if arg1.isCameraToggle and var87 == false then
		module_7_upvr.setCameraModeToastEnabled(true)
		module_5_upvr.enableCameraToggleInput()
		module_4_upvr(arg1.inFirstPerson)
	else
		module_7_upvr.setCameraModeToastEnabled(false)
		module_5_upvr.disableCameraToggleInput()
		if arg1.inFirstPerson or arg1.inMouseLockedMode then
			module_6_upvr.setRotationTypeOverride(Enum.RotationType.CameraRelative)
			module_6_upvr.setMouseBehaviorOverride(Enum.MouseBehavior.LockCenter)
			return
		end
		module_6_upvr.restoreRotationType()
		if module_5_upvr.getRotationActivated() then
			module_6_upvr.setMouseBehaviorOverride(Enum.MouseBehavior.LockCurrentPosition)
			return
		end
		module_6_upvr.restoreMouseBehavior()
	end
end
function module_2_upvr.UpdateForDistancePropertyChange(arg1) -- Line 681
	arg1:SetCameraToSubjectDistance(arg1.currentSubjectDistance)
end
function module_2_upvr.SetCameraToSubjectDistance(arg1, arg2) -- Line 687
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 6. Error Block 16 start (CF ANALYSIS FAILED)
	arg1.currentSubjectDistance = 0.5
	if not arg1.inFirstPerson then
		arg1:EnterFirstPerson()
		-- KONSTANTWARNING: GOTO [52] #35
	end
	-- KONSTANTERROR: [9] 6. Error Block 16 end (CF ANALYSIS FAILED)
end
function module_2_upvr.SetCameraType(arg1, arg2) -- Line 721
	arg1.cameraType = arg2
end
function module_2_upvr.GetCameraType(arg1) -- Line 726
	return arg1.cameraType
end
function module_2_upvr.SetCameraMovementMode(arg1, arg2) -- Line 731
	arg1.cameraMovementMode = arg2
end
function module_2_upvr.GetCameraMovementMode(arg1) -- Line 735
	return arg1.cameraMovementMode
end
function module_2_upvr.SetIsMouseLocked(arg1, arg2) -- Line 739
	arg1.inMouseLockedMode = arg2
end
function module_2_upvr.GetIsMouseLocked(arg1) -- Line 743
	return arg1.inMouseLockedMode
end
function module_2_upvr.SetMouseLockOffset(arg1, arg2) -- Line 747
	arg1.mouseLockOffset = arg2
end
function module_2_upvr.GetMouseLockOffset(arg1) -- Line 751
	return arg1.mouseLockOffset
end
function module_2_upvr.InFirstPerson(arg1) -- Line 755
	return arg1.inFirstPerson
end
function module_2_upvr.EnterFirstPerson(arg1) -- Line 759
	arg1.inFirstPerson = true
	arg1:UpdateMouseBehavior()
end
function module_2_upvr.LeaveFirstPerson(arg1) -- Line 764
	arg1.inFirstPerson = false
	arg1:UpdateMouseBehavior()
end
function module_2_upvr.GetCameraToSubjectDistance(arg1) -- Line 770
	return arg1.currentSubjectDistance
end
function module_2_upvr.GetMeasuredDistanceToFocus(arg1) -- Line 777
	local CurrentCamera_6 = game.Workspace.CurrentCamera
	if CurrentCamera_6 then
		return (CurrentCamera_6.CoordinateFrame.p - CurrentCamera_6.Focus.p).magnitude
	end
	return nil
end
function module_2_upvr.GetCameraLookVector(arg1) -- Line 785
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 5. Error Block 6 start (CF ANALYSIS FAILED)
	local LookVector = game.Workspace.CurrentCamera.CFrame.LookVector
	if not LookVector then
		-- KONSTANTERROR: [18] 11. Error Block 3 start (CF ANALYSIS FAILED)
		LookVector = Vector3.new(0, 0, 1)
		-- KONSTANTERROR: [18] 11. Error Block 3 end (CF ANALYSIS FAILED)
	end
	do
		return LookVector
	end
	-- KONSTANTERROR: [7] 5. Error Block 6 end (CF ANALYSIS FAILED)
end
function module_2_upvr.CalculateNewLookCFrameFromArg(arg1, arg2, arg3) -- Line 789
	local var90 = arg2
	if not var90 then
		var90 = arg1:GetCameraLookVector()
	end
	local arcsine = math.asin(var90.Y)
	local vector2 = Vector2.new(arg3.X, math.clamp(arg3.Y, arcsine + -1.3962634015954636, arcsine + 1.3962634015954636))
	return CFrame.Angles(0, -vector2.X, 0) * CFrame.new(Vector3.new(0, 0, 0), var90) * CFrame.Angles(-vector2.Y, 0, 0)
end
function module_2_upvr.CalculateNewLookVectorFromArg(arg1, arg2, arg3) -- Line 799
	return arg1:CalculateNewLookCFrameFromArg(arg2, arg3).LookVector
end
function module_2_upvr.CalculateNewLookVectorVRFromArg(arg1, arg2) -- Line 804
	local vector2_2 = Vector2.new(arg2.X, 0)
	return ((CFrame.Angles(0, -vector2_2.X, 0) * CFrame.new(Vector3.new(0, 0, 0), ((arg1:GetSubjectPosition() - game.Workspace.CurrentCamera.CFrame.p) * Vector3.new(1, 0, 1)).unit) * CFrame.Angles(-vector2_2.Y, 0, 0)).LookVector * Vector3.new(1, 0, 1)).unit
end
function module_2_upvr.GetHumanoid(arg1) -- Line 814
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	local var94 = LocalPlayer_upvr
	if var94 then
		var94 = LocalPlayer_upvr.Character
	end
	if var94 then
		local var95 = arg1.humanoidCache[LocalPlayer_upvr]
		if var95 and var95.Parent == var94 then
			return var95
		end
		arg1.humanoidCache[LocalPlayer_upvr] = nil
		local class_Humanoid = var94:FindFirstChildOfClass("Humanoid")
		if class_Humanoid then
			arg1.humanoidCache[LocalPlayer_upvr] = class_Humanoid
		end
		return class_Humanoid
	end
	return nil
end
function module_2_upvr.GetHumanoidPartToFollow(arg1, arg2, arg3) -- Line 832
	if arg3 == Enum.HumanoidStateType.Dead then
		local Parent_2 = arg2.Parent
		if Parent_2 then
			local Head = Parent_2:FindFirstChild("Head")
			if not Head then
				Head = arg2.Torso
			end
			return Head
		end
		return arg2.Torso
	end
	return arg2.Torso
end
function module_2_upvr.OnNewCameraSubject(arg1) -- Line 846
	if arg1.subjectStateChangedConn then
		arg1.subjectStateChangedConn:Disconnect()
		arg1.subjectStateChangedConn = nil
	end
end
function module_2_upvr.IsInFirstPerson(arg1) -- Line 853
	return arg1.inFirstPerson
end
function module_2_upvr.Update(arg1, arg2) -- Line 857
	error("BaseCamera:Update() This is a virtual function that should never be getting called.", 2)
end
local VRService_upvr = game:GetService("VRService")
function module_2_upvr.GetCameraHeight(arg1) -- Line 861
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	if VRService_upvr.VREnabled and not arg1.inFirstPerson then
		return 0.25881904510252074 * arg1.currentSubjectDistance
	end
	return 0
end
return module_2_upvr