-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:12
-- Luau version 6, Types version 3
-- Time taken: 0.022079 seconds

local module_14_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_7_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_6_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_10_upvr = require(Modules:WaitForChild("Audio"))
local module_5_upvr = require(Modules:WaitForChild("CharacterStateHandler"))
local module_4_upvr = require(Modules:WaitForChild("ClientData"))
local module_2_upvr = require(Modules:WaitForChild("Transparency"))
local module_upvr = require(Modules:WaitForChild("Tweens"))
local module_9_upvr = require(Modules:WaitForChild("UIShared"))
local module_11_upvr = require(Modules:WaitForChild("Utility"))
local module_12_upvr = require(Modules:WaitForChild("LevelLoader"):WaitForChild("DimensionManager"))
local AsyncData_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("AsyncData")
module_14_upvr.AgentType = table.freeze({
	Cylinder = 1;
	Sphere = 2;
})
module_14_upvr.ChaserType = table.freeze({
	Monster = 1;
})
local tbl_3_upvr = {
	LastPosition = nil;
	PathChaserNPCs = {};
	ModelNPCs = {};
	DebrisObjects = {};
	DeltaRemainder = 0;
}
local function _(arg1) -- Line 223, Named "DebrisObjectAdd"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	if table.find(tbl_3_upvr.DebrisObjects, arg1) == nil then
		tbl_3_upvr.DebrisObjects[#tbl_3_upvr.DebrisObjects + 1] = arg1
	end
end
local function _(arg1) -- Line 231, Named "DebrisObjectDestroy"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local table_find_result1_2 = table.find(tbl_3_upvr.DebrisObjects, arg1)
	if table_find_result1_2 then
		table.remove(tbl_3_upvr.DebrisObjects, table_find_result1_2)
	end
	arg1:Destroy()
end
local tbl_8_upvr = {
	[module_14_upvr.ChaserType.Monster] = module_14_upvr.AgentType.Cylinder;
}
local function _() -- Line 263, Named "AgentStateCreate"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	return {
		_StrengthenTime = 3.5;
		Radius = module_6_upvr.PathChaserNPCRadius;
		Strength = 0;
	}
end
local tbl_4_upvr = {}
local tbl_5 = {}
local function Create() -- Line 276
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var25 = {
		_StrengthenTime = 3.5;
		Radius = module_6_upvr.PathChaserNPCRadius;
		Strength = 0;
	}
	var25.Height = var25.Radius
	var25.Offset = 0
	var25.TiltLimit = math.huge
	return var25
end
tbl_5.Create = Create
local function IsInside(arg1, arg2, arg3) -- Line 286
	local UpVector = arg2.Rotation.UpVector
	local var27 = (arg3) - (arg2.Position - UpVector * arg1.Offset)
	local any_Dot_result1 = var27:Dot(UpVector)
	local var29
	if 0 <= any_Dot_result1 and any_Dot_result1 <= arg1.Height then
		if var27:Cross(var27 - UpVector * arg1.Height).Magnitude / arg1.Height > arg1.Radius then
			var29 = false
		else
			var29 = true
		end
	end
	return var29
end
tbl_5.IsInside = IsInside
local function Rotate(arg1, arg2, arg3) -- Line 313
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	local var30
	local var31 = arg3 - arg2
	if module_11_upvr.Epsilon < var31.Magnitude then
		local X = var31.X
		local Z = var31.Z
		local arctangent = math.atan2(var31.Y, (X * X + Z * Z) ^ 0.5)
		if arg1.TiltLimit < math.abs(arctangent) then
			arctangent = arg1.TiltLimit * math.sign(arctangent)
		end
		var30 = CFrame.fromEulerAnglesYXZ(arctangent, math.atan2(-X, -Z), 0)
	end
	return var30
end
tbl_5.Rotate = Rotate
tbl_4_upvr[module_14_upvr.AgentType.Cylinder] = tbl_5
local tbl_11 = {}
local function Create() -- Line 346
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	return {
		_StrengthenTime = 3.5;
		Radius = module_6_upvr.PathChaserNPCRadius;
		Strength = 0;
	}
end
tbl_11.Create = Create
function tbl_11.IsInside(arg1, arg2, arg3) -- Line 352
	local var37
	if (arg2.Position - arg3).Magnitude > arg1.Radius then
		var37 = false
	else
		var37 = true
	end
	return var37
end
function tbl_11.Rotate(arg1, arg2, arg3) -- Line 360
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	local var38
	local var39 = arg3 - arg2
	if module_11_upvr.Epsilon < var39.Magnitude then
		var38 = CFrame.lookAlong(Vector3.new(0, 0, 0), var39.Unit)
	end
	return var38
end
tbl_4_upvr[module_14_upvr.AgentType.Sphere] = tbl_11
local tbl_13_upvr = {}
if module_6_upvr.IsScaryRun then
	local ScaryRunCreature_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Enemies"):WaitForChild("ScaryRunCreature")
	assert(assert(ScaryRunCreature_upvr:FindFirstChild("096_body"), "Missing Body"):IsA("BasePart"), "Body is not a BasePart")
	local _ = {
		Left = "Head";
		Right = "UpperTorso";
	}
	local tbl_12_upvr = {
		Eat = module_11_upvr.AnimationFromId("rbxassetid://91644040335999");
		Hover = module_11_upvr.AnimationFromId("rbxassetid://83176690591717");
		Walk = module_11_upvr.AnimationFromId("rbxassetid://90279274758452");
	}
	local tbl_6_upvr = {
		Hover = tbl_12_upvr.Hover;
		Walk = tbl_12_upvr.Walk;
	}
	local var45 = ScaryRunCreature_upvr:GetScale() / 0.02666170708835125
	local cframe_upvr = CFrame.new(Vector3.new(0, 7.98965, -0.2119) * var45)
	local tbl_9_upvr = {
		Despawn = {
			Brightness = 1;
			Color = ColorSequence.new(Color3.fromRGB(0, 0, 0));
			Drag = 2;
			EmissionDirection = Enum.NormalId.Top;
			Enabled = false;
			Lifetime = NumberRange.new(1);
			LightEmission = 0;
			LightInfluence = 0;
			LockedToPart = true;
			Orientation = Enum.ParticleOrientation.FacingCamera;
			Rate = 40;
			Rotation = NumberRange.new(-180, 180);
			RotSpeed = NumberRange.new(-90, 90);
			Shape = Enum.ParticleEmitterShape.Box;
			ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
			ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
			Size = module_11_upvr.NumberSequenceScale(NumberSequence.new({NumberSequenceKeypoint.new(0, 2.45), NumberSequenceKeypoint.new(0.25, 6.5), NumberSequenceKeypoint.new(0.5, 8.5), NumberSequenceKeypoint.new(0.75, 9.5), NumberSequenceKeypoint.new(1, 10)}), var45);
			Speed = NumberRange.new(30);
			SpreadAngle = Vector2.one * 180;
			Texture = "rbxassetid://534953301";
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.25, 0.25), NumberSequenceKeypoint.new(1, 1)});
			ZOffset = 2 * var45;
		};
		Spawn = {
			Brightness = 1;
			Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(100, 100, 100));
			Drag = 4;
			EmissionDirection = Enum.NormalId.Top;
			Enabled = true;
			Lifetime = NumberRange.new(2);
			LightEmission = 0;
			LightInfluence = 0;
			LockedToPart = true;
			Orientation = Enum.ParticleOrientation.FacingCamera;
			Rate = 50;
			Rotation = NumberRange.new(-180, 180);
			RotSpeed = NumberRange.new(-90, 90);
			Shape = Enum.ParticleEmitterShape.Sphere;
			ShapeInOut = Enum.ParticleEmitterShapeInOut.Inward;
			ShapePartial = 1;
			ShapeStyle = Enum.ParticleEmitterShapeStyle.Surface;
			Size = module_11_upvr.NumberSequenceScale(NumberSequence.new({NumberSequenceKeypoint.new(0, 10), NumberSequenceKeypoint.new(0.25, 5.625), NumberSequenceKeypoint.new(0.5, 2.5), NumberSequenceKeypoint.new(0.75, 0.625), NumberSequenceKeypoint.new(1, 0)}), var45);
			Speed = NumberRange.new(40);
			SpreadAngle = Vector2.zero;
			Texture = "rbxassetid://534953301";
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.125706, 0.34375), NumberSequenceKeypoint.new(0.310734, 0.23125), NumberSequenceKeypoint.new(0.543785, 0.23125), NumberSequenceKeypoint.new(0.788136, 0.3375), NumberSequenceKeypoint.new(1, 1)});
			ZOffset = 2 * var45;
		};
		Walk = {
			Acceleration = Vector3.new(-3, -0, -0);
			Brightness = 0.8;
			Color = ColorSequence.new(Color3.fromRGB(65, 65, 65));
			Drag = 0;
			EmissionDirection = Enum.NormalId.Bottom;
			Enabled = true;
			Lifetime = NumberRange.new(1, 2);
			LightEmission = 0;
			LightInfluence = 0;
			LockedToPart = true;
			Orientation = Enum.ParticleOrientation.FacingCamera;
			Rate = 10;
			Rotation = NumberRange.new(0);
			RotSpeed = NumberRange.new(0);
			Shape = Enum.ParticleEmitterShape.Cylinder;
			ShapeInOut = Enum.ParticleEmitterShapeInOut.Inward;
			ShapePartial = 1;
			ShapeStyle = Enum.ParticleEmitterShapeStyle.Surface;
			Size = module_11_upvr.NumberSequenceScale(NumberSequence.new({NumberSequenceKeypoint.new(0, 2.4375), NumberSequenceKeypoint.new(1, 5)}), var45);
			Speed = NumberRange.new(4);
			SpreadAngle = Vector2.zero;
			Texture = "rbxassetid://534953301";
			TimeScale = 0.25;
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.125706, 0.34375), NumberSequenceKeypoint.new(0.310734, 0.23125), NumberSequenceKeypoint.new(0.543785, 0.23125), NumberSequenceKeypoint.new(0.788136, 0.3375), NumberSequenceKeypoint.new(1, 1)});
			ZOffset = 2 * var45;
		};
	}
	local var57_upvr = 2 * tbl_9_upvr.Despawn.Lifetime.Max
	local tbl_10_upvr = {
		Ambient = {
			Looped = true;
			PlaybackSpeed = 0.5;
			SoundGroup = module_10_upvr.SoundGroup.SFX;
			SoundId = "rbxassetid://9125964884";
			Volume = 2;
		};
		Capture = {
			SoundGroup = module_10_upvr.SoundGroup.SFX;
			SoundId = "rbxassetid://9118842243";
			TimePosition = 4;
			Volume = 0.8;
			Parent = game:GetService("SoundService");
		};
	}
	local tbl_7_upvr = {
		Brightness = -20000;
		Saturation = -1000000;
	}
	local function _(arg1) -- Line 644, Named "DespawnWalkEffects"
		--[[ Upvalues[2]:
			[1]: module_9_upvr (readonly)
			[2]: module_11_upvr (readonly)
		]]
		if arg1.WalkEffects then
			local WalkEffects = arg1.WalkEffects
			arg1.WalkEffects = nil
			local Emitter = WalkEffects.Emitter
			local Part = WalkEffects.Part
			Emitter.Enabled = false
			Part.Parent = module_9_upvr.Camera
			task.delay(select(2, module_11_upvr.ParticleEmitterGetAppliedLifetime(Emitter)), Part.Destroy, Part)
		end
	end
	local tbl_2 = {}
	local var66_upvr = (Vector3.new(1, 1, 1)) * (32 * var45)
	local Lighting_upvr = game:GetService("Lighting")
	local function Create(arg1) -- Line 667
		--[[ Upvalues[12]:
			[1]: ScaryRunCreature_upvr (readonly)
			[2]: module_upvr (readonly)
			[3]: module_2_upvr (readonly)
			[4]: module_11_upvr (readonly)
			[5]: cframe_upvr (readonly)
			[6]: tbl_9_upvr (readonly)
			[7]: var66_upvr (readonly)
			[8]: module_10_upvr (readonly)
			[9]: tbl_10_upvr (readonly)
			[10]: Lighting_upvr (readonly)
			[11]: tbl_3_upvr (readonly)
			[12]: var57_upvr (readonly)
		]]
		local clone = ScaryRunCreature_upvr:Clone()
		local assert_result1_2 = assert(clone:FindFirstChild("096_body", true), "Missing Body")
		assert(assert_result1_2:IsA("BasePart"), "Body is not a BasePart")
		local assert_result1 = assert(clone.PrimaryPart, "Missing Root")
		local Size = assert_result1_2.Size
		arg1.Height = Size.Y + arg1.Radius * 0.5
		arg1.Offset = assert_result1_2.CFrame * CFrame.new(0, Size.Y * -0.5, 0):ToObjectSpace(clone:GetPivot()).Y
		arg1.TiltLimit = 0.2617993877991494
		local any_new_result1 = module_upvr.new(1, 3.5)
		module_upvr.Begin(any_new_result1, os.clock(), 0)
		local any_Create_result1 = module_2_upvr.Create(clone)
		module_2_upvr.Apply(any_Create_result1, any_new_result1.Value)
		local any_I_result1 = module_11_upvr.I("Part", {
			Anchored = true;
			CanCollide = false;
			CanQuery = false;
			CanTouch = false;
			CastShadow = false;
			Position = (assert_result1.CFrame * cframe_upvr).Position;
			Size = var66_upvr;
			Transparency = 1;
			Parent = clone;
		})
		local any_Create_result1_3 = module_10_upvr.ManagedSound.Create(tbl_10_upvr.Ambient, true)
		any_Create_result1_3.Sound.Parent = assert_result1
		module_10_upvr.ManagedSound.SetVolumeMod(any_Create_result1_3, "Fade", 0)
		module_10_upvr.ManagedSound.FadeToVolume(any_Create_result1_3, 3.5, nil, 1)
		module_10_upvr.ManagedSound.Play(any_Create_result1_3)
		local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect")
		ColorCorrectionEffect.Parent = Lighting_upvr
		if table.find(tbl_3_upvr.DebrisObjects, ColorCorrectionEffect) == nil then
			tbl_3_upvr.DebrisObjects[#tbl_3_upvr.DebrisObjects + 1] = ColorCorrectionEffect
		end
		return {
			_AnimationsPending = true;
			_Connections = {};
			Animations = {};
			Animator = assert(clone:FindFirstChildWhichIsA("Animator", true), "Missing Animator");
			Body = assert_result1_2;
			Object = clone;
			Root = assert_result1;
			Sounds = {
				Ambient = any_Create_result1_3;
			};
			DespawnEmitter = module_11_upvr.I("ParticleEmitter", tbl_9_upvr.Despawn, {
				Parent = module_11_upvr.I("Attachment", {
					CFrame = cframe_upvr;
					Parent = assert_result1;
				});
			});
			SpawnEmitter = module_11_upvr.I("ParticleEmitter", tbl_9_upvr.Spawn, {
				Parent = any_I_result1;
			});
			SpawnPart = any_I_result1;
			Tint = ColorCorrectionEffect;
			CachedOpacities = any_Create_result1;
			BrightnessTween = module_upvr.new(0, var57_upvr);
			FadeTween = any_new_result1;
		}
	end
	tbl_2.Create = Create
	local function Destroy(arg1) -- Line 777
		--[[ Upvalues[2]:
			[1]: module_10_upvr (readonly)
			[2]: tbl_3_upvr (readonly)
		]]
		for _, v in arg1._Connections do
			v:Disconnect()
		end
		if arg1.SpawnPart then
			arg1.SpawnPart:Destroy()
		end
		for _, v_2 in arg1.Sounds do
			module_10_upvr.ManagedSound.Destroy(v_2, true)
		end
		local Tint = arg1.Tint
		local table_find_result1_4 = table.find(tbl_3_upvr.DebrisObjects, Tint)
		if table_find_result1_4 then
			table.remove(tbl_3_upvr.DebrisObjects, table_find_result1_4)
		end
		Tint:Destroy()
	end
	tbl_2.Destroy = Destroy
	local var89_upvr = 1469.4652299740917 * ScaryRunCreature_upvr:GetScale()
	local var90_upvr = CFrame.new(0, -0.5 * var45, 0) * CFrame.new(0, 0, (-math.pi/2))
	local var91_upvr = Vector3.new(1, 10, 10) * var45
	local module_3_upvr = require(Modules:WaitForChild("LocalPlayerManager"))
	local module_13_upvr = require(Modules:WaitForChild("UserInterface"):WaitForChild("FadeOutUI"))
	local var126_upvw
	function tbl_2.Update(arg1, arg2, arg3, arg4) -- Line 795
		--[[ Upvalues[19]:
			[1]: module_upvr (readonly)
			[2]: module_2_upvr (readonly)
			[3]: tbl_9_upvr (readonly)
			[4]: cframe_upvr (readonly)
			[5]: tbl_6_upvr (readonly)
			[6]: var89_upvr (readonly)
			[7]: module_11_upvr (readonly)
			[8]: var90_upvr (readonly)
			[9]: var91_upvr (readonly)
			[10]: module_9_upvr (readonly)
			[11]: module_10_upvr (readonly)
			[12]: module_3_upvr (readonly)
			[13]: tbl_12_upvr (readonly)
			[14]: module_4_upvr (readonly)
			[15]: module_13_upvr (readonly)
			[16]: tbl_10_upvr (readonly)
			[17]: tbl_7_upvr (readonly)
			[18]: var57_upvr (readonly)
			[19]: var126_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		module_upvr.Update(arg1.FadeTween, arg4)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [14] 10. Error Block 2 start (CF ANALYSIS FAILED)
		module_2_upvr.Apply(arg1.CachedOpacities, arg1.FadeTween.Value)
		-- KONSTANTERROR: [14] 10. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 16. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 16. Error Block 3 end (CF ANALYSIS FAILED)
	end
	tbl_13_upvr[module_14_upvr.ChaserType.Monster] = tbl_2
end
function ScaryRunCreature_upvr(arg1, arg2) -- Line 1209, Named "LogPathPoint"
	--[[ Upvalues[1]:
		[1]: module_12_upvr (readonly)
	]]
	local LevelAssetState = arg1.LevelAssetState
	local PathTail = arg1.PathTail
	if PathTail then
		LevelAssetState = PathTail.Position
	else
		LevelAssetState = arg1.Position
	end
	local tbl = {
		Distance = (arg2.Position - LevelAssetState).Magnitude;
		Position = module_12_upvr.CFrameFromDimensionSpace(LevelAssetState, arg2).Position;
	}
	if PathTail then
		PathTail.Next = tbl
	end
	arg1.PathTail = tbl
	if not arg1.PathHead then
		arg1.PathHead = tbl
	end
end
local var95_upvr = ScaryRunCreature_upvr
local function _(arg1, arg2) -- Line 1240, Named "LogPathPoint_FromCharacterState"
	--[[ Upvalues[1]:
		[1]: var95_upvr (readonly)
	]]
	if arg2.Initialized then
		local Root_3 = arg2.Root
		var95_upvr(arg1, Root_3.CFrame * CFrame.new(0, -(Root_3.Size.Y * 0.5 + arg2.Humanoid.HipHeight), 0))
	end
end
function module_14_upvr.Create(arg1, arg2, arg3, arg4) -- Line 1256
	--[[ Upvalues[9]:
		[1]: tbl_8_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: tbl_13_upvr (readonly)
		[5]: module_12_upvr (readonly)
		[6]: module_6_upvr (readonly)
		[7]: tbl_3_upvr (readonly)
		[8]: module_4_upvr (readonly)
		[9]: var95_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var113 = tbl_8_upvr[arg3]
	local var114
	if not var113 then
		var114 = "PathChaserNPCManager"
		error(module_7_upvr.FormatOutput("Received invalid ChaserType '%*'", var114, nil, arg3), 2)
	end
	var114 = nil
	local var115 = tbl_13_upvr[arg3]
	if var115 then
		local any_Create_result1_2 = var115.Create(tbl_4_upvr[var113].Create())
		var114 = any_Create_result1_2.Object
		local var117
	end
	local var118
	if var114 and arg4 then
		var118 = nil
		if var114:IsA("BasePart") then
			var118 = var114.Size
			local _ = var114.PivotOffset
		elseif var114:IsA("Model") then
			local any_GetBoundingBox_result1_2, any_GetBoundingBox_result2_2 = var114:GetBoundingBox()
			var118 = any_GetBoundingBox_result2_2
		end
		if var118 and any_GetBoundingBox_result1_2:ToObjectSpace(var114:GetPivot()) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var117 *= CFrame.new(0, var118.Y * 0.5 + any_GetBoundingBox_result1_2:ToObjectSpace(var114:GetPivot()).Y, 0)
		end
	end
	if var114 then
		var118 = var114:PivotTo
		var118(var117)
		var118 = workspace
		var114.Parent = var118
	end
	var117 = module_12_upvr.CFrameFromDimensionSpace(arg1, var117)
	local Rotation = var117.Rotation
	local module = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module._Agent = tbl_4_upvr[var113].Create()
	module._Model = any_Create_result1_2
	module._OscillationTime = 0
	module._Type = arg3
	module.Active = true
	module.CanCaptureAt = os.clock() + module_6_upvr.ScaryRunSpawnProtectionTime
	module.Captured = false
	module.Distance = 0
	module.GroundedDirty = false
	module.Paused = false
	module.PausedDirty = false
	module.Position = var117.Position
	module.Radius = module_6_upvr.PathChaserNPCRadius
	module.Rotation = Rotation
	module.Speed = 0
	module.TargetRotation = Rotation
	module.Object = var114
	module.LevelAssetState = arg1
	tbl_3_upvr.PathChaserNPCs[#tbl_3_upvr.PathChaserNPCs + 1] = module
	if any_Create_result1_2 then
		tbl_3_upvr.ModelNPCs[#tbl_3_upvr.ModelNPCs + 1] = module
	end
	if module_4_upvr.LocalCharacterState then
		local LocalCharacterState_4 = module_4_upvr.LocalCharacterState
		if LocalCharacterState_4.Initialized then
			local Root = LocalCharacterState_4.Root
			var95_upvr(module, Root.CFrame * CFrame.new(0, -(Root.Size.Y * 0.5 + LocalCharacterState_4.Humanoid.HipHeight), 0))
		end
	end
	return module
end
function var126_upvw(arg1) -- Line 1365
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_13_upvr (readonly)
	]]
	if arg1._Model then
		local table_find_result1 = table.find(tbl_3_upvr.ModelNPCs, arg1)
		if table_find_result1 then
			table.remove(tbl_3_upvr.ModelNPCs, table_find_result1)
		end
		local var128 = tbl_13_upvr[arg1._Type]
		if var128 then
			var128.Destroy(arg1._Model)
		end
		arg1._Model.Object:Destroy()
	end
end
function module_14_upvr.Destroy(arg1, arg2) -- Line 1383
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: var126_upvw (read and write)
	]]
	arg1.Active = false
	arg1.PausedDirty = not arg1.Paused
	arg1.Paused = false
	local table_find_result1_3 = table.find(tbl_3_upvr.PathChaserNPCs, arg1)
	if table_find_result1_3 then
		table.remove(tbl_3_upvr.PathChaserNPCs, table_find_result1_3)
	end
	if arg2 then
		var126_upvw(arg1)
	end
end
local function _(arg1, arg2, arg3) -- Line 1403, Named "Capture_Internal"
	--[[ Upvalues[5]:
		[1]: module_6_upvr (readonly)
		[2]: AsyncData_upvr (readonly)
		[3]: module_7_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_14_upvr (readonly)
	]]
	if arg3 and module_6_upvr.PathChaserNPCCanNetworkCaptures then
		AsyncData_upvr:FireServer(module_7_upvr.AsyncDataRequestType.CharacterCaptured)
	end
	arg1.Captured = true
	if arg2 then
		module_5_upvr.KillCharacter(arg2)
	end
	module_14_upvr.Destroy(arg1)
end
function module_14_upvr.Capture() -- Line 1424
	--[[ Upvalues[4]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: module_14_upvr (readonly)
	]]
	local var134
	for i_3, v_3 in tbl_3_upvr.PathChaserNPCs do
		if v_3.Distance < math.huge then
			var134 = v_3
		end
	end
	if var134 then
		local var135 = var134
		local LocalCharacterState_3 = module_4_upvr.LocalCharacterState
		var135.Captured = true
		if LocalCharacterState_3 then
			i_3 = module_5_upvr
			i_3 = LocalCharacterState_3
			i_3.KillCharacter(i_3)
		end
		i_3 = module_14_upvr
		i_3 = var135
		i_3.Destroy(i_3)
	end
end
function module_14_upvr.CharacterRemoving(arg1) -- Line 1451
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	tbl_3_upvr.LastPosition = nil
	for _, v_4 in tbl_3_upvr.DebrisObjects do
		v_4:Destroy()
	end
	table.clear(tbl_3_upvr.DebrisObjects)
end
local var139_upvr = module_6_upvr.PathChaserNPCRadius / 5
local module_upvr_2 = require(Modules:WaitForChild("Raycast"))
function module_14_upvr.PostSimulation(arg1, arg2) -- Line 1465
	--[[ Upvalues[13]:
		[1]: module_4_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: var139_upvr (readonly)
		[5]: var95_upvr (readonly)
		[6]: tbl_8_upvr (readonly)
		[7]: tbl_4_upvr (readonly)
		[8]: AsyncData_upvr (readonly)
		[9]: module_7_upvr (readonly)
		[10]: module_5_upvr (readonly)
		[11]: module_14_upvr (readonly)
		[12]: module_upvr_2 (readonly)
		[13]: module_12_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 115 start (CF ANALYSIS FAILED)
	local LocalCharacterState_2 = module_4_upvr.LocalCharacterState
	local var166
	if LocalCharacterState_2 and LocalCharacterState_2.Initialized then
		local Carrier = module_4_upvr.LocalCarryState.Carrier
		local var168 = LocalCharacterState_2
		if Carrier then
			local CharacterState_2 = Carrier.PlayerState.CharacterState
			if CharacterState_2 and CharacterState_2.Initialized and CharacterState_2.Alive then
				var166 = false
				var168 = CharacterState_2
			end
		end
	end
	Carrier = var166
	local var170 = Carrier
	if var170 then
		var170 = module_4_upvr.Flags.LevelMenuOpen
		if not var170 then
			var170 = module_4_upvr.Flags.PetScreenActive
		end
	end
	tbl_3_upvr.DeltaRemainder = arg1 + tbl_3_upvr.DeltaRemainder % 0.004166666666666667
	for _, v_5 in tbl_3_upvr.PathChaserNPCs do
		local var172
		if v_5.Paused == var170 then
			var172 = false
		else
			var172 = true
		end
		v_5.PausedDirty = var172
		v_5.Paused = var170
	end
	-- KONSTANTERROR: [0] 1. Error Block 115 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [90] 64. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [90] 64. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [94] 67. Error Block 116 start (CF ANALYSIS FAILED)
	for _, v_6 in tbl_3_upvr.PathChaserNPCs do
		var172 = v_6.PausedDirty
		if var172 then
			var172 = arg2 + module_6_upvr.ScaryRunSpawnProtectionTime
			v_6.CanCaptureAt = var172
			var172 = v_6._Agent
			var172.Strength = 0
			var172 = v_6._Agent
			var172._StrengthenTime = 3.5
		end
	end
	-- KONSTANTERROR: [94] 67. Error Block 116 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [121] 85. Error Block 24 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [121] 85. Error Block 24 end (CF ANALYSIS FAILED)
end
function module_14_upvr.RenderStepped(arg1, arg2) -- Line 1718
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_13_upvr (readonly)
	]]
	for _, v_7 in tbl_3_upvr.ModelNPCs do
		assert(tbl_13_upvr[v_7._Type]).Update(assert(v_7._Model), v_7, arg1, arg2)
	end
end
return module_14_upvr