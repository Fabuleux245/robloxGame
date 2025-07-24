-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:10
-- Luau version 6, Types version 3
-- Time taken: 0.006967 seconds

local module_upvr_3 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("Tweens"))
local module_3_upvr = require(Modules:WaitForChild("UIShared"))
local tbl_upvr = {
	ScreenUI = nil;
}
local tbl_2_upvr = {
	Adornment = " .";
	Count = 3;
	Period = 0.25;
	Text = "Loading Level";
}
local tbl_upvr_2 = {
	Rotation = 10;
	Period = 2;
}
local module_upvr_4 = require(Modules:WaitForChild("Utility"))
local module_4_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local module_upvr = require(Modules:WaitForChild("Transparency"))
local function ScreenUICreate_upvr() -- Line 44, Named "ScreenUICreate"
	--[[ Upvalues[7]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr_4 (readonly)
		[4]: module_3_upvr (readonly)
		[5]: module_4_upvr (readonly)
		[6]: tbl_upvr_2 (readonly)
		[7]: module_upvr (readonly)
	]]
	local module = {
		Opening = true;
		OpenTime = 0;
		Adornments = tbl_2_upvr.Count;
		GradientCycle = 0;
		TextCycle = 0;
		PositionTween = module_upvr_2.new(-1, 0.375);
	}
	module.PositionTween.RateType = module_upvr_2.RateType.Speed
	module.ScreenGui = module_upvr_4.I("ScreenGui", module_3_upvr.Properties.ScreenGui, {
		Name = "LoadingScreenUI";
		DisplayOrder = module_4_upvr.DisplayOrder_LoadingScreenUI;
		Parent = module_3_upvr.PlayerGui;
	})
	module.LeadingEdge = module_upvr_4.I("ImageLabel", {
		BackgroundTransparency = 1;
		Image = module_4_upvr.Stripes_Slope2;
		ImageColor3 = module_4_upvr.LoadingScreenColor;
		Parent = module.ScreenGui;
	})
	module.TrailingEdge = module_upvr_4.C(module.LeadingEdge, {
		ImageRectOffset = Vector2.one * 1024;
		ImageRectSize = Vector2.one * -1024;
		Parent = module.ScreenGui;
	})
	module.Cover = module_upvr_4.I("Frame", {
		BackgroundColor3 = module_4_upvr.LoadingScreenColor;
		BorderSizePixel = 0;
		Parent = module.ScreenGui;
	})
	module.Label = module_upvr_4.I("TextLabel", module_3_upvr.Properties.Text, module_3_upvr.Properties.Centered, {
		FontFace = module_4_upvr.FontFaceItalic;
		Text = tbl_2_upvr.Text..string.rep(tbl_2_upvr.Adornment, tbl_2_upvr.Count);
		TextColor3 = module_4_upvr.TextColor1;
		Parent = module.Cover;
	})
	module.Bounds = module_3_upvr.CachedTextBounds_FromLabel(module.Label)
	module.Stroke = module_upvr_4.I("UIStroke", module_3_upvr.Properties.StrokeText, {
		Color = module_4_upvr.TextStrokeColor1;
		Parent = module.Label;
	})
	module.Gradient = module_upvr_4.I("UIGradient", {
		Color = ColorSequence.new({ColorSequenceKeypoint.new(0, module_4_upvr.Gray70), ColorSequenceKeypoint.new(0.5, module_4_upvr.White), ColorSequenceKeypoint.new(1, module_4_upvr.Gray70)});
		Rotation = tbl_upvr_2.Rotation;
		Parent = module.Label;
	})
	module.CachedOpacities = module_upvr.Create(module.ScreenGui)
	return module
end
function module_upvr_3.IsActive() -- Line 154
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local any_IsOpen_result1 = module_upvr_3.IsOpen()
	if not any_IsOpen_result1 then
		if tbl_upvr.ScreenUI == nil then
			any_IsOpen_result1 = false
		else
			any_IsOpen_result1 = true
		end
	end
	return any_IsOpen_result1
end
function module_upvr_3.IsCovering() -- Line 158
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var22 = false
	if tbl_upvr.ScreenUI ~= nil then
		if math.abs(tbl_upvr.ScreenUI.PositionTween.Value) > 0.125 then
			var22 = false
		else
			var22 = true
		end
	end
	return var22
end
local module_2_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
function module_upvr_3.IsOpen() -- Line 163
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.LoadingScreenUIGroup.Active
end
function module_upvr_3.RenderStepped(arg1, arg2) -- Line 167
	--[[ Upvalues[7]:
		[1]: module_upvr_3 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: ScreenUICreate_upvr (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: tbl_upvr_2 (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: module_3_upvr (readonly)
	]]
	local any_IsOpen_result1_2 = module_upvr_3.IsOpen()
	if any_IsOpen_result1_2 and not tbl_upvr.ScreenUI then
		tbl_upvr.ScreenUI = ScreenUICreate_upvr()
	end
	local var25
	if tbl_upvr.ScreenUI then
		local ScreenUI = tbl_upvr.ScreenUI
		if any_IsOpen_result1_2 or ScreenUI.OpenTime < 1 then
			var25 = 0
		else
			var25 = 1
		end
		module_upvr_2.Tween(ScreenUI.PositionTween, arg2, var25)
		if module_upvr_2.IsAtTarget(ScreenUI.PositionTween, 1) then
			ScreenUI.ScreenGui:Destroy()
			tbl_upvr.ScreenUI = nil
			return
		end
		if ScreenUI.PositionTween.Completed then
			ScreenUI.Opening = false
			ScreenUI.OpenTime += arg1
		end
		var25 = ScreenUI.GradientCycle
		var25 = tbl_upvr_2.Period
		ScreenUI.GradientCycle = (var25 + arg1) % var25
		var25 = (2) * (ScreenUI.GradientCycle / tbl_upvr_2.Period) - 1
		ScreenUI.Gradient.Offset = Vector2.new(var25, 0)
		ScreenUI.TextCycle += arg1
		var25 = tbl_2_upvr
		if var25.Period <= ScreenUI.TextCycle then
			repeat
				var25 = tbl_2_upvr
				ScreenUI.TextCycle -= var25.Period
				var25 = ScreenUI.Adornments
				var25 = tbl_2_upvr.Count + 1
				ScreenUI.Adornments = (var25 + 1) % var25
				var25 = tbl_2_upvr
			until ScreenUI.TextCycle < var25.Period
			var25 = #tbl_2_upvr.Text
			ScreenUI.Label.MaxVisibleGraphemes = var25 + #tbl_2_upvr.Adornment * ScreenUI.Adornments
		end
		var25 = module_3_upvr.EmSize
		local var27 = 4 * var25
		var25 = module_3_upvr
		var25 = ScreenUI.Bounds
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var25 = module_3_upvr.ViewportSizeDirty
			return var25
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var25 = ScreenUI.PositionTween.Dirty
			return var25
		end
		if var25.CachedTextBoundsUpdate(var25, ScreenUI.Label.Text, var27) or INLINED() or INLINED_2() then
			var25 = module_3_upvr.DeviceSize.X
			local Y = module_3_upvr.DeviceSize.Y
			local any_DimTrackerCreate_result1 = module_3_upvr.DimTrackerCreate()
			module_3_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, module_3_upvr.DeviceInsetTopLeft.X - Y + (Y + var25) * ScreenUI.PositionTween.Value)
			module_3_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, ScreenUI.TrailingEdge, 0, Y)
			module_3_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, ScreenUI.Cover, 0, var25)
			module_3_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, ScreenUI.LeadingEdge, 0, Y)
			local tbl = {
				Position = UDim.new(0, 0);
				Size = UDim.new(0, Y);
			}
			module_3_upvr.DimTrackerApply(any_DimTrackerCreate_result1, {
				[ScreenUI.TrailingEdge] = tbl;
				[ScreenUI.Cover] = tbl;
				[ScreenUI.LeadingEdge] = tbl;
			})
			ScreenUI.Label.Size = UDim2.fromOffset(ScreenUI.Bounds.X, ScreenUI.Bounds.Y)
			ScreenUI.Label.TextSize = var27
			ScreenUI.Stroke.Thickness = module_3_upvr.ScaledSize.StrokeThin
		end
	end
end
return module_upvr_3