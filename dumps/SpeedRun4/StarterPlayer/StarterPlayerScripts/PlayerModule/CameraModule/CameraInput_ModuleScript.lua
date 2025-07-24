-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:38:48
-- Luau version 6, Types version 3
-- Time taken: 0.013911 seconds

local module_2 = require(game:GetService("ReplicatedStorage"):WaitForChild("FeatureFlags"))
local UserInputService_upvr = game:GetService("UserInputService")
local VRService_upvr = game:GetService("VRService")
local UserResetTouchStateOnMenuOpen_upvr = module_2.UserResetTouchStateOnMenuOpen
local BindableEvent_upvw = Instance.new("BindableEvent")
local BindableEvent_upvr = Instance.new("BindableEvent")
UserInputService_upvr.InputBegan:Connect(function(arg1, arg2) -- Line 41
	--[[ Upvalues[1]:
		[1]: BindableEvent_upvw (readonly)
	]]
	if not arg2 and arg1.UserInputType == Enum.UserInputType.MouseButton2 then
		BindableEvent_upvw:Fire()
	end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1, arg2) -- Line 47
	--[[ Upvalues[1]:
		[1]: BindableEvent_upvr (readonly)
	]]
	if arg1.UserInputType == Enum.UserInputType.MouseButton2 then
		BindableEvent_upvr:Fire()
	end
end)
BindableEvent_upvw = nil
function BindableEvent_upvw(arg1) -- Line 58, Named "thumbstickCurve"
	return math.sign(arg1) * math.clamp((math.exp((math.abs(arg1) - 0.1) / 0.9 * 2) - 1) / 6.38905609893065, 0, 1)
end
function BindableEvent_upvr(arg1) -- Line 72, Named "adjustTouchPitchSensitivity"
	local CurrentCamera = workspace.CurrentCamera
	if not CurrentCamera then
		return arg1
	end
	local any_ToEulerAnglesYXZ_result1 = CurrentCamera.CFrame:ToEulerAnglesYXZ()
	if 0 <= arg1.Y * any_ToEulerAnglesYXZ_result1 then
		return arg1
	end
	return Vector2.new(1, (1 - (math.abs(any_ToEulerAnglesYXZ_result1) * 2 / math.pi) ^ 0.75) * 0.75 + 0.25) * arg1
end
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local function isInDynamicThumbstickArea_upvr(arg1) -- Line 98, Named "isInDynamicThumbstickArea"
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	local var26 = LocalPlayer_upvr:FindFirstChildOfClass("PlayerGui")
	if var26 then
		var26 = LocalPlayer_upvr:FindFirstChildOfClass("PlayerGui"):FindFirstChild("TouchGui")
	end
	local var27 = var26
	if var27 then
		var27 = var26:FindFirstChild("TouchControlFrame")
	end
	local var28 = var27
	if var28 then
		var28 = var27:FindFirstChild("DynamicThumbstickFrame")
	end
	if not var28 then
		return false
	end
	if not var26.Enabled then
		return false
	end
	local AbsolutePosition_2 = var28.AbsolutePosition
	local var30 = AbsolutePosition_2 + var28.AbsoluteSize
	local var31 = false
	if AbsolutePosition_2.X <= arg1.X then
		var31 = false
		if AbsolutePosition_2.Y <= arg1.Y then
			var31 = false
			if arg1.X <= var30.X then
				if arg1.Y > var30.Y then
					var31 = false
				else
					var31 = true
				end
			end
		end
	end
	return var31
end
local var32_upvw = (1/60)
game:GetService("RunService").Stepped:Connect(function(arg1, arg2) -- Line 123
	--[[ Upvalues[1]:
		[1]: var32_upvw (read and write)
	]]
	var32_upvw = arg2
end)
local module = {}
local var35_upvw = 0
local function _() -- Line 133, Named "incPanInputCount"
	--[[ Upvalues[1]:
		[1]: var35_upvw (read and write)
	]]
	var35_upvw = math.max(0, var35_upvw + 1)
end
local function _() -- Line 137, Named "decPanInputCount"
	--[[ Upvalues[1]:
		[1]: var35_upvw (read and write)
	]]
	var35_upvw = math.max(0, var35_upvw - 1)
end
local function _() -- Line 141, Named "resetPanInputCount"
	--[[ Upvalues[1]:
		[1]: var35_upvw (read and write)
	]]
	var35_upvw = 0
end
local tbl_upvr_2 = {
	Thumbstick2 = Vector2.new();
}
local tbl_upvr = {
	Left = 0;
	Right = 0;
	I = 0;
	O = 0;
}
local tbl_2_upvr = {
	Movement = Vector2.new();
	Wheel = 0;
	Pan = Vector2.new();
	Pinch = 0;
}
local tbl_4_upvr = {
	Move = Vector2.new();
	Pinch = 0;
}
local BindableEvent_upvr_2 = Instance.new("BindableEvent")
module.gamepadZoomPress = BindableEvent_upvr_2.Event
local var41_upvr
local function INLINED() -- Internal function, doesn't exist in bytecode
	var41_upvr = Instance.new("BindableEvent")
	return var41_upvr
end
if not VRService_upvr.VREnabled or not INLINED() then
	var41_upvr = nil
end
if VRService_upvr.VREnabled then
	module.gamepadReset = var41_upvr.Event
end
function module.getRotationActivated() -- Line 174
	--[[ Upvalues[2]:
		[1]: var35_upvw (read and write)
		[2]: tbl_upvr_2 (readonly)
	]]
	local var42 = true
	if 0 >= var35_upvw then
		if 0 >= tbl_upvr_2.Thumbstick2.Magnitude then
			var42 = false
		else
			var42 = true
		end
	end
	return var42
end
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local var44_upvr = Vector2.new(1, 0.77) * 0.06981317007977318
local var45_upvr = Vector2.new(1, 0.77) * 0.008726646259971648
local var46_upvr = Vector2.new(1, 0.77) * 0.12217304763960307
local var47_upvr = Vector2.new(1, 0.66) * 0.017453292519943295
function module.getRotation(arg1) -- Line 178
	--[[ Upvalues[11]:
		[1]: UserGameSettings_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: var32_upvw (read and write)
		[4]: tbl_upvr_2 (readonly)
		[5]: tbl_2_upvr (readonly)
		[6]: BindableEvent_upvr (readonly)
		[7]: tbl_4_upvr (readonly)
		[8]: var44_upvr (readonly)
		[9]: var45_upvr (readonly)
		[10]: var46_upvr (readonly)
		[11]: var47_upvr (readonly)
	]]
	local var48 = Vector2.new(tbl_upvr.Right - tbl_upvr.Left, 0) * var32_upvw
	if arg1 then
		var48 = Vector2.new()
	end
	return (var48 * 2.0943951023931953 + tbl_upvr_2.Thumbstick2 * var44_upvr + tbl_2_upvr.Movement * var45_upvr + tbl_2_upvr.Pan * var46_upvr + BindableEvent_upvr(tbl_4_upvr.Move) * var47_upvr) * Vector2.new(1, UserGameSettings_upvr:GetCameraYInvertValue())
end
function module.getZoomDelta() -- Line 202
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
	]]
	return (tbl_upvr.O - tbl_upvr.I) * 0.1 + (-tbl_2_upvr.Wheel + tbl_2_upvr.Pinch) * 1 + -tbl_4_upvr.Pinch * 0.04
end
local function thumbstick_upvr(arg1, arg2, arg3) -- Line 210, Named "thumbstick"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: BindableEvent_upvw (read and write)
	]]
	local Position = arg3.Position
	tbl_upvr_2[arg3.KeyCode.Name] = Vector2.new(BindableEvent_upvw(Position.X), -BindableEvent_upvw(Position.Y))
	return Enum.ContextActionResult.Pass
end
local function _(arg1) -- Line 216, Named "mouseMovement"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local Delta_2 = arg1.Delta
	tbl_2_upvr.Movement = Vector2.new(Delta_2.X, Delta_2.Y)
end
local function _(arg1, arg2, arg3) -- Line 221, Named "mouseWheel"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	tbl_2_upvr.Wheel = arg3.Position.Z
	return Enum.ContextActionResult.Pass
end
local function keypress_upvr(arg1, arg2, arg3) -- Line 226, Named "keypress"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local KeyCode = arg3.KeyCode
	if arg2 == Enum.UserInputState.Begin then
		KeyCode = 1
	else
		KeyCode = 0
	end
	tbl_upvr[KeyCode.Name] = KeyCode
end
local function gamepadZoomPress_upvr(arg1, arg2, arg3) -- Line 230, Named "gamepadZoomPress"
	--[[ Upvalues[1]:
		[1]: BindableEvent_upvr_2 (readonly)
	]]
	if arg2 == Enum.UserInputState.Begin then
		BindableEvent_upvr_2:Fire()
	end
end
local function gamepadReset_upvr(arg1, arg2, arg3) -- Line 236, Named "gamepadReset"
	--[[ Upvalues[1]:
		[1]: var41_upvr (readonly)
	]]
	if arg2 == Enum.UserInputState.Begin then
		var41_upvr:Fire()
	end
end
local UserClearPanOnCameraDisable_upvr = module_2.UserClearPanOnCameraDisable
local function resetInputDevices_upvr() -- Line 242, Named "resetInputDevices"
	--[[ Upvalues[6]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: UserClearPanOnCameraDisable_upvr (readonly)
		[6]: var35_upvw (read and write)
	]]
	for _, v in pairs({tbl_upvr_2, tbl_upvr, tbl_2_upvr, tbl_4_upvr}) do
		for i_2, v_2 in pairs(v) do
			if type(v_2) == "boolean" then
				v[i_2] = false
			else
				v[i_2] *= 0
			end
		end
	end
	if UserClearPanOnCameraDisable_upvr then
		var35_upvw = 0
	end
end
local tbl_upvw = {}
local var65_upvw
local var66_upvw
local function touchBegan_upvw(arg1, arg2) -- Line 270, Named "touchBegan"
	--[[ Upvalues[4]:
		[1]: var65_upvw (read and write)
		[2]: isInDynamicThumbstickArea_upvr (readonly)
		[3]: var35_upvw (read and write)
		[4]: tbl_upvw (read and write)
	]]
	local var68
	if arg1.UserInputType ~= Enum.UserInputType.Touch then
		var68 = false
	else
		var68 = true
	end
	assert(var68)
	if arg1.UserInputState ~= Enum.UserInputState.Begin then
		var68 = false
	else
		var68 = true
	end
	assert(var68)
	if var65_upvw == nil then
		var68 = arg1.Position
		if isInDynamicThumbstickArea_upvr(var68) and not arg2 then
			var65_upvw = arg1
			return
		end
	end
	if not arg2 then
		var68 = 0
		var35_upvw = math.max(var68, var35_upvw + 1)
	end
	tbl_upvw[arg1] = arg2
end
local function touchEnded_upvw(arg1, arg2) -- Line 290, Named "touchEnded"
	--[[ Upvalues[4]:
		[1]: var65_upvw (read and write)
		[2]: tbl_upvw (read and write)
		[3]: var66_upvw (read and write)
		[4]: var35_upvw (read and write)
	]]
	local var69
	if arg1.UserInputType ~= Enum.UserInputType.Touch then
		var69 = false
	else
		var69 = true
	end
	assert(var69)
	if arg1.UserInputState ~= Enum.UserInputState.End then
		var69 = false
	else
		var69 = true
	end
	assert(var69)
	if arg1 == var65_upvw then
		var65_upvw = nil
	end
	var69 = tbl_upvw
	if var69[arg1] == false then
		var66_upvw = nil
		var69 = 0
		var35_upvw = math.max(var69, var35_upvw - 1)
	end
	var69 = nil
	tbl_upvw[arg1] = var69
end
local function touchChanged_upvw(arg1, arg2) -- Line 309, Named "touchChanged"
	--[[ Upvalues[4]:
		[1]: var65_upvw (read and write)
		[2]: tbl_upvw (read and write)
		[3]: tbl_4_upvr (readonly)
		[4]: var66_upvw (read and write)
	]]
	local var85
	if arg1.UserInputType ~= Enum.UserInputType.Touch then
		var85 = false
	else
		var85 = true
	end
	assert(var85)
	if arg1.UserInputState ~= Enum.UserInputState.Change then
		var85 = false
	else
		var85 = true
	end
	assert(var85)
	if arg1 == var65_upvw then
	else
		var85 = tbl_upvw
		if var85[arg1] == nil then
			tbl_upvw[arg1] = arg2
		end
		local tbl = {}
		var85 = pairs(tbl_upvw)
		local pairs_result1_4, pairs_result2_3, pairs_result3_3 = pairs(tbl_upvw)
		for i_3, v_3 in pairs_result1_4, pairs_result2_3, pairs_result3_3 do
			if not v_3 then
				table.insert(tbl, i_3)
			end
		end
		pairs_result1_4 = #tbl
		if pairs_result1_4 == 1 then
			pairs_result1_4 = tbl_upvw[arg1]
			if pairs_result1_4 == false then
				pairs_result1_4 = arg1.Delta
				local var90 = tbl_4_upvr
				i_3 = Vector2.new
				v_3 = pairs_result1_4.X
				i_3 = i_3(v_3, pairs_result1_4.Y)
				var90.Move += i_3
			end
		end
		pairs_result1_4 = #tbl
		if pairs_result1_4 == 2 then
			i_3 = tbl[1]
			v_3 = tbl[2]
			i_3 = v_3.Position
			pairs_result1_4 = (i_3.Position - i_3).Magnitude
			if var66_upvw then
				local var91 = tbl_4_upvr
				v_3 = var66_upvw
				i_3 = pairs_result1_4 - v_3
				var91.Pinch += i_3
			end
			var66_upvw = pairs_result1_4
			return
		end
		pairs_result1_4 = nil
		var66_upvw = pairs_result1_4
	end
end
local function resetTouchState_upvw() -- Line 353, Named "resetTouchState"
	--[[ Upvalues[5]:
		[1]: tbl_upvw (read and write)
		[2]: var65_upvw (read and write)
		[3]: var66_upvw (read and write)
		[4]: UserResetTouchStateOnMenuOpen_upvr (readonly)
		[5]: var35_upvw (read and write)
	]]
	tbl_upvw = {}
	var65_upvw = nil
	var66_upvw = nil
	if UserResetTouchStateOnMenuOpen_upvr then
		var35_upvw = 0
	end
end
local function pointerAction_upvr(arg1, arg2, arg3, arg4) -- Line 363, Named "pointerAction"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if not arg4 then
		tbl_2_upvr.Wheel = arg1
		tbl_2_upvr.Pan = arg2
		tbl_2_upvr.Pinch = -arg3
	end
end
local function inputBegan_upvr(arg1, arg2) -- Line 371, Named "inputBegan"
	--[[ Upvalues[2]:
		[1]: touchBegan_upvw (read and write)
		[2]: var35_upvw (read and write)
	]]
	if arg1.UserInputType == Enum.UserInputType.Touch then
		touchBegan_upvw(arg1, arg2)
	elseif arg1.UserInputType == Enum.UserInputType.MouseButton2 and not arg2 then
		var35_upvw = math.max(0, var35_upvw + 1)
	end
end
local function inputChanged_upvr(arg1, arg2) -- Line 380, Named "inputChanged"
	--[[ Upvalues[2]:
		[1]: touchChanged_upvw (read and write)
		[2]: tbl_2_upvr (readonly)
	]]
	if arg1.UserInputType == Enum.UserInputType.Touch then
		touchChanged_upvw(arg1, arg2)
	elseif arg1.UserInputType == Enum.UserInputType.MouseMovement then
		local Delta = arg1.Delta
		tbl_2_upvr.Movement = Vector2.new(Delta.X, Delta.Y)
	end
end
local function inputEnded_upvr(arg1, arg2) -- Line 389, Named "inputEnded"
	--[[ Upvalues[2]:
		[1]: touchEnded_upvw (read and write)
		[2]: var35_upvw (read and write)
	]]
	if arg1.UserInputType == Enum.UserInputType.Touch then
		touchEnded_upvw(arg1, arg2)
	elseif arg1.UserInputType == Enum.UserInputType.MouseButton2 then
		var35_upvw = math.max(0, var35_upvw - 1)
	end
end
local var93_upvw = false
local ContextActionService_upvr = game:GetService("ContextActionService")
local Value_upvr = Enum.ContextActionPriority.Medium.Value
local tbl_3_upvw = {}
function module.setInputEnabled(arg1) -- Line 400
	--[[ Upvalues[17]:
		[1]: var93_upvw (read and write)
		[2]: resetInputDevices_upvr (readonly)
		[3]: resetTouchState_upvw (read and write)
		[4]: ContextActionService_upvr (readonly)
		[5]: thumbstick_upvr (readonly)
		[6]: Value_upvr (readonly)
		[7]: keypress_upvr (readonly)
		[8]: VRService_upvr (readonly)
		[9]: gamepadReset_upvr (readonly)
		[10]: gamepadZoomPress_upvr (readonly)
		[11]: tbl_3_upvw (read and write)
		[12]: UserInputService_upvr (readonly)
		[13]: inputBegan_upvr (readonly)
		[14]: inputChanged_upvr (readonly)
		[15]: inputEnded_upvr (readonly)
		[16]: pointerAction_upvr (readonly)
		[17]: UserResetTouchStateOnMenuOpen_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
	var93_upvw = arg1
	resetInputDevices_upvr()
	resetTouchState_upvw()
	-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
end
function module.getInputEnabled() -- Line 472
	--[[ Upvalues[1]:
		[1]: var93_upvw (read and write)
	]]
	return var93_upvw
end
function module.resetInputForFrameEnd() -- Line 476
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	tbl_2_upvr.Movement = Vector2.new()
	tbl_4_upvr.Move = Vector2.new()
	tbl_4_upvr.Pinch = 0
	tbl_2_upvr.Wheel = 0
	tbl_2_upvr.Pan = Vector2.new()
	tbl_2_upvr.Pinch = 0
end
UserInputService_upvr.WindowFocused:Connect(resetInputDevices_upvr)
UserInputService_upvr.WindowFocusReleased:Connect(resetInputDevices_upvr)
local var97_upvw = false
local var98_upvw = false
function module.getHoldPan() -- Line 497
	--[[ Upvalues[1]:
		[1]: var97_upvw (read and write)
	]]
	return var97_upvw
end
function module.getTogglePan() -- Line 501
	--[[ Upvalues[1]:
		[1]: var98_upvw (read and write)
	]]
	return var98_upvw
end
function module.getPanning() -- Line 505
	--[[ Upvalues[2]:
		[1]: var98_upvw (read and write)
		[2]: var97_upvw (read and write)
	]]
	local var99 = var98_upvw
	if not var99 then
		var99 = var97_upvw
	end
	return var99
end
function module.setTogglePan(arg1) -- Line 509
	--[[ Upvalues[1]:
		[1]: var98_upvw (read and write)
	]]
	var98_upvw = arg1
end
local var100_upvw = false
local var101_upvw
local var102_upvw
local Event_upvw_2 = BindableEvent_upvw.Event
local var104_upvw = 0
local Event_upvw = BindableEvent_upvr.Event
function module.enableCameraToggleInput() -- Line 517
	--[[ Upvalues[9]:
		[1]: var100_upvw (read and write)
		[2]: var97_upvw (read and write)
		[3]: var98_upvw (read and write)
		[4]: var101_upvw (read and write)
		[5]: var102_upvw (read and write)
		[6]: Event_upvw_2 (read and write)
		[7]: var104_upvw (read and write)
		[8]: Event_upvw (read and write)
		[9]: UserInputService_upvr (readonly)
	]]
	if var100_upvw then
	else
		var100_upvw = true
		var97_upvw = false
		var98_upvw = false
		if var101_upvw then
			var101_upvw:Disconnect()
		end
		if var102_upvw then
			var102_upvw:Disconnect()
		end
		var101_upvw = Event_upvw_2:Connect(function() -- Line 534
			--[[ Upvalues[2]:
				[1]: var97_upvw (copied, read and write)
				[2]: var104_upvw (copied, read and write)
			]]
			var97_upvw = true
			var104_upvw = tick()
		end)
		var102_upvw = Event_upvw:Connect(function() -- Line 539
			--[[ Upvalues[4]:
				[1]: var97_upvw (copied, read and write)
				[2]: var104_upvw (copied, read and write)
				[3]: var98_upvw (copied, read and write)
				[4]: UserInputService_upvr (copied, readonly)
			]]
			var97_upvw = false
			if tick() - var104_upvw < 0.3 and (var98_upvw or UserInputService_upvr:GetMouseDelta().Magnitude < 2) then
				var98_upvw = not var98_upvw
			end
		end)
	end
end
function module.disableCameraToggleInput() -- Line 547
	--[[ Upvalues[3]:
		[1]: var100_upvw (read and write)
		[2]: var101_upvw (read and write)
		[3]: var102_upvw (read and write)
	]]
	if not var100_upvw then
	else
		var100_upvw = false
		if var101_upvw then
			var101_upvw:Disconnect()
			var101_upvw = nil
		end
		if var102_upvw then
			var102_upvw:Disconnect()
			var102_upvw = nil
		end
	end
end
return module