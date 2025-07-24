-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:25
-- Luau version 6, Types version 3
-- Time taken: 0.016585 seconds

local tbl_2_upvw = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_9_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_7_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_12_upvr = require(Modules:WaitForChild("ClientData"))
local module_6_upvr = require(Modules:WaitForChild("UIButton"))
local module_5_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_4_upvr = require(Modules:WaitForChild("UIShared"))
local module_15_upvr = require(Modules:WaitForChild("Utility"))
local module_11_upvr = require(Modules:WaitForChild("Worlds"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_10 = require(UserInterface:WaitForChild("CollectionUISystem"))
local module_14_upvr = require(UserInterface:WaitForChild("SidebarUI"))
local _1_upvr = require(Modules:WaitForChild("Products")).Products.SkipLevel[1]
local tbl_3_upvr = {
	PendingRequest = nil;
	CreditUI = nil;
	SidebarButton = nil;
}
local tbl_5 = {}
local tbl_upvr = {
	ButtonScaleX = 1.5;
	ComponentTextEm = 1;
	HeaderTextEm = 2;
	SeparatorTextEm = 1.5;
}
local var21_upvw = {
	Currency = string.format("(%sx the Gate cost)", module_15_upvr.FormatNumber(require(ReplicatedStorage:WaitForChild("Settings")).LevelsSkipCostFactor, {
		Decimals = 2;
		ForceDecimals = false;
	}));
	Header = string.format("Skip this %s:", module_7_upvr.FrontEndNames.Items_ByItemType[module_9_upvr.ItemType.Level].Singular.Proper);
	Separator = "or";
	Unlock = "(Unlocks %i previous %s)";
}
local any_TableMerge_result1 = module_15_upvr.TableMerge(module_10.CollectionType, {
	LevelSkip = 1000;
})
tbl_2_upvw.IsOpen = module_5_upvr.CreateExclusivityOpenHandler(module_5_upvr.LevelSkipUIGroup)
local any_CollectionUICreate_result1_upvr = module_10.CollectionUICreate(any_TableMerge_result1, module_15_upvr.HierarchyCreate({{any_TableMerge_result1._UIMain}, {any_TableMerge_result1.LevelSkip, any_TableMerge_result1._UIMain}}), tbl_2_upvw.IsOpen)
function any_CollectionUICreate_result1_upvr.CloseRequested() -- Line 108
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: module_5_upvr (readonly)
	]]
	module_4_upvr.UIExclusivityGroup.Deactivate(module_5_upvr.LevelSkipUIGroup)
end
any_CollectionUICreate_result1_upvr.Name = "LevelSkipUI"
any_CollectionUICreate_result1_upvr.DisplayOrder = module_7_upvr.DisplayOrder_LevelSkipUI
any_CollectionUICreate_result1_upvr.RequestCollection(any_TableMerge_result1.LevelSkip)
local module_13_upvr = require(Modules:WaitForChild("UILegacySupport"))
ReplicatedStorage:WaitForChild("Bindables"):WaitForChild("OpenShops").Event:Connect(function(arg1) -- Line 123
	--[[ Upvalues[2]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: module_13_upvr (readonly)
	]]
	if arg1 ~= nil then
		local var31 = any_CollectionUICreate_result1_upvr
		if module_13_upvr.LegacyBindableObjects[arg1] == nil then
			var31 = false
		else
			var31 = true
		end
		var31.RequestClose(var31)
	end
end)
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1._UIMain].Open = function() -- Line 130
	--[[ Upvalues[1]:
		[1]: module_13_upvr (readonly)
	]]
	module_13_upvr.CloseShops()
end
module_12_upvr.Signals.LevelChanged:Connect(function() -- Line 135
	--[[ Upvalues[1]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
	]]
	any_CollectionUICreate_result1_upvr.RequestClose()
end)
local function ProcessResponse_upvr(arg1) -- Line 143, Named "ProcessResponse"
	--[[ Upvalues[3]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: any_CollectionUICreate_result1_upvr (readonly)
	]]
	if tbl_3_upvr.PendingRequest == arg1 then
		tbl_3_upvr.PendingRequest = nil
		if arg1.Response == module_9_upvr.ResponseType.Success then
			any_CollectionUICreate_result1_upvr.RequestClose()
		end
	end
end
local module_8_upvr = require(Modules:WaitForChild("NetworkRequestUtility"))
local Level_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Level")
local function SendRequest_upvr(arg1) -- Line 157, Named "SendRequest"
	--[[ Upvalues[5]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: Level_upvr (readonly)
		[4]: module_9_upvr (readonly)
		[5]: ProcessResponse_upvr (readonly)
	]]
	local var36
	if tbl_3_upvr.PendingRequest ~= nil then
		var36 = false
	else
		var36 = true
	end
	assert(var36, "Request already active.")
	var36 = module_8_upvr
	var36 = {}
	var36.Remote = Level_upvr
	var36.Request = module_9_upvr.LevelRequestType.SkipLevel
	local tbl_4 = {}
	tbl_4[1] = arg1
	var36.Args = tbl_4
	var36.Callback = ProcessResponse_upvr
	var36 = tbl_3_upvr
	var36.PendingRequest = var36.MakeRequest(var36)
end
local any_MemberCreate_result1_upvr = module_5_upvr.MemberCreate(module_5_upvr.LevelSkipUIGroup)
local tbl_9_upvr = {
	ButtonTheme = module_6_upvr.Button.Themes.Floating;
	Icon = module_7_upvr.GetImageFromMap(module_7_upvr.ImageMapType.Arrow_ByDirection, module_7_upvr.Direction.Right, module_7_upvr.ImageMapStyle.OutlineHeavy);
	Order = module_14_upvr.SidebarButtonOrder.SkipLevel;
	Style = module_14_upvr.SidebarButtonStyle.IconText;
	Text = "Skip Level";
	PressFunction = function() -- Line 179, Named "PromptSkip"
		--[[ Upvalues[11]:
			[1]: tbl_2_upvw (read and write)
			[2]: tbl_3_upvr (readonly)
			[3]: module_11_upvr (readonly)
			[4]: module_12_upvr (readonly)
			[5]: module_9_upvr (readonly)
			[6]: SendRequest_upvr (readonly)
			[7]: _1_upvr (readonly)
			[8]: module_5_upvr (readonly)
			[9]: module_4_upvr (readonly)
			[10]: any_MemberCreate_result1_upvr (readonly)
			[11]: any_CollectionUICreate_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [94] 70. Error Block 17 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [108.3]
		module_12_upvr.Signals.UnlockExplanationRequested:Fire(module_9_upvr.ItemType.Level, nil, {
			PromptedFromSkip = true;
		})
		do
			return
		end
		-- KONSTANTERROR: [94] 70. Error Block 17 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [114] 84. Error Block 18 start (CF ANALYSIS FAILED)
		any_CollectionUICreate_result1_upvr.RequestClose()
		-- KONSTANTERROR: [114] 84. Error Block 18 end (CF ANALYSIS FAILED)
	end;
}
local RenderStepped_2_upvr = any_CollectionUICreate_result1_upvr.RenderStepped
function any_CollectionUICreate_result1_upvr.RenderStepped(...) -- Line 262
	--[[ Upvalues[11]:
		[1]: module_12_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: module_14_upvr (readonly)
		[4]: tbl_9_upvr (readonly)
		[5]: _1_upvr (readonly)
		[6]: module_9_upvr (readonly)
		[7]: module_15_upvr (readonly)
		[8]: module_7_upvr (readonly)
		[9]: module_4_upvr (readonly)
		[10]: RenderStepped_2_upvr (readonly)
		[11]: tbl_2_upvw (read and write)
	]]
	if module_12_upvr.SkipButtonShouldBeVisible() then
		if not tbl_3_upvr.SidebarButton then
			tbl_3_upvr.SidebarButton = module_14_upvr.ButtonProfileRegister(tbl_9_upvr, module_14_upvr.SidebarRegion.Right)
		end
		assert(tbl_3_upvr.SidebarButton)
		if _1_upvr then
			local any_SaveDataGetProductCredit_result1 = module_9_upvr.SaveDataGetProductCredit(module_12_upvr.LocalSaveData, _1_upvr.ProductId)
			if 0 < any_SaveDataGetProductCredit_result1 then
				if not tbl_3_upvr.CreditUI then
					local tbl = {
						Frame = module_15_upvr.I("Frame", {
							AnchorPoint = Vector2.new(1, 0.5);
							BackgroundColor3 = module_7_upvr.ButtonColor2;
							ClipsDescendants = true;
							Position = UDim2.fromScale(-0.05, 0.5);
							ZIndex = 100;
							Parent = tbl_3_upvr.SidebarButton.Button.Button;
						});
					}
					module_15_upvr.I("UICorner", {
						CornerRadius = UDim.new(1, 0);
						Parent = tbl.Frame;
					})
					local any_TextBoundsLabelCreate_result1_2, any_TextBoundsLabelCreate_result2_2 = module_4_upvr.TextBoundsLabelCreate(tbl.Frame, nil, nil, nil, module_7_upvr.TextColor2)
					tbl.Label = any_TextBoundsLabelCreate_result1_2
					tbl.Bounds = any_TextBoundsLabelCreate_result2_2
					module_15_upvr.PropsApply(tbl.Label, module_4_upvr.Properties.Centered)
					tbl_3_upvr.CreditUI = tbl
				end
				local assert_result1 = assert(tbl_3_upvr.CreditUI)
				if assert_result1.Credit ~= any_SaveDataGetProductCredit_result1 then
					local tostring_result1 = tostring(any_SaveDataGetProductCredit_result1)
					assert_result1.Text = tostring_result1
					assert_result1.Label.Text = tostring_result1
				end
				if module_4_upvr.CachedTextBoundsConform(assert_result1.Bounds, assert_result1.Label, assert_result1.Text, module_4_upvr.EmSize * 1.25 // 1) or module_4_upvr.EmSizeDirty or tbl_3_upvr.SidebarButton.Changed then
					local var51 = module_4_upvr.EmSize * 0.125 // 1
					local var52 = assert_result1.Bounds.Y + 2 * var51
					assert_result1.Frame.Size = UDim2.fromOffset(math.min(math.max(assert_result1.Bounds.X + 4 * var51, var52), tbl_3_upvr.SidebarButton.SizeTweenX.Value), var52)
					-- KONSTANTWARNING: GOTO [268] #186
				end
			elseif tbl_3_upvr.CreditUI then
				tbl_3_upvr.CreditUI.Frame:Destroy()
				tbl_3_upvr.CreditUI = nil
				-- KONSTANTWARNING: GOTO [268] #186
			end
			-- KONSTANTWARNING: GOTO [268] #186
		end
	elseif tbl_3_upvr.SidebarButton then
		module_14_upvr.SidebarButtonDestroy(tbl_3_upvr.SidebarButton)
		tbl_3_upvr.SidebarButton = nil
	end
	RenderStepped_2_upvr(...)
	if tbl_3_upvr.SidebarButton then
		tbl_3_upvr.SidebarButton.Selected = tbl_2_upvw.IsOpen()
	end
end
local module_2_upvr = require(Modules:WaitForChild("ItemDataUtility"))
function tbl_5.Initialize(arg1) -- Line 388
	--[[ Upvalues[12]:
		[1]: module_12_upvr (readonly)
		[2]: module_11_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: var21_upvw (read and write)
		[5]: module_9_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: module_6_upvr (readonly)
		[8]: module_7_upvr (readonly)
		[9]: module_15_upvr (readonly)
		[10]: _1_upvr (readonly)
		[11]: any_CollectionUICreate_result1_upvr (readonly)
		[12]: SendRequest_upvr (readonly)
	]]
	local LocalCurrentLevel = module_12_upvr.LocalCurrentLevel
	local any_LevelCanSkip_result1, any_LevelCanSkip_result2 = module_11_upvr.LevelCanSkip(LocalCurrentLevel, module_12_upvr.LocalSaveData)
	assert(any_LevelCanSkip_result1, "Current level not valid for skipping.")
	local module_3_upvr = {
		LevelData = LocalCurrentLevel;
		Components = {};
		Separators = {};
		Flag = module_4_upvr.TextBoundsFlagCreate();
	}
	local function _(arg1_2) -- Line 410, Named "ComponentLineCreate"
		--[[ Upvalues[3]:
			[1]: module_4_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: module_3_upvr (readonly)
		]]
		local module = {}
		local any_TextBoundsLabelCreate_result1_4, any_TextBoundsLabelCreate_result2 = module_4_upvr.TextBoundsLabelCreate(arg1.Wrapper, arg1_2, module_3_upvr.Flag)
		module.Label = any_TextBoundsLabelCreate_result1_4
		module.Bounds = any_TextBoundsLabelCreate_result2
		module.Label.TextXAlignment = Enum.TextXAlignment.Left
		module.Text = arg1_2
		return module
	end
	local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2_6 = module_4_upvr.TextBoundsLabelCreate(arg1.Wrapper, var21_upvw.Header, module_3_upvr.Flag)
	module_3_upvr.HeaderLabel = any_TextBoundsLabelCreate_result1
	module_3_upvr.HeaderBounds = any_TextBoundsLabelCreate_result2_6
	for _, v_upvr in any_LevelCanSkip_result2 do
		local var67_upvw
		local tbl_10 = {}
		if v_upvr == module_9_upvr.UnlockMethod.Currency then
			local MainLevels = module_9_upvr.CounterType.MainLevels
			local var70 = module_9_upvr.CurrencyType_ByCounterType[MainLevels]
			local any_GetLevelSkipCost_Currency_result1, any_GetLevelSkipCost_Currency_result2 = module_2_upvr.GetLevelSkipCost_Currency(assert(module_11_upvr.GetLevelIndex(module_11_upvr.Data_ByLevel[LocalCurrentLevel], LocalCurrentLevel)), module_9_upvr.SaveDataGetCount(module_12_upvr.LocalSaveData, MainLevels))
			local tbl_8 = {}
			local var75 = module_15_upvr
			tbl_8.Text = module_15_upvr.FormatNumber(any_GetLevelSkipCost_Currency_result1, var75.FormatNumberOptions_PriceAbbreviation)
			var67_upvw = module_6_upvr.Button.Common.Create.InlineIcon(arg1.Wrapper, module_6_upvr.Button.ButtonTheme_ByCurrencyType[var70], {
				Image = module_7_upvr.GetImageFromMap(module_7_upvr.ImageMapType.Currency_ByCurrencyType, var70, module_7_upvr.ImageMapStyle.OutlineHeavy);
			}, nil, tbl_8)
			if 1 < any_GetLevelSkipCost_Currency_result2 then
				local var76 = any_GetLevelSkipCost_Currency_result2 - 1
				if var76 == 1 then
					var75 = module_7_upvr.FrontEndNames.Items_ByItemType[module_9_upvr.ItemType.Level].Singular
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var75 = module_7_upvr.FrontEndNames.Items_ByItemType[module_9_upvr.ItemType.Level].Plural
				end
				local formatted = string.format(var21_upvw.Unlock, var76, var75.Proper)
				local tbl_11 = {}
				var75 = formatted
				local any_TextBoundsLabelCreate_result1_5, any_TextBoundsLabelCreate_result2_5 = module_4_upvr.TextBoundsLabelCreate(arg1.Wrapper, var75, module_3_upvr.Flag)
				tbl_11.Label = any_TextBoundsLabelCreate_result1_5
				tbl_11.Bounds = any_TextBoundsLabelCreate_result2_5
				tbl_11.Label.TextXAlignment = Enum.TextXAlignment.Left
				tbl_11.Text = formatted
				tbl_10[#tbl_10 + 1] = tbl_11
			end
			local Currency = var21_upvw.Currency
			local tbl_6 = {}
			local any_TextBoundsLabelCreate_result1_6, any_TextBoundsLabelCreate_result2_3 = module_4_upvr.TextBoundsLabelCreate(arg1.Wrapper, Currency, module_3_upvr.Flag)
			tbl_6.Label = any_TextBoundsLabelCreate_result1_6
			tbl_6.Bounds = any_TextBoundsLabelCreate_result2_3
			tbl_6.Label.TextXAlignment = Enum.TextXAlignment.Left
			tbl_6.Text = Currency
			tbl_10[#tbl_10 + 1] = tbl_6
		elseif v_upvr == module_9_upvr.UnlockMethod.Product then
			var67_upvw = module_6_upvr.Button.CreateFancy(arg1.Wrapper, module_6_upvr.Button.Themes.BuyRobux)
			module_2_upvr.GeneratePriceStringAsync(function(arg1_3) -- Line 495
				--[[ Upvalues[2]:
					[1]: module_6_upvr (copied, readonly)
					[2]: var67_upvw (read and write)
				]]
				module_6_upvr.Button.SetText(var67_upvw, arg1_3)
			end, module_7_upvr.FALLBACK_PRICE_STRING, module_2_upvr.TransactionType.Product, assert(_1_upvr))
		end
		if var67_upvw then
			var67_upvw.Button.Activated:Connect(function() -- Line 505
				--[[ Upvalues[4]:
					[1]: any_CollectionUICreate_result1_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: SendRequest_upvr (copied, readonly)
					[4]: v_upvr (readonly)
				]]
				if any_CollectionUICreate_result1_upvr.CollectionIsActive(arg1) then
					SendRequest_upvr(v_upvr)
				end
			end)
			if 0 < #module_3_upvr.Components then
				local Separator = var21_upvw.Separator
				local tbl_7 = {}
				local any_TextBoundsLabelCreate_result1_3, any_TextBoundsLabelCreate_result2_4 = module_4_upvr.TextBoundsLabelCreate(arg1.Wrapper, Separator, module_3_upvr.Flag)
				tbl_7.Label = any_TextBoundsLabelCreate_result1_3
				tbl_7.Bounds = any_TextBoundsLabelCreate_result2_4
				tbl_7.Label.TextXAlignment = Enum.TextXAlignment.Left
				tbl_7.Text = Separator
				module_3_upvr.Separators[#module_3_upvr.Separators + 1] = tbl_7
			end
			module_3_upvr.Components[#module_3_upvr.Components + 1] = {
				Button = var67_upvw;
				Lines = tbl_10;
				UnlockMethod = v_upvr;
			}
		end
	end
	return module_15_upvr.TableMerge(module_3_upvr, arg1)
end
function tbl_5.Destroy(arg1) -- Line 538
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for _, v_2 in arg1.Components do
		module_6_upvr.Button.Destroy(v_2.Button)
	end
end
function tbl_5.Update(arg1, arg2, arg3) -- Line 548
	--[[ Upvalues[5]:
		[1]: module_4_upvr (readonly)
		[2]: any_CollectionUICreate_result1_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: var21_upvw (read and write)
		[5]: module_6_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_TextBoundsFlagCheck_result1 = module_4_upvr.TextBoundsFlagCheck(arg1.Flag)
	if not any_TextBoundsFlagCheck_result1 then
		any_TextBoundsFlagCheck_result1 = arg1.DrawDirty
		local var139
	end
	if any_TextBoundsFlagCheck_result1 then
		local PadX = any_CollectionUICreate_result1_upvr.Properties.PadX
		local PadY = any_CollectionUICreate_result1_upvr.Properties.PadY
		local var143 = PadX * 0.5 // 1
		local var144 = module_4_upvr.SteppedSize.ButtonFancyX * tbl_upvr.ButtonScaleX // 1
		local ButtonFancyY = module_4_upvr.SteppedSize.ButtonFancyY
		local ButtonFancyText = module_4_upvr.SteppedSize.ButtonFancyText
		var139 = ButtonFancyY
		var139 = module_4_upvr
		var139 = arg1.HeaderBounds
		var139.CachedTextBoundsConform(var139, arg1.HeaderLabel, var21_upvw.Header, module_4_upvr.EmSize * tbl_upvr.HeaderTextEm // 1)
		var139 = arg1.Components
		for _, v_3 in var139 do
			local var147 = 0
			for i_4, v_4 in v_3.Lines do
				module_4_upvr.CachedTextBoundsConform(v_4.Bounds, v_4.Label, v_4.Text, module_4_upvr.EmSize * tbl_upvr.ComponentTextEm // 1, var144)
				var147 += v_4.Bounds.Y + PadY * 0.25 // 1
				local var148
			end
			if 0 < var147 then
			end
			v_3.Button.Button.Size = UDim2.fromOffset(var144, var139)
			if v_3.Button.Image ~= nil then
				v_4 = module_6_upvr
				i_4 = v_4.Button
				i_4 = ButtonFancyText
				v_4 = var144
				i_4.Common.Resize.InlineIcon(v_3.Button, ButtonFancyText, i_4, v_4)
			else
				i_4 = nil
				v_4 = nil
				module_6_upvr.Button.AdjustText(v_3.Button, nil, i_4, v_4, ButtonFancyText)
			end
		end
		var139 = 0
		for _, v_5 in arg1.Separators do
			module_4_upvr.CachedTextBoundsConform(v_5.Bounds, v_5.Label, var21_upvw.Separator, module_4_upvr.EmSize * tbl_upvr.SeparatorTextEm // 1)
			var139 = v_5.Bounds.X
			local var149
		end
		local var150 = #arg1.Components * var144 + #arg1.Separators * (var139 + 2 * var143)
		local var151 = math.max(arg1.HeaderBounds.X + 2 * (any_CollectionUICreate_result1_upvr.Properties.CloseInsetX + PadY), var150) + 2 * PadX
		local var152 = var151 * 0.5
		local var153 = PadY
		arg1.HeaderLabel.Position = UDim2.fromOffset((var152 - arg1.HeaderBounds.X * 0.5) // 1, var153)
		local var154 = (var153) + (arg1.HeaderBounds.Y + PadY + var147)
		local var155 = (var152 - var150 * 0.5) // 1
		local ceiled = math.ceil(module_4_upvr.ScaledSize.ButtonFancyBorder)
		for i_6 = 1, #arg1.Components do
			local var157 = arg1.Components[i_6]
			local var158 = arg1.Separators[i_6]
			local var159 = 0
			for _, v_6 in var157.Lines do
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var159 += v_6.Bounds.Y + PadY * 0.25 // 1
				v_6.Label.Position = UDim2.fromOffset(var155 + (var144 * 0.5 - v_6.Bounds.X * 0.5) // 1, var154 - var159)
				local _
			end
			var157.Button.Button.Position = UDim2.fromOffset(var155, var154 + ceiled)
			if var158 then
				var158.Label.Position = UDim2.fromOffset(var155 + var144 + var143, var154 + (ButtonFancyY * 0.5 - var149 * 0.5) // 1)
			end
		end
		arg1.TargetSize = UDim2.fromOffset(var151, (var154) + (ButtonFancyY + ceiled * 2 + PadY))
	end
	for _, v_7 in arg1.Components do
		module_6_upvr.Button.Update(v_7.Button, arg3)
	end
end
tbl_9_upvr = any_TableMerge_result1.LevelSkip
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[tbl_9_upvr] = tbl_5
tbl_9_upvr = tbl_2_upvw
RenderStepped_2_upvr = any_CollectionUICreate_result1_upvr
local any_TableMerge_result1_2 = module_15_upvr.TableMerge(tbl_9_upvr, RenderStepped_2_upvr)
tbl_2_upvw = any_TableMerge_result1_2
return any_TableMerge_result1_2