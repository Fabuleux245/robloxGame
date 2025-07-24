-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:59
-- Luau version 6, Types version 3
-- Time taken: 0.036968 seconds

local module_4_upvr = {}
local Players_upvr = game:GetService("Players")
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local HumanoidEngine = Modules:WaitForChild("HumanoidEngine")
local module_2_upvr = require(HumanoidEngine:WaitForChild("HumanoidProperties"))
local module_upvr = require(HumanoidEngine:WaitForChild("Log"))
local any_new_result1_upvr_3 = require(HumanoidEngine:WaitForChild("Class")).new()
local tbl_7_upvr = {
	TorqueMax = Vector3.new(800000, 800000, 800000);
	TorqueSpin = Vector3.new(800000, 0, 800000);
	WedgeMod = Vector3.new(0, -0.1666, 0.16666);
	xzPlane = Vector3.new(1, 0, 1);
}
local tbl_4_upvr = {
	CustomHumanoids_ByCharacter = {};
	CharacterRemovingConnections_ByPlayer = {};
	SteppingManagedInternally = true;
	PreSimulationConnection = nil;
}
local function _(arg1, arg2) -- Line 260, Named "GetOrientationYZ"
	local cframe_matrix_3 = CFrame.fromMatrix(Vector3.new(0, 0, 0), arg1:Cross(arg2).Unit, arg1.Unit, arg2.Unit)
	return cframe_matrix_3, cframe_matrix_3.XVector, cframe_matrix_3.YVector, cframe_matrix_3.ZVector
end
local module_5_upvr = require(Modules:WaitForChild("Raycast"))
local function GetHoverHeight_upvr(arg1, arg2) -- Line 282, Named "GetHoverHeight"
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [101] 73. Error Block 17 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [101] 73. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 48 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [101.7]
	if nil ~= nil then
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [101.6]
	if nil then
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [101.11]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [101.4292673608]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [101.5]
	if nil <= nil then
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [101.10]
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [101.15]
		return nil
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return nil
	end
	if nil and (not INLINED_3() or INLINED_4()) then
		-- KONSTANTWARNING: GOTO [68] #48
	end
	-- KONSTANTERROR: [0] 1. Error Block 48 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [103] 75. Error Block 49 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [104.12]
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil and 0.001 < arg1._MotionDirection.Magnitude then
				local var19 = -arg1._MotionDirection.Unit
				local Unit_2 = var19:Cross(arg1._UpVector).Unit
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				if nil.NormalTolerance < math.asin(-nil - Unit_2 * nil:Dot(Unit_2):Dot(var19)) - math.asin(-arg1._Normal - Unit_2 * arg1._Normal:Dot(Unit_2):Dot(var19)) then
				end
			end
		end
	end
	if arg1._Ground ~= nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		arg1.SurfaceChanged:Fire(nil, nil)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	arg1._Ground = nil
	local var21
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	if nil and nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [183.4]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [186.3]
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	do
		return nil, nil, nil, nil
	end
	-- KONSTANTERROR: [103] 75. Error Block 49 end (CF ANALYSIS FAILED)
end
local function GetTotalMass_upvr(arg1) -- Line 414, Named "GetTotalMass"
	local var29
	for _, v in arg1.Character:GetDescendants() do
		if v:IsA("BasePart") then
			var29 += v:GetMass()
		end
	end
	return math.min(var29, 100)
end
local function GetTotalForce_upvr(arg1) -- Line 424, Named "GetTotalForce"
	--[[ Upvalues[1]:
		[1]: GetTotalMass_upvr (readonly)
	]]
	local var37
	for _, v_2 in arg1.Character:GetDescendants() do
		if v_2:IsA("BodyForce") then
			var37 += v_2.Force
		end
	end
	return var37
end
local function _(arg1, arg2) -- Line 437, Named "GetOrtho"
	local Magnitude_5 = arg1.Magnitude
	if Magnitude_5 == 0 then
		return arg1
	end
	return arg2:Cross(arg1:Cross(arg2)).Unit * Magnitude_5
end
local function _(arg1, arg2) -- Line 449, Named "DrawPlane"
end
local function _(arg1, arg2) -- Line 462, Named "DrawRay"
end
local any_new_result1_upvr_4 = module_upvr.new("Gyro:\t", false)
local function SetUpright_upvr(arg1) -- Line 478, Named "SetUpright"
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr_4 (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
	local _ = arg1._Root.CFrame
	if arg1._LookVector then
		local _UpVector = arg1._UpVector
		local var42 = -arg1._LookVector
		local _ = CFrame.fromMatrix(Vector3.new(0, 0, 0), _UpVector:Cross(var42).Unit, _UpVector.Unit, var42.Unit)
		-- KONSTANTWARNING: GOTO [118] #79
	end
	-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 37. Error Block 27 start (CF ANALYSIS FAILED)
	if 0.1 < (arg1._MotionDirection * arg1._Humanoid.WalkSpeed).Magnitude then
		local _UpVector_2 = arg1._UpVector
		local var45 = -arg1._MotionDirection
		local _ = CFrame.fromMatrix(Vector3.new(0, 0, 0), _UpVector_2:Cross(var45).Unit, _UpVector_2.Unit, var45.Unit)
		-- KONSTANTWARNING: GOTO [118] #79
	end
	-- KONSTANTERROR: [55] 37. Error Block 27 end (CF ANALYSIS FAILED)
end
local any_new_result1_upvr_2 = module_upvr.new("Force:\t", false)
local any_new_result1_upvr = module_upvr.new("CustomH:\t", true)
local function Move_upvr(arg1, arg2, arg3) -- Line 544, Named "Move"
	--[[ Upvalues[6]:
		[1]: GetHoverHeight_upvr (readonly)
		[2]: any_new_result1_upvr_2 (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: GetTotalMass_upvr (readonly)
		[6]: GetTotalForce_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local UpVector_2 = arg1.UpVector
	local var86
	if 0.95 <= math.abs(arg1._UpVector.Z) then
		var86 = Vector3.new(1, 0, 0)
	else
		var86 = Vector3.new(0, 0, 1)
	end
	local cframe_matrix_2 = CFrame.fromMatrix(Vector3.new(0, 0, 0), UpVector_2:Cross(var86).Unit, UpVector_2.Unit, var86.Unit)
	local var88 = cframe_matrix_2
	local YVector_2 = cframe_matrix_2.YVector
	UpVector_2 = nil
	local var90 = UpVector_2
	var86 = var88:VectorToObjectSpace(arg1._Root.Velocity)
	local X = var86.X
	local Y_2 = var86.Y
	local Z = var86.Z
	var86 = arg1._MotionDirection * arg1._Humanoid.WalkSpeed
	local any_Dot_result1_2 = var86:Dot(cframe_matrix_2.XVector)
	local any_Dot_result1_4 = var86:Dot(cframe_matrix_2.ZVector)
	local GetHoverHeight_upvr_result1_2, GetHoverHeight_upvr_result2_2, GetHoverHeight_upvr_result3, GetHoverHeight_upvr_result4 = GetHoverHeight_upvr(arg1, -YVector_2)
	if GetHoverHeight_upvr_result1_2 and GetHoverHeight_upvr_result2_2 and GetHoverHeight_upvr_result3 and GetHoverHeight_upvr_result4 then
		if Y_2 < -40 and Y_2 * (GetHoverHeight_upvr_result2_2.CurrentPhysicalProperties.Elasticity - 0.4) / 0.6 < -60 then
			arg1._Grounded = false
			arg1._LastUngrounded = -1
			arg1._Bouncing = true
		elseif Y_2 < 0 or not arg1._Jumping and not arg1._Bouncing then
			var90 = GetHoverHeight_upvr_result1_2 / 0.1 / 0.1
			arg1._Grounded = true
			arg1._LastUngrounded = 0
			arg1._Bouncing = false
			if GetHoverHeight_upvr_result3 and arg1._BreakFromSurface <= 0 then
				local var101 = 0
				if arg1._Normal then
					local any_Dot_result1_8 = arg1._Normal:Dot(GetHoverHeight_upvr_result3)
					if any_Dot_result1_8 < -1 then
						any_Dot_result1_8 = -1
					elseif 1 < any_Dot_result1_8 then
						any_Dot_result1_8 = 1
					end
					var101 = math.acos(any_Dot_result1_8)
					if GetHoverHeight_upvr_result3:Dot(arg1._Root.Velocity) < 0 then
						var101 = -var101
					end
				end
				if var101 <= 0.2617993877991494 then
					local Magnitude_7 = var86.Magnitude
					if 0 < Magnitude_7 then
						local any_Dot_result1_6 = GetHoverHeight_upvr_result3:Dot(-arg1._UpVector)
						if any_Dot_result1_6 ~= 0 then
							var86 -= (arg1._UpVector) * (-var86:Dot(GetHoverHeight_upvr_result3) / any_Dot_result1_6)
							if 0 < var86.Magnitude then
								var86 = var86.Unit * Magnitude_7
							end
						end
					end
					var86 = var88:VectorToObjectSpace(var86)
					any_Dot_result1_2 = var86.X
					any_Dot_result1_4 = var86.Z
				else
					arg1._BreakFromSurface = 5
					arg1._Grounded = false
					if arg1._LastUngrounded == 0 then
						arg1._LastUngrounded = os.clock()
					end
					var90 = nil
				end
			else
				arg1._BreakFromSurface -= 1
			end
			arg1._Normal = GetHoverHeight_upvr_result3
		else
			arg1._Grounded = false
			if arg1._LastUngrounded == 0 then
				arg1._LastUngrounded = arg3
			end
			arg1._Bouncing = false
		end
		arg1._JumpingStartedAt = 0
	else
		arg1._Grounded = false
		if arg1._LastUngrounded == 0 then
			arg1._LastUngrounded = arg3
		end
		arg1._Bouncing = false
	end
	local var105 = Vector3.new(0, 0, 0)
	local any_VectorToObjectSpace_result1_2 = var88:VectorToObjectSpace(arg1._Normal)
	local any_Cross_result1_2 = any_VectorToObjectSpace_result1_2:Cross(Vector3.new(0, 1, 0))
	if 0 < any_Cross_result1_2.Magnitude then
		local any_Cross_result1_4 = any_Cross_result1_2.Unit:Cross(any_VectorToObjectSpace_result1_2)
		local any_Dot_result1_9 = Vector3.new(X, 0, Z):Dot(any_Cross_result1_4)
		if 9 < any_Dot_result1_9 then
			local var110 = math.tan(math.asin(Y_2 / math.sqrt(X ^ 2 + Y_2 ^ 2 + Z ^ 2)) + 0.5235987755982988) * any_Dot_result1_9
			if math.min(arg1._Humanoid.JumpPower + 38, 500) < var110 then
				local minimum = math.min(arg1._Humanoid.JumpPower + 38, 500)
				var105 = any_Cross_result1_4 * Vector3.new(0.60000, 0, 0.5) * (any_Dot_result1_9 - minimum / 0.5773502691896257) / minimum
			elseif minimum < var110 then
			end
		end
	end
	local clamped_2 = math.clamp(arg2 / 0.1, 0, 1)
	arg1._JumpOffsetAverage = var105 * clamped_2 + (1 - clamped_2) * arg1._JumpOffsetAverage
	arg1._JumpPowerAverage = var110 * clamped_2 + (1 - clamped_2) * arg1._JumpPowerAverage
	local var113
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		var113 = 0.085
		var113 = arg1._LastUngrounded
		return arg3 - var113 <= var113
	end
	if arg1._Jump and not arg1._JumpBlocked and (arg1._Grounded or INLINED_6()) then
		var113 = "Player requested jump"
		any_new_result1_upvr_2(var113)
		var113 = var110
		local maximum = math.max(var113, arg1._JumpPowerAverage)
		var113 = "Power: %s"
		any_new_result1_upvr(var113, maximum)
		var113 = var88:VectorToObjectSpace(arg1._JumpVector) + arg1._JumpOffsetAverage
		local var115 = var113 * maximum
		var113 = Vector3.new(X, 0, Z):Dot(any_VectorToObjectSpace_result1_2)
		arg1._Grounded = false
		arg1._LastUngrounded = -1
		arg1._JumpingStartedAt = arg3
		arg1.Pose = module_2_upvr.Pose.Idle
	end
	var113 = arg1._Grounded
	local var116 = not var113
	arg1._Falling = var116
	var113 = var116
	if var113 then
		if arg3 > arg1._JumpingStartedAt + 0.75 then
			var113 = false
		else
			var113 = true
		end
	end
	arg1._Jumping = var113
	if var116 then
		if arg3 > arg1._JumpingStartedAt + 0.55 then
		else
		end
	end
	arg1._JumpAnimating = true
	local _
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	if var90 then
	end
	if not arg1._Ground or not arg1._Ground.CurrentPhysicalProperties.Friction then
	end
	local vector3_2 = Vector3.new(any_Dot_result1_2 - X, 0, any_Dot_result1_4 - Z)
	if 0 < vector3_2.Magnitude then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local Magnitude_4 = vector3_2.Magnitude
		if Magnitude_4 < 1600 * 0.3 / 30 then
		end
		local var120 = ((Vector3.new(0, 1, 0)) * (workspace.Gravity * GetTotalMass_upvr(arg1)) + (Vector3.new(0, 1, 0)) * (29.43 * GetTotalMass_upvr(arg1)) - (arg1._UpVector) * (196.20000000000002 * GetTotalMass_upvr(arg1))) + ((YVector_2 * var90) - (GetTotalForce_upvr(arg1) - arg1._LastTargetForce)) + (var88:VectorToWorldSpace(vector3_2.Unit) * (GetTotalMass_upvr(arg1) + 13)) * (Magnitude_4 * 30)
	end
	arg1._LastTargetForce = var120
	arg1._Force.Force = var120
	arg1._Root.Velocity = var88:VectorToWorldSpace(Vector3.new(X + var115.X or X, var115.Y, Z + var115.Z or Z))
	if arg1._JumpAnimating then
	elseif var116 and arg1._WalkingLastStepAt + arg1._FallPoseDebounce < arg3 then
	elseif 0.1 < (any_Dot_result1_2 * any_Dot_result1_2 + any_Dot_result1_4 * any_Dot_result1_4) ^ 0.5 and not var116 then
		arg1._WalkingLastStepAt = arg3
	end
	arg1.Pose = module_2_upvr.Pose.Walk
end
local function _(arg1, arg2) -- Line 841, Named "GetCenterOfMass"
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_6 = {}
	local module = {}
	table.insert(arg1:GetDescendants(), arg1)
	local var140
	for _, v_3 in var140 do
		if v_3:IsA("BasePart") then
			if v_3:IsA("WedgePart") then
				module[#module + 1] = v_3
			else
				tbl_6[#tbl_6 + 1] = v_3
			end
		end
	end
	var140 = Vector3.new(0, 0, 0)
	for i_4 = 1, #tbl_6 do
		var140 += arg2:PointToObjectSpace(tbl_6[i_4].Position) * tbl_6[i_4]:GetMass()
	end
	for i_5 = 1, #module do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	return var140 + arg2:PointToObjectSpace(module[i_5].CFrame * module[i_5].Size * tbl_7_upvr.WedgeMod) * module[i_5]:GetMass()
end
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local GameSettings_upvr = UserSettings().GameSettings
function CustomHumanoidPreSimulation(arg1, arg2, arg3) -- Line 886
	--[[ Upvalues[4]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
		[3]: Move_upvr (readonly)
		[4]: SetUpright_upvr (readonly)
	]]
	if arg1._Humanoid.Health == 0 then
		arg1._Root:ClearAllChildren()
		arg1._Root.CanCollide = false
		arg1._Root.CanTouch = false
		arg1._Root.CanQuery = false
	else
		if not arg1._Enabled then return end
		if arg1._Player == LocalPlayer_upvr and GameSettings_upvr.RotationType == Enum.RotationType.CameraRelative and workspace.CurrentCamera then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1.LookVector = workspace.CurrentCamera.CFrame.LookVector
		else
			arg1.LookVector = nil
		end
		arg1._Humanoid.PlatformStand = true
		debug.profilebegin("move")
		Move_upvr(arg1, arg2, arg3)
		debug.profileend()
		SetUpright_upvr(arg1)
	end
end
any_new_result1_upvr_3._Destroyed = false
any_new_result1_upvr_3._Enabled = true
any_new_result1_upvr_3._Initialized = false
any_new_result1_upvr_3._Bouncing = false
any_new_result1_upvr_3._Falling = false
any_new_result1_upvr_3._Jump = false
any_new_result1_upvr_3._JumpBlocked = false
any_new_result1_upvr_3._JumpingStartedAt = 0
any_new_result1_upvr_3._JumpOffsetAverage = Vector3.new(0, 0, 0)
any_new_result1_upvr_3._JumpPowerAverage = 0
any_new_result1_upvr_3._Pose = module_2_upvr.Pose.Idle
any_new_result1_upvr_3._Spinning = false
any_new_result1_upvr_3._Walking = false
any_new_result1_upvr_3._WalkingLastStepAt = 0
any_new_result1_upvr_3._Character = Instance.new("Model")
any_new_result1_upvr_3._Humanoid = Instance.new("Humanoid", any_new_result1_upvr_3._Character)
any_new_result1_upvr_3._Root = Instance.new("Part", any_new_result1_upvr_3._Character)
any_new_result1_upvr_3._Force = Instance.new("BodyForce", any_new_result1_upvr_3._Root)
any_new_result1_upvr_3._Gyro = Instance.new("BodyGyro", any_new_result1_upvr_3._Root)
any_new_result1_upvr_3._JumpVector = Vector3.new(0, 1, 0)
any_new_result1_upvr_3._LookVector = nil
any_new_result1_upvr_3._MotionDirection = Vector3.new(0, 0, 0)
any_new_result1_upvr_3._Normal = Vector3.new(0, 1, 0)
any_new_result1_upvr_3._UpVector = Vector3.new(0, 1, 0)
any_new_result1_upvr_3._AirWalkSpeed = -1
any_new_result1_upvr_3._ClimbSpeed = -1
any_new_result1_upvr_3._Height = 2
any_new_result1_upvr_3._SidleSpeed = -1
any_new_result1_upvr_3._StepUpHeight = 0
any_new_result1_upvr_3._BreakFromSurface = 0
any_new_result1_upvr_3._FallPoseDebounce = 0.5
any_new_result1_upvr_3._Ground = nil
any_new_result1_upvr_3._Grounded = false
any_new_result1_upvr_3._LastTargetForce = Vector3.new(0, 0, 0)
any_new_result1_upvr_3._LastUngrounded = 0
any_new_result1_upvr_3.AirborneGroundnessProfile = module_2_upvr.DefaultGroundednessProfiles.Airborne
any_new_result1_upvr_3.GroundedGroundnessProfile = module_2_upvr.DefaultGroundednessProfiles.Grounded
local tbl_3_upvr = {
	AirWalkSpeed = function(arg1) -- Line 990, Named "GetAirWalkSpeed"
		if arg1._AirWalkSpeed == -1 then
			return arg1._Humanoid.WalkSpeed
		end
		return arg1._AirWalkSpeed
	end;
	Character = "_Character";
	ClimbSpeed = function(arg1) -- Line 998, Named "GetClimbSpeed"
		if arg1._ClimbSpeed == -1 then
			return arg1._Humanoid.WalkSpeed
		end
		return arg1._ClimbSpeed
	end;
	Enabled = "_Enabled";
	Grounded = "_Grounded";
	Height = "_Height";
	Jump = "_Jump";
	JumpBlocked = "_JumpBlocked";
	JumpVector = "_JumpVector";
	LookVector = "_LookVector";
	MotionDirection = "_MotionDirection";
	Pose = "_Pose";
	SidleSpeed = function(arg1) -- Line 1006, Named "GetSidleSpeed"
		if arg1._SidleSpeed == -1 then
			return arg1._Humanoid.WalkSpeed
		end
		return arg1._SidleSpeed
	end;
	UpVector = "_UpVector";
}
function any_new_result1_upvr_3.__index(arg1, arg2) -- Line 1031
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var144 = tbl_3_upvr[arg2]
	if var144 then
		if type(var144) == "string" then
			return arg1[var144]
		end
		return var144(arg1, arg2)
	end
	return nil
end
function tbl_3_upvr(arg1, arg2, arg3) -- Line 1080, Named "SetPose"
	if arg1._Pose ~= arg3 then
		arg1._Pose = arg3
		arg1.PoseChanged:Fire(arg3)
	end
end
local tbl_5_upvr = {
	AirWalkSpeed = "_AirWalkSpeed";
	Character = function(arg1) -- Line 1050, Named "SetCharacter"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.Error("Cannot change the Character to which a CustomHumanoid belongs")
	end;
	ClimbSpeed = "_ClimbSpeed";
	Enabled = function(arg1, arg2, arg3) -- Line 1054, Named "SetEnabled"
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		if arg3 ~= true then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		arg1._Enabled = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not true then
			arg1._Gyro.maxTorque = Vector3.new(0, 0, 0)
			arg1._Force.force = Vector3.new(0, 0, 0)
			arg1._Spinning = false
			arg1.Pose = module_2_upvr.Pose.Idle
		end
	end;
	Jump = "_Jump";
	JumpBlocked = "_JumpBlocked";
	JumpVector = "_JumpVector";
	Height = "_Height";
	LookVector = "_LookVector";
	MotionDirection = function(arg1, arg2, arg3) -- Line 1070, Named "SetMotionDirection"
		local var146
		if 1 < arg3.Magnitude then
			var146 = var146.Unit
		end
		local var147 = var146
		local _UpVector_3 = arg1._UpVector
		local Magnitude_2 = var147.Magnitude
		if Magnitude_2 == 0 then
			var146 = var147
		else
			var146 = _UpVector_3:Cross(var147:Cross(_UpVector_3)).Unit * Magnitude_2
		end
		arg1._MotionDirection = var146
	end;
	Pose = tbl_3_upvr;
	SidleSpeed = "_SidleSpeed";
	UpVector = function(arg1, arg2, arg3) -- Line 1088, Named "SetUpVector"
		local Unit_3 = arg3.Unit
		arg1._UpVector = Unit_3
		local _MotionDirection = arg1._MotionDirection
		local _UpVector_4 = arg1._UpVector
		local Magnitude_3 = _MotionDirection.Magnitude
		if Magnitude_3 == 0 then
			Unit_3 = _MotionDirection
		else
			Unit_3 = _UpVector_4:Cross(_MotionDirection:Cross(_UpVector_4)).Unit * Magnitude_3
		end
		arg1._MotionDirection = Unit_3
	end;
}
function any_new_result1_upvr_3.__newindex(arg1, arg2, arg3) -- Line 1109
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	local var155 = tbl_5_upvr[arg2]
	if var155 then
		if type(var155) == "string" then
			rawset(arg1, var155, arg3)
		else
			var155(arg1, arg2, arg3)
		end
	end
	rawset(arg1, arg2, arg3)
end
local function CustomHumanoidInitialize_upvr(arg1) -- Line 1127, Named "CustomHumanoidInitialize"
	--[[ Upvalues[2]:
		[1]: tbl_7_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local var160
	if coroutine.running() ~= arg1._InitializeThread then
		var160 = false
	else
		var160 = true
	end
	local var161
	assert(var160, "Incorrect InitializeThread")
	var160 = "BodyGyro"
	local any = Instance.new(var160)
	var160 = "CustomGyro"
	any.Name = var160
	var160 = tbl_7_upvr.TorqueMax
	any.MaxTorque = var160
	arg1._Gyro = any
	var160 = Instance.new("BodyForce")
	var160.Name = "CustomForce"
	arg1._Force = var160
	var161 = "Humanoid"
	local SOME = arg1._Character:WaitForChild(var161)
	local HumanoidRootPart = arg1._Character:WaitForChild("HumanoidRootPart")
	var161 = 25
	if type(module_2_upvr.WalkSpeed) == "number" and module_2_upvr.WalkSpeed == module_2_upvr.WalkSpeed then
		var161 = math.max(module_2_upvr.WalkSpeed, 0)
	end
	SOME.WalkSpeed = var161
	arg1._Humanoid = SOME
	arg1._Root = HumanoidRootPart
	SOME.AutoRotate = false
	arg1._Height = SOME.HipHeight + -0.05
	arg1._JumpPowerAverage = SOME.JumpPower
	any.Parent = HumanoidRootPart
	var160.Parent = HumanoidRootPart
	arg1._Initialized = true
	if 0 < #arg1._YieldedThreads then
		table.clear(arg1._YieldedThreads)
		for _, v_4 in table.clone(arg1._YieldedThreads), nil do
			task.spawn(v_4)
		end
	end
end
local function CustomHumanoidDestroy_upvr(arg1) -- Line 1204, Named "CustomHumanoidDestroy"
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	tbl_4_upvr.CustomHumanoids_ByCharacter[arg1._Character] = nil
	arg1._Destroyed = true
	arg1._Initialized = true
	for _, v_5 in arg1._Connections do
		v_5:Disconnect()
	end
	if arg1._InitializeThread then
		if coroutine.status(arg1._InitializeThread) == "suspended" then
			task.cancel(arg1._InitializeThread)
		end
		arg1._InitializeThread = nil
	end
	for _, v_6 in arg1._YieldedThreads do
		if coroutine.status(v_6) == "suspended" then
			task.cancel(v_6)
		end
	end
	table.clear(arg1._YieldedThreads)
end
local module_3_upvr = require(Modules:WaitForChild("Signal"))
local function CustomHumanoidCreate_upvr(arg1) -- Line 1230, Named "CustomHumanoidCreate"
	--[[ Upvalues[7]:
		[1]: CustomHumanoidInitialize_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: module_3_upvr (readonly)
		[4]: any_new_result1_upvr_3 (readonly)
		[5]: module_2_upvr (readonly)
		[6]: tbl_4_upvr (readonly)
		[7]: CustomHumanoidDestroy_upvr (readonly)
	]]
	local tbl = {}
	tbl._Character = arg1
	tbl._Connections = {}
	tbl._Destroyed = false
	local tbl_2 = {}
	tbl_2[1] = arg1
	tbl._IgnoreList = tbl_2
	tbl._Initialized = false
	tbl._InitializeThread = coroutine.create(CustomHumanoidInitialize_upvr)
	tbl._Player = Players_upvr:GetPlayerFromCharacter(arg1)
	tbl.PoseChanged = module_3_upvr.new(module_3_upvr.Mode.Spawned)
	tbl.SurfaceChanged = module_3_upvr.new(module_3_upvr.Mode.Spawned)
	tbl._YieldedThreads = {}
	local setmetatable_result1_upvr = setmetatable(tbl, any_new_result1_upvr_3.Meta)
	setmetatable_result1_upvr.AirborneGroundednessProfile = module_2_upvr.DefaultGroundednessProfiles.Airborne
	setmetatable_result1_upvr.GroundedGroundednessProfile = module_2_upvr.DefaultGroundednessProfiles.Grounded
	tbl_4_upvr.CustomHumanoids_ByCharacter[arg1] = setmetatable_result1_upvr
	setmetatable_result1_upvr._Connections[#setmetatable_result1_upvr._Connections + 1] = arg1.Destroying:Connect(function() -- Line 1251
		--[[ Upvalues[2]:
			[1]: CustomHumanoidDestroy_upvr (copied, readonly)
			[2]: setmetatable_result1_upvr (readonly)
		]]
		CustomHumanoidDestroy_upvr(setmetatable_result1_upvr)
	end)
	task.spawn(setmetatable_result1_upvr._InitializeThread, setmetatable_result1_upvr)
	return setmetatable_result1_upvr
end
function tbl_3_upvr(arg1) -- Line 1264, Named "CharacterRemoving"
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: CustomHumanoidDestroy_upvr (readonly)
	]]
	if tbl_4_upvr.CustomHumanoids_ByCharacter[arg1] then
		CustomHumanoidDestroy_upvr(tbl_4_upvr.CustomHumanoids_ByCharacter[arg1])
	end
end
module_4_upvr.CharacterRemoving = tbl_3_upvr
function tbl_3_upvr(arg1) -- Line 1270, Named "PlayerAdded"
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	tbl_4_upvr.CharacterRemovingConnections_ByPlayer[arg1] = arg1.CharacterRemoving:Connect(module_4_upvr.CharacterRemoving)
end
Players_upvr.PlayerAdded:Connect(tbl_3_upvr)
local players, NONE, NONE_2 = Players_upvr:GetPlayers()
for _, v_7 in players, NONE, NONE_2 do
	tbl_4_upvr.CharacterRemovingConnections_ByPlayer[v_7] = v_7.CharacterRemoving:Connect(module_4_upvr.CharacterRemoving)
end
Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 1281
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	if tbl_4_upvr.CharacterRemovingConnections_ByPlayer[arg1] then
		tbl_4_upvr.CharacterRemovingConnections_ByPlayer[arg1]:Disconnect()
		tbl_4_upvr.CharacterRemovingConnections_ByPlayer[arg1] = nil
	end
	if arg1.Character then
		module_4_upvr.CharacterRemoving(arg1.Character)
	end
end)
local function PreSimulation_Internal_upvr(arg1, arg2) -- Line 1296, Named "PreSimulation_Internal"
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	debug.profilebegin("CFS_CustomHumanoid")
	for _, v_8 in tbl_4_upvr.CustomHumanoids_ByCharacter do
		if v_8._Initialized then
			v_8.Jump = v_8._Humanoid.Jump
			CustomHumanoidPreSimulation(v_8, arg1, arg2)
		end
	end
	debug.profileend()
end
function NONE(arg1, arg2) -- Line 1308, Named "PreSimulation"
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: PreSimulation_Internal_upvr (readonly)
	]]
	if tbl_4_upvr.SteppingManagedInternally then
		warn("CustomHumanoid: Stepping managed internally.")
	else
		PreSimulation_Internal_upvr(arg1, arg2)
	end
end
module_4_upvr.PreSimulation = NONE
function NONE() -- Line 1316, Named "UpdateSteppingManagement"
	--[[ Upvalues[3]:
		[1]: tbl_4_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: PreSimulation_Internal_upvr (readonly)
	]]
	if tbl_4_upvr.SteppingManagedInternally and not tbl_4_upvr.PreSimulationConnection then
		tbl_4_upvr.PreSimulationConnection = RunService_upvr.PreSimulation:Connect(function(arg1) -- Line 1318
			--[[ Upvalues[1]:
				[1]: PreSimulation_Internal_upvr (copied, readonly)
			]]
			PreSimulation_Internal_upvr(arg1, os.clock())
		end)
	elseif not tbl_4_upvr.SteppingManagedInternally and tbl_4_upvr.PreSimulationConnection then
		tbl_4_upvr.PreSimulationConnection:Disconnect()
		tbl_4_upvr.PreSimulationConnection = nil
	end
end
local RunService_upvr = game:GetService("RunService")
local var180_upvr = NONE
function module_4_upvr.SetSteppingManagement(arg1) -- Line 1328
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: var180_upvr (readonly)
	]]
	tbl_4_upvr.SteppingManagedInternally = not arg1
	var180_upvr()
end
function module_4_upvr.FromCharacter(arg1, arg2) -- Line 1333
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: CustomHumanoidCreate_upvr (readonly)
	]]
	local var183
	if not var183 then
		var183 = CustomHumanoidCreate_upvr(arg1)
	end
	if not arg2 and not var183._Initialized then
		var183._YieldedThreads[#var183._YieldedThreads + 1] = coroutine.running()
		coroutine.yield()
	end
	return var183
end
function module_4_upvr.SetCharacterGroundednessProfiles(arg1, arg2, arg3) -- Line 1343
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local any_FromCharacter_result1 = module_4_upvr.FromCharacter(arg1, true)
	local var185 = arg2
	if not var185 then
		var185 = module_2_upvr.DefaultGroundednessProfiles.Airborne
	end
	any_FromCharacter_result1.AirborneGroundednessProfile = var185
	var185 = arg3
	local var186 = var185
	if not var186 then
		var186 = module_2_upvr.DefaultGroundednessProfiles.Grounded
	end
	any_FromCharacter_result1.GroundedGroundednessProfile = var186
end
function module_4_upvr.MoveFunction(arg1, arg2, arg3) -- Line 1357
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local Character = arg1.Character
	if Character then
		module_4_upvr.FromCharacter(Character).MotionDirection = arg2
	end
end
var180_upvr()
return module_4_upvr