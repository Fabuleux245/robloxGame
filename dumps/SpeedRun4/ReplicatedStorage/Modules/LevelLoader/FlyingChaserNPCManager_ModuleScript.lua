-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:15
-- Luau version 6, Types version 3
-- Time taken: 0.025804 seconds

local module_upvr_2 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_6 = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_9 = require(Modules:WaitForChild("Audio"))
local module_upvr_10 = require(Modules:WaitForChild("ClientData"))
local module_upvr_5 = require(Modules:WaitForChild("Enemies"))
local module_upvr_4 = require(Modules:WaitForChild("Tweens"))
local module_upvr_3 = require(Modules:WaitForChild("UIEffects"))
local module_upvr_11 = require(Modules:WaitForChild("Utility"))
local _ = Modules:WaitForChild("LevelLoader")
local Folder_upvr = Instance.new("Folder")
Folder_upvr.Name = "FlyingChaserNPCs"
Folder_upvr.Parent = workspace
local var13_upvw
var13_upvw = workspace.Gravity * Vector3.new(0, 1, 0)
workspace:GetPropertyChangedSignal("Gravity"):Connect(function() -- Line 116, Named "UpdateWorkspaceGravity"
	--[[ Upvalues[1]:
		[1]: var13_upvw (read and write)
	]]
	var13_upvw = workspace.Gravity * Vector3.new(0, 1, 0)
end)
local tbl_5_upvr = {
	LocalPlayerTarget = nil;
	FlyingChaserNPCs = {};
	FlyingChaserNPC_ByRoot = {};
	ModelNPCs = {};
}
local function _(arg1, arg2) -- Line 139, Named "GetStrengthValue"
	local _1_3 = arg1[1]
	local _2 = arg1[2]
	local _3_2 = arg1[3]
	local _4_2 = arg1[4]
	local var19
	if 0 <= _3_2 then
		var19 = _1_3
	else
		var19 = _2
	end
	local var20 = var19 + _3_2 * (arg2 - 1)
	if _4_2 then
		var20 *= 1 + _4_2 * (0.5 - math.random())
	end
	return math.clamp(var20, _1_3, _2)
end
local function _(arg1, arg2) -- Line 157, Named "ShouldChase"
	local var23
	if not arg1.Attacked then
		if arg1.Passive then
			var23 = nil
		elseif not arg1.LockedOn and var23 then
			local var24 = var23 - arg1.Root.Position
			if arg1.Range < (var24.X ^ 2 + var24.Z ^ 2) ^ 0.5 then
				var23 = nil
			end
		end
	end
	if var23 then
		arg1.LockedOn = true
	end
	return var23
end
local tbl_upvr = {}
if require(ReplicatedStorage:WaitForChild("Settings")).IsHelicopterChase then
	local Helicopter_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Enemies"):WaitForChild("Helicopter")
	assert(Helicopter_upvr:FindFirstChild("Root"), "Missing Root")
	assert(Helicopter_upvr:FindFirstChild("Light"), "Missing Light")
	assert(Helicopter_upvr:FindFirstChildWhichIsA("RigidConstraint", true), "Missing RotorJoint")
	local tbl_4_upvr = {
		[true] = Color3.fromRGB(255, 0, 0);
		[false] = Color3.fromRGB(0, 255, 0);
	}
	local tbl_3_upvr = {
		Spawn = {
			Brightness = 1;
			Color = ColorSequence.new(Color3.fromRGB(255, 255, 255));
			Drag = 1.75;
			EmissionDirection = Enum.NormalId.Top;
			Enabled = false;
			Lifetime = NumberRange.new(0.5);
			LightEmission = 0;
			LightInfluence = 1;
			LockedToPart = true;
			Orientation = Enum.ParticleOrientation.FacingCamera;
			Rate = 20;
			Rotation = NumberRange.new(-180, 180);
			RotSpeed = NumberRange.new(-90, 90);
			Shape = Enum.ParticleEmitterShape.Box;
			ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
			ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
			Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2.45), NumberSequenceKeypoint.new(0.25, 6.5), NumberSequenceKeypoint.new(0.5, 8.5), NumberSequenceKeypoint.new(0.75, 9.5), NumberSequenceKeypoint.new(1, 10)});
			Speed = NumberRange.new(75);
			SpreadAngle = Vector2.one * 180;
			Texture = "rbxassetid://534953301";
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.25, 0.25), NumberSequenceKeypoint.new(1, 1)});
			ZOffset = 2;
		};
	}
	local tbl_7_upvr = {
		Hover = {
			Looped = true;
			SoundGroup = module_upvr_9.SoundGroup.SFX;
			SoundId = "rbxassetid://9114024549";
			Volume = 2.5;
		};
	}
	local tbl_2_upvr = {
		Acceleration = {20, 35, 0.275};
		BounceElasticity = {0.2, 0.4, 0.004};
		Range = {200, 300, 2};
		Speed = {80, 100, 0.5};
	}
	local tbl_6 = {
		Initialize = function(arg1, arg2) -- Line 305, Named "Initialize"
			--[[ Upvalues[10]:
				[1]: tbl_2_upvr (readonly)
				[2]: tbl_5_upvr (readonly)
				[3]: module_upvr_11 (readonly)
				[4]: tbl_3_upvr (readonly)
				[5]: Helicopter_upvr (readonly)
				[6]: module_upvr_6 (readonly)
				[7]: tbl_4_upvr (readonly)
				[8]: module_upvr_4 (readonly)
				[9]: module_upvr_9 (readonly)
				[10]: tbl_7_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			arg1._BounceTargets = {}
			arg1._WanderOffset = math.random()
			local Strength = arg1.Strength
			local Acceleration = tbl_2_upvr.Acceleration
			local _2_3 = Acceleration[2]
			local _3_5 = Acceleration[3]
			local _4_4 = Acceleration[4]
			local var45
			if 0 <= _3_5 then
				var45 = Acceleration[1]
			else
				var45 = _2_3
			end
			if _4_4 then
			end
			arg1.Acceleration = math.clamp((var45 + _3_5 * (Strength - 1)) * (1 + _4_4 * (0.5 - math.random())), Acceleration[1], _2_3)
			local Range = tbl_2_upvr.Range
			local _3_3 = Range[3]
			local _4_3 = Range[4]
			if 0 <= _3_3 then
				var45 = Range[1]
			else
				var45 = Range[2]
			end
			if _4_3 then
			end
			arg1.Range = math.clamp((var45 + _3_3 * (Strength - 1)) * (1 + _4_3 * (0.5 - math.random())), Range[1], Range[2])
			local Speed = tbl_2_upvr.Speed
			local _3_4 = Speed[3]
			local _4 = Speed[4]
			if 0 <= _3_4 then
				var45 = Speed[1]
			else
				var45 = Speed[2]
			end
			if _4 then
			end
			arg1.Speed = math.clamp((var45 + _3_4 * (Strength - 1)) * (1 + _4 * (0.5 - math.random())), Speed[1], Speed[2])
			arg1._Connections[#arg1._Connections + 1] = arg1.Root.Touched:Connect(function(arg1_2) -- Line 323, Named "Bounce"
				--[[ Upvalues[2]:
					[1]: tbl_5_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				local var52 = tbl_5_upvr.FlyingChaserNPC_ByRoot[arg1_2]
				if var52 and var52.EnemyData == arg1.EnemyData then
					arg1._BounceTargets[var52] = true
					var52._BounceTargets[arg1] = true
				end
			end)
			local any_I_result1 = module_upvr_11.I("Attachment", {
				Position = arg1.Root.Position;
				Parent = module_upvr_11.Terrain;
			})
			local any_I_result1_2 = module_upvr_11.I("ParticleEmitter", tbl_3_upvr.Spawn, {
				Parent = any_I_result1;
			})
			any_I_result1_2:Emit(any_I_result1_2.Rate)
			var45 = any_I_result1
			task.delay(any_I_result1_2.Lifetime.Max, any_I_result1.Destroy, var45)
			local clone = Helicopter_upvr:Clone()
			local assert_result1_2 = assert(clone.PrimaryPart)
			var45 = clone:FindFirstChild("Light")
			local assert_result1 = assert(var45)
			var45 = assert
			var45(assert_result1:IsA("BasePart"))
			var45 = assert(clone:FindFirstChildWhichIsA("RigidConstraint", true))
			if arg2 and arg2.ItemTheme then
				module_upvr_6.ItemThemeApply(clone, arg2.ItemTheme)
			end
			local var60 = tbl_4_upvr[arg1.LockedOn]
			assert_result1.Color = var60
			clone:PivotTo(arg1.Root.CFrame)
			clone.Parent = arg1.Object
			local any_Create_result1 = module_upvr_9.ManagedSound.Create(tbl_7_upvr.Hover, true)
			any_Create_result1.Sound.TimePosition = any_Create_result1.Sound.TimeLength * math.random()
			any_Create_result1.Sound.Parent = arg1.Root
			module_upvr_9.ManagedSound.Play(any_Create_result1)
			arg1._Model = {
				Light = assert_result1;
				Object = clone;
				RotorAttachment = assert(var45.Attachment0);
				Weld = module_upvr_11.I("Weld", {
					Part0 = arg1.Root;
					Part1 = assert_result1_2;
					Parent = assert_result1_2;
				});
				ColorTween = module_upvr_4.new(var60, 0.375, Enum.EasingStyle.Sine);
				Sounds = {
					Hover = any_Create_result1;
				};
			}
		end;
	}
	local function Destroy(arg1) -- Line 461
	end
	tbl_6.Destroy = Destroy
	local function PostSimulation(arg1, arg2, arg3) -- Line 466
		--[[ Upvalues[5]:
			[1]: var13_upvw (read and write)
			[2]: tbl_2_upvr (readonly)
			[3]: module_upvr_11 (readonly)
			[4]: tbl_5_upvr (readonly)
			[5]: module_upvr_4 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Root_2 = arg1.Root
		local CFrame_2 = Root_2.CFrame
		local AssemblyMass = Root_2.AssemblyMass
		local var107
		if next(arg1._BounceTargets) ~= nil then
			local BounceElasticity = tbl_2_upvr.BounceElasticity
			local _1_2 = BounceElasticity[1]
			local _2_2 = BounceElasticity[2]
			local _3_6 = BounceElasticity[3]
			local _4_5 = BounceElasticity[4]
			if 0 <= _3_6 then
				var107 = _1_2
			else
				var107 = _2_2
			end
			local var113 = var107 + _3_6 * (arg1.Strength - 1)
			if _4_5 then
				var113 *= 1 + _4_5 * (0.5 - math.random())
			end
			for i in arg1._BounceTargets do
				var107 = i._LastPosition - arg1._LastPosition
				if module_upvr_11.Epsilon < var107.Magnitude then
					var107 = var107.Unit
					local any_Dot_result1 = var107:Dot(arg1._LastVelocity)
					if module_upvr_11.Epsilon < any_Dot_result1 then
					end
				end
			end
			Root_2:ApplyImpulse((Vector3.new(0, 0, 0) + (var107) * (-any_Dot_result1 * math.clamp(var113, _1_2, _2_2))) * AssemblyMass)
			if arg1.Speed < Root_2.AssemblyLinearVelocity.Magnitude then
				Root_2.AssemblyLinearVelocity = Root_2.AssemblyLinearVelocity.Unit * arg1.Speed
			end
			table.clear(arg1._BounceTargets)
		end
		local AssemblyLinearVelocity = Root_2.AssemblyLinearVelocity
		local LocalPlayerTarget = tbl_5_upvr.LocalPlayerTarget
		if not arg1.Attacked then
			if arg1.Passive then
				LocalPlayerTarget = nil
			elseif not arg1.LockedOn and LocalPlayerTarget then
				i = (LocalPlayerTarget - arg1.Root.Position).X
				i = (LocalPlayerTarget - arg1.Root.Position).Z ^ 2
				if arg1.Range < (i ^ 2 + i) ^ 0.5 then
					LocalPlayerTarget = nil
				end
			end
		end
		if LocalPlayerTarget then
			arg1.LockedOn = true
		end
		local var118 = LocalPlayerTarget
		if not var118 and not arg1._WanderTarget and 40 < (arg1._SpawnPos - CFrame_2.Position).Magnitude then
			var118 = arg1._SpawnPos
			local var119
		end
		if var118 then
			arg1._WanderTarget = nil
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local var120 = var118 - CFrame_2.Position
			if module_upvr_11.Epsilon < var120.Magnitude then
				arg1.AlignOrientation.CFrame = CFrame.lookAlong(Vector3.new(0, 0, 0), var120)
				local var122 = var120.Unit * arg1.Speed - AssemblyLinearVelocity
				i = module_upvr_11
				if i.Epsilon < var122.Magnitude then
					i = var120.Unit * arg1.Speed
					i = module_upvr_11
					if i.Epsilon < var122:Dot(i) then
						i = arg1.Acceleration * AssemblyMass
						-- KONSTANTWARNING: GOTO [371] #262
					end
					-- KONSTANTWARNING: GOTO [371] #262
				end
				-- KONSTANTWARNING: GOTO [371] #262
			end
		else
			if not arg1._WanderTarget then
				local cframe = CFrame.Angles(0, (-math.pi*2) * math.random(), 0)
				i = CFrame.new
				var119 = 0
				var107 = -(40 * math.random() ^ 0.5)
				i = i(0, var119, var107)
				arg1._WanderTarget = (cframe * i).Position + arg1._SpawnPos
				i = math.random()
				arg1._WanderTime = module_upvr_4.Lerp(1, 4, i)
				arg1.AlignOrientation.CFrame = cframe
			end
			i = arg1._WanderOffset
			i = 1
			var119 = (-math.pi*2)
			i = math.sin((var119) * ((arg3 + 6 * i) % 6 / 6))
			local var124 = assert(arg1._WanderTarget) + (Vector3.new(0, 1, 0)) * (i * arg1.Radius * i)
			var118 = var124
			local Magnitude = AssemblyLinearVelocity.Magnitude
			i = arg1.Acceleration
			local var126 = Magnitude / i
			var107 = 0.5 * arg1.Acceleration
			var119 = var107 * var126 ^ 2
			i = Magnitude * var126 - var119
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local var127 = var124 - CFrame_2.Position
			var107 = var127.Magnitude
			if 0 < var107 then
				var107 = var127.Magnitude / i
				var119 = math.clamp(var107, 0, 1)
			else
				var119 = 0
			end
			var107 = var127.Unit * arg1.Speed * var119
			local var128 = var107 - AssemblyLinearVelocity
			if module_upvr_11.Epsilon < var128.Magnitude then
			end
			if var119 < 1 and arg1._WanderTime then
				arg1._WanderTime -= arg2
				if arg1._WanderTime <= 0 then
					arg1._WanderTarget = nil
					arg1._WanderTime = nil
				end
			end
		end
		arg1.Target = var118
		arg1.VectorForce.Force = (var13_upvw * AssemblyMass) + (Vector3.new(0, 0, 0) + var122.Unit * i + (var128.Unit) * (arg1.Acceleration * AssemblyMass))
		local _Model = arg1._Model
		if _Model then
			local var130 = AssemblyLinearVelocity:Dot(CFrame_2.XVector) / arg1.Radius
			i = CFrame_2.ZVector
			local var131 = AssemblyLinearVelocity:Dot(i) / arg1.Radius
			i = var130 ^ 2
			local var132 = (i + var131 ^ 2) ^ 0.5
			if 0.25881904510252074 < var132 then
				local var133 = 0.25881904510252074 / var132
				var130 *= var133
				var131 *= var133
			end
			i = math.asin(var131)
			var107 = var130
			var107 = -5
			i = 1 - math.exp(var107 * arg2)
			var107 = _Model.Weld
			_Model.Weld.C0 = var107.C0:Lerp(CFrame.Angles(i, 0, math.asin(var107)), i)
			local RotorAttachment = _Model.RotorAttachment
			var107 = CFrame.Angles(0, -25.132741228718345 * arg2, 0)
			RotorAttachment.CFrame *= var107
		end
	end
	tbl_6.PostSimulation = PostSimulation
	local module_upvr_7 = require(Modules:WaitForChild("UIShared"))
	local module_upvr_8 = require(Modules:WaitForChild("Transparency"))
	local var178_upvw
	local function RenderStepped(arg1, arg2, arg3, arg4) -- Line 664
		--[[ Upvalues[7]:
			[1]: module_upvr_4 (readonly)
			[2]: tbl_4_upvr (readonly)
			[3]: module_upvr_9 (readonly)
			[4]: module_upvr_11 (readonly)
			[5]: module_upvr_7 (readonly)
			[6]: module_upvr_8 (readonly)
			[7]: var178_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var146
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 14. Error Block 3 start (CF ANALYSIS FAILED)
		var146 = arg2.Light
		var146.Color = arg2.ColorTween.Value
		do
			return
		end
		-- KONSTANTERROR: [19] 14. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 19. Error Block 38 start (CF ANALYSIS FAILED)
		var146 = arg2.ExplosionState
		if not var146 then
			module_upvr_9.ManagedSound.FadeToVolume(arg2.Sounds.Hover, 0.125, nil, 0)
			local Position = arg1.Root.Position
			module_upvr_11.I("Explosion", {
				BlastPressure = 0;
				BlastRadius = 0;
				DestroyJointRadiusPercent = 0;
				ExplosionType = Enum.ExplosionType.NoCraters;
				Position = Position;
				Parent = module_upvr_7.Camera;
			})
			local tbl = {}
			for _, v in arg2.Object:GetDescendants() do
				if v:IsA("BasePart") then
					tbl[#tbl + 1] = v
				elseif module_upvr_11.InstanceIsAJoint(v) then
					v:Destroy()
				end
			end
			for _, v_2 in tbl do
				local var153 = v_2.Position - Position
				if module_upvr_11.Epsilon < var153.Magnitude then
					local var154 = CFrame.lookAlong(Vector3.new(0, 0, 0), var153) * CFrame.fromEulerAngles(0.5235987755982988 * (0.5 - math.random()), 0, math.pi * math.random(), Enum.RotationOrder.ZXY)
					v_2:ApplyImpulse((var154.LookVector) * (180 * v_2.Mass))
					v_2:ApplyAngularImpulse((var154.UpVector) * (2 * (0.5 - math.random()) * 75.39822368615503 * v_2.Mass))
				end
			end
			local any_new_result1 = module_upvr_4.new(0, 1.5)
			module_upvr_4.Begin(any_new_result1, arg4, 1)
			var146 = {
				CachedOpacities = module_upvr_8.Create(arg2.Object);
				FadeTween = any_new_result1;
			}
			arg2.ExplosionState = var146
		end
		assert(var146)
		module_upvr_4.Update(var146.FadeTween, arg4)
		if var146.FadeTween.Completed then
			var178_upvw(arg1)
			return
		end
		if var146.FadeTween.Dirty then
			module_upvr_8.Apply(var146.CachedOpacities, var146.FadeTween.Value)
		end
		-- KONSTANTERROR: [28] 19. Error Block 38 end (CF ANALYSIS FAILED)
	end
	tbl_6.RenderStepped = RenderStepped
	tbl_upvr[module_upvr_5.Data_ById.Hel] = tbl_6
end
Helicopter_upvr = {}
local RenderStepped_upvr = Helicopter_upvr
tbl_4_upvr = {}
local var158 = tbl_4_upvr
tbl_3_upvr = Enum.AlignType.AllAxes
var158.AlignType = tbl_3_upvr
tbl_3_upvr = math.huge
var158.MaxAngularVelocity = tbl_3_upvr
tbl_3_upvr = math.huge
var158.MaxTorque = tbl_3_upvr
tbl_3_upvr = Enum.OrientationAlignmentMode.OneAttachment
var158.Mode = tbl_3_upvr
tbl_3_upvr = 15
var158.Responsiveness = tbl_3_upvr
RenderStepped_upvr.AlignOrientation = var158
var158 = {}
local var159 = var158
tbl_3_upvr = "FlyingAttachment"
var159.Name = tbl_3_upvr
RenderStepped_upvr.Attachment = var159
var159 = {}
local var160 = var159
tbl_3_upvr = false
var160.AutoJumpEnabled = tbl_3_upvr
tbl_3_upvr = false
var160.AutoRotate = tbl_3_upvr
tbl_3_upvr = false
var160.BreakJointsOnDeath = tbl_3_upvr
tbl_3_upvr = Enum.HumanoidDisplayDistanceType.None
var160.DisplayDistanceType = tbl_3_upvr
tbl_3_upvr = false
var160.EvaluateStateMachine = tbl_3_upvr
tbl_3_upvr = 0
var160.HealthDisplayDistance = tbl_3_upvr
tbl_3_upvr = Enum.HumanoidHealthDisplayType.AlwaysOff
var160.HealthDisplayType = tbl_3_upvr
tbl_3_upvr = 0
var160.HipHeight = tbl_3_upvr
tbl_3_upvr = 0
var160.NameDisplayDistance = tbl_3_upvr
tbl_3_upvr = Enum.NameOcclusion.OccludeAll
var160.NameOcclusion = tbl_3_upvr
RenderStepped_upvr.Humanoid = var160
var160 = {}
local var161 = var160
tbl_3_upvr = "HumanoidRootPart"
var161.Name = tbl_3_upvr
tbl_3_upvr = false
var161.Anchored = tbl_3_upvr
tbl_3_upvr = Enum.SurfaceType.Smooth
var161.BottomSurface = tbl_3_upvr
tbl_3_upvr = true
var161.CanCollide = tbl_3_upvr
tbl_3_upvr = true
var161.CanQuery = tbl_3_upvr
tbl_3_upvr = true
var161.CanTouch = tbl_3_upvr
tbl_3_upvr = false
var161.CastShadow = tbl_3_upvr
tbl_3_upvr = 127
var161.RootPriority = tbl_3_upvr
tbl_3_upvr = Enum.PartType.Ball
var161.Shape = tbl_3_upvr
tbl_3_upvr = Vector3.new(8, 8, 8)
var161.Size = tbl_3_upvr
tbl_3_upvr = Enum.SurfaceType.Smooth
var161.TopSurface = tbl_3_upvr
tbl_3_upvr = 1
var161.Transparency = tbl_3_upvr
RenderStepped_upvr.Root = var161
var161 = {}
local Create = var161
tbl_3_upvr = true
Create.ApplyAtCenterOfMass = tbl_3_upvr
tbl_3_upvr = Vector3.new(0, 0, 0)
Create.Force = tbl_3_upvr
tbl_3_upvr = Enum.ActuatorRelativeTo.World
Create.RelativeTo = tbl_3_upvr
RenderStepped_upvr.VectorForce = Create
function Create(arg1, arg2, arg3, ...) -- Line 822
	--[[ Upvalues[9]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr_6 (readonly)
		[3]: tbl_upvr (readonly)
		[4]: module_upvr_11 (readonly)
		[5]: RenderStepped_upvr (readonly)
		[6]: Folder_upvr (readonly)
		[7]: module_upvr_2 (readonly)
		[8]: module_upvr_10 (readonly)
		[9]: tbl_5_upvr (readonly)
	]]
	local var163 = module_upvr_5.Data_ById[arg1]
	if not var163 then
		error(module_upvr_6.FormatOutput("Received invalid EnemyId '%*'", "FlyingChaserNPCManager", nil, arg1), 2)
	end
	local var164 = tbl_upvr[var163]
	if not var164 then
		error(module_upvr_6.FormatOutput("Received unsupported EnemyId '%s'", "FlyingChaserNPCManager", nil, var163.Id), 2)
	end
	local Model = Instance.new("Model")
	Model.Name = "FlyingChaserNPC_"..arg1
	local any_I_result1_4 = module_upvr_11.I("Part", RenderStepped_upvr.Root, {
		Parent = Model;
	})
	local any_I_result1_3 = module_upvr_11.I("Attachment", RenderStepped_upvr.Attachment, {
		Parent = any_I_result1_4;
	})
	Model.PrimaryPart = any_I_result1_4
	Model:PivotTo(arg3)
	Model.Parent = Folder_upvr
	local any_I_result1_5 = module_upvr_11.I("Humanoid", RenderStepped_upvr.Humanoid, {
		Parent = Model;
	})
	any_I_result1_5:AddTag(module_upvr_6.Tags.EnemyHumanoid)
	any_I_result1_5:SetAttribute("EnemyId", arg1)
	local any_EnemyStatsCreate_result1_upvr = module_upvr_5.EnemyStatsCreate(var163, arg2)
	local module_upvr = {
		_Connections = {};
		_LastHealth = 0;
		_LastPosition = Vector3.new(0, 0, 0);
		_LastVelocity = Vector3.new(0, 0, 0);
		_SpawnPos = arg3.Position;
		Active = true;
		Attacked = false;
		HealthDirty = true;
		LockedOn = false;
		Passive = true;
	}
	module_upvr.Strength = arg2
	module_upvr.Acceleration = 0
	module_upvr.Radius = 4
	module_upvr.Range = math.huge
	module_upvr.Speed = 0
	module_upvr.EnemyData = var163
	module_upvr.AlignOrientation = module_upvr_11.I("AlignOrientation", RenderStepped_upvr.AlignOrientation, {
		Attachment0 = any_I_result1_3;
		Parent = any_I_result1_4;
	})
	module_upvr.Attachment = any_I_result1_3
	module_upvr.Humanoid = any_I_result1_5
	module_upvr.Object = Model
	module_upvr.Root = any_I_result1_4
	module_upvr.VectorForce = module_upvr_11.I("VectorForce", RenderStepped_upvr.VectorForce, {
		Attachment0 = any_I_result1_3;
		Parent = any_I_result1_4;
	})
	var164.Initialize(module_upvr, ...)
	module_upvr.Humanoid.MaxHealth = any_EnemyStatsCreate_result1_upvr.Health
	module_upvr.Humanoid.Health = module_upvr.Humanoid.MaxHealth
	module_upvr._LastHealth = module_upvr.Humanoid.Health
	module_upvr._LastPosition = module_upvr.Root.Position
	module_upvr._LastVelocity = module_upvr.Root.AssemblyLinearVelocity
	module_upvr._Connections[#module_upvr._Connections + 1] = module_upvr.Humanoid.Died:Connect(function() -- Line 919, Named "DestroyOnKill"
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		module_upvr_2.Destroy(module_upvr)
	end)
	local var176_upvw = false
	module_upvr._Connections[#module_upvr._Connections + 1] = module_upvr.Root.Touched:Connect(function(arg1_3) -- Line 928, Named "DamagePlayer"
		--[[ Upvalues[5]:
			[1]: var176_upvw (read and write)
			[2]: module_upvr (readonly)
			[3]: module_upvr_10 (copied, readonly)
			[4]: module_upvr_11 (copied, readonly)
			[5]: any_EnemyStatsCreate_result1_upvr (readonly)
		]]
		if var176_upvw or module_upvr.Passive then
		else
			var176_upvw = true
			local selected = select(3, module_upvr_10.LocalPlayerTouched(arg1_3))
			if selected then
				module_upvr_11.HumanoidTakeDamage(selected, any_EnemyStatsCreate_result1_upvr.Damage)
				task.wait(any_EnemyStatsCreate_result1_upvr.Cooldown)
			end
			var176_upvw = false
		end
	end)
	tbl_5_upvr.FlyingChaserNPCs[#tbl_5_upvr.FlyingChaserNPCs + 1] = module_upvr
	tbl_5_upvr.FlyingChaserNPC_ByRoot[module_upvr.Root] = module_upvr
	if module_upvr._Model then
		tbl_5_upvr.ModelNPCs[#tbl_5_upvr.ModelNPCs + 1] = module_upvr
	end
	return module_upvr
end
module_upvr_2.Create = Create
function var178_upvw(arg1) -- Line 970
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1.EnemyData].Destroy(arg1)
	if arg1._Model then
		arg1._Model.Object:Destroy()
		arg1._Model = nil
	end
	arg1.Object:Destroy()
end
function RenderStepped_upvr(arg1, arg2) -- Line 983, Named "Destroy"
	--[[ Upvalues[3]:
		[1]: module_upvr_3 (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: var178_upvw (read and write)
	]]
	arg1.Active = false
	arg1.Root.Anchored = true
	if arg1._HealthBar then
		module_upvr_3.HealthBar.Destroy(arg1._HealthBar)
		arg1._HealthBar = nil
	end
	for i_4, v_3 in arg1._Connections do
		v_3:Disconnect()
	end
	table.clear(arg1._Connections)
	local table_find_result1 = table.find(tbl_5_upvr.FlyingChaserNPCs, arg1)
	if table_find_result1 then
		i_4 = tbl_5_upvr
		i_4 = table_find_result1
		table.remove(i_4.FlyingChaserNPCs, i_4)
	end
	tbl_5_upvr.FlyingChaserNPC_ByRoot[arg1.Root] = nil
	if arg2 or not arg1._Model then
		var178_upvw(arg1)
	end
end
module_upvr_2.Destroy = RenderStepped_upvr
function RenderStepped_upvr(arg1) -- Line 1016, Named "Pacify"
	arg1.Attacked = false
	arg1.LockedOn = false
	arg1.Passive = true
end
module_upvr_2.Pacify = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2) -- Line 1027, Named "PostSimulation"
	--[[ Upvalues[5]:
		[1]: module_upvr_6 (readonly)
		[2]: module_upvr_10 (readonly)
		[3]: tbl_5_upvr (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: tbl_upvr (readonly)
	]]
	debug.profilebegin("CFH_FlyingChaserNPCManager")
	local any_PlayerStateGetRootRemoteState_result1 = module_upvr_6.PlayerStateGetRootRemoteState(module_upvr_10.LocalPlayerState, true, true)
	if any_PlayerStateGetRootRemoteState_result1 then
		tbl_5_upvr.LocalPlayerTarget = any_PlayerStateGetRootRemoteState_result1.ReceivedCFrame.Position
	end
	for _, v_4 in tbl_5_upvr.FlyingChaserNPCs do
		local Health_2 = v_4.Humanoid.Health
		local var211
		if Health_2 < var211 then
			var211 = v_4.Attacked
			if not var211 then
				var211 = v_4.Range * 0.25
				for i_6, v_5 in tbl_5_upvr.FlyingChaserNPCs do
					if (v_5._LastPosition - v_4._LastPosition).Magnitude <= var211 then
						v_5.Attacked = true
						v_5.Passive = false
					end
				end
			end
		end
		if v_4._LastHealth == Health_2 then
			var211 = false
		else
			var211 = true
		end
		v_4.HealthDirty = var211
		var211 = v_4.HealthDirty
		if var211 then
			var211 = v_4.Humanoid.MaxHealth
			if Health_2 < var211 then
				if v_4._HealthBar then
					module_upvr_3.HealthBar.Update(v_4._HealthBar, Health_2)
				else
					i_6 = v_4.Object
					v_4._HealthBar = module_upvr_3.HealthBar.Create(Health_2, var211, i_6)
				end
			elseif v_4._HealthBar then
				module_upvr_3.HealthBar.Destroy(v_4._HealthBar)
				v_4._HealthBar = nil
			end
		end
		v_4._LastHealth = Health_2
		var211 = tbl_upvr[v_4.EnemyData]
		var211.PostSimulation(v_4, arg1, arg2)
	end
	for _, v_6 in tbl_5_upvr.FlyingChaserNPCs do
		var211 = v_6.Root
		v_6._LastPosition = var211.Position
		var211 = v_6.Root
		v_6._LastVelocity = var211.AssemblyLinearVelocity
	end
	debug.profileend()
end
module_upvr_2.PostSimulation = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2) -- Line 1108, Named "RenderStepped"
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	debug.profilebegin("CFR_FlyingChaserNPCManager")
	for _, v_7 in tbl_5_upvr.ModelNPCs do
		if v_7._Model then
			tbl_upvr[v_7.EnemyData].RenderStepped(v_7, v_7._Model, arg1, arg2)
		end
	end
	debug.profileend()
end
module_upvr_2.RenderStepped = RenderStepped_upvr
return module_upvr_2