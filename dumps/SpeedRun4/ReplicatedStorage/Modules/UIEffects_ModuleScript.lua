-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:52
-- Luau version 6, Types version 3
-- Time taken: 0.028238 seconds

local module_13_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_6_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_5_upvr = require(Modules:WaitForChild("Audio"))
local module_8_upvr = require(Modules:WaitForChild("ClientData"))
local module_9_upvr = require(Modules:WaitForChild("Transparency"))
local module_2_upvr = require(Modules:WaitForChild("Tweens"))
local module_3_upvr = require(Modules:WaitForChild("UIShared"))
local module_upvr = require(Modules:WaitForChild("Utility"))
local tbl_7_upvr = {
	AttachmentTrails = {};
	HealthBars = {};
	UIFireworks = {};
	GlowChargesPendingCleanup = {};
	UIParticles = {};
	UIParticlesScreenGui = nil;
	VoucherTrails = {};
}
local function _(arg1) -- Line 52, Named "PositionObjectCreate"
	return {
		Position = arg1 or Vector3.new(0, 0, 0);
	}
end
module_13_upvr.PositionObjects = {
	Character = {
		Position = Vector3.new(0, 0, 0);
	};
}
module_13_upvr.ArrowPopup = {}
local vector2_upvr = Vector2.new(512, 256)
local tbl_6_upvr = {
	[true] = {
		ImageRectOffset = vector2_upvr * Vector2.new(1, 0);
		ImageRectSize = vector2_upvr * Vector2.new(-1, 1);
	};
	[false] = {
		ImageRectOffset = Vector2.zero;
		ImageRectSize = vector2_upvr;
	};
}
local function Create(arg1, arg2, arg3, arg4) -- Line 129
	--[[ Upvalues[6]:
		[1]: module_2_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: vector2_upvr (readonly)
		[5]: module_3_upvr (readonly)
		[6]: module_9_upvr (readonly)
	]]
	local module_7 = {
		_ArrowAbove = false;
		_ArrowLeft = false;
		_ArrowPosY = 0;
		_Cycle = 0;
		PosX = 0;
		PosY = 0;
		SizeX = 0;
		SizeY = 0;
		TargetX = arg3 or 0;
		TargetY = arg4 or 0;
		Text = arg2 or "";
		TextSizeXEm = 14;
		TextSizeYEm = 1.25;
		FadeTween = module_2_upvr.new(1, 0.375, Enum.EasingStyle.Quad);
	}
	local tbl_11 = {
		BackgroundColor3 = module_6_upvr.BackgroundColor1;
		BackgroundTransparency = module_6_upvr.BackgroundTransparency1;
	}
	tbl_11.Parent = arg1
	module_7.Frame = module_upvr.I("Frame", tbl_11)
	module_7.Corner = module_upvr.I("UICorner", {
		Parent = module_7.Frame;
	})
	local tbl_15 = {
		BackgroundTransparency = 1;
		ImageRectSize = vector2_upvr;
		ScaleType = Enum.ScaleType.Stretch;
	}
	tbl_15.Parent = arg1
	module_7.Arrow = module_upvr.I("ImageLabel", tbl_15)
	module_7.Gradient = module_upvr.I("UIGradient", {
		Color = ColorSequence.new({ColorSequenceKeypoint.new(0, module_6_upvr.ArrowColor2), ColorSequenceKeypoint.new(0.5, module_6_upvr.ArrowColor1), ColorSequenceKeypoint.new(1, module_6_upvr.ArrowColor2)});
		Rotation = 10;
		Parent = module_7.Arrow;
	})
	local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2 = module_3_upvr.TextBoundsLabelCreate(module_7.Frame, module_7.Text)
	module_7.Label = any_TextBoundsLabelCreate_result1
	module_7.Bounds = any_TextBoundsLabelCreate_result2
	module_7.CachedOpacities = module_9_upvr.Create(module_7.Frame)
	module_9_upvr.Add(module_7.CachedOpacities, module_7.Arrow)
	module_9_upvr.Apply(module_7.CachedOpacities, module_7.FadeTween.Value)
	return module_7
end
module_13_upvr.ArrowPopup.Create = Create
local function Destroy(arg1) -- Line 199
	arg1.Frame:Destroy()
	arg1.Label:Destroy()
end
module_13_upvr.ArrowPopup.Destroy = Destroy
local function Update(arg1, arg2, arg3) -- Line 207
	--[[ Upvalues[6]:
		[1]: module_3_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: tbl_6_upvr (readonly)
		[5]: module_2_upvr (readonly)
		[6]: module_9_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = module_3_upvr.EmSize * arg1.TextSizeXEm // 1
	local var36
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 23. Error Block 2 start (CF ANALYSIS FAILED)
	var36 = module_3_upvr.ViewportSizeDirty
	-- KONSTANTERROR: [29] 23. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 26. Error Block 3 start (CF ANALYSIS FAILED)
	var36 = true
	-- KONSTANTERROR: [33] 26. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 30. Error Block 57 start (CF ANALYSIS FAILED)
	if arg1.TargetY == arg1._LastTargetY then
		var36 = false
	else
		var36 = true
	end
	-- KONSTANTERROR: [40] 30. Error Block 57 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 35. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 35. Error Block 7 end (CF ANALYSIS FAILED)
end
module_13_upvr.ArrowPopup.Update = Update
function vector2_upvr(arg1, arg2) -- Line 353, Named "CreateUI"
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: module_13_upvr (readonly)
	]]
	local module_14 = {
		ScreenGui = module_upvr.I("ScreenGui", module_3_upvr.Properties.ScreenGui, {
			Name = arg2 or "ArrowUI";
			DisplayOrder = module_6_upvr.DisplayOrder_UIEffects;
			Parent = module_3_upvr.PlayerGui;
		});
		ArrowPopup = module_13_upvr.ArrowPopup.Create(module_14.ScreenGui, arg1);
	}
	return module_14
end
tbl_6_upvr = module_13_upvr.ArrowPopup
tbl_6_upvr.CreateUI = vector2_upvr
function vector2_upvr(arg1) -- Line 375, Named "DestroyUI"
	--[[ Upvalues[1]:
		[1]: module_13_upvr (readonly)
	]]
	module_13_upvr.ArrowPopup.Destroy(arg1.ArrowPopup)
	arg1.ScreenGui:Destroy()
end
tbl_6_upvr = module_13_upvr.ArrowPopup
tbl_6_upvr.DestroyUI = vector2_upvr
vector2_upvr = {}
module_13_upvr.AttachmentTrail = vector2_upvr
function vector2_upvr(arg1) -- Line 422, Named "AttachmentTrailDestroy_Internal"
	arg1.Attachment:Destroy()
end
tbl_6_upvr = {}
local Update = tbl_6_upvr
Update.Lifetime = 5
Update.Width = 1
module_13_upvr.AttachmentTrail.Defaults = Update
local tbl_16_upvr = {
	Brightness = 1;
	Color = ColorSequence.new(Color3.new(1, 1, 1));
	FaceCamera = true;
	Lifetime = 0.25;
	LightEmission = 1;
	LightInfluence = 0;
	MaxLength = 0;
	MinLength = 0.1;
	TextureMode = Enum.TextureMode.Stretch;
	Transparency = NumberSequence.new(0.5, 1);
	WidthScale = NumberSequence.new(1, 0);
}
local function Create(arg1, arg2) -- Line 452
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: Update (readonly)
		[3]: tbl_16_upvr (readonly)
		[4]: tbl_7_upvr (readonly)
	]]
	local module_4 = {
		Completed = false;
		Target = arg1.Target;
		Origin = arg1.Origin;
	}
	if arg1.Control then
		module_4.Control = arg1.Control
	else
		module_4.Control = module_4.Origin:Lerp(module_4.Target.Position, 0.5)
	end
	local any_GetNumber_result1_6 = module_upvr.GetNumber(arg1.Width)
	if not any_GetNumber_result1_6 then
		any_GetNumber_result1_6 = Update.Width
	end
	local var43 = (Vector3.new(0, 1, 0)) * (any_GetNumber_result1_6 * 0.5)
	module_4.Attachment = module_upvr.I("Attachment", {
		Position = module_4.Origin;
	})
	module_4.AnchorBottom = module_upvr.I("Attachment", {
		Position = -var43;
		Parent = module_4.Attachment;
	})
	module_4.AnchorTop = module_upvr.I("Attachment", {
		Position = var43;
		Parent = module_4.Attachment;
	})
	module_4.Trail = module_upvr.I("Trail", tbl_16_upvr, arg1.TrailProps, {
		Attachment0 = module_4.AnchorTop;
		Attachment1 = module_4.AnchorBottom;
		Parent = module_4.Attachment;
	})
	local any_GetNumber_result1_8 = module_upvr.GetNumber(arg1.Lifetime)
	if not any_GetNumber_result1_8 then
		any_GetNumber_result1_8 = Update.Lifetime
	end
	module_4.StartedAt = arg2
	module_4.ArrivesAt = arg2 + any_GetNumber_result1_8
	module_4.ExpiresAt = arg2 + any_GetNumber_result1_8 + module_4.Trail.Lifetime
	module_4.Attachment.Parent = module_upvr.Terrain
	tbl_7_upvr.AttachmentTrails[#tbl_7_upvr.AttachmentTrails + 1] = module_4
	return module_4
end
module_13_upvr.AttachmentTrail.Create = Create
local function Destroy(arg1) -- Line 519
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	arg1.Attachment:Destroy()
	local table_find_result1_6 = table.find(tbl_7_upvr.AttachmentTrails, arg1)
	if table_find_result1_6 then
		table.remove(tbl_7_upvr.AttachmentTrails, table_find_result1_6)
	end
end
module_13_upvr.AttachmentTrail.Destroy = Destroy
Update = {}
module_13_upvr.EnergyRing = Update
function Update(arg1) -- Line 567, Named "Create"
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_6_upvr (readonly)
	]]
	return {
		Ring = module_upvr.I("ImageLabel", module_3_upvr.Properties.Image, module_3_upvr.Properties.Centered, {
			Image = module_6_upvr.EnergyRing_Bloom_513_256;
			ImageColor3 = module_6_upvr.EnergyInnerRingBaseColor;
			ImageTransparency = 1;
			ScaleType = Enum.ScaleType.Slice;
			Size = UDim2.fromScale(1, 1);
			SliceCenter = Rect.new(Vector2.one * 256, Vector2.one * 257);
			ZIndex = -100000;
		}, arg1);
		Intensity = 0;
		DecayRate = 1;
	}
end
tbl_16_upvr = module_13_upvr.EnergyRing
tbl_16_upvr.Create = Update
function Update(arg1) -- Line 620, Named "Destroy"
	arg1.Ring:Destroy()
end
tbl_16_upvr = module_13_upvr.EnergyRing
tbl_16_upvr.Destroy = Update
function Update(arg1, arg2, arg3) -- Line 627, Named "Resize"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var52 = arg3 or 0
	local var53
	if arg1._LastCornerRadius == arg2 then
		var53 = false
	else
		var53 = true
	end
	if not var53 then
		if arg1._LastExpandRadius == var52 then
		else
		end
	end
	if var53 then
		arg1._LastCornerRadius = arg2
		arg1.Ring.SliceScale = arg2 / 128
	end
	if true then
		arg1._LastExpandRadius = var52
		local var54 = 2 * (arg2 + var52)
		arg1.Ring.Size = UDim2.new(1, var54, 1, var54)
	end
end
tbl_16_upvr = module_13_upvr.EnergyRing
tbl_16_upvr.Resize = Update
function Update(arg1, arg2) -- Line 673
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if arg1.DecayRate ~= 0 then
		arg1.Intensity = math.max(arg1.Intensity - arg1.DecayRate * arg2, 0)
	end
	if arg1.Intensity ~= arg1._LastIntensity then
		local minimum_3 = math.min(arg1.Intensity, 1)
		arg1.Ring.ImageTransparency = 1 - minimum_3
		if 0 < minimum_3 then
			arg1.Ring.ImageColor3 = module_6_upvr.EnergyInnerRingBaseColor:Lerp(module_6_upvr.EnergyInnerRingIntenseColor, minimum_3)
		end
		arg1._LastIntensity = arg1.Intensity
	end
end
tbl_16_upvr = module_13_upvr.EnergyRing
tbl_16_upvr.Update = Update
Update = {}
module_13_upvr.HealthBar = Update
Update = module_13_upvr.HealthBar
tbl_16_upvr = {}
local var56 = tbl_16_upvr
var56.AspectRatio = 4
var56.BorderScaleY = 0.2
var56.SizeYEm = 0.5
var56.SizeYStuds = 1
Update.Dims = var56
Update = module_13_upvr.HealthBar
var56 = {}
local var57_upvr = var56
var57_upvr.Commas = true
var57_upvr.AbbreviateAt = 100000
Update.FormatNumberOptions = var57_upvr
Update = UDim.new
var57_upvr = 0.25
Update = Update(var57_upvr, 0)
local UIFireworksCleanUp_upvr = Update
var57_upvr = UDim.new(UIFireworksCleanUp_upvr.Scale * (1 + module_13_upvr.HealthBar.Dims.BorderScaleY), UIFireworksCleanUp_upvr.Offset * (1 + module_13_upvr.HealthBar.Dims.BorderScaleY))
local function Create(arg1, arg2, arg3) -- Line 757
	--[[ Upvalues[8]:
		[1]: module_13_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: module_3_upvr (readonly)
		[5]: module_6_upvr (readonly)
		[6]: var57_upvr (readonly)
		[7]: UIFireworksCleanUp_upvr (readonly)
		[8]: tbl_7_upvr (readonly)
	]]
	local var59 = module_13_upvr
	local Dims = var59.HealthBar.Dims
	local var61 = arg2 or 100
	if arg1 then
		var59 = math.min(arg1, var61)
	else
		var59 = var61
	end
	local module_10 = {
		Dirty = true;
		Health = var59;
		MaxHealth = var61;
		HealthTween = module_2_upvr.new(var59 / var61, 0.25, Enum.EasingStyle.Cubic);
	}
	local tbl_14 = {
		Name = "HealthBar";
		Active = false;
	}
	tbl_14.Adornee = arg3
	tbl_14.AlwaysOnTop = true
	tbl_14.ClipsDescendants = false
	tbl_14.ExtentsOffsetWorldSpace = Vector3.new(-0, -1, -0)
	tbl_14.MaxDistance = math.huge
	tbl_14.SizeOffset = -Vector2.yAxis
	tbl_14.Parent = module_3_upvr.PlayerGui
	module_10.BillboardGui = module_upvr.I("BillboardGui", module_3_upvr.Properties.LayerCollector, tbl_14)
	module_upvr.I("UICorner", {
		CornerRadius = var57_upvr;
		Parent = module_upvr.I("Frame", module_3_upvr.Properties.Centered, {
			BackgroundColor3 = module_6_upvr.TextStrokeColor1;
			Size = UDim2.fromScale(1 + Dims.BorderScaleY / Dims.AspectRatio, 1 + Dims.BorderScaleY);
			ZIndex = 1;
			Parent = module_10.BillboardGui;
		});
	})
	local any_I_result1 = module_upvr.I("Frame", module_3_upvr.Properties.Centered, {
		BackgroundColor3 = module_6_upvr.HealthEmptyColor;
		Size = UDim2.fromScale(1, 1);
		ZIndex = 2;
		Parent = module_10.BillboardGui;
	})
	module_10.ClippingFrame = module_upvr.I("Frame", {
		ClipsDescendants = true;
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(module_10.HealthTween.Value, 1);
		Parent = any_I_result1;
	})
	module_10.FillFrame = module_upvr.I("Frame", {
		BackgroundColor3 = module_6_upvr.HealthFillColor;
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		Size = UDim2.fromScale(Dims.AspectRatio, 1);
		Parent = module_10.ClippingFrame;
	})
	module_upvr.I("UICorner", {
		CornerRadius = UIFireworksCleanUp_upvr;
		Parent = any_I_result1;
	}):Clone().Parent = module_10.FillFrame
	module_upvr.I("UIGradient", {
		Color = ColorSequence.new(module_6_upvr.White, module_6_upvr.Gray50);
		Rotation = 90;
		Parent = any_I_result1;
	}):Clone().Parent = module_10.FillFrame
	module_10.HealthLabel = module_upvr.I("TextLabel", module_3_upvr.Properties.Text_Scaled, {
		AnchorPoint = Vector2.one * 0.5;
		FontFace = module_6_upvr.FontFaceNormal;
		Position = UDim2.fromScale(0.5, 0.525);
		Size = UDim2.fromScale(0.9, 0.9);
		TextColor3 = module_6_upvr.TextColor1;
		ZIndex = 3;
		Parent = module_10.BillboardGui;
	})
	module_10.HealthStroke = module_upvr.I("UIStroke", module_3_upvr.Properties.StrokeText, {
		Color = module_6_upvr.TextStrokeColor1;
		Parent = module_10.HealthLabel;
	})
	tbl_7_upvr.HealthBars[#tbl_7_upvr.HealthBars + 1] = module_10
	return module_10
end
module_13_upvr.HealthBar.Create = Create
local function Destroy(arg1) -- Line 869
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	local table_find_result1_3 = table.find(tbl_7_upvr.HealthBars, arg1)
	if table_find_result1_3 then
		table.remove(tbl_7_upvr.HealthBars, table_find_result1_3)
	end
	arg1.BillboardGui:Destroy()
end
module_13_upvr.HealthBar.Destroy = Destroy
module_13_upvr.HealthBar.Update = function(arg1, arg2, arg3) -- Line 881, Named "Update"
	if arg3 and arg1.MaxHealth ~= arg3 then
		arg1.Dirty = true
		arg1.MaxHealth = arg3
	end
	if arg2 then
		local minimum_2 = math.min(arg2, arg1.MaxHealth)
		if arg1.Health ~= minimum_2 then
			arg1.Dirty = true
			arg1.Health = minimum_2
		end
	end
end
UIFireworksCleanUp_upvr = {}
module_13_upvr.UIFireworks = UIFireworksCleanUp_upvr
UIFireworksCleanUp_upvr = module_13_upvr.UIFireworks
var57_upvr = {}
UIFireworksCleanUp_upvr.EmitterProps = var57_upvr
function UIFireworksCleanUp_upvr(arg1, arg2) -- Line 943, Named "UIFireworksCleanUp"
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	if arg2 then
		arg1.Part:Destroy()
	else
		arg1.Part.Parent = nil
	end
	local table_find_result1_9 = table.find(tbl_7_upvr.UIFireworks, arg1)
	if table_find_result1_9 then
		table.remove(tbl_7_upvr.UIFireworks, table_find_result1_9)
	end
end
var57_upvr = {}
local UIParticleDestroy_Internal_upvr = var57_upvr
UIParticleDestroy_Internal_upvr.Anchored = true
UIParticleDestroy_Internal_upvr.CanCollide = false
UIParticleDestroy_Internal_upvr.CanQuery = false
UIParticleDestroy_Internal_upvr.CanTouch = false
UIParticleDestroy_Internal_upvr.CastShadow = false
UIParticleDestroy_Internal_upvr.Transparency = 1
local tbl_5_upvr = {
	Acceleration = Vector3.new(0, 0, 0);
	Brightness = 21;
	Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.160622, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.28152, Color3.fromRGB(255, 170, 0)), ColorSequenceKeypoint.new(0.428325, Color3.fromRGB(32, 255, 236)), ColorSequenceKeypoint.new(0.571675, Color3.fromRGB(255, 55, 55)), ColorSequenceKeypoint.new(0.728843, Color3.fromRGB(60, 118, 255)), ColorSequenceKeypoint.new(0.853195, Color3.fromRGB(88, 252, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(136, 0, 255))});
	Drag = 4;
	EmissionDirection = Enum.NormalId.Top;
	Enabled = false;
	Lifetime = NumberRange.new(2, 4.9);
	LightEmission = 2;
	LightInfluence = 0;
	LockedToPart = true;
	Rate = 5.1;
	RotSpeed = NumberRange.new(0);
	Shape = Enum.ParticleEmitterShape.Box;
	ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
	ShapeStyle = Enum.ParticleEmitterShapeStyle.Surface;
	Size = module_upvr.NumberSequenceNormalize(NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(0.253, 0.1), NumberSequenceKeypoint.new(0.5635, 1.875), NumberSequenceKeypoint.new(0.7831, 2.625), NumberSequenceKeypoint.new(1, 3.0625)}));
	Speed = NumberRange.new(2.5, 10);
	SpreadAngle = Vector2.new(0, 30);
	TimeScale = 0.99;
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.06892, 0), NumberSequenceKeypoint.new(0.423, 0), NumberSequenceKeypoint.new(0.7412, 0.375), NumberSequenceKeypoint.new(1, 1)});
	VelocityInheritance = 0;
	WindAffectsDrag = false;
	ZOffset = 0;
}
local tbl_4 = {{
	Rotation = NumberRange.new(0);
	Texture = "rbxassetid://14365285883";
}, {
	Rotation = NumberRange.new(0, 360);
	Texture = "rbxassetid://576952556";
}}
local Destroy_upvw
for i, v in Destroy_upvw do
	module_13_upvr.UIFireworks.EmitterProps[i] = module_upvr.PropsMerge(tbl_5_upvr, v)
end
Destroy_upvw = module_upvr.TableFreezeAll
Destroy_upvw(module_13_upvr.UIFireworks.EmitterProps)
Destroy_upvw = tbl_5_upvr.Lifetime.Max
local function SetActive(arg1, arg2) -- Line 1039
	--[[ Upvalues[3]:
		[1]: tbl_7_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: Destroy_upvw (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 4 end (CF ANALYSIS FAILED)
end
module_13_upvr.UIFireworks.SetActive = SetActive
local tbl_8_upvr = {
	SoundId = "rbxassetid://70762704708412";
	TimePosition = 0.169;
	Volume = 1.26;
}
local function Create() -- Line 1083
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: UIParticleDestroy_Internal_upvr (readonly)
		[3]: module_13_upvr (readonly)
		[4]: tbl_5_upvr (readonly)
	]]
	local any_I_result1_5 = module_upvr.I("Part", UIParticleDestroy_Internal_upvr)
	local tbl_10_upvr = {}
	local module_12 = {
		_SoundCallback = function(arg1) -- Line 1089, Named "RemoveSound"
			--[[ Upvalues[1]:
				[1]: tbl_10_upvr (readonly)
			]]
			local table_find_result1 = table.find(tbl_10_upvr, arg1)
			if table_find_result1 then
				table.remove(tbl_10_upvr, table_find_result1)
			end
		end;
		Active = false;
		Destroyed = false;
		ExpiresAt = math.huge;
		AnchorPoint = Vector2.zero;
		PosX = 0;
		PosY = 0;
		SizeParticleEm = 2;
		SizePartX = 0;
		SizePartY = 0;
		Emitters = table.create(#module_13_upvr.UIFireworks.EmitterProps);
		Part = any_I_result1_5;
		Sounds = tbl_10_upvr;
	}
	for i_2, v_2 in module_13_upvr.UIFireworks.EmitterProps do
		local any_I_result1_4 = module_upvr.I("ParticleEmitter", tbl_5_upvr, v_2)
		any_I_result1_4.Parent = any_I_result1_5
		module_12.Emitters[i_2] = any_I_result1_4
	end
	module_13_upvr.UIFireworks.SetActive(module_12, true)
	return module_12
end
module_13_upvr.UIFireworks.Create = Create
local function Destroy(arg1, arg2) -- Line 1129
	--[[ Upvalues[2]:
		[1]: module_13_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	arg1.Destroyed = true
	module_13_upvr.UIFireworks.SetActive(arg1, false)
	if arg2 then
		arg1.Part:Destroy()
		local table_find_result1_5 = table.find(tbl_7_upvr.UIFireworks, arg1)
		if table_find_result1_5 then
			table.remove(tbl_7_upvr.UIFireworks, table_find_result1_5)
		end
	end
end
module_13_upvr.UIFireworks.Destroy = Destroy
module_13_upvr.UIFireworks.PlaySound = function(arg1) -- Line 1142, Named "PlaySound"
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
	]]
	if not arg1.Active then
	else
		arg1.Sounds[#arg1.Sounds + 1] = module_5_upvr.SFX.CreateAndPlay(tbl_8_upvr, nil, nil, arg1._SoundCallback)
	end
end
module_13_upvr.UIFireworks.FadeSounds = function(arg1, arg2) -- Line 1156, Named "FadeSounds"
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	local var103 = arg2 or 1
	for _, v_3 in arg1.Sounds do
		module_5_upvr.ManagedSound.FadeToVolume(v_3, var103, nil, 0)
	end
end
UIParticleDestroy_Internal_upvr = {}
module_13_upvr.GlowCharge = UIParticleDestroy_Internal_upvr
UIParticleDestroy_Internal_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Attachments"):WaitForChild("GlowCharge")
function tbl_5_upvr(arg1, arg2) -- Line 1214, Named "Create"
	--[[ Upvalues[2]:
		[1]: UIParticleDestroy_Internal_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local clone = UIParticleDestroy_Internal_upvr:Clone()
	local any_I_result1_2 = module_upvr.I("ParticleEmitter", {
		Brightness = 3;
		Color = ColorSequence.new(Color3.fromRGB(0, 47, 255));
		Enabled = false;
		Lifetime = NumberRange.new(0.5);
		LightEmission = 1;
		LightInfluence = 0;
		Rate = 100;
		Rotation = NumberRange.new(0);
		RotSpeed = NumberRange.new(-50, 50);
		Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.25, 13.14), NumberSequenceKeypoint.new(0.5, 22.5), NumberSequenceKeypoint.new(0.75, 28.14), NumberSequenceKeypoint.new(1, 30)});
		Speed = NumberRange.new(0);
		SpreadAngle = Vector2.zero;
		Texture = "rbxassetid://1084955488";
		Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.25, 0.438), NumberSequenceKeypoint.new(0.5, 0.75), NumberSequenceKeypoint.new(0.75, 0.938), NumberSequenceKeypoint.new(1, 1)});
		Parent = clone;
	})
	local module_16 = {
		_CachedLifetimes = {};
		_CachedSizes = {};
		_LongestLifetime = 0;
		Active = true;
		Destroyed = false;
		Detonated = false;
		ExpiresAt = math.huge;
		ChargeSize = 22.337196350097656;
		ExplosionSize = 30;
		LifetimeScale = 1;
		Attachment = clone;
		Emitters = {};
		ExplosionEmitter = any_I_result1_2;
	}
	for _, v_4 in clone:GetDescendants() do
		if v_4:IsA("ParticleEmitter") then
			if v_4 ~= any_I_result1_2 then
				module_16.Emitters[#module_16.Emitters + 1] = v_4
			end
			if arg2 then
				v_4.LockedToPart = true
			end
			module_16._CachedLifetimes[v_4] = v_4.Lifetime
			module_16._CachedSizes[v_4] = v_4.Size
			local Max = v_4.Lifetime.Max
			if module_16._LongestLifetime < Max then
				module_16._LongestLifetime = Max
			end
		end
	end
	if arg1 then
		clone.Parent = arg1
	end
	return module_16
end
module_13_upvr.GlowCharge.Create = tbl_5_upvr
function tbl_5_upvr(arg1, arg2) -- Line 1299, Named "GlowChargeCleanUp"
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local table_find_result1_7 = table.find(tbl_7_upvr.GlowChargesPendingCleanup, arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 3 start (CF ANALYSIS FAILED)
	tbl_7_upvr.GlowChargesPendingCleanup[#tbl_7_upvr.GlowChargesPendingCleanup + 1] = arg1
	do
		return
	end
	-- KONSTANTERROR: [9] 8. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 16. Error Block 7 start (CF ANALYSIS FAILED)
	if table_find_result1_7 then
		table.remove(tbl_7_upvr.GlowChargesPendingCleanup, table_find_result1_7)
	end
	-- KONSTANTERROR: [19] 16. Error Block 7 end (CF ANALYSIS FAILED)
end
local function Destroy(arg1) -- Line 1318
	--[[ Upvalues[2]:
		[1]: module_13_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	arg1.Destroyed = true
	module_13_upvr.GlowCharge.SetActive(arg1, false)
	local table_find_result1_4 = table.find(tbl_7_upvr.GlowChargesPendingCleanup, arg1)
	if table_find_result1_4 then
		table.remove(tbl_7_upvr.GlowChargesPendingCleanup, table_find_result1_4)
	end
	arg1.Attachment:Destroy()
end
Destroy_upvw = module_13_upvr.GlowCharge
Destroy_upvw.Destroy = Destroy
Destroy_upvw = module_13_upvr.GlowCharge
function Destroy_upvw.Detonate(arg1) -- Line 1330
	--[[ Upvalues[2]:
		[1]: module_13_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	if not arg1.Destroyed then
		module_13_upvr.GlowCharge.SetActive(arg1, false)
		arg1.ExplosionEmitter:Emit(10)
		arg1.ExpiresAt = os.clock() + arg1._LongestLifetime * arg1.LifetimeScale
		if not arg1.Detonated then
			arg1.Detonated = true
			if not table.find(tbl_7_upvr.GlowChargesPendingCleanup, arg1) then
				tbl_7_upvr.GlowChargesPendingCleanup[#tbl_7_upvr.GlowChargesPendingCleanup + 1] = arg1
			end
		end
	end
end
Destroy_upvw = module_13_upvr.GlowCharge
function Destroy_upvw.SetActive(arg1, arg2) -- Line 1350
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	if arg2 and arg1.Destroyed then
	elseif arg1.Active ~= arg2 then
		arg1.Active = arg2
		for i_13, v_12 in arg1.Emitters do
			v_12.Enabled = arg2
		end
		if arg2 then
			if arg1.Detonated then
				arg1.Detonated = false
				local table_find_result1_8 = table.find(tbl_7_upvr.GlowChargesPendingCleanup, arg1)
				if table_find_result1_8 then
					i_13 = tbl_7_upvr
					i_13 = table_find_result1_8
					table.remove(i_13.GlowChargesPendingCleanup, i_13)
				end
			end
		end
	end
end
Destroy_upvw = module_13_upvr.GlowCharge
function Destroy_upvw.SetChargeSize(arg1, arg2) -- Line 1376
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg1.ChargeSize ~= arg2 then
		arg1.ChargeSize = arg2
		local var130 = arg2 / 22.337196350097656
		for _, v_5 in arg1.Emitters do
			local var131 = arg1._CachedSizes[v_5]
			if var130 ~= 1 then
				var131 = module_upvr.NumberSequenceScale(var131, var130)
			end
			v_5.Size = var131
		end
	end
end
Destroy_upvw = module_13_upvr.GlowCharge
function Destroy_upvw.SetExplosionSize(arg1, arg2) -- Line 1399
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg1.ExplosionSize ~= arg2 then
		arg1.ExplosionSize = arg2
		local var132 = arg2 / 30
		local var133 = arg1._CachedSizes[arg1.ExplosionEmitter]
		if var132 ~= 1 then
			var133 = module_upvr.NumberSequenceScale(var133, var132)
		end
		arg1.ExplosionEmitter.Size = var133
	end
end
Destroy_upvw = module_13_upvr.GlowCharge
function Destroy_upvw.SetLifetimeScale(arg1, arg2) -- Line 1419
	if arg1.LifetimeScale ~= arg2 then
		for i_6, v_6 in arg1._CachedLifetimes do
			if arg2 ~= 1 then
				v_6 = NumberRange.new(v_6.Min * arg2, v_6.Max * arg2)
			end
			i_6.Lifetime = v_6
		end
	end
end
UIParticleDestroy_Internal_upvr = {}
module_13_upvr.UIParticle = UIParticleDestroy_Internal_upvr
function UIParticleDestroy_Internal_upvr(arg1) -- Line 1495, Named "UIParticleDestroy_Internal"
	arg1.Image:Destroy()
end
function tbl_5_upvr() -- Line 1502, Named "UIParticleCleanUp"
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	if tbl_7_upvr.UIParticlesScreenGui and #tbl_7_upvr.UIParticles == 0 then
		tbl_7_upvr.UIParticlesScreenGui:Destroy()
		tbl_7_upvr.UIParticlesScreenGui = nil
	end
end
local tbl_12_upvw = {}
Destroy_upvw = 0
tbl_12_upvw.AccelerationX = Destroy_upvw
Destroy_upvw = 10
tbl_12_upvw.AccelerationY = Destroy_upvw
Destroy_upvw = 1
tbl_12_upvw.Lifetime = Destroy_upvw
Destroy_upvw = 0
tbl_12_upvw.PosX = Destroy_upvw
Destroy_upvw = 0
tbl_12_upvw.PosY = Destroy_upvw
Destroy_upvw = 0
tbl_12_upvw.RotAcceleration = Destroy_upvw
Destroy_upvw = 0
tbl_12_upvw.Rotation = Destroy_upvw
Destroy_upvw = 0
tbl_12_upvw.RotVelocity = Destroy_upvw
Destroy_upvw = 1
tbl_12_upvw.SizeX = Destroy_upvw
Destroy_upvw = 1
tbl_12_upvw.SizeY = Destroy_upvw
Destroy_upvw = 0
tbl_12_upvw.VelocityX = Destroy_upvw
Destroy_upvw = 0
tbl_12_upvw.VelocityY = Destroy_upvw
Destroy_upvw = module_13_upvr.UIParticle
Destroy_upvw.Defaults = tbl_12_upvw
function Destroy_upvw(arg1, arg2) -- Line 1528, Named "Create"
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: tbl_12_upvw (readonly)
		[3]: tbl_7_upvr (readonly)
		[4]: module_3_upvr (readonly)
		[5]: module_6_upvr (readonly)
	]]
	local module = {}
	local any_GetNumber_result1_11 = module_upvr.GetNumber(arg1.AccelerationX)
	if not any_GetNumber_result1_11 then
		any_GetNumber_result1_11 = tbl_12_upvw.AccelerationX
	end
	module.AccelerationX = any_GetNumber_result1_11
	local any_GetNumber_result1_4 = module_upvr.GetNumber(arg1.AccelerationY)
	if not any_GetNumber_result1_4 then
		any_GetNumber_result1_4 = tbl_12_upvw.AccelerationY
	end
	module.AccelerationY = any_GetNumber_result1_4
	module.CreatedAt = arg2
	local any_GetNumber_result1_2 = module_upvr.GetNumber(arg1.Lifetime)
	if not any_GetNumber_result1_2 then
		any_GetNumber_result1_2 = tbl_12_upvw.Lifetime
	end
	module.ExpiresAt = arg2 + any_GetNumber_result1_2
	local any_GetNumber_result1_14 = module_upvr.GetNumber(arg1.PosX)
	if not any_GetNumber_result1_14 then
		any_GetNumber_result1_14 = tbl_12_upvw.PosX
	end
	module.PosX = any_GetNumber_result1_14
	local any_GetNumber_result1_7 = module_upvr.GetNumber(arg1.PosY)
	if not any_GetNumber_result1_7 then
		any_GetNumber_result1_7 = tbl_12_upvw.PosY
	end
	module.PosY = any_GetNumber_result1_7
	local any_GetNumber_result1_9 = module_upvr.GetNumber(arg1.RotAcceleration)
	if not any_GetNumber_result1_9 then
		any_GetNumber_result1_9 = tbl_12_upvw.RotAcceleration
	end
	module.RotAcceleration = any_GetNumber_result1_9
	local any_GetNumber_result1_12 = module_upvr.GetNumber(arg1.Rotation)
	if not any_GetNumber_result1_12 then
		any_GetNumber_result1_12 = tbl_12_upvw.Rotation
	end
	module.Rotation = any_GetNumber_result1_12 % 360
	local any_GetNumber_result1_5 = module_upvr.GetNumber(arg1.RotVelocity)
	if not any_GetNumber_result1_5 then
		any_GetNumber_result1_5 = tbl_12_upvw.RotVelocity
	end
	module.RotVelocity = any_GetNumber_result1_5
	local any_GetNumber_result1_13 = module_upvr.GetNumber(arg1.VelocityX)
	if not any_GetNumber_result1_13 then
		any_GetNumber_result1_13 = tbl_12_upvw.VelocityX
	end
	module.VelocityX = any_GetNumber_result1_13
	local any_GetNumber_result1_10 = module_upvr.GetNumber(arg1.VelocityY)
	if not any_GetNumber_result1_10 then
		any_GetNumber_result1_10 = tbl_12_upvw.VelocityY
	end
	module.VelocityY = any_GetNumber_result1_10
	module._LastPosX = module.PosX
	module._LastPosY = module.PosY
	module._LastRotation = module.Rotation
	local UIParticlesScreenGui = tbl_7_upvr.UIParticlesScreenGui
	if not UIParticlesScreenGui then
		UIParticlesScreenGui = module_upvr.I("ScreenGui", module_3_upvr.Properties.ScreenGui, {
			Name = "UIEffects_UIParticles";
			DisplayOrder = module_6_upvr.DisplayOrder_UIEffects;
			Parent = module_3_upvr.PlayerGui;
		})
		tbl_7_upvr.UIParticlesScreenGui = UIParticlesScreenGui
	end
	local any_GetNumber_result1_3 = module_upvr.GetNumber(arg1.SizeX)
	if not any_GetNumber_result1_3 then
		any_GetNumber_result1_3 = tbl_12_upvw.SizeX
	end
	local any_GetNumber_result1 = module_upvr.GetNumber(arg1.SizeY)
	if not any_GetNumber_result1 then
		any_GetNumber_result1 = tbl_12_upvw.SizeY
	end
	module.Image = module_upvr.I("ImageLabel", module_3_upvr.Properties.Image, {
		AnchorPoint = Vector2.one * 0.5;
		Position = UDim2.fromOffset(module.PosX, module.PosY);
		Rotation = module.Rotation;
		Size = UDim2.fromOffset(any_GetNumber_result1_3 * module_3_upvr.EmSize, any_GetNumber_result1 * module_3_upvr.EmSize);
		Parent = UIParticlesScreenGui;
	}, arg1.ImageProps)
	tbl_7_upvr.UIParticles[#tbl_7_upvr.UIParticles + 1] = module
	return module
end
tbl_8_upvr = module_13_upvr.UIParticle
tbl_8_upvr.Create = Destroy_upvw
function Destroy_upvw(arg1) -- Line 1583, Named "Destroy"
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	arg1.Image:Destroy()
	local table_find_result1_2 = table.find(tbl_7_upvr.UIParticles, arg1)
	if table_find_result1_2 then
		table.remove(tbl_7_upvr.UIParticles, table_find_result1_2)
	end
	if tbl_7_upvr.UIParticlesScreenGui and #tbl_7_upvr.UIParticles == 0 then
		tbl_7_upvr.UIParticlesScreenGui:Destroy()
		tbl_7_upvr.UIParticlesScreenGui = nil
	end
end
tbl_8_upvr = module_13_upvr.UIParticle
tbl_8_upvr.Destroy = Destroy_upvw
tbl_12_upvw = {}
module_13_upvr.VoucherTrail = tbl_12_upvw
tbl_12_upvw = nil
Destroy_upvw = 0
tbl_8_upvr = {}
local var154_upvr = tbl_8_upvr
local tbl = {
	Brightness = 0.1;
	Color = ColorSequence.new(module_6_upvr.White);
	EmissionDirection = Enum.NormalId.Top;
	Enabled = true;
	FlipbookFramerate = NumberRange.new(10, 20);
	FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8;
	FlipbookMode = Enum.ParticleFlipbookMode.PingPong;
	FlipbookStartRandom = true;
	LightEmission = 0;
	LightInfluence = 0.3;
	Orientation = Enum.ParticleOrientation.FacingCamera;
	Rotation = NumberRange.new(-180, 180);
	RotSpeed = NumberRange.new(60, 240);
	Texture = "http://www.roblox.com/asset/?id=15021071886";
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)});
	ZOffset = 1;
}
var154_upvr.Chase = module_upvr.TableMerge(tbl, {
	Lifetime = NumberRange.new(1.5, 2.5);
	LockedToPart = true;
	Rate = 5;
	Speed = NumberRange.new(3);
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.125, 1.5, 1), NumberSequenceKeypoint.new(1, 1.5, 1)});
	SpreadAngle = Vector2.new(360, 360);
})
var154_upvr.Drop = module_upvr.TableMerge(tbl, {
	Acceleration = Vector3.new(0, -10, 0);
	Lifetime = NumberRange.new(2, 4);
	LockedToPart = false;
	Rate = 2;
	Speed = NumberRange.new(2, 5);
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.125, 1.5, 1), NumberSequenceKeypoint.new(1, 1.5, 1)});
	SpreadAngle = Vector2.new(180, 180);
})
for _, v_7 in var154_upvr do
	if typeof(v_7.Lifetime) == "NumberRange" then
		Destroy_upvw = math.max(Destroy_upvw, v_7.Lifetime.Max)
	end
end
local tbl_3_upvr = {{
	SoundId = "rbxassetid://9113849651";
	Volume = 1;
}, {
	SoundId = "rbxassetid://9113849722";
	Volume = 1;
}, {
	SoundId = "rbxassetid://9113849910";
	Volume = 1;
}}
local NumberRange_new_result1_upvr = NumberRange.new(0.5, 1.25)
local tbl_9_upvr = {
	TrailProps = {};
	Origin = Vector3.new(0, 0, 0);
	Target = module_13_upvr.PositionObjects.Character;
	Lifetime = NumberRange_new_result1_upvr;
	Width = 0.5;
}
module_13_upvr.VoucherTrail.Generate_FromVouchers = function(arg1, arg2, arg3) -- Line 1765, Named "Generate_FromVouchers"
	--[[ Upvalues[7]:
		[1]: NumberRange_new_result1_upvr (readonly)
		[2]: tbl_9_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: module_13_upvr (readonly)
		[6]: var154_upvr (readonly)
		[7]: tbl_7_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local os_clock_result1 = os.clock()
	local var192 = os_clock_result1 + NumberRange_new_result1_upvr.Max
	local var193
	for _, v_8 in arg2, var193 do
		v_8.ExpiresAt = var192
	end
	var193 = tbl_9_upvr.Target
	var193 = nil
	if typeof(arg1) == "CFrame" then
		var193 = arg1.Position
	else
		local var194
		if typeof(arg1) == "Vector3" then
			var193 = arg1
			local var195 = -(var193.Position - var193).Unit
			if math.abs(var195:Dot(Vector3.new(0, 1, 0))) < module_upvr.DotTolerance then
				var194 = Vector3.new(0, 1, 0)
			else
				var194 = Vector3.new(1, 0, 0)
			end
			local Unit = var194:Cross(var195).Unit
			var194 = Unit:Cross(var195).Unit
		else
			var194 = "Expected CFrame or Vector3, received %s"
			var194 = 2
			error(string.format(var194, typeof(arg1)), var194)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_9_upvr.Origin = var193
	local table_create_result1 = table.create(#arg2)
	for i_9, v_9 in arg2 do
		tbl_9_upvr.Control = var193 + ((CFrame.fromMatrix(Vector3.new(0, 0, 0), Unit, var194, var195) * CFrame.Angles((0.5 - math.random()) * 2.356194490192345, (0.5 - math.random()) * 2.356194490192345, 0)).LookVector) * ((var193.Position - var193).Magnitude * module_2_upvr.Lerp(0.5, 0.75, math.random()) * (arg3 or 1))
		local any_Create_result1 = module_13_upvr.AttachmentTrail.Create(tbl_9_upvr, os_clock_result1)
		local Attachment = Instance.new("Attachment")
		local tbl_2 = {}
		for _, v_10 in var154_upvr do
			local any_I_result1_3 = module_upvr.I("ParticleEmitter", v_10)
			any_I_result1_3.Parent = Attachment
			tbl_2[#tbl_2 + 1] = any_I_result1_3
		end
		Attachment.Parent = any_Create_result1.Attachment
		local tbl_13 = {
			DestroyAt = math.huge;
			Expired = false;
			CashAttachment = Attachment;
			CashEmitters = tbl_2;
			Trail = any_Create_result1;
			Voucher = v_9;
		}
		table_create_result1[i_9] = tbl_13
		tbl_7_upvr.VoucherTrails[#tbl_7_upvr.VoucherTrails + 1] = tbl_13
	end
	return table_create_result1
end
local module_11_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
module_13_upvr.VoucherTrail.Generate = function(arg1, arg2, arg3, arg4, arg5) -- Line 1861, Named "Generate"
	--[[ Upvalues[3]:
		[1]: module_8_upvr (readonly)
		[2]: module_11_upvr (readonly)
		[3]: module_13_upvr (readonly)
	]]
	return module_13_upvr.VoucherTrail.Generate_FromVouchers(arg1, module_8_upvr.CurrencyVouchersCreate(module_11_upvr.PrimaryCurrencyType, arg2, arg3), arg5)
end
local module_15_upvr = require(Modules:WaitForChild("LocalPlayerManager"))
function tbl_12_upvw(arg1, arg2) -- Line 1880
	--[[ Upvalues[6]:
		[1]: Destroy_upvw (read and write)
		[2]: module_upvr (readonly)
		[3]: module_15_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: tbl_3_upvr (readonly)
		[6]: module_8_upvr (readonly)
	]]
	arg1.Expired = true
	arg1.DestroyAt = arg2 + Destroy_upvw
	for _, v_11 in arg1.CashEmitters do
		v_11.Enabled = false
	end
	arg1.CashAttachment.Position = module_upvr.HiddenPosition
	arg1.CashAttachment.Parent = arg1.Trail.Attachment.Parent
	module_15_upvr.CharacterEffectPerform(module_15_upvr.CharacterEffectType.PickupFlash)
	local LocalCharacterState_2 = module_8_upvr.LocalCharacterState
	if LocalCharacterState_2 then
		LocalCharacterState_2 = module_8_upvr.LocalCharacterState.Root
	end
	module_5_upvr.SFX.CreateAndPlay(tbl_3_upvr[math.random(1, #tbl_3_upvr)], LocalCharacterState_2, 0.4)
	module_8_upvr.CurrencyVoucherRedeem(arg1.Voucher)
end
function module_13_upvr.PostSimulation(arg1, arg2) -- Line 1914
	--[[ Upvalues[2]:
		[1]: module_8_upvr (readonly)
		[2]: module_13_upvr (readonly)
	]]
	local LocalCharacterState = module_8_upvr.LocalCharacterState
	if LocalCharacterState and LocalCharacterState.Initialized then
		module_13_upvr.PositionObjects.Character.Position = LocalCharacterState.Root.Position
	end
end
function module_13_upvr.RenderStepped(arg1, arg2) -- Line 1924
	--[[ Upvalues[6]:
		[1]: tbl_7_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: module_3_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: module_2_upvr (readonly)
		[6]: tbl_12_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("CFR_UIEffects")
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 145 start (CF ANALYSIS FAILED)
	debug.profilebegin("AttachmentTrails")
	for i_12 = #tbl_7_upvr.AttachmentTrails, 1, -1 do
		local var214 = tbl_7_upvr.AttachmentTrails[i_12]
		local Completed = var214.Completed
		if not Completed then
			if var214.ArrivesAt > arg2 then
				Completed = false
			else
				Completed = true
			end
			var214.Completed = Completed
			Completed = math.clamp((arg2 - var214.StartedAt) / (var214.ArrivesAt - var214.StartedAt), 0, 1)
			local var216 = 1 - Completed
			var214.Attachment.Position = var216 ^ 2 * var214.Origin + var216 * 2 * Completed * var214.Control + Completed ^ 2 * var214.Target.Position
		end
		if var214.ExpiresAt <= arg2 then
			var214.Attachment:Destroy()
			table.remove(tbl_7_upvr.AttachmentTrails, i_12)
		end
	end
	debug.profileend()
	-- KONSTANTERROR: [11] 9. Error Block 145 end (CF ANALYSIS FAILED)
end
return module_13_upvr