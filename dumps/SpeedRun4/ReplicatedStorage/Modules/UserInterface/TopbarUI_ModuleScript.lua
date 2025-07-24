-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:03
-- Luau version 6, Types version 3
-- Time taken: 0.014733 seconds

local module_6_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local module_upvr_7 = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_5_upvr = require(Modules:WaitForChild("ClientData"))
local module_4_upvr = require(Modules:WaitForChild("Transparency"))
local module_2_upvr = require(Modules:WaitForChild("Tweens"))
local module_upvr_2 = require(Modules:WaitForChild("UIEffects"))
local module_upvr_9 = require(Modules:WaitForChild("UIShared"))
local module_3_upvr = require(Modules:WaitForChild("Utility"))
local module_upvr_6 = require(Modules:WaitForChild("Worlds"))
module_6_upvr.TimerVisible = not module_upvr.EnergyEnabled
local tbl_upvr = {
	Cash = 1;
	Energy = 2;
}
if require(Modules:WaitForChild("FeatureAccess")).OptIn(script, "OptInTimerStartsEnabled", false, "OptIn") then
	module_6_upvr.TimerVisible = true
end
local tbl_upvr_2 = {
	UI = nil;
	PendingTopbarMessageSpecs = nil;
	TimerActive = false;
	TimerDeficit = 0;
	TimerTime = 0;
}
local var16_upvr = require(Modules:WaitForChild("UIButton")).Button.ButtonTheme_ByCurrencyType[module_upvr_3.PrimaryCurrencyType]
assert(var16_upvr.Idle)
if module_upvr.EnergyEnabled then
	var16_upvr = module_3_upvr.FormatNumberOptions_StandardAbbreviation
else
	var16_upvr = module_3_upvr.FormatNumberOptions_AddCommas
end
local any_GetImageFromMap_result1_upvr = module_upvr_7.GetImageFromMap(module_upvr_7.ImageMapType.Currency_ByCurrencyType, module_upvr_3.PrimaryCurrencyType, module_upvr_7.ImageMapStyle.OutlineHeavy)
local function UICreate_upvr() -- Line 132, Named "UICreate"
	--[[ Upvalues[8]:
		[1]: module_upvr_9 (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_upvr_7 (readonly)
		[4]: any_GetImageFromMap_result1_upvr (readonly)
		[5]: module_5_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: module_upvr (readonly)
		[8]: module_upvr_2 (readonly)
	]]
	local module_upvr_5 = {
		LastCurrency = nil;
		LastEnergy = nil;
		LastStars = nil;
		LastTime = nil;
		LastTimerVisible = nil;
		CurrencyText = "";
		EnergyText = "";
		StarText = "";
		TimerText = "";
		TopbarMessage = nil;
		AccumulationMessages = {};
		MainFlag = module_upvr_9.TextBoundsFlagCreate();
		ComponentFlag = module_upvr_9.TextBoundsFlagCreate();
		ScreenGui = module_3_upvr.I("ScreenGui", module_upvr_9.Properties.ScreenGui, {
			Name = "TopbarUI";
			DisplayOrder = module_upvr_7.DisplayOrder_TopbarUI;
			Parent = module_upvr_9.PlayerGui;
		});
	}
	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(1, 0)
	module_upvr_5.CurrencyButton = module_3_upvr.I("TextButton", module_upvr_9.Properties.Button, {
		Name = "CurrencyButton";
		AnchorPoint = Vector2.new(1, 0.5);
		AutoButtonColor = true;
		BackgroundColor3 = module_upvr_7.TopbarBaseColor;
		BackgroundTransparency = module_upvr_7.TopbarBaseTransparency;
		Selectable = false;
		Parent = module_upvr_5.ScreenGui;
	})
	module_upvr_5.CurrencyIcon = module_3_upvr.I("ImageLabel", {
		Name = "CurrencyIcon";
		Image = any_GetImageFromMap_result1_upvr;
		BackgroundTransparency = 1;
		Parent = module_upvr_5.CurrencyButton;
	})
	module_upvr_5.CurrencyLabel = module_3_upvr.I("TextLabel", module_upvr_9.Properties.Text, {
		Name = "CurrencyLabel";
		FontFace = module_upvr_7.FontFaceNormal;
		TextColor3 = module_upvr_7.TextColor1;
		Parent = module_upvr_5.CurrencyButton;
	})
	module_upvr_5.CurrencyButton.Activated:Connect(function() -- Line 188
		--[[ Upvalues[1]:
			[1]: module_5_upvr (copied, readonly)
		]]
		if module_5_upvr.OnboardingComplete() then
			module_5_upvr.Signals.CurrencyShopRequested:Fire()
		end
	end)
	module_upvr_5.CurrencyBounds = module_upvr_9.CachedTextBounds_FromLabel(module_upvr_5.CurrencyLabel)
	module_upvr_5.CurrencyBounds.Flag = module_upvr_5.MainFlag
	module_upvr_5.CurrencyTween = module_2_upvr.new(module_upvr_5.CurrencyLabel.TextColor3, 2, Enum.EasingStyle.Quart)
	UICorner.Parent = module_upvr_5.CurrencyButton
	if module_upvr.EnergyEnabled then
		module_upvr_5.EnergyFrame = module_3_upvr.I("Frame", {
			Name = "EnergyFrame";
			AnchorPoint = Vector2.new(1, 0.5);
			BackgroundColor3 = module_upvr_7.TopbarBaseColor;
			BackgroundTransparency = module_upvr_7.TopbarBaseTransparency;
			Parent = module_upvr_5.ScreenGui;
		})
		module_upvr_5.EnergyIcon = module_3_upvr.I("ImageLabel", {
			Name = "EnergyIcon";
			Image = module_upvr_7.EnergyImage_Outline_256_16;
			BackgroundTransparency = 1;
			Parent = module_upvr_5.EnergyFrame;
		})
		module_upvr_5.EnergyLabel = module_3_upvr.I("TextLabel", module_upvr_9.Properties.Text, {
			Name = "EnergyLabel";
			FontFace = module_upvr_7.FontFaceNormal;
			TextColor3 = module_upvr_7.TextColor1;
			Parent = module_upvr_5.EnergyFrame;
		})
		module_upvr_5.EnergyRing = module_upvr_2.EnergyRing.Create({
			Parent = module_upvr_5.EnergyFrame;
		})
		module_upvr_5.EnergyRing.DecayRate = 0.25
		module_upvr_5.EnergyBounds = module_upvr_9.CachedTextBounds_FromLabel(module_upvr_5.EnergyLabel)
		module_upvr_5.EnergyBounds.Flag = module_upvr_5.MainFlag
		UICorner:Clone().Parent = module_upvr_5.EnergyFrame
		module_upvr_5.EnergyTween = module_2_upvr.new(module_upvr_5.EnergyLabel.TextColor3, 2, Enum.EasingStyle.Quart)
	end
	module_upvr_5.StarFrame = module_3_upvr.I("Frame", {
		Name = "StarFrame";
		AnchorPoint = Vector2.new(1, 0.5);
		BackgroundColor3 = module_upvr_7.TopbarBaseColor;
		BackgroundTransparency = module_upvr_7.TopbarBaseTransparency;
		Parent = module_upvr_5.ScreenGui;
	})
	module_upvr_5.StarIcon = module_3_upvr.I("ImageLabel", {
		Name = "StarIcon";
		Image = module_upvr_7.StarsIconImage;
		BackgroundTransparency = 1;
		Parent = module_upvr_5.StarFrame;
	})
	module_upvr_5.StarLabel = module_3_upvr.I("TextLabel", module_upvr_9.Properties.Text, {
		Name = "StarLabel";
		FontFace = module_upvr_7.FontFaceNormal;
		TextColor3 = module_upvr_7.TextColor1;
		Parent = module_upvr_5.StarFrame;
	})
	module_upvr_5.StarBounds = module_upvr_9.CachedTextBounds_FromLabel(module_upvr_5.StarLabel)
	module_upvr_5.StarBounds.Flag = module_upvr_5.MainFlag
	UICorner:Clone().Parent = module_upvr_5.StarFrame
	module_upvr_5.TimerFrame = module_3_upvr.I("Frame", {
		Name = "TimerFrame";
		AnchorPoint = Vector2.new(1, 0.5);
		BackgroundColor3 = module_upvr_7.TopbarBaseColor;
		BackgroundTransparency = module_upvr_7.TopbarBaseTransparency;
		Parent = module_upvr_5.ScreenGui;
	})
	module_upvr_5.TimerLabel = module_3_upvr.I("TextLabel", module_upvr_9.Properties.Text, {
		Name = "TimerLabel";
		AnchorPoint = Vector2.one * 0.5;
		FontFace = module_upvr_7.FontFaceNormal;
		Position = UDim2.fromScale(0.5, 0.5);
		TextColor3 = module_upvr_7.TextColor1;
		TextXAlignment = Enum.TextXAlignment.Left;
		Parent = module_upvr_5.TimerFrame;
	})
	module_upvr_5.TimerBounds = module_upvr_9.CachedTextBounds_FromLabel(module_upvr_5.TimerLabel)
	module_upvr_5.TimerBounds.Flag = module_upvr_5.MainFlag
	UICorner:Clone().Parent = module_upvr_5.TimerFrame
	if module_upvr_7.TopbarStylePending then
		module_upvr_7.TopbarStylePending:Once(function() -- Line 300
			--[[ Upvalues[2]:
				[1]: module_upvr_5 (readonly)
				[2]: module_upvr_7 (copied, readonly)
			]]
			for _, v in {module_upvr_5.CurrencyButton, module_upvr_5.StarFrame, module_upvr_5.TimerFrame, module_upvr_5.EnergyFrame} do
				v.BackgroundColor3 = module_upvr_7.TopbarBaseColor
				v.BackgroundTransparency = module_upvr_7.TopbarBaseTransparency
			end
		end)
	end
	return module_upvr_5
end
local function AccumulationMessageCreate_upvr(arg1, arg2, arg3) -- Line 315, Named "AccumulationMessageCreate"
	--[[ Upvalues[5]:
		[1]: module_2_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_upvr_9 (readonly)
		[4]: module_upvr_7 (readonly)
		[5]: module_4_upvr (readonly)
	]]
	local module = {
		Accumulation = 0;
		BounceTween = module_2_upvr.new(1, 0.125, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		VisibleTween = module_2_upvr.new(0, 4, Enum.EasingStyle.Quint, Enum.EasingDirection.In);
	}
	module_2_upvr.Begin(module.VisibleTween, arg2, 1)
	local tbl_2 = {
		AnchorPoint = Vector2.xAxis;
		FontFace = module_upvr_7.FontFaceBoldItalic;
		Position = UDim2.fromScale(0.95, 1.5);
		Size = UDim2.fromScale(2, 1);
	}
	tbl_2.TextColor3 = arg1
	tbl_2.TextXAlignment = Enum.TextXAlignment.Right
	tbl_2.Parent = arg3
	module.Label = module_3_upvr.I("TextLabel", module_upvr_9.Properties.Text_Scaled, tbl_2)
	module.Stroke = module_3_upvr.I("UIStroke", module_upvr_9.Properties.StrokeText, {
		Color = module_upvr_7.TextStrokeColor1;
		Thickness = module_upvr_9.ScaledSize.StrokeVeryThin;
		Parent = module.Label;
	})
	module.CachedOpacities = module_4_upvr.Create(module.Label)
	return module
end
local function AccumulationMessageAccumulate_upvr(arg1, arg2, arg3) -- Line 351, Named "AccumulationMessageAccumulate"
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	arg1.Accumulation += arg3
	local var41 = arg1.Accumulation // 1
	if arg1.Change ~= var41 then
		arg1.Change = var41
		local any_FormatNumber_result1 = module_3_upvr.FormatNumber(var41, module_3_upvr.FormatNumberOptions_StandardAbbreviation)
		if 0 < var41 then
			any_FormatNumber_result1 = '+'..any_FormatNumber_result1
		end
		arg1.Label.Text = any_FormatNumber_result1
		arg1.BounceTween.EasingDirection = Enum.EasingDirection.Out
		module_2_upvr.Overwrite(arg1.BounceTween, arg2, 1, 0)
		module_2_upvr.Reset(arg1.VisibleTween, arg2)
	end
end
local function AccumulationMessageUpdate_upvr(arg1, arg2) -- Line 381, Named "AccumulationMessageUpdate"
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_upvr_9 (readonly)
	]]
	module_2_upvr.Update(arg1.BounceTween, arg2)
	module_2_upvr.Update(arg1.VisibleTween, arg2)
	local Completed = arg1.VisibleTween.Completed
	if Completed then
		arg1.Label:Destroy()
		return Completed
	end
	if arg1.BounceTween.Completed and arg1.BounceTween.TargetValue == 0 then
		arg1.BounceTween.EasingDirection = Enum.EasingDirection.In
		module_2_upvr.Begin(arg1.BounceTween, arg2, 1)
	end
	if arg1.BounceTween.Dirty then
		arg1.Label.Position = UDim2.fromScale(0.95, 1.25 + 0.25 * arg1.BounceTween.Value)
	end
	if arg1.VisibleTween.Dirty then
		module_4_upvr.Apply(arg1.CachedOpacities, arg1.VisibleTween.Value)
	end
	if module_upvr_9.EmSizeDirty then
		arg1.Stroke.Thickness = module_upvr_9.ScaledSize.StrokeVeryThin
	end
	return Completed
end
function module_6_upvr.DisplayTopbarMessage(arg1) -- Line 423
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	tbl_upvr_2.PendingTopbarMessageSpecs = table.clone(arg1)
end
function module_6_upvr.TimerReset(arg1) -- Line 427
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_6_upvr (readonly)
	]]
	tbl_upvr_2.TimerDeficit = 0
	tbl_upvr_2.TimerTime = 0
	if arg1 then
		module_6_upvr.TimerSetActive(false)
	end
end
function module_6_upvr.TimerSetActive(arg1) -- Line 437
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	tbl_upvr_2.TimerActive = arg1
end
module_5_upvr.Signals.LevelEnded:Connect(function(arg1, arg2, arg3, arg4) -- Line 443
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	if true then
		module_6_upvr.TimerSetActive(false)
		tbl_upvr_2.TimerDeficit = 0
		tbl_upvr_2.TimerTime = arg3
	end
end)
module_5_upvr.Signals.LevelStarted:Connect(function(arg1, arg2) -- Line 460
	--[[ Upvalues[3]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_5_upvr (readonly)
	]]
	if not tbl_upvr_2.TimerActive then
		module_6_upvr.TimerReset()
	end
	tbl_upvr_2.TimerDeficit = module_5_upvr.Now - arg2
	module_6_upvr.TimerSetActive(true)
end)
local module_upvr_8 = require(Modules:WaitForChild("BUEGameClient"))
local function RenderStepped_upvr(arg1) -- Line 481, Named "PostLevelChangedMessage"
	--[[ Upvalues[3]:
		[1]: module_upvr_6 (readonly)
		[2]: module_upvr_8 (readonly)
		[3]: tbl_upvr_2 (readonly)
	]]
	local tbl = {{
		Text = module_upvr_6.LevelGetFormattedName(arg1, module_upvr_6.FormattedNameType.Title, true);
	}}
	local any_GetOwnedCollectibleCountForLevel_result1 = module_upvr_8.GetOwnedCollectibleCountForLevel(arg1)
	if any_GetOwnedCollectibleCountForLevel_result1 then
		tbl[#tbl + 1] = {
			Text = string.format("%i/%i", any_GetOwnedCollectibleCountForLevel_result1, arg1.Collectibles);
			Icon = module_upvr_8.GetEventIcon();
		}
	end
	tbl_upvr_2.PendingTopbarMessageSpecs = tbl
end
local var52_upvw
var52_upvw = module_5_upvr.Signals.LevelChanged:Connect(function(arg1) -- Line 516
	--[[ Upvalues[4]:
		[1]: var52_upvw (read and write)
		[2]: module_upvr_6 (readonly)
		[3]: module_5_upvr (readonly)
		[4]: RenderStepped_upvr (readonly)
	]]
	if not var52_upvw.Connected then
	elseif arg1 ~= module_upvr_6.DefaultLevel then
		var52_upvw:Disconnect()
		module_5_upvr.Signals.LevelChanged:Connect(RenderStepped_upvr)
		RenderStepped_upvr(arg1)
	end
end)
RenderStepped_upvr = module_5_upvr.Signals.EnergyExchanged
RenderStepped_upvr = RenderStepped_upvr:Connect
RenderStepped_upvr(function() -- Line 532
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	if tbl_upvr_2.UI and module_upvr.EnergyEnabled then
		tbl_upvr_2.UI.EnergyRing.Intensity = 0
	end
end)
RenderStepped_upvr = module_5_upvr.Signals.CurrencyVoucherRedeemed
local assert_result1_upvw = assert(var16_upvr.Idle.Highlight)
RenderStepped_upvr = RenderStepped_upvr:Connect
RenderStepped_upvr(function(arg1) -- Line 540
	--[[ Upvalues[8]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: tbl_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_2_upvr (readonly)
		[6]: assert_result1_upvw (read and write)
		[7]: AccumulationMessageCreate_upvr (readonly)
		[8]: AccumulationMessageAccumulate_upvr (readonly)
	]]
	if tbl_upvr_2.UI and arg1.CurrencyType == module_upvr_3.PrimaryCurrencyType then
		local Cash = tbl_upvr.Cash
		local os_clock_result1_2 = os.clock()
		local UI = tbl_upvr_2.UI
		module_2_upvr.Reset(UI.CurrencyTween, os_clock_result1_2, assert_result1_upvw)
		local var59 = UI.AccumulationMessages[Cash]
		if not var59 then
			var59 = AccumulationMessageCreate_upvr(assert_result1_upvw, os_clock_result1_2, UI.CurrencyLabel)
			UI.AccumulationMessages[Cash] = var59
		end
		AccumulationMessageAccumulate_upvr(var59, os_clock_result1_2, arg1.Amount)
	end
end)
RenderStepped_upvr = module_5_upvr.Signals.EnergyRewardReceived
RenderStepped_upvr = RenderStepped_upvr:Connect
RenderStepped_upvr(function(arg1) -- Line 570
	--[[ Upvalues[6]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: module_upvr_7 (readonly)
		[5]: AccumulationMessageCreate_upvr (readonly)
		[6]: AccumulationMessageAccumulate_upvr (readonly)
	]]
	if tbl_upvr_2.UI then
		local Energy = tbl_upvr.Energy
		local os_clock_result1 = os.clock()
		local UI_2 = tbl_upvr_2.UI
		if UI_2.EnergyTween then
			module_2_upvr.Reset(UI_2.EnergyTween, os_clock_result1, module_upvr_7.EnergyColor1)
		end
		local var64 = UI_2.AccumulationMessages[Energy]
		if not var64 then
			var64 = AccumulationMessageCreate_upvr(module_upvr_7.EnergyColor1, os_clock_result1, UI_2.EnergyLabel)
			UI_2.AccumulationMessages[Energy] = var64
		end
		AccumulationMessageAccumulate_upvr(var64, os_clock_result1, arg1)
	end
end)
local module_upvr_4 = require(Modules:WaitForChild("UserInterface"):WaitForChild("BloxBizBridge"))
function RenderStepped_upvr() -- Line 601, Named "IsOpen"
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	return not module_upvr_4.CatalogOpen
end
module_6_upvr.IsOpen = RenderStepped_upvr
local any_IsTenFootInterface_result1_upvr = game:GetService("GuiService"):IsTenFootInterface()
local any_FormatNumber_Timer_result1_upvr = module_3_upvr.FormatNumber_Timer(0)
function RenderStepped_upvr(arg1, arg2) -- Line 605, Named "RenderStepped"
	--[[ Upvalues[15]:
		[1]: module_5_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: UICreate_upvr (readonly)
		[5]: module_upvr_3 (readonly)
		[6]: module_3_upvr (readonly)
		[7]: module_upvr_9 (readonly)
		[8]: module_2_upvr (readonly)
		[9]: any_IsTenFootInterface_result1_upvr (readonly)
		[10]: module_upvr_7 (readonly)
		[11]: var16_upvr (readonly)
		[12]: module_upvr (readonly)
		[13]: module_upvr_2 (readonly)
		[14]: any_FormatNumber_Timer_result1_upvr (readonly)
		[15]: AccumulationMessageUpdate_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("CFR_TopbarUI")
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 2 start (CF ANALYSIS FAILED)
	module_5_upvr.Flags.TimerResetPending = false
	module_6_upvr.TimerReset(true)
	-- KONSTANTERROR: [10] 8. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 16. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 16. Error Block 3 end (CF ANALYSIS FAILED)
end
module_6_upvr.RenderStepped = RenderStepped_upvr
return module_6_upvr