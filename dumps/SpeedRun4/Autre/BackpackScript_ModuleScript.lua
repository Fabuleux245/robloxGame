-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:09
-- Luau version 6, Types version 3
-- Time taken: 0.071565 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
-- KONSTANTERROR: [0] 1. Error Block 81 start (CF ANALYSIS FAILED)
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Modules = RobloxGui_upvr.Modules
local FFlagMountCoreGuiBackpack_upvr = require(Modules.Flags.FFlagMountCoreGuiBackpack)
local module_upvr = {
	OpenClose = nil;
	IsHotbarVisible = false;
	IsOpen = false;
	StateChanged = Instance.new("BindableEvent");
	ModuleName = "Backpack";
	KeepVRTopbarOpen = true;
	VRIsExclusive = true;
	VRClosesNonExclusive = true;
}
local var19_upvw = 60
local Size14_upvw = Enum.FontSize.Size14
local var21_upvw = 0.5 * UserGameSettings_upvr.PreferredTransparency
local Color3_new_result1_5_upvr = Color3.new(0.12156862745098039, 0.12156862745098039, 0.12156862745098039)
local Color3_new_result1_4_upvr = Color3.new(0.35294117647058826, 0.5568627450980392, 0.9137254901960784)
local var24_upvw = 0.5 * UserGameSettings_upvr.PreferredTransparency
local var25_upvw = "   Search"
local Color3_new_result1 = Color3.new(0.37, 0.37, 0.37)
local var27_upvw = 0.15 * UserGameSettings_upvr.PreferredTransparency
local Value_upvr_2 = Enum.KeyCode.Backspace.Value
local tbl_13_upvr = {
	[Enum.UserInputType.Gamepad1] = true;
	[Enum.UserInputType.Gamepad2] = true;
	[Enum.UserInputType.Gamepad3] = true;
	[Enum.UserInputType.Gamepad4] = true;
	[Enum.UserInputType.Gamepad5] = true;
	[Enum.UserInputType.Gamepad6] = true;
	[Enum.UserInputType.Gamepad7] = true;
	[Enum.UserInputType.Gamepad8] = true;
}
local Players = game:GetService("Players")
local UserInputService_upvr = game:GetService("UserInputService")
local StarterGui_upvr = game:GetService("StarterGui")
local GuiService_upvr = game:GetService("GuiService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local VRService_upvr = game:GetService("VRService")
RobloxGui_upvr:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local any_IsEnabled_result1_upvr = require(Modules.TenFootInterface):IsEnabled()
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
pcall(function() -- Line 107
	--[[ Upvalues[1]:
		[1]: var25_upvw (read and write)
	]]
	local LocalizationService = game:GetService("LocalizationService")
	var25_upvw = LocalizationService:GetCorescriptLocalizations()[1]:GetString(LocalizationService.RobloxLocaleId, "BACKPACK_SEARCH")
end)
local var40_upvw = true
local var41_upvr
if any_IsEnabled_result1_upvr then
	var19_upvw = 100
	Size14_upvw = Enum.FontSize.Size24
end
local var42_upvw = false
local TouchEnabled = UserInputService_upvr.TouchEnabled
if TouchEnabled then
	if GuiService_upvr:GetScreenResolution().X >= 1024 then
		TouchEnabled = false
	else
		TouchEnabled = true
	end
end
local LocalPlayer_upvw = Players.LocalPlayer
local var45_upvw
local var46_upvw
local var47_upvw
local var48_upvw
local var49_upvw
local var50_upvw
local var51_upvw
local var52_upvw
local tbl_10_upvr = {}
local var54_upvw
local tbl_9_upvr = {}
local tbl_8_upvr = {}
local tbl_6_upvr = {}
local var58_upvw = 0
local var59_upvw
local var60_upvw = false
local var61_upvw = false
local var62_upvw = false
local tbl_2_upvr = {}
local var64_upvw = false
local var65_upvw = 0
if TouchEnabled then
	-- KONSTANTWARNING: GOTO [341] #240
end
-- KONSTANTERROR: [0] 1. Error Block 81 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [340] 239. Error Block 83 start (CF ANALYSIS FAILED)
local var66_upvw = 10
if TouchEnabled then
	var41_upvr = 2
else
	var41_upvr = 4
end
local var67_upvw
module_upvr.BackpackEmpty = Create_upvr("BindableEvent")({
	Name = "BackpackEmpty";
})
module_upvr.BackpackItemAdded = Create_upvr("BindableEvent")({
	Name = "BackpackAdded";
})
module_upvr.BackpackItemRemoved = Create_upvr("BindableEvent")({
	Name = "BackpackRemoved";
})
local function NewGui_upvr(arg1, arg2) -- Line 179, Named "NewGui"
	--[[ Upvalues[1]:
		[1]: Size14_upvw (read and write)
	]]
	local any_2 = Instance.new(arg1)
	any_2.Name = arg2
	any_2.BackgroundColor3 = Color3.new(0, 0, 0)
	any_2.BackgroundTransparency = 1
	any_2.BorderColor3 = Color3.new(0, 0, 0)
	any_2.BorderSizePixel = 0
	any_2.Size = UDim2.new(1, 0, 1, 0)
	if arg1:match("Text") then
		any_2.TextColor3 = Color3.new(1, 1, 1)
		any_2.Text = ""
		any_2.Font = Enum.Font.SourceSans
		any_2.FontSize = Size14_upvw
		any_2.TextWrapped = true
		if arg1 == "TextButton" then
			any_2.Font = Enum.Font.SourceSansBold
			any_2.BorderSizePixel = 1
		end
	end
	return any_2
end
local function _() -- Line 201, Named "FindLowestEmpty"
	--[[ Upvalues[2]:
		[1]: var66_upvw (read and write)
		[2]: tbl_10_upvr (readonly)
	]]
	for i = 1, var66_upvw do
		local var74 = tbl_10_upvr[i]
		if not var74.Tool then
			return var74
		end
	end
	return nil
end
function module_upvr.IsInventoryEmpty() -- Line 211, Named "isInventoryEmpty"
	--[[ Upvalues[2]:
		[1]: var66_upvw (read and write)
		[2]: tbl_10_upvr (readonly)
	]]
	for i_2 = var66_upvw + 1, #tbl_10_upvr do
		local var76 = tbl_10_upvr[i_2]
		if var76 and var76.Tool then
			return false
		end
	end
	return true
end
local function _() -- Line 223, Named "UseGazeSelection"
	return false
end
local var77_upvw
local function AdjustHotbarFrames_upvr() -- Line 227, Named "AdjustHotbarFrames"
	--[[ Upvalues[6]:
		[1]: var47_upvw (read and write)
		[2]: var66_upvw (read and write)
		[3]: var58_upvw (read and write)
		[4]: tbl_10_upvr (readonly)
		[5]: var77_upvw (read and write)
		[6]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 43 start (CF ANALYSIS FAILED)
	local Visible = var47_upvw.Visible
	local var83
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var83 = var66_upvw
		return var83
	end
	if not Visible or not INLINED() then
		var83 = var58_upvw
	end
	if 1 > var83 then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	for i_3 = 1, var66_upvw do
		local var86 = tbl_10_upvr[i_3]
		if var86.Tool or Visible then
			var86:Readjust(0 + 1, var83)
			var86.Frame.Visible = true
		else
			var86.Frame.Visible = false
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 43 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 37. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 37. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 54. Error Block 25 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 54. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 55. Error Block 42 start (CF ANALYSIS FAILED)
	var77_upvw.Visible = not i_3
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true then
	else
	end
	var77_upvw.Position = UDim2.new(0.5, -15, 1, -50)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_upvr.IsHotbarVisible = true
	-- KONSTANTERROR: [63] 55. Error Block 42 end (CF ANALYSIS FAILED)
end
local function UpdateScrollingFrameCanvasSize_upvr() -- Line 249, Named "UpdateScrollingFrameCanvasSize"
	--[[ Upvalues[3]:
		[1]: var48_upvw (read and write)
		[2]: var19_upvw (read and write)
		[3]: var49_upvw (read and write)
	]]
	var48_upvw.CanvasSize = UDim2.new(0, 0, 0, math.ceil((#var49_upvw:GetChildren() - 1) / math.floor(var48_upvw.AbsoluteSize.X / (var19_upvw + 5))) * (var19_upvw + 5) + 5)
end
local function AdjustInventoryFrames_upvr() -- Line 256, Named "AdjustInventoryFrames"
	--[[ Upvalues[3]:
		[1]: var66_upvw (read and write)
		[2]: tbl_10_upvr (readonly)
		[3]: UpdateScrollingFrameCanvasSize_upvr (readonly)
	]]
	for i_4 = var66_upvw + 1, #tbl_10_upvr do
		local var89 = tbl_10_upvr[i_4]
		local Index = var89.Index
		var89.Frame.LayoutOrder = Index
		if var89.Tool == nil then
			Index = false
		else
			Index = true
		end
		var89.Frame.Visible = Index
	end
	UpdateScrollingFrameCanvasSize_upvr()
end
local function UpdateBackpackLayout_upvr() -- Line 265, Named "UpdateBackpackLayout"
	--[[ Upvalues[8]:
		[1]: var46_upvw (read and write)
		[2]: var66_upvw (read and write)
		[3]: var19_upvw (read and write)
		[4]: var47_upvw (read and write)
		[5]: var41_upvr (readonly)
		[6]: var48_upvw (read and write)
		[7]: AdjustHotbarFrames_upvr (readonly)
		[8]: AdjustInventoryFrames_upvr (readonly)
	]]
	var46_upvw.Size = UDim2.new(0, 5 + var66_upvw * (var19_upvw + 5), 0, var19_upvw + 5 + 5)
	var46_upvw.Position = UDim2.new(0.5, -var46_upvw.Size.X.Offset / 2, 1, -var46_upvw.Size.Y.Offset)
	var47_upvw.Size = UDim2.new(0, var46_upvw.Size.X.Offset, 0, var46_upvw.Size.Y.Offset * var41_upvr + 40)
	var47_upvw.Position = UDim2.new(0.5, -var47_upvw.Size.X.Offset / 2, 1, var46_upvw.Position.Y.Offset - var47_upvw.Size.Y.Offset)
	var48_upvw.Size = UDim2.new(1, var48_upvw.ScrollBarThickness + 1, 1, -40)
	var48_upvw.Position = UDim2.new(0, 0, 0, 40)
	AdjustHotbarFrames_upvr()
	AdjustInventoryFrames_upvr()
end
local function _(arg1, arg2, arg3) -- Line 277, Named "Clamp"
	return math.min(arg2, math.max(arg1, arg3))
end
local function _(arg1, arg2, arg3) -- Line 281, Named "CheckBounds"
	local AbsolutePosition_3 = arg1.AbsolutePosition
	local AbsoluteSize_2 = arg1.AbsoluteSize
	local var99 = false
	if AbsolutePosition_3.X < arg2 then
		var99 = false
		if arg2 <= AbsolutePosition_3.X + AbsoluteSize_2.X then
			var99 = false
			if AbsolutePosition_3.Y < arg3 then
				if arg3 > AbsolutePosition_3.Y + AbsoluteSize_2.Y then
					var99 = false
				else
					var99 = true
				end
			end
		end
	end
	return var99
end
local function _(arg1, arg2) -- Line 287, Named "GetOffset"
	return (arg1.AbsolutePosition + arg1.AbsoluteSize / 2 - arg2).magnitude
end
local function _() -- Line 292, Named "DisableActiveHopper"
	--[[ Upvalues[2]:
		[1]: var59_upvw (read and write)
		[2]: tbl_9_upvr (readonly)
	]]
	var59_upvw:ToggleSelect()
	tbl_9_upvr[var59_upvw]:UpdateEquipView()
	var59_upvw = nil
end
local function _() -- Line 298, Named "UnequipAllTools"
	--[[ Upvalues[3]:
		[1]: var51_upvw (read and write)
		[2]: var59_upvw (read and write)
		[3]: tbl_9_upvr (readonly)
	]]
	if var51_upvw then
		var51_upvw:UnequipTools()
		if var59_upvw then
			var59_upvw:ToggleSelect()
			tbl_9_upvr[var59_upvw]:UpdateEquipView()
			var59_upvw = nil
		end
	end
end
local function _(arg1) -- Line 307, Named "EquipNewTool"
	--[[ Upvalues[4]:
		[1]: var51_upvw (read and write)
		[2]: var59_upvw (read and write)
		[3]: tbl_9_upvr (readonly)
		[4]: var50_upvw (read and write)
	]]
	if var51_upvw then
		var51_upvw:UnequipTools()
		if var59_upvw then
			var59_upvw:ToggleSelect()
			tbl_9_upvr[var59_upvw]:UpdateEquipView()
			var59_upvw = nil
		end
	end
	if arg1:IsA("HopperBin") then
		arg1:ToggleSelect()
		tbl_9_upvr[arg1]:UpdateEquipView()
		var59_upvw = arg1
	else
		arg1.Parent = var50_upvw
	end
end
local function IsEquipped(arg1) -- Line 319
	--[[ Upvalues[1]:
		[1]: var50_upvw (read and write)
	]]
	local var100 = arg1
	if var100 then
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var100 = arg1.Active
			return var100
		end
		if not arg1:IsA("HopperBin") or not INLINED_2() then
			if arg1.Parent ~= var50_upvw then
				var100 = false
			else
				var100 = true
			end
		end
	end
	return var100
end
local Color3_new_result1_2_upvr = Color3.new(0.19215686274509805, 0.19215686274509805, 0.19215686274509805)
local GameTranslator_upvr = require(Modules.GameTranslator)
local Color3_new_result1_6_upvr = Color3.new(1, 1, 1)
local Value_upvr = Enum.KeyCode.Zero.Value
local function MakeSlot_upvr(arg1, arg2) -- Line 323, Named "MakeSlot"
	--[[ Upvalues[31]:
		[1]: tbl_10_upvr (readonly)
		[2]: var24_upvw (read and write)
		[3]: Color3_new_result1_2_upvr (readonly)
		[4]: Color3_new_result1_5_upvr (readonly)
		[5]: var46_upvw (read and write)
		[6]: var19_upvw (read and write)
		[7]: GameTranslator_upvr (readonly)
		[8]: var66_upvw (read and write)
		[9]: var47_upvw (read and write)
		[10]: var58_upvw (read and write)
		[11]: var60_upvw (read and write)
		[12]: var42_upvw (read and write)
		[13]: ContextActionService_upvr (readonly)
		[14]: tbl_9_upvr (readonly)
		[15]: var54_upvw (read and write)
		[16]: var50_upvw (read and write)
		[17]: var67_upvw (read and write)
		[18]: NewGui_upvr (readonly)
		[19]: Color3_new_result1_4_upvr (readonly)
		[20]: tbl_6_upvr (readonly)
		[21]: UpdateScrollingFrameCanvasSize_upvr (readonly)
		[22]: var51_upvw (read and write)
		[23]: var59_upvw (read and write)
		[24]: var52_upvw (read and write)
		[25]: Color3_new_result1_6_upvr (readonly)
		[26]: MakeSlot_upvr (readonly)
		[27]: var49_upvw (read and write)
		[28]: var62_upvw (read and write)
		[29]: tbl_8_upvr (readonly)
		[30]: Value_upvr (readonly)
		[31]: var48_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var195_upvr
	if not var195_upvr then
		var195_upvr = #tbl_10_upvr + 1
	end
	local var196 = var195_upvr
	var195_upvr = {}
	var195_upvr.Tool = nil
	var195_upvr.Index = var196
	var195_upvr.Frame = nil
	local var197_upvw
	local var198_upvw
	local var199_upvw
	local var200_upvw
	local var201_upvw
	local var202_upvw
	local var203_upvw
	local function _() -- Line 348, Named "UpdateSlotFading"
		--[[ Upvalues[4]:
			[1]: var197_upvw (read and write)
			[2]: var24_upvw (copied, read and write)
			[3]: Color3_new_result1_2_upvr (copied, readonly)
			[4]: Color3_new_result1_5_upvr (copied, readonly)
		]]
		local var204
		var197_upvw.SelectionImageObject = var204
		if var197_upvw.Draggable then
			var204 = 0
		else
			var204 = var24_upvw
		end
		var197_upvw.BackgroundTransparency = var204
		local function INLINED_10() -- Internal function, doesn't exist in bytecode
			var204 = Color3_new_result1_2_upvr
			return var204
		end
		if not var197_upvw.Draggable or not INLINED_10() then
			var204 = Color3_new_result1_5_upvr
		end
		var197_upvw.BackgroundColor3 = var204
	end
	function var195_upvr.Readjust(arg1_21, arg2_12, arg3) -- Line 354
		--[[ Upvalues[3]:
			[1]: var46_upvw (copied, read and write)
			[2]: var19_upvw (copied, read and write)
			[3]: var197_upvw (read and write)
		]]
		var197_upvw.Position = UDim2.new(0, var46_upvw.Size.X.Offset / 2 - var19_upvw / 2 + (var19_upvw + 5) * ((arg2_12) - (arg3 / 2 + 0.5)), 0, 5)
	end
	function var195_upvr.Fill(arg1_22, arg2_13) -- Line 362
		--[[ Upvalues[15]:
			[1]: var199_upvw (read and write)
			[2]: var200_upvw (read and write)
			[3]: GameTranslator_upvr (copied, readonly)
			[4]: var203_upvw (read and write)
			[5]: var201_upvw (read and write)
			[6]: var66_upvw (copied, read and write)
			[7]: var47_upvw (copied, read and write)
			[8]: var197_upvw (read and write)
			[9]: var58_upvw (copied, read and write)
			[10]: var60_upvw (copied, read and write)
			[11]: var42_upvw (copied, read and write)
			[12]: ContextActionService_upvr (copied, readonly)
			[13]: tbl_9_upvr (copied, readonly)
			[14]: var54_upvw (copied, read and write)
			[15]: tbl_10_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
		if not arg2_13 then
			return arg1_22:Clear()
		end
		arg1_22.Tool = arg2_13
		local function assignToolData_upvr() -- Line 369, Named "assignToolData"
			--[[ Upvalues[5]:
				[1]: arg2_13 (readonly)
				[2]: var199_upvw (copied, read and write)
				[3]: var200_upvw (copied, read and write)
				[4]: GameTranslator_upvr (copied, readonly)
				[5]: var203_upvw (copied, read and write)
			]]
			local TextureId_3 = arg2_13.TextureId
			var199_upvw.Image = TextureId_3
			if TextureId_3 ~= "" then
				var200_upvw.Visible = false
			else
				var200_upvw.Visible = true
			end
			GameTranslator_upvr:TranslateAndRegister(var200_upvw, arg2_13, arg2_13.Name)
			if var203_upvw and arg2_13:IsA("Tool") then
				GameTranslator_upvr:TranslateAndRegister(var203_upvw, arg2_13, arg2_13.ToolTip)
				local var206 = var203_upvw.TextBounds.X + 6
				var203_upvw.Size = UDim2.new(0, var206, 0, 16)
				var203_upvw.Position = UDim2.new(0.5, -var206 / 2, 0, -25)
			end
		end
		assignToolData_upvr()
		if var201_upvw then
			var201_upvw:disconnect()
			var201_upvw = nil
		end
		local any_connect_result1_3 = arg2_13.Changed:connect(function(arg1_23) -- Line 395
			--[[ Upvalues[1]:
				[1]: assignToolData_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 4. Error Block 7 start (CF ANALYSIS FAILED)
			assignToolData_upvr()
			-- KONSTANTERROR: [6] 4. Error Block 7 end (CF ANALYSIS FAILED)
		end)
		var201_upvw = any_connect_result1_3
		if arg1_22.Index > var66_upvw then
			any_connect_result1_3 = false
		else
			any_connect_result1_3 = true
		end
		if not any_connect_result1_3 or var47_upvw.Visible then
			var197_upvw.Draggable = true
		end
		arg1_22:UpdateEquipView()
		if any_connect_result1_3 then
			var58_upvw += 1
			if var60_upvw and 1 <= var58_upvw and not var42_upvw then
				var42_upvw = true
				ContextActionService_upvr:BindAction("RBXHotbarEquip", changeToolFunc, false, Enum.KeyCode.ButtonL1, Enum.KeyCode.ButtonR1)
			end
		end
		tbl_9_upvr[arg2_13] = arg1_22
		local _ = 1
		-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [89] 74. Error Block 21 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [89] 74. Error Block 21 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [82] 68. Error Block 31 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not Enum.KeyCode.ButtonL1 then
			-- KONSTANTWARNING: GOTO [91] #76
		end
		-- KONSTANTERROR: [82] 68. Error Block 31 end (CF ANALYSIS FAILED)
	end
	function var195_upvr.Clear(arg1_24) -- Line 426
		--[[ Upvalues[12]:
			[1]: var201_upvw (read and write)
			[2]: var199_upvw (read and write)
			[3]: var200_upvw (read and write)
			[4]: var203_upvw (read and write)
			[5]: var197_upvw (read and write)
			[6]: var66_upvw (copied, read and write)
			[7]: var58_upvw (copied, read and write)
			[8]: var42_upvw (copied, read and write)
			[9]: ContextActionService_upvr (copied, readonly)
			[10]: tbl_9_upvr (copied, readonly)
			[11]: var54_upvw (copied, read and write)
			[12]: tbl_10_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
		if not arg1_24.Tool then return end
		if var201_upvw then
			var201_upvw:disconnect()
			var201_upvw = nil
		end
		var199_upvw.Image = ""
		var200_upvw.Text = ""
		if var203_upvw then
			var203_upvw.Text = ""
			var203_upvw.Visible = false
		end
		var197_upvw.Draggable = false
		arg1_24:UpdateEquipView(true)
		if arg1_24.Index <= var66_upvw then
			var58_upvw -= 1
			if var58_upvw < 1 then
				var42_upvw = false
				ContextActionService_upvr:UnbindAction("RBXHotbarEquip")
			end
		end
		tbl_9_upvr[arg1_24.Tool] = nil
		arg1_24.Tool = nil
		local _ = 1
		-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [76] 62. Error Block 13 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [76] 62. Error Block 13 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [69] 56. Error Block 23 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [76.6]
		if not nil then
			-- KONSTANTWARNING: GOTO [78] #64
		end
		-- KONSTANTERROR: [69] 56. Error Block 23 end (CF ANALYSIS FAILED)
	end
	function var195_upvr.UpdateEquipView(arg1_25, arg2_14) -- Line 457
		--[[ Upvalues[10]:
			[1]: var50_upvw (copied, read and write)
			[2]: var67_upvw (copied, read and write)
			[3]: var195_upvr (readonly)
			[4]: var202_upvw (read and write)
			[5]: NewGui_upvr (copied, readonly)
			[6]: var197_upvw (read and write)
			[7]: Color3_new_result1_4_upvr (copied, readonly)
			[8]: var24_upvw (copied, read and write)
			[9]: Color3_new_result1_2_upvr (copied, readonly)
			[10]: Color3_new_result1_5_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [1] 2. Error Block 43 start (CF ANALYSIS FAILED)
		local Tool_10 = arg1_25.Tool
		local var220
		local function INLINED_11() -- Internal function, doesn't exist in bytecode
			var220 = Tool_10.Active
			return var220
		end
		if var220 and (not Tool_10:IsA("HopperBin") or not INLINED_11()) then
			if Tool_10.Parent ~= var50_upvw then
				var220 = false
			else
				var220 = true
			end
		end
		if var220 then
			var220 = var195_upvr
			var67_upvw = var220
			var220 = var202_upvw
			if not var220 then
				var220 = NewGui_upvr("Frame", "Equipped")
				var202_upvw = var220
				var220 = var202_upvw
				var220.ZIndex = var197_upvw.ZIndex
				var220 = {}
				var220[1] = {0.1, 1, 0, 0}
				var220[2] = {0.8, 0.1, 0.1, 0}
				var220[3] = {0.1, 1, 0.9, 0}
				var220[4] = {0.8, 0.1, 0.1, 0.9}
				for _, v in pairs(var220) do
					local NewGui_result1_7 = NewGui_upvr("Frame", "Edge")
					NewGui_result1_7.BackgroundTransparency = 0
					NewGui_result1_7.BackgroundColor3 = Color3_new_result1_4_upvr
					NewGui_result1_7.Size = UDim2.new(v[1], 0, v[2], 0)
					NewGui_result1_7.Position = UDim2.new(v[3], 0, v[4], 0)
					NewGui_result1_7.ZIndex = var202_upvw.ZIndex
					NewGui_result1_7.Parent = var202_upvw
				end
			end
			var220 = var202_upvw
			var220.Parent = var197_upvw
		else
			-- KONSTANTERROR: [120] 92. Error Block 40 start (CF ANALYSIS FAILED)
			var220 = var202_upvw
			if var220 then
				var220 = var202_upvw
				var220.Parent = nil
			end
			-- KONSTANTERROR: [120] 92. Error Block 40 end (CF ANALYSIS FAILED)
		end
		var220 = var197_upvw
		var220.SelectionImageObject = nil
		var220 = var197_upvw
		if var197_upvw.Draggable then
		else
		end
		var220.BackgroundTransparency = var24_upvw
		var220 = var197_upvw
		if not var197_upvw.Draggable or not Color3_new_result1_2_upvr then
		end
		var220.BackgroundColor3 = Color3_new_result1_5_upvr
		-- KONSTANTERROR: [1] 2. Error Block 43 end (CF ANALYSIS FAILED)
	end
	function var195_upvr.IsEquipped(arg1_26) -- Line 489
		--[[ Upvalues[1]:
			[1]: var50_upvw (copied, read and write)
		]]
		local Tool_4 = arg1_26.Tool
		local var230
		local function INLINED_12() -- Internal function, doesn't exist in bytecode
			var230 = Tool_4.Active
			return var230
		end
		if var230 and (not Tool_4:IsA("HopperBin") or not INLINED_12()) then
			if Tool_4.Parent ~= var50_upvw then
				var230 = false
			else
				var230 = true
			end
		end
		return var230
	end
	function var195_upvr.Delete(arg1_27) -- Line 493
		--[[ Upvalues[4]:
			[1]: tbl_6_upvr (copied, readonly)
			[2]: var197_upvw (read and write)
			[3]: tbl_10_upvr (copied, readonly)
			[4]: UpdateScrollingFrameCanvasSize_upvr (copied, readonly)
		]]
		tbl_6_upvr[var197_upvw] = nil
		var197_upvw:Destroy()
		table.remove(tbl_10_upvr, arg1_27.Index)
		for i_6 = arg1_27.Index, #tbl_10_upvr do
			tbl_10_upvr[i_6]:SlideBack()
		end
		UpdateScrollingFrameCanvasSize_upvr()
	end
	function var195_upvr.Swap(arg1_28, arg2_15) -- Line 507
		local Tool_9 = arg1_28.Tool
		local Tool_3 = arg2_15.Tool
		arg1_28:Clear()
		if Tool_3 then
			arg2_15:Clear()
			arg1_28:Fill(Tool_3)
		end
		if Tool_9 then
			arg2_15:Fill(Tool_9)
		else
			arg2_15:Clear()
		end
	end
	function var195_upvr.SlideBack(arg1_29) -- Line 521
		--[[ Upvalues[1]:
			[1]: var197_upvw (read and write)
		]]
		arg1_29.Index -= 1
		var197_upvw.Name = arg1_29.Index
		var197_upvw.LayoutOrder = arg1_29.Index
	end
	local var234_upvw
	function var195_upvr.TurnNumber(arg1_30, arg2_16) -- Line 527
		--[[ Upvalues[1]:
			[1]: var234_upvw (read and write)
		]]
		if var234_upvw then
			var234_upvw.Visible = arg2_16
		end
	end
	function var195_upvr.SetClickability(arg1_31, arg2_17) -- Line 533
		--[[ Upvalues[4]:
			[1]: var197_upvw (read and write)
			[2]: var24_upvw (copied, read and write)
			[3]: Color3_new_result1_2_upvr (copied, readonly)
			[4]: Color3_new_result1_5_upvr (copied, readonly)
		]]
		local var235
		if arg1_31.Tool then
			var235 = not arg2_17
			var197_upvw.Draggable = var235
			var235 = nil
			var197_upvw.SelectionImageObject = var235
			if var197_upvw.Draggable then
				var235 = 0
			else
				var235 = var24_upvw
			end
			var197_upvw.BackgroundTransparency = var235
			if not var197_upvw.Draggable or not Color3_new_result1_2_upvr then
			end
			var197_upvw.BackgroundColor3 = Color3_new_result1_5_upvr
		end
	end
	function var195_upvr.CheckTerms(arg1_32, arg2_18) -- Line 540
		--[[ Upvalues[2]:
			[1]: var200_upvw (read and write)
			[2]: var203_upvw (read and write)
		]]
		local var238_upvw = 0
		local function _(arg1_33, arg2_19) -- Line 542, Named "checkEm"
			--[[ Upvalues[1]:
				[1]: var238_upvw (read and write)
			]]
			local _, any_gsub_result2_2 = arg1_33:lower():gsub(arg2_19, "")
			var238_upvw += any_gsub_result2_2
		end
		if arg1_32.Tool then
			for i_7 in pairs(arg2_18) do
				local _, any_gsub_result2_6 = var200_upvw.Text:lower():gsub(i_7, "")
				var238_upvw += any_gsub_result2_6
				local var247
				if var247 then
					local function INLINED_13() -- Internal function, doesn't exist in bytecode
						var247 = var203_upvw.Text
						return var247
					end
					if not var203_upvw or not INLINED_13() then
						var247 = ""
					end
					local _, any_gsub_result2_3 = var247:lower():gsub(i_7, "")
					var238_upvw += any_gsub_result2_3
				end
			end
		end
		return var238_upvw
	end
	function var195_upvr.Select(arg1_34, arg2_20) -- Line 560
		--[[ Upvalues[6]:
			[1]: var195_upvr (readonly)
			[2]: var50_upvw (copied, read and write)
			[3]: var51_upvw (copied, read and write)
			[4]: var59_upvw (copied, read and write)
			[5]: tbl_9_upvr (copied, readonly)
			[6]: var52_upvw (copied, read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 3 end (CF ANALYSIS FAILED)
	end
	var197_upvw = NewGui_upvr("TextButton", var196)
	local var250_upvw = var197_upvw
	var250_upvw.BackgroundColor3 = Color3_new_result1_5_upvr
	var250_upvw.BorderColor3 = Color3_new_result1_6_upvr
	var250_upvw.Text = ""
	var250_upvw.AutoButtonColor = false
	var250_upvw.BorderSizePixel = 0
	var250_upvw.Size = UDim2.new(0, var19_upvw, 0, var19_upvw)
	var250_upvw.Active = true
	var250_upvw.Draggable = false
	var250_upvw.BackgroundTransparency = var24_upvw
	var250_upvw.MouseButton1Click:connect(function() -- Line 587
		--[[ Upvalues[1]:
			[1]: var195_upvr (readonly)
		]]
		changeSlot(var195_upvr)
	end)
	var195_upvr.Frame = var250_upvw
	local NewGui_result1_4 = NewGui_upvr("Frame", "SelectionObjectClipper")
	NewGui_result1_4.Visible = false
	NewGui_result1_4.Parent = var250_upvw
	local NewGui_result1_9 = NewGui_upvr("ImageLabel", "Selector")
	NewGui_result1_9.Size = UDim2.new(1, 0, 1, 0)
	NewGui_result1_9.Image = "rbxasset://textures/ui/Keyboard/key_selection_9slice.png"
	NewGui_result1_9.ScaleType = Enum.ScaleType.Slice
	NewGui_result1_9.SliceCenter = Rect.new(12, 12, 52, 52)
	NewGui_result1_9.Parent = NewGui_result1_4
	var199_upvw = NewGui_upvr("ImageLabel", "Icon")
	local var254_upvw = var199_upvw
	var254_upvw.Size = UDim2.new(0.8, 0, 0.8, 0)
	var254_upvw.Position = UDim2.new(0.1, 0, 0.1, 0)
	var254_upvw.Parent = var250_upvw
	var200_upvw = NewGui_upvr("TextLabel", "ToolName")
	local var255_upvw = var200_upvw
	var255_upvw.Size = UDim2.new(1, -2, 1, -2)
	var255_upvw.Position = UDim2.new(0, 1, 0, 1)
	var255_upvw.Parent = var250_upvw
	var195_upvr.Frame.LayoutOrder = var195_upvr.Index
	local var256
	local function INLINED_15() -- Internal function, doesn't exist in bytecode
		function var195_upvr.MoveToInventory(arg1_35) -- Line 632
			--[[ Upvalues[10]:
				[1]: var195_upvr (readonly)
				[2]: var66_upvw (copied, read and write)
				[3]: MakeSlot_upvr (copied, readonly)
				[4]: var49_upvw (copied, read and write)
				[5]: var50_upvw (copied, read and write)
				[6]: var51_upvw (copied, read and write)
				[7]: var59_upvw (copied, read and write)
				[8]: tbl_9_upvr (copied, readonly)
				[9]: var62_upvw (copied, read and write)
				[10]: var47_upvw (copied, read and write)
			]]
			if var195_upvr.Index <= var66_upvw then
				local Tool_7 = var195_upvr.Tool
				arg1_35:Clear()
				local MakeSlot_result1 = MakeSlot_upvr(var49_upvw)
				MakeSlot_result1:Fill(Tool_7)
				local var262
				local function INLINED_14() -- Internal function, doesn't exist in bytecode
					var262 = Tool_7.Active
					return var262
				end
				if var262 and (not Tool_7:IsA("HopperBin") or not INLINED_14()) then
					if Tool_7.Parent ~= var50_upvw then
						var262 = false
					else
						var262 = true
					end
				end
				if var262 then
					var262 = var51_upvw
					if var262 then
						var262 = var51_upvw:UnequipTools
						var262()
						var262 = var59_upvw
						if var262 then
							var262 = var59_upvw:ToggleSelect
							var262()
							var262 = tbl_9_upvr[var59_upvw]:UpdateEquipView
							var262()
							var262 = nil
							var59_upvw = var262
						end
					end
				end
				var262 = var62_upvw
				if var262 then
					var262 = MakeSlot_result1.Frame
					var262.Visible = false
					var262 = var47_upvw
					MakeSlot_result1.Parent = var262
				end
			end
		end
		var250_upvw.MouseLeave:connect(function() -- Line 630
			--[[ Upvalues[1]:
				[1]: var257_upvw (read and write)
			]]
			var257_upvw.Visible = false
		end)
		var250_upvw.MouseEnter:connect(function() -- Line 625
			--[[ Upvalues[1]:
				[1]: var257_upvw (read and write)
			]]
			if var257_upvw.Text ~= "" then
				var257_upvw.Visible = true
			end
		end)
		var257_upvw.Parent = var250_upvw
		var257_upvw.Visible = false
		var257_upvw.BackgroundTransparency = 0
		var257_upvw.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
		var257_upvw.TextYAlignment = Enum.TextYAlignment.Top
		var257_upvw.TextWrapped = false
		local var257_upvw = var203_upvw
		var203_upvw = NewGui_upvr("TextLabel", "ToolTip")
		return var196 < 10
	end
	if var196 <= var256 and (INLINED_15() or var196 == var66_upvw) then
		if var196 >= 10 or not var196 then
			local var263 = 0
		end
		var234_upvw = NewGui_upvr("TextLabel", "Number")
		local var264_upvw = var234_upvw
		var264_upvw.Text = var263
		var264_upvw.Size = UDim2.new(0.15, 0, 0.15, 0)
		var264_upvw.Visible = false
		var264_upvw.Parent = var250_upvw
		tbl_8_upvr[Value_upvr + var263] = function(arg1_36) -- Line 658
			--[[ Upvalues[1]:
				[1]: var195_upvr (readonly)
			]]
			var195_upvr:Select(arg1_36)
		end
	end
	local Position_upvw = var250_upvw.Position
	local var267_upvw
	var250_upvw.DragBegin:connect(function(arg1_37) -- Line 669
		--[[ Upvalues[12]:
			[1]: tbl_6_upvr (copied, readonly)
			[2]: var250_upvw (read and write)
			[3]: Position_upvw (read and write)
			[4]: var254_upvw (read and write)
			[5]: var255_upvw (read and write)
			[6]: var264_upvw (read and write)
			[7]: var202_upvw (read and write)
			[8]: var267_upvw (read and write)
			[9]: var49_upvw (copied, read and write)
			[10]: var47_upvw (copied, read and write)
			[11]: var198_upvw (read and write)
			[12]: NewGui_upvr (copied, readonly)
		]]
		tbl_6_upvr[var250_upvw] = true
		Position_upvw = arg1_37
		var250_upvw.BorderSizePixel = 2
		var250_upvw.ZIndex = 2
		var254_upvw.ZIndex = 2
		var255_upvw.ZIndex = 2
		var250_upvw.Parent.ZIndex = 2
		if var264_upvw then
			var264_upvw.ZIndex = 2
		end
		if var202_upvw then
			var202_upvw.ZIndex = 2
			for _, v_2 in pairs(var202_upvw:GetChildren()) do
				v_2.ZIndex = 2
			end
		end
		var267_upvw = var250_upvw.Parent
		if var267_upvw == var49_upvw then
			var250_upvw.Parent = var47_upvw
			var250_upvw.Position = UDim2.new(0, var250_upvw.AbsolutePosition.X - var47_upvw.AbsolutePosition.X, 0, var250_upvw.AbsolutePosition.Y - var47_upvw.AbsolutePosition.Y)
			var198_upvw = NewGui_upvr("Frame", "FakeSlot")
			var198_upvw.LayoutOrder = var250_upvw.LayoutOrder
			var198_upvw.Size = var250_upvw.Size
			var198_upvw.BackgroundTransparency = 1
			var198_upvw.Parent = var49_upvw
		end
	end)
	local const_number_upvw = 0
	var250_upvw.DragStopped:connect(function(arg1_38, arg2_21) -- Line 707
		--[[ Upvalues[21]:
			[1]: var198_upvw (read and write)
			[2]: var250_upvw (read and write)
			[3]: Position_upvw (read and write)
			[4]: var267_upvw (read and write)
			[5]: var254_upvw (read and write)
			[6]: var255_upvw (read and write)
			[7]: var264_upvw (read and write)
			[8]: var202_upvw (read and write)
			[9]: tbl_6_upvr (copied, readonly)
			[10]: var195_upvr (readonly)
			[11]: var47_upvw (copied, read and write)
			[12]: var66_upvw (copied, read and write)
			[13]: const_number_upvw (read and write)
			[14]: var54_upvw (copied, read and write)
			[15]: var46_upvw (copied, read and write)
			[16]: tbl_10_upvr (copied, readonly)
			[17]: var50_upvw (copied, read and write)
			[18]: var51_upvw (copied, read and write)
			[19]: var59_upvw (copied, read and write)
			[20]: tbl_9_upvr (copied, readonly)
			[21]: var62_upvw (copied, read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		var198_upvw:Destroy()
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 3 start (CF ANALYSIS FAILED)
		var250_upvw.Position = Position_upvw
		var250_upvw.Parent = var267_upvw
		var250_upvw.BorderSizePixel = 0
		var250_upvw.ZIndex = 1
		var254_upvw.ZIndex = 1
		var255_upvw.ZIndex = 1
		var267_upvw.ZIndex = 1
		-- KONSTANTERROR: [6] 6. Error Block 3 end (CF ANALYSIS FAILED)
	end)
	var250_upvw.Parent = arg1
	tbl_10_upvr[var196] = var195_upvr
	if var66_upvw < var196 then
		UpdateScrollingFrameCanvasSize_upvr()
		if var47_upvw.Visible and not var62_upvw then
			var48_upvw.CanvasPosition = Vector2.new(0, math.max(0, var48_upvw.CanvasSize.Y.Offset - var48_upvw.AbsoluteSize.Y))
		end
	end
	return var195_upvr
end
local function _(arg1) -- Line 816, Named "SetNumberOfHotbarSlots"
	--[[ Upvalues[7]:
		[1]: var66_upvw (read and write)
		[2]: tbl_10_upvr (readonly)
		[3]: MakeSlot_upvr (readonly)
		[4]: var46_upvw (read and write)
		[5]: var54_upvw (read and write)
		[6]: var58_upvw (read and write)
		[7]: UpdateBackpackLayout_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 54 start (CF ANALYSIS FAILED)
	if var66_upvw ~= arg1 then
		local var279 = var66_upvw
		if arg1 < var279 then
			for i_9 = var279, arg1 + 1, -1 do
				local var280 = tbl_10_upvr[i_9]
				if var280 then
					var280:MoveToInventory()
					var280:Delete()
				end
			end
			for i_10 = var279, arg1 + 1, -1 do
				local var281 = tbl_10_upvr[i_10]
				if not var281.Tool then
					var281:Delete()
				end
			end
			var66_upvw = arg1
			var58_upvw = 0
			for i_11 = 1, var66_upvw do
				if tbl_10_upvr[i_11] and tbl_10_upvr[i_11].Tool then
					var58_upvw += 1
				end
			end
			UpdateBackpackLayout_upvr()
			-- KONSTANTWARNING: GOTO [96] #86
		end
		-- KONSTANTWARNING: GOTO [34] #29
	end
	-- KONSTANTERROR: [0] 1. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [96] 86. Error Block 31 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [96] 86. Error Block 31 end (CF ANALYSIS FAILED)
end
local var282_upvw = false
local function OnChildAdded_upvr(arg1) -- Line 878, Named "OnChildAdded"
	--[[ Upvalues[16]:
		[1]: var50_upvw (read and write)
		[2]: var51_upvw (read and write)
		[3]: var65_upvw (read and write)
		[4]: var59_upvw (read and write)
		[5]: tbl_9_upvr (readonly)
		[6]: var282_upvw (read and write)
		[7]: LocalPlayer_upvw (read and write)
		[8]: var54_upvw (read and write)
		[9]: MakeSlot_upvr (readonly)
		[10]: var49_upvw (read and write)
		[11]: tbl_10_upvr (readonly)
		[12]: var52_upvw (read and write)
		[13]: AdjustHotbarFrames_upvr (readonly)
		[14]: var66_upvw (read and write)
		[15]: var47_upvw (read and write)
		[16]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not arg1:IsA("Tool") and not arg1:IsA("HopperBin") then
		if arg1:IsA("Humanoid") and arg1.Parent == var50_upvw then
			var51_upvw = arg1
		end
	else
		if arg1.Parent == var50_upvw then
			var65_upvw = tick()
		end
		if var59_upvw and arg1.Parent == var50_upvw then
			var59_upvw:ToggleSelect()
			tbl_9_upvr[var59_upvw]:UpdateEquipView()
			var59_upvw = nil
		end
		if not var282_upvw and arg1.Parent == var50_upvw and not tbl_9_upvr[arg1] then
			local StarterGear_2 = LocalPlayer_upvw:FindFirstChild("StarterGear")
			if StarterGear_2 and StarterGear_2:FindFirstChild(arg1.Name) then
				var282_upvw = true
				local var310 = var54_upvw
				if not var310 then
					var310 = MakeSlot_upvr(var49_upvw)
				end
				for i_30 = var310.Index, 1, -1 do
					local var311 = i_30 - 1
					if 0 < var311 then
						tbl_10_upvr[var311]:Swap(tbl_10_upvr[i_30])
					else
						tbl_10_upvr[i_30]:Fill(arg1)
					end
				end
				for _, v_8 in pairs(var50_upvw:GetChildren()) do
					if v_8:IsA("Tool") and v_8 ~= arg1 then
						v_8.Parent = var52_upvw
					end
				end
				AdjustHotbarFrames_upvr()
				return
			end
		end
		if tbl_9_upvr[arg1] then
			tbl_9_upvr[arg1]:UpdateEquipView()
		else
			local var315 = var54_upvw
			if not var315 then
			end
			local MakeSlot_upvr_result1_4 = MakeSlot_upvr(var49_upvw)
			MakeSlot_upvr_result1_4:Fill(arg1)
			if MakeSlot_upvr_result1_4.Index <= var66_upvw then
				if not var47_upvw.Visible then
					AdjustHotbarFrames_upvr()
				end
			end
			if arg1:IsA("HopperBin") then
				if arg1.Active then
					if var51_upvw then
						var51_upvw:UnequipTools()
						if var59_upvw then
							var59_upvw:ToggleSelect()
							tbl_9_upvr[var59_upvw]:UpdateEquipView()
							var59_upvw = nil
						end
					end
					var59_upvw = arg1
				end
			end
		end
		module_upvr.BackpackItemAdded:Fire()
	end
end
local function OnChildRemoved_upvr(arg1) -- Line 945, Named "OnChildRemoved"
	--[[ Upvalues[10]:
		[1]: var65_upvw (read and write)
		[2]: var50_upvw (read and write)
		[3]: var52_upvw (read and write)
		[4]: tbl_9_upvr (readonly)
		[5]: var66_upvw (read and write)
		[6]: var47_upvw (read and write)
		[7]: AdjustHotbarFrames_upvr (readonly)
		[8]: var59_upvw (read and write)
		[9]: module_upvr (readonly)
		[10]: tbl_10_upvr (readonly)
	]]
	if not arg1:IsA("Tool") and not arg1:IsA("HopperBin") then
	else
		var65_upvw = tick()
		local Parent_2 = arg1.Parent
		if Parent_2 == var50_upvw or Parent_2 == var52_upvw then return end
		local var322 = tbl_9_upvr[arg1]
		if var322 then
			var322:Clear()
			if var66_upvw < var322.Index then
				var322:Delete()
			elseif not var47_upvw.Visible then
				AdjustHotbarFrames_upvr()
			end
		end
		if arg1 == var59_upvw then
			var59_upvw = nil
		end
		module_upvr.BackpackItemRemoved:Fire()
		for i_32 = var66_upvw + 1, #tbl_10_upvr do
			local var323 = tbl_10_upvr[i_32]
			if var323 then
				if var323.Tool then
					-- KONSTANTWARNING: GOTO [72] #58
				end
			end
		end
		if true then
			module_upvr.BackpackEmpty:Fire()
		end
	end
end
local tbl_11_upvw = {}
local function OnCharacterAdded(arg1) -- Line 979
	--[[ Upvalues[10]:
		[1]: tbl_10_upvr (readonly)
		[2]: var66_upvw (read and write)
		[3]: var59_upvw (read and write)
		[4]: tbl_11_upvw (read and write)
		[5]: var50_upvw (read and write)
		[6]: OnChildRemoved_upvr (readonly)
		[7]: OnChildAdded_upvr (readonly)
		[8]: var52_upvw (read and write)
		[9]: LocalPlayer_upvw (read and write)
		[10]: AdjustHotbarFrames_upvr (readonly)
	]]
	for i_12 = #tbl_10_upvr, 1, -1 do
		local var332 = tbl_10_upvr[i_12]
		if var332.Tool then
			var332:Clear()
		end
		if var66_upvw < i_12 then
			var332:Delete()
		end
	end
	var59_upvw = nil
	for _, v_3 in pairs(tbl_11_upvw) do
		v_3:disconnect()
	end
	tbl_11_upvw = {}
	var50_upvw = arg1
	table.insert(tbl_11_upvw, arg1.ChildRemoved:connect(OnChildRemoved_upvr))
	table.insert(tbl_11_upvw, arg1.ChildAdded:connect(OnChildAdded_upvr))
	for _, v_4 in pairs(arg1:GetChildren()) do
		OnChildAdded_upvr(v_4)
	end
	var52_upvw = LocalPlayer_upvw:WaitForChild("Backpack")
	table.insert(tbl_11_upvw, var52_upvw.ChildRemoved:connect(OnChildRemoved_upvr))
	table.insert(tbl_11_upvw, var52_upvw.ChildAdded:connect(OnChildAdded_upvr))
	for _, v_5 in pairs(var52_upvw:GetChildren()) do
		OnChildAdded_upvr(v_5)
	end
	AdjustHotbarFrames_upvr()
end
local function var346_upvr() -- Line 1049
end
function unbindAllGamepadEquipActions() -- Line 1053
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindAction("RBXBackpackHasGamepadFocus")
	ContextActionService_upvr:UnbindAction("RBXCloseInventory")
end
local function _(arg1, arg2) -- Line 1058, Named "setHotbarVisibility"
	--[[ Upvalues[2]:
		[1]: var66_upvw (read and write)
		[2]: tbl_10_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = 1
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [18.5]
	-- KONSTANTERROR: [4] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
local vector2_upvw = Vector2.new(0, 0)
local function getInputDirection_upvr(arg1) -- Line 1067, Named "getInputDirection"
	--[[ Upvalues[1]:
		[1]: vector2_upvw (read and write)
	]]
	local var349
	if arg1.UserInputState == Enum.UserInputState.End then
		var349 = -1
	end
	if arg1.KeyCode == Enum.KeyCode.Thumbstick1 then
		local magnitude = arg1.Position.magnitude
		if 0.98 < magnitude then
			vector2_upvw = Vector2.new(arg1.Position.x / magnitude, -arg1.Position.y / magnitude)
		else
			vector2_upvw = Vector2.new(0, 0)
		end
	elseif arg1.KeyCode == Enum.KeyCode.DPadLeft then
		vector2_upvw = Vector2.new(vector2_upvw.x - var349 * 1, vector2_upvw.y)
	elseif arg1.KeyCode == Enum.KeyCode.DPadRight then
		vector2_upvw = Vector2.new(vector2_upvw.x + var349 * 1, vector2_upvw.y)
	elseif arg1.KeyCode == Enum.KeyCode.DPadUp then
		vector2_upvw = Vector2.new(vector2_upvw.x, vector2_upvw.y - var349 * 1)
	elseif arg1.KeyCode == Enum.KeyCode.DPadDown then
		vector2_upvw = Vector2.new(vector2_upvw.x, vector2_upvw.y + var349 * 1)
	else
		vector2_upvw = Vector2.new(0, 0)
	end
	return vector2_upvw
end
local function _(arg1, arg2, arg3) -- Line 1098
	--[[ Upvalues[6]:
		[1]: getInputDirection_upvr (readonly)
		[2]: var66_upvw (read and write)
		[3]: tbl_10_upvr (readonly)
		[4]: var51_upvw (read and write)
		[5]: var59_upvw (read and write)
		[6]: tbl_9_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local getInputDirection_result1 = getInputDirection_upvr(arg3)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [10] 9. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 3 end (CF ANALYSIS FAILED)
end
local var354_upvw
local var355_upvw
function changeToolFunc(arg1, arg2, arg3) -- Line 1128
	--[[ Upvalues[8]:
		[1]: var354_upvw (read and write)
		[2]: var355_upvw (read and write)
		[3]: var51_upvw (read and write)
		[4]: var59_upvw (read and write)
		[5]: tbl_9_upvr (readonly)
		[6]: var66_upvw (read and write)
		[7]: tbl_10_upvr (readonly)
		[8]: var67_upvw (read and write)
	]]
	if arg2 ~= Enum.UserInputState.Begin then
	else
		if var354_upvw then
			if var354_upvw.KeyCode == Enum.KeyCode.ButtonR1 and arg3.KeyCode == Enum.KeyCode.ButtonL1 or var354_upvw.KeyCode == Enum.KeyCode.ButtonL1 and arg3.KeyCode == Enum.KeyCode.ButtonR1 or tick() - var355_upvw <= 0.06 then
				if var51_upvw then
					var51_upvw:UnequipTools()
					if var59_upvw then
						var59_upvw:ToggleSelect()
						tbl_9_upvr[var59_upvw]:UpdateEquipView()
						var59_upvw = nil
					end
				end
				var354_upvw = arg3
				var355_upvw = tick()
				return
			end
		end
		var354_upvw = arg3
		var355_upvw = tick()
		delay(0.06, function() -- Line 1148
			--[[ Upvalues[8]:
				[1]: var354_upvw (copied, read and write)
				[2]: arg3 (readonly)
				[3]: var66_upvw (copied, read and write)
				[4]: tbl_10_upvr (copied, readonly)
				[5]: var51_upvw (copied, read and write)
				[6]: var59_upvw (copied, read and write)
				[7]: tbl_9_upvr (copied, readonly)
				[8]: var67_upvw (copied, read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 68 start (CF ANALYSIS FAILED)
			if var354_upvw ~= arg3 then return end
			if arg3.KeyCode == Enum.KeyCode.ButtonL1 then
			else
			end
			local _ = 1
			-- KONSTANTERROR: [0] 1. Error Block 68 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [91] 77. Error Block 30 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [91] 77. Error Block 30 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [20] 17. Error Block 8 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [91.5]
			-- KONSTANTERROR: [20] 17. Error Block 8 end (CF ANALYSIS FAILED)
		end)
	end
end
function getGamepadSwapSlot() -- Line 1212
	--[[ Upvalues[1]:
		[1]: tbl_10_upvr (readonly)
	]]
	for i_17 = 1, #tbl_10_upvr do
		if 0 < tbl_10_upvr[i_17].Frame.BorderSizePixel then
			return tbl_10_upvr[i_17]
		end
	end
end
local GamepadService_upvr = game:GetService("GamepadService")
local var362_upvw
function changeSlot(arg1) -- Line 1220
	--[[ Upvalues[4]:
		[1]: GamepadService_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: var362_upvw (read and write)
		[4]: var66_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 7. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [79] 51. Error Block 15 start (CF ANALYSIS FAILED)
	local Size_2_upvr = arg1.Frame.Size
	local Position_upvr = arg1.Frame.Position
	arg1.Frame:TweenSizeAndPosition(Size_2_upvr + UDim2.new(0, 10, 0, 10), Position_upvr - UDim2.new(0, 5, 0, 5), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, function() -- Line 1249
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Size_2_upvr (readonly)
			[3]: Position_upvr (readonly)
		]]
		arg1.Frame:TweenSizeAndPosition(Size_2_upvr, Position_upvr, Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.1, true)
	end)
	arg1.Frame.BorderSizePixel = 3
	var362_upvw.SelectionImageObject.Visible = true
	do
		return
	end
	-- KONSTANTERROR: [79] 51. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [130] 88. Error Block 16 start (CF ANALYSIS FAILED)
	arg1:Select()
	Size_2_upvr = var362_upvw
	Size_2_upvr = false
	Size_2_upvr.SelectionImageObject.Visible = Size_2_upvr
	-- KONSTANTERROR: [130] 88. Error Block 16 end (CF ANALYSIS FAILED)
end
function enableGamepadInventoryControl() -- Line 1259
	--[[ Upvalues[6]:
		[1]: var47_upvw (read and write)
		[2]: module_upvr (readonly)
		[3]: ContextActionService_upvr (readonly)
		[4]: var346_upvr (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: var46_upvw (read and write)
	]]
	ContextActionService_upvr:BindAction("RBXBackpackHasGamepadFocus", var346_upvr, false, Enum.UserInputType.Gamepad1)
	ContextActionService_upvr:BindAction("RBXCloseInventory", function(arg1, arg2, arg3) -- Line 1260
		--[[ Upvalues[2]:
			[1]: var47_upvw (copied, read and write)
			[2]: module_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 3. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [4] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 3 end (CF ANALYSIS FAILED)
	end, false, Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonStart)
	if not false then
		GuiService_upvr.SelectedCoreObject = var46_upvw:FindFirstChild('1')
	end
end
function disableGamepadInventoryControl() -- Line 1285
	--[[ Upvalues[4]:
		[1]: var66_upvw (read and write)
		[2]: tbl_10_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: var45_upvw (read and write)
	]]
	unbindAllGamepadEquipActions()
	for i_18 = 1, var66_upvw do
		local var370 = tbl_10_upvr[i_18]
		if var370 and var370.Frame then
			var370.Frame.BorderSizePixel = 0
		end
	end
	if GuiService_upvr.SelectedCoreObject then
		i_18 = var45_upvw
		if GuiService_upvr.SelectedCoreObject:IsDescendantOf(i_18) then
			GuiService_upvr.SelectedCoreObject = nil
		end
	end
end
local function _() -- Line 1301, Named "bindBackpackHotbarAction"
	--[[ Upvalues[3]:
		[1]: var60_upvw (read and write)
		[2]: var42_upvw (read and write)
		[3]: ContextActionService_upvr (readonly)
	]]
	if var60_upvw then
		if not var42_upvw then
			var42_upvw = true
			ContextActionService_upvr:BindAction("RBXHotbarEquip", changeToolFunc, false, Enum.KeyCode.ButtonL1, Enum.KeyCode.ButtonR1)
		end
	end
end
local function _() -- Line 1308, Named "unbindBackpackHotbarAction"
	--[[ Upvalues[2]:
		[1]: var42_upvw (read and write)
		[2]: ContextActionService_upvr (readonly)
	]]
	disableGamepadInventoryControl()
	var42_upvw = false
	ContextActionService_upvr:UnbindAction("RBXHotbarEquip")
end
function gamepadDisconnected() -- Line 1314
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: var64_upvw (read and write)
	]]
	if not VRService_upvr.VREnabled then
		var64_upvw = false
		disableGamepadInventoryControl()
	end
end
function gamepadConnected() -- Line 1321
	--[[ Upvalues[9]:
		[1]: VRService_upvr (readonly)
		[2]: var64_upvw (read and write)
		[3]: GuiService_upvr (readonly)
		[4]: var45_upvw (read and write)
		[5]: var58_upvw (read and write)
		[6]: var60_upvw (read and write)
		[7]: var42_upvw (read and write)
		[8]: ContextActionService_upvr (readonly)
		[9]: var47_upvw (read and write)
	]]
	if not VRService_upvr.VREnabled then
		var64_upvw = true
		GuiService_upvr:AddSelectionParent("RBXBackpackSelection", var45_upvw)
		if 1 <= var58_upvw and var60_upvw and not var42_upvw then
			var42_upvw = true
			ContextActionService_upvr:BindAction("RBXHotbarEquip", changeToolFunc, false, Enum.KeyCode.ButtonL1, Enum.KeyCode.ButtonR1)
		end
		if var47_upvw.Visible then
			enableGamepadInventoryControl()
		end
	end
end
local function OnCoreGuiChanged_upvr(arg1, arg2) -- Line 1336, Named "OnCoreGuiChanged"
	--[[ Upvalues[10]:
		[1]: var40_upvw (read and write)
		[2]: var60_upvw (read and write)
		[3]: FFlagMountCoreGuiBackpack_upvr (readonly)
		[4]: var45_upvw (read and write)
		[5]: RobloxGui_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: GuiService_upvr (readonly)
		[8]: var58_upvw (read and write)
		[9]: var42_upvw (read and write)
		[10]: ContextActionService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 5. Error Block 29 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 5. Error Block 29 end (CF ANALYSIS FAILED)
end
local function MakeVRRoundButton(arg1, arg2) -- Line 1371
	--[[ Upvalues[1]:
		[1]: NewGui_upvr (readonly)
	]]
	local NewGui_result1_10 = NewGui_upvr("ImageButton", arg1)
	NewGui_result1_10.Size = UDim2.new(0, 40, 0, 40)
	NewGui_result1_10.Image = "rbxasset://textures/ui/Keyboard/close_button_background.png"
	local NewGui_result1_6 = NewGui_upvr("ImageLabel", "Icon")
	NewGui_result1_6.Size = UDim2.new(0.5, 0, 0.5, 0)
	NewGui_result1_6.Position = UDim2.new(0.25, 0, 0.25, 0)
	NewGui_result1_6.Image = arg2
	NewGui_result1_6.Parent = NewGui_result1_10
	local NewGui_result1_12 = NewGui_upvr("ImageLabel", "Selection")
	NewGui_result1_12.Size = UDim2.new(0.9, 0, 0.9, 0)
	NewGui_result1_12.Position = UDim2.new(0.05, 0, 0.05, 0)
	NewGui_result1_12.Image = "rbxasset://textures/ui/Keyboard/close_button_selection.png"
	NewGui_result1_10.SelectionImageObject = NewGui_result1_12
	return NewGui_result1_10, NewGui_result1_6, NewGui_result1_12
end
var45_upvw = NewGui_upvr("Frame", "Backpack")
local var374 = var45_upvw
if FFlagMountCoreGuiBackpack_upvr then
	if StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack) then
		var374.Parent = RobloxGui_upvr
		-- KONSTANTWARNING: GOTO [638] #516
	end
else
	var374.Visible = false
	var374.Parent = RobloxGui_upvr
end
var46_upvw = NewGui_upvr("Frame", "Hotbar")
local var375_upvw = var46_upvw
var375_upvw.Parent = var374
for i_19 = 1, var66_upvw do
	local MakeSlot_upvr_result1 = MakeSlot_upvr(var375_upvw, i_19)
	MakeSlot_upvr_result1.Frame.Visible = false
	if not var54_upvw then
		var54_upvw = MakeSlot_upvr_result1
	end
end
var77_upvw = NewGui_upvr("ImageButton", "OpenInventory")
local var377_upvw = var77_upvw
var377_upvw.Size = UDim2.new(0, 30, 0, 30)
var377_upvw.Image = "rbxasset://textures/ui/Backpack/ScrollUpArrow.png"
var377_upvw.MouseButton1Click:connect(function() -- Line 1423
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.OpenClose()
end)
local Color3_new_result1_3_upvr = Color3.new(0, 0.6352941176470588, 1)
var377_upvw.SelectionGained:connect(function() -- Line 1426
	--[[ Upvalues[2]:
		[1]: var377_upvw (read and write)
		[2]: Color3_new_result1_3_upvr (readonly)
	]]
	var377_upvw.ImageColor3 = Color3_new_result1_3_upvr
end)
var377_upvw.SelectionLost:connect(function() -- Line 1429
	--[[ Upvalues[1]:
		[1]: var377_upvw (read and write)
	]]
	var377_upvw.ImageColor3 = Color3.new(1, 1, 1)
end)
local NewGui_upvr_result1 = NewGui_upvr("Frame", "Selection")
NewGui_upvr_result1.Visible = false
var377_upvw.SelectionImageObject = NewGui_upvr_result1
local MakeVRRoundButton_result1 = MakeVRRoundButton("CloseInventory", "rbxasset://textures/ui/Keyboard/close_button_icon.png")
MakeVRRoundButton_result1.Position = UDim2.new(0, 0, 0, -50)
MakeVRRoundButton_result1.MouseButton1Click:connect(function() -- Line 1439
	--[[ Upvalues[2]:
		[1]: var47_upvw (read and write)
		[2]: module_upvr (readonly)
	]]
	if var47_upvw.Visible then
		module_upvr.OpenClose()
	end
end)
LeftBumperButton = NewGui_upvr("ImageLabel", "LeftBumper") -- Setting global
LeftBumperButton.Size = UDim2.new(0, 40, 0, 40)
LeftBumperButton.Position = UDim2.new(0, -LeftBumperButton.Size.X.Offset, 0.5, -LeftBumperButton.Size.Y.Offset / 2)
RightBumperButton = NewGui_upvr("ImageLabel", "RightBumper") -- Setting global
RightBumperButton.Size = UDim2.new(0, 40, 0, 40)
RightBumperButton.Position = UDim2.new(1, 0, 0.5, -RightBumperButton.Size.Y.Offset / 2)
var47_upvw = NewGui_upvr("Frame", "Inventory")
local var385_upvw = var47_upvw
var385_upvw.BackgroundTransparency = var21_upvw
var385_upvw.BackgroundColor3 = Color3_new_result1_5_upvr
var385_upvw.Active = true
var385_upvw.Visible = false
var385_upvw.Parent = var374
var362_upvw = NewGui_upvr("TextButton", "VRInventorySelector")
local var386 = var362_upvw
var386.Position = UDim2.new(0, 0, 0, 0)
var386.Size = UDim2.new(1, 0, 1, 0)
var386.BackgroundTransparency = 1
var386.Text = ""
var386.Parent = var385_upvw
local NewGui_result1_2 = NewGui_upvr("ImageLabel", "Selector")
NewGui_result1_2.Size = UDim2.new(1, 0, 1, 0)
NewGui_result1_2.Image = "rbxasset://textures/ui/Keyboard/key_selection_9slice.png"
NewGui_result1_2.ScaleType = Enum.ScaleType.Slice
NewGui_result1_2.SliceCenter = Rect.new(12, 12, 52, 52)
NewGui_result1_2.Visible = false
var386.SelectionImageObject = NewGui_result1_2
var48_upvw = NewGui_upvr("ScrollingFrame", "ScrollingFrame")
local var388_upvw = var48_upvw
var388_upvw.Selectable = false
var388_upvw.CanvasSize = UDim2.new(0, 0, 0, 0)
var388_upvw.Parent = var385_upvw
var49_upvw = NewGui_upvr("Frame", "UIGridFrame")
local var389_upvw = var49_upvw
var389_upvw.Selectable = false
var389_upvw.Size = UDim2.new(1, -10, 1, 0)
var389_upvw.Position = UDim2.new(0, 5, 0, 0)
var389_upvw.Parent = var388_upvw
local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, var19_upvw, 0, var19_upvw)
UIGridLayout.CellPadding = UDim2.new(0, 5, 0, 5)
UIGridLayout.Parent = var389_upvw
local MakeVRRoundButton_result1_3_upvw = MakeVRRoundButton("ScrollUpButton", "rbxasset://textures/ui/Backpack/ScrollUpArrow.png")
MakeVRRoundButton_result1_3_upvw.Size = UDim2.new(0, 34, 0, 34)
MakeVRRoundButton_result1_3_upvw.Position = UDim2.new(0.5, -MakeVRRoundButton_result1_3_upvw.Size.X.Offset / 2, 0, 43)
MakeVRRoundButton_result1_3_upvw.Icon.Position = MakeVRRoundButton_result1_3_upvw.Icon.Position - UDim2.new(0, 0, 0, 2)
MakeVRRoundButton_result1_3_upvw.MouseButton1Click:connect(function() -- Line 1498
	--[[ Upvalues[2]:
		[1]: var388_upvw (read and write)
		[2]: var19_upvw (read and write)
	]]
	var388_upvw.CanvasPosition = Vector2.new(var388_upvw.CanvasPosition.X, math.min(var388_upvw.CanvasSize.Y.Offset - var388_upvw.AbsoluteWindowSize.Y, math.max(0, (var388_upvw.CanvasPosition.Y) - (var19_upvw + 5))))
end)
local MakeVRRoundButton_result1_2_upvw = MakeVRRoundButton("ScrollDownButton", "rbxasset://textures/ui/Backpack/ScrollUpArrow.png")
MakeVRRoundButton_result1_2_upvw.Rotation = 180
MakeVRRoundButton_result1_2_upvw.Icon.Position = MakeVRRoundButton_result1_2_upvw.Icon.Position - UDim2.new(0, 0, 0, 2)
MakeVRRoundButton_result1_2_upvw.Size = UDim2.new(0, 34, 0, 34)
MakeVRRoundButton_result1_2_upvw.Position = UDim2.new(0.5, -MakeVRRoundButton_result1_2_upvw.Size.X.Offset / 2, 1, -MakeVRRoundButton_result1_2_upvw.Size.Y.Offset - 3)
MakeVRRoundButton_result1_2_upvw.MouseButton1Click:connect(function() -- Line 1509
	--[[ Upvalues[2]:
		[1]: var388_upvw (read and write)
		[2]: var19_upvw (read and write)
	]]
	var388_upvw.CanvasPosition = Vector2.new(var388_upvw.CanvasPosition.X, math.min(var388_upvw.CanvasSize.Y.Offset - var388_upvw.AbsoluteWindowSize.Y, math.max(0, (var388_upvw.CanvasPosition.Y) + (var19_upvw + 5))))
end)
var388_upvw.Changed:connect(function(arg1) -- Line 1515
	--[[ Upvalues[3]:
		[1]: var388_upvw (read and write)
		[2]: MakeVRRoundButton_result1_3_upvw (read and write)
		[3]: MakeVRRoundButton_result1_2_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 18 start (CF ANALYSIS FAILED)
	if var388_upvw.CanvasPosition.Y == 0 then
		-- KONSTANTWARNING: GOTO [15] #10
	end
	-- KONSTANTERROR: [6] 4. Error Block 18 end (CF ANALYSIS FAILED)
end)
UpdateBackpackLayout_upvr()
local tbl_4 = {
	Name = "GamepadHintsFrame";
}
if any_IsEnabled_result1_upvr then
else
end
tbl_4.Size = UDim2.new(0, var375_upvw.Size.X.Offset, 0, 60)
tbl_4.BackgroundTransparency = 1
tbl_4.Visible = false
tbl_4.Parent = var374
local var397_upvr = Create_upvr("Frame")(tbl_4)
local function addGamepadHint(arg1, arg2, arg3) -- Line 1538
	--[[ Upvalues[3]:
		[1]: Create_upvr (readonly)
		[2]: var397_upvr (readonly)
		[3]: any_IsEnabled_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = {
		Name = "HintFrame";
		Size = UDim2.new(1, 0, 1, -5);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Parent = var397_upvr;
	}
	;({}).Name = "HintImage"
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 34. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 34. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 41. Error Block 28 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 41. Error Block 28 end (CF ANALYSIS FAILED)
end
local function resizeGamepadHintsFrame_upvr() -- Line 1575, Named "resizeGamepadHintsFrame"
	--[[ Upvalues[4]:
		[1]: var397_upvr (readonly)
		[2]: var375_upvw (read and write)
		[3]: any_IsEnabled_result1_upvr (readonly)
		[4]: var385_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Size = var375_upvw.Size
	local var408
	if any_IsEnabled_result1_upvr then
		Size = 95
	else
		Size = 60
	end
	var408.Size = UDim2.new(var375_upvw.Size.X.Scale, Size.X.Offset, 0, Size)
	var408 = var397_upvr
	var408.Position = UDim2.new(var375_upvw.Position.X.Scale, var375_upvw.Position.X.Offset, var385_upvw.Position.Y.Scale, var385_upvw.Position.Y.Offset - var397_upvr.Size.Y.Offset)
	var408 = 0
	local children = var397_upvr:GetChildren()
	for i_20 = 1, #children do
		children[i_20].Size = UDim2.new(1, 0, 1, -5)
		children[i_20].Position = UDim2.new(0, 0, 0, 0)
		var408 += children[i_20].HintText.Position.X.Offset + children[i_20].HintText.TextBounds.X
		local var410
	end
	for i_21 = 1, #var410 do
		local var411
		local function INLINED_17() -- Internal function, doesn't exist in bytecode
			var411 = UDim2.new(0, 0, 0, 0)
			return var411
		end
		if i_21 ~= 1 or not INLINED_17() then
			var411 = UDim2.new(0, var410[i_21 - 1].Position.X.Offset + var410[i_21 - 1].Size.X.Offset + (var397_upvr.AbsoluteSize.X - var408) / (#var410 - 1), 0, 0)
		end
		var410[i_21].Position = var411
		var411 = UDim2.new(0, var410[i_21].HintText.Position.X.Offset + var410[i_21].HintText.TextBounds.X, 1, -5)
		var410[i_21].Size = var411
	end
end
addGamepadHint("rbxasset://textures/ui/Controls/DesignSystem/ButtonX.png", "rbxasset://textures/ui/Controls/DesignSystem/ButtonX@2x.png", "Remove From Hotbar")
addGamepadHint("rbxasset://textures/ui/Controls/DesignSystem/ButtonA.png", "rbxasset://textures/ui/Controls/DesignSystem/ButtonA@2x.png", "Select/Swap")
addGamepadHint("rbxasset://textures/ui/Controls/DesignSystem/ButtonB.png", "rbxasset://textures/ui/Controls/DesignSystem/ButtonB@2x.png", "Close Backpack")
local NewGui_result1_11_upvr = NewGui_upvr("Frame", "Search")
NewGui_result1_11_upvr.BackgroundColor3 = Color3_new_result1
NewGui_result1_11_upvr.BackgroundTransparency = var27_upvw
NewGui_result1_11_upvr.Size = UDim2.new(0, 190, 0, 30)
NewGui_result1_11_upvr.Position = UDim2.new(1, -NewGui_result1_11_upvr.Size.X.Offset - 5, 0, 5)
NewGui_result1_11_upvr.Parent = var385_upvw
local NewGui_result1_8_upvr = NewGui_upvr("TextBox", "TextBox")
NewGui_result1_8_upvr.Text = var25_upvw
NewGui_result1_8_upvr.ClearTextOnFocus = false
NewGui_result1_8_upvr.FontSize = Enum.FontSize.Size24
NewGui_result1_8_upvr.TextXAlignment = Enum.TextXAlignment.Left
NewGui_result1_8_upvr.Size = NewGui_result1_11_upvr.Size - UDim2.new(0, 0, 0, 0)
NewGui_result1_8_upvr.Position = UDim2.new(0, 0, 0, 0)
NewGui_result1_8_upvr.Parent = NewGui_result1_11_upvr
local NewGui_result1_3_upvr = NewGui_upvr("TextButton", 'X')
NewGui_result1_3_upvr.Text = 'x'
NewGui_result1_3_upvr.TextColor3 = Color3_new_result1_4_upvr
NewGui_result1_3_upvr.FontSize = Enum.FontSize.Size24
NewGui_result1_3_upvr.TextYAlignment = Enum.TextYAlignment.Bottom
NewGui_result1_3_upvr.BackgroundColor3 = Color3_new_result1
NewGui_result1_3_upvr.BackgroundTransparency = 0
NewGui_result1_3_upvr.Size = UDim2.new(0, NewGui_result1_11_upvr.Size.Y.Offset - 10, 0, NewGui_result1_11_upvr.Size.Y.Offset - 10)
NewGui_result1_3_upvr.Position = UDim2.new(1, -NewGui_result1_3_upvr.Size.X.Offset - 10, 0.5, -NewGui_result1_3_upvr.Size.Y.Offset / 2)
NewGui_result1_3_upvr.ZIndex = 0
NewGui_result1_3_upvr.Visible = false
NewGui_result1_3_upvr.BorderSizePixel = 0
NewGui_result1_3_upvr.Parent = NewGui_result1_11_upvr
local function var460_upvr() -- Line 1632, Named "search"
	--[[ Upvalues[9]:
		[1]: NewGui_result1_8_upvr (readonly)
		[2]: var66_upvw (read and write)
		[3]: tbl_10_upvr (readonly)
		[4]: var385_upvw (read and write)
		[5]: var62_upvw (read and write)
		[6]: var389_upvw (read and write)
		[7]: var388_upvw (read and write)
		[8]: UpdateScrollingFrameCanvasSize_upvr (readonly)
		[9]: NewGui_result1_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_5 = {}
	for i_22 in NewGui_result1_8_upvr.Text:gmatch("%S+") do
		tbl_5[i_22:lower()] = true
	end
	for i_23 = var66_upvw + 1, #tbl_10_upvr do
		local var436 = tbl_10_upvr[i_23]
		table.insert({}, {var436, var436:CheckTerms(tbl_5)})
		var436.Frame.Visible = false
		var436.Frame.Parent = var385_upvw
		local var438
	end
	table.sort(var438, function(arg1, arg2) -- Line 1647
		local var440
		if arg2[2] >= arg1[2] then
			var440 = false
		else
			var440 = true
		end
		return var440
	end)
	var62_upvw = true
	for _, v_6 in ipairs(var438) do
		local _1 = v_6[1]
		if 0 < v_6[2] then
			_1.Frame.Visible = true
			_1.Frame.Parent = var389_upvw
			_1.Frame.LayoutOrder = var66_upvw + 0
		end
	end
	var388_upvw.CanvasPosition = Vector2.new(0, 0)
	UpdateScrollingFrameCanvasSize_upvr()
	NewGui_result1_3_upvr.ZIndex = 3
end
local function clearResults_upvr() -- Line 1669, Named "clearResults"
	--[[ Upvalues[6]:
		[1]: NewGui_result1_3_upvr (readonly)
		[2]: var62_upvw (read and write)
		[3]: var66_upvw (read and write)
		[4]: tbl_10_upvr (readonly)
		[5]: var389_upvw (read and write)
		[6]: UpdateScrollingFrameCanvasSize_upvr (readonly)
	]]
	if 0 < NewGui_result1_3_upvr.ZIndex then
		var62_upvw = false
		for i_25 = var66_upvw + 1, #tbl_10_upvr do
			local var447 = tbl_10_upvr[i_25]
			var447.Frame.LayoutOrder = var447.Index
			var447.Frame.Parent = var389_upvw
			var447.Frame.Visible = true
		end
		NewGui_result1_3_upvr.ZIndex = 0
	end
	UpdateScrollingFrameCanvasSize_upvr()
end
NewGui_result1_8_upvr.Focused:connect(function() -- Line 1700, Named "onFocused"
	--[[ Upvalues[2]:
		[1]: NewGui_result1_8_upvr (readonly)
		[2]: var25_upvw (read and write)
	]]
	if NewGui_result1_8_upvr.Text == var25_upvw then
		NewGui_result1_8_upvr.Text = ""
	end
end)
NewGui_result1_3_upvr.MouseButton1Click:connect(function() -- Line 1683, Named "reset"
	--[[ Upvalues[3]:
		[1]: clearResults_upvr (readonly)
		[2]: NewGui_result1_8_upvr (readonly)
		[3]: var25_upvw (read and write)
	]]
	clearResults_upvr()
	NewGui_result1_8_upvr.Text = var25_upvw
end)
NewGui_result1_8_upvr.Changed:connect(function(arg1) -- Line 1688, Named "onChanged"
	--[[ Upvalues[5]:
		[1]: NewGui_result1_8_upvr (readonly)
		[2]: clearResults_upvr (readonly)
		[3]: var25_upvw (read and write)
		[4]: var460_upvr (readonly)
		[5]: NewGui_result1_3_upvr (readonly)
	]]
	if arg1 == "Text" then
		local Text = NewGui_result1_8_upvr.Text
		if Text == "" then
			clearResults_upvr()
		elseif Text ~= var25_upvw then
			var460_upvr()
		end
		local var449 = false
		if Text ~= "" then
			if Text == var25_upvw then
				var449 = false
			else
				var449 = true
			end
		end
		NewGui_result1_3_upvr.Visible = var449
	end
end)
NewGui_result1_8_upvr.FocusLost:connect(function(arg1) -- Line 1706, Named "focusLost"
	--[[ Upvalues[3]:
		[1]: var460_upvr (readonly)
		[2]: NewGui_result1_8_upvr (readonly)
		[3]: var25_upvw (read and write)
	]]
	if arg1 then
		var460_upvr()
	elseif NewGui_result1_8_upvr.Text == "" then
		NewGui_result1_8_upvr.Text = var25_upvw
	end
end)
module_upvr.StateChanged.Event:connect(function(arg1) -- Line 1720
	--[[ Upvalues[4]:
		[1]: NewGui_result1_3_upvr (readonly)
		[2]: clearResults_upvr (readonly)
		[3]: NewGui_result1_8_upvr (readonly)
		[4]: var25_upvw (read and write)
	]]
	NewGui_result1_3_upvr.Modal = arg1
	if not arg1 then
		clearResults_upvr()
		NewGui_result1_8_upvr.Text = var25_upvw
	end
end)
tbl_8_upvr[Enum.KeyCode.Escape.Value] = function(arg1) -- Line 1727
	--[[ Upvalues[5]:
		[1]: clearResults_upvr (readonly)
		[2]: NewGui_result1_8_upvr (readonly)
		[3]: var25_upvw (read and write)
		[4]: var385_upvw (read and write)
		[5]: module_upvr (readonly)
	]]
	if arg1 then
		clearResults_upvr()
		NewGui_result1_8_upvr.Text = var25_upvw
	elseif var385_upvw.Visible then
		module_upvr.OpenClose()
	end
end
UserInputService_upvr.LastInputTypeChanged:connect(function(arg1) -- Line 1735, Named "detectGamepad"
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: NewGui_result1_11_upvr (readonly)
	]]
	if arg1 == Enum.UserInputType.Gamepad1 then
		if not VRService_upvr.VREnabled then
			NewGui_result1_11_upvr.Visible = false
			return
		end
	end
	NewGui_result1_11_upvr.Visible = true
end)
function NewGui_result1_8_upvr(arg1, arg2, arg3) -- Line 1746
	--[[ Upvalues[3]:
		[1]: GuiService_upvr (readonly)
		[2]: var66_upvw (read and write)
		[3]: tbl_10_upvr (readonly)
	]]
	if arg2 ~= Enum.UserInputState.Begin then
	else
		if not GuiService_upvr.SelectedCoreObject then return end
		for i_33 = 1, var66_upvw do
			if tbl_10_upvr[i_33].Frame == GuiService_upvr.SelectedCoreObject and tbl_10_upvr[i_33].Tool then
				tbl_10_upvr[i_33]:MoveToInventory()
				return
			end
		end
	end
end
function NewGui_result1_3_upvr() -- Line 1758, Named "openClose"
	--[[ Upvalues[14]:
		[1]: tbl_6_upvr (readonly)
		[2]: var385_upvw (read and write)
		[3]: AdjustHotbarFrames_upvr (readonly)
		[4]: var375_upvw (read and write)
		[5]: var66_upvw (read and write)
		[6]: tbl_10_upvr (readonly)
		[7]: var64_upvw (read and write)
		[8]: tbl_13_upvr (readonly)
		[9]: UserInputService_upvr (readonly)
		[10]: resizeGamepadHintsFrame_upvr (readonly)
		[11]: var397_upvr (readonly)
		[12]: ContextActionService_upvr (readonly)
		[13]: NewGui_result1_8_upvr (readonly)
		[14]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not next(tbl_6_upvr) then
		var385_upvw.Visible = not var385_upvw.Visible
		AdjustHotbarFrames_upvr()
		var375_upvw.Active = not var375_upvw.Active
		for i_26 = 1, var66_upvw do
			tbl_10_upvr[i_26]:SetClickability(not var385_upvw.Visible)
			local _
		end
	end
	if var385_upvw.Visible then
		if var64_upvw then
			if tbl_13_upvr[UserInputService_upvr:GetLastInputType()] then
				resizeGamepadHintsFrame_upvr()
				var397_upvr.Visible = true
			end
			enableGamepadInventoryControl()
			-- KONSTANTWARNING: GOTO [67] #55
		end
	else
		if var64_upvw then
			var397_upvr.Visible = false
		end
		disableGamepadInventoryControl()
	end
	if var385_upvw.Visible then
		ContextActionService_upvr:BindAction("RBXRemoveSlot", NewGui_result1_8_upvr, false, Enum.KeyCode.ButtonX)
	else
		ContextActionService_upvr:UnbindAction("RBXRemoveSlot")
	end
	module_upvr.IsOpen = var385_upvw.Visible
	module_upvr.StateChanged:Fire(var385_upvw.Visible)
end
local var454_upvr = NewGui_result1_3_upvr
function var460_upvr() -- Line 1794
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: var454_upvr (readonly)
	]]
	if GuiService_upvr.MenuIsOpen then
	else
		var454_upvr()
	end
end
tbl_8_upvr[Enum.KeyCode.Backquote.Value] = var460_upvr
module_upvr.OpenClose = var454_upvr
while not LocalPlayer_upvw do
	NewGui_result1_8_upvr = wait
	NewGui_result1_8_upvr()
	LocalPlayer_upvw = Players.LocalPlayer
end
NewGui_result1_8_upvr = LocalPlayer_upvw.CharacterAdded
var460_upvr = OnCharacterAdded
NewGui_result1_8_upvr = NewGui_result1_8_upvr:connect
NewGui_result1_8_upvr(var460_upvr)
NewGui_result1_8_upvr = LocalPlayer_upvw.Character
if NewGui_result1_8_upvr then
	NewGui_result1_8_upvr = OnCharacterAdded
	var454_upvr = LocalPlayer_upvw.Character
	NewGui_result1_8_upvr(var454_upvr)
end
var460_upvr = 0
NewGui_result1_8_upvr = 9
var454_upvr = 1
for i_27 = var460_upvr, NewGui_result1_8_upvr, var454_upvr do
	clearResults_upvr = table.insert
	clearResults_upvr(tbl_2_upvr, tostring(i_27))
	local var461
end
var454_upvr = var461
NewGui_result1_8_upvr = table.insert
NewGui_result1_8_upvr(var454_upvr, '`')
NewGui_result1_8_upvr = UserInputService_upvr.InputBegan:connect
NewGui_result1_8_upvr(function(arg1, arg2) -- Line 1018, Named "OnInputBegan"
	--[[ Upvalues[6]:
		[1]: var61_upvw (read and write)
		[2]: var60_upvw (read and write)
		[3]: Value_upvr_2 (readonly)
		[4]: tbl_8_upvr (readonly)
		[5]: var47_upvw (read and write)
		[6]: module_upvr (readonly)
	]]
	if arg1.UserInputType == Enum.UserInputType.Keyboard and not var61_upvw then
		local function INLINED_16() -- Internal function, doesn't exist in bytecode
			local var342 = tbl_8_upvr[arg1.KeyCode.Value]
			return var342
		end
		if var60_upvw or arg1.KeyCode.Value == Value_upvr_2 or INLINED_16() then
			var342(arg2)
		end
	end
	local UserInputType = arg1.UserInputType
	if not arg2 and (UserInputType == Enum.UserInputType.MouseButton1 or UserInputType == Enum.UserInputType.Touch) then
		if var47_upvw.Visible then
			module_upvr.OpenClose()
		end
	end
end)
NewGui_result1_8_upvr = UserInputService_upvr.TextBoxFocused
NewGui_result1_8_upvr = NewGui_result1_8_upvr:connect
NewGui_result1_8_upvr(function() -- Line 1829
	--[[ Upvalues[1]:
		[1]: var61_upvw (read and write)
	]]
	var61_upvw = true
end)
NewGui_result1_8_upvr = UserInputService_upvr.TextBoxFocusReleased
NewGui_result1_8_upvr = NewGui_result1_8_upvr:connect
NewGui_result1_8_upvr(function() -- Line 1830
	--[[ Upvalues[1]:
		[1]: var61_upvw (read and write)
	]]
	var61_upvw = false
end)
function NewGui_result1_8_upvr() -- Line 1833
	--[[ Upvalues[3]:
		[1]: var59_upvw (read and write)
		[2]: var51_upvw (read and write)
		[3]: tbl_9_upvr (readonly)
	]]
	if var59_upvw then
		if var51_upvw then
			var51_upvw:UnequipTools()
			if var59_upvw then
				var59_upvw:ToggleSelect()
				tbl_9_upvr[var59_upvw]:UpdateEquipView()
				var59_upvw = nil
			end
		end
	end
end
tbl_8_upvr[Value_upvr_2] = NewGui_result1_8_upvr
NewGui_result1_8_upvr = UserInputService_upvr.Changed:connect
NewGui_result1_8_upvr(function(arg1) -- Line 1037, Named "OnUISChanged"
	--[[ Upvalues[4]:
		[1]: UserInputService_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: var66_upvw (read and write)
		[4]: tbl_10_upvr (readonly)
	]]
	if arg1 == "KeyboardEnabled" or arg1 == "VREnabled" then
		if UserInputService_upvr.KeyboardEnabled then
		end
		for i_16 = 1, var66_upvw do
			tbl_10_upvr[i_16]:TurnNumber(not VRService_upvr.VREnabled)
		end
	end
end)
NewGui_result1_8_upvr = UserInputService_upvr.KeyboardEnabled
if NewGui_result1_8_upvr then
	var454_upvr = VRService_upvr.VREnabled
	NewGui_result1_8_upvr = not var454_upvr
end
clearResults_upvr = 1
var454_upvr = var66_upvw
for i_28 = clearResults_upvr, var454_upvr do
	tbl_10_upvr[i_28]:TurnNumber(NewGui_result1_8_upvr)
	local var465_upvr
end
NewGui_result1_8_upvr = UserInputService_upvr:GetGamepadConnected(Enum.UserInputType.Gamepad1)
if NewGui_result1_8_upvr then
	NewGui_result1_8_upvr = gamepadConnected
	NewGui_result1_8_upvr()
end
NewGui_result1_8_upvr = UserInputService_upvr.GamepadConnected
NewGui_result1_8_upvr = NewGui_result1_8_upvr:connect
NewGui_result1_8_upvr(function(arg1) -- Line 1847
	if arg1 == Enum.UserInputType.Gamepad1 then
		gamepadConnected()
	end
end)
NewGui_result1_8_upvr = UserInputService_upvr.GamepadDisconnected
NewGui_result1_8_upvr = NewGui_result1_8_upvr:connect
NewGui_result1_8_upvr(function(arg1) -- Line 1852
	if arg1 == Enum.UserInputType.Gamepad1 then
		gamepadDisconnected()
	end
end)
function NewGui_result1_8_upvr(arg1, arg2) -- Line 1859, Named "TopbarEnabledChanged"
	--[[ Upvalues[3]:
		[1]: var40_upvw (read and write)
		[2]: OnCoreGuiChanged_upvr (readonly)
		[3]: StarterGui_upvr (readonly)
	]]
	var40_upvw = arg2
	OnCoreGuiChanged_upvr(Enum.CoreGuiType.Backpack, StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack))
end
module_upvr.TopbarEnabledChanged = NewGui_result1_8_upvr
NewGui_result1_8_upvr = StarterGui_upvr.CoreGuiChangedSignal:connect
NewGui_result1_8_upvr(OnCoreGuiChanged_upvr)
NewGui_result1_8_upvr = Enum.CoreGuiType.Backpack
local var468 = NewGui_result1_8_upvr
var454_upvr = Enum.CoreGuiType.Health
local var469 = var454_upvr
OnCoreGuiChanged_upvr(var468, StarterGui_upvr:GetCoreGuiEnabled(var468))
OnCoreGuiChanged_upvr(var469, StarterGui_upvr:GetCoreGuiEnabled(var469))
local isInExperienceUIVREnabled_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
GuiService_upvr.MenuOpened:Connect(function() -- Line 1871
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: isInExperienceUIVREnabled_upvr (readonly)
		[3]: VRService_upvr (readonly)
	]]
	local IsOpen = module_upvr.IsOpen
	if IsOpen then
		if isInExperienceUIVREnabled_upvr then
			IsOpen = not VRService_upvr.VREnabled
		else
			IsOpen = true
		end
		if IsOpen then
			IsOpen = module_upvr.OpenClose
			IsOpen()
		end
	end
end)
if require(CorePackages.Workspace.Packages.SharedFlags).getFFlagAppChatCoreUIConflictFix() then
	require(CorePackages.Workspace.Packages.AppChat).App.InExperienceAppChatModal.default.visibilitySignal.Event:Connect(function(arg1) -- Line 1878
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if arg1 and module_upvr.IsOpen then
			module_upvr.OpenClose()
		end
	end)
end
UserGameSettings_upvr:GetPropertyChangedSignal("PreferredTransparency"):connect(function() -- Line 1885, Named "OnPreferredTransparencyChanged"
	--[[ Upvalues[7]:
		[1]: UserGameSettings_upvr (readonly)
		[2]: var21_upvw (read and write)
		[3]: var385_upvw (read and write)
		[4]: var24_upvw (read and write)
		[5]: var465_upvr (readonly)
		[6]: var27_upvw (read and write)
		[7]: NewGui_result1_11_upvr (readonly)
	]]
	var21_upvw = 0.5 * UserGameSettings_upvr.PreferredTransparency
	var385_upvw.BackgroundTransparency = var21_upvw
	var24_upvw = 0.5 * UserGameSettings_upvr.PreferredTransparency
	for _, v_7 in ipairs(var465_upvr) do
		v_7.Frame.BackgroundTransparency = var24_upvw
	end
	var27_upvw = 0.15 * UserGameSettings_upvr.PreferredTransparency
	NewGui_result1_11_upvr.BackgroundTransparency = var27_upvw
end)
do
	return module_upvr
end
-- KONSTANTERROR: [340] 239. Error Block 83 end (CF ANALYSIS FAILED)