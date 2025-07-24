-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:18
-- Luau version 6, Types version 3
-- Time taken: 0.026735 seconds

local tbl_15_upvw = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_10_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_9_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_15_upvr = require(Modules:WaitForChild("ClientData"))
local module_8_upvr = require(Modules:WaitForChild("UIButton"))
local module_7_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_11_upvr = require(Modules:WaitForChild("UIShared"))
local module_12_upvr = require(Modules:WaitForChild("Utility"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_16 = require(UserInterface:WaitForChild("CollectionUISystem"))
local module_2 = require(UserInterface:WaitForChild("SidebarUI"))
local tbl_8_upvr = {
	SubtitleXScale = 0.75;
	TitleTextSizeEm = 1.5;
	TitleTextXScale = 1;
	TextSizeEm = 1;
	WrapperSizeXEm = 20;
	WrapperSizeYEm = 24;
}
local tbl_9_upvr = {}
local tbl_3 = {}
local tbl_4 = {}
local tbl = {}
local tbl_10 = {}
local tbl_12 = {}
local tbl_6 = {}
local tbl_13_upvr = {}
local any_TableMerge_result1 = module_12_upvr.TableMerge(module_16.CollectionType, {
	Settings = 1000;
})
tbl_15_upvw.IsOpen = module_7_upvr.CreateExclusivityOpenHandler(module_7_upvr.SettingsUIGroup)
local any_CollectionUICreate_result1_upvr = module_16.CollectionUICreate(any_TableMerge_result1, module_12_upvr.HierarchyCreate({{any_TableMerge_result1._UIMain}, {any_TableMerge_result1.Settings, any_TableMerge_result1._UIMain}}), tbl_15_upvw.IsOpen)
function any_CollectionUICreate_result1_upvr.CloseRequested() -- Line 127
	--[[ Upvalues[2]:
		[1]: module_11_upvr (readonly)
		[2]: module_7_upvr (readonly)
	]]
	module_11_upvr.UIExclusivityGroup.Deactivate(module_7_upvr.SettingsUIGroup)
end
local RenderStepped_2_upvr = any_CollectionUICreate_result1_upvr.RenderStepped
local var32_upvw
function any_CollectionUICreate_result1_upvr.RenderStepped(...) -- Line 135
	--[[ Upvalues[3]:
		[1]: RenderStepped_2_upvr (readonly)
		[2]: var32_upvw (read and write)
		[3]: tbl_15_upvw (read and write)
	]]
	RenderStepped_2_upvr(...)
	var32_upvw.Selected = tbl_15_upvw.IsOpen()
end
RenderStepped_2_upvr = "SettingsUI"
any_CollectionUICreate_result1_upvr.Name = RenderStepped_2_upvr
RenderStepped_2_upvr = module_9_upvr.DisplayOrder_SettingsUI
any_CollectionUICreate_result1_upvr.DisplayOrder = RenderStepped_2_upvr
RenderStepped_2_upvr = any_CollectionUICreate_result1_upvr.RequestCollection
RenderStepped_2_upvr(any_TableMerge_result1.Settings)
RenderStepped_2_upvr = ReplicatedStorage:WaitForChild("Bindables")
local module_upvr_3 = require(Modules:WaitForChild("UILegacySupport"))
RenderStepped_2_upvr:WaitForChild("OpenShops").Event:Connect(function(arg1) -- Line 154
	--[[ Upvalues[2]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	if arg1 ~= nil then
		local var35 = any_CollectionUICreate_result1_upvr
		if module_upvr_3.LegacyBindableObjects[arg1] == nil then
			var35 = false
		else
			var35 = true
		end
		var35.RequestClose(var35)
	end
end)
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1._UIMain].Open = function() -- Line 161
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	module_upvr_3.CloseShops()
end
local any_MemberCreate_result1_upvr = module_7_upvr.MemberCreate(module_7_upvr.SettingsUIGroup)
var32_upvw = module_2.ButtonProfileRegister({
	ButtonTheme = module_8_upvr.Button.Themes.Floating;
	Icon = module_9_upvr.Settings_Legacy;
	IconScale = Vector2.one * 0.9;
	Order = module_2.SidebarButtonOrder.Settings;
	Style = module_2.SidebarButtonStyle.IconOnly;
	PressFunction = function() -- Line 172, Named "ToggleInterface"
		--[[ Upvalues[5]:
			[1]: tbl_15_upvw (read and write)
			[2]: module_7_upvr (readonly)
			[3]: module_11_upvr (readonly)
			[4]: any_MemberCreate_result1_upvr (readonly)
			[5]: any_CollectionUICreate_result1_upvr (readonly)
		]]
		if not tbl_15_upvw.IsOpen() then
			module_7_upvr.ClosePopups()
			module_11_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, true)
		else
			any_CollectionUICreate_result1_upvr.RequestClose()
		end
	end;
}, module_2.SidebarButtonGroups.SettingsLeaderboard)
any_CollectionUICreate_result1_upvr.State.ClosingSelection = var32_upvw.Button.Button
local var269_upvw
local function Initialize(arg1) -- Line 207
	--[[ Upvalues[6]:
		[1]: module_11_upvr (readonly)
		[2]: module_12_upvr (readonly)
		[3]: module_9_upvr (readonly)
		[4]: var269_upvw (read and write)
		[5]: module_15_upvr (readonly)
		[6]: any_CollectionUICreate_result1_upvr (readonly)
	]]
	local tbl_19 = {
		Components = {};
		HeaderText = "Settings";
		IdentityConnection = nil;
		Flag = module_11_upvr.TextBoundsFlagCreate();
	}
	local any_TextBoundsLabelCreate_result1_2, any_TextBoundsLabelCreate_result2_2 = module_11_upvr.TextBoundsLabelCreate(arg1.Wrapper, tbl_19.HeaderText, tbl_19.Flag)
	tbl_19.HeaderLabel = any_TextBoundsLabelCreate_result1_2
	tbl_19.HeaderBounds = any_TextBoundsLabelCreate_result2_2
	tbl_19.HeaderLabel.TextScaled = true
	tbl_19.ScrollingFrame = module_12_upvr.I("ScrollingFrame", module_11_upvr.Properties.ScrollingFrame_Vertical, module_9_upvr.ScrollBarStyles.RoundThreeQuarterFull, {
		Parent = arg1.Wrapper;
	})
	local any_TableMerge_result1_3_upvr = module_12_upvr.TableMerge(tbl_19, arg1)
	var269_upvw(any_TableMerge_result1_3_upvr)
	if not module_15_upvr.LocalPlayerState.Initialized then
		any_TableMerge_result1_3_upvr.IdentityConnection = module_15_upvr.Signals.PlayerIdentityChanged:Connect(function(arg1_2) -- Line 244, Named "PlayerIdentityChanged"
			--[[ Upvalues[3]:
				[1]: module_15_upvr (copied, readonly)
				[2]: any_TableMerge_result1_3_upvr (readonly)
				[3]: var269_upvw (copied, read and write)
			]]
			if arg1_2 == module_15_upvr.LocalPlayerState then
				if any_TableMerge_result1_3_upvr.IdentityConnection then
					any_TableMerge_result1_3_upvr.IdentityConnection:Disconnect()
					any_TableMerge_result1_3_upvr.IdentityConnection = nil
				end
				if arg1_2.PlayerIdentity.IsAuthorizedUser then
					var269_upvw(any_TableMerge_result1_3_upvr)
				end
			end
		end)
	end
	for _, v in any_TableMerge_result1_3_upvr.Components do
		local _1 = v.Buttons[1]
		if _1 then
			any_CollectionUICreate_result1_upvr.State.PendingSelection = _1.Button.Button
			return any_TableMerge_result1_3_upvr
		end
	end
	return any_TableMerge_result1_3_upvr
end
tbl_6.Initialize = Initialize
local function Destroy(arg1) -- Line 278
	if arg1.IdentityConnection then
		arg1.IdentityConnection:Disconnect()
		arg1.IdentityConnection = nil
	end
	for _, v_2 in arg1.Components do
		v_2.Spec.Methods.Destroy(v_2)
	end
end
tbl_6.Destroy = Destroy
local function Update(arg1, arg2, arg3) -- Line 293
	--[[ Upvalues[3]:
		[1]: module_11_upvr (readonly)
		[2]: any_CollectionUICreate_result1_upvr (readonly)
		[3]: tbl_8_upvr (readonly)
	]]
	if module_11_upvr.TextBoundsFlagCheck(arg1.Flag) or arg1.DrawDirty then
		local PadX = any_CollectionUICreate_result1_upvr.Properties.PadX
		local PadY = any_CollectionUICreate_result1_upvr.Properties.PadY
		local var64 = module_11_upvr.EmSize * tbl_8_upvr.WrapperSizeXEm // 1
		local var65 = module_11_upvr.EmSize * tbl_8_upvr.WrapperSizeYEm // 1
		local var66 = var64 - any_CollectionUICreate_result1_upvr.Properties.CloseInsetX - PadX
		local CloseButtonY = module_11_upvr.SteppedSize.CloseButtonY
		local var68 = CloseButtonY + 2 * PadY
		local ScrollBar = module_11_upvr.SteppedSize.ScrollBar
		module_11_upvr.CachedTextBoundsUpdate(arg1.HeaderBounds, arg1.HeaderText, CloseButtonY)
		local minimum = math.min(arg1.HeaderBounds.X, var66 - PadX)
		local var71 = var64 * 0.5 - minimum * 0.5 // 1
		if var66 < var71 + minimum then
			var71 -= var71 + minimum - var66
		end
		arg1.HeaderLabel.Position = UDim2.fromOffset(var71, PadY)
		arg1.HeaderLabel.Size = UDim2.fromOffset(minimum, CloseButtonY)
		local var72 = var64 - 2 * PadX
		local any_DimTrackerCreate_result1 = module_11_upvr.DimTrackerCreate()
		local tbl_7 = {}
		for _, v_3 in arg1.Components do
			local Spec = v_3.Spec
			for _, v_4 in {{
				Bounds = "TitleBounds";
				Label = "TitleLabel";
				Text = "TitleText";
				TextScaleX = tbl_8_upvr.TitleTextXScale;
				TextSize = module_11_upvr.EmSize * tbl_8_upvr.TitleTextSizeEm // 1;
			}, {
				Bounds = "SubtitleBounds";
				Label = "SubtitleLabel";
				Text = "SubtitleText";
				TextScaleX = tbl_8_upvr.SubtitleXScale;
				TextSize = module_11_upvr.EmSize * tbl_8_upvr.TextSizeEm // 1;
			}} do
				local var79 = Spec[v_4.Text]
				if var79 then
					local assert_result1_2 = assert(v_3[v_4.Bounds])
					local assert_result1 = assert(v_3[v_4.Label])
					if module_11_upvr.CachedTextBoundsUpdate(assert_result1_2, var79, v_4.TextSize, var72 * v_4.TextScaleX) then
						assert_result1.TextSize = v_4.TextSize
					end
					module_11_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, assert_result1, 0, assert_result1_2.Y)
					module_11_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, PadY)
					tbl_7[assert_result1] = {
						Position = UDim.new(0, (var72 * 0.5 - assert_result1_2.X * 0.5) // 1);
						Size = UDim.new(0, assert_result1_2.X);
					}
				end
			end
			Spec.Methods.Resize(v_3, any_DimTrackerCreate_result1, tbl_7, var72)
		end
		module_11_upvr.DimTrackerApply(any_DimTrackerCreate_result1, tbl_7, true)
		arg1.ScrollingFrame.CanvasSize = UDim2.fromOffset(0, any_DimTrackerCreate_result1.Offset)
		arg1.ScrollingFrame.Position = UDim2.fromOffset(PadX, var68)
		arg1.ScrollingFrame.ScrollBarThickness = ScrollBar
		arg1.ScrollingFrame.Size = UDim2.fromOffset(var72 + 2 * ScrollBar, var65 - var68 - PadY)
		arg1.TargetSize = UDim2.fromOffset(var64, var65)
	end
	for _, v_5 in arg1.Components do
		v_5.Spec.Methods.Update(v_5, arg2, arg3)
	end
end
tbl_6.Update = Update
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1.Settings] = tbl_6
local tbl_16_upvr = {
	[true] = module_8_upvr.Button.Themes.Use;
	[false] = module_8_upvr.Button.Themes.Dull;
}
local tbl_2_upvr = {
	Horizontal = 1;
	Vertical = 2;
}
local function ComponentButtonCreate_upvr(arg1, arg2, arg3, arg4) -- Line 429, Named "ComponentButtonCreate"
	--[[ Upvalues[3]:
		[1]: tbl_16_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: module_11_upvr (readonly)
	]]
	local var85_upvr
	if arg4 ~= true then
		var85_upvr = false
	else
		var85_upvr = true
	end
	var85_upvr = module_8_upvr.Button
	var85_upvr = arg3
	local tbl_14 = {}
	tbl_14.Text = arg1
	local any_CreateFancy_result1 = var85_upvr.CreateFancy(var85_upvr, tbl_16_upvr[var85_upvr], tbl_14)
	var85_upvr = {}
	var85_upvr.Bounds = module_11_upvr.CachedTextBounds_FromLabel(any_CreateFancy_result1.Label)
	var85_upvr.Button = any_CreateFancy_result1
	var85_upvr.Text = arg1
	any_CreateFancy_result1.Button.Activated:Connect(function() -- Line 451
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var85_upvr (readonly)
		]]
		arg2(var85_upvr)
	end)
	return var85_upvr
end
local function _(arg1) -- Line 458, Named "ComponentButtonsDestroy"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_6 in arg1.Buttons do
		module_8_upvr.Button.Destroy(v_6.Button)
	end
end
local function _(arg1, arg2) -- Line 467, Named "ComponentButtonsSetTheme"
	--[[ Upvalues[1]:
		[1]: tbl_16_upvr (readonly)
	]]
	for _, v_7 in arg1.Buttons do
		local var95
		if arg2 ~= v_7 then
			var95 = false
		else
			var95 = true
		end
		v_7.Button.Theme = tbl_16_upvr[var95]
	end
end
local function ComponentButtonsResize_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 478, Named "ComponentButtonsResize"
	--[[ Upvalues[5]:
		[1]: module_11_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: any_CollectionUICreate_result1_upvr (readonly)
		[5]: module_10_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var120 = module_11_upvr.EmSize * 0.75 // 1
	local var121 = 0
	for i_8, v_8 in arg1.Buttons do
		module_11_upvr.CachedTextBoundsUpdate(v_8.Bounds, v_8.Text, module_11_upvr.SteppedSize.ButtonFancyText)
		var121 = math.max(var121, v_8.Bounds.X + 2 * var120)
		module_8_upvr.Button.AdjustText(v_8.Button, nil, nil, nil, module_11_upvr.SteppedSize.ButtonFancyText)
	end
	if arg5 == tbl_2_upvr.Vertical then
		i_8 = var121
		var121 = math.min(arg4, i_8)
		local tbl_18 = {}
		i_8 = 0
		v_8 = (arg4 * 0.5 - var121 * 0.5) // 1
		tbl_18.Position = UDim.new(i_8, v_8)
		i_8 = 0
		v_8 = var121
		tbl_18.Size = UDim.new(i_8, v_8)
		i_8 = nil
		v_8 = nil
		for _, v_9 in arg1.Buttons, i_8, v_8 do
			module_11_upvr.DimTrackerAdd(arg2, v_9.Button.Button, 0, module_11_upvr.SteppedSize.ButtonFancyY)
			module_11_upvr.DimTrackerPad(arg2, 0, any_CollectionUICreate_result1_upvr.Properties.PadY)
			arg3[v_9.Button.Button] = tbl_18
			local var123
		end
	else
		if arg5 == tbl_2_upvr.Horizontal then
			local len = #arg1.Buttons
			i_8 = module_11_upvr
			i_8 = arg4
			v_8 = len
			v_8 = var121
			i_8 = math.min(v_8, i_8.ComputeEvenlySpacedSize(i_8, v_8, var120))
			var121 = i_8
			v_8 = arg4 * 0.5 - (var121 * len + var120 * (len - 1)) * 0.5
			i_8 = v_8 // 1
			v_8 = UDim.new(0, var121)
			for _, v_34 in arg1.Buttons do
				if nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					module_11_upvr.DimTrackerAttach(arg2, v_34.Button.Button, nil)
				else
					module_11_upvr.DimTrackerAdd(arg2, v_34.Button.Button, 0, var123)
					module_11_upvr.DimTrackerPad(arg2, 0, any_CollectionUICreate_result1_upvr.Properties.PadY)
				end
				arg3[v_34.Button.Button] = {
					Position = UDim.new(0, i_8);
					Size = v_8;
				}
				i_8 += var121 + var120
			end
			return
		end
		error(module_10_upvr.FormatOutput("Invalid ComponentButtonAlignment '%*'", "SettingsUI", nil, arg5), 2)
	end
end
local function _(arg1, arg2) -- Line 560, Named "ComponentButtonsUpdate"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_10 in arg1.Buttons do
		module_8_upvr.Button.Update(v_10.Button, arg2)
	end
end
tbl_9_upvr.TestingInputFormat_BySubmitted = {
	[true] = "Submitted!";
	[false] = ">> Paste Test Level AssetId Here <<";
}
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Settings"))
local State_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("State")
local function Initialize(arg1, arg2) -- Line 579
	--[[ Upvalues[8]:
		[1]: module_upvr_2 (readonly)
		[2]: State_upvr (readonly)
		[3]: module_10_upvr (readonly)
		[4]: ComponentButtonCreate_upvr (readonly)
		[5]: module_12_upvr (readonly)
		[6]: module_11_upvr (readonly)
		[7]: module_9_upvr (readonly)
		[8]: tbl_9_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_14_upvr = {}
	local var132
	if module_upvr_2.IsTestGame then
		var132 = module_upvr_2.PrimaryDevHostId
	else
		var132 = module_upvr_2.PrimaryTestHostId
	end
	if var132 then
		if module_upvr_2.IsTestGame then
		else
		end
		arg1.Buttons[#arg1.Buttons + 1] = ComponentButtonCreate_upvr(string.format("Teleport to %s Game", "Test"), function() -- Line 597, Named "RequestTeleport"
			--[[ Upvalues[2]:
				[1]: State_upvr (copied, readonly)
				[2]: module_10_upvr (copied, readonly)
			]]
			State_upvr:FireServer(module_10_upvr.StateRequestType.Teleport)
		end, arg2.ScrollingFrame)
	end
	module_14_upvr.TestingInputBox = module_12_upvr.I("TextBox", module_11_upvr.Properties.Text_Scaled, {
		BackgroundColor3 = module_9_upvr.ButtonColor2;
		BackgroundTransparency = 0;
		FontFace = module_9_upvr.FontFaceNormal;
		PlaceholderText = tbl_9_upvr.TestingInputFormat_BySubmitted[false];
		TextColor3 = module_9_upvr.TextColor2;
		Parent = arg2.ScrollingFrame;
	})
	module_14_upvr.TestingInputBox.FocusLost:Connect(function(arg1_3) -- Line 616
		--[[ Upvalues[4]:
			[1]: module_14_upvr (readonly)
			[2]: State_upvr (copied, readonly)
			[3]: module_10_upvr (copied, readonly)
			[4]: tbl_9_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var135
		if arg1_3 then
			var135 = module_14_upvr.TestingInputBox.Text
			local string_match_result1 = string.match(var135, "%d+")
			var135 = string_match_result1
			if var135 then
				var135 = tonumber(string_match_result1)
			end
			if var135 then
				local var137 = true
				State_upvr:FireServer(module_10_upvr.StateRequestType.TestLevelAsset, var135)
			end
		end
		module_14_upvr.TestingInputBox.PlaceholderText = tbl_9_upvr.TestingInputFormat_BySubmitted[var137]
		if var137 then
			module_14_upvr.TestingInputBox.Text = ""
		end
	end)
	module_14_upvr.TestingInputCorner = module_12_upvr.I("UICorner", {
		CornerRadius = module_11_upvr.CornerDims.Button.RadiusUDim;
		Parent = module_14_upvr.TestingInputBox;
	})
	module_12_upvr.I("UIPadding", {
		PaddingBottom = UDim.new(0.25, 0);
		PaddingLeft = UDim.new(0.025, 0);
		PaddingRight = UDim.new(0.025, 0);
		PaddingTop = UDim.new(0.25, 0);
		Parent = module_14_upvr.TestingInputBox;
	})
	return module_12_upvr.TableMerge(module_14_upvr, arg1)
end
tbl_9_upvr.Initialize = Initialize
local function Destroy(arg1) -- Line 662
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_11 in arg1.Buttons do
		module_8_upvr.Button.Destroy(v_11.Button)
	end
end
tbl_9_upvr.Destroy = Destroy
local function Resize(arg1, arg2, arg3, arg4) -- Line 669
	--[[ Upvalues[5]:
		[1]: ComponentButtonsResize_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: module_11_upvr (readonly)
		[4]: tbl_8_upvr (readonly)
		[5]: any_CollectionUICreate_result1_upvr (readonly)
	]]
	ComponentButtonsResize_upvr(arg1, arg2, arg3, arg4, tbl_2_upvr.Vertical)
	module_11_upvr.DimTrackerAdd(arg2, arg1.TestingInputBox, 0, module_11_upvr.EmSize * tbl_8_upvr.TextSizeEm * 2 // 1)
	module_11_upvr.DimTrackerPad(arg2, 0, any_CollectionUICreate_result1_upvr.Properties.PadY)
	arg3[arg1.TestingInputBox] = {
		Position = UDim.new(0, 0);
		Size = UDim.new(0, arg4);
	}
	arg1.TestingInputCorner.CornerRadius = module_11_upvr.CornerDims.Button.RadiusUDim
end
tbl_9_upvr.Resize = Resize
local function Update(arg1, arg2, arg3) -- Line 697
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_12 in arg1.Buttons do
		module_8_upvr.Button.Update(v_12.Button, arg3)
	end
end
tbl_9_upvr.Update = Update
local function Initialize(arg1, arg2) -- Line 710
	--[[ Upvalues[4]:
		[1]: module_15_upvr (readonly)
		[2]: tbl_16_upvr (readonly)
		[3]: ComponentButtonCreate_upvr (readonly)
		[4]: module_12_upvr (readonly)
	]]
	local module_upvr_4 = {
		Enabled_ByButton = {};
	}
	for _, v_14 in {{
		Text = "On";
		Enabled = true;
	}, {
		Text = "Off";
		Enabled = false;
	}} do
		local var158
		if module_15_upvr.Flags.MusicEnabled ~= v_14.Enabled then
			var158 = false
		else
			var158 = true
		end
		local ComponentButtonCreate_upvr_result1_2 = ComponentButtonCreate_upvr(v_14.Text, function(arg1_4) -- Line 721, Named "MusicButtonPressed"
			--[[ Upvalues[4]:
				[1]: module_upvr_4 (readonly)
				[2]: module_15_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: tbl_16_upvr (copied, readonly)
			]]
			module_15_upvr.MusicEnabledSet(module_upvr_4.Enabled_ByButton[arg1_4])
			for _, v_13 in arg1.Buttons do
				local var154
				if arg1_4 ~= v_13 then
					var154 = false
				else
					var154 = true
				end
				v_13.Button.Theme = tbl_16_upvr[var154]
			end
		end, arg2.ScrollingFrame, var158)
		var158 = arg1.Buttons
		arg1.Buttons[#var158 + 1] = ComponentButtonCreate_upvr_result1_2
		module_upvr_4.Enabled_ByButton[ComponentButtonCreate_upvr_result1_2] = v_14.Enabled
	end
	return module_12_upvr.TableMerge(module_upvr_4, arg1)
end
tbl_3.Initialize = Initialize
local function Destroy(arg1) -- Line 764
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_15 in arg1.Buttons do
		module_8_upvr.Button.Destroy(v_15.Button)
	end
end
tbl_3.Destroy = Destroy
local function Resize(arg1, arg2, arg3, arg4) -- Line 771
	--[[ Upvalues[2]:
		[1]: ComponentButtonsResize_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	ComponentButtonsResize_upvr(arg1, arg2, arg3, arg4, tbl_2_upvr.Horizontal)
end
tbl_3.Resize = Resize
local function Update(arg1, arg2, arg3) -- Line 786
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_16 in arg1.Buttons do
		module_8_upvr.Button.Update(v_16.Button, arg3)
	end
end
tbl_3.Update = Update
local module_3_upvr = require(UserInterface:WaitForChild("PlayerListUI"))
local function Initialize(arg1, arg2) -- Line 799
	--[[ Upvalues[4]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_16_upvr (readonly)
		[3]: ComponentButtonCreate_upvr (readonly)
		[4]: module_12_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	local tbl_5_upvr = {
		StatVisibilities_ByButton = {};
	}
	local function _(arg1_5) -- Line 810, Named "PlayerListButtonPressed"
		--[[ Upvalues[4]:
			[1]: tbl_5_upvr (readonly)
			[2]: module_3_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: tbl_16_upvr (copied, readonly)
		]]
		for i_17, v_17 in tbl_5_upvr.StatVisibilities_ByButton[arg1_5] do
			module_3_upvr.SetStatVisibility(i_17, v_17)
		end
		for _, v_18 in arg1.Buttons do
			local var178
			if arg1_5 ~= v_18 then
				var178 = false
			else
				var178 = true
			end
			v_18.Button.Theme = tbl_16_upvr[var178]
		end
	end
	local tbl_11 = {}
	local tbl_17 = {
		Text = "Show Time Played";
		StatVisibilities = {
			[module_3_upvr.StatType.Level] = false;
			[module_3_upvr.StatType.Time] = true;
		};
	}
	tbl_11[1] = {
		Text = "Show Level Names";
		StatVisibilities = {
			[module_3_upvr.StatType.Level] = true;
			[module_3_upvr.StatType.Time] = false;
		};
	}
	tbl_11[2] = tbl_17
	tbl_11[3] = {
		Text = "Show Levels & Time";
		StatVisibilities = {
			[module_3_upvr.StatType.Level] = true;
			[module_3_upvr.StatType.Time] = true;
		};
	}
	tbl_17 = {}
	local var187 = tbl_17
	for _, v_19 in pairs(module_3_upvr.StatType) do
		var187[v_19] = module_3_upvr.GetStatVisibility(v_19)
	end
	-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [118] 86. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [118] 86. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [102] 73. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [102] 73. Error Block 4 end (CF ANALYSIS FAILED)
end
tbl_4.Initialize = Initialize
local function Destroy(arg1) -- Line 894
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_20 in arg1.Buttons do
		module_8_upvr.Button.Destroy(v_20.Button)
	end
end
tbl_4.Destroy = Destroy
local function Resize(arg1, arg2, arg3, arg4) -- Line 901
	--[[ Upvalues[2]:
		[1]: ComponentButtonsResize_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	ComponentButtonsResize_upvr(arg1, arg2, arg3, arg4, tbl_2_upvr.Vertical)
end
tbl_4.Resize = Resize
local function Update(arg1, arg2, arg3) -- Line 916
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_21 in arg1.Buttons do
		module_8_upvr.Button.Update(v_21.Button, arg3)
	end
end
tbl_4.Update = Update
local function Initialize(arg1, arg2) -- Line 929
	--[[ Upvalues[3]:
		[1]: module_15_upvr (readonly)
		[2]: ComponentButtonCreate_upvr (readonly)
		[3]: module_12_upvr (readonly)
	]]
	local module_13_upvr = {
		Button_ByEnabled = {};
		Enabled_ByButton = {};
	}
	for _, v_22 in {{
		Text = "On";
		Enabled = true;
	}, {
		Text = "Off";
		Enabled = false;
	}} do
		local var203
		if module_15_upvr.Flags.AutoProgressLevels ~= v_22.Enabled then
			var203 = false
		else
			var203 = true
		end
		local ComponentButtonCreate_result1 = ComponentButtonCreate_upvr(v_22.Text, function(arg1_6) -- Line 941, Named "ProgressButtonPressed"
			--[[ Upvalues[2]:
				[1]: module_15_upvr (copied, readonly)
				[2]: module_13_upvr (readonly)
			]]
			module_15_upvr.Flags.AutoProgressLevels = module_13_upvr.Enabled_ByButton[arg1_6]
		end, arg2.ScrollingFrame, var203)
		var203 = arg1.Buttons
		arg1.Buttons[#var203 + 1] = ComponentButtonCreate_result1
		module_13_upvr.Button_ByEnabled[v_22.Enabled] = ComponentButtonCreate_result1
		module_13_upvr.Enabled_ByButton[ComponentButtonCreate_result1] = v_22.Enabled
	end
	return module_12_upvr.TableMerge(module_13_upvr, arg1)
end
tbl.Initialize = Initialize
local function Destroy(arg1) -- Line 982
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_23 in arg1.Buttons do
		module_8_upvr.Button.Destroy(v_23.Button)
	end
end
tbl.Destroy = Destroy
local function Resize(arg1, arg2, arg3, arg4) -- Line 989
	--[[ Upvalues[2]:
		[1]: ComponentButtonsResize_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	ComponentButtonsResize_upvr(arg1, arg2, arg3, arg4, tbl_2_upvr.Horizontal)
end
tbl.Resize = Resize
local function Update(arg1, arg2, arg3) -- Line 1004
	--[[ Upvalues[3]:
		[1]: module_15_upvr (readonly)
		[2]: tbl_16_upvr (readonly)
		[3]: module_8_upvr (readonly)
	]]
	for _, v_24 in arg1.Buttons do
		local var215
		if arg1.Button_ByEnabled[module_15_upvr.Flags.AutoProgressLevels] ~= v_24 then
			var215 = false
		else
			var215 = true
		end
		v_24.Button.Theme = tbl_16_upvr[var215]
	end
	for _, v_25 in arg1.Buttons do
		module_8_upvr.Button.Update(v_25.Button, arg3)
	end
end
tbl.Update = Update
local module_4_upvr = require(UserInterface:WaitForChild("TopbarUI"))
local function Initialize(arg1, arg2) -- Line 1021
	--[[ Upvalues[4]:
		[1]: module_4_upvr (readonly)
		[2]: tbl_16_upvr (readonly)
		[3]: ComponentButtonCreate_upvr (readonly)
		[4]: module_12_upvr (readonly)
	]]
	local module_6_upvr = {
		Visible_ByButton = {};
	}
	for _, v_27 in {{
		Text = "Visible";
		Visible = true;
	}, {
		Text = "Hidden";
		Visible = false;
	}} do
		local var230
		if module_4_upvr.TimerVisible ~= v_27.Visible then
			var230 = false
		else
			var230 = true
		end
		local ComponentButtonCreate_upvr_result1_3 = ComponentButtonCreate_upvr(v_27.Text, function(arg1_7) -- Line 1032, Named "TimerButtonPressed"
			--[[ Upvalues[4]:
				[1]: module_4_upvr (copied, readonly)
				[2]: module_6_upvr (readonly)
				[3]: arg1 (readonly)
				[4]: tbl_16_upvr (copied, readonly)
			]]
			module_4_upvr.TimerVisible = module_6_upvr.Visible_ByButton[arg1_7]
			for _, v_26 in arg1.Buttons do
				local var226
				if arg1_7 ~= v_26 then
					var226 = false
				else
					var226 = true
				end
				v_26.Button.Theme = tbl_16_upvr[var226]
			end
		end, arg2.ScrollingFrame, var230)
		var230 = arg1.Buttons
		arg1.Buttons[#var230 + 1] = ComponentButtonCreate_upvr_result1_3
		module_6_upvr.Visible_ByButton[ComponentButtonCreate_upvr_result1_3] = v_27.Visible
	end
	return module_12_upvr.TableMerge(module_6_upvr, arg1)
end
tbl_10.Initialize = Initialize
local function Destroy(arg1) -- Line 1073
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_28 in arg1.Buttons do
		module_8_upvr.Button.Destroy(v_28.Button)
	end
end
tbl_10.Destroy = Destroy
local function Resize(arg1, arg2, arg3, arg4) -- Line 1080
	--[[ Upvalues[2]:
		[1]: ComponentButtonsResize_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	ComponentButtonsResize_upvr(arg1, arg2, arg3, arg4, tbl_2_upvr.Horizontal)
end
tbl_10.Resize = Resize
local function Update(arg1, arg2, arg3) -- Line 1095
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_29 in arg1.Buttons do
		module_8_upvr.Button.Update(v_29.Button, arg3)
	end
end
tbl_10.Update = Update
local module_5_upvr = require(Modules:WaitForChild("CharacterVisibility"))
function tbl_12.Initialize(arg1, arg2) -- Line 1108
	--[[ Upvalues[4]:
		[1]: module_5_upvr (readonly)
		[2]: tbl_16_upvr (readonly)
		[3]: ComponentButtonCreate_upvr (readonly)
		[4]: module_12_upvr (readonly)
	]]
	local module_upvr = {
		Visible_ByButton = {};
	}
	for _, v_31 in {{
		Text = "Visible";
		Visible = true;
	}, {
		Text = "Hidden";
		Visible = false;
	}} do
		local var250
		if module_5_upvr.GetVisibilityOptionEnabled(module_5_upvr.VisibilityOption.Trails) ~= v_31.Visible then
			var250 = false
		else
			var250 = true
		end
		local ComponentButtonCreate_upvr_result1 = ComponentButtonCreate_upvr(v_31.Text, function(arg1_8) -- Line 1119, Named "TrailButtonPressed"
			--[[ Upvalues[4]:
				[1]: module_5_upvr (copied, readonly)
				[2]: module_upvr (readonly)
				[3]: arg1 (readonly)
				[4]: tbl_16_upvr (copied, readonly)
			]]
			module_5_upvr.SetVisibilityOptionEnabled(module_5_upvr.VisibilityOption.Trails, module_upvr.Visible_ByButton[arg1_8])
			for _, v_30 in arg1.Buttons do
				local var246
				if arg1_8 ~= v_30 then
					var246 = false
				else
					var246 = true
				end
				v_30.Button.Theme = tbl_16_upvr[var246]
			end
		end, arg2.ScrollingFrame, var250)
		var250 = arg1.Buttons
		arg1.Buttons[#var250 + 1] = ComponentButtonCreate_upvr_result1
		module_upvr.Visible_ByButton[ComponentButtonCreate_upvr_result1] = v_31.Visible
	end
	return module_12_upvr.TableMerge(module_upvr, arg1)
end
function tbl_12.Destroy(arg1) -- Line 1166
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_32 in arg1.Buttons do
		module_8_upvr.Button.Destroy(v_32.Button)
	end
end
function tbl_12.Resize(arg1, arg2, arg3, arg4) -- Line 1173
	--[[ Upvalues[2]:
		[1]: ComponentButtonsResize_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	ComponentButtonsResize_upvr(arg1, arg2, arg3, arg4, tbl_2_upvr.Horizontal)
end
function tbl_12.Update(arg1, arg2, arg3) -- Line 1188
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for _, v_33 in arg1.Buttons do
		module_8_upvr.Button.Update(v_33.Button, arg3)
	end
end
tbl_13_upvr.Specs = {{
	TitleText = "Dev Commands";
	Order = 1000;
	Methods = tbl_9_upvr;
	AuthorizedOnly = true;
}, {
	TitleText = "Player List";
	SubtitleText = "What do you want to see next to player names?";
	Order = 2000;
	Methods = tbl_4;
}, {
	TitleText = "Music";
	Order = 3000;
	Methods = tbl_3;
}, {
	TitleText = "Hide Player Trails";
	Order = 4000;
	Methods = tbl_12;
}, {
	SubtitleText = "Auto continue at gates";
	Order = 5000;
	Methods = tbl;
}, {
	SubtitleText = "Show level timer at top of screen";
	Order = 6000;
	Methods = tbl_10;
}}
function tbl_13_upvr.SortComponents(arg1, arg2) -- Line 1236
	local var263
	if arg1.Spec.Order >= arg2.Spec.Order then
		var263 = false
	else
		var263 = true
	end
	return var263
end
function tbl_13_upvr.Create(arg1, arg2) -- Line 1243
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	local module = {}
	module.Spec = arg1
	module.Buttons = {}
	if arg1.SubtitleText then
		local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2_3 = module_11_upvr.TextBoundsLabelCreate(arg2.ScrollingFrame, arg1.SubtitleText, arg2.Flag)
		module.SubtitleLabel = any_TextBoundsLabelCreate_result1
		module.SubtitleBounds = any_TextBoundsLabelCreate_result2_3
	end
	if arg1.TitleText then
		local any_TextBoundsLabelCreate_result1_3, any_TextBoundsLabelCreate_result2 = module_11_upvr.TextBoundsLabelCreate(arg2.ScrollingFrame, arg1.TitleText, arg2.Flag)
		module.TitleLabel = any_TextBoundsLabelCreate_result1_3
		module.TitleBounds = any_TextBoundsLabelCreate_result2
	end
	arg1.Methods.Initialize(module, arg2)
	return module
end
function var269_upvw(arg1) -- Line 1275
	--[[ Upvalues[3]:
		[1]: module_15_upvr (readonly)
		[2]: tbl_13_upvr (readonly)
		[3]: any_CollectionUICreate_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [58] 43. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [58] 43. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [58.8]
	-- KONSTANTERROR: [12] 10. Error Block 2 end (CF ANALYSIS FAILED)
end
local any_TableMerge_result1_2 = module_12_upvr.TableMerge(tbl_15_upvw, any_CollectionUICreate_result1_upvr)
tbl_15_upvw = any_TableMerge_result1_2
return any_TableMerge_result1_2