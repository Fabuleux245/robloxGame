-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:23
-- Luau version 6, Types version 3
-- Time taken: 0.017653 seconds

local module_upvr_2 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_4_upvr = require(Modules:WaitForChild("Audio"))
local module_6_upvr = require(Modules:WaitForChild("BUPGameClient"))
local module_upvr_5 = require(Modules:WaitForChild("HighlightGroups"))
local module_upvr_4 = require(Modules:WaitForChild("InputMode"))
local module_upvr_3 = require(Modules:WaitForChild("ItemActionHandler"))
local module_upvr = require(Modules:WaitForChild("Transparency"))
local module_5_upvr = require(Modules:WaitForChild("Tweens"))
local module_8_upvr = require(Modules:WaitForChild("UIButton"))
local module_3_upvr = require(Modules:WaitForChild("UIEffects"))
local module_7_upvr = require(Modules:WaitForChild("UIShared"))
local module_9_upvr = require(Modules:WaitForChild("Utility"))
local tbl_2_upvr = {
	PendingHatches = {};
	PetHatchUI = nil;
	ExpirePending = false;
	InputBound = false;
}
local identity_upvw = CFrame.identity
local const_number_upvw = 0
local tbl_upvr_3 = {
	ButtonPosScaleY = 0.875;
	ButtonScaleX = 2.25;
	ButtonScaleY = 1.125;
	ButtonTextScale = 1.125;
	ContinuePosScaleY = 0.85;
	ContinueTextEm = 2;
	EggGlowScale = 1.025;
	EggSpinAngle = 0.7853981633974483;
	GlowOverhangEm = 1;
	GlowOverhangScaleX = 2;
	PetsPerRow = 3;
	PetsHorizontalSkewFactor = 0;
	PetsVerticalSkewFactor = 0.075;
	PetsMaxHorizontalFactor = 0.75;
	PetsMaxVerticalFactor = 0.75;
	PetNameEm = 2.5;
	PetNameOffsetYEm = 0.5;
}
local tbl_3_upvr = {
	[module_upvr_4.Gamepad] = string.format("%s Anywhere to Continue", "Press RT");
	[module_upvr_4.Keyboard] = string.format("%s Anywhere to Continue", "Click");
	[module_upvr_4.Mouse] = string.format("%s Anywhere to Continue", "Click");
	[module_upvr_4.Touch] = string.format("%s Anywhere to Continue", "Tap");
}
local tbl_6_upvr = {
	Glow = 1;
	Hatch = 2;
	Display = 3;
	Expire = 4;
}
local tbl_upvr = {
	[tbl_6_upvr.Glow] = 3;
	[tbl_6_upvr.Hatch] = 0.125;
	[tbl_6_upvr.Display] = math.huge;
	[tbl_6_upvr.Expire] = 0.75;
}
local tbl_upvr_2 = {
	Chimes = {
		SoundGroup = module_4_upvr.SoundGroup.SFX;
		SoundId = "rbxassetid://9114369623";
		Volume = 0.25;
	};
	Pop = {
		SoundId = "rbxassetid://9113856069";
		Volume = 2;
	};
	Static = {
		SoundId = "rbxassetid://9119836911";
		Volume = 0.25;
	};
	Woosh = {
		PlaybackSpeed = 0.8;
		SoundId = "rbxassetid://9117894969";
		TimePosition = 0.375;
		Volume = 0.075;
	};
}
local tbl_7_upvr = {
	ChargeFadeDelay = 1;
	ChargeFadeIn = 1.5;
	EggSpinPeriod = 3;
	HatchTimeVariancePerPet = 0.125;
	PetExpireDurationVarianceFactor = 0.25;
	PetFloatPeriod = 3;
}
local tbl_upvr_4 = {Enum.UserInputType.MouseButton1, Enum.UserInputType.Touch, Enum.KeyCode.ButtonB}
local tbl_8_upvr = {
	[Enum.UserInputType.MouseButton1] = true;
	[Enum.UserInputType.Touch] = true;
	[Enum.UserInputType.Gamepad1] = true;
}
function ProcessInput(arg1, arg2, arg3) -- Line 151
	--[[ Upvalues[2]:
		[1]: tbl_8_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	local var31
	if arg2 == Enum.UserInputState.Begin and tbl_8_upvr[arg3.UserInputType] then
		tbl_2_upvr.ExpirePending = true
		var31 = Enum.ContextActionResult.Sink
	end
	return var31
end
local function PetComponentCreate_upvr(arg1, arg2, arg3, arg4) -- Line 251, Named "PetComponentCreate"
	--[[ Upvalues[6]:
		[1]: module_3_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: tbl_7_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: tbl_upvr (readonly)
	]]
	local any_Create_result1_3 = module_3_upvr.GlowCharge.Create(module_9_upvr.Terrain, true)
	local tbl = {
		Charge = any_Create_result1_3;
		FadeDelay = tbl_7_upvr.ChargeFadeDelay - arg4;
		FadeTween = module_5_upvr.new(1, tbl_7_upvr.ChargeFadeIn, Enum.EasingStyle.Quint);
		Opacities = module_upvr.Create(any_Create_result1_3.Attachment);
	}
	module_upvr.Apply(tbl.Opacities, tbl.FadeTween.Value)
	local module = {}
	module.EggData = arg1
	module.PetData = arg2
	module.AngleX = 0
	module.AngleY = 0
	module.EggDepth = 0
	module.EggEmitters = {}
	module.EggOffset = CFrame.identity
	module.EggOriginalScale = 1
	module.EggOriginalSize = Vector3.new(1, 1, 1)
	module.PetDepth = 0
	module.PetEmitters = {}
	module.PetOffset = CFrame.identity
	module.PetOriginalScale = 1
	module.PetOriginalSize = Vector3.new(1, 1, 1)
	module.CreatedAt = arg3 + arg4
	module.Duration = tbl_upvr[0] or 0
	module.Finished = false
	module.Step = 0
	module.Time = arg4
	module.AnimationState_Charge = tbl
	return module
end
local function UpdateModelScale_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 307, Named "UpdateModelScale"
	local var39 = arg1.ArcLength / (arg4.X ^ 2 + arg4.Y ^ 2) ^ 0.5
	arg2:ScaleTo(arg5 * var39)
	for i, v in arg3 do
		i.ZOffset = v * var39
	end
	local any_GetBoundingBox_result1_2, any_GetBoundingBox_result2_2 = arg2:GetBoundingBox()
	return any_GetBoundingBox_result2_2.Z * 0.5, any_GetBoundingBox_result1_2:ToObjectSpace(arg2:GetPivot())
end
local function PrepareModelForDisplay_upvr(arg1) -- Line 334, Named "PrepareModelForDisplay"
	for _, v_2 in arg1:GetDescendants() do
		if v_2:IsA("BasePart") then
			v_2.CastShadow = false
			v_2.Anchored = true
			v_2.CanCollide = false
			v_2.CanQuery = false
			v_2.CanTouch = false
		elseif v_2:IsA("ParticleEmitter") and v_2.ZOffset ~= 0 then
			({})[v_2] = v_2.ZOffset
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function GetEggModel_upvr(arg1, arg2) -- Line 361, Named "GetEggModel"
	--[[ Upvalues[4]:
		[1]: module_6_upvr (readonly)
		[2]: PrepareModelForDisplay_upvr (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: UpdateModelScale_upvr (readonly)
	]]
	local var52 = false
	if not arg2.EggModel then
		local any_EggModelFetch_result1_2 = module_6_upvr.EggModelFetch(arg2.EggData)
		if any_EggModelFetch_result1_2.Initialized then
			var52 = true
			local any_ModelBuild_result1 = module_6_upvr.ModelBuild(any_EggModelFetch_result1_2)
			arg2.EggModel = any_ModelBuild_result1
			arg2.EggOriginalScale = any_ModelBuild_result1:GetScale()
			arg2.EggOriginalSize = assert(any_ModelBuild_result1.PrimaryPart, "Missing PrimaryPart").Size
			arg2.EggEmitters = PrepareModelForDisplay_upvr(any_ModelBuild_result1)
			module_upvr_5.HighlightGroupAdd(module_upvr_5.Groups.Egg, any_ModelBuild_result1)
		end
	end
	if arg2.EggModel and (arg1.ArcDirty or var52) then
		local UpdateModelScale_upvr_result1_2, UpdateModelScale_result2_3 = UpdateModelScale_upvr(arg1, arg2.EggModel, arg2.EggEmitters, arg2.EggOriginalSize, arg2.EggOriginalScale)
		arg2.EggDepth = UpdateModelScale_upvr_result1_2
		arg2.EggOffset = UpdateModelScale_result2_3
	end
	return arg2.EggModel
end
local function GetPetModel_upvr(arg1, arg2) -- Line 408, Named "GetPetModel"
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: PrepareModelForDisplay_upvr (readonly)
		[3]: UpdateModelScale_upvr (readonly)
	]]
	local var57 = false
	if not arg2.PetModel then
		local any_PetModelFetch_result1 = module_6_upvr.PetModelFetch(arg2.PetData)
		if any_PetModelFetch_result1.Initialized then
			var57 = true
			local any_ModelBuild_result1_3 = module_6_upvr.ModelBuild(any_PetModelFetch_result1, true)
			local assert_result1 = assert(any_ModelBuild_result1_3.PrimaryPart, "Missing PrimaryPart")
			arg2.PetModel = any_ModelBuild_result1_3
			arg2.PetOriginalScale = any_ModelBuild_result1_3:GetScale()
			arg2.PetOriginalSize = assert_result1.Size
			arg2.PetEmitters = PrepareModelForDisplay_upvr(any_ModelBuild_result1_3)
			local any_GetBoundingBox_result1, any_GetBoundingBox_result2 = any_ModelBuild_result1_3:GetBoundingBox()
			assert_result1.PivotOffset = assert_result1.CFrame:ToObjectSpace(any_GetBoundingBox_result1 * CFrame.new(0, -any_GetBoundingBox_result2.Y * 0.5, 0))
			any_ModelBuild_result1_3.Parent = module_6_upvr.HighlightModels.LocalPlayer.Model
		end
	end
	if arg2.PetModel and (arg1.ArcDirty or var57) then
		local UpdateModelScale_result1, UpdateModelScale_result2_2 = UpdateModelScale_upvr(arg1, arg2.PetModel, arg2.PetEmitters, arg2.PetOriginalSize, arg2.PetOriginalScale)
		arg2.PetDepth = UpdateModelScale_result1
		arg2.PetOffset = UpdateModelScale_result2_2
	end
	return arg2.PetModel, var57
end
local function _(arg1, arg2) -- Line 461, Named "GetEggSpin"
	--[[ Upvalues[2]:
		[1]: tbl_7_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
	]]
	return CFrame.Angles(arg1.AngleX, -arg1.AngleY + math.pi + (tbl_upvr_3.EggSpinAngle) * (math.sin((-math.pi*2) * (arg2 - arg1.CreatedAt) % tbl_7_upvr.EggSpinPeriod / tbl_7_upvr.EggSpinPeriod) * 0.5), 0)
end
local function _(arg1) -- Line 472, Named "GetPetAngle"
	return CFrame.Angles(arg1.AngleX, -arg1.AngleY + math.pi, 0)
end
local function _(arg1, arg2, arg3, arg4) -- Line 479, Named "GetPetFloat"
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	return arg1.ArcAngle * 0.05 * math.sin(((-math.pi*2)) * ((arg3 - arg2.CreatedAt) % tbl_7_upvr.PetFloatPeriod / tbl_7_upvr.PetFloatPeriod)) * (arg4 or 1)
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 491, Named "GetObjectCFrames"
	--[[ Upvalues[2]:
		[1]: const_number_upvw (read and write)
		[2]: identity_upvw (read and write)
	]]
	local var65 = const_number_upvw + (arg3 or 0)
	local var67
	if arg5 then
		var67 *= arg5
	end
	if arg4 then
		var67 *= arg4
	end
	return var67, CFrame.new(var65 * math.tan(arg2), var65 * math.tan(arg1), -var65)
end
local function _(arg1) -- Line 519, Named "AnimationState_ChargeDestroy"
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	module_3_upvr.GlowCharge.Destroy(arg1.AnimationState_Charge.Charge)
end
local function AnimateState_ChargeUpdate_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 528, Named "AnimateState_ChargeUpdate"
	--[[ Upvalues[6]:
		[1]: identity_upvw (read and write)
		[2]: tbl_7_upvr (readonly)
		[3]: tbl_upvr_3 (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: module_3_upvr (readonly)
	]]
	local AnimationState_Charge = arg2.AnimationState_Charge
	AnimationState_Charge.Charge.Attachment.CFrame = identity_upvw * arg3 * CFrame.Angles(arg2.AngleX, -arg2.AngleY + math.pi + (tbl_upvr_3.EggSpinAngle) * (math.sin((-math.pi*2) * (arg5 - arg2.CreatedAt) % tbl_7_upvr.EggSpinPeriod / tbl_7_upvr.EggSpinPeriod) * 0.5), 0)
	AnimationState_Charge.FadeDelay -= arg4
	if AnimationState_Charge.FadeDelay <= 0 then
		module_5_upvr.Tween(AnimationState_Charge.FadeTween, arg5, 0)
		if AnimationState_Charge.FadeTween.Dirty then
			module_upvr.Apply(AnimationState_Charge.Opacities, AnimationState_Charge.FadeTween.Value)
		end
	end
	if arg6 or arg1.ArcDirty then
		local var71 = arg1.ArcLength * arg2.EggOriginalSize.Magnitude * 0.25
		module_3_upvr.GlowCharge.SetChargeSize(AnimationState_Charge.Charge, var71 * 0.25)
		module_3_upvr.GlowCharge.SetExplosionSize(AnimationState_Charge.Charge, var71)
	end
end
local function _(arg1, arg2) -- Line 568, Named "AnimationState_GlowDestroy"
	local AnimationState_Glow_2 = arg1.AnimationState_Glow
	if AnimationState_Glow_2 then
		arg1.AnimationState_Glow = nil
		AnimationState_Glow_2.Model:Destroy()
	end
end
local function _(arg1) -- Line 591, Named "AnimationState_NameDestroy"
	local AnimationState_Name = arg1.AnimationState_Name
	if AnimationState_Name then
		arg1.AnimationState_Name = nil
		AnimationState_Name.Label:Destroy()
	end
end
local function AnimationState_NameUpdate_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 605, Named "AnimationState_NameUpdate"
	--[[ Upvalues[4]:
		[1]: module_5_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_7_upvr (readonly)
		[4]: tbl_upvr_3 (readonly)
	]]
	local AnimationState_Name_4 = arg2.AnimationState_Name
	local var75
	if AnimationState_Name_4 then
		if arg4 then
			var75 = 0
		else
			var75 = 1
		end
		module_5_upvr.Tween(AnimationState_Name_4.FadeTween, arg5, var75)
		if not arg4 and module_5_upvr.IsAtTarget(AnimationState_Name_4.FadeTween, 1) then
			local AnimationState_Name_2 = arg2.AnimationState_Name
			if AnimationState_Name_2 then
				arg2.AnimationState_Name = nil
				AnimationState_Name_2.Label:Destroy()
			end
			return
		end
		if AnimationState_Name_4.FadeTween.Dirty then
			var75 = AnimationState_Name_4.FadeTween
			module_upvr.Apply(AnimationState_Name_4.Opacities, var75.Value)
		end
		local TextScale = arg1.TextScale
		var75 = AnimationState_Name_4.Label
		module_7_upvr.CachedTextBoundsConform(AnimationState_Name_4.Bounds, var75, arg2.PetData.Name, module_7_upvr.EmSize * TextScale * tbl_upvr_3.PetNameEm // 1)
		var75 = arg3.Position
		local any_WorldToViewportPoint_result1 = module_7_upvr.Camera:WorldToViewportPoint(var75)
		var75 = UDim2.fromOffset(any_WorldToViewportPoint_result1.X, any_WorldToViewportPoint_result1.Y + module_7_upvr.EmSize * TextScale * tbl_upvr_3.PetNameOffsetYEm // 1)
		AnimationState_Name_4.Label.Position = var75
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var75 = module_7_upvr
			return var75.EmSizeDirty
		end
		if arg6 or INLINED() then
			var75 = module_7_upvr.ScaledSize.StrokeVeryThin
			AnimationState_Name_4.Stroke.Thickness = var75
		end
	end
end
local tbl_5_upvr = {
	[tbl_6_upvr.Glow] = function(arg1, arg2, arg3, arg4, arg5) -- Line 666
		--[[ Upvalues[10]:
			[1]: module_9_upvr (readonly)
			[2]: tbl_upvr_3 (readonly)
			[3]: tbl_7_upvr (readonly)
			[4]: const_number_upvw (read and write)
			[5]: identity_upvw (read and write)
			[6]: GetEggModel_upvr (readonly)
			[7]: module_2_upvr (readonly)
			[8]: module_upvr (readonly)
			[9]: module_7_upvr (readonly)
			[10]: AnimateState_ChargeUpdate_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var81 = arg2.Time / arg2.Duration
		local _ = 1 - math.cos(12.566370614359172 * var81) * (1 - var81) ^ 6 + math.sin(12.566370614359172 * var81) / 8 * (1 - var81)
		local _ = const_number_upvw + (arg2.EggDepth * tbl_upvr_3.EggGlowScale or 0)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [119] 93. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [119] 93. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [120] 94. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [120] 94. Error Block 3 end (CF ANALYSIS FAILED)
	end;
	[tbl_6_upvr.Hatch] = function(arg1, arg2, arg3, arg4, arg5) -- Line 765
		--[[ Upvalues[11]:
			[1]: module_4_upvr (readonly)
			[2]: tbl_upvr_2 (readonly)
			[3]: module_upvr_5 (readonly)
			[4]: module_3_upvr (readonly)
			[5]: GetPetModel_upvr (readonly)
			[6]: UpdateModelScale_upvr (readonly)
			[7]: module_9_upvr (readonly)
			[8]: tbl_7_upvr (readonly)
			[9]: const_number_upvw (read and write)
			[10]: identity_upvw (read and write)
			[11]: AnimateState_ChargeUpdate_upvr (readonly)
		]]
		if arg3 then
			local AnimationState_Charge_2 = arg2.AnimationState_Charge
			module_4_upvr.SFX.CreateAndPlay(tbl_upvr_2.Pop, AnimationState_Charge_2.Charge.Attachment, 0.375)
			module_4_upvr.SFX.CreateAndPlay(tbl_upvr_2.Woosh, AnimationState_Charge_2.Charge.Attachment, 0.125)
			if arg2.EggModel then
				module_upvr_5.HighlightGroupRemove(module_upvr_5.Groups.Egg, arg2.EggModel)
				arg2.EggModel:Destroy()
				arg2.EggModel = nil
			end
			local AnimationState_Glow = arg2.AnimationState_Glow
			if AnimationState_Glow then
				arg2.AnimationState_Glow = nil
				AnimationState_Glow.Model:Destroy()
			end
			module_3_upvr.GlowCharge.Detonate(AnimationState_Charge_2.Charge)
		end
		local GetPetModel_upvr_result1 = GetPetModel_upvr(arg1, arg2)
		local var89 = arg2.Time / arg2.Duration
		if GetPetModel_upvr_result1 then
			UpdateModelScale_upvr(arg1, GetPetModel_upvr_result1, arg2.PetEmitters, arg2.PetOriginalSize, arg2.PetOriginalScale * math.max(var89, module_9_upvr.Epsilon))
		end
		local PetOffset = arg2.PetOffset
		local cframe = CFrame.Angles(arg2.AngleX, -arg2.AngleY + math.pi, 0)
		local var92 = const_number_upvw + (arg2.PetDepth or 0)
		local cframe_2 = CFrame.new(var92 * math.tan(arg2.AngleY), var92 * math.tan(arg2.AngleX + arg1.ArcAngle * 0.05 * math.sin(((-math.pi*2)) * ((arg5 - arg2.CreatedAt) % tbl_7_upvr.PetFloatPeriod / tbl_7_upvr.PetFloatPeriod)) * (var89 or 1)), -var92)
		if cframe then
		end
		if PetOffset then
		end
		if GetPetModel_upvr_result1 then
			GetPetModel_upvr_result1:PivotTo(identity_upvw * cframe_2 * cframe * PetOffset)
		end
		AnimateState_ChargeUpdate_upvr(arg1, arg2, cframe_2, arg4, arg5)
	end;
	[tbl_6_upvr.Display] = function(arg1, arg2, arg3, arg4, arg5) -- Line 834
		--[[ Upvalues[13]:
			[1]: tbl_2_upvr (readonly)
			[2]: module_7_upvr (readonly)
			[3]: module_9_upvr (readonly)
			[4]: module_2_upvr (readonly)
			[5]: module_upvr (readonly)
			[6]: module_5_upvr (readonly)
			[7]: GetPetModel_upvr (readonly)
			[8]: UpdateModelScale_upvr (readonly)
			[9]: tbl_7_upvr (readonly)
			[10]: const_number_upvw (read and write)
			[11]: identity_upvw (read and write)
			[12]: AnimationState_NameUpdate_upvr (readonly)
			[13]: AnimateState_ChargeUpdate_upvr (readonly)
		]]
		if not arg2.AnimationState_Name then
			local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2_2 = module_7_upvr.TextBoundsLabelCreate(assert(tbl_2_upvr.PetHatchUI).ScreenGui, arg2.PetData.Name)
			any_TextBoundsLabelCreate_result1.AnchorPoint = Vector2.xAxis * 0.5
			any_TextBoundsLabelCreate_result1.ZIndex = 10
			local any_Create_result1 = module_upvr.Create(any_TextBoundsLabelCreate_result1)
			module_upvr.Apply(any_Create_result1, 1)
			arg2.AnimationState_Name = {
				Bounds = any_TextBoundsLabelCreate_result2_2;
				FadeTween = module_5_upvr.new(1, 0.75, Enum.EasingStyle.Quart);
				Label = any_TextBoundsLabelCreate_result1;
				Opacities = any_Create_result1;
				Stroke = module_9_upvr.I("UIStroke", module_7_upvr.Properties.StrokeText, {
					Color = module_2_upvr.TextStrokeColor1;
					Transparency = module_2_upvr.TextDeemphasizedTransparency1;
					Parent = any_TextBoundsLabelCreate_result1;
				});
			}
		end
		local GetPetModel_result1 = GetPetModel_upvr(arg1, arg2)
		local var101
		if arg3 and GetPetModel_result1 then
			UpdateModelScale_upvr(arg1, GetPetModel_result1, arg2.PetEmitters, arg2.PetOriginalSize, arg2.PetOriginalScale)
		end
		local PetOffset_3 = arg2.PetOffset
		local cframe_4 = CFrame.Angles(arg2.AngleX, -arg2.AngleY + math.pi, 0)
		local var104 = const_number_upvw + (arg2.PetDepth or 0)
		var101 = arg2.AngleX + arg1.ArcAngle * 0.05 * math.sin(((-math.pi*2)) * ((arg5 - arg2.CreatedAt) % tbl_7_upvr.PetFloatPeriod / tbl_7_upvr.PetFloatPeriod)) * 1
		var101 = var104 * math.tan(arg2.AngleY)
		local cframe_5 = CFrame.new(var101, var104 * math.tan(var101), -var104)
		var101 = identity_upvw * cframe_5
		if cframe_4 then
			var101 *= cframe_4
		end
		if PetOffset_3 then
			var101 *= PetOffset_3
		end
		local var106 = var101
		if GetPetModel_result1 then
			GetPetModel_result1:PivotTo(var106)
		end
		AnimationState_NameUpdate_upvr(arg1, arg2, var106, true, arg5, arg3)
		AnimateState_ChargeUpdate_upvr(arg1, arg2, cframe_5, arg4, arg5)
	end;
	[tbl_6_upvr.Expire] = function(arg1, arg2, arg3, arg4, arg5) -- Line 914
		--[[ Upvalues[8]:
			[1]: tbl_7_upvr (readonly)
			[2]: module_9_upvr (readonly)
			[3]: module_5_upvr (readonly)
			[4]: const_number_upvw (read and write)
			[5]: identity_upvw (read and write)
			[6]: GetPetModel_upvr (readonly)
			[7]: AnimationState_NameUpdate_upvr (readonly)
			[8]: AnimateState_ChargeUpdate_upvr (readonly)
		]]
		local var108 = arg2.Time / arg2.Duration
		local var109 = arg2.AngleX + arg1.ArcAngle * 0.05 * math.sin(((-math.pi*2)) * ((arg5 - arg2.CreatedAt) % tbl_7_upvr.PetFloatPeriod / tbl_7_upvr.PetFloatPeriod)) * 1
		local assert_result1_2 = assert(arg1.CameraFOV)
		local var111 = var109 + assert_result1_2.Vertical * 0.025
		local PetOffset_2 = arg2.PetOffset
		local cframe_3 = CFrame.Angles(arg2.AngleX, -arg2.AngleY + math.pi, 0)
		local var114 = const_number_upvw + (arg2.PetDepth or 0)
		local var116
		if cframe_3 then
			var116 *= cframe_3
		end
		if PetOffset_2 then
			var116 *= PetOffset_2
		end
		local var117 = var116
		local GetPetModel_result1_2 = GetPetModel_upvr(arg1, arg2)
		if GetPetModel_result1_2 then
			GetPetModel_result1_2:PivotTo(var117)
		end
		AnimationState_NameUpdate_upvr(arg1, arg2, var117, false, arg5)
		AnimateState_ChargeUpdate_upvr(arg1, arg2, CFrame.new(var114 * math.tan(arg2.AngleY * (1 + 0.25 * var108)), var114 * math.tan(module_5_upvr.Lerp(var109, var111, var108) + (-math.min(assert_result1_2.HalfVertical + arg1.ArcAngle, (math.pi/2) - module_9_upvr.Epsilon) - var111) * (2 * var108 ^ 2 * math.sin((math.pi/2) * var108) - var108)), -var114), arg4, arg5)
	end;
}
local function PetComponentDestroy_upvr(arg1) -- Line 968, Named "PetComponentDestroy"
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: module_3_upvr (readonly)
	]]
	if arg1.EggModel then
		module_upvr_5.HighlightGroupRemove(module_upvr_5.Groups.Egg, arg1.EggModel)
		arg1.EggModel:Destroy()
		arg1.EggModel = nil
	end
	if arg1.PetModel then
		arg1.PetModel:Destroy()
		arg1.PetModel = nil
	end
	module_3_upvr.GlowCharge.Destroy(arg1.AnimationState_Charge.Charge)
	local AnimationState_Glow_3 = arg1.AnimationState_Glow
	if AnimationState_Glow_3 then
		arg1.AnimationState_Glow = nil
		AnimationState_Glow_3.Model:Destroy()
	end
	local AnimationState_Name_3 = arg1.AnimationState_Name
	if AnimationState_Name_3 then
		arg1.AnimationState_Name = nil
		AnimationState_Name_3.Label:Destroy()
	end
end
local function _(arg1) -- Line 995, Named "DetermineHatchesDisplaying"
	local var121 = false
	local var122 = arg1[#arg1]
	if var122 then
		var121 = var122.Displaying
	end
	return var121
end
local function _(arg1) -- Line 1009, Named "DetermineHatchesExpired"
	local var123 = true
	local var124 = arg1[#arg1]
	if var124 then
		local Started_2 = var124.Started
		if Started_2 then
			Started_2 = var124.Expired
		end
		var123 = Started_2
	end
	return var123
end
local function PetHatchUICreate_upvr() -- Line 1029, Named "PetHatchUICreate"
	--[[ Upvalues[9]:
		[1]: module_5_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: module_9_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: module_8_upvr (readonly)
		[7]: module_upvr_3 (readonly)
		[8]: tbl_3_upvr (readonly)
		[9]: module_upvr_4 (readonly)
	]]
	local module_upvr_6 = {
		_Connections = {};
		Hatches = {};
		ButtonSizeX = 0;
		ButtonSizeY = 0;
		GlowOverhang = 0;
		ContinueText = "";
		FadeTween = module_5_upvr.new(1, 0.5);
		PositionTween = module_5_upvr.new(1, 0.375, Enum.EasingStyle.Back);
		Flag = module_7_upvr.TextBoundsFlagCreate();
		ScreenGui = module_9_upvr.I("ScreenGui", module_7_upvr.Properties.ScreenGui, {
			Name = "PetHatchUI";
			DisplayOrder = module_2_upvr.DisplayOrder_PetHatchUI;
			Parent = module_7_upvr.PlayerGui;
		});
	}
	local any_TextBoundsLabelCreate_result1_2, any_TextBoundsLabelCreate_result2 = module_7_upvr.TextBoundsLabelCreate(module_upvr_6.ScreenGui, nil, module_upvr_6.Flag, module_2_upvr.FontFaceItalic)
	module_upvr_6.ContinueLabel = any_TextBoundsLabelCreate_result1_2
	module_upvr_6.ContinueBounds = any_TextBoundsLabelCreate_result2
	module_upvr_6.ContinueLabel.TextTransparency = module_2_upvr.TextDeemphasizedTransparency2
	module_upvr_6.ContinueLabel.ZIndex = 10
	module_upvr_6.ContinueStroke = module_9_upvr.I("UIStroke", module_7_upvr.Properties.StrokeText, {
		Color = module_2_upvr.TextStrokeColor1;
		Transparency = module_2_upvr.TextDeemphasizedTransparency1;
		Parent = module_upvr_6.ContinueLabel;
	})
	module_upvr_6.ContinueGlow = module_9_upvr.I("ImageLabel", {
		BackgroundTransparency = 1;
		Image = module_2_upvr.GlowCircle_512x512;
		ImageColor3 = module_2_upvr.TextColor1;
		ImageTransparency = 0.75;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(Vector2.one * 256, Vector2.one * 256);
		ZIndex = -10;
		Parent = module_upvr_6.ScreenGui;
	})
	module_upvr_6.CachedOpacities = module_upvr.Create(module_upvr_6.ContinueLabel)
	module_upvr.Add(module_upvr_6.CachedOpacities, module_upvr_6.ContinueGlow)
	module_upvr.Apply(module_upvr_6.CachedOpacities, module_upvr_6.FadeTween.Value)
	module_upvr_6.DisableButton = module_8_upvr.Button.CreateFancy(module_upvr_6.ScreenGui, module_8_upvr.Button.Themes.Action, {
		Text = "Stop Auto-Hatching";
	})
	local function DisableAutoHatching() -- Line 1116
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (copied, readonly)
		]]
		module_upvr_3.EggRequestCancel()
		return Enum.ContextActionResult.Sink
	end
	module_8_upvr.Button.BindToKeyCode(module_upvr_6.DisableButton, DisableAutoHatching, Enum.KeyCode.ButtonB)
	module_upvr_6.DisableButton.Button.Activated:Connect(DisableAutoHatching)
	local var134 = tbl_3_upvr[module_upvr_4.Mode]
	if module_upvr_6.ContinueText ~= var134 then
		module_upvr_6.ContinueText = var134
		module_upvr_6.ContinueLabel.Text = var134
		module_upvr_6.Flag.Dirty = true
	end
	module_upvr_6._Connections[#module_upvr_6._Connections + 1] = module_upvr_4.ModeChanged:Connect(function(arg1) -- Line 1132, Named "SetContinueText"
		--[[ Upvalues[2]:
			[1]: tbl_3_upvr (copied, readonly)
			[2]: module_upvr_6 (readonly)
		]]
		local var133 = tbl_3_upvr[arg1]
		if module_upvr_6.ContinueText ~= var133 then
			module_upvr_6.ContinueText = var133
			module_upvr_6.ContinueLabel.Text = var133
			module_upvr_6.Flag.Dirty = true
		end
	end)
	return module_upvr_6
end
local function _(arg1) -- Line 1155, Named "PetHatchUIDestroy"
	for _, v_3 in arg1._Connections do
		v_3:Disconnect()
	end
	arg1.ScreenGui:Destroy()
end
require(Modules:WaitForChild("ClientData")).Signals.EggHatched:Connect(function(arg1, arg2) -- Line 1173
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	tbl_2_upvr.ExpirePending = true
	local tbl_4 = {}
	tbl_4.Egg = arg1
	tbl_4.Pets = arg2
	tbl_2_upvr.PendingHatches[#tbl_2_upvr.PendingHatches + 1] = tbl_4
end)
function module_upvr_2.IsOpen() -- Line 1183
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	local EggPurchasePending = module_upvr_3.EggPurchasePending
	if not EggPurchasePending then
		EggPurchasePending = true
		if 0 >= #tbl_2_upvr.PendingHatches then
			EggPurchasePending = false
			if tbl_2_upvr.PetHatchUI ~= nil then
				local Hatches_2 = tbl_2_upvr.PetHatchUI.Hatches
				local var146 = true
				local var147 = Hatches_2[#Hatches_2]
				if var147 then
					local Started_3 = var147.Started
					if Started_3 then
						Started_3 = var147.Expired
					end
					var146 = Started_3
				end
				EggPurchasePending = not var146
			end
		end
	end
	return EggPurchasePending
end
local any_Create_result1_2_upvr = module_7_upvr.UIExclusivityMember.Create(require(Modules:WaitForChild("UIExclusivityGroups")).PetScreenUIGroup)
local SoundService_upvr = game:GetService("SoundService")
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr_2.RenderStepped(arg1, arg2) -- Line 1194
	--[[ Upvalues[26]:
		[1]: module_upvr_2 (readonly)
		[2]: module_7_upvr (readonly)
		[3]: any_Create_result1_2_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: PetHatchUICreate_upvr (readonly)
		[6]: PetComponentCreate_upvr (readonly)
		[7]: tbl_7_upvr (readonly)
		[8]: module_upvr_3 (readonly)
		[9]: module_5_upvr (readonly)
		[10]: tbl_upvr_3 (readonly)
		[11]: module_8_upvr (readonly)
		[12]: module_upvr (readonly)
		[13]: identity_upvw (read and write)
		[14]: const_number_upvw (read and write)
		[15]: module_9_upvr (readonly)
		[16]: tbl_upvr (readonly)
		[17]: tbl_6_upvr (readonly)
		[18]: tbl_upvr_2 (readonly)
		[19]: module_4_upvr (readonly)
		[20]: SoundService_upvr (readonly)
		[21]: module_2_upvr (readonly)
		[22]: module_upvr_5 (readonly)
		[23]: PetComponentDestroy_upvr (readonly)
		[24]: tbl_5_upvr (readonly)
		[25]: ContextActionService_upvr (readonly)
		[26]: tbl_upvr_4 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("CFR_PetHatchUI")
	local any_IsOpen_result1 = module_upvr_2.IsOpen()
	module_7_upvr.UIExclusivityMember.SetActive(any_Create_result1_2_upvr, any_IsOpen_result1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 18. Error Block 3 start (CF ANALYSIS FAILED)
	tbl_2_upvr.PetHatchUI = PetHatchUICreate_upvr()
	-- KONSTANTERROR: [22] 18. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 22. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 22. Error Block 4 end (CF ANALYSIS FAILED)
end
return module_upvr_2