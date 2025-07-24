-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:19
-- Luau version 6, Types version 3
-- Time taken: 0.013360 seconds

local module_4_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_5 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_7_upvr = require(Modules:WaitForChild("ClientData"))
local module_6_upvr = require(Modules:WaitForChild("Transparency"))
local module_5_upvr = require(Modules:WaitForChild("Tweens"))
local module_2_upvr = require(Modules:WaitForChild("UIButton"))
local module_upvr_4 = require(Modules:WaitForChild("UIEffects"))
local module_upvr_7 = require(Modules:WaitForChild("UIShared"))
local module_8_upvr = require(Modules:WaitForChild("Utility"))
local module_upvr_3 = require(Modules:WaitForChild("Worlds"))
local module_3_upvr = require(Modules:WaitForChild("LevelLoader"):WaitForChild("LevelCommon"))
local tbl_6_upvr = {
	LevelsInProximity = {};
	LevelComplete = false;
	UI = nil;
}
local tbl_4_upvr = {
	AutoButtonAspectRatio = 1.5;
	AutoButtonScaleY = 0.65;
	ButtonAspectRatioMin = 4.863636363636363;
	CompletionsTextEm = 1.25;
	CountTextEm = 0.75;
	HeaderTextEm = 1.925;
	InfoTextEm = 1.125;
	PaddingEm = 1;
	PaddingTextEm = 0.375;
	PromptPaddingEm = 0.5;
	PromptTextEm = 1.25;
	RewardTextEm = 1.5;
	TitleTextEm = 1.5;
}
local tbl_5_upvr = {
	[true] = module_2_upvr.Button.Themes.Success;
	[false] = module_2_upvr.Button.Themes.Dull;
}
local tbl_upvr = {
	InsufficientFunds = 1;
}
local tbl_3_upvr = {
	LevelIncomplete = 1;
	BeingCarried = 2;
}
local var20 = module_upvr.FrontEndNames.Items_ByItemType[module_upvr_5.ItemType.Level]
local var24_upvw = {
	AutoButton_ByEnabled = {
		[true] = "On";
		[false] = "Off";
	};
	AutoProgress = "Auto Continue";
	BuyEligible = string.format("Unlock %s", var20.Singular.Proper);
	BuyIneligible_ByReason = {};
	Count = "(and %s other%s)";
	CompletionHeader = string.format("You beat %s %%i!", var20.Singular.Proper);
	CompletionCount = "Total Times Beaten: %s";
	ContinueEligible = "Continue";
	Exchange = string.format("You don't have enough %s.\nSell your Energy to get more!", module_upvr.FrontEndNames.Currency_ByCurrencyType[module_upvr_5.PrimaryCurrencyType].Plural.Proper);
	Info = "To progress here by yourself, you'll also need to pay for the %s %s you passed so you own them.";
	ReturnEligible = string.format("Re-run %s", var20.Singular.Proper);
	ReturnIneligible_ByReason = {
		[tbl_3_upvr.LevelIncomplete] = "Touch Gate To Finish";
		[tbl_3_upvr.BeingCarried] = "Carrier In Control";
	};
	ReturnIneligible_Header = string.format("Touch the Gate to finish the %s!", var20.Singular.Proper);
	Reward = "+%s";
	RewardInfo = "Finish Bonus:";
	UnlockAvailable = string.format("Unlock %s %%i:", var20.Singular.Proper);
	Title = "Hey, did someone help you get here? 😉";
}
local function _(arg1) -- Line 164, Named "GetBuyEligibility"
	--[[ Upvalues[3]:
		[1]: module_upvr_5 (readonly)
		[2]: module_7_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local var25 = false
	local var26
	local DisplayedDetails = arg1.DisplayedDetails
	if DisplayedDetails and not DisplayedDetails.Owned and DisplayedDetails.CurrencyType and DisplayedDetails.Cost then
		if not module_upvr_5.SaveDataCanAfford(module_7_upvr.LocalSaveData, DisplayedDetails.CurrencyType, DisplayedDetails.Cost) then
			var26 = tbl_upvr.InsufficientFunds
			return var25, var26
		end
		var25 = true
	end
	return var25, var26
end
local function GetReturnEligibility_upvr() -- Line 191, Named "GetReturnEligibility"
	--[[ Upvalues[4]:
		[1]: module_3_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: module_upvr_5 (readonly)
	]]
	local var28 = false
	local var29 = module_3_upvr.Levels_ByLevelData[module_7_upvr.LocalCurrentLevel]
	local var30
	if var29 == nil or not var29.Finished then
		var30 = tbl_3_upvr.LevelIncomplete
		return var28, var30
	end
	if module_upvr_5.CarryStateIsCarried(module_7_upvr.LocalCarryState) then
		var30 = tbl_3_upvr.BeingCarried
		return var28, var30
	end
	return true, var30
end
local function _(arg1) -- Line 216, Named "GetCurrencyImage"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.GetImageFromMap(module_upvr.ImageMapType.Currency_ByCurrencyType, arg1, module_upvr.ImageMapStyle.OutlineHeavy)
end
local tbl_upvr_2 = {2, 0.5, 0.5}
local function ExchangePromptCreate_upvr(arg1) -- Line 234, Named "ExchangePromptCreate"
	--[[ Upvalues[6]:
		[1]: module_5_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: module_upvr_7 (readonly)
		[4]: module_upvr (readonly)
		[5]: var24_upvw (read and write)
		[6]: module_6_upvr (readonly)
	]]
	local module_9 = {
		Cycle = 1;
		Time = 0;
		VisibleTween = module_5_upvr.new(1, 0.375, Enum.EasingStyle.Quart);
		Icon = module_8_upvr.I("ImageLabel", module_upvr_7.Properties.Image, {
			Image = module_upvr.ChevronRight_Outline_256_16;
			ScaleType = Enum.ScaleType.Stretch;
			Parent = arg1.ScreenGui;
		});
	}
	local any_TextBoundsLabelCreate_result1_3, any_TextBoundsLabelCreate_result2_3 = module_upvr_7.TextBoundsLabelCreate(arg1.ScreenGui, var24_upvw.Exchange)
	module_9.PromptLabel = any_TextBoundsLabelCreate_result1_3
	module_9.PromptBounds = any_TextBoundsLabelCreate_result2_3
	module_9.PromptLabel.TextColor3 = module_upvr.EnergyColor1
	module_9.PromptLabel.TextXAlignment = Enum.TextXAlignment.Right
	module_9.PromptStroke = module_8_upvr.I("UIStroke", module_upvr_7.Properties.StrokeText, {
		Color = module_upvr.TextStrokeColor1;
		Parent = module_9.PromptLabel;
	})
	module_9.CachedOpacities = module_6_upvr.Create(module_9.Icon)
	module_6_upvr.Add(module_9.CachedOpacities, module_9.PromptLabel)
	module_6_upvr.Apply(module_9.CachedOpacities, module_9.VisibleTween.Value)
	return module_9
end
local function _(arg1) -- Line 274, Named "ExchangePromptDestroy"
	arg1.Icon:Destroy()
	arg1.PromptLabel:Destroy()
end
local function UICreate_upvr(arg1) -- Line 280, Named "UICreate"
	--[[ Upvalues[5]:
		[1]: module_5_upvr (readonly)
		[2]: module_upvr_7 (readonly)
		[3]: module_8_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: var24_upvw (read and write)
	]]
	local module = {
		ButtonsVisible = false;
		DetailsDirty = true;
		Expired = false;
		AutoButton_ByEnable = {};
		BuyButton = nil;
		ReturnButton = nil;
		DisplayedDetails = nil;
		EligibilityDetails = {
			Buy = false;
			Return = false;
		};
		ExchangePrompt = nil;
		Request = nil;
		CompletionsText = nil;
		CountText = nil;
		ExpressedHeaderText = nil;
		HeaderText_Complete = nil;
		HeaderText_Unlock = nil;
		InfoText = nil;
		PriceText = nil;
		RewardText = nil;
		TitleText = nil;
		InsetY = 0;
		SizeX = 0;
		SizeY = 0;
		UsedSizeX = 0;
		UsedSizeY = 0;
		SizeXTween = module_5_upvr.new(0, 0.375, Enum.EasingStyle.Quart);
		SizeYTween = module_5_upvr.new(0, 0.375, Enum.EasingStyle.Quart);
		Fireworks = nil;
		Flag = module_upvr_7.TextBoundsFlagCreate();
		ScreenGui = module_8_upvr.I("ScreenGui", module_upvr_7.Properties.ScreenGui, {
			Name = "LevelPurchaseUI";
			DisplayOrder = module_upvr.DisplayOrder_LevelPurchaseUI;
			Parent = module_upvr_7.PlayerGui;
		});
		Frame = module_8_upvr.I("Frame", {
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundColor3 = module_upvr.BackgroundColor1;
			BackgroundTransparency = module_upvr.BackgroundTransparency1;
			ClipsDescendants = true;
			ZIndex = 1000;
			Parent = module.ScreenGui;
		});
		FrameCorner = module_8_upvr.I("UICorner", {
			Parent = module.Frame;
		});
		Wrapper = module_8_upvr.I("Frame", {
			AnchorPoint = Vector2.xAxis * 0.5;
			BackgroundTransparency = 1;
			ClipsDescendants = true;
			Position = UDim2.fromScale(0.5, 0);
			Parent = module.Frame;
		});
		Background = module_8_upvr.I("Frame", {
			BackgroundColor3 = module_upvr.BackgroundColor2;
			ZIndex = -1000;
			Parent = module.Wrapper;
		});
		BackgroundCorner = module_8_upvr.I("UICorner", {
			Parent = module.Background;
		});
	}
	local any_TextBoundsLabelCreate_result1_7, any_TextBoundsLabelCreate_result2_7 = module_upvr_7.TextBoundsLabelCreate(module.Wrapper, var24_upvw.AutoProgress, module.Flag)
	module.AutoLabel = any_TextBoundsLabelCreate_result1_7
	module.AutoBounds = any_TextBoundsLabelCreate_result2_7
	local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2_6 = module_upvr_7.TextBoundsLabelCreate(module.Wrapper, module.CompletionsText, module.Flag)
	module.CompletionsLabel = any_TextBoundsLabelCreate_result1
	module.CompletionsBounds = any_TextBoundsLabelCreate_result2_6
	local any_TextBoundsLabelCreate_result1_2, any_TextBoundsLabelCreate_result2_8 = module_upvr_7.TextBoundsLabelCreate(module.Wrapper, module.CountText, module.Flag)
	module.CountLabel = any_TextBoundsLabelCreate_result1_2
	module.CountBounds = any_TextBoundsLabelCreate_result2_8
	local any_TextBoundsLabelCreate_result1_4, any_TextBoundsLabelCreate_result2_10 = module_upvr_7.TextBoundsLabelCreate(module.Wrapper, nil, module.Flag)
	module.HeaderLabel = any_TextBoundsLabelCreate_result1_4
	module.HeaderBounds = any_TextBoundsLabelCreate_result2_10
	local any_TextBoundsLabelCreate_result1_6, any_TextBoundsLabelCreate_result2_5 = module_upvr_7.TextBoundsLabelCreate(module.Wrapper, module.InfoText, module.Flag)
	module.InfoLabel = any_TextBoundsLabelCreate_result1_6
	module.InfoBounds = any_TextBoundsLabelCreate_result2_5
	local any_TextBoundsLabelCreate_result1_10, any_TextBoundsLabelCreate_result2_9 = module_upvr_7.TextBoundsLabelCreate(module.Wrapper, module.PriceText, module.Flag)
	module.PriceLabel = any_TextBoundsLabelCreate_result1_10
	module.PriceBounds = any_TextBoundsLabelCreate_result2_9
	local any_TextBoundsLabelCreate_result1_9, any_TextBoundsLabelCreate_result2_2 = module_upvr_7.TextBoundsLabelCreate(module.Wrapper, var24_upvw.RewardInfo, module.Flag)
	module.RewardInfoLabel = any_TextBoundsLabelCreate_result1_9
	module.RewardInfoBounds = any_TextBoundsLabelCreate_result2_2
	local any_TextBoundsLabelCreate_result1_5, any_TextBoundsLabelCreate_result2_4 = module_upvr_7.TextBoundsLabelCreate(module.Wrapper, module.RewardText, module.Flag, nil, module_upvr.EnergyColor1)
	module.RewardLabel = any_TextBoundsLabelCreate_result1_5
	module.RewardBounds = any_TextBoundsLabelCreate_result2_4
	local any_TextBoundsLabelCreate_result1_8, any_TextBoundsLabelCreate_result2 = module_upvr_7.TextBoundsLabelCreate(module.Wrapper, module.TitleText, module.Flag)
	module.TitleLabel = any_TextBoundsLabelCreate_result1_8
	module.TitleBounds = any_TextBoundsLabelCreate_result2
	module.CurrencyIcon = module_8_upvr.I("ImageLabel", module_upvr_7.Properties.Image, {
		Parent = module.Wrapper;
	})
	module.RewardIcon = module_8_upvr.I("ImageLabel", module_upvr_7.Properties.Image, {
		Image = module_upvr.EnergyImage_Outline_256_16;
		Parent = module.Wrapper;
	})
	return module
end
local function _(arg1) -- Line 430, Named "RemoveFireworks"
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	if arg1.Fireworks then
		local UIFireworks_2 = arg1.Fireworks.UIFireworks
		module_upvr_4.UIFireworks.FadeSounds(UIFireworks_2, 1)
		module_upvr_4.UIFireworks.Destroy(UIFireworks_2, true)
	end
end
local module_upvr_10 = require(Modules:WaitForChild("NetworkRequestUtility"))
local function CreateButtons_upvr(arg1) -- Line 441, Named "CreateButtons"
	--[[ Upvalues[9]:
		[1]: var24_upvw (read and write)
		[2]: module_7_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: tbl_5_upvr (readonly)
		[5]: tbl_4_upvr (readonly)
		[6]: module_upvr_4 (readonly)
		[7]: module_upvr_5 (readonly)
		[8]: module_upvr_10 (readonly)
		[9]: module_upvr (readonly)
	]]
	for i_upvr, v in var24_upvw.AutoButton_ByEnabled do
		local var71 = arg1.AutoButton_ByEnable[i_upvr]
		if not var71 then
			if module_7_upvr.Flags.AutoProgressLevels ~= i_upvr then
				var71 = false
			else
				var71 = true
			end
			local any_CreateFancy_result1 = module_2_upvr.Button.CreateFancy(arg1.Wrapper, tbl_5_upvr[var71], {
				Text = v;
			})
			any_CreateFancy_result1.EmScale = tbl_4_upvr.AutoButtonScaleY
			any_CreateFancy_result1.Button.Activated:Connect(function() -- Line 459
				--[[ Upvalues[2]:
					[1]: module_7_upvr (copied, readonly)
					[2]: i_upvr (readonly)
				]]
				module_7_upvr.Flags.AutoProgressLevels = i_upvr
			end)
			arg1.AutoButton_ByEnable[i_upvr] = any_CreateFancy_result1
		end
	end
	if not arg1.BuyButton then
		v = module_2_upvr
		i_upvr = v.Button
		v = module_2_upvr.Button
		i_upvr = v.Themes
		i_upvr = {}
		v = arg1.CurrencyIcon.Image
		i_upvr.Image = v
		local any_InlineIcon_result1_upvr = i_upvr.Common.Create.InlineIcon(arg1.Wrapper, i_upvr.Dull, i_upvr)
		any_InlineIcon_result1_upvr.Bounds.Flag = arg1.Flag
		any_InlineIcon_result1_upvr.Input.Enabled = false
		local function ReturnToStart_upvr() -- Line 479, Named "ClearRequest"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.Request = nil
		end
		local function BuyNextLevel() -- Line 483
			--[[ Upvalues[7]:
				[1]: arg1 (readonly)
				[2]: any_InlineIcon_result1_upvr (readonly)
				[3]: module_7_upvr (copied, readonly)
				[4]: module_upvr_4 (copied, readonly)
				[5]: module_upvr_5 (copied, readonly)
				[6]: ReturnToStart_upvr (readonly)
				[7]: module_upvr_10 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
			if arg1.Expired or arg1.Request or not any_InlineIcon_result1_upvr.Input.Enabled or not arg1.DisplayedDetails then
				return Enum.ContextActionResult.Pass
			end
			if arg1.DisplayedDetails.Owned then
				if module_7_upvr.LocalPlayerStateCurrentLevelSet(arg1.DisplayedDetails.LevelData, true) then
					arg1.Expired = true
					local var81 = arg1
					if var81.Fireworks then
						local UIFireworks_5 = var81.Fireworks.UIFireworks
						module_upvr_4.UIFireworks.FadeSounds(UIFireworks_5, 1)
						module_upvr_4.UIFireworks.Destroy(UIFireworks_5, true)
						-- KONSTANTWARNING: GOTO [124] #86
					end
					-- KONSTANTWARNING: GOTO [124] #86
				end
			elseif arg1.DisplayedDetails.Amount then
				local Amount = arg1.DisplayedDetails.Amount
				local tbl_7 = {
					Request = module_upvr_5.StateRequestType.CounterIncrement;
					Args = {module_upvr_5.CounterType.MainLevels, module_upvr_5.UnlockMethod.Currency, Amount, module_upvr_5.SaveDataGetCount(module_7_upvr.LocalSaveData, module_upvr_5.CounterType.MainLevels) + Amount};
					Callback = ReturnToStart_upvr;
				}
			end
			-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [124] 86. Error Block 14 start (CF ANALYSIS FAILED)
			do
				return Enum.ContextActionResult.Sink
			end
			-- KONSTANTERROR: [124] 86. Error Block 14 end (CF ANALYSIS FAILED)
		end
		v = module_2_upvr.Button
		i_upvr = v.BindToKeyCode
		v = any_InlineIcon_result1_upvr
		i_upvr(v, BuyNextLevel, Enum.KeyCode.ButtonX, module_2_upvr.IconLocation.Left)
		v = any_InlineIcon_result1_upvr.Button
		i_upvr = v.Activated:Connect
		i_upvr(BuyNextLevel)
		arg1.BuyButton = any_InlineIcon_result1_upvr
	end
	any_InlineIcon_result1_upvr = arg1.ReturnButton
	if not any_InlineIcon_result1_upvr then
		v = module_2_upvr
		i_upvr = v.Button
		ReturnToStart_upvr = i_upvr.Common.Create
		any_InlineIcon_result1_upvr = ReturnToStart_upvr.InlineIcon
		ReturnToStart_upvr = arg1.Wrapper
		v = module_2_upvr.Button
		i_upvr = v.Themes
		i_upvr = {}
		v = module_upvr.EnergyImage_Outline_256_16
		i_upvr.Image = v
		v = false
		i_upvr.Visible = v
		any_InlineIcon_result1_upvr = any_InlineIcon_result1_upvr(ReturnToStart_upvr, i_upvr.Dull, i_upvr)
		local var86_upvr = any_InlineIcon_result1_upvr
		ReturnToStart_upvr = var86_upvr.Image
		ReturnToStart_upvr.Visible = false
		ReturnToStart_upvr = var86_upvr.Bounds
		ReturnToStart_upvr.Flag = arg1.Flag
		ReturnToStart_upvr = var86_upvr.Input
		ReturnToStart_upvr.Enabled = false
		function ReturnToStart_upvr() -- Line 550, Named "ReturnToStart"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: var86_upvr (readonly)
				[3]: module_7_upvr (copied, readonly)
				[4]: module_upvr_4 (copied, readonly)
			]]
			if arg1.Expired or not var86_upvr.Input.Enabled then
				return Enum.ContextActionResult.Pass
			end
			if module_7_upvr.LocalPlayerStateCurrentLevelSet(module_7_upvr.LocalCurrentLevel, true) then
				local var90 = arg1
				if var90.Fireworks then
					local UIFireworks_3 = var90.Fireworks.UIFireworks
					module_upvr_4.UIFireworks.FadeSounds(UIFireworks_3, 1)
					module_upvr_4.UIFireworks.Destroy(UIFireworks_3, true)
				end
			end
			return Enum.ContextActionResult.Sink
		end
		local var87 = ReturnToStart_upvr
		v = module_2_upvr
		i_upvr = v.Button
		i_upvr = var86_upvr
		v = var87
		i_upvr.BindToKeyCode(i_upvr, v, Enum.KeyCode.ButtonY)
		i_upvr = var86_upvr.Button
		v = var87
		i_upvr.Activated:Connect(v)
		arg1.ReturnButton = var86_upvr
	end
end
local function DestroyButtons_upvr(arg1) -- Line 576, Named "DestroyButtons"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	for _, v_2 in arg1.AutoButton_ByEnable do
		module_2_upvr.Button.Destroy(v_2)
	end
	table.clear(arg1.AutoButton_ByEnable)
	if arg1.BuyButton then
		module_2_upvr.Button.Destroy(arg1.BuyButton)
		arg1.BuyButton = nil
	end
	if arg1.ReturnButton then
		module_2_upvr.Button.Destroy(arg1.ReturnButton)
		arg1.ReturnButton = nil
	end
end
local function _(arg1) -- Line 596, Named "DestroyDisplayedDetails"
	if arg1.DisplayedDetails then
		for _, v_3 in arg1.DisplayedDetails._Connections do
			v_3:Disconnect()
		end
		arg1.DisplayedDetails = nil
	end
end
function module_4_upvr.RegisterLevelProximity(arg1, arg2) -- Line 612
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: tbl_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local table_find_result1 = table.find(tbl_6_upvr.LevelsInProximity, arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 3 start (CF ANALYSIS FAILED)
	tbl_6_upvr.LevelsInProximity[#tbl_6_upvr.LevelsInProximity + 1] = arg1
	do
		return
	end
	-- KONSTANTERROR: [13] 11. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 19. Error Block 7 start (CF ANALYSIS FAILED)
	if table_find_result1 then
		table.remove(tbl_6_upvr.LevelsInProximity, table_find_result1)
	end
	-- KONSTANTERROR: [23] 19. Error Block 7 end (CF ANALYSIS FAILED)
end
module_7_upvr.Signals.LevelStarted:Connect(function() -- Line 644
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	tbl_6_upvr.LevelComplete = false
end)
local module_upvr_2 = require(Modules:WaitForChild("UIExclusivityGroups"))
function module_4_upvr.IsOpen() -- Line 652
	--[[ Upvalues[5]:
		[1]: tbl_6_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: GetReturnEligibility_upvr (readonly)
		[5]: tbl_3_upvr (readonly)
	]]
	local var100 = false
	if 0 < #tbl_6_upvr.LevelsInProximity then
		var100 = not module_7_upvr.Flags.LoadingScreenActive
		if var100 then
			var100 = not module_upvr_2.EventUIGroup.Active
		end
	end
	if var100 then
		if select(2, GetReturnEligibility_upvr()) == tbl_3_upvr.LevelIncomplete then
			var100 = false
		else
			var100 = true
		end
	end
	return var100
end
local module_upvr_8 = require(Modules:WaitForChild("UISelection"))
local GuiService_upvr = game:GetService("GuiService")
local module_upvr_6 = require(Modules:WaitForChild("ItemDataUtility"))
local module_upvr_9 = require(Modules:WaitForChild("UserInterface"):WaitForChild("EnergyExchangeUI"))
function module_4_upvr.RenderStepped(arg1, arg2) -- Line 669
	--[[ Upvalues[27]:
		[1]: module_upvr_7 (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: UICreate_upvr (readonly)
		[5]: module_upvr_8 (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: module_5_upvr (readonly)
		[8]: DestroyButtons_upvr (readonly)
		[9]: module_upvr_4 (readonly)
		[10]: module_upvr_3 (readonly)
		[11]: module_7_upvr (readonly)
		[12]: module_upvr_5 (readonly)
		[13]: module_upvr_6 (readonly)
		[14]: var24_upvw (read and write)
		[15]: module_8_upvr (readonly)
		[16]: module_upvr (readonly)
		[17]: module_2_upvr (readonly)
		[18]: tbl_upvr (readonly)
		[19]: module_3_upvr (readonly)
		[20]: tbl_3_upvr (readonly)
		[21]: CreateButtons_upvr (readonly)
		[22]: tbl_4_upvr (readonly)
		[23]: tbl_5_upvr (readonly)
		[24]: ExchangePromptCreate_upvr (readonly)
		[25]: tbl_upvr_2 (readonly)
		[26]: module_upvr_9 (readonly)
		[27]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 14. Error Block 3 start (CF ANALYSIS FAILED)
	tbl_6_upvr.UI = UICreate_upvr(arg2)
	-- KONSTANTERROR: [18] 14. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 19. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 19. Error Block 4 end (CF ANALYSIS FAILED)
end
return module_4_upvr