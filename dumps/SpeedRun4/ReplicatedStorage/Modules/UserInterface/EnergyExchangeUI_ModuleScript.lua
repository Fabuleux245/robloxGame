-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:17
-- Luau version 6, Types version 3
-- Time taken: 0.020485 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_11_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_8_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local module_5 = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_9_upvr = require(Modules:WaitForChild("ClientData"))
local module_upvr_3 = require(Modules:WaitForChild("EnergyHandler"))
local module_2_upvr = require(Modules:WaitForChild("UIButton"))
local module_upvr = require(Modules:WaitForChild("UIEffects"))
local module_10_upvr = require(Modules:WaitForChild("UIShared"))
local module_4_upvr = require(Modules:WaitForChild("Utility"))
local module_6 = require(Modules:WaitForChild("UserInterface"):WaitForChild("SidebarUI"))
local tbl_upvr = {
	PendingExchanges = {};
}
local tbl_upvr_2 = {
	SparkVarianceFactor = 0.75;
	TrailMinimumSpawnDistance = 100;
	TrailPlaneDistanceFactor = 0.5;
}
local tbl_3_upvr = {
	ImageProps = {
		Image = module_5.Effect_Star4pt_3;
		ImageColor3 = module_5.EnergyInnerRingIntenseColor;
	};
	Lifetime = 4;
	VelocityY = NumberRange.new(-7.5, -5);
	Rotation = NumberRange.new(-180, 180);
	RotVelocity = NumberRange.new(-360, 360);
	SizeX = 1.5;
	SizeY = 1.5;
}
local tbl_upvr_3 = {
	ButtonIntensityStart = 30;
	ButtonIntensityStop = 240;
	GlintCyclePeriod = 1;
	GlintCycleDelay = 1;
	GlintIntensityStart = 300;
	GlintIntensityStop = 600;
	RingIntensityStart = 30;
	RingIntensityStop = 900;
	SparkRateMax = 3;
	SparkRateStart = 720;
	SparkRateStop = 900;
}
local tbl_2_upvr = {
	ButtonIntensity = tbl_upvr_3.ButtonIntensityStop - tbl_upvr_3.ButtonIntensityStart;
	GlintCycle = tbl_upvr_3.GlintCyclePeriod + tbl_upvr_3.GlintCycleDelay;
	GlintIntensity = tbl_upvr_3.GlintIntensityStop - tbl_upvr_3.GlintIntensityStart;
	RingIntensity = tbl_upvr_3.RingIntensityStop - tbl_upvr_3.RingIntensityStart;
	SparkRate = tbl_upvr_3.SparkRateStop - tbl_upvr_3.SparkRateStart;
}
if module_8_upvr.EnergyEnabled then
	local tbl = {
		Dirty = true;
		ButtonIntensity = 0;
		GlintIntensity = 0;
		GlintTime = 0;
		SparkPeriod = 0;
		SparkTime = 0;
		Rings = {};
		ButtonTheme = module_4_upvr.TableDeepCopy(module_2_upvr.Button.Themes.Floating);
	}
	assert(tbl.ButtonTheme.Idle)
	assert(tbl.ButtonTheme.Hot)
	assert(tbl.ButtonTheme.Selected)
	tbl.IntensityColors = {
		Idle = {assert(tbl.ButtonTheme.Idle.Color), module_5.EnergyOuterRingBaseColor};
		Hot = {assert(tbl.ButtonTheme.Hot.Color), module_5.EnergyOuterRingIntenseColor};
		Selected = {assert(tbl.ButtonTheme.Selected.Color), module_5.EnergyInnerRingIntenseColor};
	}
	tbl.ButtonProfile = {
		ButtonTheme = tbl.ButtonTheme;
		Icon = module_5.GetImageFromMap(module_5.ImageMapType.Currency_ByCurrencyType, module_11_upvr.PrimaryCurrencyType, module_5.ImageMapStyle.OutlineHeavy);
		Order = module_6.SidebarButtonOrder.EnergyExchange;
		Style = module_6.SidebarButtonStyle.IconText;
		Text = "Sell Energy";
		PressFunction = module_upvr_3.RequestEnergyExchange;
	}
	tbl.ExchangeButton = module_6.ButtonProfileRegister(tbl.ButtonProfile, module_6.SidebarRegion.Right)
	module.ExchangeButton = tbl.ExchangeButton
	tbl.ExchangeButton.Button.Button.ZIndex = 1000
	assert(tbl.ExchangeButton.Button.CornerRadiusOverride)
	tbl.GlintFrame = module_4_upvr.I("Frame", module_10_upvr.Properties.Centered, {
		BackgroundColor3 = module_5.EnergyInnerRingIntenseColor;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.fromScale(1, 1);
		ZIndex = -900;
		Parent = tbl.ExchangeButton.Button.Button;
	})
	tbl.GlintCorner = module_4_upvr.I("UICorner", {
		Parent = tbl.GlintFrame;
	})
	tbl.GlintGradient = module_4_upvr.I("UIGradient", {
		Rotation = 15;
		Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)});
		Parent = tbl.GlintFrame;
	})
	local module_7_upvr = require(Modules:WaitForChild("Tweens"))
	local function CreateRingSpec(arg1, arg2, arg3) -- Line 178
		--[[ Upvalues[2]:
			[1]: module_7_upvr (readonly)
			[2]: tbl_upvr_3 (readonly)
		]]
		if arg2 >= arg3 then
		else
		end
		assert(true, "Invalid range")
		local any_Lerp_result1 = module_7_upvr.Lerp(tbl_upvr_3.RingIntensityStart, tbl_upvr_3.RingIntensityStop, arg2)
		local any_Lerp_result1_2 = module_7_upvr.Lerp(tbl_upvr_3.RingIntensityStart, tbl_upvr_3.RingIntensityStop, arg3)
		local module_3 = {
			Delta = any_Lerp_result1_2 - any_Lerp_result1;
		}
		module_3.Scale = arg1
		module_3.Start = any_Lerp_result1
		module_3.Stop = any_Lerp_result1_2
		return module_3
	end
	for i, v in {CreateRingSpec(1, 0, 0.25), CreateRingSpec(1.175, 0.2, 0.375), CreateRingSpec(1.375, 0.25, 1)} do
		local any_Create_result1 = module_upvr.EnergyRing.Create({
			ZIndex = -(1000 + i);
			Parent = tbl.ExchangeButton.Button.Button;
		})
		any_Create_result1.DecayRate = 0
		tbl.Rings[i] = {
			Ring = any_Create_result1;
			Spec = v;
		}
		local var195_upvr
	end
	module_9_upvr.Signals.EnergyExchanged:Connect(function(arg1, arg2) -- Line 221
		--[[ Upvalues[4]:
			[1]: module_8_upvr (readonly)
			[2]: module_9_upvr (readonly)
			[3]: module_11_upvr (readonly)
			[4]: tbl_upvr (readonly)
		]]
		if arg1 == 0 then
		else
			tbl_upvr.PendingExchanges[#tbl_upvr.PendingExchanges + 1] = module_9_upvr.CurrencyVouchersCreate(module_11_upvr.PrimaryCurrencyType, arg1, math.clamp(module_8_upvr.EnergyExchangeMinParticles + arg2 * module_8_upvr.EnergyExchangeParticleRate // 1, 1, math.min(arg1, module_8_upvr.EnergyExchangeMaxParticles)))
		end
	end)
	local module_upvr_2 = require(Modules:WaitForChild("Raycast"))
	function module.RenderStepped(arg1, arg2) -- Line 251
		--[[ Upvalues[12]:
			[1]: module_upvr_3 (readonly)
			[2]: tbl_upvr_3 (readonly)
			[3]: tbl_2_upvr (readonly)
			[4]: var195_upvr (readonly)
			[5]: module_2_upvr (readonly)
			[6]: module_10_upvr (readonly)
			[7]: module_upvr (readonly)
			[8]: tbl_upvr_2 (readonly)
			[9]: tbl_3_upvr (readonly)
			[10]: tbl_upvr (readonly)
			[11]: module_4_upvr (readonly)
			[12]: module_upvr_2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if module_upvr_3.MovingTimeDirty then
			local MovingTime_2 = module_upvr_3.MovingTime
			local clamped_6 = math.clamp((MovingTime_2 - tbl_upvr_3.ButtonIntensityStart) / tbl_2_upvr.ButtonIntensity, 0, 1)
			if clamped_6 ~= var195_upvr.ButtonIntensity then
				var195_upvr.ButtonIntensity = clamped_6
				for i_2, v_2 in var195_upvr.IntensityColors do
					var195_upvr.ButtonTheme[i_2].Color = v_2[1]:Lerp(v_2[2], clamped_6)
					local _
				end
				module_2_upvr.Button.Refresh(var195_upvr.ExchangeButton.Button, arg2)
			end
			local clamped_3 = math.clamp((MovingTime_2 - tbl_upvr_3.GlintIntensityStart) / tbl_2_upvr.GlintIntensity, 0, 1)
			if clamped_3 ~= var195_upvr.GlintIntensity then
				var195_upvr.GlintIntensity = clamped_3
				if clamped_3 == 0 then
					var195_upvr.GlintTime = 0
				end
				var195_upvr.GlintFrame.BackgroundTransparency = 1 - clamped_3 ^ 2 * 0.75
			end
			for _, v_3 in var195_upvr.Rings do
				local Spec = v_3.Spec
				v_3.Ring.Intensity = math.clamp((MovingTime_2 - Spec.Start) / Spec.Delta, 0, 1)
				local var167
			end
			local clamped_5 = math.clamp((var167 - tbl_upvr_3.SparkRateStart) / tbl_2_upvr.SparkRate, 0, 1)
			if clamped_5 == 0 then
				var195_upvr.SparkPeriod = 0
				var195_upvr.SparkTime = 0
			else
				var195_upvr.SparkPeriod = 1 / tbl_upvr_3.SparkRateMax / clamped_5
			end
		end
		if module_10_upvr.EmSizeDirty or var195_upvr.Dirty then
			local any_ComputeCornerDims_result1 = module_10_upvr.ComputeCornerDims(var195_upvr.ExchangeButton.Button.CornerRadiusOverride)
			var195_upvr.GlintCorner.CornerRadius = any_ComputeCornerDims_result1.RadiusUDim
			for _, v_4 in var195_upvr.Rings do
				local var170 = any_ComputeCornerDims_result1.Radius * v_4.Spec.Scale
				module_upvr.EnergyRing.Resize(v_4.Ring, var170, var170 - any_ComputeCornerDims_result1.Radius)
				local _
			end
			var195_upvr.Dirty = false
		end
		if var195_upvr.ExchangeButton.Changed or var195_upvr.Dirty then
			local ExchangeButton = var195_upvr.ExchangeButton
			local PosX_2 = ExchangeButton.PosX
			local maximum_3 = math.max(ExchangeButton.SizeX, 0)
			local SparkVarianceFactor = tbl_upvr_2.SparkVarianceFactor
			tbl_3_upvr.PosX = NumberRange.new(PosX_2 + maximum_3 * (0.5 - SparkVarianceFactor * 0.5), PosX_2 + maximum_3 * (0.5 + SparkVarianceFactor * 0.5))
			tbl_3_upvr.PosY = ExchangeButton.PosY
		end
		if 0 < var195_upvr.GlintIntensity then
			local var176 = (var195_upvr.GlintTime + arg1) % tbl_2_upvr.GlintCycle
			if var176 < tbl_upvr_3.GlintCyclePeriod or var195_upvr.GlintTime < tbl_upvr_3.GlintCyclePeriod then
				var195_upvr.GlintGradient.Offset = Vector2.new(-1 + 2 * var176 / tbl_upvr_3.GlintCyclePeriod, 0)
			end
			var195_upvr.GlintTime = var176
		end
		for i_5, v_5 in var195_upvr.Rings do
			module_upvr.EnergyRing.Update(v_5.Ring, arg1)
		end
		if 0 < var195_upvr.SparkPeriod then
			local ExchangeButton_4 = var195_upvr.ExchangeButton
			i_5 = ExchangeButton_4.SizeX
			v_5 = 0
			local maximum_2 = math.max(i_5, v_5)
			v_5 = maximum_2 * 0.5
			i_5 = ExchangeButton_4.PosX + v_5
			v_5 = var195_upvr.SparkPeriod
			local var179 = var195_upvr
			var179.SparkTime += arg1
			while v_5 < var195_upvr.SparkTime do
				local any_Create_result1_3 = module_upvr.UIParticle.Create(tbl_3_upvr, arg2)
				any_Create_result1_3.VelocityX = math.clamp((any_Create_result1_3.PosX - i_5) / maximum_2, -1, 1) * 5
				local var181 = var195_upvr
				var181.SparkTime -= v_5
			end
		end
		if 0 < #tbl_upvr.PendingExchanges then
			local CFrame_2 = module_10_upvr.Camera.CFrame
			local Position_2 = CFrame_2.Position
			local LookVector = CFrame_2.LookVector
			v_5 = module_10_upvr
			i_5 = v_5.Camera:ViewportPointToRay(module_10_upvr.SecondOrderProperties.TopbarEnergyPosX, module_10_upvr.SecondOrderProperties.TopbarEnergyPosY)
			v_5 = module_upvr.PositionObjects.Character.Position
			local Origin = i_5.Origin
			local Direction = i_5.Direction
			local any_GetPlaneLineIntersection_result1 = module_4_upvr.GetPlaneLineIntersection(Position_2 + LookVector * math.max((v_5 - Position_2).Magnitude * tbl_upvr_2.TrailPlaneDistanceFactor, tbl_upvr_2.TrailMinimumSpawnDistance), LookVector, Origin, Direction)
			local var188
			if any_GetPlaneLineIntersection_result1 then
				var188 = (any_GetPlaneLineIntersection_result1 - Origin).Magnitude
				var188 = module_upvr_2.Params.WorldOnly
				local workspace_Raycast_result1_2 = workspace:Raycast(Origin, Direction * var188, var188)
				local var190
				local var191
				if workspace_Raycast_result1_2 then
					var190 = workspace_Raycast_result1_2.Position
					var191 = workspace_Raycast_result1_2.Normal
				else
					var190 = any_GetPlaneLineIntersection_result1
					var191 = (v_5 - any_GetPlaneLineIntersection_result1).Unit
				end
				local var192 = -var191
				if math.abs(var192:Dot(Vector3.new(0, 1, 0))) < module_4_upvr.DotTolerance then
					var188 = Vector3.new(0, 1, 0)
				else
					var188 = Vector3.new(1, 0, 0)
				end
				local Unit = var188:Cross(var192).Unit
				var188 = Unit:Cross(var192).Unit
				for _, v_6 in tbl_upvr.PendingExchanges do
					module_upvr.VoucherTrail.Generate_FromVouchers(CFrame.fromMatrix(var190, Unit, var188, var192), v_6)
					local _
				end
				table.clear(tbl_upvr.PendingExchanges)
			end
		end
	end
	return module
end
function var195_upvr() -- Line 509
end
module.RenderStepped = var195_upvr
return module