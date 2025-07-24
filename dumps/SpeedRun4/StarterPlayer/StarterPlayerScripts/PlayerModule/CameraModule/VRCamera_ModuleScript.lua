-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:38:56
-- Luau version 6, Types version 3
-- Time taken: 0.016277 seconds

local UserVRAvatarGestures_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("FeatureFlags")).UserVRAvatarGestures
local Players_upvr = game:GetService("Players")
local VRService_upvr = game:GetService("VRService")
local module_upvr = require(script.Parent:WaitForChild("VRBaseCamera"))
local setmetatable_result1_upvr = setmetatable({}, module_upvr)
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
function setmetatable_result1_upvr.new() -- Line 32
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
		[3]: UserVRAvatarGestures_upvr (readonly)
		[4]: Players_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable(module_upvr.new(), setmetatable_result1_upvr)
	setmetatable_result1.lastUpdate = tick()
	setmetatable_result1.focusOffset = CFrame.new()
	setmetatable_result1:Reset()
	if UserVRAvatarGestures_upvr then
		setmetatable_result1.controlModule = require(Players_upvr.LocalPlayer:WaitForChild("PlayerScripts").PlayerModule:WaitForChild("ControlModule"))
		setmetatable_result1.savedAutoRotate = true
	end
	return setmetatable_result1
end
function setmetatable_result1_upvr.Reset(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.needsReset = true
	arg1.needsBlackout = true
	arg1.motionDetTime = 0
	arg1.blackOutTimer = 0
	arg1.lastCameraResetPosition = nil
	module_upvr.Reset(arg1)
end
function setmetatable_result1_upvr.Update(arg1, arg2) -- Line 56
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: UserVRAvatarGestures_upvr (readonly)
		[3]: VRService_upvr (readonly)
	]]
	local LocalPlayer = Players_upvr.LocalPlayer
	if arg1.lastUpdate == nil or 1 < arg2 then
		arg1.lastCameraTransform = nil
	end
	arg1:UpdateFadeFromBlack(arg2)
	arg1:UpdateEdgeBlur(LocalPlayer, arg2)
	local any_GetSubjectPosition_result1 = arg1:GetSubjectPosition()
	if arg1.needsBlackout then
		arg1:StartFadeFromBlack()
		arg1.blackOutTimer += math.clamp(arg2, 0.0001, 0.1)
		if 0.1 < arg1.blackOutTimer and game:IsLoaded() then
			arg1.needsBlackout = false
			arg1.needsReset = true
			local var24
		end
	end
	if any_GetSubjectPosition_result1 and LocalPlayer and workspace.CurrentCamera then
		local any_GetVRFocus_result1_3 = arg1:GetVRFocus(any_GetSubjectPosition_result1, arg2)
		if arg1:IsInFirstPerson() then
			if UserVRAvatarGestures_upvr and VRService_upvr.AvatarGestures then
				local any_UpdateImmersionCamera_result1, any_UpdateImmersionCamera_result2_2 = arg1:UpdateImmersionCamera(arg2, var24, any_GetVRFocus_result1_3, arg1.lastSubjectPosition, any_GetSubjectPosition_result1)
				var24 = any_UpdateImmersionCamera_result1
				any_GetVRFocus_result1_3 = any_UpdateImmersionCamera_result2_2
				local var28 = any_GetVRFocus_result1_3
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local any_UpdateFirstPersonTransform_result1, any_UpdateFirstPersonTransform_result2_2 = arg1:UpdateFirstPersonTransform(arg2, var24, var28, arg1.lastSubjectPosition, any_GetSubjectPosition_result1)
				var24 = any_UpdateFirstPersonTransform_result1
				var28 = any_UpdateFirstPersonTransform_result2_2
			end
		elseif VRService_upvr.ThirdPersonFollowCamEnabled then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local any_UpdateThirdPersonFollowTransform_result1, any_UpdateThirdPersonFollowTransform_result2_2 = arg1:UpdateThirdPersonFollowTransform(arg2, var24, var28, arg1.lastSubjectPosition, any_GetSubjectPosition_result1)
			var24 = any_UpdateThirdPersonFollowTransform_result1
			var28 = any_UpdateThirdPersonFollowTransform_result2_2
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local any_UpdateThirdPersonComfortTransform_result1_2, any_UpdateThirdPersonComfortTransform_result2 = arg1:UpdateThirdPersonComfortTransform(arg2, var24, var28, arg1.lastSubjectPosition, any_GetSubjectPosition_result1)
			var24 = any_UpdateThirdPersonComfortTransform_result1_2
			var28 = any_UpdateThirdPersonComfortTransform_result2
		end
		arg1.lastCameraTransform = var24
		arg1.lastCameraFocus = var28
	end
	arg1.lastUpdate = tick()
	return var24, var28
end
function setmetatable_result1_upvr.GetAvatarFeetWorldYValue(arg1) -- Line 118
	local CameraSubject = workspace.CurrentCamera.CameraSubject
	if not CameraSubject then
		return nil
	end
	if CameraSubject:IsA("Humanoid") and CameraSubject.RootPart then
		local RootPart = CameraSubject.RootPart
		return RootPart.Position.Y - RootPart.Size.Y / 2 - CameraSubject.HipHeight
	end
	return nil
end
function setmetatable_result1_upvr.UpdateFirstPersonTransform(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 133
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	if arg1.needsReset then
		arg1:StartFadeFromBlack()
		arg1.needsReset = false
	end
	if 0.01 < (arg5 - arg6).magnitude then
		arg1:StartVREdgeBlur(Players_upvr.LocalPlayer)
	end
	local p = arg4.p
	local any_GetCameraLookVector_result1 = arg1:GetCameraLookVector()
	return CFrame.new(p - 0.5 * arg1:CalculateNewLookVectorFromArg(Vector3.new(any_GetCameraLookVector_result1.X, 0, any_GetCameraLookVector_result1.Z).Unit, Vector2.new(arg1:getRotation(arg2), 0)), p), arg4
end
function setmetatable_result1_upvr.UpdateImmersionCamera(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 159
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: VRService_upvr (readonly)
	]]
	local CurrentCamera_2 = workspace.CurrentCamera
	local Character = Players_upvr.LocalPlayer.Character
	local any_GetHumanoid_result1_4 = arg1:GetHumanoid()
	local var42
	if not any_GetHumanoid_result1_4 then
		return CurrentCamera_2.CFrame, CurrentCamera_2.Focus
	end
	local HumanoidRootPart_2 = Character:FindFirstChild("HumanoidRootPart")
	if not HumanoidRootPart_2 then
		return CurrentCamera_2.CFrame, CurrentCamera_2.Focus
	end
	arg1.characterOrientation = HumanoidRootPart_2:FindFirstChild("CharacterAlignOrientation")
	if not arg1.characterOrientation then
		local RootAttachment = HumanoidRootPart_2:FindFirstChild("RootAttachment")
		if not RootAttachment then return end
		arg1.characterOrientation = Instance.new("AlignOrientation")
		arg1.characterOrientation.Name = "CharacterAlignOrientation"
		arg1.characterOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
		arg1.characterOrientation.Attachment0 = RootAttachment
		arg1.characterOrientation.RigidityEnabled = true
		arg1.characterOrientation.Parent = HumanoidRootPart_2
	end
	if arg1.characterOrientation.Enabled == false then
		arg1.characterOrientation.Enabled = true
	end
	if arg1.needsReset then
		arg1.needsReset = false
		arg1.savedAutoRotate = any_GetHumanoid_result1_4.AutoRotate
		any_GetHumanoid_result1_4.AutoRotate = false
		if arg1.NoRecenter then
			arg1.NoRecenter = false
			VRService_upvr:RecenterUserHeadCFrame()
		end
		arg1:StartFadeFromBlack()
		var42 = arg1:GetSubjectCFrame()
	else
		arg1.characterOrientation.CFrame = CurrentCamera_2.CFrame * arg1.controlModule:GetEstimatedVRTorsoFrame()
		if 0 < arg1.controlModule.inputMoveVector.Magnitude then
			arg1.motionDetTime = 0.1
		end
		if 0 < arg1.controlModule.inputMoveVector.Magnitude or 0 < arg1.motionDetTime then
			arg1.motionDetTime -= arg2
			arg1:StartVREdgeBlur(Players_upvr.LocalPlayer)
			local any_GetUserCFrame_result1 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
			local HumanoidRootPart = Character.HumanoidRootPart
			local LookVector = HumanoidRootPart.CFrame.LookVector
			local var48 = arg6 - (CurrentCamera_2.CFrame * (any_GetUserCFrame_result1.Rotation + any_GetUserCFrame_result1.Position * CurrentCamera_2.HeadScale) * CFrame.new(0, -0.7 * HumanoidRootPart.Size.Y / 2, 0) - Vector3.new(LookVector.X, 0, LookVector.Z).Unit * HumanoidRootPart.Size.Y * 0.125).Position + CurrentCamera_2.CFrame.Position
			var42 = CurrentCamera_2.CFrame.Rotation + Vector3.new(var48.X, arg6.Y, var48.Z)
		else
			var42 = CurrentCamera_2.CFrame.Rotation + Vector3.new(CurrentCamera_2.CFrame.Position.X, arg6.Y, CurrentCamera_2.CFrame.Position.Z)
		end
		local any_getRotation_result1_2 = arg1:getRotation(arg2)
		if 0 < math.abs(any_getRotation_result1_2) then
			local any_GetUserCFrame_result1_2 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
			local var51 = any_GetUserCFrame_result1_2.Rotation + any_GetUserCFrame_result1_2.Position * CurrentCamera_2.HeadScale
			local var52 = var42 * var51
			var42 = CFrame.new(var52.Position) * CFrame.Angles(0, -math.rad(any_getRotation_result1_2 * 90), 0) * var52.Rotation * var51:Inverse()
		end
	end
	return var42, var42 * CFrame.new(0, 0, -0.5)
end
function setmetatable_result1_upvr.UpdateThirdPersonComfortTransform(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 263
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: UserVRAvatarGestures_upvr (readonly)
		[3]: VRService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var62
	if var62 < 0.5 then
		var62 = 0.5
	end
	if arg5 ~= nil then
		local var63
		if arg1.lastCameraFocus ~= nil then
			var63 = nil
			if UserVRAvatarGestures_upvr then
				arg1.controlModule:GetMoveVector()
			else
				var63 = require(Players_upvr.LocalPlayer:WaitForChild("PlayerScripts").PlayerModule:WaitForChild("ControlModule")):GetMoveVector()
			end
			if 0.01 >= (arg5 - arg6).magnitude then
				if 0.01 >= var63.magnitude then
				else
				end
			end
			if true then
				arg1.motionDetTime = 0.1
			end
			arg1.motionDetTime -= arg2
			if 0 < arg1.motionDetTime then
				local var64
			end
			if true and not arg1.needsReset then
				var64 = arg1.lastCameraFocus
				arg1.VRCameraFocusFrozen = true
				return arg3, var64
			end
			local var65 = true
			if arg1.lastCameraResetPosition ~= nil then
				if 1 >= (arg6 - arg1.lastCameraResetPosition).Magnitude then
					var65 = false
				else
					var65 = true
				end
			end
			if 0 < math.abs(arg1:getRotation(arg2)) then
			end
			local var67
			if arg1.VRCameraFocusFrozen and var65 or arg1.needsReset then
				VRService_upvr:RecenterUserHeadCFrame()
				arg1.VRCameraFocusFrozen = false
				arg1.needsReset = false
				arg1.lastCameraResetPosition = arg6
				arg1:ResetZoom()
				arg1:StartFadeFromBlack()
				local any_GetHumanoid_result1_2 = arg1:GetHumanoid()
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var67 = any_GetHumanoid_result1_2.Torso.CFrame.lookVector
					return var67
				end
				if not any_GetHumanoid_result1_2.Torso or not INLINED_2() then
					var67 = Vector3.new(1, 0, 0)
				end
				local var69 = var64.Position - Vector3.new(var67.X, 0, var67.Z) * var62
			end
		end
	end
	return CFrame.new(var69, Vector3.new(var64.Position.X, var69.Y, var64.Position.Z)), var64
end
function setmetatable_result1_upvr.UpdateThirdPersonFollowTransform(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 335
	--[[ Upvalues[3]:
		[1]: VRService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: UserVRAvatarGestures_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local CurrentCamera = workspace.CurrentCamera
	local any_GetVRFocus_result1 = arg1:GetVRFocus(arg6, arg2)
	local var72
	if arg1.needsReset then
		arg1.needsReset = false
		VRService_upvr:RecenterUserHeadCFrame()
		arg1:ResetZoom()
		arg1:StartFadeFromBlack()
	end
	if arg1.recentered then
		local any_GetSubjectCFrame_result1 = arg1:GetSubjectCFrame()
		if not any_GetSubjectCFrame_result1 then
			return CurrentCamera.CFrame, CurrentCamera.Focus
		end
		var72 = 0
		local var74 = any_GetVRFocus_result1 * any_GetSubjectCFrame_result1.Rotation * CFrame.new(var72, 0, arg1:GetCameraToSubjectDistance())
		var72 = var74
		arg1.focusOffset = any_GetVRFocus_result1:ToObjectSpace(var72)
		arg1.recentered = false
		return var74, any_GetVRFocus_result1
	end
	var72 = nil
	if UserVRAvatarGestures_upvr then
		var72 = arg1.controlModule
	else
		var72 = require(Players_upvr.LocalPlayer:WaitForChild("PlayerScripts").PlayerModule:WaitForChild("ControlModule"))
	end
	if 0.01 < (arg5 - arg6).magnitude or 0 < var72:GetMoveVector().magnitude then
		local any_GetEstimatedVRTorsoFrame_result1 = var72:GetEstimatedVRTorsoFrame()
		local LookVector_2 = (CurrentCamera.CFrame * (any_GetEstimatedVRTorsoFrame_result1.Rotation + any_GetEstimatedVRTorsoFrame_result1.Position * CurrentCamera.HeadScale)).LookVector
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	else
	end
	local any_getRotation_result1_3 = arg1:getRotation(arg2)
	if 0 < math.abs(any_getRotation_result1_3) then
		local var80 = any_GetVRFocus_result1 * CFrame.Angles(0, -any_getRotation_result1_3, 0) * any_GetVRFocus_result1:ToObjectSpace(any_GetVRFocus_result1:ToWorldSpace(arg1.focusOffset))
	end
	arg1.focusOffset = any_GetVRFocus_result1:ToObjectSpace(var80)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var81 = var80 * CFrame.new(0, 0, -arg1:GetCameraToSubjectDistance())
	if 0.01 < (var81.Position - CurrentCamera.Focus.Position).Magnitude then
		arg1:StartVREdgeBlur(Players_upvr.LocalPlayer)
	end
	return var80, var81
end
function setmetatable_result1_upvr.LeaveFirstPerson(arg1) -- Line 418
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: UserVRAvatarGestures_upvr (readonly)
	]]
	module_upvr.LeaveFirstPerson(arg1)
	arg1.needsReset = true
	if arg1.VRBlur then
		arg1.VRBlur.Visible = false
	end
	if UserVRAvatarGestures_upvr then
		if arg1.characterOrientation then
			arg1.characterOrientation.Enabled = false
		end
		local any_GetHumanoid_result1_3 = arg1:GetHumanoid()
		if any_GetHumanoid_result1_3 then
			any_GetHumanoid_result1_3.AutoRotate = arg1.savedAutoRotate
		end
	end
end
return setmetatable_result1_upvr