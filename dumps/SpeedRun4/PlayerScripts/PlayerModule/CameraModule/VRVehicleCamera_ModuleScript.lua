-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:15
-- Luau version 6, Types version 3
-- Time taken: 0.015400 seconds

local UserVRVehicleCamera2_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("FeatureFlags")).UserVRVehicleCamera2
local tbl_upvr = {0, 30}
local module_upvr_3 = require(script.Parent:WaitForChild("VRBaseCamera"))
local module_upvr_2 = require(script.Parent:WaitForChild("CameraUtils"))
local module_upvr_4 = require(script.Parent.VehicleCamera:FindFirstChild("VehicleCameraConfig"))
local VRService_upvr = game:GetService("VRService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local mapClamp_upvr = module_upvr_2.mapClamp
local function _(arg1, arg2) -- Line 42, Named "pitchVelocity"
	return math.abs(arg2.XVector:Dot(arg1))
end
local function _(arg1, arg2) -- Line 47, Named "yawVelocity"
	return math.abs(arg2.YVector:Dot(arg1))
end
local var9_upvw = (1/60)
local setmetatable_result1_upvr = setmetatable({}, module_upvr_3)
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
local RunService_upvr = game:GetService("RunService")
function setmetatable_result1_upvr.new() -- Line 55
	--[[ Upvalues[4]:
		[1]: module_upvr_3 (readonly)
		[2]: setmetatable_result1_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: var9_upvw (read and write)
	]]
	local setmetatable_result1 = setmetatable(module_upvr_3.new(), setmetatable_result1_upvr)
	setmetatable_result1:Reset()
	RunService_upvr.Stepped:Connect(function(arg1, arg2) -- Line 60
		--[[ Upvalues[1]:
			[1]: var9_upvw (copied, read and write)
		]]
		var9_upvw = arg2
	end)
	return setmetatable_result1
end
local module_upvr_5 = require(script.Parent.VehicleCamera:FindFirstChild("VehicleCameraCore"))
local Spring_upvr = module_upvr_2.Spring
function setmetatable_result1_upvr.Reset(arg1) -- Line 68
	--[[ Upvalues[6]:
		[1]: module_upvr_5 (readonly)
		[2]: UserVRVehicleCamera2_upvr (readonly)
		[3]: Spring_upvr (readonly)
		[4]: module_upvr_4 (readonly)
		[5]: module_upvr_2 (readonly)
		[6]: tbl_upvr (readonly)
	]]
	arg1.vehicleCameraCore = module_upvr_5.new(arg1:GetSubjectCFrame())
	if UserVRVehicleCamera2_upvr then
		arg1.pitchSpring = Spring_upvr.new(0, 0)
	else
		arg1.pitchSpring = Spring_upvr.new(0, -math.rad(module_upvr_4.pitchBaseAngle))
	end
	arg1.yawSpring = Spring_upvr.new(0, 0)
	if UserVRVehicleCamera2_upvr then
		arg1.lastPanTick = 0
		arg1.currentDriftAngle = 0
		arg1.needsReset = true
	end
	local CurrentCamera_2 = workspace.CurrentCamera
	local var21 = CurrentCamera_2
	if var21 then
		var21 = CurrentCamera_2.CameraSubject
	end
	assert(CurrentCamera_2, "VRVehicleCamera initialization error")
	assert(var21)
	assert(var21:IsA("VehicleSeat"))
	local any_getLooseBoundingSphere_result1, any_getLooseBoundingSphere_result2 = module_upvr_2.getLooseBoundingSphere(var21:GetConnectedParts(true))
	arg1.assemblyRadius = math.max(any_getLooseBoundingSphere_result2, 5)
	arg1.assemblyOffset = var21.CFrame:Inverse() * any_getLooseBoundingSphere_result1
	arg1.gamepadZoomLevels = {}
	for _, v in tbl_upvr do
		table.insert(arg1.gamepadZoomLevels, v * arg1.headScale * arg1.assemblyRadius / 10)
	end
	arg1.lastCameraFocus = nil
	arg1:SetCameraToSubjectDistance(arg1.gamepadZoomLevels[#arg1.gamepadZoomLevels])
end
local sanitizeAngle_upvr = module_upvr_2.sanitizeAngle
local module_upvr = require(script.Parent:WaitForChild("CameraInput"))
function setmetatable_result1_upvr._StepRotation(arg1, arg2, arg3) -- Line 108
	--[[ Upvalues[4]:
		[1]: sanitizeAngle_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_upvr_4 (readonly)
		[4]: mapClamp_upvr (readonly)
	]]
	local yawSpring = arg1.yawSpring
	local pitchSpring = arg1.pitchSpring
	yawSpring.pos = sanitizeAngle_upvr(yawSpring.pos + -arg1:getRotation(arg2))
	pitchSpring.pos = sanitizeAngle_upvr(math.clamp(pitchSpring.pos, -1.3962634015954636, 1.3962634015954636))
	if module_upvr.getRotationActivated() then
		arg1.lastPanTick = os.clock()
	end
	if module_upvr_4.autocorrectDelay < os.clock() - arg1.lastPanTick then
		local mapClamp_upvr_result1 = mapClamp_upvr(arg3, module_upvr_4.autocorrectMinCarSpeed, module_upvr_4.autocorrectMaxCarSpeed, 0, module_upvr_4.autocorrectResponse)
		yawSpring.freq = mapClamp_upvr_result1
		pitchSpring.freq = mapClamp_upvr_result1
		if yawSpring.freq < 0.001 then
			yawSpring.vel = 0
		end
		if pitchSpring.freq < 0.001 then
			pitchSpring.vel = 0
		end
		if math.abs(sanitizeAngle_upvr(0 - pitchSpring.pos)) <= math.rad(module_upvr_4.pitchDeadzoneAngle) then
			pitchSpring.goal = pitchSpring.pos
		else
			pitchSpring.goal = 0
		end
	else
		yawSpring.freq = 0
		yawSpring.vel = 0
		pitchSpring.freq = 0
		pitchSpring.vel = 0
		pitchSpring.goal = 0
	end
	return CFrame.fromEulerAnglesYXZ(pitchSpring:step(arg2), yawSpring:step(arg2), 0)
end
function setmetatable_result1_upvr._GetThirdPersonLocalOffset(arg1) -- Line 172
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	return arg1.assemblyOffset + Vector3.new(0, arg1.assemblyRadius * module_upvr_4.verticalCenterOffset, 0)
end
function setmetatable_result1_upvr._GetFirstPersonLocalOffset(arg1, arg2) -- Line 176
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	local Character = LocalPlayer_upvr.Character
	if Character and Character.Parent then
		local Head_2 = Character:FindFirstChild("Head")
		if Head_2 and Head_2:IsA("BasePart") then
			return arg2:Inverse() * Head_2.Position
		end
	end
	return arg1:_GetThirdPersonLocalOffset()
end
function setmetatable_result1_upvr.Update(arg1) -- Line 190
	--[[ Upvalues[4]:
		[1]: UserVRVehicleCamera2_upvr (readonly)
		[2]: var9_upvw (read and write)
		[3]: LocalPlayer_upvr (readonly)
		[4]: VRService_upvr (readonly)
	]]
	if UserVRVehicleCamera2_upvr then
		local var33 = var9_upvw
		var9_upvw = 0
		arg1:UpdateFadeFromBlack(var33)
		arg1:UpdateEdgeBlur(LocalPlayer_upvr, var33)
		if VRService_upvr.ThirdPersonFollowCamEnabled then
			local any_UpdateStepRotation_result1, any_UpdateStepRotation_result2 = arg1:UpdateStepRotation(var33)
			return any_UpdateStepRotation_result1, any_UpdateStepRotation_result2
		end
		local any_UpdateComfortCamera_result1, any_UpdateComfortCamera_result2 = arg1:UpdateComfortCamera(var33)
		return any_UpdateComfortCamera_result1, any_UpdateComfortCamera_result2
	end
	return arg1:UpdateComfortCamera()
end
function setmetatable_result1_upvr.addDrift(arg1, arg2, arg3) -- Line 213
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: VRService_upvr (readonly)
	]]
	local function _(arg1_2) -- Line 214, Named "NormalizeAngle"
		arg1_2 = (arg1_2 + 12.566370614359172) % (-math.pi*2)
		local var38 = arg1_2
		if math.pi < var38 then
			var38 -= (-math.pi*2)
		end
		return var38
	end
	local CurrentCamera_6 = workspace.CurrentCamera
	local var40
	if 0.1 < arg1:GetSubjectVelocity().Magnitude then
		local any_GetUserCFrame_result1 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
		local var42 = CurrentCamera_6.CFrame * (any_GetUserCFrame_result1.Rotation + any_GetUserCFrame_result1.Position * CurrentCamera_6.HeadScale)
		local _, any_ToEulerAnglesYXZ_result2, _ = var42:ToEulerAnglesYXZ()
		local _, any_ToEulerAnglesYXZ_result2_2, _ = arg1:GetSubjectCFrame():ToEulerAnglesYXZ()
		local var49 = (any_ToEulerAnglesYXZ_result2 - arg1.currentDriftAngle + 12.566370614359172) % (-math.pi*2)
		if math.pi < var49 then
			var49 -= (-math.pi*2)
		end
		local var50 = var49
		local var51 = (any_ToEulerAnglesYXZ_result2_2 - arg1.currentDriftAngle + 12.566370614359172) % (-math.pi*2)
		if math.pi < var51 then
			var51 -= (-math.pi*2)
		end
		local var52 = var51
		local minimum = math.min(var52, var50)
		local maximum = math.max(var52, var50)
		local var55 = 0
		if 0 < minimum then
			var55 = minimum
		elseif maximum < 0 then
			var55 = maximum
		end
		arg1.currentDriftAngle = var55 + arg1.currentDriftAngle
		local LookVector = CFrame.fromEulerAnglesYXZ(0, arg1.currentDriftAngle, 0).LookVector
		var40 = var40:Lerp(CFrame.new((CurrentCamera_6.CFrame.Position) + (arg3.Position - Vector3.new(LookVector.X, 0, LookVector.Z).Unit * arg1:GetCameraToSubjectDistance()) - var42.Position) * CurrentCamera_6.CFrame.Rotation, 0.01)
	end
	return var40, arg3
end
function setmetatable_result1_upvr.UpdateRotationCamera(arg1, arg2) -- Line 271
	--[[ Upvalues[2]:
		[1]: mapClamp_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	local CurrentCamera_5 = workspace.CurrentCamera
	local var58 = CurrentCamera_5
	if var58 then
		var58 = CurrentCamera_5.CameraSubject
	end
	local vehicleCameraCore = arg1.vehicleCameraCore
	assert(CurrentCamera_5)
	assert(var58)
	assert(var58:IsA("VehicleSeat"))
	local any_GetSubjectCFrame_result1_3 = arg1:GetSubjectCFrame()
	local any_GetSubjectVelocity_result1 = arg1:GetSubjectVelocity()
	local any_GetSubjectRotVelocity_result1 = arg1:GetSubjectRotVelocity()
	local any_GetCameraToSubjectDistance_result1_3 = arg1:GetCameraToSubjectDistance()
	local var8_result1 = mapClamp_upvr(any_GetCameraToSubjectDistance_result1_3, 0.5, arg1.assemblyRadius, 1, 0)
	vehicleCameraCore:setTransform(any_GetSubjectCFrame_result1_3)
	local var65 = arg1:GetVRFocus(any_GetSubjectCFrame_result1_3 * arg1:_GetThirdPersonLocalOffset():Lerp(arg1:_GetFirstPersonLocalOffset(any_GetSubjectCFrame_result1_3), var8_result1), arg2) * vehicleCameraCore:step(arg2, math.abs(any_GetSubjectCFrame_result1_3.XVector:Dot(any_GetSubjectRotVelocity_result1)), math.abs(any_GetSubjectCFrame_result1_3.YVector:Dot(any_GetSubjectRotVelocity_result1)), var8_result1) * arg1:_StepRotation(arg2, math.abs(any_GetSubjectVelocity_result1:Dot(any_GetSubjectCFrame_result1_3.ZVector)))
	if 0.1 < any_GetSubjectVelocity_result1.Magnitude then
		arg1:StartVREdgeBlur(LocalPlayer_upvr)
	end
	return var65 * CFrame.new(0, 0, any_GetCameraToSubjectDistance_result1_3), var65
end
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
function setmetatable_result1_upvr.UpdateStepRotation(arg1, arg2) -- Line 318
	--[[ Upvalues[4]:
		[1]: mapClamp_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
		[3]: VRService_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
	]]
	local CurrentCamera_4 = workspace.CurrentCamera
	local any_GetSubjectCFrame_result1 = arg1:GetSubjectCFrame()
	local any_GetCameraToSubjectDistance_result1_2 = arg1:GetCameraToSubjectDistance()
	local any_Lerp_result1_2 = arg1:_GetThirdPersonLocalOffset():Lerp(arg1:_GetFirstPersonLocalOffset(any_GetSubjectCFrame_result1), mapClamp_upvr(any_GetCameraToSubjectDistance_result1_2, 0.5, arg1.assemblyRadius, 1, 0))
	local any_GetVRFocus_result1 = arg1:GetVRFocus(any_GetSubjectCFrame_result1 * any_Lerp_result1_2, arg2)
	local _, any_addDrift_result2_2 = arg1:addDrift(any_GetVRFocus_result1:ToWorldSpace(arg1:GetVRFocus(arg1.lastSubjectCFrame * any_Lerp_result1_2, arg2):ToObjectSpace(CurrentCamera_4.CFrame)), any_GetVRFocus_result1)
	local var92 = any_addDrift_result2_2
	local any_getRotation_result1 = arg1:getRotation(arg2)
	local var94
	if 0 < math.abs(any_getRotation_result1) then
		local any_ToObjectSpace_result1_2 = var92:ToObjectSpace(var94)
		local var96 = var92 * CFrame.Angles(0, -any_getRotation_result1, 0) * any_ToObjectSpace_result1_2
		if not UserGameSettings_upvr.VRSmoothRotationEnabled then
			local any_GetUserCFrame_result1_3 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
			local var98 = any_GetUserCFrame_result1_3.Rotation + any_GetUserCFrame_result1_3.Position * CurrentCamera_4.HeadScale
			local var99 = var92 * any_GetSubjectCFrame_result1.Rotation
			local any_ToObjectSpace_result1 = var99:ToObjectSpace(var94 * var98)
			local arccosine_2 = math.acos(Vector3.new(any_ToObjectSpace_result1.X, 0, any_ToObjectSpace_result1.Z).Unit:Dot(Vector3.new(0, 0, 1)))
			local any_ToObjectSpace_result1_5 = var99:ToObjectSpace(var96 * var98)
			if math.acos(Vector3.new(any_ToObjectSpace_result1_5.X, 0, any_ToObjectSpace_result1_5.Z).Unit:Dot(Vector3.new(0, 0, 1))) < arccosine_2 then
				if any_getRotation_result1 < 0 then
					arccosine_2 *= -1
				end
				var96 = var92 * CFrame.Angles(0, -arccosine_2, 0) * any_ToObjectSpace_result1_2
			end
		end
		var94 = var96
	end
	if 0.1 < arg1:GetSubjectVelocity().Magnitude then
		arg1:StartVREdgeBlur(LocalPlayer_upvr)
	end
	if arg1.needsReset then
		arg1.needsReset = false
		VRService_upvr:RecenterUserHeadCFrame()
		arg1:StartFadeFromBlack()
		arg1:ResetZoom()
	end
	if arg1.recentered then
		var94 = var92 * any_GetSubjectCFrame_result1.Rotation * CFrame.new(0, 0, any_GetCameraToSubjectDistance_result1_2)
		arg1.recentered = false
	end
	return var94, var94 * CFrame.new(0, 0, -any_GetCameraToSubjectDistance_result1_2)
end
function setmetatable_result1_upvr.UpdateComfortCamera(arg1, arg2) -- Line 404
	--[[ Upvalues[4]:
		[1]: UserVRVehicleCamera2_upvr (readonly)
		[2]: var9_upvw (read and write)
		[3]: mapClamp_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
	local CurrentCamera_3 = workspace.CurrentCamera
	local var104 = CurrentCamera_3
	if var104 then
		var104 = CurrentCamera_3.CameraSubject
	end
	local vehicleCameraCore_2 = arg1.vehicleCameraCore
	assert(CurrentCamera_3)
	assert(var104)
	assert(var104:IsA("VehicleSeat"))
	if not UserVRVehicleCamera2_upvr then
		local var106 = var9_upvw
		var9_upvw = 0
	end
	local any_GetSubjectCFrame_result1_2 = arg1:GetSubjectCFrame()
	local any_GetSubjectRotVelocity_result1_2 = arg1:GetSubjectRotVelocity()
	local any_StepZoom_result1 = arg1:StepZoom()
	local mapClamp_upvr_result1_2 = mapClamp_upvr(any_StepZoom_result1, 0.5, arg1.assemblyRadius, 1, 0)
	vehicleCameraCore_2:setTransform(any_GetSubjectCFrame_result1_2)
	local any_step_result1 = vehicleCameraCore_2:step(var106, math.abs(any_GetSubjectCFrame_result1_2.XVector:Dot(any_GetSubjectRotVelocity_result1_2)), math.abs(any_GetSubjectCFrame_result1_2.YVector:Dot(any_GetSubjectRotVelocity_result1_2)), mapClamp_upvr_result1_2)
	if not UserVRVehicleCamera2_upvr then
		arg1:UpdateFadeFromBlack(var106)
	end
	if not arg1:IsInFirstPerson() then
		local var113 = CFrame.new(any_GetSubjectCFrame_result1_2 * arg1:_GetThirdPersonLocalOffset():Lerp(arg1:_GetFirstPersonLocalOffset(any_GetSubjectCFrame_result1_2), mapClamp_upvr_result1_2)) * any_step_result1
		if not arg1.lastCameraFocus then
			arg1.lastCameraFocus = var113
			arg1.needsReset = true
		end
		local var114 = var113.Position - CurrentCamera_3.CFrame.Position
		if 0.56 < var114.Unit:Dot(CurrentCamera_3.CFrame.LookVector) and var114.magnitude < 200 and not arg1.needsReset then
			local _ = arg1.lastCameraFocus.p
			local _ = arg1:GetCameraLookVector()
		else
			arg1.lastCameraFocus = arg1:GetVRFocus(any_GetSubjectCFrame_result1_2.Position, var106)
			arg1.needsReset = false
			arg1:StartFadeFromBlack()
			arg1:ResetZoom()
		end
		if not UserVRVehicleCamera2_upvr then
			arg1:UpdateEdgeBlur(LocalPlayer_upvr, var106)
			-- KONSTANTWARNING: GOTO [273] #198
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if UserVRVehicleCamera2_upvr then
			if 0.1 < arg1:GetSubjectVelocity().Magnitude then
				arg1:StartVREdgeBlur(LocalPlayer_upvr)
				-- KONSTANTWARNING: GOTO [273] #198
			end
		else
			arg1:StartVREdgeBlur(LocalPlayer_upvr)
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [273] 198. Error Block 24 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	do
		return CFrame.new(any_GetSubjectCFrame_result1_2 * arg1:_GetThirdPersonLocalOffset():Lerp(arg1:_GetFirstPersonLocalOffset(any_GetSubjectCFrame_result1_2), mapClamp_upvr_result1_2)) * CFrame.new(any_step_result1.Position, Vector3.new(any_step_result1.LookVector.X, 0, any_step_result1.LookVector.Z).Unit) * CFrame.new(0, 0, any_StepZoom_result1), CFrame.new(any_GetSubjectCFrame_result1_2 * arg1:_GetThirdPersonLocalOffset():Lerp(arg1:_GetFirstPersonLocalOffset(any_GetSubjectCFrame_result1_2), mapClamp_upvr_result1_2)) * CFrame.new(any_step_result1.Position, Vector3.new(any_step_result1.LookVector.X, 0, any_step_result1.LookVector.Z).Unit)
	end
	-- KONSTANTERROR: [273] 198. Error Block 24 end (CF ANALYSIS FAILED)
end
return setmetatable_result1_upvr