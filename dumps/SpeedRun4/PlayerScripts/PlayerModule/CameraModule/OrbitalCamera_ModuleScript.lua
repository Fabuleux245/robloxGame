-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:10
-- Luau version 6, Types version 3
-- Time taken: 0.011751 seconds

local tbl = {
	InitialDistance = 25;
	MinDistance = 10;
	MaxDistance = 100;
	InitialElevation = 35;
	MinElevation = 35;
	MaxElevation = 35;
	ReferenceAzimuth = -45;
	CWAzimuthTravel = 90;
	CCWAzimuthTravel = 90;
	UseAzimuthLimits = false;
}
local Players_upvr = game:GetService("Players")
local module_upvr = require(script.Parent:WaitForChild("BaseCamera"))
local setmetatable_result1_upvr = setmetatable({}, module_upvr)
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
function setmetatable_result1_upvr.new() -- Line 47
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable(module_upvr.new(), setmetatable_result1_upvr)
	setmetatable_result1.lastUpdate = tick()
	setmetatable_result1.changedSignalConnections = {}
	setmetatable_result1.refAzimuthRad = nil
	setmetatable_result1.curAzimuthRad = nil
	setmetatable_result1.minAzimuthAbsoluteRad = nil
	setmetatable_result1.maxAzimuthAbsoluteRad = nil
	setmetatable_result1.useAzimuthLimits = nil
	setmetatable_result1.curElevationRad = nil
	setmetatable_result1.minElevationRad = nil
	setmetatable_result1.maxElevationRad = nil
	setmetatable_result1.curDistance = nil
	setmetatable_result1.minDistance = nil
	setmetatable_result1.maxDistance = nil
	setmetatable_result1.gamepadDollySpeedMultiplier = 1
	setmetatable_result1.lastUserPanCamera = tick()
	setmetatable_result1.externalProperties = {}
	setmetatable_result1.externalProperties.InitialDistance = 25
	setmetatable_result1.externalProperties.MinDistance = 10
	setmetatable_result1.externalProperties.MaxDistance = 100
	setmetatable_result1.externalProperties.InitialElevation = 35
	setmetatable_result1.externalProperties.MinElevation = 35
	setmetatable_result1.externalProperties.MaxElevation = 35
	setmetatable_result1.externalProperties.ReferenceAzimuth = -45
	setmetatable_result1.externalProperties.CWAzimuthTravel = 90
	setmetatable_result1.externalProperties.CCWAzimuthTravel = 90
	setmetatable_result1.externalProperties.UseAzimuthLimits = false
	setmetatable_result1:LoadNumberValueParameters()
	return setmetatable_result1
end
function setmetatable_result1_upvr.LoadOrCreateNumberValueParameter(arg1, arg2, arg3, arg4) -- Line 86
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local SOME = script:FindFirstChild(arg2)
	if SOME and SOME:isA(arg3) then
		arg1.externalProperties[arg2] = SOME.Value
		-- KONSTANTWARNING: GOTO [41] #29
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 14. Error Block 20 start (CF ANALYSIS FAILED)
	if arg1.externalProperties[arg2] ~= nil then
		local any = Instance.new(arg3)
		any.Name = arg2
		any.Parent = script
		any.Value = arg1.externalProperties[arg2]
	else
		return
	end
	if arg4 then
		if arg1.changedSignalConnections[arg2] then
			arg1.changedSignalConnections[arg2]:Disconnect()
		end
		arg1.changedSignalConnections[arg2] = any.Changed:Connect(function(arg1_2) -- Line 106
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: arg4 (readonly)
			]]
			arg1.externalProperties[arg2] = arg1_2
			arg4(arg1)
		end)
	end
	-- KONSTANTERROR: [18] 14. Error Block 20 end (CF ANALYSIS FAILED)
end
function setmetatable_result1_upvr.SetAndBoundsCheckAzimuthValues(arg1) -- Line 113
	arg1.minAzimuthAbsoluteRad = math.rad(arg1.externalProperties.ReferenceAzimuth) - math.abs(math.rad(arg1.externalProperties.CWAzimuthTravel))
	arg1.maxAzimuthAbsoluteRad = math.rad(arg1.externalProperties.ReferenceAzimuth) + math.abs(math.rad(arg1.externalProperties.CCWAzimuthTravel))
	arg1.useAzimuthLimits = arg1.externalProperties.UseAzimuthLimits
	if arg1.useAzimuthLimits then
		arg1.curAzimuthRad = math.max(arg1.curAzimuthRad, arg1.minAzimuthAbsoluteRad)
		arg1.curAzimuthRad = math.min(arg1.curAzimuthRad, arg1.maxAzimuthAbsoluteRad)
	end
end
function setmetatable_result1_upvr.SetAndBoundsCheckElevationValues(arg1) -- Line 123
	local maximum = math.max(arg1.externalProperties.MinElevation, -80)
	local minimum = math.min(arg1.externalProperties.MaxElevation, 80)
	arg1.minElevationRad = math.rad(math.min(maximum, minimum))
	arg1.maxElevationRad = math.rad(math.max(maximum, minimum))
	arg1.curElevationRad = math.max(arg1.curElevationRad, arg1.minElevationRad)
	arg1.curElevationRad = math.min(arg1.curElevationRad, arg1.maxElevationRad)
end
function setmetatable_result1_upvr.SetAndBoundsCheckDistanceValues(arg1) -- Line 139
	arg1.minDistance = arg1.externalProperties.MinDistance
	arg1.maxDistance = arg1.externalProperties.MaxDistance
	arg1.curDistance = math.max(arg1.curDistance, arg1.minDistance)
	arg1.curDistance = math.min(arg1.curDistance, arg1.maxDistance)
end
function setmetatable_result1_upvr.LoadNumberValueParameters(arg1) -- Line 147
	arg1:LoadOrCreateNumberValueParameter("InitialElevation", "NumberValue", nil)
	arg1:LoadOrCreateNumberValueParameter("InitialDistance", "NumberValue", nil)
	arg1:LoadOrCreateNumberValueParameter("ReferenceAzimuth", "NumberValue", arg1.SetAndBoundsCheckAzimuthValue)
	arg1:LoadOrCreateNumberValueParameter("CWAzimuthTravel", "NumberValue", arg1.SetAndBoundsCheckAzimuthValues)
	arg1:LoadOrCreateNumberValueParameter("CCWAzimuthTravel", "NumberValue", arg1.SetAndBoundsCheckAzimuthValues)
	arg1:LoadOrCreateNumberValueParameter("MinElevation", "NumberValue", arg1.SetAndBoundsCheckElevationValues)
	arg1:LoadOrCreateNumberValueParameter("MaxElevation", "NumberValue", arg1.SetAndBoundsCheckElevationValues)
	arg1:LoadOrCreateNumberValueParameter("MinDistance", "NumberValue", arg1.SetAndBoundsCheckDistanceValues)
	arg1:LoadOrCreateNumberValueParameter("MaxDistance", "NumberValue", arg1.SetAndBoundsCheckDistanceValues)
	arg1:LoadOrCreateNumberValueParameter("UseAzimuthLimits", "BoolValue", arg1.SetAndBoundsCheckAzimuthValues)
	arg1.curAzimuthRad = math.rad(arg1.externalProperties.ReferenceAzimuth)
	arg1.curElevationRad = math.rad(arg1.externalProperties.InitialElevation)
	arg1.curDistance = arg1.externalProperties.InitialDistance
	arg1:SetAndBoundsCheckAzimuthValues()
	arg1:SetAndBoundsCheckElevationValues()
	arg1:SetAndBoundsCheckDistanceValues()
end
function setmetatable_result1_upvr.GetModuleName(arg1) -- Line 172
	return "OrbitalCamera"
end
local module_upvr_2 = require(script.Parent:WaitForChild("CameraUtils"))
function setmetatable_result1_upvr.SetInitialOrientation(arg1, arg2) -- Line 176
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if not arg2 or not arg2.RootPart then
		warn("OrbitalCamera could not set initial orientation due to missing humanoid")
	else
		assert(arg2.RootPart, "")
		local Unit = (arg2.RootPart.CFrame.LookVector - Vector3.new(0, 0.23000, 0)).Unit
		if not module_upvr_2.IsFinite(module_upvr_2.GetAngleBetweenXZVectors(Unit, arg1:GetCameraLookVector())) then
		end
		if not module_upvr_2.IsFinite(math.asin(arg1:GetCameraLookVector().Y) - math.asin(Unit.Y)) then
		end
	end
end
function setmetatable_result1_upvr.GetCameraToSubjectDistance(arg1) -- Line 194
	return arg1.curDistance
end
function setmetatable_result1_upvr.SetCameraToSubjectDistance(arg1, arg2) -- Line 198
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	if Players_upvr.LocalPlayer then
		arg1.currentSubjectDistance = math.clamp(arg2, arg1.minDistance, arg1.maxDistance)
		arg1.currentSubjectDistance = math.max(arg1.currentSubjectDistance, arg1.FIRST_PERSON_DISTANCE_THRESHOLD)
	end
	arg1.inFirstPerson = false
	arg1:UpdateMouseBehavior()
	return arg1.currentSubjectDistance
end
function setmetatable_result1_upvr.CalculateNewLookVector(arg1, arg2, arg3) -- Line 211
	local var13 = arg2
	if not var13 then
		var13 = arg1:GetCameraLookVector()
	end
	local arcsine = math.asin(var13.Y)
	local vector2 = Vector2.new(arg3.X, math.clamp(arg3.Y, arcsine - 1.3962634015954636, arcsine - -1.3962634015954636))
	return (CFrame.Angles(0, -vector2.X, 0) * CFrame.new(Vector3.new(0, 0, 0), var13) * CFrame.Angles(-vector2.Y, 0, 0)).LookVector
end
local module_upvr_3 = require(script.Parent:WaitForChild("CameraInput"))
local VRService_upvr = game:GetService("VRService")
local UserRemoveVRReferences_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("FeatureFlags")).UserRemoveVRReferences
function setmetatable_result1_upvr.Update(arg1, arg2) -- Line 222
	--[[ Upvalues[4]:
		[1]: module_upvr_3 (readonly)
		[2]: Players_upvr (readonly)
		[3]: VRService_upvr (readonly)
		[4]: UserRemoveVRReferences_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tick_result1 = tick()
	local lastUpdate = arg1.lastUpdate
	local var37 = tick_result1 - lastUpdate
	local var38
	if module_upvr_3.getRotation() == Vector2.new() then
		lastUpdate = false
	else
		lastUpdate = true
	end
	local CurrentCamera_2 = workspace.CurrentCamera
	var38 = Players_upvr
	var38 = CurrentCamera_2
	if var38 then
		var38 = CurrentCamera_2.CameraSubject
	end
	if var38 then
	end
	if var38 then
	end
	if arg1.lastUpdate == nil or 1 < var37 then
		arg1.lastCameraTransform = nil
	end
	if lastUpdate then
		arg1.lastUserPanCamera = tick()
	end
	local any_GetSubjectPosition_result1 = arg1:GetSubjectPosition()
	if any_GetSubjectPosition_result1 then
		local var41
		if var38.LocalPlayer and CurrentCamera_2 then
			if arg1.gamepadDollySpeedMultiplier ~= 1 then
				arg1:SetCameraToSubjectDistance(arg1.currentSubjectDistance * arg1.gamepadDollySpeedMultiplier)
			end
			var41 = VRService_upvr
			local VREnabled = var41.VREnabled
			if VREnabled then
				var41 = UserRemoveVRReferences_upvr
				VREnabled = not var41
			end
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var41 = arg1:GetVRFocus(any_GetSubjectPosition_result1, var37)
				return var41
			end
			if not VREnabled or not INLINED_2() then
				var41 = CFrame.new(any_GetSubjectPosition_result1)
			end
			local var43 = var41
			var41 = module_upvr_3.getRotation()
			if VREnabled and not arg1:IsInFirstPerson() then
				local var44 = any_GetSubjectPosition_result1 - CurrentCamera_2.CFrame.p
				local Magnitude = var44.Magnitude
				if arg1.currentSubjectDistance < Magnitude or var41.X ~= 0 then
					local var46 = arg1:CalculateNewLookVector(var44.Unit * Vector3.new(1, 0, 1), Vector2.new(var41.X, 0)) * math.min(Magnitude, arg1.currentSubjectDistance)
					local _ = var43.p - var46
					local LookVector = CurrentCamera_2.CFrame.LookVector
					if var41.X ~= 0 then
						LookVector = var46
					end
					-- KONSTANTWARNING: GOTO [269] #184
				end
				-- KONSTANTWARNING: GOTO [269] #184
			end
			local var49
			arg1.curAzimuthRad -= var41.X
			if arg1.useAzimuthLimits then
				arg1.curAzimuthRad = math.clamp(arg1.curAzimuthRad, arg1.minAzimuthAbsoluteRad, arg1.maxAzimuthAbsoluteRad)
			else
				if arg1.curAzimuthRad == 0 or not (math.sign(arg1.curAzimuthRad) * math.abs(arg1.curAzimuthRad) % (-math.pi*2)) then
				end
				arg1.curAzimuthRad = 0
			end
			arg1.curElevationRad = math.clamp(arg1.curElevationRad + var41.Y, arg1.minElevationRad, arg1.maxElevationRad)
			arg1.lastCameraTransform = CFrame.new(any_GetSubjectPosition_result1 + (arg1.currentSubjectDistance) * (CFrame.fromEulerAnglesYXZ(-arg1.curElevationRad, arg1.curAzimuthRad, 0) * Vector3.new(0, 0, 1)), any_GetSubjectPosition_result1)
			arg1.lastCameraFocus = var43
			if var38:IsA("VehicleSeat") or var38:IsA("SkateboardPlatform") or var38:IsA("BasePart") then
				arg1.lastSubjectCFrame = var38.CFrame
			else
				arg1.lastSubjectCFrame = nil
			end
		end
	end
	arg1.lastUpdate = tick_result1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return CFrame.new(any_GetSubjectPosition_result1 + (arg1.currentSubjectDistance) * (CFrame.fromEulerAnglesYXZ(-arg1.curElevationRad, arg1.curAzimuthRad, 0) * Vector3.new(0, 0, 1)), any_GetSubjectPosition_result1), var43
end
return setmetatable_result1_upvr