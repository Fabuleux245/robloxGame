-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:08
-- Luau version 6, Types version 3
-- Time taken: 0.005619 seconds

local Parent = script.Parent
local ContextActionService_upvr = game:GetService("ContextActionService")
local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
local CorePackages = game:GetService("CorePackages")
local Interface_upvr = require(Parent.Interface)
local getFFlagPointAndClickCursor_upvr = require(Parent.getFFlagPointAndClickCursor)
local var7_result1_upvr = getFFlagPointAndClickCursor_upvr()
local module = {}
local zero_vector2_upvw_2 = Vector2.new()
local zero_vector2_upvw = Vector2.new()
local var12_upvw = false
local var13_upvw
local var14_upvw
local var15_upvw
local var16_upvw = false
local Properties_upvr = require(Parent.Properties)
local function processThumbstickInput_upvr(arg1) -- Line 37, Named "processThumbstickInput"
	--[[ Upvalues[1]:
		[1]: Properties_upvr (readonly)
	]]
	local var18 = 0
	local var19 = 0
	if Properties_upvr.ThumbstickDeadzone <= arg1.Magnitude then
		local arctangent = math.atan2(arg1.y, arg1.x)
		local absolute_2 = math.abs(math.cos(arctangent) * Properties_upvr.ThumbstickDeadzone)
		local absolute = math.abs(math.sin(arctangent) * Properties_upvr.ThumbstickDeadzone)
		var18 = math.max(math.abs(arg1.x) - absolute_2, 0) / (1 - absolute_2) * math.sign(arg1.x)
		var19 = math.max(math.abs(arg1.y) - absolute, 0) / (1 - absolute) * math.sign(arg1.y)
	end
	return Vector2.new(var18, -var19)
end
local function onThumbstick2Input_upvr(arg1, arg2, arg3) -- Line 50, Named "onThumbstick2Input"
	--[[ Upvalues[1]:
		[1]: zero_vector2_upvw (read and write)
	]]
	if arg2 == Enum.UserInputState.Change then
		zero_vector2_upvw = Vector2.new(arg3.Position.x, arg3.Position.y * -1)
		return Enum.ContextActionResult.Sink
	end
	zero_vector2_upvw = Vector2.new()
	return Enum.ContextActionResult.Pass
end
local function _(arg1) -- Line 61, Named "getRectCenter"
	return (arg1.Min + arg1.Max) / 2
end
local var23_upvw = false
local var24_upvw
local function processPreviewEnabled_upvr(arg1) -- Line 65, Named "processPreviewEnabled"
	--[[ Upvalues[6]:
		[1]: var7_result1_upvr (readonly)
		[2]: var23_upvw (read and write)
		[3]: var13_upvw (read and write)
		[4]: Interface_upvr (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: var24_upvw (read and write)
	]]
	assert(var7_result1_upvr, "processPreviewEnabled should only be called when FFlagPointAndClickCursor is true")
	if arg1 and not var23_upvw then
		if var13_upvw then
			local SelectionRect2D_4 = var13_upvw.SelectionRect2D
			Interface_upvr:EnableUI((SelectionRect2D_4.Min + SelectionRect2D_4.Max) / 2)
		else
			local SelectionRect2D_3 = GuiService_upvr.SelectedObject.SelectionRect2D
			Interface_upvr:EnableUI((SelectionRect2D_3.Min + SelectionRect2D_3.Max) / 2)
		end
		var23_upvw = true
	elseif not arg1 and var23_upvw then
		Interface_upvr:DisableUI()
		var23_upvw = false
	end
	if var24_upvw then
		var24_upvw:Disconnect()
	end
	if var23_upvw and GuiService_upvr.SelectedObject then
		var24_upvw = GuiService_upvr.SelectedObject:GetPropertyChangedSignal("SelectionRect2D"):Connect(function() -- Line 85
			--[[ Upvalues[3]:
				[1]: var23_upvw (copied, read and write)
				[2]: Interface_upvr (copied, readonly)
				[3]: GuiService_upvr (copied, readonly)
			]]
			if var23_upvw then
				local SelectionRect2D_2 = GuiService_upvr.SelectedObject.SelectionRect2D
				Interface_upvr:TweenCursorPosition((SelectionRect2D_2.Min + SelectionRect2D_2.Max) / 2)
			end
		end)
	end
	if arg1 then
		local SelectionRect2D = GuiService_upvr.SelectedObject.SelectionRect2D
		Interface_upvr:TweenCursorPosition((SelectionRect2D.Min + SelectionRect2D.Max) / 2)
	end
end
local function onThumbstick1Input_upvr() -- Line 97, Named "onThumbstick1Input"
	--[[ Upvalues[6]:
		[1]: var7_result1_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: processThumbstickInput_upvr (readonly)
		[5]: var16_upvw (read and write)
		[6]: processPreviewEnabled_upvr (readonly)
	]]
	assert(var7_result1_upvr, "onThumbstick1Input should only be called when FFlagPointAndClickCursor is true")
	if GuiService_upvr.SelectedObject then
		local var40
		for i, v in UserInputService_upvr:GetGamepadState(Enum.UserInputType.Gamepad1), nil do
			if v.KeyCode == Enum.KeyCode.Thumbstick1 then
				var40 = processThumbstickInput_upvr(v.Position)
			end
		end
		if var16_upvw and var40 == Vector2.zero then
			var16_upvw = false
		end
		local var41 = false
		if var40 ~= Vector2.zero then
			var41 = var16_upvw
			if var41 then
				i = GuiService_upvr
				if i.SelectedCoreObject ~= nil then
					var41 = false
				else
					var41 = true
				end
			end
		end
		processPreviewEnabled_upvr(var41)
	else
		processPreviewEnabled_upvr(false)
	end
end
local function onSelectedObjectChanged_upvr() -- Line 119, Named "onSelectedObjectChanged"
	--[[ Upvalues[4]:
		[1]: var16_upvw (read and write)
		[2]: onThumbstick1Input_upvr (readonly)
		[3]: var13_upvw (read and write)
		[4]: GuiService_upvr (readonly)
	]]
	var16_upvw = true
	onThumbstick1Input_upvr()
	var13_upvw = GuiService_upvr.SelectedObject
end
UserInputService_upvr.InputBegan:Connect(function(arg1) -- Line 127
	--[[ Upvalues[3]:
		[1]: var12_upvw (read and write)
		[2]: GuiService_upvr (readonly)
		[3]: Interface_upvr (readonly)
	]]
	if not var12_upvw then
	elseif arg1.UserInputType == Enum.UserInputType.Gamepad1 and arg1.KeyCode == Enum.KeyCode.ButtonA and (GuiService_upvr.SelectedObject or GuiService_upvr.SelectedCoreObject) then
		Interface_upvr:PlayCursorTweenActivate()
	end
end)
local var44_upvr = require(Parent.getFFlagInputEndedEventChange)()
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 138
	--[[ Upvalues[5]:
		[1]: var44_upvr (readonly)
		[2]: var7_result1_upvr (readonly)
		[3]: var12_upvw (read and write)
		[4]: Interface_upvr (readonly)
		[5]: onThumbstick1Input_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 23. Error Block 9 start (CF ANALYSIS FAILED)
	onThumbstick1Input_upvr()
	do
		return
	end
	-- KONSTANTERROR: [35] 23. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 26. Error Block 18 start (CF ANALYSIS FAILED)
	if not var12_upvw then return end
	if arg1.UserInputType == Enum.UserInputType.Gamepad1 and arg1.KeyCode == Enum.KeyCode.ButtonA then
		Interface_upvr:PlayCursorTweenDefault()
	end
	-- KONSTANTERROR: [38] 26. Error Block 18 end (CF ANALYSIS FAILED)
end)
if var7_result1_upvr then
	UserInputService_upvr.InputChanged:Connect(function(arg1) -- Line 164
		--[[ Upvalues[2]:
			[1]: var12_upvw (read and write)
			[2]: onThumbstick1Input_upvr (readonly)
		]]
		if var12_upvw then
		elseif arg1.UserInputType == Enum.UserInputType.Gamepad1 and arg1.KeyCode == Enum.KeyCode.Thumbstick1 then
			onThumbstick1Input_upvr()
		end
	end)
end
function module.GetThumbstickVector(arg1) -- Line 174
	--[[ Upvalues[1]:
		[1]: zero_vector2_upvw_2 (read and write)
	]]
	return zero_vector2_upvw_2
end
function module.GetThumbstick2Vector(arg1) -- Line 178
	--[[ Upvalues[1]:
		[1]: zero_vector2_upvw (read and write)
	]]
	return zero_vector2_upvw
end
function module.EnablePreview(arg1) -- Line 182
	--[[ Upvalues[4]:
		[1]: var7_result1_upvr (readonly)
		[2]: var14_upvw (read and write)
		[3]: GuiService_upvr (readonly)
		[4]: onSelectedObjectChanged_upvr (readonly)
	]]
	assert(var7_result1_upvr, "onThumbstick1Input should only be called when FFlagPointAndClickCursor is true")
	var14_upvw = GuiService_upvr:GetPropertyChangedSignal("SelectedObject"):Connect(onSelectedObjectChanged_upvr)
end
function module.DisablePreview(arg1) -- Line 188
	--[[ Upvalues[2]:
		[1]: var7_result1_upvr (readonly)
		[2]: var14_upvw (read and write)
	]]
	assert(var7_result1_upvr, "onThumbstick1Input should only be called when FFlagPointAndClickCursor is true")
	if var14_upvw then
		var14_upvw:Disconnect()
		var14_upvw = nil
	end
end
local GamepadService_upvr = game:GetService("GamepadService")
function module.EnableInput(arg1) -- Line 197
	--[[ Upvalues[7]:
		[1]: var15_upvw (read and write)
		[2]: GamepadService_upvr (readonly)
		[3]: zero_vector2_upvw_2 (read and write)
		[4]: processThumbstickInput_upvr (readonly)
		[5]: ContextActionService_upvr (readonly)
		[6]: onThumbstick2Input_upvr (readonly)
		[7]: var12_upvw (read and write)
	]]
	var15_upvw = GamepadService_upvr.GamepadThumbstick1Changed:Connect(function(arg1_2) -- Line 198
		--[[ Upvalues[2]:
			[1]: zero_vector2_upvw_2 (copied, read and write)
			[2]: processThumbstickInput_upvr (copied, readonly)
		]]
		zero_vector2_upvw_2 = processThumbstickInput_upvr(arg1_2)
	end)
	ContextActionService_upvr:BindCoreActionAtPriority("VirtualCursorThumbstick1Movement", function(arg1_3, arg2, arg3) -- Line 202
	end, false, Enum.ContextActionPriority.High.Value, Enum.KeyCode.Thumbstick1)
	ContextActionService_upvr:BindCoreActionAtPriority("VirtualCursorThumbstick2Movement", onThumbstick2Input_upvr, false, Enum.ContextActionPriority.High.Value, Enum.KeyCode.Thumbstick2)
	var12_upvw = true
end
function module.DisableInput(arg1) -- Line 210
	--[[ Upvalues[6]:
		[1]: getFFlagPointAndClickCursor_upvr (readonly)
		[2]: var15_upvw (read and write)
		[3]: zero_vector2_upvw_2 (read and write)
		[4]: zero_vector2_upvw (read and write)
		[5]: ContextActionService_upvr (readonly)
		[6]: var12_upvw (read and write)
	]]
	if not getFFlagPointAndClickCursor_upvr() or var15_upvw then
		var15_upvw:Disconnect()
		var15_upvw = nil
	end
	zero_vector2_upvw_2 = Vector2.new()
	zero_vector2_upvw = Vector2.new()
	ContextActionService_upvr:UnbindCoreAction("VirtualCursorThumbstick1Movement")
	ContextActionService_upvr:UnbindCoreAction("VirtualCursorThumbstick2Movement")
	if Enum.UserInputState.Cancel == Enum.UserInputState.Change then
		zero_vector2_upvw = Vector2.new(nil.Position.x, nil.Position.y * -1)
	else
		zero_vector2_upvw = Vector2.new()
	end
	var12_upvw = false
end
return module