-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:09
-- Luau version 6, Types version 3
-- Time taken: 0.022910 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_4_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local module_5_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_4 = require(Modules:WaitForChild("ClientData"))
local module_upvr_3 = require(Modules:WaitForChild("Transparency"))
local module_upvr = require(Modules:WaitForChild("Tweens"))
local module_3_upvr = require(Modules:WaitForChild("UIButton"))
local module_6_upvr = require(Modules:WaitForChild("UIShared"))
local module_2_upvr = require(Modules:WaitForChild("Utility"))
module_6_upvr.CoreGuiDisable(Enum.CoreGuiType.Backpack)
local tbl_10_upvr = {
	CornerRadiusEm = 0.6666666666666666;
	EquippedStrokeFactor = 0.04;
	IconSizeScale = 0.9;
	PaddingBottomPixels = 4;
	PaddingFactor = 0.1;
	TextScaleIndex = 0.3;
	TextScaleNameX = 0.95;
	TextScaleNameY = 0.3333333333333333;
	ToolTipPaddingFactor = 0.1;
	ToolTipScale = 0.25;
	ToolTipStrokeFactor = 0.25;
}
local tbl_11_upvr = {
	BackpackTools = {};
	BackpackToolsDirty = false;
	ToolLookup = {};
	BackpackUI = nil;
}
local tbl_4_upvr = {}
local tbl_5_upvr = {"Name", "TextureId", "ToolTip"}
local function ToolAdded_upvr(arg1) -- Line 116, Named "ToolAdded"
	--[[ Upvalues[3]:
		[1]: tbl_5_upvr (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: tbl_11_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not arg1.Tool:IsA("Tool") then
	else
		local tbl_14 = {}
		local tbl_13_upvr = {
			_Connections = tbl_14;
			Dirty = true;
			Equipped = false;
			Tool = arg1.Tool;
			Icon = "";
			Name = "";
			ToolTip = "";
		}
		local function _(arg1_3) -- Line 141, Named "SetEquipped"
			--[[ Upvalues[1]:
				[1]: tbl_13_upvr (readonly)
			]]
			tbl_13_upvr.Equipped = arg1_3
			tbl_13_upvr.Dirty = true
		end
		for _, v_9 in tbl_5_upvr do
			tbl_14[#tbl_14 + 1] = arg1.Tool:GetPropertyChangedSignal(v_9):Connect(function() -- Line 137, Named "MarkDirty"
				--[[ Upvalues[1]:
					[1]: tbl_13_upvr (readonly)
				]]
				tbl_13_upvr.Dirty = true
			end)
			local var41
		end
		var41[#var41 + 1] = arg1.Tool.Equipped:Connect(function() -- Line 151
			--[[ Upvalues[1]:
				[1]: tbl_13_upvr (readonly)
			]]
			tbl_13_upvr.Equipped = true
			tbl_13_upvr.Dirty = true
		end)
		var41[#var41 + 1] = arg1.Tool.Unequipped:Connect(function() -- Line 155
			--[[ Upvalues[1]:
				[1]: tbl_13_upvr (readonly)
			]]
			tbl_13_upvr.Equipped = false
			tbl_13_upvr.Dirty = true
		end)
		if module_upvr_4.LocalCharacterState then
			if arg1.Tool:IsDescendantOf(module_upvr_4.LocalCharacterState.Character) then
				tbl_13_upvr.Equipped = true
				tbl_13_upvr.Dirty = true
			end
		end
		tbl_11_upvr.BackpackTools[#tbl_11_upvr.BackpackTools + 1] = tbl_13_upvr
		tbl_11_upvr.ToolLookup[arg1] = tbl_13_upvr
	end
end
local function ToolRemoved_upvr(arg1) -- Line 169, Named "ToolRemoved"
	--[[ Upvalues[1]:
		[1]: tbl_11_upvr (readonly)
	]]
	local var46 = tbl_11_upvr.ToolLookup[arg1]
	if var46 then
		for i, v in var46._Connections do
			v:Disconnect()
		end
		tbl_11_upvr.ToolLookup[arg1] = nil
		local table_find_result1_2 = table.find(tbl_11_upvr.BackpackTools, var46)
		if table_find_result1_2 then
			i = tbl_11_upvr
			i = table_find_result1_2
			table.remove(i.BackpackTools, i)
		end
	end
end
local function _(arg1) -- Line 188, Named "SetToolEquipped"
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	if module_upvr_4.LocalCharacterState and module_upvr_4.LocalCharacterState.Initialized then
		if arg1 then
			module_upvr_4.LocalCharacterState.Humanoid:EquipTool(arg1)
			return
		end
		module_upvr_4.LocalCharacterState.Humanoid:UnequipTools()
	end
end
tbl_4_upvr.ButtonThemeDeselected = module_3_upvr.ButtonThemeCreate_FromBaseColors(module_5_upvr.HotbarButtonColor, module_5_upvr.TextColor3, Vector3.new(0, 0, 0.20000), Vector3.new(0, 0, 0.20000))
tbl_4_upvr.ButtonThemeSelected = module_3_upvr.ButtonThemeCreate_FromBaseColors(module_5_upvr.HotbarButtonColor:Lerp(module_5_upvr.TextColor1, 0.3), module_5_upvr.TextColor1, Vector3.new(0, 0, 0.20000))
tbl_4_upvr.ButtonThemeDeselected.CornerRadius = tbl_10_upvr.CornerRadiusEm
tbl_4_upvr.ButtonThemeSelected.CornerRadius = tbl_10_upvr.CornerRadiusEm
function tbl_4_upvr.Create(arg1, arg2) -- Line 219
	--[[ Upvalues[7]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: module_6_upvr (readonly)
		[5]: module_upvr_4 (readonly)
		[6]: module_2_upvr (readonly)
		[7]: tbl_10_upvr (readonly)
	]]
	local module_upvr_2 = {}
	module_upvr_2.BackpackTool = arg1
	module_upvr_2.Button = module_3_upvr.Button.AddLabel(module_3_upvr.Button.Create(arg2.ScreenGui, tbl_4_upvr.ButtonThemeDeselected), {
		FontFace = module_5_upvr.FontFaceNormal;
	})
	function module_upvr_2.PressFunction(arg1_4) -- Line 238
		--[[ Upvalues[4]:
			[1]: module_6_upvr (copied, readonly)
			[2]: module_upvr_2 (readonly)
			[3]: arg1 (readonly)
			[4]: module_upvr_4 (copied, readonly)
		]]
		if arg1_4 and module_6_upvr.IsInputBlocked(arg1_4.Position, module_upvr_2.Button.Button, true) then
		else
			if not arg1.Equipped then
				local _ = arg1.Tool
			else
			end
			if module_upvr_4.LocalCharacterState and module_upvr_4.LocalCharacterState.Initialized then
				if nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					module_upvr_4.LocalCharacterState.Humanoid:EquipTool(nil)
					return
				end
				module_upvr_4.LocalCharacterState.Humanoid:UnequipTools()
			end
		end
	end
	module_upvr_2.Button.Button.Activated:Connect(module_upvr_2.PressFunction)
	module_upvr_2.Button.Button.BackgroundTransparency = module_5_upvr.HotbarButtonTransparency
	module_upvr_2.NameBounds = module_6_upvr.CachedTextBounds_FromLabel(module_upvr_2.Button.Label)
	module_upvr_2.IndexLabel = module_2_upvr.I("TextLabel", module_6_upvr.Properties.Text_Scaled, {
		Position = UDim2.fromScale(-0.02, -0.039);
		FontFace = module_5_upvr.FontFaceNormal;
		Size = UDim2.fromScale(tbl_10_upvr.TextScaleIndex, tbl_10_upvr.TextScaleIndex);
		TextColor3 = tbl_4_upvr.ButtonThemeDeselected.Idle.TextColor;
		TextStrokeColor3 = module_5_upvr.TextStrokeColor1;
		TextStrokeTransparency = 0;
		ZIndex = 10;
		Parent = module_upvr_2.Button.Button;
	})
	module_3_upvr.Button.ApplyThemeElement(module_upvr_2.Button, module_upvr_2.IndexLabel, "TextColor3", "TextColor")
	tbl_4_upvr.Update(module_upvr_2, arg2)
	return module_upvr_2
end
function tbl_4_upvr.Update(arg1, arg2) -- Line 286
	--[[ Upvalues[8]:
		[1]: module_3_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: tbl_4_upvr (readonly)
		[6]: tbl_10_upvr (readonly)
		[7]: module_upvr_3 (readonly)
		[8]: module_upvr (readonly)
	]]
	local BackpackTool = arg1.BackpackTool
	if BackpackTool.Dirty then
		local Tool = BackpackTool.Tool
		BackpackTool.Name = Tool.Name
		BackpackTool.Icon = Tool.TextureId
		BackpackTool.ToolTip = Tool.ToolTip
		BackpackTool.Dirty = false
	end
	module_3_upvr.Button.SetText(arg1.Button, BackpackTool.Name)
	if BackpackTool.Equipped then
		if not arg1.SelectState then
			arg1.SelectState = {
				Stroke = module_2_upvr.I("UIStroke", module_6_upvr.Properties.StrokeBorder, {
					Color = module_5_upvr.ButtonStrokeHotColor1;
					Thickness = arg2.StrokeThickness;
					Parent = arg1.Button.Button;
				});
			}
		end
		arg1.Button.Theme = tbl_4_upvr.ButtonThemeSelected
	elseif arg1.SelectState then
		arg1.SelectState.Stroke:Destroy()
		arg1.SelectState = nil
		arg1.Button.Theme = tbl_4_upvr.ButtonThemeDeselected
	end
	if BackpackTool.Icon ~= "" then
		if not arg1.IconState then
			local tbl_12 = {
				Icon = module_2_upvr.I("ImageLabel", module_6_upvr.Properties.Centered, {
					BackgroundTransparency = 1;
					Size = UDim2.fromScale(tbl_10_upvr.IconSizeScale, tbl_10_upvr.IconSizeScale);
					Parent = arg1.Button.Button;
				});
				Corner = module_2_upvr.I("UICorner", {
					CornerRadius = arg2.IconCornerRadius;
					Parent = tbl_12.Icon;
				});
			}
			arg1.IconState = tbl_12
			arg1.Button.Label.Visible = false
		end
		assert(arg1.IconState)
		arg1.IconState.Icon.Image = BackpackTool.Icon
	elseif arg1.IconState then
		arg1.IconState.Icon:Destroy()
		arg1.IconState = nil
		arg1.Button.Label.Visible = true
	end
	if BackpackTool.ToolTip ~= "" then
		if not arg1.ToolTipState then
			local tbl_2 = {
				Label = module_2_upvr.I("TextLabel", module_6_upvr.Properties.Text_Scaled, {
					AnchorPoint = Vector2.new(0.5, 1);
					FontFace = module_5_upvr.FontFaceNormal;
					Position = UDim2.fromScale(0.5, 0);
					TextColor3 = module_5_upvr.TextColor1;
					Size = UDim2.fromScale(10, tbl_10_upvr.ToolTipScale);
					ZIndex = -100;
					Parent = arg1.Button.Button;
				});
				Stroke = module_2_upvr.I("UIStroke", module_6_upvr.Properties.StrokeText, {
					Color = module_5_upvr.TextStrokeColor1;
					Thickness = arg2.StrokeThickness * tbl_10_upvr.ToolTipStrokeFactor;
					Parent = tbl_2.Label;
				});
				CachedOpacities = module_upvr_3.Create(tbl_2.Label);
			}
			module_upvr_3.Apply(tbl_2.CachedOpacities, 1)
			tbl_2.Tween = module_upvr.new(0, 0.1, Enum.EasingStyle.Quart)
			arg1.ToolTipState = tbl_2
		end
		assert(arg1.ToolTipState)
		arg1.ToolTipState.Label.Text = BackpackTool.ToolTip
	elseif arg1.ToolTipState then
		arg1.ToolTipState.Label:Destroy()
		arg1.ToolTipState = nil
	end
end
function tbl_4_upvr.Destroy(arg1) -- Line 404
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	module_3_upvr.Button.Destroy(arg1.Button)
end
local tbl_6_upvr = {
	[Enum.KeyCode.ButtonL1] = -1;
	[Enum.KeyCode.ButtonR1] = 1;
}
local tbl_upvr = {}
local tbl = {Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three, Enum.KeyCode.Four, Enum.KeyCode.Five, Enum.KeyCode.Six, Enum.KeyCode.Seven, Enum.KeyCode.Eight, Enum.KeyCode.Nine, Enum.KeyCode.Zero}
for i_2 = 1, math.min(#tbl, module_4_upvr.UIBackpackHotbarTiles) do
	tbl_upvr[tbl[i_2]] = i_2
end
local function ProcessInput_upvr(arg1, arg2, arg3) -- Line 445, Named "ProcessInput"
	--[[ Upvalues[4]:
		[1]: tbl_11_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: tbl_6_upvr (readonly)
		[4]: module_upvr_4 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local Pass = Enum.ContextActionResult.Pass
	local var67
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 2 start (CF ANALYSIS FAILED)
	local BackpackUI_3 = tbl_11_upvr.BackpackUI
	-- KONSTANTERROR: [6] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 4 start (CF ANALYSIS FAILED)
	var67 = tbl_11_upvr.BackpackUI.Tiles
	-- KONSTANTERROR: [15] 11. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 20. Error Block 6 start (CF ANALYSIS FAILED)
	var67 = tbl_6_upvr
	local var69 = var67[arg3.KeyCode]
	-- KONSTANTERROR: [28] 20. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 41. Error Block 33 start (CF ANALYSIS FAILED)
	if 0 < var69 then
		var67 = 1
	else
		var67 = #tbl_11_upvr.BackpackUI.Tiles
	end
	local var70 = tbl_11_upvr.BackpackUI.Tiles[var67]
	if var70 then
		var70.PressFunction()
		return Pass
	end
	if module_upvr_4.LocalCharacterState and module_upvr_4.LocalCharacterState.Initialized then
		module_upvr_4.LocalCharacterState.Humanoid:UnequipTools()
	end
	-- KONSTANTERROR: [56] 41. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [96] 69. Error Block 23 start (CF ANALYSIS FAILED)
	do
		return Pass
	end
	-- KONSTANTERROR: [96] 69. Error Block 23 end (CF ANALYSIS FAILED)
end
local function SortBackpackTiles_upvr(arg1, arg2) -- Line 503, Named "SortBackpackTiles"
	--[[ Upvalues[1]:
		[1]: tbl_11_upvr (readonly)
	]]
	local table_find_result1_4 = table.find(tbl_11_upvr.BackpackTools, arg2.BackpackTool)
	if (table.find(tbl_11_upvr.BackpackTools, arg1.BackpackTool) or math.huge) >= (table_find_result1_4 or math.huge) then
		table_find_result1_4 = false
	else
		table_find_result1_4 = true
	end
	return table_find_result1_4
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module.RenderStepped(arg1, arg2) -- Line 514
	--[[ Upvalues[16]:
		[1]: module_upvr_4 (readonly)
		[2]: tbl_11_upvr (readonly)
		[3]: ToolAdded_upvr (readonly)
		[4]: ToolRemoved_upvr (readonly)
		[5]: module_6_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: module_5_upvr (readonly)
		[8]: ContextActionService_upvr (readonly)
		[9]: ProcessInput_upvr (readonly)
		[10]: tbl_4_upvr (readonly)
		[11]: module_4_upvr (readonly)
		[12]: tbl_10_upvr (readonly)
		[13]: SortBackpackTiles_upvr (readonly)
		[14]: module_3_upvr (readonly)
		[15]: module_upvr (readonly)
		[16]: module_upvr_3 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	debug.profilebegin("CFR_BackpackUI")
	local var217
	if var217 then
		var217 = table.clone(tbl_11_upvr.ToolLookup)
		for _, v_2 in module_upvr_4.LocalToolStates.Array do
			if var217[v_2] then
				var217[v_2] = nil
			elseif v_2.Tool and v_2.Tool:IsDescendantOf(game) then
				ToolAdded_upvr(v_2)
			end
		end
		for i_4 in var217 do
			ToolRemoved_upvr(i_4)
		end
		tbl_11_upvr.BackpackToolsDirty = true
	end
	var217 = false
	if 0 < #tbl_11_upvr.BackpackTools then
		var217 = not module_upvr_4.Flags.PetScreenActive
		if var217 then
			var217 = not module_6_upvr.ExclusiveModeDisabledCoreGui[Enum.CoreGuiType.Backpack]
		end
	end
	if var217 then
		if not tbl_11_upvr.BackpackUI then
			local tbl_7 = {
				Tiles = {};
				TileLookup = {};
				Dirty = true;
				IconCornerRadius = UDim.new();
				StrokeThickness = 0;
				TextSizeNameX = 0;
				TextSizeNameY = 0;
				TileSize = 0;
			}
			v_2 = module_6_upvr.Properties
			i_4 = v_2.ScreenGui
			v_2 = {}
			v_2.Name = "BackpackUI"
			v_2.DisplayOrder = module_5_upvr.DisplayOrder_BackpackUI
			v_2.Parent = module_6_upvr.PlayerGui
			tbl_7.ScreenGui = module_2_upvr.I("ScreenGui", i_4, v_2)
			i_4 = "BackpackUI_HOTBAR-NAVIGATE"
			v_2 = ProcessInput_upvr
			ContextActionService_upvr:BindAction(i_4, v_2, false, Enum.UserInputType.Keyboard, Enum.UserInputType.Gamepad1)
			tbl_11_upvr.BackpackUI = tbl_7
		end
	end
	tbl_7 = 0
	local var219 = tbl_7
	if tbl_11_upvr.BackpackUI then
		local BackpackUI_2 = tbl_11_upvr.BackpackUI
		local var221
		if not var217 then
			var221 = BackpackUI_2.Tiles
			i_4 = nil
			v_2 = nil
			for i_5, v_3 in var221, i_4, v_2 do
				tbl_4_upvr.Destroy(v_3)
			end
			var221 = BackpackUI_2.ScreenGui:Destroy
			var221()
			var221 = ContextActionService_upvr
			v_2 = "BackpackUI_HOTBAR-NAVIGATE"
			var221 = var221:UnbindAction
			var221(v_2)
			var221 = tbl_11_upvr
			i_4 = nil
			var221.BackpackUI = i_4
		else
			i_4 = module_6_upvr
			var221 = i_4.ViewportSizeDirty
			if not var221 then
				var221 = BackpackUI_2.Dirty
			end
			v_2 = tbl_11_upvr
			i_4 = v_2.BackpackToolsDirty
			if not i_4 then
				i_4 = BackpackUI_2.Dirty
			end
			if var221 then
				i_5 = module_4_upvr
				v_2 = i_5.UIBackpackHotbarTiles
				v_3 = module_6_upvr.ScreenSize.X * module_4_upvr.UIBackpackMaxWidthScreenFactor / v_2
				i_5 = (v_3) * (1 / (1 + tbl_10_upvr.PaddingFactor))
				v_3 = math.max(module_4_upvr.UIBackpackMinHeightPixels, math.min(module_6_upvr.ScreenSize.Y * module_4_upvr.UIBackpackMaxHeightScreenFactor, module_4_upvr.UIBackpackMaxHeightPixels))
				local minimum_2 = math.min(i_5, v_3)
				BackpackUI_2.TileSize = minimum_2
				BackpackUI_2.StrokeThickness = minimum_2 * tbl_10_upvr.EquippedStrokeFactor
				BackpackUI_2.TextSizeNameX = minimum_2 * tbl_10_upvr.TextScaleNameX // 1
				BackpackUI_2.TextSizeNameY = minimum_2 * tbl_10_upvr.TextScaleNameY // 1
				BackpackUI_2.IconCornerRadius = UDim.new(0, module_6_upvr.EmSize * tbl_10_upvr.CornerRadiusEm - minimum_2 * (1 - tbl_10_upvr.IconSizeScale) * 0.5)
			end
			if i_4 then
				v_2 = table.clone
				i_5 = BackpackUI_2.TileLookup
				v_2 = v_2(i_5)
				i_5 = tbl_11_upvr.BackpackTools
				v_3 = nil
				for _, v_4 in i_5, v_3 do
					if v_2[v_4] then
						v_2[v_4] = nil
					else
						local any_Create_result1_2 = tbl_4_upvr.Create(v_4, BackpackUI_2)
						BackpackUI_2.Tiles[#BackpackUI_2.Tiles + 1] = any_Create_result1_2
						BackpackUI_2.TileLookup[v_4] = any_Create_result1_2
					end
				end
				i_5 = v_2
				v_3 = nil
				for i_7, v_5 in i_5, v_3 do
					tbl_4_upvr.Destroy(v_5)
					BackpackUI_2.TileLookup[i_7] = nil
					local table_find_result1 = table.find(BackpackUI_2.Tiles, v_5)
					if table_find_result1 then
						table.remove(BackpackUI_2.Tiles, table_find_result1)
					end
				end
				i_5 = table.sort
				v_3 = BackpackUI_2.Tiles
				i_5(v_3, SortBackpackTiles_upvr)
				i_5 = module_4_upvr.UIBackpackHotbarTiles + 1
				v_3 = -1
				for i_8 = #BackpackUI_2.Tiles, i_5, v_3 do
					local var225 = BackpackUI_2.Tiles[i_8]
					tbl_4_upvr.Destroy(var225)
					BackpackUI_2.Tiles[i_8] = nil
					BackpackUI_2.TileLookup[var225.BackpackTool] = nil
					local var226
				end
				i_5 = var226.Tiles
				v_3 = nil
				for i_9, v_6 in i_5, v_3 do
					v_6.IndexLabel.Text = tostring(i_9 % 10)
				end
			end
			if var221 or i_4 then
				i_5 = var226.Tiles
				v_2 = #i_5
				i_5 = var226.TileSize
				local var227 = i_5
				v_3 = var227 * tbl_10_upvr.PaddingFactor
				local var228 = v_3
				for i_10, v_7 in var226.Tiles do
					v_7.Button.Button.Position = UDim2.fromOffset(module_6_upvr.ViewportSize.X * 0.5 - (var227 * v_2 + var228 * (v_2 - 1)) * 0.5 + (var227 + var228) * (i_10 - 1), module_6_upvr.ViewportSize.Y - var227 - tbl_10_upvr.PaddingBottomPixels)
					v_7.Button.Button.Size = UDim2.fromOffset(var227, var227)
					if v_7.IconState then
						v_7.IconState.Corner.CornerRadius = var226.IconCornerRadius
					end
					if v_7.SelectState then
						v_7.SelectState.Stroke.Thickness = var226.StrokeThickness
					end
					if v_7.ToolTipState then
						v_7.ToolTipState.Stroke.Thickness = var226.StrokeThickness * tbl_10_upvr.ToolTipStrokeFactor
					end
				end
			end
			v_2 = var226.Tiles
			var227 = nil
			var228 = nil
			for _, v_8 in v_2, var227, var228 do
				if v_8.BackpackTool.Dirty then
					tbl_4_upvr.Update(v_8, var226)
				end
				if module_6_upvr.CachedTextBoundsUpdate(v_8.NameBounds, v_8.BackpackTool.Name, var226.TextSizeNameY, var226.TextSizeNameX) then
					i_10 = 2
					v_7 = var226.TextSizeNameY
					v_8.Button.Label.Size = UDim2.fromOffset(v_8.NameBounds.X, math.min(v_8.NameBounds.Y, i_10 * v_7))
				end
				module_3_upvr.Button.Update(v_8.Button, arg2)
				local var229
				if v_8.ToolTipState then
					local ToolTipState_2 = v_8.ToolTipState
					i_10 = v_8.Button.Input.Hot
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						i_10 = v_8.Button.Input.Selected
						return i_10
					end
					if i_10 or INLINED_2() then
						var229 = 1
					else
						var229 = 0
					end
					module_upvr.Tween(ToolTipState_2.Tween, arg2, var229)
					if ToolTipState_2.Tween.Dirty then
						v_7 = tbl_10_upvr.ToolTipPaddingFactor
						i_10 = -v_7
						v_7 = ToolTipState_2.Tween.Value
						var229 = i_10 * v_7
						ToolTipState_2.Label.Position = UDim2.fromScale(0.5, var229)
						i_10 = ToolTipState_2.Tween
						var229 = i_10.Value
						module_upvr_3.Apply(ToolTipState_2.CachedOpacities, 1 - var229)
					end
				end
			end
			var227 = var226.Tiles
			v_2 = #var227
			var227 = 0
			if var227 < v_2 then
				var227 = tbl_10_upvr
				v_2 = var227.PaddingBottomPixels
				var228 = var226.TileSize
				var227 = math.ceil(var228)
				var219 = v_2 + var227
			end
			v_2 = false
			var226.Dirty = v_2
			v_2 = tbl_11_upvr
			var227 = false
			v_2.BackpackToolsDirty = var227
		end
	end
	var221 = module_6_upvr
	if module_6_upvr.FirstOrderProperties.BackpackInset == var219 then
		var221 = false
	else
		var221 = true
	end
	var221.FirstOrderProperties.BackpackInsetDirty = var221
	module_6_upvr.FirstOrderProperties.BackpackInset = var219
	debug.profileend()
end
return module