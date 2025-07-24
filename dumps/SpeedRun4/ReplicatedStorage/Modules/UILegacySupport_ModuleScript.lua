-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:19
-- Luau version 6, Types version 3
-- Time taken: 0.031146 seconds

local module_upvr_4 = {}
local Players_upvr = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService_upvr = game:GetService("UserInputService")
local module_upvr_13 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_3_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_3 = require(Modules:WaitForChild("ClientData"))
local module_upvr_5 = require(Modules:WaitForChild("InputMode"))
local module_upvr_8 = require(Modules:WaitForChild("ItemActionHandler"))
local module_upvr_11 = require(Modules:WaitForChild("ItemDataUtility"))
local module_upvr_7 = require(Modules:WaitForChild("Tweens"))
local module_upvr_14 = require(Modules:WaitForChild("UIButton"))
local module_upvr_9 = require(Modules:WaitForChild("UISelection"))
local module_upvr_2 = require(Modules:WaitForChild("UIShared"))
local module_5_upvr = require(Modules:WaitForChild("Utility"))
local OpenShops_upvr = ReplicatedStorage:WaitForChild("Bindables"):WaitForChild("OpenShops")
local ButtonB_upvr = Enum.KeyCode.ButtonB
module_upvr_4.UnownedBehavior = table.freeze({
	Show = 1;
	Hide = 2;
	Omit = 3;
	OmitUnlockable = 4;
})
module_upvr_4.BuyButtonBehavior = table.freeze({
	Buy = 1;
	OpenPopup = 2;
})
module_upvr_4.LegacyBindableObjects = {}
local tbl_5_upvr = {
	BuyTextPadding = UDim.new(0.125, 0);
	CellSize_ByIsSmallTouchScreen = {
		[true] = UDim2.fromOffset(100, 150);
		[false] = UDim2.fromOffset(125, 225);
	};
	CellPadding = UDim2.fromOffset(10, 10);
	IconPadding = 10;
	PriceScale = Vector2.new(0.8, 0.1);
	TitleTextMaxSize = 30;
}
module_upvr_4.SelectionFrameDims = {
	OffsetYEm = 0.5;
	TabSizeYScale = 0.75;
	TextPadding = UDim.new(0.05, 0);
}
tbl_5_upvr.BuyTextSize = UDim2.new(module_upvr_14.Button.Properties.FancySizeX, UDim.new(0.75 * (1 - 2 * tbl_5_upvr.BuyTextPadding.Scale), tbl_5_upvr.BuyTextPadding.Offset))
tbl_5_upvr.BuyTextSizeLarge = UDim2.new(module_upvr_14.Button.Properties.FancySizeX, UDim.new(0.75 * (1 - tbl_5_upvr.BuyTextPadding.Scale), tbl_5_upvr.BuyTextPadding.Offset))
local any_TableFreezeAll_result1 = module_5_upvr.TableFreezeAll(tbl_5_upvr)
module_upvr_4.ShopSizes = any_TableFreezeAll_result1
local var33
if module_upvr_5.Mode ~= module_upvr_5.Touch then
	any_TableFreezeAll_result1 = false
else
	any_TableFreezeAll_result1 = true
end
module_upvr_4.MobileOffsetsApplied = any_TableFreezeAll_result1
module_upvr_4.MobileOffsetsAppliedDirty = false
local tbl_4_upvr = {
	CloseButtons = {};
	CornerState_ByUICorner = {};
	Prompts = {};
	PromptCountTotal = 0;
	PromptsString = "";
	PromptsVisible = false;
	SelectionFrameStates = {};
	SelectionFrameStatesDirty = false;
	ShopFrames = {};
	ShopInventory_ByScrollingFrame = {};
	VisibleBuyButtons = {};
}
function module_upvr_4.MaintainCornerRadii(arg1, arg2) -- Line 154
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	local descendants = arg1:GetDescendants()
	descendants[#descendants + 1] = arg1
	for _, v_upvr in descendants do
		if v_upvr:IsA("UICorner") and tbl_4_upvr.CornerState_ByUICorner[v_upvr] == nil then
			local tbl_10_upvr = {
				Connections = {};
			}
			tbl_10_upvr.EmSizeFactor = arg2
			tbl_10_upvr.Connections[#tbl_10_upvr.Connections + 1] = v_upvr.AncestryChanged:Connect(function(arg1_2, arg2_2) -- Line 170
				--[[ Upvalues[3]:
					[1]: tbl_4_upvr (copied, readonly)
					[2]: v_upvr (readonly)
					[3]: tbl_10_upvr (readonly)
				]]
				if not arg2_2 then
					tbl_4_upvr.CornerState_ByUICorner[v_upvr] = nil
					for _, v_2 in tbl_10_upvr.Connections do
						v_2:Disconnect()
					end
				end
			end)
			tbl_10_upvr.Connections[#tbl_10_upvr.Connections + 1] = v_upvr.Destroying:Connect(function() -- Line 179
				--[[ Upvalues[3]:
					[1]: tbl_4_upvr (copied, readonly)
					[2]: v_upvr (readonly)
					[3]: tbl_10_upvr (readonly)
				]]
				tbl_4_upvr.CornerState_ByUICorner[v_upvr] = nil
				for _, v_3 in tbl_10_upvr.Connections do
					v_3:Disconnect()
				end
			end)
			tbl_4_upvr.CornerState_ByUICorner[v_upvr] = tbl_10_upvr
		end
	end
end
local function _() -- Line 195, Named "GetCloseButtonSizeAndPosition"
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local var45 = module_upvr_2.EmSize * 0.5 // 1
	return UDim2.fromOffset(module_upvr_2.SteppedSize.CloseButtonX, module_upvr_2.SteppedSize.CloseButtonY), UDim2.new(1, -(module_upvr_2.SteppedSize.CloseButtonX + var45), 0, var45)
end
local function BuildCloseButton_Internal_upvr(arg1, arg2, arg3, arg4) -- Line 210, Named "BuildCloseButton_Internal"
	--[[ Upvalues[4]:
		[1]: module_upvr_14 (readonly)
		[2]: module_5_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: tbl_4_upvr (readonly)
	]]
	if arg3 then
		arg3:Destroy()
	end
	local any_Close_result1 = module_upvr_14.Button.Common.Create.Close(arg1, function() -- Line 226, Named "WrappedCloseMenu"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		local var46
		if arg1.Visible then
			var46 = Enum.ContextActionResult.Sink
		else
			var46 = Enum.ContextActionResult.Pass
		end
		arg2()
		return var46
	end)
	local class_LayerCollector = arg1:FindFirstAncestorWhichIsA("LayerCollector")
	if class_LayerCollector and class_LayerCollector.ZIndexBehavior == Enum.ZIndexBehavior.Global then
		local var49 = arg3
		if var49 then
			var49 = arg3.ZIndex
		end
		module_5_upvr.GuiObjectMakeZIndexGlobal(any_Close_result1.Button, var49)
	end
	local module = {
		Button = any_Close_result1;
	}
	module.Handler = arg4
	local var51 = module_upvr_2.EmSize * 0.5 // 1
	if arg4 then
		arg4(any_Close_result1, UDim2.fromOffset(module_upvr_2.SteppedSize.CloseButtonX, module_upvr_2.SteppedSize.CloseButtonY), UDim2.new(1, -(module_upvr_2.SteppedSize.CloseButtonX + var51), 0, var51))
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		any_Close_result1.Button.Position = UDim2.new(1, -(module_upvr_2.SteppedSize.CloseButtonX + var51), 0, var51)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		any_Close_result1.Button.Size = UDim2.fromOffset(module_upvr_2.SteppedSize.CloseButtonX, module_upvr_2.SteppedSize.CloseButtonY)
	end
	tbl_4_upvr.CloseButtons[#tbl_4_upvr.CloseButtons + 1] = module
	return module
end
function module_upvr_4.BuildCloseButton(arg1, arg2, arg3, arg4) -- Line 270
	--[[ Upvalues[1]:
		[1]: BuildCloseButton_Internal_upvr (readonly)
	]]
	return BuildCloseButton_Internal_upvr(arg1, arg2, arg3, arg4).Button.Button
end
function module_upvr_4.BuildCloseButton_AppendToSelectionFrame(arg1, arg2, arg3, arg4) -- Line 282
	--[[ Upvalues[3]:
		[1]: module_upvr_4 (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: BuildCloseButton_Internal_upvr (readonly)
	]]
	local Button = BuildCloseButton_Internal_upvr(arg1, arg2, arg4, function(arg1_3, arg2_3) -- Line 289, Named "ResizeFrame"
		--[[ Upvalues[3]:
			[1]: module_upvr_4 (copied, readonly)
			[2]: arg3 (readonly)
			[3]: module_upvr_2 (copied, readonly)
		]]
		arg3.Frame.Size = UDim2.new(UDim.new(1, -module_upvr_2.ScaledSize.ButtonFancyBorder) - arg2_3.X, arg2_3.Y)
		arg1_3.Button.Position = UDim2.new(1, -module_upvr_2.ScaledSize.ButtonFancyBorder, 0, -(module_upvr_2.EmSize * module_upvr_4.SelectionFrameDims.OffsetYEm // 1 + module_upvr_2.ScaledSize.ButtonFancyBorder))
		arg1_3.Button.Size = arg2_3
	end).Button.Button
	Button.AnchorPoint = Vector2.one
	return Button
end
local function UpdatePromptString() -- Line 325
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: ButtonB_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
	]]
	local formatted = string.format("PRESS %s TO CLOSE", string.gsub(UserInputService_upvr:GetStringForKeyCode(ButtonB_upvr), "Button", ""))
	if tbl_4_upvr.PromptsString ~= formatted then
		tbl_4_upvr.PromptsString = formatted
		for _, v_4 in tbl_4_upvr.Prompts do
			v_4.Label.Text = formatted
		end
	end
end
local function _(arg1) -- Line 340, Named "UpdatePromptVisibility"
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	local var62
	if arg1 ~= module_upvr_5.Gamepad then
		var62 = false
	else
		var62 = true
	end
	if tbl_4_upvr.PromptsVisible ~= var62 then
		tbl_4_upvr.PromptsVisible = var62
		for _, v_5 in tbl_4_upvr.Prompts do
			v_5.Label.Visible = var62
			v_5.Exit.Visible = not var62
		end
	end
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr_4.RegisterForGamepad(arg1, arg2, arg3) -- Line 354
	--[[ Upvalues[5]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: module_3_upvr (readonly)
		[4]: ContextActionService_upvr (readonly)
		[5]: ButtonB_upvr (readonly)
	]]
	for _, v_6 in tbl_4_upvr.CloseButtons do
		if v_6.Button.Button == arg2 then
			return function() -- Line 366
			end
		end
	end
	local tbl = {
		Name = "GamepadPrompt";
		BackgroundTransparency = 1;
		FontFace = module_3_upvr.FontFaceBold;
		Position = UDim2.fromScale(0, 1.05);
		Size = UDim2.fromScale(1, 0.15);
		Text = tbl_4_upvr.PromptsString;
		TextColor3 = module_3_upvr.TextColor1;
		TextScaled = true;
		TextStrokeTransparency = 1;
		Visible = tbl_4_upvr.PromptsVisible;
	}
	tbl.Parent = arg1
	arg2.Visible = not tbl_4_upvr.PromptsVisible
	local var68 = tbl_4_upvr
	var68.PromptCountTotal += 1
	local var69_upvw = false
	local var70_upvr = "UILegacySupport_Prompt"..tbl_4_upvr.PromptCountTotal
	local function ProcessInput_upvr(arg1_4, arg2_4, arg3_2) -- Line 391, Named "ProcessInput"
		--[[ Upvalues[1]:
			[1]: arg3 (readonly)
		]]
		local var71
		if arg2_4 == Enum.UserInputState.Begin and arg3_2.UserInputType == Enum.UserInputType.Gamepad1 then
			var71 = Enum.ContextActionResult.Sink
			arg3()
		end
		return var71
	end
	local function SetInterfaceActive(arg1_5) -- Line 410
		--[[ Upvalues[5]:
			[1]: var69_upvw (read and write)
			[2]: ContextActionService_upvr (copied, readonly)
			[3]: var70_upvr (readonly)
			[4]: ProcessInput_upvr (readonly)
			[5]: ButtonB_upvr (copied, readonly)
		]]
		if arg1_5 and not var69_upvw then
			var69_upvw = true
			ContextActionService_upvr:BindAction(var70_upvr, ProcessInput_upvr, false, ButtonB_upvr)
		elseif not arg1_5 and var69_upvw then
			var69_upvw = false
			ContextActionService_upvr:UnbindAction(var70_upvr)
		end
	end
	local Visible = arg1.Visible
	if Visible and not var69_upvw then
		var69_upvw = true
		ContextActionService_upvr:BindAction(var70_upvr, ProcessInput_upvr, false, ButtonB_upvr)
	elseif not Visible and var69_upvw then
		var69_upvw = false
		ContextActionService_upvr:UnbindAction(var70_upvr)
	end
	local tbl_6 = {
		Handler = SetInterfaceActive;
		Label = module_5_upvr.I("TextLabel", tbl);
	}
	tbl_6.Exit = arg2
	tbl_6.Frame = arg1
	tbl_4_upvr.Prompts[#tbl_4_upvr.Prompts + 1] = tbl_6
	return SetInterfaceActive
end
function module_upvr_4.UnregisterForGamepad(arg1) -- Line 435
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	for i_7, v_7 in tbl_4_upvr.Prompts do
		if v_7.Handler == arg1 then
			table.remove(tbl_4_upvr.Prompts, i_7)
			v_7.Label:Destroy()
			return
		end
	end
end
function module_upvr_4.SelectionFrameInitialize(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 570
	--[[ Upvalues[5]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: module_upvr_7 (readonly)
		[5]: module_5_upvr (readonly)
	]]
	local len = #arg2
	local var79 = (1 - (arg4 or 0.25)) / len
	local _, any_ComputeEvenlySpacedPosition_result2 = module_upvr_2.ComputeEvenlySpacedPosition(1, len, var79, arg5)
	local SelectionFrameDims = module_upvr_4.SelectionFrameDims
	arg1.AnchorPoint = Vector2.yAxis
	arg1.Position = UDim2.fromOffset(0, -module_upvr_2.EmSize * SelectionFrameDims.OffsetYEm // 1)
	arg1.Size = UDim2.fromScale(1, module_upvr_2.SteppedSize.CloseButtonY)
	local var83_upvw
	local function SetTabActive_upvr(arg1_6) -- Line 594, Named "SetTabActive"
		--[[ Upvalues[4]:
			[1]: var83_upvw (read and write)
			[2]: tbl_4_upvr (copied, readonly)
			[3]: module_upvr_7 (copied, readonly)
			[4]: arg6 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if var83_upvw.ActiveTab == arg1_6 then
		else
			var83_upvw.ActiveTab = arg1_6
			var83_upvw.Dirty = true
			tbl_4_upvr.SelectionFrameStatesDirty = true
			local var92
			for _, v_13 in var83_upvw.Tabs do
				if arg1_6 ~= v_13 then
					var92 = false
				else
					var92 = true
				end
				if var92 then
				else
				end
				module_upvr_7.Begin(v_13.Tween, os.clock(), 0)
				v_13.Link.Visible = var92
			end
			if arg6 then
				arg6()
			end
		end
	end
	local tbl_7 = {
		Dirty = false;
		SizeXScale = var79;
	}
	tbl_7.Frame = arg1
	tbl_7.Tabs = table.create(len)
	tbl_7.SetActive = SetTabActive_upvr
	var83_upvw = tbl_7
	local var94 = var83_upvw
	for i_8, v_8 in arg2 do
		local var95 = arg3[i_8]
		assert(var95, "TabButton is missing LinkedPage")
		v_8.AnchorPoint = Vector2.new(0, 1)
		v_8.Position = UDim2.fromScale(any_ComputeEvenlySpacedPosition_result2, 1)
		v_8.Size = UDim2.fromScale(var79, SelectionFrameDims.TabSizeYScale)
		var95.Visible = false
		if not v_8:FindFirstChildWhichIsA("UIPadding") then
			module_5_upvr.I("UIPadding", {
				PaddingBottom = SelectionFrameDims.TextPadding;
				PaddingLeft = SelectionFrameDims.TextPadding;
				PaddingRight = SelectionFrameDims.TextPadding;
				PaddingTop = SelectionFrameDims.TextPadding;
				Parent = v_8;
			})
		end
		local tbl_2_upvr = {
			PosXScale = any_ComputeEvenlySpacedPosition_result2;
			Link = var95;
			Tab = v_8;
			Tween = module_upvr_7.new(0, 0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out);
		}
		v_8.Activated:Connect(function() -- Line 662
			--[[ Upvalues[2]:
				[1]: SetTabActive_upvr (readonly)
				[2]: tbl_2_upvr (readonly)
			]]
			SetTabActive_upvr(tbl_2_upvr)
		end)
		var94.Tabs[i_8] = tbl_2_upvr
	end
	local var99 = var94.Tabs[arg7 or 1]
	if var99 then
		SetTabActive_upvr(var99)
	end
	tbl_4_upvr.SelectionFrameStates[#tbl_4_upvr.SelectionFrameStates + 1] = var94
	return var94
end
function module_upvr_4.RegisterShopFrame(arg1) -- Line 685
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	if not table.find(tbl_4_upvr.ShopFrames, arg1) then
		tbl_4_upvr.ShopFrames[#tbl_4_upvr.ShopFrames + 1] = arg1
	end
end
function module_upvr_4.UnregisterShopFrame(arg1) -- Line 691
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	if table.find(tbl_4_upvr.ShopFrames, arg1) then
		table.remove(tbl_4_upvr.ShopFrames)
	end
end
function module_upvr_4.AnyShopsOpen() -- Line 698
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	local var104
	for _, v_9 in tbl_4_upvr.ShopFrames do
		if v_9.Visible then
			var104 = true
			return var104
		end
	end
	return var104
end
local LocalPlayer_upvr = Players_upvr.LocalPlayer
function module_upvr_4.CanOpenInterfaceOnTouch(arg1) -- Line 709
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: module_upvr_4 (readonly)
	]]
	local var107 = false
	if arg1.Parent ~= nil then
		var107 = false
		if Players_upvr:GetPlayerFromCharacter(arg1.Parent) == LocalPlayer_upvr then
			var107 = not module_upvr_4.AnyShopsOpen()
		end
	end
	return var107
end
function module_upvr_4.CloseShops() -- Line 715
	--[[ Upvalues[1]:
		[1]: OpenShops_upvr (readonly)
	]]
	OpenShops_upvr:Fire(nil)
end
local module_2_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
OpenShops_upvr.Event:Connect(function(arg1) -- Line 719
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg1 ~= nil then
		module_2_upvr.ClosePopups()
	end
end)
local function ShopTileCreate_upvr(arg1, arg2, arg3) -- Line 729, Named "ShopTileCreate"
	--[[ Upvalues[9]:
		[1]: module_5_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_upvr_13 (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: module_upvr_4 (readonly)
		[6]: module_upvr_8 (readonly)
		[7]: module_upvr_14 (readonly)
		[8]: tbl_5_upvr (readonly)
		[9]: module_upvr_11 (readonly)
	]]
	local module_upvr_6 = {
		Equipped = false;
		Fresh = nil;
		Owned = false;
		ShowCurrency = true;
	}
	module_upvr_6.Data = arg2
	module_upvr_6.ItemIndex = arg3
	module_upvr_6.PriceText = ""
	module_upvr_6.Type = arg1.ItemType
	module_upvr_6.NewLabel = nil
	module_upvr_6.Wrapper = module_5_upvr.I("Frame", {
		Name = "ShopTile";
		BackgroundTransparency = 1;
		Parent = arg1.ScrollingFrame;
	})
	module_upvr_6.TitleLabel = module_5_upvr.I("TextLabel", {
		Name = "TitleLabel";
		BackgroundTransparency = 1;
		FontFace = module_3_upvr.FontFaceNormal;
		Position = UDim2.fromScale(0, 0.025);
		Size = UDim2.fromScale(1, 0.15);
		Text = arg2.Name;
		TextColor3 = module_3_upvr.TextColor1;
		TextScaled = true;
		TextStrokeColor3 = module_3_upvr.TextStrokeColor1;
		TextStrokeTransparency = 0;
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Bottom;
		Parent = module_upvr_6.Wrapper;
	})
	module_5_upvr.I("UITextSizeConstraint", {
		MinTextSize = 0;
		MaxTextSize = arg1.TitleTextSize;
		Parent = module_upvr_6.TitleLabel;
	})
	local tbl_3 = {
		Name = "ItemIcon";
		Active = arg1.PopupEnabled;
		AnchorPoint = Vector2.one * 0.5;
		AutoButtonColor = arg1.PopupEnabled;
		BackgroundColor3 = module_3_upvr.ButtonColor1;
		BorderSizePixel = 0;
	}
	local ShopImageId = arg2.ShopImageId
	if not ShopImageId then
		ShopImageId = module_3_upvr.FALLBACK_SHOP_IMAGE
	end
	tbl_3.Image = ShopImageId
	tbl_3.Position = UDim2.fromScale(0.5, 0.45)
	tbl_3.ScaleType = Enum.ScaleType.Stretch
	tbl_3.Selectable = false
	tbl_3.Size = UDim2.fromScale(0.5, 0.5)
	tbl_3.SizeConstraint = Enum.SizeConstraint.RelativeYY
	tbl_3.Parent = module_upvr_6.Wrapper
	module_upvr_6.ItemIcon = module_5_upvr.I("ImageButton", tbl_3)
	if arg1.PopupEnabled then
		module_upvr_6.ItemIcon.Activated:Connect(function() -- Line 794
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: module_upvr_6 (readonly)
			]]
			arg1.ActiveTile = module_upvr_6
		end)
	end
	module_5_upvr.I("UICorner", {
		Parent = module_upvr_6.ItemIcon;
	})
	module_upvr_6.CurrencyIcon = module_5_upvr.I("ImageLabel", {
		Name = "CurrencyIcon";
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0, 0.725);
		Parent = module_upvr_6.Wrapper;
	})
	local var119 = module_upvr_13.CurrencyType_ByItemType[arg1.ItemType]
	if var119 then
		module_upvr_6.CurrencyIcon.Image = module_3_upvr.GetImageFromMap(module_3_upvr.ImageMapType.Currency_ByCurrencyType, var119)
	end
	module_upvr_6.PriceLabel = module_5_upvr.I("TextLabel", {
		Name = "PriceLabel";
		BackgroundTransparency = 1;
		FontFace = module_3_upvr.FontFaceNormal;
		Position = UDim2.fromScale(0, 0.725);
		Text = module_upvr_6.PriceText;
		TextColor3 = module_3_upvr.TextColor1;
		TextScaled = true;
		TextStrokeColor3 = module_3_upvr.TextStrokeColor1;
		TextStrokeTransparency = 0;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Center;
		Parent = module_upvr_6.Wrapper;
	})
	module_upvr_6.PriceBounds = module_upvr_2.CachedTextBounds_FromLabel(module_upvr_6.PriceLabel)
	module_upvr_6.PriceBounds.Flag = arg1.TextBoundsFlag
	local function BuyButtonPress() -- Line 836
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: module_upvr_6 (readonly)
			[4]: module_upvr_4 (copied, readonly)
			[5]: module_upvr_13 (copied, readonly)
			[6]: module_upvr_8 (copied, readonly)
		]]
		local var121
		if not module_upvr_6.Owned then
			if arg1.BuyButtonBehavior == module_upvr_4.BuyButtonBehavior.OpenPopup then
				arg1.ActiveTile = module_upvr_6
			else
				var121 = module_upvr_13.ItemAction.Buy
			end
		elseif not module_upvr_6.Equipped then
			var121 = module_upvr_13.ItemAction.Equip
		elseif arg1.ItemType ~= module_upvr_13.ItemType.World then
			var121 = module_upvr_13.ItemAction.Unequip
		end
		if var121 then
			arg1.ActiveTile = nil
			if arg1.TileActivatedCallback then
				task.spawn(arg1.TileActivatedCallback, module_upvr_6)
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_upvr_8.ItemActionPerform(var121, arg1.ItemType, arg2)
		end
	end
	module_upvr_4.MaintainCornerRadii(module_upvr_6.Wrapper)
	module_upvr_6.BuyButton = module_upvr_14.Button.CreateFancy(module_upvr_6.Wrapper, module_upvr_14.Button.Themes.BuyCash, {
		Size = tbl_5_upvr.BuyTextSize;
		Text = "BUY";
	})
	module_5_upvr.PropsApply(module_upvr_6.BuyButton.Button, {
		AnchorPoint = Vector2.xAxis * 0.5;
		Position = UDim2.fromScale(0.5, 0.8375);
		Size = UDim2.fromScale(0.65, 0.125);
	})
	module_upvr_6.BuyButton.Button.Activated:Connect(BuyButtonPress)
	local any_GetItemCost_result1_upvr, any_GetItemCost_result2_upvr = module_upvr_11.GetItemCost(arg2)
	if any_GetItemCost_result1_upvr ~= module_upvr_11.TransactionType.Invalid and any_GetItemCost_result1_upvr ~= module_upvr_11.TransactionType.Currency then
		module_upvr_6.ShowCurrency = false
		module_upvr_6.CurrencyIcon:Destroy()
	end
	task.spawn(function() -- Line 932
		--[[ Upvalues[5]:
			[1]: module_upvr_11 (copied, readonly)
			[2]: any_GetItemCost_result1_upvr (readonly)
			[3]: any_GetItemCost_result2_upvr (readonly)
			[4]: module_upvr_6 (readonly)
			[5]: arg1 (readonly)
		]]
		local any_GeneratePriceString_result1 = module_upvr_11.GeneratePriceString(any_GetItemCost_result1_upvr, any_GetItemCost_result2_upvr)
		module_upvr_6.PriceText = any_GeneratePriceString_result1
		module_upvr_6.PriceLabel.Text = any_GeneratePriceString_result1
		arg1.SizeDirty = true
	end)
	return module_upvr_6
end
local function ShopTileUpdate_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 947, Named "ShopTileUpdate"
	--[[ Upvalues[5]:
		[1]: module_3_upvr (readonly)
		[2]: module_upvr_13 (readonly)
		[3]: module_5_upvr (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: module_upvr_14 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 53 start (CF ANALYSIS FAILED)
	local var128
	if arg1.Owned == arg2 then
		var128 = false
	else
		var128 = true
	end
	arg1.Owned = arg2
	arg1.Equipped = arg3
	-- KONSTANTERROR: [0] 1. Error Block 53 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 9. Error Block 59 start (CF ANALYSIS FAILED)
	local ShopImageId_2 = arg1.Data.ShopImageId
	if not ShopImageId_2 then
		ShopImageId_2 = module_3_upvr.FALLBACK_SHOP_IMAGE
	end
	arg1.ItemIcon.Image = ShopImageId_2
	if var128 then
		arg1.CurrencyIcon:Destroy()
		arg1.PriceLabel:Destroy()
	end
	if arg3 then
		arg1.Fresh = false
		if arg1.NewLabel then
			arg1.NewLabel:Destroy()
			arg1.NewLabel = nil
		end
		if arg1.Type ~= module_upvr_13.ItemType.World then
		else
		end
		-- KONSTANTWARNING: GOTO [75] #50
	end
	-- KONSTANTERROR: [12] 9. Error Block 59 end (CF ANALYSIS FAILED)
end
local function SortShopTiles_upvr(arg1, arg2) -- Line 1047, Named "SortShopTiles"
	local var130
	if var130 ~= arg2.Owned then
		var130 = arg1.Owned
		return var130
	end
	if arg1.ItemIndex >= arg2.ItemIndex then
		var130 = false
	else
		var130 = true
	end
	return var130
end
local function ShopPopupCreate_upvr(arg1) -- Line 1055, Named "ShopPopupCreate"
	--[[ Upvalues[8]:
		[1]: module_5_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: module_upvr_13 (readonly)
		[5]: module_upvr_8 (readonly)
		[6]: module_upvr_4 (readonly)
		[7]: module_upvr_14 (readonly)
		[8]: tbl_5_upvr (readonly)
	]]
	local module_4_upvr = {
		_LastEquipped = nil;
		_LastOwned = nil;
		_LinkedTile = nil;
		Frame = module_5_upvr.I("Frame", {
			Name = "ShopPopup";
			BackgroundColor3 = module_3_upvr.BackgroundColor1;
			BackgroundTransparency = module_3_upvr.BackgroundTransparency1;
			Size = UDim2.fromScale(0.2, 0.4);
			Parent = arg1.ScrollingFrame:FindFirstAncestorWhichIsA("LayerCollector");
		});
	}
	module_5_upvr.I("UICorner", {
		Parent = module_4_upvr.Frame;
	})
	module_4_upvr.TitleLabel = module_5_upvr.I("TextLabel", module_upvr_2.Properties.Text_Scaled, {
		Name = "TitleLabel";
		AnchorPoint = Vector2.xAxis * 0.5;
		FontFace = module_3_upvr.FontFaceBold;
		Position = UDim2.fromScale(0.5, 0);
		Size = UDim2.fromScale(0.95, 0.24);
		TextColor3 = module_3_upvr.TextColor1;
		Parent = module_4_upvr.Frame;
	})
	module_4_upvr.AwardLabelTop = module_5_upvr.I("TextLabel", module_upvr_2.Properties.Text_Scaled, {
		Name = "PointsLabelTop";
		FontFace = module_3_upvr.FontFaceNormal;
		TextColor3 = module_3_upvr.TextColor1;
		TextYAlignment = Enum.TextYAlignment.Bottom;
		Parent = module_4_upvr.Frame;
	})
	module_4_upvr.AwardTopBounds = module_upvr_2.CachedTextBounds_FromLabel(module_4_upvr.AwardLabelTop)
	module_4_upvr.AwardLabelBottom = module_5_upvr.C(module_4_upvr.AwardLabelTop, {
		Name = "PointsLabelBottom";
		Text = "Per Second";
		TextYAlignment = Enum.TextYAlignment.Top;
		Parent = module_4_upvr.Frame;
	})
	module_4_upvr.AwardBottomBounds = module_upvr_2.CachedTextBounds_FromLabel(module_4_upvr.AwardLabelBottom)
	module_4_upvr.PriceLabel = module_5_upvr.C(module_4_upvr.AwardLabelTop, {
		Name = "PriceLabel";
		Parent = module_4_upvr.Frame;
	})
	module_4_upvr.PriceBounds = module_upvr_2.CachedTextBounds_FromLabel(module_4_upvr.PriceLabel)
	module_4_upvr.PriceCurrencyIcon = module_5_upvr.I("ImageLabel", {
		Name = "PriceCurrencyIcon";
		AnchorPoint = Vector2.yAxis * 0.5;
		BackgroundTransparency = 1;
		Image = module_3_upvr.GetImageFromMap(module_3_upvr.ImageMapType.Currency_ByCurrencyType, module_upvr_13.CurrencyType_ByItemType[arg1.ItemType]);
		Parent = module_4_upvr.Frame;
	})
	module_4_upvr.AwardCurrencyIcon = module_5_upvr.C(module_4_upvr.PriceCurrencyIcon, {
		Name = "AwardCurrencyIcon";
		Parent = module_4_upvr.Frame;
	})
	module_upvr_4.MaintainCornerRadii(module_4_upvr.Frame)
	module_4_upvr.BuyButton = module_upvr_14.Button.CreateFancy(module_4_upvr.Frame, module_upvr_14.Button.Themes.BuyCash, {
		Size = tbl_5_upvr.BuyTextSizeLarge;
		Text = "BUY";
	})
	module_5_upvr.PropsApply(module_4_upvr.BuyButton.Button, {
		AnchorPoint = Vector2.xAxis * 0.5;
		Position = UDim2.fromScale(0.5, 0.8);
		Size = UDim2.fromScale(0.7, 0.16);
	})
	module_4_upvr.BuyButton.Button.Activated:Connect(function() -- Line 1128, Named "BuyButtonPress"
		--[[ Upvalues[4]:
			[1]: module_4_upvr (readonly)
			[2]: module_upvr_8 (copied, readonly)
			[3]: module_upvr_13 (copied, readonly)
			[4]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 13 start (CF ANALYSIS FAILED)
		if module_4_upvr._LinkedTile.Owned then
			-- KONSTANTERROR: [11] 8. Error Block 3 start (CF ANALYSIS FAILED)
			do
				return
			end
			-- KONSTANTERROR: [11] 8. Error Block 3 end (CF ANALYSIS FAILED)
		end
		local Type = module_4_upvr._LinkedTile.Type
		local Data = module_4_upvr._LinkedTile.Data
		if not module_upvr_8.ItemActionCanPerform(module_upvr_13.ItemAction.Buy, Type, Data) then
		else
			arg1.ActiveTile = nil
			if arg1.TileActivatedCallback then
				task.spawn(arg1.TileActivatedCallback, module_4_upvr._LinkedTile)
			end
			module_upvr_8.ItemActionPerform(module_upvr_13.ItemAction.Buy, Type, Data)
			-- KONSTANTERROR: [5] 4. Error Block 13 end (CF ANALYSIS FAILED)
		end
	end)
	module_4_upvr.TextBoundsFlag = module_upvr_2.TextBoundsFlagCreate(module_4_upvr.PriceBounds, module_4_upvr.AwardTopBounds, module_4_upvr.AwardBottomBounds)
	return module_4_upvr
end
function module_upvr_4.ShopInventoryCreate(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 1221
	--[[ Upvalues[8]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_upvr_11 (readonly)
		[3]: tbl_5_upvr (readonly)
		[4]: module_upvr_4 (readonly)
		[5]: module_upvr_2 (readonly)
		[6]: module_5_upvr (readonly)
		[7]: module_upvr_3 (readonly)
		[8]: module_upvr_9 (readonly)
	]]
	if tbl_4_upvr.ShopInventory_ByScrollingFrame[arg2] then
		error("ScrollingFrame already registered as ShopInventory", 2)
	end
	if not module_upvr_11.ItemModule_ByItemType[arg4] then
		error("Invalid ItemType", 2)
	end
	arg2:ClearAllChildren()
	local module_upvr = {
		_LastActiveTile = nil;
		_LastCellSizeX = nil;
		_LastCellsPerRow = nil;
		_LastFirstButton = nil;
		InventoryDirty = true;
		SizeDirty = true;
		VisibilityDirty = true;
	}
	local var145 = false
	module_upvr.Visible = var145
	module_upvr.BuyButtonBehavior = arg5
	module_upvr.ItemType = arg4
	if arg5 ~= module_upvr_4.BuyButtonBehavior.OpenPopup then
		var145 = false
	else
		var145 = true
	end
	module_upvr.PopupEnabled = var145
	module_upvr.TitleTextSize = math.clamp(arg7 or math.huge, 0, tbl_5_upvr.TitleTextMaxSize)
	module_upvr.UnownedBehavior = arg6
	module_upvr.EnterButton = arg3
	module_upvr.MainFrame = arg1
	module_upvr.ScrollingFrame = arg2
	module_upvr.ActiveTile = nil
	module_upvr.Popup = nil
	module_upvr.TileActivatedCallback = arg8
	module_upvr.TextBoundsFlag = module_upvr_2.TextBoundsFlagCreate()
	module_upvr.TilesArray = {}
	module_upvr.Tiles_ById = {}
	local tbl_9 = {
		CellPadding = tbl_5_upvr.CellPadding;
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		SortOrder = Enum.SortOrder.LayoutOrder;
		StartCorner = Enum.StartCorner.TopLeft;
		VerticalAlignment = Enum.VerticalAlignment.Top;
	}
	tbl_9.Parent = arg2
	module_upvr.GridLayout = module_5_upvr.I("UIGridLayout", tbl_9)
	local tbl_8 = {}
	tbl_8.Parent = arg2
	module_upvr.Padding = module_5_upvr.I("UIPadding", tbl_8)
	local function MarkVisibilityDirty() -- Line 1291
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.VisibilityDirty = true
	end
	local var148 = arg2
	while var148 do
		if var148:IsA("GuiObject") then
			var148:GetPropertyChangedSignal("Visible"):Connect(MarkVisibilityDirty)
		elseif var148:IsA("LayerCollector") then
			var148:GetPropertyChangedSignal("Enabled"):Connect(MarkVisibilityDirty)
		end
	end
	local function MarkInventoryDirty(arg1_7) -- Line 1305
		--[[ Upvalues[2]:
			[1]: arg4 (readonly)
			[2]: module_upvr (readonly)
		]]
		if arg1_7 == arg4 then
			module_upvr.InventoryDirty = true
		end
	end
	module_upvr_3.Signals.InventoryEquippedChanged:Connect(MarkInventoryDirty)
	module_upvr_3.Signals.InventoryOwnedAdded:Connect(MarkInventoryDirty)
	if not module_upvr_3.Flags.LocalSaveDataLoaded then
		module_upvr_3.Signals.SaveDataLoaded:Connect(function() -- Line 1316
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.InventoryDirty = true
		end)
	end
	module_upvr_9.RegisterScrollingFrame(arg2)
	tbl_4_upvr.ShopInventory_ByScrollingFrame[arg2] = module_upvr
	return module_upvr
end
local function _(arg1) -- Line 1359, Named "LootboxPanelSetOwnsAll"
	--[[ Upvalues[3]:
		[1]: module_upvr_11 (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: module_upvr_4 (readonly)
	]]
	local var150
	if module_upvr_11.GetRandomUnownedItem(module_upvr_3.LocalSaveData, arg1.ItemType) ~= nil then
		var150 = false
	else
		var150 = true
	end
	arg1.OwnsAll = var150
	var150 = module_upvr_4.LootboxPanelUpdate
	var150(arg1)
end
local module_upvr_10 = require(Modules:WaitForChild("Products"))
function module_upvr_4.RegisterLootboxPanel(arg1, arg2) -- Line 1367
	--[[ Upvalues[7]:
		[1]: module_upvr_10 (readonly)
		[2]: module_upvr_11 (readonly)
		[3]: module_upvr_14 (readonly)
		[4]: tbl_5_upvr (readonly)
		[5]: module_5_upvr (readonly)
		[6]: module_upvr_3 (readonly)
		[7]: module_upvr_4 (readonly)
	]]
	local var169
	local var170
	local var171
	local var172
	if type(arg2) == "table" then
		var172 = arg2
		var170 = arg2.ItemType
		var171 = module_upvr_10.ProductGetProductInfo(arg2).PriceInRobux
	else
		var170 = arg2
		var169 = module_upvr_11.RandomCostCurrency_ByItemType[var170]
		var171 = module_upvr_11.BuyRandomCost_ByItemType[var170]
	end
	if not var171 then
		arg1:Destroy()
		return nil
	end
	local BuyFrame_2 = arg1:WaitForChild("BuyFrame")
	local TextButton = BuyFrame_2:WaitForChild("TextButton")
	local Exit = arg1:WaitForChild("Exit")
	local TextFrame_2 = arg1:WaitForChild("TextFrame")
	TextButton:Destroy()
	local tbl_11 = {
		AnchorPoint = TextButton.AnchorPoint;
		Position = TextButton.Position;
	}
	local Size = TextButton.Size
	tbl_11.Size = Size
	if var169 then
		Size = module_upvr_14.Button.ButtonTheme_ByCurrencyType[var169]
	else
		Size = module_upvr_14.Button.Themes.BuyRobux
	end
	local any_CreateFancy_result1 = module_upvr_14.Button.CreateFancy(BuyFrame_2, Size, {
		Size = tbl_5_upvr.BuyTextSizeLarge;
		Text = TextButton.Text;
	})
	module_5_upvr.PropsApply(any_CreateFancy_result1.Button, tbl_11)
	local module_upvr_12 = {
		_Product = var172;
		CurrencyType = var169;
		ItemType = var170;
		Price = var171;
		RequestInProgress = false;
		OwnsAll = false;
		BuyButton = any_CreateFancy_result1;
		BuyFrame = BuyFrame_2;
		CurrencyIcon = TextFrame_2:FindFirstChild("ImageLabel");
		ExitFrame = Exit;
	}
	module_upvr_12.LootboxFrame = arg1
	module_upvr_12.TextLabel = TextFrame_2:WaitForChild("TextLabel")
	Exit:WaitForChild("TextButton").Activated:Connect(function() -- Line 1449
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.Visible = false
	end)
	arg1:GetPropertyChangedSignal("Visible"):Connect(function() -- Line 1453, Named "UpdateLootboxPanelOnVisiblityChange"
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: module_upvr_12 (readonly)
			[3]: module_upvr_11 (copied, readonly)
			[4]: module_upvr_3 (copied, readonly)
			[5]: module_upvr_4 (copied, readonly)
		]]
		if arg1.Visible then
			local var183 = module_upvr_12
			if not var183.OwnsAll then
				local var184 = module_upvr_12
				if module_upvr_11.GetRandomUnownedItem(module_upvr_3.LocalSaveData, var184.ItemType) ~= nil then
					var183 = false
				else
					var183 = true
				end
				var184.OwnsAll = var183
				var183 = module_upvr_4.LootboxPanelUpdate
				var183(var184)
			end
		end
	end)
	if arg1.Visible then
		local OwnsAll_3 = module_upvr_12.OwnsAll
		if not OwnsAll_3 then
			if module_upvr_11.GetRandomUnownedItem(module_upvr_3.LocalSaveData, module_upvr_12.ItemType) ~= nil then
				OwnsAll_3 = false
			else
				OwnsAll_3 = true
			end
			module_upvr_12.OwnsAll = OwnsAll_3
			OwnsAll_3 = module_upvr_4.LootboxPanelUpdate
			OwnsAll_3(module_upvr_12)
		end
	end
	return module_upvr_12
end
function module_upvr_4.LootboxPanelUpdate(arg1) -- Line 1465
	--[[ Upvalues[8]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: module_upvr_14 (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: module_upvr_13 (readonly)
		[6]: module_upvr_8 (readonly)
		[7]: module_upvr_11 (readonly)
		[8]: module_upvr_4 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg1.BuyFrame.Visible = not arg1.OwnsAll
	local OwnsAll_2 = arg1.OwnsAll
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [68] 43. Error Block 7 start (CF ANALYSIS FAILED)
	table.remove(tbl_4_upvr.VisibleBuyButtons, OwnsAll_2)
	do
		return
	end
	-- KONSTANTERROR: [68] 43. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 49. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 49. Error Block 8 end (CF ANALYSIS FAILED)
end
UserInputService_upvr.GamepadConnected:Connect(UpdatePromptString)
UpdatePromptString()
if module_upvr_5.Mode ~= module_upvr_5.Gamepad then
	var33 = false
else
	var33 = true
end
if tbl_4_upvr.PromptsVisible ~= var33 then
	tbl_4_upvr.PromptsVisible = var33
	for _, v_10 in tbl_4_upvr.Prompts do
		v_10.Label.Visible = var33
		v_10.Exit.Visible = not var33
	end
end
module_upvr_5.ModeChanged:Connect(function(arg1) -- Line 1602
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	local var192
	if arg1 ~= module_upvr_5.Gamepad then
		var192 = false
	else
		var192 = true
	end
	if tbl_4_upvr.PromptsVisible ~= var192 then
		tbl_4_upvr.PromptsVisible = var192
		for _, v_11 in tbl_4_upvr.Prompts do
			v_11.Label.Visible = var192
			v_11.Exit.Visible = not var192
		end
	end
end)
local GuiService_upvr = game:GetService("GuiService")
function module_upvr_4.RenderStepped(arg1, arg2) -- Line 1613
	--[[ Upvalues[17]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr_8 (readonly)
		[4]: module_upvr_11 (readonly)
		[5]: module_upvr_4 (readonly)
		[6]: module_upvr_13 (readonly)
		[7]: ShopTileCreate_upvr (readonly)
		[8]: ShopTileUpdate_upvr (readonly)
		[9]: module_upvr_14 (readonly)
		[10]: SortShopTiles_upvr (readonly)
		[11]: GuiService_upvr (readonly)
		[12]: tbl_5_upvr (readonly)
		[13]: ShopPopupCreate_upvr (readonly)
		[14]: module_upvr_9 (readonly)
		[15]: module_3_upvr (readonly)
		[16]: module_5_upvr (readonly)
		[17]: module_upvr_7 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1207] 816. Error Block 160 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1207] 816. Error Block 160 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [1207.9]
	-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
end
var33 = script:WaitForChild("UILegacySupportProxy")
var33 = module_upvr_4
for i_12, v_12 in var33 do
	require(var33)[i_12] = v_12
	local _
end
return module_upvr_4