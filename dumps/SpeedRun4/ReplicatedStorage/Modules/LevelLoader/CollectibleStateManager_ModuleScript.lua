-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:06
-- Luau version 6, Types version 3
-- Time taken: 0.007364 seconds

local module_5_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_5 = require(Modules:WaitForChild("ClientData"))
local module_4_upvr = require(Modules:WaitForChild("Transparency"))
local module_3_upvr = require(Modules:WaitForChild("Tweens"))
local module_2_upvr = require(Modules:WaitForChild("Utility"))
local LevelLoader = script:FindFirstAncestor("LevelLoader")
local module_upvr = require(LevelLoader:WaitForChild("DimensionManager"))
local _ = ReplicatedStorage:WaitForChild("Remotes")
module_5_upvr.CollectibleDecoration = table.freeze({
	None = 1;
	GlowSparks = 2;
})
;({}).CollectibleState_ByPendingResponse = {}
local tbl_upvr_2 = {
	ClaimDebounce = 1;
	TweenDuration = 3.3333333333333335;
	TweenOffset = CFrame.new(0, 20, 0);
	SpinSpeedIdle = 2.0943951023931953;
	SpinSpeedClaim = 20.943951023931955;
}
local function _(arg1, arg2) -- Line 86, Named "ApplyModel"
	local clone_3 = arg2:Clone()
	clone_3:PivotTo(arg1.Object:GetPivot())
	clone_3.Parent = arg1.Object
	arg1.CosmeticModel = clone_3
end
local tbl_upvr = {
	[module_upvr_3.CollectibleType.Star] = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Collectibles"):WaitForChild("Star");
}
local tbl_2_upvr = {
	[module_upvr_3.CollectibleType.Unique] = function(arg1) -- Line 107
		--[[ Upvalues[1]:
			[1]: module_upvr_5 (readonly)
		]]
		local var18 = module_upvr_5.UniqueCollectibleDetails_ById[arg1.Identifiers[1]]
		if var18 and var18.Model then
			local clone = var18.Model:Clone()
			clone:PivotTo(arg1.Object:GetPivot())
			clone.Parent = arg1.Object
			arg1.CosmeticModel = clone
		end
	end;
}
function module_5_upvr.ApplyCosmeticModel(arg1) -- Line 123
	--[[ Upvalues[3]:
		[1]: module_4_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
	]]
	if arg1.CosmeticModel then
		arg1.CosmeticModel:Destroy()
		if arg1.FadeState then
			module_4_upvr.Remove(arg1.FadeState.OpacitiesCache, arg1.CosmeticModel)
		end
		arg1.CosmeticModel = nil
	end
	local var20 = tbl_upvr[arg1.Type]
	if var20 then
		local clone_2 = var20:Clone()
		clone_2:PivotTo(arg1.Object:GetPivot())
		clone_2.Parent = arg1.Object
		arg1.CosmeticModel = clone_2
	end
	local var22 = tbl_2_upvr[arg1.Type]
	if var22 then
		var22(arg1)
	end
	if arg1.CosmeticModel and arg1.FadeState then
		module_4_upvr.Add(arg1.FadeState.OpacitiesCache, arg1.CosmeticModel)
	end
end
local module_upvr_4 = require(LevelLoader:WaitForChild("CollectibleStateCommon"))
function module_5_upvr.Create(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 158
	--[[ Upvalues[4]:
		[1]: module_upvr_4 (readonly)
		[2]: module_2_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	local var24 = module_upvr_4.CollectibleRadius_ByCollectibleType[arg1]
	local Model = Instance.new("Model")
	local tbl = {
		Anchored = true;
		CanCollide = false;
		CanTouch = true;
		CanQuery = true;
		CastShadow = false;
	}
	tbl.Position = arg5
	tbl.Shape = Enum.PartType.Ball
	tbl.Size = (Vector3.new(1, 1, 1)) * (2 * var24)
	tbl.Transparency = 1
	tbl.Parent = Model
	Model.PrimaryPart = module_2_upvr.I("Part", tbl)
	Model.Parent = arg6
	local any_GetPivot_result1 = Model:GetPivot()
	local module = {
		_CanClaimAt = 0;
		_Connected = false;
		_Connections = {};
		_Decorations = {};
	}
	module.Identifiers = arg2
	module.Type = arg1
	module.Active = arg4.Active
	module.Collectable = false
	module.Collected = false
	module.CollectibleDecoration = module_5_upvr.CollectibleDecoration.None
	module.LevelAssetState = arg4
	module.LevelData = arg3
	module.Object = Model
	module.OriginalPivot = module_upvr.CFrameToDimensionSpace(arg4, any_GetPivot_result1)
	module.Position = any_GetPivot_result1.Position
	module.Radius = var24
	module.Rotation = (-math.pi*2) * math.random()
	module_5_upvr.ApplyCosmeticModel(module)
	module_5_upvr.DetermineCollectability(module)
	return module
end
function module_5_upvr.Destroy(arg1) -- Line 224
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	arg1.Active = false
	module_5_upvr.SetCollectibleDecoration(arg1, module_5_upvr.CollectibleDecoration.None)
	arg1.Collectable = false
	arg1.FadeState = nil
	if arg1.CosmeticModel then
		arg1.CosmeticModel:Destroy()
		arg1.CosmeticModel = nil
	end
	arg1.Object:Destroy()
end
local tbl_upvr_3 = {}
tbl_2_upvr = module_upvr_3.CollectibleType
tbl_upvr = tbl_2_upvr.Star
tbl_2_upvr = {}
local var30 = tbl_2_upvr
var30.Global = false
var30.Properties = {
	SoundId = "rbxassetid://138724260";
	Volume = 1;
}
tbl_upvr_3[tbl_upvr] = var30
var30 = module_upvr_3.CollectibleType
tbl_upvr = var30.Unique
var30 = {}
local var47 = var30
var47.Global = true
var47.Properties = {
	SoundId = "rbxassetid://16945092579";
	Volume = 0.51;
}
tbl_upvr_3[tbl_upvr] = var47
local module_upvr_2 = require(Modules:WaitForChild("Audio"))
function tbl_upvr(arg1) -- Line 307, Named "Claim"
	--[[ Upvalues[3]:
		[1]: module_5_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	arg1.Collected = true
	module_5_upvr.Fade(arg1)
	local var35 = tbl_upvr_3
	local var36 = var35[arg1.Type]
	if var36.Global then
		var35 = nil
	else
		var35 = arg1.Object.PrimaryPart
	end
	module_upvr_2.SFX.CreateAndPlay(var36.Properties, var35)
end
module_5_upvr.Claim = tbl_upvr
tbl_upvr_3 = {}
local Fade_upvr = tbl_upvr_3
var47 = module_upvr_3.CollectibleType
tbl_upvr = var47.Star
local module_6_upvr = require(Modules:WaitForChild("Worlds"))
function var47(arg1) -- Line 347
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	return not module_6_upvr.StarOwned(arg1.LevelData, arg1.Id)
end
Fade_upvr[tbl_upvr] = var47
var47 = module_upvr_3.CollectibleType
tbl_upvr = var47.Unique
function var47(arg1) -- Line 357
	--[[ Upvalues[1]:
		[1]: module_upvr_5 (readonly)
	]]
	local var41 = false
	local var42 = module_upvr_5.UniqueCollectibleDetails_ById[arg1.Identifiers[1]]
	if var42 then
		if var42.Eligible ~= true then
			var41 = false
		else
			var41 = true
		end
	end
	return var41
end
Fade_upvr[tbl_upvr] = var47
function tbl_upvr(arg1) -- Line 376, Named "DetermineCollectability"
	--[[ Upvalues[1]:
		[1]: Fade_upvr (readonly)
	]]
	if arg1.Collected then
		arg1.Collectable = false
	else
		arg1.Collectable = Fade_upvr[arg1.Type](arg1)
	end
end
module_5_upvr.DetermineCollectability = tbl_upvr
function Fade_upvr(arg1) -- Line 389, Named "Fade"
	--[[ Upvalues[3]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: module_4_upvr (readonly)
	]]
	if not arg1.FadeState then
		local any_new_result1 = module_3_upvr.new(0, tbl_upvr_2.TweenDuration)
		module_3_upvr.Begin(any_new_result1, os.clock(), 1)
		arg1.FadeState = {
			OpacitiesCache = module_4_upvr.Create(arg1.Object);
			Tween = any_new_result1;
		}
	end
end
module_5_upvr.Fade = Fade_upvr
Fade_upvr = {}
local Update_upvr = Fade_upvr
var47 = module_5_upvr.CollectibleDecoration
tbl_upvr = var47.None
function var47(arg1) -- Line 410
end
Update_upvr[tbl_upvr] = var47
var47 = module_5_upvr.CollectibleDecoration
tbl_upvr = var47.GlowSparks
function var47(arg1) -- Line 415
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local PrimaryPart = arg1.Object.PrimaryPart
	arg1._Decorations[#arg1._Decorations + 1] = module_2_upvr.I("ParticleEmitter", {
		Acceleration = Vector3.new(0, 0, 0);
		Brightness = 1;
		Color = ColorSequence.new(Color3.fromRGB(255, 255, 255));
		Drag = 0;
		EmissionDirection = Enum.NormalId.Top;
		Lifetime = NumberRange.new(5, 10);
		LightEmission = 0;
		LightInfluence = 1;
		LockedToPart = true;
		Orientation = Enum.ParticleOrientation.FacingCamera;
		Rate = 4.4;
		Rotation = NumberRange.new(0);
		RotSpeed = NumberRange.new(0);
		Shape = Enum.ParticleEmitterShape.Box;
		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
		Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2.5, 0), NumberSequenceKeypoint.new(0.5, 5.5625, 0), NumberSequenceKeypoint.new(1, 3, 0)});
		Speed = NumberRange.new(0);
		SpreadAngle = Vector2.zero;
		Squash = NumberSequence.new(0);
		Texture = "rbxassetid://75202463";
		TimeScale = 1;
		Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.232095, 0.9125, 0), NumberSequenceKeypoint.new(0.748011, 0.93125, 0), NumberSequenceKeypoint.new(1, 1, 0)});
		VelocityInheritance = 0;
		WindAffectsDrag = false;
		ZOffset = -2;
		Parent = PrimaryPart;
	})
	arg1._Decorations[#arg1._Decorations + 1] = module_2_upvr.I("ParticleEmitter", {
		Acceleration = Vector3.new(0, 0, 0);
		Brightness = 1;
		Color = ColorSequence.new(Color3.fromRGB(255, 255, 255));
		Drag = 0;
		EmissionDirection = Enum.NormalId.Top;
		Lifetime = NumberRange.new(0.9);
		LightEmission = 0;
		LightInfluence = 0;
		LockedToPart = false;
		Orientation = Enum.ParticleOrientation.FacingCamera;
		Rate = 13;
		Rotation = NumberRange.new(0);
		RotSpeed = NumberRange.new(0);
		Shape = Enum.ParticleEmitterShape.Box;
		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
		Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.675, 0), NumberSequenceKeypoint.new(0.103325, 1.375, 0.45), NumberSequenceKeypoint.new(1, 0, 0)});
		Speed = NumberRange.new(3.5);
		SpreadAngle = Vector2.new(360, -360);
		Squash = NumberSequence.new(0);
		Texture = "http://www.roblox.com/asset/?id=271370648";
		TimeScale = 1;
		Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.1, 0.25, 0), NumberSequenceKeypoint.new(0.199695, 0, 0), NumberSequenceKeypoint.new(0.5, 0, 0), NumberSequenceKeypoint.new(0.75, 0.35, 0), NumberSequenceKeypoint.new(1, 1, 0)});
		VelocityInheritance = 0;
		WindAffectsDrag = false;
		ZOffset = -1.1;
		Parent = PrimaryPart;
	})
end
Update_upvr[tbl_upvr] = var47
function tbl_upvr(arg1, arg2) -- Line 506, Named "SetCollectibleDecoration"
	--[[ Upvalues[3]:
		[1]: Update_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: module_4_upvr (readonly)
	]]
	if arg1.CollectibleDecoration ~= arg2 then
		local var61 = Update_upvr[arg2]
		if not var61 then
			error(module_upvr_3.FormatOutput("Received invalid CollectibleDecoration '%*'", "CollectibleStateManager", nil, arg2), 2)
		end
		arg1.CollectibleDecoration = arg2
		if arg1.FadeState then
			for _, v in ipairs(arg1._Decorations) do
				module_4_upvr.Remove(arg1.FadeState.OpacitiesCache, v)
			end
		end
		for _, v_2 in ipairs(arg1._Decorations) do
			v_2:Destroy()
		end
		table.clear(arg1._Decorations)
		var61(arg1)
		if arg1.FadeState then
			for _, v_3 in ipairs(arg1._Decorations) do
				module_4_upvr.Add(arg1.FadeState.OpacitiesCache, v_3)
			end
		end
	end
end
module_5_upvr.SetCollectibleDecoration = tbl_upvr
function Update_upvr(arg1, arg2, arg3) -- Line 547, Named "Update"
	--[[ Upvalues[4]:
		[1]: module_3_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: module_upvr (readonly)
	]]
	local var71 = false
	local OriginalPivot = arg1.OriginalPivot
	if arg1.FadeState then
		local Tween = arg1.FadeState.Tween
		module_3_upvr.Update(Tween, arg3)
		if not Tween.Completed then
			module_4_upvr.Apply(arg1.FadeState.OpacitiesCache, Tween.Value)
			OriginalPivot *= CFrame.identity:Lerp(tbl_upvr_2.TweenOffset, Tween.Value)
		else
			var71 = true
			local var74
		end
	end
	if not var71 then
		if arg1.Collected then
			var74 = tbl_upvr_2.SpinSpeedClaim
		else
			var74 = tbl_upvr_2.SpinSpeedIdle
		end
		var74 = (arg1.Rotation + var74 * arg2) % (-math.pi*2)
		arg1.Rotation = var74
		var74 = module_upvr.CFrameToDimensionSpace(arg1.LevelAssetState, OriginalPivot * CFrame.Angles(0, arg1.Rotation, 0))
		arg1.Object:PivotTo(var74)
		arg1.Position = var74.Position
	end
	return var71
end
module_5_upvr.Update = Update_upvr
return module_5_upvr