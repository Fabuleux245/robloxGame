-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:39
-- Luau version 6, Types version 3
-- Time taken: 0.046430 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local GuiService_upvr = game:GetService("GuiService")
local Players_upvr = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService_upvr = game:GetService("RunService")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local module_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_8_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_13_upvr = require(Modules:WaitForChild("ClientData"))
module_13_upvr.ClientDataYieldUntilInitialized()
local LootCrates_RenderStepped_upvr
while not module_upvr.IsLoaded(module_13_upvr.LocalPolicyState) do
	module_13_upvr.LocalPolicyState.LoadStateChanged:Wait()
end
local module_upvr_3 = require(Modules:WaitForChild("Gamepasses"))
local module_4_upvr = require(Modules:WaitForChild("ItemActionHandler"))
local module_6_upvr = require(Modules:WaitForChild("ItemDataUtility"))
local module_3_upvr = require(Modules:WaitForChild("NetworkRequestUtility"))
local module_upvr_6 = require(Modules:WaitForChild("Products"))
local module_upvr_2 = require(Modules:WaitForChild("Tweens"))
local module_10_upvr = require(Modules:WaitForChild("UIButton"))
local module_11_upvr = require(Modules:WaitForChild("UILegacySupport"))
local module_5_upvr = require(Modules:WaitForChild("UISelection"))
local module_14_upvr = require(Modules:WaitForChild("UIShared"))
local module_upvr_5 = require(Modules:WaitForChild("Utility"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module = require(UserInterface:WaitForChild("SidebarUI"))
local module_upvr_7 = require(UserInterface:WaitForChild("SpecialLevelUI"))
local OpenShops_upvr = ReplicatedStorage:WaitForChild("Bindables"):WaitForChild("OpenShops")
local Open = script.Parent:WaitForChild("Open")
local LevelFrame_upvr = script.Parent:WaitForChild("LevelFrame")
local MainFrame_upvr = script.Parent:FindFirstChild("MainFrame")
local SelectionFrame = MainFrame_upvr:WaitForChild("SelectionFrame")
local GamepassesFrame_upvr = MainFrame_upvr:WaitForChild("GamepassesFrame")
local GroupRewardFrame_upvr = script.Parent:WaitForChild("GroupRewardFrame")
module_11_upvr.RegisterShopFrame(LevelFrame_upvr)
module_11_upvr.RegisterShopFrame(GroupRewardFrame_upvr)
module_11_upvr.MaintainCornerRadii(script.Parent)
local any_SelectionFrameInitialize_result1_upvr = module_11_upvr.SelectionFrameInitialize(SelectionFrame, {SelectionFrame:WaitForChild("Gems"), SelectionFrame:WaitForChild("LootCrates"), SelectionFrame:WaitForChild("Gamepasses")}, {MainFrame_upvr:WaitForChild("GemsFrame"), MainFrame_upvr:WaitForChild("LootCratesFrame"), GamepassesFrame_upvr}, 0.125, true)
local _1_upvr = any_SelectionFrameInitialize_result1_upvr.Tabs[1]
module_11_upvr.LegacyBindableObjects[MainFrame_upvr] = true
local tbl_4_upvr = {
	Open = MainFrame_upvr.Visible;
	GiftUI = nil;
}
local tbl_18_upvr = {}
local function _() -- Line 110, Named "GetMonetizationState"
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: module_13_upvr (readonly)
	]]
	if module_4_upvr.GiftTarget then
		return module_4_upvr.GiftTarget.MonetizationState, true
	end
	return module_13_upvr.LocalMonetizationState, false
end
tbl_18_upvr.Formats = {
	PlayerIcon = "rbxthumb://type=AvatarHeadShot&id=%i&w=100&h=100&filters=circular";
}
tbl_18_upvr.RenderBind = "ShopScript_GIFT_UI"
local var104_upvw
function tbl_18_upvr.Create() -- Line 142
	--[[ Upvalues[5]:
		[1]: module_14_upvr (readonly)
		[2]: MainFrame_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: tbl_18_upvr (readonly)
		[5]: var104_upvw (read and write)
	]]
	local module_9_upvr = {
		_Connections = {};
		PlayerListOpen = false;
		Panel = nil;
		PlayerList = nil;
		Flag = module_14_upvr.TextBoundsFlagCreate();
	}
	module_9_upvr._Connections[#module_9_upvr._Connections + 1] = MainFrame_upvr:GetPropertyChangedSignal("Size"):Connect(function() -- Line 180, Named "MarkDirty"
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		module_9_upvr.Flag.Dirty = true
	end)
	RunService_upvr:BindToRenderStep(tbl_18_upvr.RenderBind, Enum.RenderPriority.Last.Value - 2, var104_upvw)
	return module_9_upvr
end
function tbl_18_upvr.DestroyPanel(arg1) -- Line 199
	--[[ Upvalues[1]:
		[1]: module_10_upvr (readonly)
	]]
	if arg1.Panel then
		local Panel = arg1.Panel
		arg1.Panel = nil
		module_10_upvr.Button.Destroy(Panel.Button)
		Panel.Frame:Destroy()
	end
end
function tbl_18_upvr.DestroyPlayerList(arg1) -- Line 214
	--[[ Upvalues[1]:
		[1]: module_10_upvr (readonly)
	]]
	if arg1.PlayerList then
		local PlayerList = arg1.PlayerList
		arg1.PlayerList = nil
		for _, v in PlayerList._Connections do
			v:Disconnect()
		end
		module_10_upvr.Button.Destroy(PlayerList.Button)
		PlayerList.Frame:Destroy()
	end
end
function tbl_18_upvr.Destroy(arg1) -- Line 233
	--[[ Upvalues[2]:
		[1]: tbl_18_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	for _, v_2 in arg1._Connections do
		v_2:Disconnect()
	end
	tbl_18_upvr.DestroyPanel(arg1)
	tbl_18_upvr.DestroyPlayerList(arg1)
	RunService_upvr:UnbindFromRenderStep(tbl_18_upvr.RenderBind)
end
function tbl_18_upvr.SortPlayerTiles(arg1, arg2) -- Line 250
	local DisplayName = arg2.PlayerState.Player.DisplayName
	if string.lower(arg1.PlayerState.Player.DisplayName) >= string.lower(DisplayName) then
		DisplayName = false
	else
		DisplayName = true
	end
	return DisplayName
end
local var173_upvw
function tbl_18_upvr.Update(arg1, arg2, arg3) -- Line 261
	--[[ Upvalues[12]:
		[1]: tbl_18_upvr (readonly)
		[2]: MainFrame_upvr (readonly)
		[3]: GroupRewardFrame_upvr (readonly)
		[4]: module_upvr_5 (readonly)
		[5]: module_8_upvr (readonly)
		[6]: module_10_upvr (readonly)
		[7]: module_4_upvr (readonly)
		[8]: var173_upvw (read and write)
		[9]: module_14_upvr (readonly)
		[10]: module_13_upvr (readonly)
		[11]: Players_upvr (readonly)
		[12]: tbl_4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [497] 328. Error Block 133 start (CF ANALYSIS FAILED)
	tbl_18_upvr.DestroyPlayerList(arg1)
	if not arg1.Panel then
		arg1.Flag.Dirty = true
		if tbl_4_upvr.Open then
			MainFrame_upvr.Visible = true
			GroupRewardFrame_upvr.Visible = true
		end
		local tbl_16_upvr = {
			Frame = module_upvr_5.I("Frame", {
				BackgroundColor3 = module_8_upvr.BackgroundColor1;
				BackgroundTransparency = module_8_upvr.BackgroundTransparency1;
				ZIndex = 1000;
				Parent = script.Parent;
			});
			Corner = module_upvr_5.I("UICorner", {
				Parent = tbl_16_upvr.Frame;
			});
			Button = module_10_upvr.Button.Common.Create.InlineIcon(tbl_16_upvr.Frame, module_10_upvr.Button.Themes.Use, {
				Image = module_8_upvr.Gift_Outline_256_16;
			});
		}
		tbl_16_upvr.Button.Button.Activated:Connect(function() -- Line 495
			--[[ Upvalues[5]:
				[1]: module_4_upvr (copied, readonly)
				[2]: module_10_upvr (copied, readonly)
				[3]: tbl_16_upvr (readonly)
				[4]: arg1 (readonly)
				[5]: var173_upvw (copied, read and write)
			]]
			if module_4_upvr.GiftTarget ~= nil then
				module_4_upvr.GiftTargetSet(nil)
				module_10_upvr.Input.Release(tbl_16_upvr.Button.Input)
			else
				arg1.PlayerListOpen = true
			end
			task.spawn(var173_upvw)
		end)
		local any_TextBoundsLabelCreate_result1_2, any_TextBoundsLabelCreate_result2_2 = module_14_upvr.TextBoundsLabelCreate(tbl_16_upvr.Frame, nil, arg1.Flag)
		tbl_16_upvr.Label = any_TextBoundsLabelCreate_result1_2
		tbl_16_upvr.Bounds = any_TextBoundsLabelCreate_result2_2
		arg1.Panel = tbl_16_upvr
	end
	-- KONSTANTERROR: [497] 328. Error Block 133 end (CF ANALYSIS FAILED)
end
function var104_upvw(arg1) -- Line 768
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: tbl_18_upvr (readonly)
	]]
	if tbl_4_upvr.GiftUI then
		tbl_18_upvr.Update(tbl_4_upvr.GiftUI, arg1, os.clock())
	end
end
local _3_upvr = any_SelectionFrameInitialize_result1_upvr.Tabs[3]
local theactualbutton_upvw = Open:WaitForChild("theactualbutton")
local var107_upvw
local function SetShopVisibility_upvr(arg1) -- Line 785, Named "SetShopVisibility"
	--[[ Upvalues[13]:
		[1]: tbl_4_upvr (readonly)
		[2]: MainFrame_upvr (readonly)
		[3]: GroupRewardFrame_upvr (readonly)
		[4]: OpenShops_upvr (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: any_SelectionFrameInitialize_result1_upvr (readonly)
		[7]: _3_upvr (readonly)
		[8]: tbl_18_upvr (readonly)
		[9]: module_upvr_7 (readonly)
		[10]: theactualbutton_upvw (read and write)
		[11]: module_5_upvr (readonly)
		[12]: module_4_upvr (readonly)
		[13]: var107_upvw (read and write)
	]]
	if arg1 and not tbl_4_upvr.Open then
		tbl_4_upvr.Open = true
		MainFrame_upvr.Visible = true
		GroupRewardFrame_upvr.Visible = true
		OpenShops_upvr:Fire(MainFrame_upvr)
		if GuiService_upvr.SelectedObject then
			GuiService_upvr:Select(MainFrame_upvr)
		end
		any_SelectionFrameInitialize_result1_upvr.SetActive(_3_upvr)
		if not tbl_4_upvr.GiftUI then
			tbl_4_upvr.GiftUI = tbl_18_upvr.Create()
		else
			tbl_4_upvr.GiftUI.Flag.Dirty = true
		end
	elseif not arg1 and tbl_4_upvr.Open then
		tbl_4_upvr.Open = false
		MainFrame_upvr.Visible = false
		GroupRewardFrame_upvr.Visible = false
		module_upvr_7.CloseAllOwned()
		if GuiService_upvr.SelectedObject ~= theactualbutton_upvw then
			local Parent_2 = script.Parent
			if module_5_upvr.IsInterfaceSelected(Parent_2) then
				if arg1 == nil then
					Parent_2 = theactualbutton_upvw
				else
					Parent_2 = nil
				end
				GuiService_upvr.SelectedObject = Parent_2
			end
		end
		module_4_upvr.GiftTargetSet(nil)
		if tbl_4_upvr.GiftUI then
			tbl_18_upvr.Destroy(tbl_4_upvr.GiftUI)
			tbl_4_upvr.GiftUI = nil
		end
	end
	var107_upvw.Selected = tbl_4_upvr.Open
end
local function _() -- Line 834
	--[[ Upvalues[1]:
		[1]: SetShopVisibility_upvr (readonly)
	]]
	SetShopVisibility_upvr(false)
end
LootCrates_RenderStepped_upvr = MainFrame_upvr:WaitForChild("Exit")
local module_2_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
OpenShops_upvr.Event:Connect(function(arg1) -- Line 838
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: GamepassesFrame_upvr (readonly)
		[3]: MainFrame_upvr (readonly)
		[4]: SetShopVisibility_upvr (readonly)
	]]
	if arg1 == nil and module_2_upvr.SpecialLevelUIGroup.Active and GamepassesFrame_upvr.Visible then
	elseif arg1 ~= MainFrame_upvr then
		SetShopVisibility_upvr(false)
	end
end)
Open:Destroy()
local tbl_14 = {}
LootCrates_RenderStepped_upvr = module_10_upvr.Button
tbl_14.ButtonTheme = LootCrates_RenderStepped_upvr.Themes.Floating
tbl_14.Icon = module_8_upvr.Shop_Legacy
tbl_14.Order = module.SidebarButtonOrder.Shop
tbl_14.Style = module.SidebarButtonStyle.IconText
tbl_14.Text = "Store"
function tbl_14.PressFunction() -- Line 865, Named "ToggleShop"
	--[[ Upvalues[2]:
		[1]: SetShopVisibility_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	SetShopVisibility_upvr(not tbl_4_upvr.Open)
end
LootCrates_RenderStepped_upvr = module.SidebarRegion.Left
var107_upvw = module.ButtonProfileRegister(tbl_14, LootCrates_RenderStepped_upvr)
theactualbutton_upvw = var107_upvw.Button.Button
module_13_upvr.Signals.CurrencyShopRequested:Connect(function() -- Line 888
	--[[ Upvalues[4]:
		[1]: MainFrame_upvr (readonly)
		[2]: SetShopVisibility_upvr (readonly)
		[3]: any_SelectionFrameInitialize_result1_upvr (readonly)
		[4]: _1_upvr (readonly)
	]]
	local var115 = not MainFrame_upvr.Visible
	SetShopVisibility_upvr(var115)
	if var115 then
		any_SelectionFrameInitialize_result1_upvr.SetActive(_1_upvr)
	end
end)
local function scaleButtonText_upvr() -- Line 899, Named "scaleButtonText"
	--[[ Upvalues[1]:
		[1]: MainFrame_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	if not MainFrame_upvr.Visible then return end
	local pairs_result1, pairs_result2, pairs_result3 = pairs(MainFrame_upvr:WaitForChild("SelectionFrame"):GetChildren())
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 30. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 30. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [37.6]
	-- KONSTANTERROR: [18] 15. Error Block 4 end (CF ANALYSIS FAILED)
end
MainFrame_upvr:GetPropertyChangedSignal("Visible"):connect(function() -- Line 926
	--[[ Upvalues[1]:
		[1]: scaleButtonText_upvr (readonly)
	]]
	scaleButtonText_upvr()
end)
local LootCratesFrame_upvr = MainFrame_upvr:WaitForChild("LootCratesFrame")
if module_13_upvr.LocalPolicyState.LootboxesEnabled then
	local tbl_17 = {}
	LootCrates_RenderStepped_upvr = module_upvr.ItemType.Dance
	tbl_17[LootCratesFrame_upvr:WaitForChild("Dances")] = LootCrates_RenderStepped_upvr
	LootCrates_RenderStepped_upvr = module_upvr.ItemType.Trail
	tbl_17[LootCratesFrame_upvr:WaitForChild("Trails")] = LootCrates_RenderStepped_upvr
	LootCrates_RenderStepped_upvr = module_upvr.ItemType.World
	tbl_17[LootCratesFrame_upvr:WaitForChild("Worlds")] = LootCrates_RenderStepped_upvr
	if not require(ReplicatedStorage:WaitForChild("Settings")).DancesEnabled then
		local Dances = LootCratesFrame_upvr:WaitForChild("Dances")
		LootCrates_RenderStepped_upvr = Dances:Destroy
		LootCrates_RenderStepped_upvr()
		LootCrates_RenderStepped_upvr = nil
		tbl_17[Dances] = LootCrates_RenderStepped_upvr
	end
	local tbl_9_upvr = {}
	LootCrates_RenderStepped_upvr = {}
	tbl_9_upvr.Buttons = LootCrates_RenderStepped_upvr
	LootCrates_RenderStepped_upvr = false
	tbl_9_upvr.RenderBound = LootCrates_RenderStepped_upvr
	function LootCrates_RenderStepped_upvr(arg1) -- Line 972, Named "LootCrates_RenderStepped"
		--[[ Upvalues[5]:
			[1]: tbl_9_upvr (readonly)
			[2]: module_4_upvr (readonly)
			[3]: module_13_upvr (readonly)
			[4]: module_upvr (readonly)
			[5]: module_10_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		for _, v_3 in tbl_9_upvr.Buttons do
			local var132
			if module_4_upvr.GiftTarget then
				var132 = module_4_upvr.GiftTarget.MonetizationState
			else
				var132 = module_13_upvr.LocalMonetizationState
			end
			local ProductData = v_3.ProductData
			local any_MonetizationStateGetProductEligibility_result1 = module_upvr.MonetizationStateGetProductEligibility(var132, ProductData.ProductId)
			if false then
				local _ = ProductData.GiftId
			else
			end
			if ProductData.ProductId then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local any_SaveDataGetProductCredit_result1_2 = module_upvr.SaveDataGetProductCredit(module_13_upvr.LocalSaveData, ProductData.ProductId)
			end
			local var137
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var137 = v_3.Credits
				return var137 ~= any_SaveDataGetProductCredit_result1_2
			end
			if var137 ~= any_MonetizationStateGetProductEligibility_result1 or INLINED() then
				v_3.Eligible = any_MonetizationStateGetProductEligibility_result1
				v_3.Credits = any_SaveDataGetProductCredit_result1_2
				var137 = nil
				if not any_MonetizationStateGetProductEligibility_result1 then
					var137 = "All Owned"
					v_3.Button.Theme = module_10_upvr.Button.Themes.Dull
				else
					v_3.Button.Theme = module_10_upvr.Button.Themes.BuyRobux
					if any_SaveDataGetProductCredit_result1_2 and 0 < any_SaveDataGetProductCredit_result1_2 then
						var137 = string.format("Free (%i)", any_SaveDataGetProductCredit_result1_2)
					else
						var137 = "Buy"
					end
				end
				module_10_upvr.Button.SetText(v_3.Button, var137)
			end
			var137 = module_10_upvr.Button.Update
			var137(v_3.Button, os.clock())
		end
	end
	for i_4, v_4_upvr in tbl_17 do
		local var138_upvr = module_upvr_6.ProductRandomItem_ByItemType[v_4_upvr]
		if not var138_upvr then
			i_4:Destroy()
			tbl_17[i_4] = nil
		else
			local Purchase = i_4:WaitForChild("Purchase")
			Purchase:Destroy()
			local any_CreateFancy_result1 = module_10_upvr.Button.CreateFancy(i_4, module_10_upvr.Button.Themes.BuyRobux, {
				Size = UDim2.new(module_10_upvr.Button.Properties.FancySizeX, UDim.new(0.625, 0));
			})
			module_upvr_5.PropsApply(any_CreateFancy_result1.Button, {
				Name = Purchase.Name;
				AnchorPoint = Purchase.AnchorPoint;
				Position = Purchase.Position;
				Size = Purchase.Size;
			})
			local tbl_11_upvr = {
				Button = any_CreateFancy_result1;
				ItemType = v_4_upvr;
				ProductData = var138_upvr;
				Eligible = false;
			}
			tbl_9_upvr.Buttons[#tbl_9_upvr.Buttons + 1] = tbl_11_upvr
			local var145_upvw = false
			any_CreateFancy_result1.Button.Activated:Connect(function() -- Line 1076
				--[[ Upvalues[7]:
					[1]: var145_upvw (read and write)
					[2]: tbl_11_upvr (readonly)
					[3]: module_4_upvr (readonly)
					[4]: var138_upvr (readonly)
					[5]: module_3_upvr (readonly)
					[6]: module_upvr (readonly)
					[7]: v_4_upvr (readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 12 start (CF ANALYSIS FAILED)
				if var145_upvw or not tbl_11_upvr.Eligible then return end
				var145_upvw = true
				-- KONSTANTERROR: [0] 1. Error Block 12 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [13] 12. Error Block 14 start (CF ANALYSIS FAILED)
				if var138_upvr.GiftId then
					module_3_upvr.MakeRequest({
						Request = module_upvr.StateRequestType.ProductBuy;
						Args = {var138_upvr.GiftId, module_4_upvr.GiftTarget.PlayerState.UserId};
						Callback = coroutine.running();
					})
					-- KONSTANTWARNING: GOTO [59] #43
				end
				-- KONSTANTERROR: [13] 12. Error Block 14 end (CF ANALYSIS FAILED)
			end)
			local Price_upvr = i_4:WaitForChild("Price")
			local class_ImageLabel = Price_upvr:FindFirstChildOfClass("ImageLabel")
			module_6_upvr.GeneratePriceStringAsync(function(arg1) -- Line 1115
				--[[ Upvalues[1]:
					[1]: Price_upvr (readonly)
				]]
				Price_upvr.Text = arg1
			end, module_8_upvr.FALLBACK_PRICE_STRING, module_6_upvr.TransactionType.Product, var138_upvr)
			if class_ImageLabel then
				class_ImageLabel:Destroy()
			end
		end
	end
	local tbl = {}
	for i_5 in tbl_17 do
		tbl[#tbl + 1] = i_5
		local var152
	end
	table.sort(var152, function(arg1, arg2) -- Line 1135
		local var154
		if arg1.Position.X.Scale >= arg2.Position.X.Scale then
			var154 = false
		else
			var154 = true
		end
		return var154
	end)
	local minimum = math.min(1 / #var152, 0.4)
	var138_upvr = minimum * #var152
	var138_upvr = nil
	for i_6, v_5_upvw in var152, var138_upvr do
		tbl_11_upvr = UDim2.fromScale((1 - var138_upvr) / 2 + minimum * (i_6 - 1), 0)
		v_5_upvw.Position = tbl_11_upvr
		v_5_upvw.Size = UDim2.fromScale(minimum, 1)
		local _
	end
	local function SetLevelCratesActive() -- Line 1152
		--[[ Upvalues[5]:
			[1]: LootCratesFrame_upvr (readonly)
			[2]: MainFrame_upvr (readonly)
			[3]: tbl_9_upvr (readonly)
			[4]: RunService_upvr (readonly)
			[5]: LootCrates_RenderStepped_upvr (readonly)
		]]
		local var157
		if var157 then
			var157 = MainFrame_upvr.Visible
		end
		if var157 and not tbl_9_upvr.RenderBound then
			tbl_9_upvr.RenderBound = true
			RunService_upvr:BindToRenderStep("ShopScript_LOOT-CRATES", Enum.RenderPriority.Last.Value + 1, LootCrates_RenderStepped_upvr)
		elseif not var157 and tbl_9_upvr.RenderBound then
			tbl_9_upvr.RenderBound = false
			RunService_upvr:UnbindFromRenderStep("ShopScript_LOOT-CRATES")
		end
	end
	MainFrame_upvr:GetPropertyChangedSignal("Visible"):Connect(SetLevelCratesActive)
	LootCratesFrame_upvr:GetPropertyChangedSignal("Visible"):Connect(SetLevelCratesActive)
	SetLevelCratesActive()
else
	LootCratesFrame_upvr:Destroy()
end
LootCratesFrame_upvr = _1_upvr.Tab
tbl_9_upvr = "BUY %s"
LootCrates_RenderStepped_upvr = module_8_upvr.FrontEndNames.Currency_ByCurrencyType[module_upvr.PrimaryCurrencyType].Plural.Upper
LootCratesFrame_upvr.Text = string.format(tbl_9_upvr, LootCrates_RenderStepped_upvr)
tbl_9_upvr = "GemsFrame"
LootCratesFrame_upvr = MainFrame_upvr:WaitForChild(tbl_9_upvr)
local var158 = LootCratesFrame_upvr
local children = var158:GetChildren()
tbl_9_upvr = table.sort
LootCrates_RenderStepped_upvr = children
tbl_9_upvr(LootCrates_RenderStepped_upvr, function(arg1, arg2) -- Line 1193
	local var161
	if arg1.Position.Y.Scale >= arg2.Position.Y.Scale then
		var161 = false
	else
		var161 = true
	end
	return var161
end)
tbl_9_upvr = {}
local var162 = tbl_9_upvr
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
if require(ReplicatedStorage:WaitForChild("Settings")).EnergyEnabled then
	LootCrates_RenderStepped_upvr = module_upvr_6.ProductCurrencyDynamicArray_ByType[module_upvr.PrimaryCurrencyType]
else
	LootCrates_RenderStepped_upvr = module_upvr_6.ProductCurrencyStaticArray_ByType[module_upvr.PrimaryCurrencyType]
end
if not LootCrates_RenderStepped_upvr then
end
for i_7 = #children, 1, -1 do
	local var163 = children[i_7]
	local var164_upvr = ({})[i_7]
	if not var164_upvr then
		var138_upvr = var163:Destroy
		var138_upvr()
	else
		i_6 = "BuyButton"
		var138_upvr = var163:WaitForChild(i_6)
		local IS_ELIGIBLE = var138_upvr
		v_5_upvw = "Cost"
		local SOME = var163:WaitForChild(v_5_upvw)
		tbl_11_upvr = "Item"
		i_6 = var163:WaitForChild(tbl_11_upvr)
		v_5_upvw = false
		tbl_11_upvr = IS_ELIGIBLE.Activated
		tbl_11_upvr = tbl_11_upvr:Connect
		tbl_11_upvr(function() -- Line 1225
			--[[ Upvalues[5]:
				[1]: v_5_upvw (read and write)
				[2]: module_4_upvr (readonly)
				[3]: var164_upvr (readonly)
				[4]: module_3_upvr (readonly)
				[5]: module_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var168
			if v_5_upvw then
			else
				v_5_upvw = true
				var168 = nil
				if module_4_upvr.GiftTarget then
					var168 = var164_upvr.GiftId
				else
					var168 = var164_upvr.ProductId
				end
				if var168 then
					module_3_upvr.MakeRequest({
						Request = module_upvr.StateRequestType.ProductBuy;
						Args = {var168, module_4_upvr.GiftTarget.PlayerState.UserId};
						Callback = coroutine.running();
					})
				end
				v_5_upvw = false
			end
		end)
		tbl_11_upvr = module_8_upvr.TextColor2
		IS_ELIGIBLE.TextColor3 = tbl_11_upvr
		tbl_11_upvr = module_8_upvr.TextColor2
		SOME.TextColor3 = tbl_11_upvr
		tbl_11_upvr = module_8_upvr.TextColor2
		i_6.TextColor3 = tbl_11_upvr
		tbl_11_upvr = module_8_upvr.ButtonColor2
		var163.BackgroundColor3 = tbl_11_upvr
		tbl_11_upvr = table.insert
		tbl_11_upvr(var162, 1, {
			CostLabel = SOME;
			ProductData = var164_upvr;
			ProductLabel = i_6;
			Region = var163;
		})
	end
end
for i_8, v_6 in var162 do
	IS_ELIGIBLE = v_6.Region
	IS_ELIGIBLE.Transparency = (module_8_upvr.ButtonTransparency1) * ((#var162 - i_8) / (#var162 - 1))
	local var172_upvr
end
function var173_upvw() -- Line 1276
	--[[ Upvalues[7]:
		[1]: var172_upvr (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: module_upvr_6 (readonly)
		[4]: module_13_upvr (readonly)
		[5]: module_8_upvr (readonly)
		[6]: module_4_upvr (readonly)
		[7]: module_upvr (readonly)
	]]
	for _, v_7 in var172_upvr do
		local ProductData_3 = v_7.ProductData
		local formatted = string.format("%s %s", module_upvr_5.FormatNumber(module_upvr_6.ProductGetCurrencyValueBlocking(ProductData_3, module_13_upvr.LocalSaveData), module_upvr_5.FormatNumberOptions_PriceAbbreviation), module_8_upvr.FrontEndNames.Currency_ByCurrencyType[ProductData_3.CurrencyType].Plural.Upper)
		v_7.ProductLabel.Text = formatted
		local var192
		if module_4_upvr.GiftTarget == nil then
			formatted = false
		else
			formatted = true
		end
		if formatted then
			if ProductData_3.GiftId then
				local any_SaveDataGetProductCredit_result1 = module_upvr.SaveDataGetProductCredit(module_13_upvr.LocalSaveData, ProductData_3.GiftId)
				if 0 < any_SaveDataGetProductCredit_result1 then
					var192 = string.format("Free (%i)", any_SaveDataGetProductCredit_result1)
				end
			end
		end
		if not var192 then
			var192 = string.format("%s ROBUX", module_upvr_5.FormatNumber(module_upvr_6.ProductGetProductInfo(ProductData_3).PriceInRobux, module_upvr_5.FormatNumberOptions_StandardAbbreviation))
		end
		v_7.CostLabel.Text = var192
	end
end
local var174_upvw = var173_upvw
task.spawn(var174_upvw)
MainFrame_upvr:GetPropertyChangedSignal("Visible"):Connect(var174_upvw)
var158:GetPropertyChangedSignal("Visible"):Connect(var174_upvw)
module_13_upvr.Signals.ProductCreditChanged:Connect(function(arg1) -- Line 1321
	--[[ Upvalues[3]:
		[1]: module_upvr_6 (readonly)
		[2]: var172_upvr (readonly)
		[3]: var174_upvw (read and write)
	]]
	if arg1.Type == module_upvr_6.ProductType.GiftProduct then
		for _, v_8 in var172_upvr do
			if v_8.ProductData == arg1.Data then
				var174_upvw()
			end
		end
	end
end)
var158 = GamepassesFrame_upvr:ClearAllChildren
var158()
var158 = module_upvr_5.I
var172_upvr = module_14_upvr.Properties.Centered
local tbl_5 = {
	ScrollBarImageColor3 = module_8_upvr.White;
	ScrollBarThickness = 19;
}
IS_ELIGIBLE = 1
tbl_5.Size = UDim2.new(1, -10, IS_ELIGIBLE, -10)
tbl_5.Parent = GamepassesFrame_upvr
var158 = var158("ScrollingFrame", var172_upvr, module_14_upvr.Properties.ScrollingFrame_Vertical, module_8_upvr.ScrollBarStyles.RoundThreeQuarterFull, tbl_5)
local var198_upvr = var158
local tbl_2_upvr = {}
var172_upvr = {}
tbl_2_upvr.Buttons = var172_upvr
var172_upvr = false
tbl_2_upvr.DrawDirty = var172_upvr
var172_upvr = false
tbl_2_upvr.RenderBound = var172_upvr
var172_upvr = module_14_upvr.TextBoundsFlagCreate()
tbl_2_upvr.TextBoundsFlag = var172_upvr
var172_upvr = {}
local var200_upvr = var172_upvr
var200_upvr.Eligible = 1
var200_upvr.Locked = 2
var200_upvr.Owned = 3
var200_upvr.Hidden = 4
;({})[module_upvr.DurableStateType.PurchaseEligible] = var200_upvr.Eligible
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
;({})[module_upvr.DurableStateType.PurchaseIneligible] = var200_upvr.Locked
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
;({})[module_upvr.DurableStateType.Owned] = var200_upvr.Owned
local Floating_upvw = module_10_upvr.Button.Themes.Floating
local FloatingLight_upvr = module_10_upvr.Button.Themes.FloatingLight
local assert_result1_upvr = assert(Floating_upvw.Idle)
local assert_result1_upvr_2 = assert(FloatingLight_upvr.Idle)
local function GamepassShopButtonCreate_upvr(arg1) -- Line 1436, Named "GamepassShopButtonCreate"
	--[[ Upvalues[10]:
		[1]: module_upvr_2 (readonly)
		[2]: assert_result1_upvr (readonly)
		[3]: var200_upvr (readonly)
		[4]: module_upvr_5 (readonly)
		[5]: module_14_upvr (readonly)
		[6]: var198_upvr (readonly)
		[7]: module_10_upvr (readonly)
		[8]: module_8_upvr (readonly)
		[9]: assert_result1_upvr_2 (readonly)
		[10]: tbl_2_upvr (readonly)
	]]
	local module_upvr_4 = {}
	module_upvr_4.ButtonSpec = arg1
	module_upvr_4.PriceSpec = nil
	module_upvr_4.ColorTween = module_upvr_2.new(assert(assert_result1_upvr.Color), 0.25, Enum.EasingStyle.Quad)
	module_upvr_4.Credits = nil
	module_upvr_4.Eligibility = var200_upvr.Eligible
	module_upvr_4.Button = module_upvr_5.I("TextButton", module_14_upvr.Properties.Button, {
		BackgroundTransparency = 1;
		Parent = var198_upvr;
	})
	module_upvr_4.Button.Activated:Connect(function() -- Line 1458, Named "ButtonPressed"
		--[[ Upvalues[3]:
			[1]: module_upvr_4 (readonly)
			[2]: var200_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		if module_upvr_4.Eligibility == var200_upvr.Eligible then
			arg1.PressHandler()
		end
	end)
	module_upvr_4.Input = module_10_upvr.Input.Create(module_upvr_4.Button)
	module_upvr_4.ButtonFrame = module_upvr_5.I("Frame", {
		BackgroundColor3 = module_upvr_4.ColorTween.Value;
		Parent = module_upvr_4.Button;
	})
	module_upvr_4.ButtonCorner = module_upvr_5.I("UICorner", {
		Parent = module_upvr_4.ButtonFrame;
	})
	module_upvr_4.ButtonLabel = module_upvr_5.I("TextLabel", module_14_upvr.Properties.Text, {
		AnchorPoint = Vector2.zero;
		FontFace = module_8_upvr.FontFaceNormal;
		Text = arg1.Text;
		TextColor3 = assert_result1_upvr.TextColor;
		ZIndex = 10;
		Parent = module_upvr_4.ButtonFrame;
	})
	module_upvr_4.ButtonImage = module_upvr_5.I("ImageLabel", module_14_upvr.Properties.Image, {
		ZIndex = 1;
		Parent = module_upvr_4.ButtonFrame;
	}, arg1.ImageProps)
	module_upvr_4.Cover = module_upvr_5.I("ImageLabel", module_14_upvr.Properties.Centered, module_14_upvr.Properties.Image, {
		Size = UDim2.fromScale(0.6, 0.6);
		Visible = false;
		ZIndex = 5;
		Parent = module_upvr_4.ButtonFrame;
	})
	if arg1.PriceText then
		local tbl_10 = {
			Text = arg1.PriceText;
			ColorTween = module_upvr_2.new(assert(assert_result1_upvr_2.Color), 0.25, Enum.EasingStyle.Quad);
			Frame = module_upvr_5.I("Frame", {
				AnchorPoint = Vector2.one * 0.5;
				BackgroundColor3 = tbl_10.ColorTween.Value;
				BorderSizePixel = 0;
				Position = UDim2.fromScale(0.5, 1);
				Selectable = false;
				ZIndex = 2000;
				Parent = module_upvr_4.ButtonFrame;
			});
		}
		module_upvr_5.I("UICorner", {
			CornerRadius = UDim.new(1, 0);
			Parent = tbl_10.Frame;
		})
		tbl_10.Stroke = module_upvr_5.I("UIStroke", module_14_upvr.Properties.StrokeBorder, {
			Color = assert_result1_upvr_2.TextColor;
			Parent = tbl_10.Frame;
		})
		local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2 = module_14_upvr.TextBoundsLabelCreate(tbl_10.Frame, tbl_10.Text, tbl_2_upvr.TextBoundsFlag)
		tbl_10.Label = any_TextBoundsLabelCreate_result1
		tbl_10.Bounds = any_TextBoundsLabelCreate_result2
		module_upvr_5.PropsApply(tbl_10.Label, module_14_upvr.Properties.Centered)
		module_upvr_4.PriceSpec = tbl_10
	end
	module_upvr_4.TextBounds = module_14_upvr.CachedTextBounds_FromLabel(module_upvr_4.ButtonLabel)
	module_upvr_4.TextBounds.Flag = tbl_2_upvr.TextBoundsFlag
	module_upvr_4.ImageCorner = module_upvr_5.I("UICorner", {
		Parent = module_upvr_4.ButtonImage;
	})
	return module_upvr_4
end
function IS_ELIGIBLE() -- Line 1564
	--[[ Upvalues[1]:
		[1]: var200_upvr (readonly)
	]]
	return var200_upvr.Eligible
end
local var297_upvr = IS_ELIGIBLE
local function DurableOptionCreate_upvr() -- Line 1574, Named "DO_NOTHING"
end
local function var220_upvw(arg1, arg2, arg3) -- Line 1576
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: var297_upvr (readonly)
		[3]: DurableOptionCreate_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	if arg1 == nil or arg1.Disabled then return end
	if arg1.GamepassId then
		-- KONSTANTWARNING: GOTO [35] #25
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 16. Error Block 26 start (CF ANALYSIS FAILED)
	if arg1.ProductId then
		-- KONSTANTWARNING: GOTO [35] #25
	end
	-- KONSTANTERROR: [21] 16. Error Block 26 end (CF ANALYSIS FAILED)
end
function DurableOptionCreate_upvr(arg1, arg2, arg3) -- Line 1621, Named "DurableOptionCreate"
	--[[ Upvalues[7]:
		[1]: var220_upvw (read and write)
		[2]: module_4_upvr (readonly)
		[3]: module_13_upvr (readonly)
		[4]: tbl_15_upvw (readonly)
		[5]: module_upvr (readonly)
		[6]: var200_upvr (readonly)
		[7]: module_3_upvr (readonly)
	]]
	local var220_upvw_result1_4 = var220_upvw(arg1, arg2, arg3)
	if var220_upvw_result1_4 and arg1 then
		local DurableType_upvr = arg1.DurableType
		function var220_upvw_result1_4.EligibilityHandler() -- Line 1637
			--[[ Upvalues[7]:
				[1]: module_4_upvr (copied, readonly)
				[2]: module_13_upvr (copied, readonly)
				[3]: tbl_15_upvw (copied, readonly)
				[4]: module_upvr (copied, readonly)
				[5]: DurableType_upvr (readonly)
				[6]: var200_upvr (copied, readonly)
				[7]: arg1 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var226
			if module_4_upvr.GiftTarget then
				var226 = module_4_upvr.GiftTarget.MonetizationState
			else
				var226 = module_13_upvr.LocalMonetizationState
			end
			if not tbl_15_upvw[module_upvr.MonetizationStateGetDurableState(var226, DurableType_upvr)] then
			end
			if false then
				local _ = arg1.GiftId
			else
			end
			if arg1.ProductId then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			return var200_upvr.Locked, module_upvr.SaveDataGetProductCredit(module_13_upvr.LocalSaveData, arg1.ProductId)
		end
		local var229_upvw = false
		function var220_upvw_result1_4.PressHandler() -- Line 1663
			--[[ Upvalues[6]:
				[1]: var229_upvw (read and write)
				[2]: module_4_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: module_3_upvr (copied, readonly)
				[5]: module_upvr (copied, readonly)
				[6]: DurableType_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
			if var229_upvw then
			else
				var229_upvw = true
				if module_4_upvr.GiftTarget then
					if arg1.GiftId then
						module_3_upvr.MakeRequest({
							Request = module_upvr.StateRequestType.ProductBuy;
							Args = {arg1.GiftId, module_4_upvr.GiftTarget.PlayerState.UserId};
							Callback = coroutine.running();
						})
						-- KONSTANTWARNING: GOTO [73] #50
					end
				else
					module_3_upvr.MakeRequest({
						Request = module_upvr.StateRequestType.DurableBuy;
						Args = {DurableType_upvr};
						Callback = coroutine.running();
					})
				end
				-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [73] 50. Error Block 8 start (CF ANALYSIS FAILED)
				var229_upvw = false
				-- KONSTANTERROR: [73] 50. Error Block 8 end (CF ANALYSIS FAILED)
			end
		end
	end
	return var220_upvw_result1_4
end
local tbl_15_upvw = {}
local var221 = DurableOptionCreate_upvr
local function GamepassOptionCreate(arg1, arg2, arg3) -- Line 1705
	--[[ Upvalues[7]:
		[1]: var220_upvw (read and write)
		[2]: module_4_upvr (readonly)
		[3]: module_13_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: var200_upvr (readonly)
		[6]: module_3_upvr (readonly)
		[7]: module_upvr_3 (readonly)
	]]
	local var220_upvw_result1_2 = var220_upvw(arg1, arg2, arg3)
	if var220_upvw_result1_2 and arg1 then
		local GamepassId_upvr = arg1.GamepassId
		function var220_upvw_result1_2.EligibilityHandler() -- Line 1721
			--[[ Upvalues[6]:
				[1]: module_4_upvr (copied, readonly)
				[2]: module_13_upvr (copied, readonly)
				[3]: module_upvr (copied, readonly)
				[4]: GamepassId_upvr (readonly)
				[5]: var200_upvr (copied, readonly)
				[6]: arg1 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var237
			if module_4_upvr.GiftTarget then
				var237 = module_4_upvr.GiftTarget.MonetizationState
			else
				var237 = module_13_upvr.LocalMonetizationState
			end
			if module_upvr.MonetizationStateGetGamepassOwned(var237, GamepassId_upvr) then
			else
			end
			local var238
			if false then
				if arg1.GiftId then
					var238 = module_upvr.SaveDataGetProductCredit(module_13_upvr.LocalSaveData, arg1.GiftId)
					return var200_upvr.Eligible, var238
				end
			end
			return var200_upvr.Locked, var238
		end
		local var240_upvw = false
		function var220_upvw_result1_2.PressHandler() -- Line 1753
			--[[ Upvalues[7]:
				[1]: var240_upvw (read and write)
				[2]: module_4_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: module_3_upvr (copied, readonly)
				[5]: module_upvr (copied, readonly)
				[6]: module_upvr_3 (copied, readonly)
				[7]: module_13_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
			if var240_upvw then
			else
				var240_upvw = true
				if module_4_upvr.GiftTarget then
					if arg1.GiftId then
						module_3_upvr.MakeRequest({
							Request = module_upvr.StateRequestType.ProductBuy;
							Args = {arg1.GiftId, module_4_upvr.GiftTarget.PlayerState.UserId};
							Callback = coroutine.running();
						})
						-- KONSTANTWARNING: GOTO [57] #41
					end
				else
					module_upvr_3.GamepassBuy(arg1, module_13_upvr.LocalPlayerState)
				end
				-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [57] 41. Error Block 8 start (CF ANALYSIS FAILED)
				var240_upvw = false
				-- KONSTANTERROR: [57] 41. Error Block 8 end (CF ANALYSIS FAILED)
			end
		end
	end
	return var220_upvw_result1_2
end
local function WorldCounterOptionCreate(arg1, arg2, arg3) -- Line 1792
	--[[ Upvalues[9]:
		[1]: module_upvr_6 (readonly)
		[2]: module_8_upvr (readonly)
		[3]: var220_upvw (read and write)
		[4]: module_4_upvr (readonly)
		[5]: module_13_upvr (readonly)
		[6]: module_upvr (readonly)
		[7]: var200_upvr (readonly)
		[8]: module_3_upvr (readonly)
		[9]: module_upvr_7 (readonly)
	]]
	local var257_upvr = module_upvr_6.ProductIncrementCounter_ByCounterType[arg1]
	local var258
	if not var257_upvr then return end
	if not var258 then
		local var259 = module_8_upvr.FrontEndNames.Counter_ByCounterType[arg1]
		if var259 then
			var258 = var259.Plural.Proper
		end
	end
	local var220_upvw_result1 = var220_upvw(var257_upvr, var258, arg3)
	if var220_upvw_result1 and var257_upvr then
		function var220_upvw_result1.EligibilityHandler() -- Line 1823
			--[[ Upvalues[5]:
				[1]: module_4_upvr (copied, readonly)
				[2]: module_13_upvr (copied, readonly)
				[3]: module_upvr (copied, readonly)
				[4]: var257_upvr (readonly)
				[5]: var200_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
			local var262
			if module_4_upvr.GiftTarget then
				var262 = module_4_upvr.GiftTarget.MonetizationState
			else
				var262 = module_13_upvr.LocalMonetizationState
			end
			if module_upvr.MonetizationStateGetProductEligibility(var262, var257_upvr.ProductId) then
				-- KONSTANTWARNING: GOTO [32] #25
			end
			-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [29] 23. Error Block 20 start (CF ANALYSIS FAILED)
			if false then
				local _ = var257_upvr.GiftId
			else
			end
			if var257_upvr.ProductId then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			do
				return var200_upvr.Owned, module_upvr.SaveDataGetProductCredit(module_13_upvr.LocalSaveData, var257_upvr.ProductId)
			end
			-- KONSTANTERROR: [29] 23. Error Block 20 end (CF ANALYSIS FAILED)
		end
		local var265_upvw = false
		local CounterType_upvr_2 = var257_upvr.CounterType
		function var220_upvw_result1.PressHandler() -- Line 1853
			--[[ Upvalues[7]:
				[1]: var265_upvw (read and write)
				[2]: module_4_upvr (copied, readonly)
				[3]: var257_upvr (readonly)
				[4]: module_3_upvr (copied, readonly)
				[5]: module_upvr (copied, readonly)
				[6]: module_upvr_7 (copied, readonly)
				[7]: CounterType_upvr_2 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
			if var265_upvw then
			else
				var265_upvw = true
				if module_4_upvr.GiftTarget then
					if var257_upvr.GiftId then
						module_3_upvr.MakeRequest({
							Request = module_upvr.StateRequestType.ProductBuy;
							Args = {var257_upvr.GiftId, module_4_upvr.GiftTarget.PlayerState.UserId};
							Callback = coroutine.running();
						})
						-- KONSTANTWARNING: GOTO [84] #58
					end
				elseif not module_upvr_7.PromptIfAllOwned(CounterType_upvr_2) then
					module_3_upvr.MakeRequest({
						Request = module_upvr.StateRequestType.CounterIncrement;
						Args = {CounterType_upvr_2, module_upvr.UnlockMethod.Product};
						Callback = coroutine.running();
					})
				end
				-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [84] 58. Error Block 9 start (CF ANALYSIS FAILED)
				var265_upvw = false
				-- KONSTANTERROR: [84] 58. Error Block 9 end (CF ANALYSIS FAILED)
			end
		end
	end
	return var220_upvw_result1
end
local tbl_12 = {
	[#tbl_12 + 1] = WorldCounterOptionCreate(module_upvr.CounterType.SecretLevels);
	[#tbl_12 + 1] = WorldCounterOptionCreate(module_upvr.CounterType.ForbiddenLevels);
	[#tbl_12 + 1] = GamepassOptionCreate(module_upvr_3.GamepassItems_ByItemType[module_upvr.ItemType.World].FD, "Final Destiny", module_8_upvr.PassIcon_FinalDestiny);
	[#tbl_12 + 1] = GamepassOptionCreate(module_upvr_3.GamepassItems_ByItemType[module_upvr.ItemType.World].Retro, "Retro World", module_8_upvr.PassIcon_RetroLevelPack);
	[#tbl_12 + 1] = GamepassOptionCreate(module_upvr_3.GamepassTools_ByToolType[module_upvr.ToolType.Cloud], "Cloud", module_8_upvr.PassIcon_Cloud);
	[#tbl_12 + 1] = GamepassOptionCreate(module_upvr_3.GamepassTools_ByToolType[module_upvr.ToolType.GravityCoil], "Gravity Coil", module_8_upvr.PassIcon_GravityCoil);
	[#tbl_12 + 1] = GamepassOptionCreate(module_upvr_3.GamepassTools_ByToolType[module_upvr.ToolType.SpeedCoil], "Speed Coil", module_8_upvr.PassIcon_SpeedCoil);
}
local tbl_7 = {
	Text = "Donation Leaderboard";
	ImageProps = {
		Image = "rbxasset://textures/ui/common/robux@3x.png";
	};
}
local function PressHandler() -- Line 1922
	--[[ Upvalues[1]:
		[1]: module_13_upvr (readonly)
	]]
	module_13_upvr.Signals.DonationsPageRequested:Fire()
end
tbl_7.PressHandler = PressHandler
tbl_7.EligibilityHandler = var297_upvr
tbl_12[#tbl_12 + 1] = tbl_7
tbl_12[#tbl_12 + 1] = GamepassOptionCreate(module_upvr_3.GamepassItems_ByItemType[module_upvr.ItemType.Trail].SpkGP, "Sparkles", module_8_upvr.PassIcon_SparklesEffect)
tbl_12[#tbl_12 + 1] = GamepassOptionCreate(module_upvr_3.GamepassItems_ByItemType[module_upvr.ItemType.Trail].FireGP, "Fire", module_8_upvr.PassIcon_FireEffect)
tbl_12[#tbl_12 + 1] = GamepassOptionCreate(module_upvr_3.GamepassPermission_ByPermissionType[module_upvr.PermissionType.EggsOpen3])
tbl_12[#tbl_12 + 1] = GamepassOptionCreate(module_upvr_3.GamepassPermission_ByPermissionType[module_upvr.PermissionType.EggsOpen8])
for _, v_9 in module_upvr_3.Gamepasses.Luck do
	tbl_12[#tbl_12 + 1] = GamepassOptionCreate(v_9)
	local var274
end
var274[#var274 + 1] = var221(module_upvr_6.ProductDataDurable_ByDurableType[module_upvr.DurableType.Luck3x])
var274[#var274 + 1] = var221(module_upvr_6.ProductDataDurable_ByDurableType[module_upvr.DurableType.Luck4x])
for i_12, v_10 in var274 do
	tbl_2_upvr.Buttons[i_12] = GamepassShopButtonCreate_upvr(v_10)
	local var275_upvr
end
local module_7_upvr = require(Modules:WaitForChild("Subscriptions"))
task.spawn(function() -- Line 1957
	--[[ Upvalues[7]:
		[1]: module_7_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: var275_upvr (readonly)
		[5]: GamepassShopButtonCreate_upvr (readonly)
		[6]: module_4_upvr (readonly)
		[7]: var200_upvr (readonly)
	]]
	if module_13_upvr.SubscriptionStatusGet(module_7_upvr.Subscriptions.VIP[1], true).Status == module_upvr.SubscriptionStatus.Active then
		var275_upvr.Buttons[#var275_upvr.Buttons + 1] = GamepassShopButtonCreate_upvr({
			Text = "Legacy VIP Subscription";
			ImageProps = {
				Image = "rbxassetid://"..module_7_upvr.SubscriptionGetSubscriptionInfo(module_7_upvr.Subscriptions.VIP[1]).IconImageAssetId;
			};
			PressHandler = function() -- Line 1973, Named "PressHandler"
				--[[ Upvalues[2]:
					[1]: module_7_upvr (copied, readonly)
					[2]: module_13_upvr (copied, readonly)
				]]
				module_7_upvr.SubscriptionBuy(module_7_upvr.Subscriptions.VIP[1], module_13_upvr.LocalPlayerState)
			end;
			EligibilityHandler = function() -- Line 1978, Named "EligibilityHandler"
				--[[ Upvalues[3]:
					[1]: module_4_upvr (copied, readonly)
					[2]: module_13_upvr (copied, readonly)
					[3]: var200_upvr (copied, readonly)
				]]
				local var280
				if module_4_upvr.GiftTarget then
					var280 = true
				else
					var280 = false
				end
				if var280 then
					return var200_upvr.Locked
				end
				return var200_upvr.Eligible
			end;
		})
		var275_upvr.TextBoundsFlag.Dirty = true
	end
end)
local function Gamepasses_RenderStepped_upvr(arg1) -- Line 1997, Named "Gamepasses_RenderStepped"
	--[[ Upvalues[9]:
		[1]: var275_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: var200_upvr (readonly)
		[4]: module_8_upvr (readonly)
		[5]: module_10_upvr (readonly)
		[6]: Floating_upvw (readonly)
		[7]: FloatingLight_upvr (readonly)
		[8]: module_14_upvr (readonly)
		[9]: var198_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 116 start (CF ANALYSIS FAILED)
	local os_clock_result1 = os.clock()
	local var282 = var275_upvr
	var282.DrawDirty = false
	local var283
	if var275_upvr.DrawDirty then
		var282 = module_upvr_2.Reset
	else
		var282 = module_upvr_2.Update
	end
	-- KONSTANTERROR: [0] 1. Error Block 116 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [202] 134. Error Block 100 start (CF ANALYSIS FAILED)
	var283 = module_10_upvr
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [205.8]
	var283 = nil.Input
	local any_GetThemeFromInput_result1_2 = var283.GetThemeFromInput(var283, Floating_upvw)
	var283 = any_GetThemeFromInput_result1_2
	if var283 then
		var283 = any_GetThemeFromInput_result1_2.Color
	end
	if var283 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_upvr_2.Begin(nil.ColorTween, os_clock_result1, var283)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var282(nil.ColorTween, os_clock_result1, var283)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil.ColorTween.Dirty then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		nil.ButtonFrame.BackgroundColor3 = nil.ColorTween.Value
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var285
	if nil.PriceSpec then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local PriceSpec = nil.PriceSpec
		var285 = module_10_upvr
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var285 = nil.Input
		local any_GetThemeFromInput_result1 = var285.GetThemeFromInput(var285, FloatingLight_upvr)
		var285 = any_GetThemeFromInput_result1
		if var285 then
			var285 = any_GetThemeFromInput_result1.Color
		end
		if var285 then
			module_upvr_2.Begin(PriceSpec.ColorTween, os_clock_result1, var285)
		end
		var282(PriceSpec.ColorTween, os_clock_result1, var285)
		if PriceSpec.ColorTween.Dirty then
			PriceSpec.Frame.BackgroundColor3 = PriceSpec.ColorTween.Value
		end
	end
	-- KONSTANTERROR: [202] 134. Error Block 100 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 19. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [24] 19. Error Block 6 end (CF ANALYSIS FAILED)
end
local function SetGamepassesActive() -- Line 2236
	--[[ Upvalues[6]:
		[1]: GamepassesFrame_upvr (readonly)
		[2]: MainFrame_upvr (readonly)
		[3]: var275_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: Gamepasses_RenderStepped_upvr (readonly)
		[6]: module_10_upvr (readonly)
	]]
	local Visible = GamepassesFrame_upvr.Visible
	if Visible then
		Visible = MainFrame_upvr.Visible
	end
	if Visible then
		if not var275_upvr.RenderBound then
			MainFrame_upvr.Size = UDim2.new(MainFrame_upvr.Size.X, UDim.new(0.635, 0))
			var275_upvr.TextBoundsFlag.Dirty = true
			var275_upvr.DrawDirty = true
			var275_upvr.RenderBound = true
			RunService_upvr:BindToRenderStep("ShopScript_GAME-PASSES", Enum.RenderPriority.Last.Value - 1, Gamepasses_RenderStepped_upvr)
			return
		end
	end
	if not Visible and var275_upvr.RenderBound then
		MainFrame_upvr.Size = UDim2.new(MainFrame_upvr.Size.X, UDim.new(0.5, 0))
		var275_upvr.RenderBound = false
		for _, v_11 in var275_upvr.Buttons do
			module_10_upvr.Input.Release(v_11.Input)
		end
		RunService_upvr:UnbindFromRenderStep("ShopScript_GAME-PASSES")
	end
end
MainFrame_upvr:GetPropertyChangedSignal("Visible"):Connect(SetGamepassesActive)
GamepassesFrame_upvr:GetPropertyChangedSignal("Visible"):Connect(SetGamepassesActive)
SetGamepassesActive()
var200_upvr = "TextLabel"
var198_upvr = GroupRewardFrame_upvr:WaitForChild(var200_upvr)
tbl_15_upvw = "ClaimFrame"
var275_upvr = GroupRewardFrame_upvr:WaitForChild(tbl_15_upvw)
tbl_15_upvw = "TextButton"
var275_upvr = var275_upvr:WaitForChild(tbl_15_upvw)
local var293 = var275_upvr
tbl_15_upvw = module_10_upvr.Button
var200_upvr = tbl_15_upvw.CreateFancy
tbl_15_upvw = var293.Parent
assert_result1_upvr = module_10_upvr.Button
FloatingLight_upvr = assert_result1_upvr.Themes
Floating_upvw = FloatingLight_upvr.Success
FloatingLight_upvr = {}
local var294 = FloatingLight_upvr
assert_result1_upvr = "Claim"
var294.Text = assert_result1_upvr
assert_result1_upvr_2 = module_11_upvr.ShopSizes
assert_result1_upvr = assert_result1_upvr_2.BuyTextSizeLarge
var294.Size = assert_result1_upvr
var200_upvr = var200_upvr(tbl_15_upvw, Floating_upvw, var294)
local SetLevelVisibility_upvw = var200_upvr
tbl_15_upvw = module_upvr_5.PropsApply
Floating_upvw = SetLevelVisibility_upvw.Button
var294 = {}
local GroupReward_RenderStepped_upvr = var294
assert_result1_upvr = var293.AnchorPoint
GroupReward_RenderStepped_upvr.AnchorPoint = assert_result1_upvr
assert_result1_upvr = var293.Position
GroupReward_RenderStepped_upvr.Position = assert_result1_upvr
assert_result1_upvr = var293.Size
GroupReward_RenderStepped_upvr.Size = assert_result1_upvr
tbl_15_upvw(Floating_upvw, GroupReward_RenderStepped_upvr)
tbl_15_upvw = var293:Destroy
tbl_15_upvw()
tbl_15_upvw = {}
Floating_upvw = {}
tbl_15_upvw.Connections = Floating_upvw
Floating_upvw = false
tbl_15_upvw.RenderBound = Floating_upvw
Floating_upvw = false
GroupReward_RenderStepped_upvr = tbl_15_upvw.Connections
GamepassShopButtonCreate_upvr = tbl_15_upvw.Connections
assert_result1_upvr_2 = #GamepassShopButtonCreate_upvr
assert_result1_upvr = assert_result1_upvr_2 + 1
GamepassShopButtonCreate_upvr = SetLevelVisibility_upvw.Button
assert_result1_upvr_2 = GamepassShopButtonCreate_upvr.Activated
function var297_upvr() -- Line 2311
	--[[ Upvalues[2]:
		[1]: Floating_upvw (read and write)
		[2]: module_4_upvr (readonly)
	]]
	if Floating_upvw then
	else
		Floating_upvw = true
		module_4_upvr.GroupRewardClaimCurrent(true)
		Floating_upvw = false
	end
end
assert_result1_upvr_2 = assert_result1_upvr_2:Connect(var297_upvr)
GroupReward_RenderStepped_upvr[assert_result1_upvr] = assert_result1_upvr_2
function GroupReward_RenderStepped_upvr(arg1) -- Line 2324, Named "GroupReward_RenderStepped"
	--[[ Upvalues[2]:
		[1]: module_10_upvr (readonly)
		[2]: SetLevelVisibility_upvw (readonly)
	]]
	module_10_upvr.Button.Update(SetLevelVisibility_upvw, os.clock())
end
function assert_result1_upvr() -- Line 2329, Named "SetClaimActive"
	--[[ Upvalues[8]:
		[1]: module_6_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: GroupRewardFrame_upvr (readonly)
		[4]: var198_upvr (readonly)
		[5]: module_upvr_5 (readonly)
		[6]: tbl_15_upvw (readonly)
		[7]: RunService_upvr (readonly)
		[8]: GroupReward_RenderStepped_upvr (readonly)
	]]
	local any_GroupRewardAvailable_result1 = module_6_upvr.GroupRewardAvailable(module_13_upvr.LocalSaveData)
	if any_GroupRewardAvailable_result1 then
		any_GroupRewardAvailable_result1 = GroupRewardFrame_upvr.Visible
	end
	if any_GroupRewardAvailable_result1 then
		var198_upvr.Text = string.format("Like the game & join the group for %s!", module_upvr_5.FormatArray_OxfordComma(module_6_upvr.GroupRewardGetCurrentRewardStrings(module_13_upvr.LocalSaveData)))
	end
	if any_GroupRewardAvailable_result1 and not tbl_15_upvw.RenderBound then
		tbl_15_upvw.RenderBound = true
		RunService_upvr:BindToRenderStep("ShopScript_GROUP-REWARD", Enum.RenderPriority.Last.Value + 1, GroupReward_RenderStepped_upvr)
	elseif not any_GroupRewardAvailable_result1 and tbl_15_upvw.RenderBound then
		tbl_15_upvw.RenderBound = false
		RunService_upvr:UnbindFromRenderStep("ShopScript_GROUP-REWARD")
	end
end
local var298_upvr = assert_result1_upvr
assert_result1_upvr_2 = tbl_15_upvw.Connections
var297_upvr = #tbl_15_upvw.Connections
GamepassShopButtonCreate_upvr = var297_upvr + 1
var297_upvr = GroupRewardFrame_upvr:GetPropertyChangedSignal("Visible"):Connect(var298_upvr)
assert_result1_upvr_2[GamepassShopButtonCreate_upvr] = var297_upvr
function assert_result1_upvr_2() -- Line 2363, Named "UpdateClaimState"
	--[[ Upvalues[8]:
		[1]: module_6_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: var298_upvr (readonly)
		[4]: tbl_15_upvw (readonly)
		[5]: module_11_upvr (readonly)
		[6]: GroupRewardFrame_upvr (readonly)
		[7]: module_10_upvr (readonly)
		[8]: SetLevelVisibility_upvw (readonly)
	]]
	if not module_6_upvr.GroupRewardAvailable(module_13_upvr.LocalSaveData) then
		var298_upvr()
		for _, v_12 in tbl_15_upvw.Connections do
			v_12:Disconnect()
		end
		table.clear(tbl_15_upvw.Connections)
		module_11_upvr.UnregisterShopFrame(GroupRewardFrame_upvr)
		module_10_upvr.Button.Destroy(SetLevelVisibility_upvw)
		GroupRewardFrame_upvr:Destroy()
	end
end
local var300_upvr = assert_result1_upvr_2
GamepassShopButtonCreate_upvr = tbl_15_upvw.Connections
var297_upvr = #tbl_15_upvw.Connections + 1
GamepassShopButtonCreate_upvr[var297_upvr] = module_13_upvr.Signals.GroupRewardClaimed:Connect(function(arg1) -- Line 2382
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: var300_upvr (readonly)
	]]
	if arg1 == module_6_upvr.CurrentGroupReward.Id then
		var300_upvr()
	end
end)
var297_upvr = module_13_upvr.Flags
GamepassShopButtonCreate_upvr = var297_upvr.LocalSaveDataLoaded
if not GamepassShopButtonCreate_upvr then
	GamepassShopButtonCreate_upvr = tbl_15_upvw.Connections
	var297_upvr = #tbl_15_upvw.Connections + 1
	GamepassShopButtonCreate_upvr[var297_upvr] = module_13_upvr.Signals.SaveDataLoaded:Connect(function() -- Line 2388
		--[[ Upvalues[1]:
			[1]: var300_upvr (readonly)
		]]
		var300_upvr()
	end)
end
GamepassShopButtonCreate_upvr = var298_upvr
GamepassShopButtonCreate_upvr()
GamepassShopButtonCreate_upvr = var300_upvr
GamepassShopButtonCreate_upvr()
SetLevelVisibility_upvw = "BuyFrame"
var198_upvr = LevelFrame_upvr:WaitForChild(SetLevelVisibility_upvw)
SetLevelVisibility_upvw = "TextButton"
var198_upvr = var198_upvr:WaitForChild(SetLevelVisibility_upvw)
local var305_upvr = var198_upvr
tbl_15_upvw = "Exit"
var293 = LevelFrame_upvr:WaitForChild(tbl_15_upvw)
tbl_15_upvw = "TextButton"
var293 = var293:WaitForChild(tbl_15_upvw)
function SetLevelVisibility_upvw(arg1) -- Line 2407, Named "SetLevelVisibility"
	--[[ Upvalues[4]:
		[1]: LevelFrame_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: var305_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	local var306
	if arg1 ~= true then
		var306 = false
	else
		var306 = true
	end
	LevelFrame_upvr.Visible = var306
	var306 = LevelFrame_upvr
	if var306.Visible then
		var306 = module_5_upvr
		var306 = var305_upvr
		var306.SetSelectedObjectInContext(var306)
	else
		var306 = module_5_upvr
		var306 = LevelFrame_upvr
		if var306.IsInterfaceSelected(var306) then
			var306 = nil
			GuiService_upvr.SelectedObject = var306
		end
	end
end
tbl_15_upvw = true
local module_12_upvr = require(Modules:WaitForChild("Worlds"))
var305_upvr.Activated:Connect(function() -- Line 2420
	--[[ Upvalues[8]:
		[1]: tbl_15_upvw (read and write)
		[2]: module_4_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: module_12_upvr (readonly)
		[5]: LevelFrame_upvr (readonly)
		[6]: module_5_upvr (readonly)
		[7]: var305_upvr (readonly)
		[8]: GuiService_upvr (readonly)
	]]
	if tbl_15_upvw and module_4_upvr.ItemActionCanPerform(module_upvr.ItemAction.Buy, module_upvr.ItemType.World, module_12_upvr.Data_ById.Reload) then
		tbl_15_upvw = false
		LevelFrame_upvr.Visible = false
		if LevelFrame_upvr.Visible then
			module_5_upvr.SetSelectedObjectInContext(var305_upvr)
		elseif module_5_upvr.IsInterfaceSelected(LevelFrame_upvr) then
			GuiService_upvr.SelectedObject = nil
		end
		module_4_upvr.ItemActionPerform(module_upvr.ItemAction.Buy, module_upvr.ItemType.World, module_12_upvr.Data_ById.Reload, true)
		tbl_15_upvw = true
	end
end)
var293.Activated:connect(function() -- Line 2441
	--[[ Upvalues[4]:
		[1]: LevelFrame_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: var305_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	LevelFrame_upvr.Visible = false
	if LevelFrame_upvr.Visible then
		module_5_upvr.SetSelectedObjectInContext(var305_upvr)
	elseif module_5_upvr.IsInterfaceSelected(LevelFrame_upvr) then
		GuiService_upvr.SelectedObject = nil
	end
end)
local var311_upvw = false
module_13_upvr.Signals.LevelReloadedPromptRequested:Connect(function() -- Line 2447
	--[[ Upvalues[3]:
		[1]: var311_upvw (read and write)
		[2]: module_11_upvr (readonly)
		[3]: SetShopVisibility_upvr (readonly)
	]]
	if not var311_upvw and not module_11_upvr.AnyShopsOpen() then
		var311_upvw = true
		SetShopVisibility_upvr(true)
		task.wait(0.4)
		var311_upvw = false
	end
end)
var305_upvr = Vector3.new(0, 0, 0)
local var312_upvw = var305_upvr
var293 = nil
local var313_upvw = var293
SetLevelVisibility_upvw = false
local function MonitorProximity_upvr() -- Line 2468, Named "MonitorProximity"
	--[[ Upvalues[4]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var312_upvw (read and write)
		[3]: var313_upvw (read and write)
		[4]: SetShopVisibility_upvr (readonly)
	]]
	local Character = LocalPlayer_upvr.Character
	local var315 = Character
	if var315 then
		var315 = Character.PrimaryPart
	end
	local var316 = true
	if var315 then
		if 40 >= (var315.Position - var312_upvw).Magnitude then
			var316 = false
		else
			var316 = true
		end
	end
	if var316 and var313_upvw then
		var313_upvw:Disconnect()
		var313_upvw = nil
		SetShopVisibility_upvr(false)
	end
end
local _2_upvr = any_SelectionFrameInitialize_result1_upvr.Tabs[2]
module_13_upvr.Signals.LootboxInterfaceOpenRequested:Connect(function(arg1) -- Line 2485
	--[[ Upvalues[9]:
		[1]: var312_upvw (read and write)
		[2]: SetLevelVisibility_upvw (read and write)
		[3]: module_11_upvr (readonly)
		[4]: SetShopVisibility_upvr (readonly)
		[5]: any_SelectionFrameInitialize_result1_upvr (readonly)
		[6]: _2_upvr (readonly)
		[7]: var313_upvw (read and write)
		[8]: RunService_upvr (readonly)
		[9]: MonitorProximity_upvr (readonly)
	]]
	var312_upvw = arg1
	if not SetLevelVisibility_upvw and not module_11_upvr.AnyShopsOpen() then
		SetLevelVisibility_upvw = true
		SetShopVisibility_upvr(true)
		any_SelectionFrameInitialize_result1_upvr.SetActive(_2_upvr)
		if not var313_upvw then
			var313_upvw = RunService_upvr.PostSimulation:Connect(MonitorProximity_upvr)
		end
		task.wait(0.4)
		SetLevelVisibility_upvw = false
	end
end)