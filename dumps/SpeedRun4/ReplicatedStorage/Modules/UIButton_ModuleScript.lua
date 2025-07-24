-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:42
-- Luau version 6, Types version 3
-- Time taken: 0.036517 seconds

local module_7_upvr = {}
local ContextActionService_upvr = game:GetService("ContextActionService")
local GuiService_upvr = game:GetService("GuiService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService_upvr = game:GetService("UserInputService")
local module_14 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_15_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_8_upvr = require(Modules:WaitForChild("InputMode"))
local module_11_upvr = require(Modules:WaitForChild("Tweens"))
local module_4_upvr = require(Modules:WaitForChild("UIShared"))
local Utility_upvr = Modules:WaitForChild("Utility")
local var12_2_upvr = require(Utility_upvr)
if GuiService_upvr:IsTenFootInterface() then
	Utility_upvr = 1
else
	Utility_upvr = 1
end
module_7_upvr.ButtonState = table.freeze({
	Idle = 1;
	Hot = 2;
	Selected = 3;
	Held = 4;
	Disabled = 5;
	Special = 6;
})
module_7_upvr.ButtonStyle = table.freeze({
	Standard = 1;
	FancyBase = 2;
	Fancy = 3;
	FancyMinimal = 4;
})
module_7_upvr.IconLocation = table.freeze({
	Left = 1;
	LeftClose = 2;
	Right = 3;
	RightClose = 4;
})
local tbl_3_upvr = {
	ButtonInput_ByGamepadInputObject = {};
	ButtonInput_ByMouseButtonInputObject = {};
	ButtonInput_ByMouseMovementInputObject = {};
	ButtonInput_ByTouchMovementInputObject = {};
	ButtonInput_ByTouchPressInputObject = {};
	ButtonInput_ByGuiObject = {};
}
module_7_upvr.Button = {}
module_7_upvr.Input = {}
local tbl_15_upvr = {
	[Enum.KeyCode.ButtonA] = true;
	[Enum.KeyCode.ButtonR2] = true;
	[Enum.KeyCode.Return] = true;
}
local tbl_17_upvr = {
	[Enum.UserInputType.Gamepad1] = true;
	[Enum.UserInputType.Keyboard] = true;
}
local function ButtonInputResolve_upvr(arg1) -- Line 244, Named "ButtonInputResolve"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	arg1._ResolvePending = nil
	local var31 = true
	local var32
	if arg1._MouseButtonInput == nil then
		var31 = true
		if arg1._TouchPressInput == nil then
			var31 = false
			if arg1._GamepadInput ~= nil then
				if arg1._GamepadSelected ~= true then
					var31 = false
				else
					var31 = true
				end
			end
		end
	end
	local var33 = true
	if arg1._MouseMovementInput == nil then
		var33 = true
		if arg1._TouchMovementInput == nil then
			var33 = true
			if arg1._GamepadInput == nil then
				var33 = true
				if arg1._GamepadSelected ~= true then
					var33 = false
					if arg1._MouseButtonInput ~= nil then
						var32 = module_8_upvr
						var32 = module_8_upvr.Gamepad
						if var32.Mode ~= var32 then
							var33 = false
						else
							var33 = true
						end
					end
				end
			end
		end
	end
	local var34 = var31 and var33
	var32 = var33
	if var32 then
		var32 = not var34
	end
	local var35 = var32
	var32 = true
	arg1.InputDirty = var32
	var32 = true
	if arg1.Held == var31 then
		var32 = true
		if arg1.Hot == var35 then
			if arg1.Selected == var34 then
				var32 = false
			else
				var32 = true
			end
		end
	end
	arg1.StateDirty = var32
	arg1.WasHeld = arg1.Held
	arg1.WasHot = arg1.Hot
	arg1.WasSelected = arg1.Selected
	arg1.Held = var31
	arg1.Hot = var35
	arg1.Selected = var34
	if arg1.StateDirty then
		if var31 and not arg1.HoldStartedAt then
			arg1.HoldStartedAt = os.clock()
		end
		if arg1.StateChangedCallback then
			task.spawn(arg1.StateChangedCallback, arg1)
		end
		if arg1.ActivatedCallback and arg1.Enabled and not var31 and not var34 and arg1.WasHeld and arg1.WasSelected then
			task.spawn(arg1.ActivatedCallback, arg1)
		end
	end
end
local function _(arg1) -- Line 315, Named "Resolve"
	--[[ Upvalues[1]:
		[1]: ButtonInputResolve_upvr (readonly)
	]]
	if not arg1._ResolvePending then
		arg1._ResolvePending = true
		task.defer(ButtonInputResolve_upvr, arg1)
	end
end
local function ProcessMouseButtonEnd_upvr(arg1, arg2) -- Line 322, Named "ProcessMouseButtonEnd"
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var36
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 15 start (CF ANALYSIS FAILED)
	var36 = module_4_upvr
	if table.find(var36.PlayerGui:GetGuiObjectsAtPosition(arg2.Position.X, arg2.Position.Y), arg1.Object) ~= nil then
		var36 = false
	else
		var36 = true
	end
	-- KONSTANTERROR: [3] 3. Error Block 15 end (CF ANALYSIS FAILED)
end
local function Create(arg1) -- Line 356
	--[[ Upvalues[6]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_17_upvr (readonly)
		[3]: tbl_15_upvr (readonly)
		[4]: ButtonInputResolve_upvr (readonly)
		[5]: ProcessMouseButtonEnd_upvr (readonly)
		[6]: module_7_upvr (readonly)
	]]
	local module_9_upvr = {
		_Connections = {};
	}
	module_9_upvr.Object = arg1
	module_9_upvr.Enabled = true
	module_9_upvr.InputDirty = false
	module_9_upvr.StateDirty = false
	module_9_upvr.Held = false
	module_9_upvr.Hot = false
	module_9_upvr.Selected = false
	module_9_upvr.WasHeld = false
	module_9_upvr.WasHot = false
	module_9_upvr.WasSelected = false
	tbl_3_upvr.ButtonInput_ByGuiObject[arg1] = module_9_upvr
	module_9_upvr._Connections[#module_9_upvr._Connections + 1] = arg1.InputBegan:Connect(function(arg1_2) -- Line 383
		--[[ Upvalues[5]:
			[1]: module_9_upvr (readonly)
			[2]: tbl_3_upvr (copied, readonly)
			[3]: tbl_17_upvr (copied, readonly)
			[4]: tbl_15_upvr (copied, readonly)
			[5]: ButtonInputResolve_upvr (copied, readonly)
		]]
		local var41 = false
		if arg1_2.UserInputType == Enum.UserInputType.MouseButton1 then
			if module_9_upvr._MouseButtonInput == nil then
				if module_9_upvr._MouseMovementInput == nil then
					tbl_3_upvr.ButtonInput_ByMouseMovementInputObject[arg1_2] = module_9_upvr
					module_9_upvr._MouseMovementInput = arg1_2
				end
				tbl_3_upvr.ButtonInput_ByMouseButtonInputObject[arg1_2] = module_9_upvr
				module_9_upvr._MouseButtonInput = arg1_2
				var41 = true
				-- KONSTANTWARNING: GOTO [173] #120
			end
		elseif arg1_2.UserInputType == Enum.UserInputType.MouseMovement then
			if module_9_upvr._MouseMovementInput == nil or module_9_upvr._MouseMovementInput == module_9_upvr._MouseButtonInput then
				if module_9_upvr._MouseMovementInput then
					tbl_3_upvr.ButtonInput_ByMouseMovementInputObject[module_9_upvr._MouseMovementInput] = nil
				end
				tbl_3_upvr.ButtonInput_ByMouseMovementInputObject[arg1_2] = module_9_upvr
				module_9_upvr._MouseMovementInput = arg1_2
				var41 = true
				-- KONSTANTWARNING: GOTO [173] #120
			end
		elseif arg1_2.UserInputType == Enum.UserInputType.Touch then
			if arg1_2.UserInputState == Enum.UserInputState.Begin then
				if module_9_upvr._TouchPressInput == nil then
					if module_9_upvr._TouchMovementInput then
						tbl_3_upvr.ButtonInput_ByTouchPressInputObject[module_9_upvr._TouchMovementInput] = nil
					end
					module_9_upvr._TouchPressInput = arg1_2
					module_9_upvr._TouchMovementInput = arg1_2
					tbl_3_upvr.ButtonInput_ByTouchPressInputObject[arg1_2] = module_9_upvr
					tbl_3_upvr.ButtonInput_ByTouchMovementInputObject[arg1_2] = module_9_upvr
					var41 = true
					-- KONSTANTWARNING: GOTO [173] #120
				end
			elseif arg1_2.UserInputState == Enum.UserInputState.Change and module_9_upvr._TouchMovementInput == nil and module_9_upvr._TouchPressInput == nil then
				module_9_upvr._TouchMovementInput = arg1_2
				tbl_3_upvr.ButtonInput_ByTouchMovementInputObject[arg1_2] = module_9_upvr
				var41 = true
				-- KONSTANTWARNING: GOTO [173] #120
			end
		elseif tbl_17_upvr[arg1_2.UserInputType] and module_9_upvr._GamepadInput == nil and tbl_15_upvr[arg1_2.KeyCode] then
			module_9_upvr._GamepadInput = arg1_2
			tbl_3_upvr.ButtonInput_ByGamepadInputObject[arg1_2] = module_9_upvr
			var41 = true
		end
		if var41 then
			local var42 = module_9_upvr
			if not var42._ResolvePending then
				var42._ResolvePending = true
				task.defer(ButtonInputResolve_upvr, var42)
			end
		end
	end)
	module_9_upvr._Connections[#module_9_upvr._Connections + 1] = arg1.InputEnded:Connect(function(arg1_3) -- Line 474
		--[[ Upvalues[6]:
			[1]: module_9_upvr (readonly)
			[2]: ProcessMouseButtonEnd_upvr (copied, readonly)
			[3]: tbl_3_upvr (copied, readonly)
			[4]: tbl_17_upvr (copied, readonly)
			[5]: tbl_15_upvr (copied, readonly)
			[6]: ButtonInputResolve_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
		local var46
		if arg1_3.UserInputType == Enum.UserInputType.MouseButton1 then
			if module_9_upvr._MouseButtonInput == arg1_3 then
				ProcessMouseButtonEnd_upvr(module_9_upvr, arg1_3)
				var46 = true
				-- KONSTANTWARNING: GOTO [126] #89
			end
			-- KONSTANTWARNING: GOTO [126] #89
		end
		-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 14. Error Block 46 start (CF ANALYSIS FAILED)
		if arg1_3.UserInputType == Enum.UserInputType.MouseMovement then
			if module_9_upvr._MouseMovementInput == arg1_3 then
				tbl_3_upvr.ButtonInput_ByMouseMovementInputObject[arg1_3] = nil
				module_9_upvr._MouseMovementInput = nil
				var46 = true
				-- KONSTANTWARNING: GOTO [126] #89
			end
		elseif arg1_3.UserInputType == Enum.UserInputType.Touch then
			if arg1_3.UserInputState == Enum.UserInputState.End then
				if module_9_upvr._TouchPressInput == arg1_3 then
					if module_9_upvr._TouchMovementInput then
						tbl_3_upvr.ButtonInput_ByTouchMovementInputObject[module_9_upvr._TouchMovementInput] = nil
						module_9_upvr._TouchMovementInput = nil
					end
					module_9_upvr._TouchPressInput = nil
					tbl_3_upvr.ButtonInput_ByTouchPressInputObject[arg1_3] = nil
					var46 = true
					-- KONSTANTWARNING: GOTO [126] #89
				end
			elseif arg1_3.UserInputState == Enum.UserInputState.Change and module_9_upvr._TouchMovementInput == arg1_3 then
				module_9_upvr._TouchMovementInput = nil
				tbl_3_upvr.ButtonInput_ByTouchMovementInputObject[arg1_3] = nil
				var46 = true
				-- KONSTANTWARNING: GOTO [126] #89
			end
		elseif tbl_17_upvr[arg1_3.UserInputType] and module_9_upvr._GamepadInput == arg1_3 and tbl_15_upvr[arg1_3.KeyCode] then
			module_9_upvr._GamepadInput = nil
			var46 = true
		end
		if var46 then
			local var47 = module_9_upvr
			if not var47._ResolvePending then
				var47._ResolvePending = true
				task.defer(ButtonInputResolve_upvr, var47)
			end
		end
		-- KONSTANTERROR: [18] 14. Error Block 46 end (CF ANALYSIS FAILED)
	end)
	module_9_upvr._Connections[#module_9_upvr._Connections + 1] = arg1.InputChanged:Connect(function(arg1_4) -- Line 534
		--[[ Upvalues[2]:
			[1]: module_9_upvr (readonly)
			[2]: ButtonInputResolve_upvr (copied, readonly)
		]]
		local var51 = false
		if arg1_4.UserInputType == Enum.UserInputType.MouseMovement then
			if module_9_upvr._MouseMovementInput == arg1_4 then
				var51 = true
				-- KONSTANTWARNING: GOTO [26] #17
			end
		elseif arg1_4.UserInputType == Enum.UserInputType.Touch and module_9_upvr._TouchMovementInput == arg1_4 then
			var51 = true
		end
		if var51 then
			local var52 = module_9_upvr
			if not var52._ResolvePending then
				var52._ResolvePending = true
				task.defer(ButtonInputResolve_upvr, var52)
			end
		end
	end)
	module_9_upvr._Connections[#module_9_upvr._Connections + 1] = arg1.SelectionGained:Connect(function() -- Line 556
		--[[ Upvalues[2]:
			[1]: module_9_upvr (readonly)
			[2]: ButtonInputResolve_upvr (copied, readonly)
		]]
		module_9_upvr._GamepadSelected = true
		local var54 = module_9_upvr
		if not var54._ResolvePending then
			var54._ResolvePending = true
			task.defer(ButtonInputResolve_upvr, var54)
		end
	end)
	module_9_upvr._Connections[#module_9_upvr._Connections + 1] = arg1.SelectionLost:Connect(function() -- Line 560
		--[[ Upvalues[2]:
			[1]: module_9_upvr (readonly)
			[2]: ButtonInputResolve_upvr (copied, readonly)
		]]
		module_9_upvr._GamepadSelected = nil
		local var56 = module_9_upvr
		if not var56._ResolvePending then
			var56._ResolvePending = true
			task.defer(ButtonInputResolve_upvr, var56)
		end
	end)
	module_9_upvr._Connections[#module_9_upvr._Connections + 1] = arg1.Destroying:Connect(function() -- Line 569
		--[[ Upvalues[2]:
			[1]: module_7_upvr (copied, readonly)
			[2]: module_9_upvr (readonly)
		]]
		module_7_upvr.Input.Destroy(module_9_upvr)
	end)
	return module_9_upvr
end
module_7_upvr.Input.Create = Create
local function ReleaseInput_Internal_upvr(arg1) -- Line 576, Named "ReleaseInput_Internal"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	if arg1._GamepadInput then
		tbl_3_upvr.ButtonInput_ByGamepadInputObject[arg1._GamepadInput] = nil
		arg1._GamepadInput = nil
	end
	if arg1._MouseButtonInput then
		tbl_3_upvr.ButtonInput_ByMouseButtonInputObject[arg1._MouseButtonInput] = nil
		arg1._MouseButtonInput = nil
	end
	if arg1._MouseMovementInput then
		tbl_3_upvr.ButtonInput_ByTouchMovementInputObject[arg1._MouseMovementInput] = nil
		arg1._MouseMovementInput = nil
	end
	if arg1._TouchPressInput then
		tbl_3_upvr.ButtonInput_ByTouchPressInputObject[arg1._TouchPressInput] = nil
		arg1._TouchPressInput = nil
	end
	if arg1._TouchMovementInput then
		tbl_3_upvr.ButtonInput_ByTouchMovementInputObject[arg1._TouchMovementInput] = nil
		arg1._TouchMovementInput = nil
	end
	arg1._GamepadSelected = nil
	arg1.WasHeld = false
	arg1.WasHot = false
	arg1.WasSelected = false
end
local function Destroy(arg1) -- Line 606
	--[[ Upvalues[2]:
		[1]: ReleaseInput_Internal_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	for _, v in arg1._Connections do
		v:Disconnect()
	end
	ReleaseInput_Internal_upvr(arg1)
	tbl_3_upvr.ButtonInput_ByGuiObject[arg1.Object] = nil
end
module_7_upvr.Input.Destroy = Destroy
module_7_upvr.Input.Consume = function(arg1) -- Line 616, Named "Consume"
	arg1.InputDirty = false
	return arg1.InputDirty
end
module_7_upvr.Input.Release = function(arg1) -- Line 623, Named "Release"
	--[[ Upvalues[2]:
		[1]: ReleaseInput_Internal_upvr (readonly)
		[2]: ButtonInputResolve_upvr (readonly)
	]]
	ReleaseInput_Internal_upvr(arg1)
	if not arg1._ResolvePending then
		arg1._ResolvePending = true
		task.defer(ButtonInputResolve_upvr, arg1)
	end
end
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 635
	--[[ Upvalues[4]:
		[1]: tbl_3_upvr (readonly)
		[2]: ButtonInputResolve_upvr (readonly)
		[3]: ProcessMouseButtonEnd_upvr (readonly)
		[4]: tbl_17_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local Touch = Enum.UserInputType.Touch
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 30. Error Block 10 start (CF ANALYSIS FAILED)
	ButtonInputResolve_upvr(Touch)
	do
		return
	end
	-- KONSTANTERROR: [39] 30. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 34. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 34. Error Block 11 end (CF ANALYSIS FAILED)
end)
ContextActionService_upvr:BindActionAtPriority("UIButton-PROCESS_NON_BUTTON_GAMEPAD_INPUT", function(arg1, arg2, arg3) -- Line 697, Named "ProcessNonButtonGamepadInput"
	--[[ Upvalues[4]:
		[1]: tbl_17_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: ButtonInputResolve_upvr (readonly)
	]]
	local Pass = Enum.ContextActionResult.Pass
	if tbl_17_upvr[arg3.UserInputType] then
		local var63 = tbl_3_upvr.ButtonInput_ByGuiObject[GuiService_upvr.SelectedObject]
		if var63 and var63._GamepadInput == nil and arg2 == Enum.UserInputState.Begin then
			var63._GamepadInput = arg3
			tbl_3_upvr.ButtonInput_ByGamepadInputObject[arg3] = var63
			ButtonInputResolve_upvr(var63)
			Pass = Enum.ContextActionResult.Sink
		end
	end
	return Pass
end, false, 2147483647, Enum.KeyCode.ButtonA, Enum.KeyCode.Return)
tbl_15_upvr = module_7_upvr.Button
tbl_17_upvr = {}
local var64 = tbl_17_upvr
ButtonInputResolve_upvr = -1000
var64.FancyDetailsMaxZIndex = ButtonInputResolve_upvr
ButtonInputResolve_upvr = UDim2.fromOffset
ProcessMouseButtonEnd_upvr = 1
ButtonInputResolve_upvr = ButtonInputResolve_upvr(0, ProcessMouseButtonEnd_upvr)
var64.ShadowOffset = ButtonInputResolve_upvr
ButtonInputResolve_upvr = UDim.new
ProcessMouseButtonEnd_upvr = 0
ButtonInputResolve_upvr = ButtonInputResolve_upvr(0.5, ProcessMouseButtonEnd_upvr)
var64.FancyPosX = ButtonInputResolve_upvr
ButtonInputResolve_upvr = UDim.new
ProcessMouseButtonEnd_upvr = 0
ButtonInputResolve_upvr = ButtonInputResolve_upvr(0.45, ProcessMouseButtonEnd_upvr)
var64.FancyPosY = ButtonInputResolve_upvr
ButtonInputResolve_upvr = UDim.new
ProcessMouseButtonEnd_upvr = 0
ButtonInputResolve_upvr = ButtonInputResolve_upvr(0.96, ProcessMouseButtonEnd_upvr)
var64.FancySizeX = ButtonInputResolve_upvr
ButtonInputResolve_upvr = UDim.new
ProcessMouseButtonEnd_upvr = 0
ButtonInputResolve_upvr = ButtonInputResolve_upvr(1, ProcessMouseButtonEnd_upvr)
var64.FancySizeY = ButtonInputResolve_upvr
tbl_15_upvr.Properties = var64
function tbl_15_upvr(arg1, arg2) -- Line 756, Named "MonochromeLerp"
	local R = arg1.R
	local G = arg1.G
	local B = arg1.B
	local var69 = arg2 - 0.5
	local var70 = 1 - var69
	return Color3.new(math.clamp(R * var70 + R * var69, 0, 1), math.clamp(G * var70 + G * var69, 0, 1), math.clamp(B * var70 + B * var69, 0, 1))
end
local InlineIcon_upvr = tbl_15_upvr
var64 = {}
local var71_upvr = var64
ButtonInputResolve_upvr = {}
local var72 = ButtonInputResolve_upvr
var72.BorderStrokeColor = module_15_upvr.ButtonStrokeColor1
var72.Color = module_15_upvr.ButtonColor2
ProcessMouseButtonEnd_upvr = module_15_upvr.ButtonColor2
ReleaseInput_Internal_upvr = 0.75
var72.Gradient = InlineIcon_upvr(ProcessMouseButtonEnd_upvr, ReleaseInput_Internal_upvr)
ProcessMouseButtonEnd_upvr = module_15_upvr.ButtonColor2
ReleaseInput_Internal_upvr = 0.5
var72.Highlight = InlineIcon_upvr(ProcessMouseButtonEnd_upvr, ReleaseInput_Internal_upvr)
ProcessMouseButtonEnd_upvr = module_15_upvr.ButtonColor2
ReleaseInput_Internal_upvr = 0.25
var72.Midtone = InlineIcon_upvr(ProcessMouseButtonEnd_upvr, ReleaseInput_Internal_upvr)
var72.TextColor = module_15_upvr.TextColor2
var71_upvr.Idle = var72
var72 = {}
local var73 = var72
var73.BorderStrokeColor = module_15_upvr.ButtonStrokeHotColor1
var73.Color = module_15_upvr.ButtonHotColor2
var71_upvr.Hot = var73
var73 = {}
local var74 = var73
var74.BorderStrokeColor = module_15_upvr.ButtonStrokeHotColor1
var74.Color = module_15_upvr.ButtonSelectColor2
var71_upvr.Selected = var74
var74 = module_15_upvr.CornerRadiusButton
var71_upvr.CornerRadius = var74
var74 = 0.1
var71_upvr.TweenDuration = var74
var74 = {}
local var75_upvr = var74
var75_upvr.Default = var71_upvr
local tbl_19 = {}
ProcessMouseButtonEnd_upvr = {}
local var77 = ProcessMouseButtonEnd_upvr
ReleaseInput_Internal_upvr = module_15_upvr.ButtonStrokeColor1
var77.BorderStrokeColor = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = module_15_upvr.ButtonColor3
var77.Color = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = InlineIcon_upvr(module_15_upvr.ButtonColor3, 0.75)
var77.Gradient = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = InlineIcon_upvr(module_15_upvr.ButtonColor3, 0.5)
var77.Highlight = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = InlineIcon_upvr(module_15_upvr.ButtonColor3, 0.25)
var77.Midtone = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = module_15_upvr.TextColor2
var77.TextColor = ReleaseInput_Internal_upvr
tbl_19.Idle = var77
var77 = {}
local var78 = var77
ReleaseInput_Internal_upvr = module_15_upvr.ButtonStrokeHotColor1
var78.BorderStrokeColor = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = module_15_upvr.ButtonHotColor3
var78.Color = ReleaseInput_Internal_upvr
tbl_19.Hot = var78
var78 = {}
local var79 = var78
ReleaseInput_Internal_upvr = module_15_upvr.ButtonStrokeHotColor1
var79.BorderStrokeColor = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = module_15_upvr.ButtonSelectColor3
var79.Color = ReleaseInput_Internal_upvr
tbl_19.Selected = var79
var79 = module_15_upvr.CornerRadiusButton
tbl_19.CornerRadius = var79
var75_upvr.Deemphasized = tbl_19
local tbl_20 = {}
var79 = {}
local var81 = var79
ReleaseInput_Internal_upvr = module_15_upvr.ButtonStrokeColor1
var81.BorderStrokeColor = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = module_15_upvr.ButtonColor1
var81.Color = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = InlineIcon_upvr(module_15_upvr.ButtonColor1, 0.75)
var81.Gradient = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = InlineIcon_upvr(module_15_upvr.ButtonColor1, 0.5)
var81.Highlight = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = InlineIcon_upvr(module_15_upvr.ButtonColor1, 0.25)
var81.Midtone = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = module_15_upvr.TextColor1
var81.TextColor = ReleaseInput_Internal_upvr
tbl_20.Idle = var81
var81 = {}
local var82 = var81
ReleaseInput_Internal_upvr = module_15_upvr.ButtonStrokeHotColor1
var82.BorderStrokeColor = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = module_15_upvr.ButtonHotColor1
var82.Color = ReleaseInput_Internal_upvr
tbl_20.Hot = var82
var82 = {}
local var83 = var82
ReleaseInput_Internal_upvr = module_15_upvr.ButtonStrokeHotColor1
var83.BorderStrokeColor = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = module_15_upvr.ButtonSelectColor1
var83.Color = ReleaseInput_Internal_upvr
tbl_20.Selected = var83
var83 = {}
local var84 = var83
ReleaseInput_Internal_upvr = module_15_upvr.ButtonStrokeHotColor1
var84.BorderStrokeColor = ReleaseInput_Internal_upvr
ReleaseInput_Internal_upvr = module_15_upvr.ButtonSelectColor2
var84.Color = ReleaseInput_Internal_upvr
tbl_20.Special = var84
var84 = module_15_upvr.CornerRadiusBackground
tbl_20.CornerRadius = var84
var75_upvr.Floating = tbl_20
local tbl_22_upvr = {}
var84 = {}
local var86 = var84
ReleaseInput_Internal_upvr = {}
local var87 = ReleaseInput_Internal_upvr
var87[1] = "Color"
var87[2] = "Gradient"
var87[3] = "Highlight"
var87[4] = "Midtone"
var86.Color = var87
var87 = {}
local var88 = var87
var88[1] = "TextColor"
var86.TextColor = var88
tbl_22_upvr.Properties = var86
var86 = {}
local ApplyShifts = var86
var88 = {}
local var90 = var88
var90[1] = {
	Element = "Disabled";
	Intensity = 1;
}
ApplyShifts.Disabled = var90
var90 = {}
local var92 = var90
var92[1] = {
	Element = "Selected";
	Intensity = 1;
}
ApplyShifts.Fancy = var92
var92 = {}
local ButtonTheme_GenerateDisabled = var92
ButtonTheme_GenerateDisabled[1] = {
	Element = "Hot";
	Intensity = 0.5;
}
ButtonTheme_GenerateDisabled[2] = {
	Element = "Selected";
	Intensity = 1;
}
ApplyShifts.Standard = ButtonTheme_GenerateDisabled
tbl_22_upvr.Themes = ApplyShifts
function ApplyShifts(arg1, arg2, arg3) -- Line 903
	--[[ Upvalues[1]:
		[1]: var12_2_upvr (readonly)
	]]
	local assert_result1 = assert(arg1.Idle)
	for _, v_2 in arg2 do
		for _, v_3 in arg3 do
			local var111
			if v_3.Intensity < 1 then
				var111 = Vector3.new(0, 0, 0):Lerp(v_2.Shift, v_3.Intensity)
			else
				var111 = v_2.Shift
			end
			for _, v_4 in v_2.Properties do
				var12_2_upvr.TableBuildSub(arg1, v_3.Element)[v_4] = var12_2_upvr.Color3ApplyHSVShift_FromVector3(assert(assert_result1[v_4]), var111)
				local _
			end
		end
	end
	return arg1
end
local var97_upvr = ApplyShifts
function ButtonTheme_GenerateDisabled(arg1, arg2, arg3, arg4) -- Line 933, Named "ButtonThemeCreate_FromFancyColors"
	--[[ Upvalues[3]:
		[1]: module_15_upvr (readonly)
		[2]: tbl_22_upvr (readonly)
		[3]: var97_upvr (readonly)
	]]
	local module_6 = {}
	local tbl_5 = {
		BorderStrokeColor = module_15_upvr.ButtonStrokeColor1;
		Color = arg1.Color;
		Gradient = arg1.Gradient;
		Highlight = arg1.Highlight;
		Midtone = arg1.Midtone;
	}
	tbl_5.TextColor = arg2
	module_6.Idle = tbl_5
	module_6.CornerRadius = module_15_upvr.CornerRadiusButton
	local module = {}
	if arg3 then
		local tbl_10 = {}
		tbl_10.Shift = arg3
		tbl_10.Properties = tbl_22_upvr.Properties.Color
		module[#module + 1] = tbl_10
		local clone = table.clone(module_6.Idle)
		clone.BorderStrokeColor = module_15_upvr.ButtonStrokeHotColor1
		module_6.Hot = clone
		module_6.Selected = {
			BorderStrokeColor = module_15_upvr.ButtonStrokeHotColor1;
		}
	end
	if arg4 then
		local tbl_27 = {}
		tbl_27.Shift = arg4
		tbl_27.Properties = tbl_22_upvr.Properties.TextColor
		module[#module + 1] = tbl_27
	end
	return var97_upvr(module_6, module, tbl_22_upvr.Themes.Fancy)
end
module_7_upvr.ButtonThemeCreate_FromFancyColors = ButtonTheme_GenerateDisabled
function ButtonTheme_GenerateDisabled(arg1, arg2, arg3, arg4) -- Line 986, Named "ButtonThemeCreate_FromBaseColors"
	--[[ Upvalues[4]:
		[1]: module_15_upvr (readonly)
		[2]: InlineIcon_upvr (readonly)
		[3]: tbl_22_upvr (readonly)
		[4]: var97_upvr (readonly)
	]]
	local module_13 = {}
	local tbl_26 = {
		BorderStrokeColor = module_15_upvr.ButtonStrokeColor1;
	}
	tbl_26.Color = arg1
	tbl_26.Gradient = InlineIcon_upvr(arg1, 0.75)
	tbl_26.Highlight = InlineIcon_upvr(arg1, 0.5)
	tbl_26.Midtone = InlineIcon_upvr(arg1, 0.25)
	tbl_26.TextColor = arg2
	module_13.Idle = tbl_26
	module_13.CornerRadius = module_15_upvr.CornerRadiusButton
	local module_10 = {}
	if arg3 then
		local tbl_11 = {}
		tbl_11.Shift = arg3
		tbl_11.Properties = tbl_22_upvr.Properties.Color
		module_10[#module_10 + 1] = tbl_11
		module_13.Hot = {
			BorderStrokeColor = module_15_upvr.ButtonStrokeHotColor1;
		}
		module_13.Selected = {
			BorderStrokeColor = module_15_upvr.ButtonStrokeHotColor1;
		}
	end
	if arg4 then
		local tbl_7 = {}
		tbl_7.Shift = arg4
		tbl_7.Properties = tbl_22_upvr.Properties.TextColor
		module_10[#module_10 + 1] = tbl_7
	end
	return var97_upvr(module_13, module_10, tbl_22_upvr.Themes.Standard)
end
module_7_upvr.ButtonThemeCreate_FromBaseColors = ButtonTheme_GenerateDisabled
function ButtonTheme_GenerateDisabled(arg1, arg2, arg3) -- Line 1036
	--[[ Upvalues[2]:
		[1]: tbl_22_upvr (readonly)
		[2]: var97_upvr (readonly)
	]]
	local module_12 = {}
	if arg2 then
		local tbl_13 = {}
		tbl_13.Shift = arg2
		tbl_13.Properties = tbl_22_upvr.Properties.Color
		module_12[#module_12 + 1] = tbl_13
	end
	if arg3 then
		local tbl = {}
		tbl.Shift = arg3
		tbl.Properties = tbl_22_upvr.Properties.TextColor
		module_12[#module_12 + 1] = tbl
	end
	return var97_upvr(arg1, module_12, tbl_22_upvr.Themes.Disabled)
end
module_7_upvr.ButtonTheme_GenerateDisabled = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromBaseColors(module_15_upvr.ChoiceAvailableButtonColor, module_15_upvr.TextColor1, Vector3.new(0, 0, 0.25))
var75_upvr.ChoiceAvailable = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromBaseColors(module_15_upvr.ChoiceActiveButtonColor, module_15_upvr.TextColor1, Vector3.new(0, 0, 0.25))
var75_upvr.ChoiceActive = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromBaseColors(module_15_upvr.ChoiceUnavailableButtonColor, module_15_upvr.TextColor1)
var75_upvr.ChoiceUnavailable = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromBaseColors(module_15_upvr.ButtonColor1:Lerp(module_15_upvr.White, 0.23529411764705882), module_15_upvr.TextColor1, Vector3.new(0, 0, 0.25))
var75_upvr.FloatingLight = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.Accept, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.Accept = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.Action, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.Action = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.Attention, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.Attention = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.BuyCash, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.BuyCash = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.BuyGems, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.BuyGems = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.BuyGold, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.BuyGold = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.BuyRobux, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.BuyRobux = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.BuyStars, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.BuyStars = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.Cancel, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.Cancel = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.Close, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.4000))
var75_upvr.Close = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.Deactivated, module_15_upvr.TextColor3)
var75_upvr.Deactivated = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.Dull, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.2000))
var75_upvr.Dull = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.Light, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.1500))
var75_upvr.Light = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.Manage, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.Manage = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.Success, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.Success = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.Upgrade, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.Upgrade = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.FancyButtonColors.Use, module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000))
var75_upvr.Use = ButtonTheme_GenerateDisabled
ButtonTheme_GenerateDisabled = module_7_upvr.Button
ButtonTheme_GenerateDisabled.Themes = var75_upvr
ButtonTheme_GenerateDisabled = module_7_upvr.Button
ButtonTheme_GenerateDisabled.ButtonTheme_ByCurrencyType = {
	[module_14.CurrencyType.Cash] = var75_upvr.BuyCash;
	[module_14.CurrencyType.Gems] = var75_upvr.BuyGems;
	[module_14.CurrencyType.MemePoints] = var75_upvr.BuyGold;
}
ButtonTheme_GenerateDisabled = {}
local var131_upvr = ButtonTheme_GenerateDisabled
var131_upvr[1] = "Idle"
var131_upvr[2] = "Disabled"
var131_upvr[3] = "Hot"
var131_upvr[4] = "Selected"
var131_upvr[5] = "Special"
local function GetInitialValues_upvr(arg1) -- Line 1192, Named "GetInitialValues"
	--[[ Upvalues[3]:
		[1]: var71_upvr (readonly)
		[2]: var131_upvr (readonly)
		[3]: var12_2_upvr (readonly)
	]]
	local clone_2 = table.clone(var71_upvr.Idle)
	for _, v_5 in var131_upvr do
		local var136 = arg1[v_5]
		local function INLINED() -- Internal function, doesn't exist in bytecode
			for i_6 in clone_2 do
				local var137 = var136[i_6]
				if var137 ~= nil then
					({})[i_6] = var137
					clone_2[i_6] = nil
				end
			end
			return next(clone_2) == nil
		end
		if not var136 or INLINED() then break end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return var12_2_upvr.TableMerge(clone_2, {})
end
local function _(arg1, arg2) -- Line 1218, Named "GetSpecificInitialValue"
	--[[ Upvalues[2]:
		[1]: var131_upvr (readonly)
		[2]: var75_upvr (readonly)
	]]
	for _, v_6 in var131_upvr do
		local var140 = arg1[v_6]
		if var140 and var140[arg2] then
			return var140[arg2]
		end
	end
	return var75_upvr.Default[arg2]
end
local tbl_6_upvr = {
	[module_7_upvr.IconLocation.Left] = Enum.HorizontalAlignment.Left;
	[module_7_upvr.IconLocation.LeftClose] = Enum.HorizontalAlignment.Left;
	[module_7_upvr.IconLocation.Right] = Enum.HorizontalAlignment.Right;
	[module_7_upvr.IconLocation.RightClose] = Enum.HorizontalAlignment.Right;
}
local tbl_8_upvr = {
	[module_7_upvr.IconLocation.Left] = 1;
	[module_7_upvr.IconLocation.LeftClose] = 0.25;
	[module_7_upvr.IconLocation.Right] = 1;
	[module_7_upvr.IconLocation.RightClose] = 0.25;
}
local function GetGamepadDims_upvr(arg1) -- Line 1247, Named "GetGamepadDims"
	--[[ Upvalues[4]:
		[1]: tbl_6_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: Utility_upvr (readonly)
	]]
	local var143 = tbl_6_upvr[arg1]
	local var144 = 1.5 * module_4_upvr.EmSize * Utility_upvr // 1
	local var145
	if var143 == Enum.HorizontalAlignment.Left then
		var145 = UDim2.new(0, -(var144 + tbl_8_upvr[arg1] * module_4_upvr.EmSize // 1), 0.5, 0)
	elseif var143 == Enum.HorizontalAlignment.Right then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var145 = UDim2.new(1, tbl_8_upvr[arg1] * module_4_upvr.EmSize // 1, 0.5, 0)
	end
	return var145, UDim2.fromOffset(var144, var144)
end
local function BuildTweenSpec_upvr(arg1, arg2, arg3, arg4) -- Line 1271, Named "BuildTweenSpec"
	--[[ Upvalues[3]:
		[1]: module_11_upvr (readonly)
		[2]: var75_upvr (readonly)
		[3]: var12_2_upvr (readonly)
	]]
	local TweenDuration = arg1.Theme.TweenDuration
	if not TweenDuration then
		TweenDuration = var75_upvr.Default.TweenDuration
	end
	local any_TableBuildSub_result1 = var12_2_upvr.TableBuildSub(arg1._TweenSpecs_ByThemeElement, arg4)
	local module_3 = {}
	module_3.Object = arg2
	module_3.Property = arg3
	module_3.Tween = module_11_upvr.new(arg2[arg3], TweenDuration)
	any_TableBuildSub_result1[#any_TableBuildSub_result1 + 1] = module_3
	return module_3
end
local function _(arg1) -- Line 1304, Named "GetParent"
	local Wrapper_2 = arg1.Wrapper
	if not Wrapper_2 then
		Wrapper_2 = arg1.Button
	end
	return Wrapper_2
end
module_7_upvr.Button.AddImage = function(arg1, arg2, arg3) -- Line 1308, Named "AddImage"
	--[[ Upvalues[4]:
		[1]: GetInitialValues_upvr (readonly)
		[2]: var12_2_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: BuildTweenSpec_upvr (readonly)
	]]
	local tbl_2 = {
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}
	local var151 = ""
	tbl_2.Image = var151
	if arg3 then
		var151 = GetInitialValues_upvr(arg1.Theme).TextColor
	else
		var151 = nil
	end
	tbl_2.ImageColor3 = var151
	var151 = arg1.Wrapper
	local var152 = var151
	if not var152 then
		var152 = arg1.Button
	end
	tbl_2.Parent = var152
	local any_I_result1 = var12_2_upvr.I("ImageLabel", module_4_upvr.Properties.Centered, tbl_2, arg2)
	arg1.Image = any_I_result1
	if arg3 then
		BuildTweenSpec_upvr(arg1, any_I_result1, "ImageColor3", "TextColor")
	end
	return arg1
end
module_7_upvr.Button.AddLabel = function(arg1, arg2) -- Line 1335, Named "AddLabel"
	--[[ Upvalues[5]:
		[1]: GetInitialValues_upvr (readonly)
		[2]: var12_2_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: module_15_upvr (readonly)
		[5]: BuildTweenSpec_upvr (readonly)
	]]
	local tbl_23 = {
		FontFace = module_15_upvr.FontFaceNormal;
		TextColor3 = GetInitialValues_upvr(arg1.Theme).TextColor;
	}
	local Wrapper = arg1.Wrapper
	if not Wrapper then
		Wrapper = arg1.Button
	end
	tbl_23.Parent = Wrapper
	local any_I_result1_2 = var12_2_upvr.I("TextLabel", module_4_upvr.Properties.Centered, module_4_upvr.Properties.Text_Scaled, tbl_23, arg2)
	arg1.Label = any_I_result1_2
	BuildTweenSpec_upvr(arg1, any_I_result1_2, "TextColor3", "TextColor")
	return arg1
end
module_7_upvr.Button.AddLabelShadow = function(arg1, arg2) -- Line 1359, Named "AddLabelShadow"
	--[[ Upvalues[3]:
		[1]: var12_2_upvr (readonly)
		[2]: module_15_upvr (readonly)
		[3]: module_7_upvr (readonly)
	]]
	arg1.LabelShadow = var12_2_upvr.C(arg1.Label, {
		TextColor3 = module_15_upvr.Black;
		Position = arg1.Label.Position + module_7_upvr.Button.Properties.ShadowOffset;
		ZIndex = arg1.Label.ZIndex - 1;
		Parent = arg1.Label.Parent;
	}, arg2)
	return arg1
end
module_7_upvr.Button.AddLabelStroke = function(arg1, arg2) -- Line 1378, Named "AddLabelStroke"
	--[[ Upvalues[3]:
		[1]: var12_2_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_15_upvr (readonly)
	]]
	arg1.LabelStroke = var12_2_upvr.I("UIStroke", module_4_upvr.Properties.StrokeText, {
		Archivable = false;
		Color = module_15_upvr.TextStrokeColor1;
		Parent = arg1.Label;
	}, arg2)
	return arg1
end
module_7_upvr.Button.AddLabelShadowStroke = function(arg1, arg2) -- Line 1399, Named "AddLabelShadowStroke"
	--[[ Upvalues[3]:
		[1]: var12_2_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_15_upvr (readonly)
	]]
	arg1.LabelShadowStroke = var12_2_upvr.I("UIStroke", module_4_upvr.Properties.StrokeText, {
		Archivable = false;
		Color = module_15_upvr.Black;
		Parent = arg1.LabelShadow;
	}, arg2)
	return arg1
end
module_7_upvr.Button.AddWrapper = function(arg1) -- Line 1420, Named "AddWrapper"
	--[[ Upvalues[2]:
		[1]: var12_2_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	local tbl_28 = {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
	}
	local Wrapper_3 = arg1.Wrapper
	if not Wrapper_3 then
		Wrapper_3 = arg1.Button
	end
	tbl_28.Parent = Wrapper_3
	arg1.Wrapper = var12_2_upvr.I("Frame", module_4_upvr.Properties.Centered, tbl_28)
	return arg1
end
module_7_upvr.Button.ApplyThemeElement = function(arg1, arg2, arg3, arg4) -- Line 1437, Named "ApplyThemeElement"
	--[[ Upvalues[1]:
		[1]: BuildTweenSpec_upvr (readonly)
	]]
	arg2[arg3] = BuildTweenSpec_upvr(arg1, arg2, arg3, arg4).Tween.Value
end
local function _(arg1, arg2) -- Line 1452, Named "ButtonCornerCreate"
	--[[ Upvalues[2]:
		[1]: var12_2_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	local module_5 = {}
	local var163
	if arg1.CornerRadius then
		var163 = module_4_upvr.ComputeCornerDims(arg1.CornerRadius).RadiusUDim
	else
		var163 = nil
	end
	module_5.CornerRadius = var163
	module_5.Parent = arg2
	return var12_2_upvr.I("UICorner", module_5)
end
local function ButtonCreate_upvr(arg1, arg2, arg3) -- Line 1466, Named "ButtonCreate"
	--[[ Upvalues[6]:
		[1]: var75_upvr (readonly)
		[2]: GetInitialValues_upvr (readonly)
		[3]: var12_2_upvr (readonly)
		[4]: module_4_upvr (readonly)
		[5]: module_7_upvr (readonly)
		[6]: BuildTweenSpec_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var164 = arg3
	if not var164 then
		var164 = var75_upvr.Default
	end
	local tbl_12 = {
		BackgroundColor3 = GetInitialValues_upvr(var164).Color;
	}
	tbl_12.Parent = arg2
	local any_I_result1_3 = var12_2_upvr.I("TextButton", module_4_upvr.Properties.Button, tbl_12)
	local module_2 = {
		_TweenSpecs_ByThemeElement = {};
		Dirty = true;
	}
	module_2.Style = arg1
	module_2.Button = any_I_result1_3
	local tbl_4 = {}
	local tbl_21 = {}
	if var164.CornerRadius then
	else
	end
	tbl_21.CornerRadius = nil
	tbl_21.Parent = any_I_result1_3
	tbl_4[1] = var12_2_upvr.I("UICorner", tbl_21)
	module_2.Corners = tbl_4
	module_2.Theme = var164
	module_2.Input = module_7_upvr.Input.Create(any_I_result1_3)
	BuildTweenSpec_upvr(module_2, any_I_result1_3, "BackgroundColor3", "Color")
	return module_2
end
module_7_upvr.Button.Create = function(arg1, arg2) -- Line 1505, Named "Create"
	--[[ Upvalues[2]:
		[1]: ButtonCreate_upvr (readonly)
		[2]: module_7_upvr (readonly)
	]]
	return ButtonCreate_upvr(module_7_upvr.ButtonStyle.Standard, arg1, arg2)
end
module_7_upvr.Button.CreateFancyBase = function(arg1, arg2) -- Line 1517, Named "CreateFancyBase"
	--[[ Upvalues[7]:
		[1]: ButtonCreate_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: GetInitialValues_upvr (readonly)
		[4]: var12_2_upvr (readonly)
		[5]: module_4_upvr (readonly)
		[6]: BuildTweenSpec_upvr (readonly)
		[7]: module_15_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local ButtonCreate_result1 = ButtonCreate_upvr(module_7_upvr.ButtonStyle.FancyBase, arg1, arg2)
	local Theme = ButtonCreate_result1.Theme
	local GetInitialValues_result1 = GetInitialValues_upvr(Theme)
	local FancyDetailsMaxZIndex = module_7_upvr.Button.Properties.FancyDetailsMaxZIndex
	ButtonCreate_result1.Border = var12_2_upvr.I("UIStroke", module_4_upvr.Properties.StrokeBorder, {
		Color = GetInitialValues_result1.BorderStrokeColor;
		Parent = ButtonCreate_result1.Button;
	})
	BuildTweenSpec_upvr(ButtonCreate_result1, ButtonCreate_result1.Border, "Color", "BorderStrokeColor")
	local any_I_result1_5 = var12_2_upvr.I("Frame", {
		BackgroundColor3 = GetInitialValues_result1.Midtone;
		BorderSizePixel = 0;
		Size = UDim2.fromScale(1, 0.9);
		ZIndex = FancyDetailsMaxZIndex - 2;
		Parent = ButtonCreate_result1.Button;
	})
	local tbl_9 = {}
	local var178
	if Theme.CornerRadius then
		var178 = module_4_upvr.ComputeCornerDims(Theme.CornerRadius).RadiusUDim
	else
		var178 = nil
	end
	tbl_9.CornerRadius = var178
	tbl_9.Parent = any_I_result1_5
	ButtonCreate_result1.Corners[#ButtonCreate_result1.Corners + 1] = var12_2_upvr.I("UICorner", tbl_9)
	BuildTweenSpec_upvr(ButtonCreate_result1, any_I_result1_5, "BackgroundColor3", "Midtone")
	local any_I_result1_6 = var12_2_upvr.I("Frame", {
		BackgroundColor3 = GetInitialValues_result1.Highlight;
		BorderSizePixel = 0;
		Size = UDim2.fromScale(1, 0.45);
		ZIndex = FancyDetailsMaxZIndex - 1;
		Parent = ButtonCreate_result1.Button;
	})
	var178 = {}
	if Theme.CornerRadius then
		-- KONSTANTWARNING: GOTO [164] #116
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [163] 115. Error Block 22 start (CF ANALYSIS FAILED)
	var178.CornerRadius = nil
	var178.Parent = any_I_result1_6
	ButtonCreate_result1.Corners[#ButtonCreate_result1.Corners + 1] = var12_2_upvr.I("UICorner", var178)
	BuildTweenSpec_upvr(ButtonCreate_result1, any_I_result1_6, "BackgroundColor3", "Highlight")
	local tbl_24 = {
		BackgroundColor3 = GetInitialValues_result1.Gradient;
		BorderSizePixel = 0;
	}
	var178 = 1
	tbl_24.Size = UDim2.fromScale(1, var178)
	tbl_24.ZIndex = FancyDetailsMaxZIndex
	tbl_24.Parent = ButtonCreate_result1.Button
	local any_I_result1_4 = var12_2_upvr.I("Frame", tbl_24)
	var178 = var12_2_upvr
	var178 = "UICorner"
	local tbl_18 = {}
	if Theme.CornerRadius then
	else
	end
	tbl_18.CornerRadius = nil
	tbl_18.Parent = any_I_result1_4
	ButtonCreate_result1.Corners[#ButtonCreate_result1.Corners + 1] = var178.I(var178, tbl_18)
	local tbl_14 = {}
	var178 = module_15_upvr.White
	tbl_14.Color = ColorSequence.new(var178)
	tbl_14.Rotation = 90
	var178 = 0.4
	tbl_14.Transparency = NumberSequence.new(var178, 1)
	tbl_14.Parent = any_I_result1_4
	var12_2_upvr.I("UIGradient", tbl_14)
	var178 = "Gradient"
	BuildTweenSpec_upvr(ButtonCreate_result1, any_I_result1_4, "BackgroundColor3", var178)
	do
		return ButtonCreate_result1
	end
	-- KONSTANTERROR: [163] 115. Error Block 22 end (CF ANALYSIS FAILED)
end
module_7_upvr.Button.CreateFancyMinimal = function(arg1, arg2, arg3, arg4) -- Line 1596, Named "CreateFancyMinimal"
	--[[ Upvalues[2]:
		[1]: module_7_upvr (readonly)
		[2]: module_15_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_CreateFancyBase_result1 = module_7_upvr.Button.CreateFancyBase(arg1, arg2)
	any_CreateFancyBase_result1.Style = module_7_upvr.ButtonStyle.FancyMinimal
	local var186
	if not var186 then
		var186 = {}
	end
	assert(var186)
	local AnchorPoint = var186.AnchorPoint
	if not AnchorPoint then
		AnchorPoint = Vector2.one * 0.5
	end
	var186.AnchorPoint = AnchorPoint
	AnchorPoint = var186.Position
	local var188 = AnchorPoint
	if not var188 then
		var188 = UDim2.new(module_7_upvr.Button.Properties.FancyPosX, module_7_upvr.Button.Properties.FancyPosY)
	end
	var186.Position = var188
	var188 = var186.Size
	local var189 = var188
	if not var189 then
		var189 = UDim2.new(module_7_upvr.Button.Properties.FancySizeX, module_7_upvr.Button.Properties.FancySizeY)
	end
	var186.Size = var189
	if not var186.Font then
		if not var186.FontFace then
			var186.FontFace = module_15_upvr.FontFaceFancy
		end
	end
	module_7_upvr.Button.AddLabel(any_CreateFancyBase_result1, var186)
	if not arg4 then
		local tbl_25 = {}
	end
	assert(tbl_25)
	local Transparency_2 = tbl_25.Transparency
	if not Transparency_2 then
		Transparency_2 = module_15_upvr.TextStrokeButtonFancyMinimalTransparency
	end
	tbl_25.Transparency = Transparency_2
	module_7_upvr.Button.AddLabelStroke(any_CreateFancyBase_result1, tbl_25)
	return any_CreateFancyBase_result1
end
module_7_upvr.Button.CreateFancy = function(arg1, arg2, arg3, arg4) -- Line 1650, Named "CreateFancy"
	--[[ Upvalues[2]:
		[1]: module_15_upvr (readonly)
		[2]: module_7_upvr (readonly)
	]]
	local var192 = arg4
	if not var192 then
		var192 = {}
	end
	local Transparency = var192.Transparency
	if not Transparency then
		Transparency = module_15_upvr.TextStrokeButtonFancyTransparency
	end
	var192.Transparency = Transparency
	local any_CreateFancyMinimal_result1 = module_7_upvr.Button.CreateFancyMinimal(arg1, arg2, arg3, var192)
	any_CreateFancyMinimal_result1.Style = module_7_upvr.ButtonStyle.Fancy
	module_7_upvr.Button.AddLabelShadow(any_CreateFancyMinimal_result1)
	module_7_upvr.Button.AddLabelShadowStroke(any_CreateFancyMinimal_result1, var192)
	return any_CreateFancyMinimal_result1
end
module_7_upvr.Button.Destroy = function(arg1) -- Line 1676, Named "Destroy"
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	if arg1._GamepadBindState then
		module_7_upvr.Button.UnbindFromKeyCode(arg1)
	end
	module_7_upvr.Input.Destroy(arg1.Input)
	arg1.Button:Destroy()
	table.clear(arg1._TweenSpecs_ByThemeElement)
end
local any_ByteCounterCreate_result1_upvr = var12_2_upvr.ByteCounterCreate()
module_7_upvr.Button.BindToKeyCode = function(arg1, arg2, arg3, arg4) -- Line 1696, Named "BindToKeyCode"
	--[[ Upvalues[10]:
		[1]: module_7_upvr (readonly)
		[2]: var131_upvr (readonly)
		[3]: var75_upvr (readonly)
		[4]: GetGamepadDims_upvr (readonly)
		[5]: var12_2_upvr (readonly)
		[6]: any_ByteCounterCreate_result1_upvr (readonly)
		[7]: module_8_upvr (readonly)
		[8]: BuildTweenSpec_upvr (readonly)
		[9]: UserInputService_upvr (readonly)
		[10]: ContextActionService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
	if not arg4 then
	end
	local _GamepadBindState_3 = arg1._GamepadBindState
	if _GamepadBindState_3 then
		if _GamepadBindState_3.KeyCode == arg3 then
		else
		end
		_GamepadBindState_3._Callback = arg2
		_GamepadBindState_3.KeyCode = arg3
		-- KONSTANTWARNING: GOTO [130] #91
	end
	-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 16. Error Block 32 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 16. Error Block 32 end (CF ANALYSIS FAILED)
end
module_7_upvr.Button.UnbindFromKeyCode = function(arg1) -- Line 1796, Named "UnbindFromKeyCode"
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _GamepadBindState_2 = arg1._GamepadBindState
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 24. Error Block 12 start (CF ANALYSIS FAILED)
	if _GamepadBindState_2._InputBound then
		_GamepadBindState_2._InputBound = false
		ContextActionService_upvr:UnbindAction(_GamepadBindState_2._InputBind)
	end
	-- KONSTANTERROR: [34] 24. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 32. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 32. Error Block 10 end (CF ANALYSIS FAILED)
end
local module_16_upvr = {
	[module_7_upvr.ButtonState.Idle] = "Idle";
	[module_7_upvr.ButtonState.Hot] = "Hot";
	[module_7_upvr.ButtonState.Selected] = "Selected";
	[module_7_upvr.ButtonState.Disabled] = "Disabled";
	[module_7_upvr.ButtonState.Special] = "Special";
}
function module_7_upvr.GetThemeFromInput(arg1, arg2, arg3) -- Line 1839
	--[[ Upvalues[1]:
		[1]: module_16_upvr (readonly)
	]]
	if arg3 then
		return arg2[module_16_upvr[arg3]]
	end
	if arg1.Enabled then
		if arg1.Selected then
			return arg2.Selected
		end
		if arg1.Held then
			return arg2.Selected
		end
		if arg1.Hot then
			return arg2.Hot
		end
		return arg2.Idle
	end
	local Disabled = arg2.Disabled
	if not Disabled then
		Disabled = arg2.Idle
	end
	return Disabled
end
module_7_upvr.Button.AdjustText = function(arg1, arg2, arg3, arg4, arg5) -- Line 1875, Named "AdjustText"
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 35 start (CF ANALYSIS FAILED)
	if arg2 then
		-- KONSTANTWARNING: GOTO [18] #14
	end
	-- KONSTANTERROR: [2] 3. Error Block 35 end (CF ANALYSIS FAILED)
end
module_7_upvr.Button.SetText = function(arg1, arg2) -- Line 1912, Named "SetText"
	arg1.Label.Text = arg2
	if arg1.LabelShadow then
		arg1.LabelShadow.Text = arg2
	end
end
module_7_upvr.Button.Refresh = function(arg1, arg2) -- Line 1923, Named "Refresh"
	--[[ Upvalues[2]:
		[1]: module_7_upvr (readonly)
		[2]: module_11_upvr (readonly)
	]]
	local any_GetThemeFromInput_result1_2 = module_7_upvr.GetThemeFromInput(arg1.Input, arg1.Theme, arg1.StateOverride)
	for i_8, v_7 in arg1._TweenSpecs_ByThemeElement do
		for _, v_8 in v_7 do
			local var209
			if any_GetThemeFromInput_result1_2 then
				var209 = any_GetThemeFromInput_result1_2[i_8]
			else
				var209 = nil
			end
			module_11_upvr.Reset(v_8.Tween, arg2, var209)
			if v_8.Tween.Dirty then
				var209 = v_8.Tween
				v_8.Object[v_8.Property] = var209.Value
			end
		end
	end
end
local tbl_16_upvr = {
	[module_7_upvr.ButtonStyle.FancyBase] = function(arg1) -- Line 1948
		--[[ Upvalues[1]:
			[1]: module_4_upvr (readonly)
		]]
		arg1.Border.Thickness = module_4_upvr.ScaledSize.ButtonFancyBorder * (arg1.EmScale or 1)
	end;
	[module_7_upvr.ButtonStyle.FancyMinimal] = function(arg1) -- Line 1953
		--[[ Upvalues[1]:
			[1]: module_4_upvr (readonly)
		]]
		local var213 = arg1.EmScale or 1
		arg1.Border.Thickness = module_4_upvr.ScaledSize.ButtonFancyBorder * var213
		arg1.LabelStroke.Thickness = module_4_upvr.ScaledSize.ButtonFancyTextStrokeMinimal * var213
	end;
	[module_7_upvr.ButtonStyle.Fancy] = function(arg1) -- Line 1959
		--[[ Upvalues[1]:
			[1]: module_4_upvr (readonly)
		]]
		local var215 = arg1.EmScale or 1
		arg1.Border.Thickness = module_4_upvr.ScaledSize.ButtonFancyBorder * var215
		arg1.LabelShadowStroke.Thickness = module_4_upvr.ScaledSize.ButtonFancyTextStroke * var215
		arg1.LabelStroke.Thickness = module_4_upvr.ScaledSize.ButtonFancyTextStroke * var215
	end;
}
module_7_upvr.Button.Update = function(arg1, arg2) -- Line 1968, Named "Update"
	--[[ Upvalues[6]:
		[1]: module_7_upvr (readonly)
		[2]: module_11_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: tbl_16_upvr (readonly)
		[5]: module_8_upvr (readonly)
		[6]: GetGamepadDims_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_GetThemeFromInput_result1 = module_7_upvr.GetThemeFromInput(arg1.Input, arg1.Theme, arg1.StateOverride)
	if any_GetThemeFromInput_result1 then
		for i_10, v_9 in arg1._TweenSpecs_ByThemeElement do
			for _, v_10 in v_9 do
				local var257 = any_GetThemeFromInput_result1[i_10]
				if var257 then
					module_11_upvr.Begin(v_10.Tween, arg2, var257)
				end
			end
		end
	end
	local var258
	for i_12, v_11 in arg1._TweenSpecs_ByThemeElement do
		for _, v_12 in v_11 do
			module_11_upvr.Update(v_12.Tween, arg2)
			if v_12.Tween.Dirty then
				v_12.Object[v_12.Property] = v_12.Tween.Value
			end
		end
	end
	if module_4_upvr.EmSizeDirty or arg1.Dirty then
		if not arg1.CornerRadiusOverride then
			local CornerRadius = arg1.Theme.CornerRadius
		end
		if CornerRadius then
			v_11 = module_4_upvr
			i_12 = v_11.ComputeCornerDims
			v_11 = CornerRadius * (arg1.EmScale or 1)
			i_12 = i_12(v_11)
			i_12 = arg1.Corners
			v_11 = nil
			for _, v_13 in i_12, v_11 do
				v_13.CornerRadius = i_12.RadiusUDim
				local _
			end
		end
		i_12 = tbl_16_upvr
		v_11 = arg1.Style
		local var261 = i_12[v_11]
		if var261 then
			i_12 = var261
			v_11 = arg1
			i_12(v_11)
		end
		i_12 = false
		arg1.Dirty = i_12
	end
	local _GamepadBindState = arg1._GamepadBindState
	local var263
	if _GamepadBindState then
		v_11 = module_8_upvr
		i_12 = v_11.Mode
		v_11 = module_8_upvr.Gamepad
		if i_12 ~= v_11 then
			var263 = false
		else
			var263 = true
		end
		_GamepadBindState.Icon.Visible = var263
		var263 = module_4_upvr
		if var263.EmSizeDirty then
			var263 = _GamepadBindState.IconLocation
			local GetGamepadDims_result1, GetGamepadDims_result2 = GetGamepadDims_upvr(var263)
			i_12 = _GamepadBindState.Icon
			i_12.Position = GetGamepadDims_result1
			i_12 = _GamepadBindState.Icon
			i_12.Size = GetGamepadDims_result2
		end
	end
end
InlineIcon_upvr = module_7_upvr.Button
var71_upvr = {}
local var266 = var71_upvr
var75_upvr = {}
var266.Create = var75_upvr
var75_upvr = {}
var266.GetSize = var75_upvr
var75_upvr = {}
var266.Resize = var75_upvr
InlineIcon_upvr.Common = var266
function InlineIcon_upvr(arg1, arg2) -- Line 2050, Named "Close"
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local any_CreateFancyMinimal_result1_upvr = module_7_upvr.Button.CreateFancyMinimal(arg1, module_7_upvr.Button.Themes.Close, {
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(0.75, 0.75);
		Text = 'X';
	})
	any_CreateFancyMinimal_result1_upvr.Button.Modal = true
	if arg2 then
		any_CreateFancyMinimal_result1_upvr.Button.Activated:Connect(function(arg1_5) -- Line 2069
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: any_CreateFancyMinimal_result1_upvr (readonly)
			]]
			arg2(any_CreateFancyMinimal_result1_upvr, arg1_5)
		end)
		module_7_upvr.Button.BindToKeyCode(any_CreateFancyMinimal_result1_upvr, arg2, Enum.KeyCode.ButtonB)
	end
	return any_CreateFancyMinimal_result1_upvr
end
tbl_22_upvr = module_7_upvr.Button
var75_upvr = tbl_22_upvr.Common
var266 = var75_upvr.Create
var266.Close = InlineIcon_upvr
function InlineIcon_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 2084, Named "InlineIcon"
	--[[ Upvalues[2]:
		[1]: module_7_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	local any_AddImage_result1 = module_7_upvr.Button.AddImage(module_7_upvr.Button.CreateFancy(arg1, arg2, arg5, arg6), arg3, arg4)
	any_AddImage_result1.Bounds = module_4_upvr.CachedTextBounds_FromLabel(any_AddImage_result1.Label)
	return any_AddImage_result1
end
tbl_22_upvr = module_7_upvr.Button
var75_upvr = tbl_22_upvr.Common
var266 = var75_upvr.Create
var266.InlineIcon = InlineIcon_upvr
function InlineIcon_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 2112, Named "InlineIcon"
	--[[ Upvalues[2]:
		[1]: module_7_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var271
	if arg4 then
	else
		var271 = module_4_upvr.EmSize
	end
	var271 = nil
	module_4_upvr.CachedTextBoundsUpdate(arg1.Bounds, arg1.Label.Text, arg2)
	if arg1.Image.Visible then
		local var272 = arg5
		if not var272 then
			var272 = (arg6 or arg3) * 0.25 // 1
		end
		var271 = math.min(arg1.Bounds.X, (arg4 or math.huge) * module_7_upvr.Button.Properties.FancySizeX.Scale // 1 - arg3) + arg3 + var272
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var271 = math.min(arg1.Bounds.X, (arg4 or math.huge) * module_7_upvr.Button.Properties.FancySizeX.Scale // 1 - arg3)
	end
	local var273 = arg4
	if not var273 then
		var273 = var271 + var271 * 2
	end
	return var273
end
tbl_22_upvr = module_7_upvr.Button
var75_upvr = tbl_22_upvr.Common
var266 = var75_upvr.GetSize
var266.InlineIcon = InlineIcon_upvr
function InlineIcon_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 2153, Named "InlineIcon"
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local any_InlineIcon_result1 = module_7_upvr.Button.Common.GetSize.InlineIcon(arg1, arg2, arg3, arg4, arg5, arg7)
	local var275
	if arg6 then
		var275 += arg6
	end
	local var276
	local var277
	if arg1.Image.Visible then
		if not arg6 then
			var275 += -0.0175
		end
		local var278 = arg7 or arg3
		local var279 = arg5
		if not var279 then
			var279 = var278 * 0.25 // 1
		end
		var277 = math.min(arg1.Bounds.X, (any_InlineIcon_result1 or math.huge) * module_7_upvr.Button.Properties.FancySizeX.Scale // 1 - arg3)
		var276 = var277 + arg3 + var279
		arg1.Image.Size = UDim2.fromOffset(arg3, var278)
		arg1.Image.Position = UDim2.new(UDim.new(0, (any_InlineIcon_result1 * var275 - (var276 - arg3) * 0.5) // 1), module_7_upvr.Button.Properties.FancyPosY)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var277 = math.min(arg1.Bounds.X, (any_InlineIcon_result1 or math.huge) * module_7_upvr.Button.Properties.FancySizeX.Scale // 1 - arg3)
		var276 = var277
	end
	module_7_upvr.Button.AdjustText(arg1, (any_InlineIcon_result1 * var275 + (var276 - var277) * 0.5) // 1, nil, var277, arg2)
	return any_InlineIcon_result1
end
tbl_22_upvr = module_7_upvr.Button
var75_upvr = tbl_22_upvr.Common
var266 = var75_upvr.Resize
var266.InlineIcon = InlineIcon_upvr
InlineIcon_upvr = var12_2_upvr.TableFreezeAll
var266 = module_7_upvr
InlineIcon_upvr(var266)
return module_7_upvr