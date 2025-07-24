-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:45
-- Luau version 6, Types version 3
-- Time taken: 0.019069 seconds

local clamp_upvr = math.clamp
local exp_upvr = math.exp
local ContextActionService_upvr = game:GetService("ContextActionService")
local Players_upvr = game:GetService("Players")
local RunService_upvr = game:GetService("RunService")
local StarterGui_upvr = game:GetService("StarterGui")
local UserInputService_upvr = game:GetService("UserInputService")
local Workspace_upvr = game:GetService("Workspace")
local GameSettings_upvr = UserSettings().GameSettings
local LocalPlayer_upvw = Players_upvr.LocalPlayer
if not LocalPlayer_upvw then
	Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer_upvw = Players_upvr.LocalPlayer
end
local CurrentCamera_upvw = Workspace_upvr.CurrentCamera
Workspace_upvr:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 32
	--[[ Upvalues[2]:
		[1]: Workspace_upvr (readonly)
		[2]: CurrentCamera_upvw (read and write)
	]]
	local CurrentCamera = Workspace_upvr.CurrentCamera
	if CurrentCamera then
		CurrentCamera_upvw = CurrentCamera
	end
end)
local pcall_result1_7, pcall_result2_3 = pcall(function() -- Line 41
	return UserSettings():IsUserFeatureEnabled("UserExitFreecamBreaksWithShiftlock")
end)
local pcall_result1, pcall_result2_2 = pcall(function() -- Line 49
	return UserSettings():IsUserFeatureEnabled("UserShowGuiHideToggles")
end)
local var20_upvw = pcall_result1 and pcall_result2_2
local pcall_result1_2, pcall_result2 = pcall(function() -- Line 57
	return UserSettings():IsUserFeatureEnabled("UserFixFreecamDeltaTimeCalculation")
end)
local var24_upvw = pcall_result1_2 and pcall_result2
local pcall_result1_3, pcall_result2_7 = pcall(function() -- Line 65
	return UserSettings():IsUserFeatureEnabled("UserFixFreecamGuiChangeVisibility")
end)
local var28_upvw = pcall_result1_3 and pcall_result2_7
local pcall_result1_8, pcall_result2_5 = pcall(function() -- Line 73
	return UserSettings():IsUserFeatureEnabled("UserFreecamControlSpeed")
end)
local var32_upvw = pcall_result1_8 and pcall_result2_5
local pcall_result1_4, pcall_result2_4 = pcall(function() -- Line 81
	return UserSettings():IsUserFeatureEnabled("UserFreecamTiltControl")
end)
local var36_upvw = pcall_result1_4 and pcall_result2_4
local pcall_result1_6, pcall_result2_8 = pcall(function() -- Line 89
	return UserSettings():IsUserFeatureEnabled("UserFreecamSmoothnessControl")
end)
local var40_upvw = pcall_result1_6 and pcall_result2_8
local pcall_result1_5, pcall_result2_6 = pcall(function() -- Line 97
	return UserSettings():IsUserFeatureEnabled("UserFreecamGuiDestabilization")
end)
local var44_upvw = pcall_result1_5 and pcall_result2_6
local tbl_upvr_3 = {Enum.KeyCode.LeftShift, Enum.KeyCode.P}
local tbl_upvr = {
	[Enum.KeyCode.Z] = true;
	[Enum.KeyCode.C] = true;
}
local tbl_upvr_5 = {
	[Enum.KeyCode.ButtonL1] = true;
	[Enum.KeyCode.ButtonR1] = true;
}
local var48_upvw = 1.5
local var49_upvw = 1
local var50_upvw = 4
local var51_upvw = 1
local tbl_upvr_10 = {}
tbl_upvr_10.__index = tbl_upvr_10
function tbl_upvr_10.new(arg1, arg2) -- Line 155
	--[[ Upvalues[1]:
		[1]: tbl_upvr_10 (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr_10)
	setmetatable_result1.f = arg1
	setmetatable_result1.p = arg2
	setmetatable_result1.v = arg2 * 0
	return setmetatable_result1
end
function tbl_upvr_10.Update(arg1, arg2, arg3) -- Line 163
	--[[ Upvalues[1]:
		[1]: exp_upvr (readonly)
	]]
	local var54 = arg1.f * 2 * math.pi
	local v_9 = arg1.v
	local var56 = arg3 - arg1.p
	local exp_upvr_result1 = exp_upvr(-var54 * arg2)
	local var58 = arg3 + (v_9 * arg2 - var56 * (var54 * arg2 + 1)) * exp_upvr_result1
	arg1.p = var58
	arg1.v = (var54 * arg2 * (var56 * var54 - v_9) + v_9) * exp_upvr_result1
	return var58
end
function tbl_upvr_10.SetFreq(arg1, arg2) -- Line 180
	arg1.f = arg2
end
function tbl_upvr_10.Reset(arg1, arg2) -- Line 184
	arg1.p = arg2
	arg1.v = arg2 * 0
end
local zero_vector3_upvw = Vector3.new()
local var60_upvw
if var36_upvw then
	var60_upvw = Vector3.new()
else
	var60_upvw = Vector2.new()
end
local var61_upvw = 0
local any_new_result1_upvr = tbl_upvr_10.new(var48_upvw, Vector3.new())
local any_new_result1_upvr_4 = tbl_upvr_10.new(var49_upvw, Vector2.new())
local any_new_result1_upvr_2 = tbl_upvr_10.new(var50_upvw, 0)
local any_new_result1_upvr_3 = tbl_upvr_10.new(var51_upvw, 0)
local tbl_upvr_9 = {}
local function _(arg1) -- Line 213, Named "fCurve"
	--[[ Upvalues[1]:
		[1]: exp_upvr (readonly)
	]]
	return (exp_upvr(2 * arg1) - 1) / 6.38905609893065
end
local function _(arg1) -- Line 217, Named "fDeadzone"
	--[[ Upvalues[1]:
		[1]: exp_upvr (readonly)
	]]
	return (exp_upvr((2) * ((arg1 - 0.15) / 0.85)) - 1) / 6.38905609893065
end
local sign_upvr = math.sign
local abs_upvr = math.abs
local function thumbstickCurve_upvw(arg1) -- Line 221, Named "thumbstickCurve"
	--[[ Upvalues[4]:
		[1]: sign_upvr (readonly)
		[2]: abs_upvr (readonly)
		[3]: exp_upvr (readonly)
		[4]: clamp_upvr (readonly)
	]]
	return sign_upvr(arg1) * clamp_upvr((exp_upvr((2) * ((abs_upvr(arg1) - 0.15) / 0.85)) - 1) / 6.38905609893065, 0, 1)
end
local tbl_upvr_4 = {
	ButtonX = 0;
	ButtonY = 0;
	DPadDown = 0;
	DPadUp = 0;
	DPadLeft = 0;
	DPadRight = 0;
	ButtonL2 = 0;
	ButtonR2 = 0;
	ButtonL1 = 0;
	ButtonR1 = 0;
	Thumbstick1 = Vector2.new();
	Thumbstick2 = Vector2.new();
}
local tbl_upvr_2 = {
	W = 0;
	A = 0;
	S = 0;
	D = 0;
	E = 0;
	Q = 0;
	U = 0;
	H = 0;
	J = 0;
	K = 0;
	I = 0;
	Y = 0;
	Up = 0;
	Down = 0;
	Left = 0;
	Right = 0;
	LeftShift = 0;
	RightShift = 0;
	Z = 0;
	C = 0;
	Comma = 0;
	Period = 0;
	LeftBracket = 0;
	RightBracket = 0;
	Semicolon = 0;
	Quote = 0;
	V = 0;
	B = 0;
	N = 0;
	M = 0;
}
local tbl_upvr_11 = {
	Delta = Vector2.new();
	MouseWheel = 0;
}
local var72_upvr = Vector2.new(1, 1) * 0.04908738521234052
local var73_upvw = 1
local var74_upvw = 1
local var75_upvw = 1
function tbl_upvr_9.Vel(arg1) -- Line 305
	--[[ Upvalues[7]:
		[1]: var32_upvw (read and write)
		[2]: var73_upvw (read and write)
		[3]: tbl_upvr_2 (readonly)
		[4]: tbl_upvr_4 (readonly)
		[5]: clamp_upvr (readonly)
		[6]: thumbstickCurve_upvw (read and write)
		[7]: UserInputService_upvr (readonly)
	]]
	local var76
	if var32_upvw then
		var76 = tbl_upvr_2.Up - tbl_upvr_2.Down
		var76 = tbl_upvr_4.DPadDown
		var73_upvw = clamp_upvr(var73_upvw + arg1 * (var76 + tbl_upvr_4.DPadUp - var76) * 0.75, 0.01, 4)
	else
		var76 = tbl_upvr_2
		var76 = tbl_upvr_2.Down
		var73_upvw = clamp_upvr(var73_upvw + arg1 * (var76.Up - var76) * 0.75, 0.01, 4)
	end
	var76 = tbl_upvr_4
	var76 = tbl_upvr_4.Thumbstick1
	var76 = tbl_upvr_2
	var76 = tbl_upvr_2.A
	var76 = tbl_upvr_2
	var76 = tbl_upvr_2.E
	var76 = tbl_upvr_2.I
	var76 = tbl_upvr_2
	var76 = tbl_upvr_2.S - tbl_upvr_2.W
	var76 = tbl_upvr_2.U
	local any_IsKeyDown_result1 = UserInputService_upvr:IsKeyDown(Enum.KeyCode.LeftShift)
	if not any_IsKeyDown_result1 then
		any_IsKeyDown_result1 = UserInputService_upvr:IsKeyDown(Enum.KeyCode.RightShift)
	end
	if any_IsKeyDown_result1 then
		var76 = 0.25
	else
		var76 = 1
	end
	return (Vector3.new(thumbstickCurve_upvw(tbl_upvr_4.Thumbstick1.X), thumbstickCurve_upvw(tbl_upvr_4.ButtonR2) - thumbstickCurve_upvw(var76.ButtonL2), thumbstickCurve_upvw(-var76.Y)) * Vector3.new(1, 1, 1) + Vector3.new(var76.D - var76 + var76.K - tbl_upvr_2.H, var76 - tbl_upvr_2.Q + var76 - var76.Y, var76 + tbl_upvr_2.J - var76) * Vector3.new(1, 1, 1)) * (var73_upvw * var76)
end
local var78_upvr = Vector2.new(1, 1) * 0.39269908169872414
local var79_upvr = var72_upvr / 60
function tbl_upvr_9.Pan(arg1) -- Line 328
	--[[ Upvalues[7]:
		[1]: thumbstickCurve_upvw (read and write)
		[2]: tbl_upvr_4 (readonly)
		[3]: var78_upvr (readonly)
		[4]: tbl_upvr_11 (readonly)
		[5]: var72_upvr (readonly)
		[6]: var24_upvw (read and write)
		[7]: var79_upvr (readonly)
	]]
	local var80
	if var24_upvw and 0 < arg1 then
		var80 = tbl_upvr_11.Delta / arg1 * var79_upvr
	end
	tbl_upvr_11.Delta = Vector2.new()
	return Vector2.new(thumbstickCurve_upvw(tbl_upvr_4.Thumbstick2.Y), thumbstickCurve_upvw(-tbl_upvr_4.Thumbstick2.X)) * var78_upvr + var80
end
function tbl_upvr_9.Fov(arg1) -- Line 343
	--[[ Upvalues[7]:
		[1]: var32_upvw (read and write)
		[2]: var75_upvw (read and write)
		[3]: tbl_upvr_2 (readonly)
		[4]: tbl_upvr_4 (readonly)
		[5]: clamp_upvr (readonly)
		[6]: tbl_upvr_11 (readonly)
		[7]: var24_upvw (read and write)
	]]
	if var32_upvw then
		var75_upvw = clamp_upvr(var75_upvw + arg1 * (tbl_upvr_2.Right - tbl_upvr_2.Left + tbl_upvr_4.DPadRight - tbl_upvr_4.DPadLeft) * 0.75, 0.01, 4)
	end
	local var81 = (tbl_upvr_4.ButtonX - tbl_upvr_4.ButtonY) * 0.25
	local var82
	if var24_upvw and 0 < arg1 then
		var82 = tbl_upvr_11.MouseWheel / arg1 * (1/60)
	end
	tbl_upvr_11.MouseWheel = 0
	if var32_upvw then
		return (var81 + var82) * var75_upvw
	end
	return var81 + var82
end
function tbl_upvr_9.Roll(arg1) -- Line 362
	--[[ Upvalues[4]:
		[1]: var74_upvw (read and write)
		[2]: tbl_upvr_2 (readonly)
		[3]: clamp_upvr (readonly)
		[4]: tbl_upvr_4 (readonly)
	]]
	var74_upvw = clamp_upvr(var74_upvw + arg1 * (tbl_upvr_2.Period - tbl_upvr_2.Comma) * 0.75, 0.01, 4)
	return ((tbl_upvr_4.ButtonR1 - tbl_upvr_4.ButtonL1) * 1 + (tbl_upvr_2.C - tbl_upvr_2.Z) * 1) * var74_upvw
end
function tbl_upvr_9.SpringControl(arg1) -- Line 371
	--[[ Upvalues[10]:
		[1]: var48_upvw (read and write)
		[2]: tbl_upvr_2 (readonly)
		[3]: clamp_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
		[5]: var49_upvw (read and write)
		[6]: any_new_result1_upvr_4 (readonly)
		[7]: var50_upvw (read and write)
		[8]: any_new_result1_upvr_2 (readonly)
		[9]: var51_upvw (read and write)
		[10]: any_new_result1_upvr_3 (readonly)
	]]
	var48_upvw = clamp_upvr(var48_upvw + arg1 * (tbl_upvr_2.RightBracket - tbl_upvr_2.LeftBracket) * 0.75, 0.01, 10)
	any_new_result1_upvr:SetFreq(var48_upvw)
	var49_upvw = clamp_upvr(var49_upvw + arg1 * (tbl_upvr_2.Quote - tbl_upvr_2.Semicolon) * 0.75, 0.01, 10)
	any_new_result1_upvr_4:SetFreq(var49_upvw)
	var50_upvw = clamp_upvr(var50_upvw + arg1 * (tbl_upvr_2.B - tbl_upvr_2.V) * 0.75, 0.01, 10)
	any_new_result1_upvr_2:SetFreq(var50_upvw)
	var51_upvw = clamp_upvr(var51_upvw + arg1 * (tbl_upvr_2.M - tbl_upvr_2.N) * 0.75, 0.01, 10)
	any_new_result1_upvr_3:SetFreq(var51_upvw)
end
local tbl_upvr_12 = {}
local var84_upvw = 0
local function handleDoubleTapReset_upvr(arg1) -- Line 386, Named "handleDoubleTapReset"
	--[[ Upvalues[6]:
		[1]: tbl_upvr_12 (readonly)
		[2]: var84_upvw (read and write)
		[3]: var60_upvw (read and write)
		[4]: any_new_result1_upvr_3 (readonly)
		[5]: tbl_upvr_4 (readonly)
		[6]: tbl_upvr_2 (readonly)
	]]
	local os_clock_result1 = os.clock()
	local var86 = tbl_upvr_12[arg1]
	local var87
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var87 = os_clock_result1 - var86
		return var87
	end
	if not var86 or not INLINED() then
		var87 = -1
	end
	if var86 and var87 <= 0.25 and 0.1 <= os_clock_result1 - var84_upvw then
		var60_upvw = Vector3.new(var60_upvw.x, var60_upvw.y, 0)
		any_new_result1_upvr_3:Reset(0)
		tbl_upvr_4.ButtonL1 = 0
		tbl_upvr_4.ButtonR1 = 0
		tbl_upvr_2.C = 0
		tbl_upvr_2.Z = 0
		var84_upvw = os_clock_result1
	end
	tbl_upvr_12[arg1] = os_clock_result1
end
local function Keypress_upvr(arg1, arg2, arg3) -- Line 406, Named "Keypress"
	--[[ Upvalues[4]:
		[1]: tbl_upvr_2 (readonly)
		[2]: var36_upvw (read and write)
		[3]: tbl_upvr (readonly)
		[4]: handleDoubleTapReset_upvr (readonly)
	]]
	local KeyCode_2 = arg3.KeyCode
	if arg2 == Enum.UserInputState.Begin then
		KeyCode_2 = 1
	else
		KeyCode_2 = 0
	end
	tbl_upvr_2[KeyCode_2.Name] = KeyCode_2
	if var36_upvw and tbl_upvr[arg3.KeyCode] and arg3.UserInputState == Enum.UserInputState.Begin then
		handleDoubleTapReset_upvr(arg3.KeyCode)
	end
	return Enum.ContextActionResult.Sink
end
local function GpButton_upvr(arg1, arg2, arg3) -- Line 419, Named "GpButton"
	--[[ Upvalues[4]:
		[1]: tbl_upvr_4 (readonly)
		[2]: var36_upvw (read and write)
		[3]: tbl_upvr_5 (readonly)
		[4]: handleDoubleTapReset_upvr (readonly)
	]]
	local KeyCode = arg3.KeyCode
	if arg2 == Enum.UserInputState.Begin then
		KeyCode = 1
	else
		KeyCode = 0
	end
	tbl_upvr_4[KeyCode.Name] = KeyCode
	if var36_upvw and tbl_upvr_5[arg3.KeyCode] and arg3.UserInputState == Enum.UserInputState.Begin then
		handleDoubleTapReset_upvr(arg3.KeyCode)
	end
	return Enum.ContextActionResult.Sink
end
local function MousePan_upvr(arg1, arg2, arg3) -- Line 431, Named "MousePan"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_11 (readonly)
	]]
	local Delta = arg3.Delta
	tbl_upvr_11.Delta = Vector2.new(-Delta.y, -Delta.x)
	return Enum.ContextActionResult.Sink
end
local function Thumb_upvr(arg1, arg2, arg3) -- Line 437, Named "Thumb"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_4 (readonly)
	]]
	tbl_upvr_4[arg3.KeyCode.Name] = arg3.Position
	return Enum.ContextActionResult.Sink
end
local function Trigger_upvr(arg1, arg2, arg3) -- Line 442, Named "Trigger"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_4 (readonly)
	]]
	tbl_upvr_4[arg3.KeyCode.Name] = arg3.Position.z
	return Enum.ContextActionResult.Sink
end
local function MouseWheel_upvr(arg1, arg2, arg3) -- Line 447, Named "MouseWheel"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_11 (readonly)
	]]
	tbl_upvr_11[arg3.UserInputType.Name] = -arg3.Position.z
	return Enum.ContextActionResult.Sink
end
local function _(arg1) -- Line 452, Named "Zero"
	for i, v in pairs(arg1) do
		arg1[i] = v * 0
	end
end
local Value_upvr = Enum.ContextActionPriority.High.Value
function tbl_upvr_9.StartCapture() -- Line 458
	--[[ Upvalues[11]:
		[1]: var32_upvw (read and write)
		[2]: ContextActionService_upvr (readonly)
		[3]: Keypress_upvr (readonly)
		[4]: Value_upvr (readonly)
		[5]: GpButton_upvr (readonly)
		[6]: var36_upvw (read and write)
		[7]: var40_upvw (read and write)
		[8]: MousePan_upvr (readonly)
		[9]: MouseWheel_upvr (readonly)
		[10]: Trigger_upvr (readonly)
		[11]: Thumb_upvr (readonly)
	]]
	if var32_upvw then
		ContextActionService_upvr:BindActionAtPriority("FreecamKeyboard", Keypress_upvr, false, Value_upvr, Enum.KeyCode.W, Enum.KeyCode.U, Enum.KeyCode.A, Enum.KeyCode.H, Enum.KeyCode.S, Enum.KeyCode.J, Enum.KeyCode.D, Enum.KeyCode.K, Enum.KeyCode.E, Enum.KeyCode.I, Enum.KeyCode.Q, Enum.KeyCode.Y)
		ContextActionService_upvr:BindActionAtPriority("FreecamKeyboardControlSpeed", Keypress_upvr, false, Value_upvr, Enum.KeyCode.Up, Enum.KeyCode.Down, Enum.KeyCode.Left, Enum.KeyCode.Right)
		ContextActionService_upvr:BindActionAtPriority("FreecamGamepadControlSpeed", GpButton_upvr, false, Value_upvr, Enum.KeyCode.DPadUp, Enum.KeyCode.DPadDown, Enum.KeyCode.DPadLeft, Enum.KeyCode.DPadRight)
	else
		ContextActionService_upvr:BindActionAtPriority("FreecamKeyboard", Keypress_upvr, false, Value_upvr, Enum.KeyCode.W, Enum.KeyCode.U, Enum.KeyCode.A, Enum.KeyCode.H, Enum.KeyCode.S, Enum.KeyCode.J, Enum.KeyCode.D, Enum.KeyCode.K, Enum.KeyCode.E, Enum.KeyCode.I, Enum.KeyCode.Q, Enum.KeyCode.Y, Enum.KeyCode.Up, Enum.KeyCode.Down)
	end
	if var36_upvw then
		ContextActionService_upvr:BindActionAtPriority("FreecamKeyboardTiltControl", Keypress_upvr, false, Value_upvr, Enum.KeyCode.Z, Enum.KeyCode.C)
		ContextActionService_upvr:BindActionAtPriority("FreecamGamepadTiltControl", GpButton_upvr, false, Value_upvr, Enum.KeyCode.ButtonL1, Enum.KeyCode.ButtonR1)
		ContextActionService_upvr:BindActionAtPriority("FreecamKeyboardTiltControlSpeed", Keypress_upvr, false, Value_upvr, Enum.KeyCode.Comma, Enum.KeyCode.Period)
		if var40_upvw then
			ContextActionService_upvr:BindActionAtPriority("FreecamKeyboardSmoothnessControl", Keypress_upvr, false, Value_upvr, Enum.KeyCode.LeftBracket, Enum.KeyCode.RightBracket, Enum.KeyCode.Semicolon, Enum.KeyCode.Quote, Enum.KeyCode.V, Enum.KeyCode.B, Enum.KeyCode.N, Enum.KeyCode.M)
		end
	end
	ContextActionService_upvr:BindActionAtPriority("FreecamMousePan", MousePan_upvr, false, Value_upvr, Enum.UserInputType.MouseMovement)
	ContextActionService_upvr:BindActionAtPriority("FreecamMouseWheel", MouseWheel_upvr, false, Value_upvr, Enum.UserInputType.MouseWheel)
	ContextActionService_upvr:BindActionAtPriority("FreecamGamepadButton", GpButton_upvr, false, Value_upvr, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
	ContextActionService_upvr:BindActionAtPriority("FreecamGamepadTrigger", Trigger_upvr, false, Value_upvr, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
	ContextActionService_upvr:BindActionAtPriority("FreecamGamepadThumbstick", Thumb_upvr, false, Value_upvr, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
end
function tbl_upvr_9.StopCapture() -- Line 513
	--[[ Upvalues[10]:
		[1]: var73_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var75_upvw (read and write)
		[4]: var36_upvw (read and write)
		[5]: var74_upvw (read and write)
		[6]: tbl_upvr_4 (readonly)
		[7]: tbl_upvr_2 (readonly)
		[8]: tbl_upvr_11 (readonly)
		[9]: ContextActionService_upvr (readonly)
		[10]: var40_upvw (read and write)
	]]
	var73_upvw = 1
	if var32_upvw then
		var75_upvw = 1
	end
	if var36_upvw then
		var74_upvw = 1
	end
	for i_2, v_2 in pairs(tbl_upvr_4) do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_upvr_4[i_2] = v_2 * 0
		local _
	end
	for i_3, v_3 in pairs(tbl_upvr_2) do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_upvr_2[i_3] = v_3 * 0
		local _
	end
	for i_4, v_4 in pairs(tbl_upvr_11) do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_upvr_11[i_4] = v_4 * 0
		local _
	end
	ContextActionService_upvr:UnbindAction("FreecamKeyboard")
	if var32_upvw then
		ContextActionService_upvr:UnbindAction("FreecamKeyboardControlSpeed")
		ContextActionService_upvr:UnbindAction("FreecamGamepadControlSpeed")
	end
	if var36_upvw then
		ContextActionService_upvr:UnbindAction("FreecamKeyboardTiltControl")
		ContextActionService_upvr:UnbindAction("FreecamGamepadTiltControl")
		ContextActionService_upvr:UnbindAction("FreecamKeyboardTiltControlSpeed")
		if var40_upvw then
			ContextActionService_upvr:UnbindAction("FreecamKeyboardSmoothnessControl")
		end
	end
	ContextActionService_upvr:UnbindAction("FreecamMousePan")
	ContextActionService_upvr:UnbindAction("FreecamMouseWheel")
	ContextActionService_upvr:UnbindAction("FreecamGamepadButton")
	ContextActionService_upvr:UnbindAction("FreecamGamepadTrigger")
	ContextActionService_upvr:UnbindAction("FreecamGamepadThumbstick")
end
local rad_upvr = math.rad
local tan_upvr = math.tan
local sqrt_upvr = math.sqrt
local var148_upvr = Vector2.new(0.75, 1) * 8
local function StepFreecam_upvr(arg1) -- Line 548, Named "StepFreecam"
	--[[ Upvalues[16]:
		[1]: var40_upvw (read and write)
		[2]: tbl_upvr_9 (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: any_new_result1_upvr_4 (readonly)
		[5]: any_new_result1_upvr_2 (readonly)
		[6]: var36_upvw (read and write)
		[7]: any_new_result1_upvr_3 (readonly)
		[8]: var61_upvw (read and write)
		[9]: rad_upvr (readonly)
		[10]: tan_upvr (readonly)
		[11]: sqrt_upvr (readonly)
		[12]: clamp_upvr (readonly)
		[13]: var148_upvr (readonly)
		[14]: var60_upvw (read and write)
		[15]: zero_vector3_upvw (read and write)
		[16]: CurrentCamera_upvw (read and write)
	]]
	local var149
	if var40_upvw then
		tbl_upvr_9.SpringControl(arg1)
	end
	var149 = tbl_upvr_9.Vel(arg1)
	var149 = arg1
	var149 = nil
	if var36_upvw then
		var149 = any_new_result1_upvr_3:Update(arg1, tbl_upvr_9.Roll(arg1))
	end
	local var147_result1 = sqrt_upvr(0.7002075382097097 / tan_upvr(rad_upvr(var61_upvw / 2)))
	var61_upvw = clamp_upvr(var61_upvw + (any_new_result1_upvr_2:Update(arg1, tbl_upvr_9.Fov(arg1)) * 300) * (arg1 / var147_result1), 1, 120)
	local var151
	if var36_upvw then
		local var152 = (any_new_result1_upvr_4:Update(var149, tbl_upvr_9.Pan(arg1)) * var148_upvr) * (arg1 / var147_result1)
		var60_upvw += Vector3.new(var152.X, var152.Y, (var149 * (-math.pi/2)) * (arg1 / var147_result1))
		if var40_upvw then
			var60_upvw = Vector3.new(var60_upvw.x % (-math.pi*2), var60_upvw.y % (-math.pi*2), var60_upvw.z % (-math.pi*2))
		else
			var60_upvw = Vector3.new(clamp_upvr(var60_upvw.x, (-math.pi/2), (math.pi/2)), var60_upvw.y % (-math.pi*2), var60_upvw.z)
		end
		var151 = CFrame.new(zero_vector3_upvw) * CFrame.fromOrientation(var60_upvw.x, var60_upvw.y, var60_upvw.z) * CFrame.new(any_new_result1_upvr:Update(arg1, var149) * Vector3.new(64, 64, 64) * arg1)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var60_upvw += (any_new_result1_upvr_4:Update(var149, tbl_upvr_9.Pan(arg1)) * var148_upvr) * (arg1 / var147_result1)
		var60_upvw = Vector2.new(clamp_upvr(var60_upvw.x, (-math.pi/2), (math.pi/2)), var60_upvw.y % (-math.pi*2))
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var151 = CFrame.new(zero_vector3_upvw) * CFrame.fromOrientation(var60_upvw.x, var60_upvw.y, 0) * CFrame.new(any_new_result1_upvr:Update(arg1, var149) * Vector3.new(64, 64, 64) * arg1)
	end
	zero_vector3_upvw = var151.p
	CurrentCamera_upvw.CFrame = var151
	CurrentCamera_upvw.Focus = var151
	CurrentCamera_upvw.FieldOfView = var61_upvw
end
local function _() -- Line 589, Named "CheckMouseLockAvailability"
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	local var157
	if Players_upvr.LocalPlayer.DevComputerMovementMode ~= var157 then
	else
	end
	var157 = GameSettings_upvr.ControlMode
	if var157 ~= Enum.ControlMode.MouseLockSwitch then
		-- KONSTANTWARNING: GOTO [25] #17
	end
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 16. Error Block 30 start (CF ANALYSIS FAILED)
	if GameSettings_upvr.ComputerMovementMode ~= Enum.ComputerMovementMode.ClickToMove then
		var157 = false
	else
		var157 = true
	end
	if Players_upvr.LocalPlayer.DevEnableMouseLock then
		if true then
			if not var157 then
			end
		end
	end
	do
		return not true
	end
	-- KONSTANTERROR: [24] 16. Error Block 30 end (CF ANALYSIS FAILED)
end
local tbl_upvr_8 = {}
local var159_upvw
local var160_upvw
local var161_upvw
local var162_upvw
local var163_upvw
local var164_upvw
local tbl_upvw = {}
local tbl_upvr_7 = {
	Backpack = true;
	Chat = true;
	Health = true;
	PlayerList = true;
}
local tbl_upvr_6 = {
	BadgesNotificationsActive = true;
	PointsNotificationsActive = true;
}
local var168_upvw = pcall_result1_7 and pcall_result2_3
function tbl_upvr_8.Push() -- Line 621
	--[[ Upvalues[17]:
		[1]: tbl_upvr_7 (readonly)
		[2]: StarterGui_upvr (readonly)
		[3]: tbl_upvr_6 (readonly)
		[4]: LocalPlayer_upvw (read and write)
		[5]: tbl_upvw (read and write)
		[6]: var28_upvw (read and write)
		[7]: var164_upvw (read and write)
		[8]: CurrentCamera_upvw (read and write)
		[9]: var161_upvw (read and write)
		[10]: var163_upvw (read and write)
		[11]: var162_upvw (read and write)
		[12]: var160_upvw (read and write)
		[13]: UserInputService_upvr (readonly)
		[14]: var168_upvw (read and write)
		[15]: Players_upvr (readonly)
		[16]: GameSettings_upvr (readonly)
		[17]: var159_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
	for i_5 in pairs(tbl_upvr_7) do
		tbl_upvr_7[i_5] = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType[i_5])
		StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType[i_5], false)
	end
	for i_6 in pairs(tbl_upvr_6) do
		tbl_upvr_6[i_6] = StarterGui_upvr:GetCore(i_6)
		StarterGui_upvr:SetCore(i_6, false)
	end
	local class_PlayerGui = LocalPlayer_upvw:FindFirstChildOfClass("PlayerGui")
	-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 40. Error Block 48 start (CF ANALYSIS FAILED)
	for _, v_5 in pairs(class_PlayerGui:GetChildren()) do
		if v_5:IsA("ScreenGui") and v_5.Enabled then
			tbl_upvw[#tbl_upvw + 1] = v_5
			v_5.Enabled = false
		end
	end
	-- KONSTANTERROR: [50] 40. Error Block 48 end (CF ANALYSIS FAILED)
end
function tbl_upvr_8.Pop() -- Line 669
	--[[ Upvalues[13]:
		[1]: tbl_upvr_7 (readonly)
		[2]: StarterGui_upvr (readonly)
		[3]: tbl_upvr_6 (readonly)
		[4]: tbl_upvw (read and write)
		[5]: var28_upvw (read and write)
		[6]: CurrentCamera_upvw (read and write)
		[7]: var164_upvw (read and write)
		[8]: var161_upvw (read and write)
		[9]: var163_upvw (read and write)
		[10]: var162_upvw (read and write)
		[11]: UserInputService_upvr (readonly)
		[12]: var160_upvw (read and write)
		[13]: var159_upvw (read and write)
	]]
	for i_8, v_6 in pairs(tbl_upvr_7) do
		StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType[i_8], v_6)
	end
	for i_9, v_7 in pairs(tbl_upvr_6) do
		StarterGui_upvr:SetCore(i_9, v_7)
	end
	for _, v_8 in pairs(tbl_upvw) do
		if v_8.Parent then
			v_8.Enabled = true
		end
	end
	if var28_upvw then
		tbl_upvw = {}
	end
	CurrentCamera_upvw.FieldOfView = var164_upvw
	var164_upvw = nil
	CurrentCamera_upvw.CameraType = var161_upvw
	var161_upvw = nil
	CurrentCamera_upvw.CFrame = var163_upvw
	var163_upvw = nil
	CurrentCamera_upvw.Focus = var162_upvw
	var162_upvw = nil
	UserInputService_upvr.MouseIconEnabled = var160_upvw
	var160_upvw = nil
	UserInputService_upvr.MouseBehavior = var159_upvw
	var159_upvw = nil
end
local function StartFreecam_upvr() -- Line 705, Named "StartFreecam"
	--[[ Upvalues[20]:
		[1]: var44_upvw (read and write)
		[2]: var20_upvw (read and write)
		[3]: CurrentCamera_upvw (read and write)
		[4]: var36_upvw (read and write)
		[5]: var60_upvw (read and write)
		[6]: zero_vector3_upvw (read and write)
		[7]: var61_upvw (read and write)
		[8]: any_new_result1_upvr (readonly)
		[9]: any_new_result1_upvr_4 (readonly)
		[10]: any_new_result1_upvr_2 (readonly)
		[11]: any_new_result1_upvr_3 (readonly)
		[12]: var40_upvw (read and write)
		[13]: var48_upvw (read and write)
		[14]: var49_upvw (read and write)
		[15]: var50_upvw (read and write)
		[16]: var51_upvw (read and write)
		[17]: tbl_upvr_8 (readonly)
		[18]: RunService_upvr (readonly)
		[19]: StepFreecam_upvr (readonly)
		[20]: tbl_upvr_9 (readonly)
	]]
	if not var44_upvw and var20_upvw then
		script:SetAttribute("FreecamEnabled", true)
	end
	local CFrame = CurrentCamera_upvw.CFrame
	if var36_upvw then
		var60_upvw = Vector3.new(CFrame:toEulerAnglesYXZ())
	else
		var60_upvw = Vector2.new(CFrame:toEulerAnglesYXZ())
	end
	zero_vector3_upvw = CFrame.p
	var61_upvw = CurrentCamera_upvw.FieldOfView
	any_new_result1_upvr:Reset(Vector3.new())
	any_new_result1_upvr_4:Reset(Vector2.new())
	any_new_result1_upvr_2:Reset(0)
	if var36_upvw then
		any_new_result1_upvr_3:Reset(0)
	end
	if var40_upvw then
		var48_upvw = 1.5
		var49_upvw = 1
		var50_upvw = 4
		var51_upvw = 1
	end
	tbl_upvr_8.Push()
	RunService_upvr:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam_upvr)
	tbl_upvr_9.StartCapture()
end
local function _() -- Line 740, Named "StopFreecam"
	--[[ Upvalues[5]:
		[1]: var44_upvw (read and write)
		[2]: var20_upvw (read and write)
		[3]: tbl_upvr_9 (readonly)
		[4]: RunService_upvr (readonly)
		[5]: tbl_upvr_8 (readonly)
	]]
	if not var44_upvw and var20_upvw then
		script:SetAttribute("FreecamEnabled", false)
	end
	tbl_upvr_9.StopCapture()
	RunService_upvr:UnbindFromRenderStep("Freecam")
	tbl_upvr_8.Pop()
end
local var199_upvw = false
local function _() -- Line 757, Named "ToggleFreecam"
	--[[ Upvalues[7]:
		[1]: var199_upvw (read and write)
		[2]: var44_upvw (read and write)
		[3]: var20_upvw (read and write)
		[4]: tbl_upvr_9 (readonly)
		[5]: RunService_upvr (readonly)
		[6]: tbl_upvr_8 (readonly)
		[7]: StartFreecam_upvr (readonly)
	]]
	if var199_upvw then
		if not var44_upvw and var20_upvw then
			script:SetAttribute("FreecamEnabled", false)
		end
		tbl_upvr_9.StopCapture()
		RunService_upvr:UnbindFromRenderStep("Freecam")
		tbl_upvr_8.Pop()
	else
		StartFreecam_upvr()
	end
	var199_upvw = not var199_upvw
	if var44_upvw then
		script:SetAttribute("FreecamEnabled", var199_upvw)
	end
end
local function CheckMacro_upvr(arg1) -- Line 769, Named "CheckMacro"
	--[[ Upvalues[8]:
		[1]: UserInputService_upvr (readonly)
		[2]: var199_upvw (read and write)
		[3]: var44_upvw (read and write)
		[4]: var20_upvw (read and write)
		[5]: tbl_upvr_9 (readonly)
		[6]: RunService_upvr (readonly)
		[7]: tbl_upvr_8 (readonly)
		[8]: StartFreecam_upvr (readonly)
	]]
	for i_11 = 1, #arg1 - 1 do
		if not UserInputService_upvr:IsKeyDown(arg1[i_11]) then return end
	end
	if var199_upvw then
		if not var44_upvw and var20_upvw then
			i_11 = "FreecamEnabled"
			script:SetAttribute(i_11, false)
		end
		tbl_upvr_9.StopCapture()
		i_11 = "Freecam"
		RunService_upvr:UnbindFromRenderStep(i_11)
		tbl_upvr_8.Pop()
	else
		StartFreecam_upvr()
	end
	var199_upvw = not var199_upvw
	if var44_upvw then
		i_11 = "FreecamEnabled"
		script:SetAttribute(i_11, var199_upvw)
	end
end
ContextActionService_upvr:BindActionAtPriority("FreecamToggle", function(arg1, arg2, arg3) -- Line 778, Named "HandleActivationInput"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: CheckMacro_upvr (readonly)
	]]
	if arg2 == Enum.UserInputState.Begin and arg3.KeyCode == tbl_upvr_3[#tbl_upvr_3] then
		CheckMacro_upvr(tbl_upvr_3)
	end
	return Enum.ContextActionResult.Pass
end, false, Enum.ContextActionPriority.Low.Value, tbl_upvr_3[#tbl_upvr_3])
if var44_upvw or var20_upvw then
	script:SetAttribute("FreecamEnabled", var199_upvw)
	script:GetAttributeChangedSignal("FreecamEnabled"):Connect(function() -- Line 791
		--[[ Upvalues[7]:
			[1]: var199_upvw (read and write)
			[2]: StartFreecam_upvr (readonly)
			[3]: var44_upvw (read and write)
			[4]: var20_upvw (read and write)
			[5]: tbl_upvr_9 (readonly)
			[6]: RunService_upvr (readonly)
			[7]: tbl_upvr_8 (readonly)
		]]
		local FreecamEnabled = script:GetAttribute("FreecamEnabled")
		if typeof(FreecamEnabled) ~= "boolean" then
			script:SetAttribute("FreecamEnabled", var199_upvw)
		elseif FreecamEnabled ~= var199_upvw then
			if FreecamEnabled then
				StartFreecam_upvr()
				var199_upvw = true
				return
			end
			if not var44_upvw and var20_upvw then
				script:SetAttribute("FreecamEnabled", false)
			end
			tbl_upvr_9.StopCapture()
			RunService_upvr:UnbindFromRenderStep("Freecam")
			tbl_upvr_8.Pop()
			var199_upvw = false
		end
	end)
end