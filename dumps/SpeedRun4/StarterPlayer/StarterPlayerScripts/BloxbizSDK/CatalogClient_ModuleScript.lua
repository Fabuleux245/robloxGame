-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:45
-- Luau version 6, Types version 3
-- Time taken: 0.011916 seconds

local Players_upvr = game:GetService("Players")
local StarterGui_upvr = game:GetService("StarterGui")
local TweenService_upvr = game:GetService("TweenService")
local PlayerGui_upvr = Players_upvr.LocalPlayer:WaitForChild("PlayerGui")
local GuiService_upvr = game:GetService("GuiService")
local var6_upvw
local Utils = script.Parent:FindFirstChild("Utils")
local module_upvr_4 = require(Utils:WaitForChild("Fusion"))
local LoadingFrame_upvr = require(script.Components.LoadingFrame)
local Frame_upvr = require(script.Frame)
local module_upvr_3 = {
	Enabled = module_upvr_4.Value(false);
}
local function _() -- Line 61, Named "Build"
	--[[ Upvalues[4]:
		[1]: module_upvr_3 (readonly)
		[2]: Frame_upvr (readonly)
		[3]: PlayerGui_upvr (readonly)
		[4]: LoadingFrame_upvr (readonly)
	]]
	local Frame_upvr_result1, Frame_upvr_result2, Frame_upvr_result3_2 = Frame_upvr()
	Frame_upvr_result1.ResetOnSpawn = false
	Frame_upvr_result1.Enabled = false
	Frame_upvr_result1.Parent = PlayerGui_upvr
	local LoadingFrame_upvr_result1 = LoadingFrame_upvr()
	LoadingFrame_upvr_result1.Parent = Frame_upvr_result3_2
	return module_upvr_3.Enabled, Frame_upvr_result1, Frame_upvr_result2, LoadingFrame_upvr_result1, nil, Frame_upvr_result3_2
end
local function OpenAnimation_upvr(arg1, arg2, arg3) -- Line 75, Named "OpenAnimation"
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	arg1.Enabled = true
	local var16 = 0.1
	local TweenInfo_new_result1_2 = TweenInfo.new(var16)
	if 36 >= GuiService_upvr.TopbarInset.Max.Y then
		var16 = false
	else
		var16 = true
	end
	TweenService_upvr:Create(arg1:FindFirstChild("Cover", true), TweenInfo_new_result1_2, {
		Transparency = 0;
	}):Play()
	local tbl_2 = {}
	if var16 then
		-- KONSTANTWARNING: GOTO [55] #44
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 43. Error Block 29 start (CF ANALYSIS FAILED)
	tbl_2.Position = UDim2.new(0, 0, 0, 22)
	TweenService_upvr:Create(arg1:FindFirstChild("LogoContainer", true), TweenInfo_new_result1_2, tbl_2):Play()
	if var16 then
		-- KONSTANTWARNING: GOTO [77] #62
	end
	-- KONSTANTERROR: [54] 43. Error Block 29 end (CF ANALYSIS FAILED)
end
local function CloseAnimation_upvr(arg1, arg2, arg3) -- Line 102, Named "CloseAnimation"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	local TweenInfo_new_result1 = TweenInfo.new(0.1)
	TweenService_upvr:Create(arg3, TweenInfo_new_result1, {
		Position = UDim2.new(1, -60, -0.1, 20);
	}):Play()
	TweenService_upvr:Create(arg2, TweenInfo_new_result1, {
		Position = UDim2.new(0, 0, 1.5, 36);
	}):Play()
	TweenService_upvr:Create(arg1:FindFirstChild("LogoContainer", true), TweenInfo_new_result1, {
		Position = UDim2.new(0, 0, -0.1, 20);
	}):Play()
	TweenService_upvr:Create(arg1:FindFirstChild("Cover", true), TweenInfo_new_result1, {
		BackgroundTransparency = 1;
	}):Play()
	task.wait(0.2)
	arg1.Enabled = false
end
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
local Logo_upvr = require(script.Logo)
local New_upvr = module_upvr_4.New
local Children_upvr = module_upvr_4.Children
local BuyOutfit_upvr = require(script.BuyOutfit)
local Close_2_upvr = require(script.Close)
local module_upvr_2 = require(script.Parent:WaitForChild("ConfigReader"))
local module_upvr_5 = require(Utils:WaitForChild("Icon"))
local var33_upvw = false
local module_upvr = require(Utils:WaitForChild("UIScaler"))
function module_upvr_3.Init() -- Line 127
	--[[ Upvalues[20]:
		[1]: var6_upvw (read and write)
		[2]: BloxbizRemotes_upvr (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: Frame_upvr (readonly)
		[5]: PlayerGui_upvr (readonly)
		[6]: LoadingFrame_upvr (readonly)
		[7]: Logo_upvr (readonly)
		[8]: module_upvr_4 (readonly)
		[9]: GuiService_upvr (readonly)
		[10]: New_upvr (readonly)
		[11]: Children_upvr (readonly)
		[12]: BuyOutfit_upvr (readonly)
		[13]: Close_2_upvr (readonly)
		[14]: module_upvr_2 (readonly)
		[15]: module_upvr_5 (readonly)
		[16]: var33_upvw (read and write)
		[17]: OpenAnimation_upvr (readonly)
		[18]: CloseAnimation_upvr (readonly)
		[19]: module_upvr (readonly)
		[20]: Players_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
	var6_upvw = BloxbizRemotes_upvr:WaitForChild("CatalogOpenedEvent")
	local var10_result1, var10_result2, Frame_upvr_result3 = Frame_upvr()
	var10_result1.ResetOnSpawn = false
	var10_result1.Enabled = false
	var10_result1.Parent = PlayerGui_upvr
	local var9_result1 = LoadingFrame_upvr()
	var9_result1.Parent = Frame_upvr_result3
	local Enabled_upvr = module_upvr_3.Enabled
	local var64_upvr = var10_result1
	local var65_upvr = var10_result2
	local tbl_4_upvr = {}
	local var75
	for _, v in pairs(script.Controllers:GetChildren()) do
		local v_6 = require(v)
		local Name_upvr = v.Name
		if v_6.Enable then
			local Enable_upvr = v_6.Enable
			function var75(arg1, ...) -- Line 139
				--[[ Upvalues[3]:
					[1]: tbl_4_upvr (readonly)
					[2]: Name_upvr (readonly)
					[3]: Enable_upvr (readonly)
				]]
				tbl_4_upvr.NavigationController:UpdateEnabled(Name_upvr, true)
				Enable_upvr(arg1, ...)
			end
			v_6.Enable = var75
		end
		Enable_upvr = v_6.Disable
		if Enable_upvr then
			Enable_upvr = v_6.Disable
			function var75(arg1, ...) -- Line 147
				--[[ Upvalues[3]:
					[1]: tbl_4_upvr (readonly)
					[2]: Name_upvr (readonly)
					[3]: Enable_upvr (readonly)
				]]
				tbl_4_upvr.NavigationController:UpdateEnabled(Name_upvr, false)
				Enable_upvr(arg1, ...)
			end
			v_6.Disable = var75
		end
		Enable_upvr = v_6.new
		var75 = var65_upvr
		Enable_upvr = Enable_upvr(var75, var9_result1)
		tbl_4_upvr[Name_upvr] = Enable_upvr
	end
	for _, v_2 in pairs(tbl_4_upvr) do
		Enable_upvr = tbl_4_upvr
		v_2:Init(Enable_upvr)
	end
	Logo_upvr({
		FullScreen = tbl_4_upvr.AvatarPreviewController.FullScreen;
		Visible = module_upvr_4.Computed(function() -- Line 163
			--[[ Upvalues[1]:
				[1]: tbl_4_upvr (readonly)
			]]
			return not tbl_4_upvr.AvatarPreviewController.HideUI:get()
		end);
	}).Parent = var64_upvr
	if 36 >= GuiService_upvr.TopbarInset.Max.Y then
		-- KONSTANTWARNING: GOTO [121] #88
	end
	-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [120] 87. Error Block 47 start (CF ANALYSIS FAILED)
	local tbl = {
		Name = "Close";
		BackgroundTransparency = 1;
	}
	Name_upvr = 0.5
	tbl.AnchorPoint = Vector2.new(1, Name_upvr)
	tbl.LayoutOrder = 1
	Name_upvr = -60
	Enable_upvr = 0
	if true then
		var75 = 34
	else
		var75 = 20
	end
	tbl.Position = UDim2.new(1, Name_upvr, Enable_upvr, var75)
	Name_upvr = 200
	Enable_upvr = 0
	var75 = 30
	tbl.Size = UDim2.new(0, Name_upvr, Enable_upvr, var75)
	tbl.Parent = var64_upvr
	tbl.Visible = module_upvr_4.Computed(function() -- Line 179
		--[[ Upvalues[1]:
			[1]: tbl_4_upvr (readonly)
		]]
		return not tbl_4_upvr.AvatarPreviewController.HideUI:get()
	end)
	local tbl_3 = {}
	Name_upvr = New_upvr
	Enable_upvr = "UIListLayout"
	Name_upvr = Name_upvr(Enable_upvr)
	Enable_upvr = {}
	local var84 = Enable_upvr
	var75 = Enum.FillDirection.Horizontal
	var84.FillDirection = var75
	var75 = Enum.SortOrder.LayoutOrder
	var84.SortOrder = var75
	var75 = Enum.HorizontalAlignment.Right
	var84.HorizontalAlignment = var75
	var75 = Enum.VerticalAlignment.Center
	var84.VerticalAlignment = var75
	var75 = UDim.new(0, 5)
	var84.Padding = var75
	Name_upvr = Name_upvr(var84)
	var84 = BuyOutfit_upvr
	var75 = {}
	function var75.OnBuy() -- Line 193
		--[[ Upvalues[1]:
			[1]: tbl_4_upvr (readonly)
		]]
		tbl_4_upvr.BuyOutfitController:ShowModal()
	end
	var84 = var84(var75)
	var75 = Close_2_upvr
	var75 = var75({
		OnClose = function() -- Line 199, Named "OnClose"
			--[[ Upvalues[2]:
				[1]: Enabled_upvr (readonly)
				[2]: module_upvr_3 (copied, readonly)
			]]
			if Enabled_upvr:get() then
				module_upvr_3.Close()
			end
		end;
	})
	tbl_3[1] = Name_upvr
	tbl_3[2] = var84
	tbl_3[3] = var75
	tbl[Children_upvr] = tbl_3
	for i_3, var91 in pairs(tbl_4_upvr) do
		var84 = var91.Start
		if var84 then
			var84 = var91:Start
			var84(tbl_4_upvr)
		end
	end
	if module_upvr_2:read("CatalogShowToolbarButton") then
		local any_new_result1 = module_upvr_5.new()
		i_3 = module_upvr_2
		var84 = "CatalogToolbarIcon"
		i_3 = i_3:read(var84)
		any_new_result1:setImage(i_3)
		i_3 = "deselectWhenOtherIconSelected"
		var91 = false
		any_new_result1:setProperty(i_3, var91)
		any_new_result1:setRight()
		i_3 = "CatalogToolbarButtonLabel"
		if module_upvr_2:read(i_3) then
			i_3 = module_upvr_2
			var84 = "CatalogToolbarButtonLabel"
			i_3 = i_3:read(var84)
			any_new_result1:setLabel(i_3)
		end
		i_3 = "userSelected"
		function var91() -- Line 224
			--[[ Upvalues[3]:
				[1]: Enabled_upvr (readonly)
				[2]: var33_upvw (copied, read and write)
				[3]: module_upvr_3 (copied, readonly)
			]]
			if not Enabled_upvr:get() and var33_upvw then
				module_upvr_3.Open()
			end
		end
		any_new_result1:bindEvent(i_3, var91)
		i_3 = "userDeselected"
		function var91() -- Line 230
			--[[ Upvalues[3]:
				[1]: Enabled_upvr (readonly)
				[2]: var33_upvw (copied, read and write)
				[3]: module_upvr_3 (copied, readonly)
			]]
			if Enabled_upvr:get() and var33_upvw then
				module_upvr_3.Close()
			end
		end
		any_new_result1:bindEvent(i_3, var91)
		module_upvr_3.TopbarButton = any_new_result1
	end
	local var93_upvw = New_upvr("Frame")(tbl)
	module_upvr_4.Observer(Enabled_upvr):onChange(function() -- Line 240
		--[[ Upvalues[6]:
			[1]: Enabled_upvr (readonly)
			[2]: OpenAnimation_upvr (copied, readonly)
			[3]: var64_upvr (readonly)
			[4]: var65_upvr (readonly)
			[5]: var93_upvw (read and write)
			[6]: CloseAnimation_upvr (copied, readonly)
		]]
		if Enabled_upvr:get() then
			OpenAnimation_upvr(var64_upvr, var65_upvr, var93_upvw)
		else
			CloseAnimation_upvr(var64_upvr, var65_upvr, var93_upvw)
		end
	end)
	module_upvr_3.Gui = var64_upvr
	module_upvr_3.Controllers = tbl_4_upvr
	module_upvr_3.Container = var65_upvr
	var84 = module_upvr_3
	local TopBarY_upvr = var84.Controllers.TopBarController.TopBarY
	local TopBarHeight_upvr = module_upvr_3.Controllers.TopBarController.TopBarHeight
	local any_Computed_result1_upvr = module_upvr_4.Computed(function() -- Line 256
		--[[ Upvalues[3]:
			[1]: TopBarY_upvr (readonly)
			[2]: var65_upvr (readonly)
			[3]: TopBarHeight_upvr (readonly)
		]]
		return TopBarY_upvr:get() - var65_upvr.AbsolutePosition.Y + TopBarHeight_upvr:get() + 7
	end)
	var84 = module_upvr_4
	var84 = Frame_upvr_result3
	var84 = {}
	local var98 = var84
	var75 = module_upvr_4.Computed
	var75 = var75(function() -- Line 261
		--[[ Upvalues[1]:
			[1]: any_Computed_result1_upvr (readonly)
		]]
		return UDim2.new(0.012, 0, 0, any_Computed_result1_upvr:get())
	end)
	var98.Position = var75
	var75 = module_upvr_4.Computed
	var75 = var75(function() -- Line 264
		--[[ Upvalues[1]:
			[1]: any_Computed_result1_upvr (readonly)
		]]
		return UDim2.new(0.668, 0, 1, -any_Computed_result1_upvr:get())
	end)
	var98.Size = var75
	var84.Hydrate(var84)(var98)
	var75 = var64_upvr
	module_upvr:TagScreenGui(var75)
	var33_upvw = true
	var75 = Players_upvr.LocalPlayer
	var98 = var75.PlayerGui
	var75 = module_upvr_4
	var98 = var75.Hydrate
	var75 = Players_upvr.LocalPlayer.PlayerGui
	var98 = var98(var75)
	var75 = {}
	local ScreenOrientation_upvr = var98.ScreenOrientation
	var75.ScreenOrientation = module_upvr_4.Computed(function() -- Line 277
		--[[ Upvalues[3]:
			[1]: module_upvr_3 (copied, readonly)
			[2]: tbl_4_upvr (readonly)
			[3]: ScreenOrientation_upvr (readonly)
		]]
		if module_upvr_3.Enabled:get() then
			if tbl_4_upvr.AvatarPreviewController.FullScreen:get() then
				return Enum.ScreenOrientation.Sensor
			end
			return Enum.ScreenOrientation.LandscapeSensor
		end
		return ScreenOrientation_upvr
	end)
	var98(var75)
	-- KONSTANTERROR: [120] 87. Error Block 47 end (CF ANALYSIS FAILED)
end
function module_upvr_3.Open(arg1) -- Line 294
	--[[ Upvalues[3]:
		[1]: module_upvr_3 (readonly)
		[2]: StarterGui_upvr (readonly)
		[3]: var6_upvw (read and write)
	]]
	if module_upvr_3.Enabled:get() then
	else
		module_upvr_3.LastChatActiveState = StarterGui_upvr:GetCore("ChatActive")
		module_upvr_3.LastPlayerListState = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
		StarterGui_upvr:SetCore("ChatActive", false)
		StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
		var6_upvw:FireServer()
		module_upvr_3.Controllers.TopBarController.OpenCategory = arg1
		if module_upvr_3.TopbarButton then
			module_upvr_3.TopbarButton:select()
		end
		for _, v_5 in pairs(module_upvr_3.Controllers) do
			if v_5.OnOpen then
				v_5:OnOpen()
			end
		end
		module_upvr_3.Enabled:set(true)
	end
end
function module_upvr_3.Close() -- Line 320
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: StarterGui_upvr (readonly)
	]]
	module_upvr_3.Enabled:set(false)
	StarterGui_upvr:SetCore("ChatActive", module_upvr_3.LastChatActiveState)
	StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, module_upvr_3.LastPlayerListState)
	if module_upvr_3.TopbarButton then
		module_upvr_3.TopbarButton:deselect()
	end
	for _, v_4 in pairs(module_upvr_3.Controllers) do
		if v_4.OnClose then
			v_4:OnClose()
		end
	end
end
function module_upvr_3.OpenCatalog(arg1) -- Line 336
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	module_upvr_3.Open(arg1)
end
function module_upvr_3.CloseCatalog() -- Line 340
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	module_upvr_3.Close()
end
function module_upvr_3.PromptBuyOutfit() -- Line 344
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	module_upvr_3.Open()
	module_upvr_3.Controllers.AvatarPreviewController.OutfitLoaded.Event:Wait()
	module_upvr_3.Controllers.BuyOutfitController:ShowModal()
end
function module_upvr_3.ToggleCatalog(arg1) -- Line 353
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	if module_upvr_3.Enabled:get() then
		module_upvr_3.Close()
	else
		module_upvr_3.Open(arg1)
	end
end
function module_upvr_3.getCatalogIcon() -- Line 361
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	return module_upvr_3.TopbarButton
end
function module_upvr_3.getCatalogContainer() -- Line 365
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	return module_upvr_3.Container
end
return module_upvr_3