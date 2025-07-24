-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:38:50
-- Luau version 6, Types version 3
-- Time taken: 0.020503 seconds

local module_upvr_2 = require(script.Parent:WaitForChild("CameraInput"))
local module_upvr_3 = require(script.Parent:WaitForChild("CameraUtils"))
local module_upvr = require(script.Parent:WaitForChild("BaseCamera"))
local setmetatable_result1_upvr = setmetatable({}, module_upvr)
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
function setmetatable_result1_upvr.new() -- Line 39
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	local setmetatable_result1 = setmetatable(module_upvr.new(), setmetatable_result1_upvr)
	setmetatable_result1.isFollowCamera = false
	setmetatable_result1.isCameraToggle = false
	setmetatable_result1.lastUpdate = tick()
	setmetatable_result1.cameraToggleSpring = module_upvr_3.Spring.new(5, 0)
	return setmetatable_result1
end
function setmetatable_result1_upvr.GetCameraToggleOffset(arg1, arg2) -- Line 50
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	if arg1.isCameraToggle then
		if module_upvr_2.getTogglePan() then
			arg1.cameraToggleSpring.goal = math.clamp(module_upvr_3.map(arg1.currentSubjectDistance, 0.5, arg1.FIRST_PERSON_DISTANCE_THRESHOLD, 0, 1), 0, 1)
		else
			arg1.cameraToggleSpring.goal = 0
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Vector3.new(0, arg1.cameraToggleSpring:step(arg2) * (math.clamp(module_upvr_3.map(arg1.currentSubjectDistance, 0.5, 64, 0, 1), 0, 1) + 1), 0)
	end
	return Vector3.new()
end
function setmetatable_result1_upvr.SetCameraMovementMode(arg1, arg2) -- Line 68
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local SetCameraMovementMode_2 = module_upvr.SetCameraMovementMode
	SetCameraMovementMode_2(arg1, arg2)
	if arg2 ~= Enum.ComputerCameraMovementMode.Follow then
		SetCameraMovementMode_2 = false
	else
		SetCameraMovementMode_2 = true
	end
	arg1.isFollowCamera = SetCameraMovementMode_2
	if arg2 ~= Enum.ComputerCameraMovementMode.CameraToggle then
		SetCameraMovementMode_2 = false
	else
		SetCameraMovementMode_2 = true
	end
	arg1.isCameraToggle = SetCameraMovementMode_2
end
local cframe_upvr = CFrame.fromOrientation(-0.2617993877991494, 0, 0)
local Players_upvr = game:GetService("Players")
local var9_upvw = 0
local UserRemoveVRReferences_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("FeatureFlags")).UserRemoveVRReferences
local VRService_upvr = game:GetService("VRService")
function setmetatable_result1_upvr.Update(arg1) -- Line 75
	--[[ Upvalues[7]:
		[1]: cframe_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: var9_upvw (read and write)
		[5]: module_upvr_3 (readonly)
		[6]: UserRemoveVRReferences_upvr (readonly)
		[7]: VRService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tick_result1 = tick()
	local var43 = tick_result1 - arg1.lastUpdate
	local CurrentCamera = workspace.CurrentCamera
	local var45
	if arg1.resetCameraAngle then
		local any_GetHumanoidRootPart_result1 = arg1:GetHumanoidRootPart()
		if any_GetHumanoidRootPart_result1 then
			var45 = (any_GetHumanoidRootPart_result1.CFrame * cframe_upvr).lookVector
		else
			var45 = cframe_upvr.lookVector
		end
		arg1.resetCameraAngle = false
	end
	local any_GetHumanoid_result1 = arg1:GetHumanoid()
	local CameraSubject_2 = CurrentCamera.CameraSubject
	if CameraSubject_2 then
		local children = CameraSubject_2:IsA("VehicleSeat")
	end
	if CameraSubject_2 then
		local children_2 = CameraSubject_2:IsA("SkateboardPlatform")
	end
	if any_GetHumanoid_result1 then
		if any_GetHumanoid_result1:GetState() ~= Enum.HumanoidStateType.Climbing then
		else
		end
	end
	if arg1.lastUpdate == nil or 1 < var43 then
		arg1.lastCameraTransform = nil
	end
	arg1:StepZoom()
	if module_upvr_2.getRotation() ~= Vector2.new() then
		var9_upvw = 0
		arg1.lastUserPanCamera = tick()
	end
	if tick_result1 - arg1.lastUserPanCamera >= 2 then
	else
	end
	if arg1:GetSubjectPosition() then
		local var51
		if Players_upvr.LocalPlayer and CurrentCamera then
			if arg1:GetCameraToSubjectDistance() < 0.5 then
				local var52 = 0.5
			end
			if arg1:GetIsMouseLocked() then
				if not arg1:IsInFirstPerson() then
					local any_CalculateNewLookCFrameFromArg_result1 = arg1:CalculateNewLookCFrameFromArg(var45, module_upvr_2.getRotation())
					local any_GetMouseLockOffset_result1_2 = arg1:GetMouseLockOffset()
					local var55 = any_GetMouseLockOffset_result1_2.X * any_CalculateNewLookCFrameFromArg_result1.RightVector + any_GetMouseLockOffset_result1_2.Y * any_CalculateNewLookCFrameFromArg_result1.UpVector + any_GetMouseLockOffset_result1_2.Z * any_CalculateNewLookCFrameFromArg_result1.LookVector
					if module_upvr_3.IsFiniteVector3(var55) then
						var51 += var55
						-- KONSTANTWARNING: GOTO [354] #264
					end
					-- KONSTANTWARNING: GOTO [354] #264
				end
			end
			local var56
			if module_upvr_2.getRotation() == Vector2.new() then
				var56 = false
			else
				var56 = true
			end
			if not var56 and arg1.lastCameraTransform then
				local var57
				if children or children_2 or arg1.isFollowCamera and true or arg1.lastUpdate and any_GetHumanoid_result1 and any_GetHumanoid_result1.Torso then
					if arg1:IsInFirstPerson() then
						if arg1.lastSubjectCFrame and (children or children_2) or CameraSubject_2:IsA("BasePart") then
							local var58 = -module_upvr_3.GetAngleBetweenXZVectors(arg1.lastSubjectCFrame.lookVector, CameraSubject_2.CFrame.lookVector)
							if module_upvr_3.IsFinite(var58) then
								var57 += Vector2.new(var58, 0)
							end
							var9_upvw = 0
							-- KONSTANTWARNING: GOTO [354] #264
						end
					elseif not true then
						var9_upvw = math.clamp(var9_upvw + 3.839724354387525 * var43, 0, 4.363323129985824)
						local var59
						if arg1:IsInFirstPerson() and (not arg1.isFollowCamera or not arg1.isClimbing) then
							var59 = 1
						end
						local any_GetAngleBetweenXZVectors_result1 = module_upvr_3.GetAngleBetweenXZVectors(any_GetHumanoid_result1.Torso.CFrame.lookVector, arg1:GetCameraLookVector())
						if module_upvr_3.IsFinite(any_GetAngleBetweenXZVectors_result1) and 0.0001 < math.abs(any_GetAngleBetweenXZVectors_result1) then
							var57 += Vector2.new(any_GetAngleBetweenXZVectors_result1 * var59, 0)
							-- KONSTANTWARNING: GOTO [354] #264
						end
						-- KONSTANTWARNING: GOTO [354] #264
					end
				else
					local function INLINED_7() -- Internal function, doesn't exist in bytecode
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						return arg1:IsInFirstPerson()
					end
					local function INLINED_8() -- Internal function, doesn't exist in bytecode
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						return true
					end
					local function INLINED_9() -- Internal function, doesn't exist in bytecode
						var59 = VRService_upvr
						return var59.VREnabled
					end
					local function INLINED_10() -- Internal function, doesn't exist in bytecode
						local var61 = var59
						var59 = module_upvr_3.GetAngleBetweenXZVectors(-var59, arg1:GetCameraLookVector())
						var59 = arg1.lastCameraTransform.p - var51
						return module_upvr_3.IsFinite(var61)
					end
					if arg1.isFollowCamera and not INLINED_7() and not INLINED_8() and (UserRemoveVRReferences_upvr or not INLINED_9()) or INLINED_10() and 0.0001 < math.abs(var61) and 0.4 * var43 < math.abs(var61) then
						var57 += Vector2.new(var61, 0)
					end
				end
			end
			var56 = arg1.isFollowCamera
			local var62
			if not var56 then
				var56 = VRService_upvr.VREnabled
				if var56 then
					var56 = not UserRemoveVRReferences_upvr
				end
				if var56 then
					var61 = var51
					var62 = arg1:GetVRFocus(var61, var43)
				else
					var62 = CFrame.new(var51)
				end
				local p = var62.p
				if var56 and not arg1:IsInFirstPerson() then
					var61 = CurrentCamera.CFrame.p
					var61 = (var51 - var61).magnitude
					local var64 = var61
					local var65 = var57
					if var52 < var64 or var65.x ~= 0 then
						local var66 = arg1:CalculateNewLookVectorFromArg(nil, var57) * math.min(var64, var52)
						local _ = p - var66
						local lookVector_2 = CurrentCamera.CFrame.lookVector
						if var65.x ~= 0 then
							lookVector_2 = var66
						end
						-- KONSTANTWARNING: GOTO [505] #376
					end
				else
					var64 = CFrame.new(p - var52 * arg1:CalculateNewLookVectorFromArg(var45, var57), p)
				end
			else
				var64 = var57
				if VRService_upvr.VREnabled and not UserRemoveVRReferences_upvr then
					var64 = var51
					var62 = arg1:GetVRFocus(var64, var43)
				else
					var62 = CFrame.new(var51)
				end
				var64 = var62.p
				var64 = var62.p
				var64 = 0
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1.lastCameraTransform = CFrame.new(var64 - var52 * arg1:CalculateNewLookVectorFromArg(var45, var64), var64) + Vector3.new(var64, arg1:GetCameraHeight(), 0) + arg1:GetCameraToggleOffset(var43)
			arg1.lastCameraFocus = var62 + arg1:GetCameraToggleOffset(var43)
			local function INLINED_11() -- Internal function, doesn't exist in bytecode
				var64 = "BasePart"
				return CameraSubject_2:IsA(var64)
			end
			if children or children_2 or INLINED_11() then
				arg1.lastSubjectCFrame = CameraSubject_2.CFrame
			else
				arg1.lastSubjectCFrame = nil
			end
		end
	end
	arg1.lastUpdate = tick_result1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	return CFrame.new(var64 - var52 * arg1:CalculateNewLookVectorFromArg(var45, var64), var64) + Vector3.new(var64, arg1:GetCameraHeight(), 0) + arg1:GetCameraToggleOffset(var43), var62 + arg1:GetCameraToggleOffset(var43)
end
return setmetatable_result1_upvr