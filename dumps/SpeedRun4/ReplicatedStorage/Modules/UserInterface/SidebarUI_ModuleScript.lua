-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:16
-- Luau version 6, Types version 3
-- Time taken: 0.034911 seconds

local module_upvr_2 = {}
local GuiService_upvr = game:GetService("GuiService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_3_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_3 = require(Modules:WaitForChild("InputMode"))
local module_6_upvr = require(Modules:WaitForChild("Tweens"))
local module_upvr = require(Modules:WaitForChild("UIButton"))
local module_upvr_4 = require(Modules:WaitForChild("UIShared"))
module_upvr_2.SidebarRegion = table.freeze({
	Left = 1;
	Right = 2;
})
module_upvr_2.SidebarButtonOrder = table.freeze({
	Event = 1000;
	Inventory = 3000;
	Leaderboard = 2000;
	Settings = 1000;
	SettingsLeaderboardGroup = 5000;
	Shop = 2000;
	World = 4000;
	EnergyExchange = 1000;
	LevelSelect = 4000;
	SkipLevel = 3000;
	Unpair = 2000;
})
module_upvr_2.SidebarButtonStyle = table.freeze({
	IconOnly = 1;
	IconText = 2;
	TextOnly = 3;
})
local tbl_5_upvr = {
	Button = 1;
	Group = 2;
}
local function _(arg1) -- Line 128, Named "TweenCreateStandard"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	return module_6_upvr.new(arg1, 0.375, Enum.EasingStyle.Quad)
end
local tbl_4_upvr = {
	ButtonId = 0;
	Objects_ByRegion = {};
	DrawDirty_ByRegion = {};
	SortDirty_ByRegion = {};
	HideButtons = false;
	InputMode = module_upvr_3.Mode;
	PlayerListEnabled = module_upvr_4.PlayerListIsEnabled();
	RegionsActive = true;
	RegionsOpen = true;
	RegionTween = module_6_upvr.new(0, 0.375, Enum.EasingStyle.Quad);
	RegionScale = 1;
	SidebarButtons = {};
	DestroyingButtons = {};
}
local AssertValidRegion
for _, v in module_upvr_2.SidebarRegion, AssertValidRegion do
	tbl_4_upvr.Objects_ByRegion[v] = {}
end
AssertValidRegion = "ScreenGui"
tbl_4_upvr.ScreenGui = require(Modules:WaitForChild("Utility")).I(AssertValidRegion, module_upvr_4.Properties.ScreenGui, {
	Name = "SidebarUI";
	Enabled = tbl_4_upvr.RegionsOpen;
	SelectionGroup = false;
	Parent = module_upvr_4.PlayerGui;
})
AssertValidRegion = nil
if not GuiService_upvr:IsTenFootInterface() then
	AssertValidRegion = 1 / require(ReplicatedStorage:WaitForChild("Settings")).UIMaxEmSize
else
	AssertValidRegion = 0.045454545454545456
end
local var23_upvw = {
	CornerRadius = 12 * AssertValidRegion;
	IconScaleY = 0.8;
	PaddingEdge = 8 * AssertValidRegion;
	PaddingInteriorX = 12 * AssertValidRegion;
	PaddingX = 10 * AssertValidRegion;
	PaddingY = 8 * AssertValidRegion;
	PosYScreenScale = 0.73;
	SizeX_IconOnly = 50 * AssertValidRegion;
	SizeX_IconText_Left = 150 * AssertValidRegion;
	SizeX_IconText_Right = 204 * AssertValidRegion;
	SizeY = 40 * AssertValidRegion;
	TextOffsetScaleY = -0.015625;
	TextScaleY = 0.8;
}
function AssertValidRegion(arg1) -- Line 215
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	if not tbl_4_upvr.Objects_ByRegion[arg1] then
		error(module_3_upvr.FormatOutput("Invalid SidebarRegion '%*'", "SidebarUI", nil, arg1), 3)
	end
end
local function _() -- Line 222, Named "GenerateId"
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	local var24 = tbl_4_upvr
	var24.ButtonId += 1
	return tbl_4_upvr.ButtonId
end
local function _(arg1, arg2, arg3, arg4) -- Line 228, Named "SidebarObjectCreate"
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	local var25 = tbl_4_upvr
	var25.ButtonId += 1
	arg4.Id = tbl_4_upvr.ButtonId
	arg4.Order = arg3
	arg4.Region = arg2
	arg4.Type = arg1
	arg4.PosX = 0
	arg4.PosY = 0
	arg4.SizeX = 0
	arg4.SizeY = 0
	return arg4
end
local function SortSidebarObjects_upvr(arg1, arg2) -- Line 250, Named "SortSidebarObjects"
	local Order = arg1.Order
	if Order ~= arg2.Order then
		if arg1.Order >= arg2.Order then
			Order = false
		else
			Order = true
		end
		return Order
	end
	if arg1.Id >= arg2.Id then
		Order = false
	else
		Order = true
	end
	return Order
end
local tbl_2_upvr = {}
local function _(arg1) -- Line 272, Named "AddIcon"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.Button.AddImage(arg1.Button, {
		Image = arg1.Profile.Icon;
	}).Image
end
local function _(arg1) -- Line 281, Named "AddLabel"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.Button.AddLabel(arg1.Button, {
		Text = arg1.Profile.Text;
	}).Label
end
tbl_2_upvr[module_upvr_2.SidebarButtonStyle.IconOnly] = function(arg1) -- Line 290
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local _ = {
		Image = arg1.Profile.Icon;
	}
end
tbl_2_upvr[module_upvr_2.SidebarButtonStyle.IconText] = function(arg1) -- Line 296
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	local var33
	if arg1.Region == module_upvr_2.SidebarRegion.Left then
		var33 = 0
	else
		var33 = 1
	end
	local vector2 = Vector2.new(var33, 0.5)
	module_upvr.Button.AddLabel(arg1.Button, {
		Text = arg1.Profile.Text;
	}).Label.AnchorPoint = vector2
	module_upvr.Button.AddImage(arg1.Button, {
		Image = arg1.Profile.Icon;
	}).Image.AnchorPoint = vector2
end
tbl_2_upvr[module_upvr_2.SidebarButtonStyle.TextOnly] = function(arg1) -- Line 309
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local _ = {
		Text = arg1.Profile.Text;
	}
end
local function SidebarButtonCreate_upvr(arg1, arg2) -- Line 317, Named "SidebarButtonCreate"
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: var23_upvw (read and write)
		[4]: module_2_upvr (readonly)
		[5]: module_upvr_2 (readonly)
		[6]: tbl_5_upvr (readonly)
		[7]: module_6_upvr (readonly)
		[8]: tbl_2_upvr (readonly)
	]]
	local any_AddWrapper_result1_upvr = module_upvr.Button.AddWrapper(module_upvr.Button.Create(tbl_4_upvr.ScreenGui, arg2.ButtonTheme))
	any_AddWrapper_result1_upvr.CornerRadiusOverride = var23_upvw.CornerRadius
	any_AddWrapper_result1_upvr.Button.BackgroundTransparency = module_2_upvr.ButtonTransparency1
	local Wrapper = any_AddWrapper_result1_upvr.Wrapper
	Wrapper.ClipsDescendants = true
	if arg1 == module_upvr_2.SidebarRegion.Left then
		Wrapper = 0
	else
		Wrapper = 1
	end
	any_AddWrapper_result1_upvr.Button.AnchorPoint = Vector2.new(Wrapper, 1)
	local tbl = {
		Changed = false;
		Dirty = true;
		Hidden = tbl_4_upvr.HideButtons;
		Selected = false;
		Connection = nil;
		Button = any_AddWrapper_result1_upvr;
	}
	tbl.Profile = arg2
	tbl.FadeTween = module_6_upvr.new(0, 0.375, Enum.EasingStyle.Quad)
	tbl.PositionTween = module_6_upvr.new(0, 0.375, Enum.EasingStyle.Quad)
	tbl.SizeTweenX = module_6_upvr.new(0, 0.375, Enum.EasingStyle.Quad)
	tbl.SizeTweenY = module_6_upvr.new(0, 0.375, Enum.EasingStyle.Quad)
	local var42 = tbl_4_upvr
	var42.ButtonId += 1
	tbl.Id = tbl_4_upvr.ButtonId
	tbl.Order = arg2.Order
	tbl.Region = arg1
	tbl.Type = tbl_5_upvr.Button
	tbl.PosX = 0
	tbl.PosY = 0
	tbl.SizeX = 0
	tbl.SizeY = 0
	local var43_upvr = tbl
	var43_upvr.Connection = any_AddWrapper_result1_upvr.Button.Activated:Connect(function() -- Line 366
		--[[ Upvalues[4]:
			[1]: tbl_4_upvr (copied, readonly)
			[2]: var43_upvr (readonly)
			[3]: arg2 (readonly)
			[4]: any_AddWrapper_result1_upvr (readonly)
		]]
		if tbl_4_upvr.RegionsActive and not var43_upvr.Hidden then
			arg2.PressFunction(any_AddWrapper_result1_upvr, arg2)
		end
	end)
	local var45 = tbl_2_upvr[arg2.Style]
	if var45 then
		var45(var43_upvr)
	end
	tbl_4_upvr.SidebarButtons[#tbl_4_upvr.SidebarButtons + 1] = var43_upvr
	return var43_upvr
end
function module_upvr_2.SidebarButtonDestroy(arg1) -- Line 386
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	tbl_4_upvr.DrawDirty_ByRegion[arg1.Region] = true
	local var57 = tbl_4_upvr.Objects_ByRegion[arg1.Region]
	local tbl_6 = {}
	tbl_6[1] = arg1
	local table_find_result1 = table.find(tbl_4_upvr.SidebarButtons, arg1)
	if table_find_result1 then
		table.remove(tbl_4_upvr.SidebarButtons, table_find_result1)
	end
	local Group = arg1.Group
	if Group then
		arg1.Group = nil
		local table_find_result1_5 = table.find(Group.Buttons, arg1)
		if table_find_result1_5 then
			table.remove(Group.Buttons, table_find_result1_5)
			if #Group.Buttons == 0 then
				tbl_6[#tbl_6 + 1] = Group
			end
		end
	end
	for i_2, v_2 in tbl_6 do
		local table_find_result1_4 = table.find(var57, v_2)
		if table_find_result1_4 then
			table.remove(var57, table_find_result1_4)
		end
	end
	local Connection_2 = arg1.Connection
	if Connection_2 then
		Connection_2:Disconnect()
		arg1.Connection = nil
		i_2 = os.clock()
		v_2 = 0
		module_6_upvr.Begin(arg1.SizeTweenY, i_2, v_2)
		v_2 = tbl_4_upvr.DestroyingButtons
		i_2 = #v_2
		tbl_4_upvr.DestroyingButtons[i_2 + 1] = arg1
	end
end
local function SidebarButtonUpdate_upvr(arg1, arg2) -- Line 434, Named "SidebarButtonUpdate"
	--[[ Upvalues[5]:
		[1]: module_6_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Dirty = arg1.Dirty
	arg1.Dirty = false
	local var65
	if arg1.Selected then
		var65 = 1
	else
		var65 = 0
	end
	module_6_upvr.Tween(arg1.FadeTween, arg2, var65)
	module_6_upvr.Update(arg1.PositionTween, arg2)
	module_6_upvr.Update(arg1.SizeTweenY, arg2)
	if arg1.Hidden then
	else
	end
	var65 = arg2
	module_6_upvr.Tween(arg1.SizeTweenX, var65, arg1.SizeX)
	if Dirty or arg1.PositionTween.Dirty then
		var65 = module_upvr_2.SidebarRegion.Left
		if arg1.Region == var65 then
		else
			var65 = arg1.SizeX
		end
		var65 = arg1.Button
		var65 = UDim2.fromOffset(arg1.PosX + var65, arg1.PositionTween.Value + arg1.SizeY)
		var65.Button.Position = var65
	end
	if Dirty or arg1.SizeTweenX.Dirty then
		local Button_3 = arg1.Button
		var65 = arg1.SizeTweenX.Value
		if 0 >= var65 then
		else
		end
		Button_3.Button.Visible = true
	end
	if Dirty or arg1.SizeTweenX.Dirty or arg1.SizeTweenY.Dirty then
		var65 = arg1.SizeTweenX.Value * tbl_4_upvr.RegionScale // 1
		arg1.Button.Button.Size = UDim2.fromOffset(var65, arg1.SizeTweenY.Value)
	end
	if arg1.FadeTween.Dirty then
		var65 = module_6_upvr
		var65 = module_2_upvr.ButtonTransparency1
		arg1.Button.Button.BackgroundTransparency = var65.Lerp(var65, 0, arg1.FadeTween.Value)
	end
	var65 = arg1.Selected
	if var65 then
		var65 = module_upvr.ButtonState
	else
	end
	arg1.Button.StateOverride = nil
	var65 = module_upvr
	var65 = arg2
	var65.Button.Update(arg1.Button, var65)
	arg1.Changed = true
end
function module_upvr_2.SidebarButtonGroupCreate(arg1, arg2, arg3) -- Line 505
	--[[ Upvalues[3]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
	]]
	if not tbl_4_upvr.Objects_ByRegion[arg1] then
		error(module_3_upvr.FormatOutput("Invalid SidebarRegion '%*'", "SidebarUI", nil, arg1), 3)
	end
	local module = {
		Buttons = {};
	}
	local var68 = tbl_4_upvr
	var68.ButtonId += 1
	module.Id = tbl_4_upvr.ButtonId
	module.Order = arg2
	module.Region = arg1
	module.Type = tbl_5_upvr.Group
	module.PosX = 0
	module.PosY = 0
	module.SizeX = 0
	module.SizeY = 0
	return module
end
function module_upvr_2.SidebarButtonGroupDestroy(arg1) -- Line 524
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	for i_3 = #arg1.Buttons, 1, -1 do
		module_upvr_2.SidebarButtonDestroy(arg1.Buttons[i_3])
	end
end
function module_upvr_2.ButtonProfileRegister(arg1, arg2) -- Line 537
	--[[ Upvalues[3]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: SidebarButtonCreate_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 25. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 25. Error Block 11 end (CF ANALYSIS FAILED)
end
function module_upvr_2.ButtonProfileUnregister(arg1) -- Line 575
	--[[ Upvalues[3]:
		[1]: tbl_4_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	for _, v_3 in tbl_4_upvr.Objects_ByRegion do
		for i_5 = #v_3, 1, -1 do
			local var78 = v_3[i_5]
			local var79
			if var78.Type == tbl_5_upvr.Button then
				var79 = {var78}
			else
				var79 = var78.Buttons
			end
			for i_6 = #var79, 1, -1 do
				local var81 = var79[i_6]
				if var81.Profile == arg1 then
					module_upvr_2.SidebarButtonDestroy(var81)
				end
			end
		end
	end
end
function module_upvr_2.IsOpen() -- Line 619
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	return tbl_4_upvr.RegionsOpen
end
function module_upvr_2.SidebarButtonsSetHidden(arg1) -- Line 624
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	if arg1 ~= true then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	tbl_4_upvr.HideButtons = true
	for _, v_4 in tbl_4_upvr.SidebarButtons do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		v_4.Hidden = true
	end
end
module_upvr_2.SidebarButtonGroups = {
	SettingsLeaderboard = module_upvr_2.SidebarButtonGroupCreate(module_upvr_2.SidebarRegion.Left, module_upvr_2.SidebarButtonOrder.SettingsLeaderboardGroup);
}
local module_7_upvr = require(Modules:WaitForChild("ClientData"))
local module_5_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_4_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
function module_upvr_2.RenderStepped(arg1, arg2) -- Line 650
	--[[ Upvalues[14]:
		[1]: module_7_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: module_upvr (readonly)
		[7]: module_upvr_3 (readonly)
		[8]: module_upvr_4 (readonly)
		[9]: module_upvr_2 (readonly)
		[10]: SortSidebarObjects_upvr (readonly)
		[11]: tbl_5_upvr (readonly)
		[12]: var23_upvw (read and write)
		[13]: module_4_upvr (readonly)
		[14]: SidebarButtonUpdate_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var302 = not module_7_upvr.Flags.LoadingScreenActive
	if var302 then
		var302 = not module_7_upvr.Flags.PetScreenActive
		if var302 then
			var302 = not module_5_upvr.EventUIGroup.Active
		end
	end
	if var302 then
	else
	end
	module_6_upvr.Tween(tbl_4_upvr.RegionTween, arg2, 1)
	tbl_4_upvr.RegionScale = 1 - tbl_4_upvr.RegionTween.Value
	if tbl_4_upvr.RegionTween.Value >= 0.25 then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if tbl_4_upvr.RegionsActive ~= true then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_4_upvr.RegionsActive = true
		for _, v_5 in tbl_4_upvr.SidebarButtons do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not true and GuiService_upvr.SelectedObject == v_5.Button.Button then
				GuiService_upvr.SelectedObject = nil
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			v_5.Button.Button.Selectable = true
		end
	end
	if tbl_4_upvr.RegionTween.Value >= 1 then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if tbl_4_upvr.RegionsOpen ~= true then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_4_upvr.RegionsOpen = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_4_upvr.ScreenGui.Enabled = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not true then
			for _, v_6 in tbl_4_upvr.SidebarButtons do
				module_upvr.Input.Release(v_6.Button.Input)
			end
		end
	end
	local var305
	if tbl_4_upvr.InputMode == module_upvr_3.Mode then
	else
	end
	tbl_4_upvr.InputMode = module_upvr_3.Mode
	local any_PlayerListIsEnabled_result1_2 = module_upvr_4.PlayerListIsEnabled()
	if tbl_4_upvr.PlayerListEnabled ~= any_PlayerListIsEnabled_result1_2 then
		tbl_4_upvr.PlayerListEnabled = any_PlayerListIsEnabled_result1_2
		tbl_4_upvr.DrawDirty_ByRegion[module_upvr_2.SidebarRegion.Right] = true
	end
	if true or tbl_4_upvr.RegionTween.Dirty or module_upvr_4.ViewportSizeDirty then
		for _, v_7 in module_upvr_2.SidebarRegion do
			tbl_4_upvr.DrawDirty_ByRegion[v_7] = true
		end
	end
	for i_11 in tbl_4_upvr.SortDirty_ByRegion do
		tbl_4_upvr.DrawDirty_ByRegion[i_11] = true
		tbl_4_upvr.SortDirty_ByRegion[i_11] = nil
		local var307 = tbl_4_upvr.Objects_ByRegion[i_11]
		table.sort(var307, SortSidebarObjects_upvr)
		for _, v_8 in var307 do
			var305 = tbl_5_upvr.Group
			if v_8.Type == var305 then
				var305 = v_8.Buttons
				table.sort(var305, SortSidebarObjects_upvr)
			end
		end
	end
	if next(tbl_4_upvr.DrawDirty_ByRegion) ~= nil then
		i_11 = module_upvr_4
		local var308 = i_11.EmSize * var23_upvw.PaddingEdge // 1
		local var309 = module_upvr_4.EmSize * var23_upvw.PaddingInteriorX // 1
		local var310_upvr = module_upvr_4.EmSize * var23_upvw.SizeX_IconOnly // 1
		local var311_upvr = module_upvr_4.EmSize * var23_upvw.SizeY // 1
		local var312_upvr = var311_upvr * var23_upvw.IconScaleY // 1
		var305 = var23_upvw
		var305 = var23_upvw.TextScaleY
		local var313 = var311_upvr * var305 // 1
		var305 = 1
		var305 = 0
		if module_upvr_3.Mode == module_upvr_3.Touch then
			local var314
			local var315
			local var316
			if module_upvr_4.IsSmallScreen then
				var314 = 0
				var315 = 20
				var316 = module_4_upvr.InputMobileThumbstickSizeSmall
			else
				var314 = 55
				var315 = 35
				var316 = module_4_upvr.InputMobileThumbstickSizeLarge
			end
			var305 = var314 + 2 * var315 + var316
		end
		for i_13_upvr in tbl_4_upvr.DrawDirty_ByRegion do
			local var317 = tbl_4_upvr.Objects_ByRegion[i_13_upvr]
			local len = #var317
			local var319
			if len ~= 0 then
				local var320
				local var321
				local var322
				if i_13_upvr == module_upvr_2.SidebarRegion.Left then
					var320 = 0
					var321 = 1
					var322 = var23_upvw.SizeX_IconText_Left
				else
					var320 = 1
					var321 = -1
					var322 = var23_upvw.SizeX_IconText_Right
				end
				local var323_upvr = module_upvr_4.EmSize * var322 // 1
				var319 = 2.5
				var319 = 0.5
				var319 = (1.5 * var309 + var312_upvr) * var321
				local udim2_upvr_9 = UDim2.fromOffset(var310_upvr, var311_upvr)
				local udim2_upvr = UDim2.fromOffset(var312_upvr, var312_upvr)
				local udim2_upvr_8 = UDim2.fromOffset(var323_upvr, var311_upvr)
				local udim2_upvr_14 = UDim2.new(var320, var309 * var321, var319, 0)
				local udim2_upvr_7 = UDim2.new(var320, var319, 0.5, var311_upvr * var305.TextOffsetScaleY // 1)
				local udim2_upvr_12 = UDim2.fromOffset(var323_upvr - var312_upvr - var319 * var309, var313)
				local udim2_upvr_11 = UDim2.new(var305, var309 * -2, 0, var313)
				local function ResizeSidebarButton(arg1_4) -- Line 830
					--[[ Upvalues[14]:
						[1]: module_upvr_2 (copied, readonly)
						[2]: var310_upvr (readonly)
						[3]: udim2_upvr_9 (readonly)
						[4]: var312_upvr (readonly)
						[5]: udim2_upvr (readonly)
						[6]: var323_upvr (readonly)
						[7]: udim2_upvr_8 (readonly)
						[8]: udim2_upvr_14 (readonly)
						[9]: udim2_upvr_7 (readonly)
						[10]: udim2_upvr_12 (readonly)
						[11]: udim2_upvr_11 (readonly)
						[12]: var311_upvr (readonly)
						[13]: module_6_upvr (copied, readonly)
						[14]: arg2 (readonly)
					]]
					local var331
					local Button = arg1_4.Button
					local Style_2 = arg1_4.Profile.Style
					if Style_2 == module_upvr_2.SidebarButtonStyle.IconOnly then
						var331 = var310_upvr
						local IconScale = arg1_4.Profile.IconScale
						if IconScale then
							Button.Image.Size = UDim2.fromOffset(var312_upvr * IconScale.X // 1, var312_upvr * IconScale.Y // 1)
						else
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
							Button.Image.Size = udim2_upvr
						end
					elseif Style_2 == module_upvr_2.SidebarButtonStyle.IconText then
						var331 = var323_upvr
						local Image = Button.Image
						local Label = Button.Label
						Image.Position = udim2_upvr_14
						Image.Size = udim2_upvr
						Label.Position = udim2_upvr_7
						Label.Size = udim2_upvr_12
					elseif Style_2 == module_upvr_2.SidebarButtonStyle.TextOnly then
						var331 = var323_upvr
						Button.Label.Size = udim2_upvr_11
					end
					arg1_4.SizeX = var331
					arg1_4.SizeY = var311_upvr
					module_6_upvr.Begin(arg1_4.SizeTweenX, arg2, var331)
					if arg1_4.Dirty then
						module_6_upvr.Overwrite(arg1_4.SizeTweenY, arg2, var311_upvr, var311_upvr)
					else
						module_6_upvr.Begin(arg1_4.SizeTweenY, arg2, var311_upvr)
					end
				end
				var319 = 0
				for _, v_9 in var317 do
					local var337
					if var337 == tbl_5_upvr.Button then
						var337 = ResizeSidebarButton
						var337(v_9)
					else
						var337 = 0
						for _, v_10 in v_9.Buttons do
							ResizeSidebarButton(v_10)
							var337 += v_10.SizeX + module_upvr_4.EmSize * var23_upvw.PaddingX // 1
							local var338
						end
						v_9.SizeX = var337
						v_9.SizeY = var311_upvr
					end
					if var319 < v_9.SizeX then
						var319 = v_9.SizeX
					end
				end
				local var339_upvw = var308 - (var308 + var319) * tbl_4_upvr.RegionTween.Value
				local var340 = module_upvr_4.ViewportSize.Y - var305
				local minimum_upvw = math.min(var340, module_upvr_4.TopbarInset.Height + module_upvr_4.EmSize * var23_upvw.PaddingY // 1 + module_upvr_4.ScreenSize.Y * var23_upvw.PosYScreenScale // 1)
				if i_13_upvr == module_upvr_2.SidebarRegion.Left then
					local maximum_3 = math.max(var339_upvw + var319, 0)
				else
					if any_PlayerListIsEnabled_result1_2 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						local var343 = module_upvr_4.ViewportSize.Y * 0.5 // 1 + 62 + (var311_upvr + module_upvr_4.EmSize * var23_upvw.PaddingY // 1) * len
						if minimum_upvw < var343 and var343 <= var340 then
							minimum_upvw = var343
						end
					end
					var339_upvw = module_upvr_4.ViewportSize.X - var339_upvw
					local maximum_4 = math.max(var339_upvw + var319, 0)
				end
				local function RepositionSidebarButton(arg1_5, arg2_3) -- Line 970
					--[[ Upvalues[6]:
						[1]: i_13_upvr (readonly)
						[2]: module_upvr_2 (copied, readonly)
						[3]: var339_upvw (read and write)
						[4]: module_6_upvr (copied, readonly)
						[5]: arg2 (readonly)
						[6]: minimum_upvw (read and write)
					]]
					local var345
					if i_13_upvr == module_upvr_2.SidebarRegion.Right then
						var345 = (var339_upvw) - (var345 - var339_upvw) - arg1_5.SizeX
					end
					if arg1_5.Dirty then
						module_6_upvr.Overwrite(arg1_5.PositionTween, arg2, minimum_upvw, minimum_upvw)
					else
						module_6_upvr.Begin(arg1_5.PositionTween, arg2, minimum_upvw)
					end
					if arg1_5.PosX ~= var345 then
						arg1_5.Dirty = true
					end
					arg1_5.PosX = var345
					arg1_5.PosY = minimum_upvw
				end
				for i_16 = len, 1, -1 do
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					minimum_upvw -= var311_upvr + module_upvr_4.EmSize * var23_upvw.PaddingY // 1
					local var346 = var317[i_16]
					if var346.Type == tbl_5_upvr.Button then
						RepositionSidebarButton(var346, var339_upvw)
					else
						var346.PosX = var339_upvw
						var346.PosY = minimum_upvw
						for _, v_11 in var346.Buttons do
							RepositionSidebarButton(v_11, var339_upvw)
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
							local var348
						end
					end
				end
			end
		end
		table.clear(tbl_4_upvr.DrawDirty_ByRegion)
	end
	for i_18, v_12 in tbl_4_upvr.SidebarButtons do
		var311_upvr = SidebarButtonUpdate_upvr
		udim2_upvr_9 = v_12
		var312_upvr = arg2
		var311_upvr(udim2_upvr_9, var312_upvr)
	end
	if 0 < #tbl_4_upvr.DestroyingButtons then
		v_12 = tbl_4_upvr
		i_18 = v_12.DestroyingButtons
		for i_19 = #i_18, 1, -1 do
			var311_upvr = tbl_4_upvr
			v_12 = var311_upvr.DestroyingButtons
			i_18 = v_12[i_19]
			var311_upvr = i_18.SizeTweenY
			v_12 = var311_upvr.Completed
			if not v_12 then
				v_12 = SidebarButtonUpdate_upvr
				var311_upvr = i_18
				udim2_upvr_9 = arg2
				v_12(var311_upvr, udim2_upvr_9)
			else
				udim2_upvr_9 = module_upvr
				var311_upvr = udim2_upvr_9.Button
				v_12 = var311_upvr.Destroy
				var311_upvr = i_18.Button
				v_12(var311_upvr)
				v_12 = table.remove
				udim2_upvr_9 = tbl_4_upvr
				var311_upvr = udim2_upvr_9.DestroyingButtons
				udim2_upvr_9 = i_19
				v_12(var311_upvr, udim2_upvr_9)
			end
		end
	end
	if module_upvr_4.SecondOrderProperties.SidebarLeftInset == maximum_3 then
		-- KONSTANTWARNING: GOTO [686] #514
	end
	module_upvr_4.SecondOrderProperties.SidebarLeftInsetDirty = true
	module_upvr_4.SecondOrderProperties.SidebarLeftInset = maximum_3
	if module_upvr_4.SecondOrderProperties.SidebarRightInset == maximum_4 then
	else
	end
	module_upvr_4.SecondOrderProperties.SidebarRightInsetDirty = true
	module_upvr_4.SecondOrderProperties.SidebarRightInset = maximum_4
end
return module_upvr_2