-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:47
-- Luau version 6, Types version 3
-- Time taken: 0.048229 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_7_upvr = {}
local TweenService_upvr = game:GetService("TweenService")
local any_IsRunning_result1 = game:GetService("RunService"):IsRunning()
if any_IsRunning_result1 then
	any_IsRunning_result1 = game:GetService("RunService"):IsClient()
end
local var8
if any_IsRunning_result1 then
	var8 = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end
module_7_upvr.PlayerGui = var8
module_7_upvr.RobuxUnicode = utf8.char(57346)
module_7_upvr.InputMode_mouse_keyboard = 1
module_7_upvr.InputMode_touch = 2
module_7_upvr.InputMode_gamepad = 3
module_7_upvr.InputMode_vr = 4
module_7_upvr.InputMode = module_7_upvr.InputMode_mouse_keyboard
module_7_upvr.C3_Lerp = Color3.new().Lerp
module_7_upvr.C3_Black = Color3.new(0, 0, 0)
module_7_upvr.C3_White = Color3.new(1, 1, 1)
function module_7_upvr.CSK(arg1, arg2) -- Line 173
	return ColorSequenceKeypoint.new(arg1, arg2)
end
function module_7_upvr.NSK(arg1, arg2, arg3) -- Line 176
	return NumberSequenceKeypoint.new(arg1, arg2, arg3)
end
local Font_new_result1 = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular)
module_7_upvr.SharedTheme = {
	Font_Italic = Font.new(Font_new_result1.Family, Font_new_result1.Weight, Enum.FontStyle.Italic);
	Font_Normal = Font_new_result1;
	Font_Semibold = Font_new_result1;
	Stroke = module_7_upvr.C3_Black;
	StrokeHot = module_7_upvr.C3_White;
	Text = module_7_upvr.C3_White;
}
function module_7_upvr.PropsMerge(arg1, ...) -- Line 210
	local clone_2 = table.clone(arg1)
	for _, v in {...} do
		for i_2, v_2 in v do
			clone_2[i_2] = v_2
		end
	end
	return clone_2
end
function module_7_upvr.PropsApply(arg1, ...) -- Line 220
	-- KONSTANTERROR: [0] 1. Error Block 31 start (CF ANALYSIS FAILED)
	local args_list = {...}
	if args_list[1] then
		if not args_list[2] then
			local _1 = args_list[1]
			for i_3, v_3 in _1 do
				if i_3 ~= "Parent" then
					arg1[i_3] = v_3
				end
			end
			if _1.Parent then
				arg1.Parent = _1.Parent
			end
			-- KONSTANTWARNING: GOTO [44] #35
		end
		-- KONSTANTWARNING: GOTO [13] #12
	end
	-- KONSTANTERROR: [0] 1. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 35. Error Block 16 start (CF ANALYSIS FAILED)
	do
		return arg1
	end
	-- KONSTANTERROR: [44] 35. Error Block 16 end (CF ANALYSIS FAILED)
end
module_7_upvr.M = module_7_upvr.PropsMerge
module_7_upvr.A = module_7_upvr.PropsApply
function module_7_upvr.I(arg1, ...) -- Line 254
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local any = Instance.new(arg1)
	module_7_upvr.PropsApply(any, ...)
	return any
end
function module_7_upvr.C(arg1, ...) -- Line 259
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local clone = arg1:Clone()
	module_7_upvr.PropsApply(clone, ...)
	return clone
end
function module_7_upvr.O(arg1, ...) -- Line 267
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local args_list_2 = {...}
	if args_list_2[1] then
		if not args_list_2[2] then
			for i_4, v_4 in args_list_2[1] do
				arg1[i_4] = v_4
			end
			-- KONSTANTWARNING: GOTO [35] #30
		end
		-- KONSTANTWARNING: GOTO [13] #12
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 30. Error Block 12 start (CF ANALYSIS FAILED)
	do
		return arg1
	end
	-- KONSTANTERROR: [35] 30. Error Block 12 end (CF ANALYSIS FAILED)
end
function module_7_upvr.RaycastParamsNew(...) -- Line 302
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	return module_7_upvr.O(RaycastParams.new(), ...)
end
function module_7_upvr.OverlapParamsNew(...) -- Line 313
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	return module_7_upvr.O(OverlapParams.new(), ...)
end
function module_7_upvr.Lerp(arg1, arg2, arg3) -- Line 409
	return (1 - arg3) * arg1 + arg3 * arg2
end
function module_7_upvr.LerpClamp(arg1, arg2, arg3) -- Line 412
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	return module_7_upvr.Lerp(arg1, arg2, math.clamp(arg3, 0, 1))
end
function module_7_upvr.InvLerp(arg1, arg2, arg3) -- Line 416
	return (arg3 - arg1) / (arg2 - arg1)
end
function module_7_upvr.InvLerpClamp(arg1, arg2, arg3) -- Line 419
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local clamped_4 = math.clamp(module_7_upvr.InvLerp(arg1, arg2, arg3), 0, 1)
	if clamped_4 ~= clamped_4 then
		return 1
	end
	return clamped_4
end
function module_7_upvr.Damp(arg1, arg2, arg3) -- Line 426
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	return module_7_upvr.Lerp(arg1, arg2, math.clamp(1 - math.exp(-arg3), 0, 1))
end
function module_7_upvr.Map(arg1, arg2, arg3, arg4, arg5) -- Line 434
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	return module_7_upvr.Lerp(arg4, arg5, module_7_upvr.InvLerp(arg1, arg2, arg3))
end
function module_7_upvr.MapClamp(arg1, arg2, arg3, arg4, arg5) -- Line 443
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	return module_7_upvr.LerpClamp(arg4, arg5, module_7_upvr.InvLerpClamp(arg1, arg2, arg3))
end
function module_7_upvr.NumericTweenCreate(arg1, arg2, arg3, arg4, arg5) -- Line 484
	local module_6 = {}
	module_6.ValueStart = arg1
	module_6.ValueTarget = arg1
	module_6.ValueCurrent = arg1
	module_6.StartedAt = 0
	module_6.Duration = arg2 or 1
	module_6.EasingStyle = arg3
	module_6.EasingDirection = arg4
	module_6.ConstantSpeed = arg5
	module_6.Dirty = true
	module_6.Completed = false
	return module_6
end
function module_7_upvr.NumericTweenCalculateDuration(arg1, arg2, arg3) -- Line 508
	local var32 = math.max(arg2, arg3) - math.min(arg2, arg3)
	if var32 == 0 then
		return 0
	end
	return arg1 / var32
end
function module_7_upvr.NumericTweenBegin(arg1, arg2, arg3) -- Line 520
	local var33 = false
	if arg1.ValueTarget ~= arg3 then
		arg1.ValueTarget = arg3
		arg1.ValueStart = arg1.ValueCurrent or arg3
		arg1.StartedAt = arg2
		var33 = true
	end
	return var33
end
function module_7_upvr.NumericTweenBeginAbsolute(arg1, arg2, arg3, arg4) -- Line 536
	arg1.ValueStart = arg3
	arg1.ValueTarget = arg4
	arg1.ValueCurrent = arg3
	arg1.StartedAt = arg2
end
function module_7_upvr.NumericTweenUpdate(arg1, arg2) -- Line 548
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var34 = arg1.ValueStart or 0
	local var35 = arg1.ValueTarget or 0
	local Duration = arg1.Duration
	if arg1.ConstantSpeed then
		Duration *= math.abs(var35 - var34)
	end
	if Duration == 0 then
	else
	end
	local var37
	if var37 < 1 and arg1.EasingStyle then
		local EasingDirection_3 = arg1.EasingDirection
		if not EasingDirection_3 then
			EasingDirection_3 = Enum.EasingDirection.Out
		end
		var37 = TweenService_upvr:GetValue(var37, arg1.EasingStyle, EasingDirection_3)
	end
	arg1.ValueCurrent = math.clamp((1 - var37) * var34 + var37 * var35, math.min(var34, var35), math.max(var34, var35))
	if arg1.ValueCurrent ~= var35 then
	else
	end
	arg1.Completed = true
	if arg1.Cached_ValueCurrent == arg1.ValueCurrent then
	else
	end
	arg1.Dirty = true
	arg1.Cached_ValueCurrent = arg1.ValueCurrent
	return arg1.Completed
end
function module_7_upvr.NumericTweenIsDone(arg1, arg2) -- Line 586
	local Completed = arg1.Completed
	if Completed then
		if arg1.ValueTarget ~= arg2 then
			Completed = false
		else
			Completed = true
		end
	end
	return Completed
end
function module_7_upvr.BasicTweenCreate(arg1, arg2, arg3, arg4) -- Line 608
	local module_4 = {}
	local var41
	if arg4 then
		var41 = 1
	else
		var41 = 0
	end
	module_4.Value = var41
	var41 = 0
	module_4.StartedAt = var41
	var41 = arg1 or 1
	module_4.Duration = var41
	module_4.EasingStyle = arg2
	module_4.EasingDirection = arg3
	var41 = true
	module_4.Dirty = var41
	if arg4 then
		var41 = true
	else
		var41 = false
	end
	module_4.Completed = var41
	return module_4
end
function module_7_upvr.BasicTweenBegin(arg1, arg2) -- Line 628
	arg1.StartedAt = arg2
	return true
end
function module_7_upvr.BasicTweenUpdate(arg1, arg2) -- Line 636
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var45
	if arg1.Duration == 0 then
		var45 = 1
	else
		var45 = math.clamp((arg2 - arg1.StartedAt) / arg1.Duration, 0, 1)
	end
	if var45 < 1 then
		if arg1.EasingStyle then
			local EasingDirection_2 = arg1.EasingDirection
			if not EasingDirection_2 then
				EasingDirection_2 = Enum.EasingDirection.Out
			end
			arg1.Value = TweenService_upvr:GetValue(var45, arg1.EasingStyle, EasingDirection_2)
			-- KONSTANTWARNING: GOTO [43] #31
		end
	end
	arg1.Value = var45
	if var45 ~= 1 then
	else
	end
	arg1.Completed = true
	if arg1.Cached_Value == arg1.Value then
	else
	end
	arg1.Dirty = true
	arg1.Cached_Value = arg1.Value
	return arg1.Completed
end
function module_7_upvr.BasicColorTweenCreate(arg1, arg2, arg3, arg4) -- Line 671
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local any_BasicTweenCreate_result1 = module_7_upvr.BasicTweenCreate(arg2, arg3, arg4)
	any_BasicTweenCreate_result1.ValueStart = arg1
	any_BasicTweenCreate_result1.ValueTarget = arg1
	any_BasicTweenCreate_result1.ValueCurrent = arg1
	return any_BasicTweenCreate_result1
end
function module_7_upvr.BasicColorTweenBegin(arg1, arg2, arg3) -- Line 686
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local var49 = false
	if arg1.ValueTarget ~= arg3 then
		arg1.ValueTarget = arg3
		arg1.ValueStart = arg1.ValueCurrent or arg3
		if arg1.ValueTarget ~= arg1.ValueStart then
			var49 = module_7_upvr.BasicTweenBegin(arg1, arg2)
		end
	end
	return var49
end
function module_7_upvr.BasicColorTweenUpdate(arg1, arg2) -- Line 703
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.BasicTweenUpdate(arg1, arg2)
	if arg1.Dirty then
		if not arg1.ValueStart then
			warn(debug.traceback("BasicColorTween is missing colors in Update function!"))
			arg1.Dirty = false
		else
			arg1.ValueCurrent = arg1.ValueStart:Lerp(arg1.ValueTarget, arg1.Value)
		end
	end
	return arg1.Completed
end
function module_7_upvr.BasicGenericTweenCreate(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 734
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local any_BasicTweenCreate_result1_2 = module_7_upvr.BasicTweenCreate(arg4, arg5, arg6)
	any_BasicTweenCreate_result1_2.ValueStart = arg1
	any_BasicTweenCreate_result1_2.ValueTarget = arg1
	any_BasicTweenCreate_result1_2.ValueCurrent = arg1
	any_BasicTweenCreate_result1_2.GenericEquality = arg2
	any_BasicTweenCreate_result1_2.GenericLerp = arg3
	return any_BasicTweenCreate_result1_2
end
local function _(arg1, arg2, arg3) -- Line 752, Named "DoGenericInequality"
	local var51
	if arg3 then
		var51 = not arg3(arg1, arg2)
		return var51
	end
	if arg1 == arg2 then
		var51 = false
	else
		var51 = true
	end
	return var51
end
function module_7_upvr.BasicGenericTweenBegin(arg1, arg2, arg3) -- Line 766
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local ValueTarget = arg1.ValueTarget
	local GenericEquality = arg1.GenericEquality
	local var54
	if GenericEquality then
		var54 = not GenericEquality(arg3, ValueTarget)
		-- KONSTANTWARNING: GOTO [17] #15
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 12. Error Block 24 start (CF ANALYSIS FAILED)
	if arg3 == ValueTarget then
		var54 = false
	else
		var54 = true
	end
	-- KONSTANTERROR: [13] 12. Error Block 24 end (CF ANALYSIS FAILED)
end
function module_7_upvr.BasicGenericTweenReset(arg1, arg2, arg3) -- Line 787
	arg1.ValueCurrent = arg3
	arg1.ValueStart = arg3
	arg1.ValueTarget = arg3
	arg1.StartedAt = arg2
	arg1.Value = 0
	arg1.Dirty = true
end
local function _(arg1, arg2, arg3, arg4) -- Line 800, Named "DoGenericLerp"
	if arg4 then
		return arg4(arg1, arg2, arg3)
	end
	return arg1:Lerp(arg2, arg3)
end
function module_7_upvr.BasicGenericTweenUpdate(arg1, arg2) -- Line 814
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.BasicTweenUpdate(arg1, arg2)
	if arg1.Dirty and not arg1.ValueStart then
		warn(debug.traceback("BasicGenericTween is missing values in Update function!"))
		arg1.Dirty = false
	end
	if arg1.Dirty then
		arg1.ValueCurrent = arg1.ValueStart:Lerp(arg1.ValueTarget, arg1.Value)
	end
	return arg1.Completed
end
function module_7_upvr.NumericTweener(arg1, arg2, arg3) -- Line 835
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.NumericTweenBegin(arg1, arg2, arg3)
	module_7_upvr.NumericTweenUpdate(arg1, arg2)
	return arg1.Dirty
end
function module_7_upvr.BasicColorTweener(arg1, arg2, arg3) -- Line 846
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.BasicColorTweenBegin(arg1, arg2, arg3)
	module_7_upvr.BasicColorTweenUpdate(arg1, arg2)
	return arg1.Dirty
end
function module_7_upvr.BasicGenericTweener(arg1, arg2, arg3) -- Line 857
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.BasicGenericTweenBegin(arg1, arg2, arg3)
	module_7_upvr.BasicGenericTweenUpdate(arg1, arg2)
	return arg1.Dirty
end
function module_7_upvr.WCH_Create() -- Line 878
	return {
		StarterGui = game:GetService("StarterGui");
		Keys = {};
	}
end
function module_7_upvr.WCH_Update(arg1) -- Line 886
	if arg1.Keys[1] then
		arg1.WasChatOpenedByPlayer = arg1.StarterGui:GetCore("ChatActive")
	end
end
function module_7_upvr.WCH_Set(arg1, arg2, arg3) -- Line 893
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local table_find_result1_7 = table.find(arg1.Keys, arg2)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 24. Error Block 5 start (CF ANALYSIS FAILED)
	arg1.StarterGui:SetCore("ChatActive", false)
	do
		return
	end
	-- KONSTANTERROR: [33] 24. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 30. Error Block 15 start (CF ANALYSIS FAILED)
	if table_find_result1_7 then
		table.remove(arg1.Keys, table_find_result1_7)
		if not arg1.Keys[1] then
			if arg1.WasChatOpenedByPlayer then
				arg1.WasChatActive = true
			end
			arg1.StarterGui:SetCore("ChatActive", arg1.WasChatActive)
			arg1.WasChatActive = nil
			arg1.WasChatOpenedByPlayer = nil
		end
	end
	-- KONSTANTERROR: [41] 30. Error Block 15 end (CF ANALYSIS FAILED)
end
local tbl_21_upvr = {}
local tbl_4_upvr = {}
function module_7_upvr.GI_GetInputPosition(arg1) -- Line 957
	local var60
	if arg1.TouchInputObject then
		var60 = arg1.TouchInputObject.Position
		return var60
	end
	if arg1.MoveInputObject then
		var60 = arg1.MoveInputObject.Position
	end
	return var60
end
function module_7_upvr.GI_Destroy(arg1) -- Line 967
	if arg1.BeginConnection then
		arg1.BeginConnection:Disconnect()
		arg1.BeginConnection = nil
	end
	if arg1.EndConnection then
		arg1.EndConnection:Disconnect()
		arg1.EndConnection = nil
	end
	if arg1.ChangedConnection then
		arg1.ChangedConnection:Disconnect()
		arg1.ChangedConnection = nil
	end
	if arg1.GuiStateConnection then
		arg1.GuiStateConnection:Disconnect()
		arg1.GuiStateConnection = nil
	end
end
function module_7_upvr.GI_SetState(arg1, arg2, arg3) -- Line 986
	--[[ Upvalues[2]:
		[1]: tbl_21_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	local var67 = arg2 or false
	local var68 = arg3 or false
	local StateHot_2 = arg1.StateHot
	local StatePress_2 = arg1.StatePress
	if StateHot_2 ~= var67 or StatePress_2 ~= var68 then
		if StateHot_2 and not var67 then
			if arg1.TouchInputObject then
				arg1.TouchInputObject = nil
				local table_find_result1_2 = table.find(tbl_21_upvr, arg1)
				if table_find_result1_2 then
					table.remove(tbl_21_upvr, table_find_result1_2)
				end
			end
			if arg1.ButtonInputObject then
				arg1.ButtonInputObject = nil
				local table_find_result1_4 = table.find(tbl_4_upvr, arg1)
				if table_find_result1_4 then
					table.remove(tbl_4_upvr, table_find_result1_4)
				end
			end
			arg1.MoveInputObject = nil
			arg1.MoveInputHasEnded = nil
		end
		arg1.StateHot = var67
		arg1.StatePress = var68
		arg1.StateDirty = true
		if arg1.StateChangedCallback then
			arg1.StateChangedCallback(arg1, var67, StateHot_2, var68, StatePress_2)
		end
	end
end
local function UpdateState_upvr(arg1) -- Line 1030, Named "UpdateState"
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 16. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 16. Error Block 8 end (CF ANALYSIS FAILED)
end
if any_IsRunning_result1 then
	game:GetService("UserInputService").InputEnded:Connect(function(arg1) -- Line 1051
		--[[ Upvalues[3]:
			[1]: tbl_21_upvr (readonly)
			[2]: UpdateState_upvr (readonly)
			[3]: tbl_4_upvr (readonly)
		]]
		if arg1.UserInputType == Enum.UserInputType.Touch then
			for i_5 = #tbl_21_upvr, 1, -1 do
				local var76 = tbl_21_upvr[i_5]
				if var76.TouchInputObject == arg1 then
					var76.TouchInputObject = nil
					UpdateState_upvr(var76)
				end
			end
		elseif arg1.UserInputType == Enum.UserInputType.MouseButton1 then
			for i_23 = #tbl_4_upvr, 1, -1 do
				local var77 = tbl_4_upvr[i_23]
				if var77.ButtonInputObject == arg1 then
					var77.ButtonInputObject = nil
					if var77.MoveInputHasEnded then
						var77.MoveInputHasEnded = nil
						var77.MoveInputObject = nil
					end
					UpdateState_upvr(var77)
				end
			end
		end
	end)
end
function module_7_upvr.GI_Create(arg1) -- Line 1076
	--[[ Upvalues[3]:
		[1]: tbl_21_upvr (readonly)
		[2]: UpdateState_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
	]]
	local module_12_upvr = {}
	module_12_upvr.Instance = arg1
	module_12_upvr.StateHot = false
	module_12_upvr.StatePress = false
	module_12_upvr.StateDirty = true
	module_12_upvr.GuiState = arg1.GuiState
	module_12_upvr.BeginConnection = arg1.InputBegan:Connect(function(arg1_2) -- Line 1085
		--[[ Upvalues[4]:
			[1]: module_12_upvr (readonly)
			[2]: tbl_21_upvr (copied, readonly)
			[3]: UpdateState_upvr (copied, readonly)
			[4]: tbl_4_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [16] 10. Error Block 20 start (CF ANALYSIS FAILED)
		module_12_upvr.TouchInputObject = arg1_2
		if not table.find(tbl_21_upvr, module_12_upvr) then
			tbl_21_upvr[#tbl_21_upvr + 1] = module_12_upvr
		end
		UpdateState_upvr(module_12_upvr)
		do
			return
		end
		-- KONSTANTERROR: [16] 10. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 27. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 27. Error Block 7 end (CF ANALYSIS FAILED)
	end)
	module_12_upvr.EndConnection = arg1.InputEnded:Connect(function(arg1_3) -- Line 1115
		--[[ Upvalues[4]:
			[1]: module_12_upvr (readonly)
			[2]: tbl_21_upvr (copied, readonly)
			[3]: UpdateState_upvr (copied, readonly)
			[4]: tbl_4_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 10. Error Block 26 start (CF ANALYSIS FAILED)
		module_12_upvr.TouchInputObject = nil
		local table_find_result1 = table.find(tbl_21_upvr, module_12_upvr)
		if table_find_result1 then
			table.remove(tbl_21_upvr, table_find_result1)
		end
		UpdateState_upvr(module_12_upvr)
		do
			return
		end
		-- KONSTANTERROR: [17] 10. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 26. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 26. Error Block 7 end (CF ANALYSIS FAILED)
	end)
	module_12_upvr.ChangedConnection = arg1.InputChanged:Connect(function(arg1_4) -- Line 1155
		--[[ Upvalues[2]:
			[1]: module_12_upvr (readonly)
			[2]: UpdateState_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 8 start (CF ANALYSIS FAILED)
		if arg1_4 == module_12_upvr.TouchInputObject then
			-- KONSTANTERROR: [10] 7. Error Block 6 start (CF ANALYSIS FAILED)
			UpdateState_upvr(module_12_upvr)
			-- KONSTANTERROR: [10] 7. Error Block 6 end (CF ANALYSIS FAILED)
		end
		-- KONSTANTERROR: [5] 4. Error Block 8 end (CF ANALYSIS FAILED)
	end)
	module_12_upvr.GuiStateConnection = arg1:GetPropertyChangedSignal("GuiState"):Connect(function() -- Line 1163, Named "GuiStateChanged"
		--[[ Upvalues[3]:
			[1]: module_12_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: UpdateState_upvr (copied, readonly)
		]]
		module_12_upvr.GuiState = arg1.GuiState
		UpdateState_upvr(module_12_upvr)
	end)
	module_12_upvr.GuiState = arg1.GuiState
	UpdateState_upvr(module_12_upvr)
	return module_12_upvr
end
local ScreenGui_upvr_2 = Instance.new("ScreenGui")
ScreenGui_upvr_2.Name = "SAC_CoreUISafeArea"
ScreenGui_upvr_2.Parent = var8
ScreenGui_upvr_2.ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets
local ScreenGui_upvr = Instance.new("ScreenGui")
ScreenGui_upvr.Name = "SAC_DeviceSafeArea"
ScreenGui_upvr.Parent = var8
ScreenGui_upvr.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
local ScreenGui_upvw = Instance.new("ScreenGui")
ScreenGui_upvw.Name = "SAC_Fullscreen"
ScreenGui_upvw.Parent = var8
ScreenGui_upvw.ScreenInsets = Enum.ScreenInsets.None
function module_7_upvr.SafeAreaCacheCreate() -- Line 1209
	return {
		CSize = Vector2.zero;
		CPos = Vector2.zero;
		DSize = Vector2.zero;
		DPos = Vector2.zero;
		FSize = Vector2.zero;
		FPos = Vector2.zero;
	}
end
function module_7_upvr.SafeAreaCacheUpdate(arg1) -- Line 1222
	--[[ Upvalues[3]:
		[1]: ScreenGui_upvr_2 (readonly)
		[2]: ScreenGui_upvr (readonly)
		[3]: ScreenGui_upvw (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local AbsoluteSize_4 = ScreenGui_upvr_2.AbsoluteSize
	local AbsoluteSize = ScreenGui_upvr.AbsoluteSize
	local AbsolutePosition_3 = ScreenGui_upvr.AbsolutePosition
	local AbsoluteSize_2 = ScreenGui_upvw.AbsoluteSize
	local AbsolutePosition_2 = ScreenGui_upvw.AbsolutePosition
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 16. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 16. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 18. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 18. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 20. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 20. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 22. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 22. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 26. Error Block 10 start (CF ANALYSIS FAILED)
	arg1.FSize = AbsoluteSize_2
	arg1.FPos = AbsolutePosition_2
	arg1.DSize = AbsoluteSize
	arg1.DPos = AbsolutePosition_3
	arg1.CSize = AbsoluteSize_4
	arg1.CPos = ScreenGui_upvr_2.AbsolutePosition
	-- KONSTANTERROR: [43] 26. Error Block 10 end (CF ANALYSIS FAILED)
end
function module_7_upvr.SAC_FRectInCSpace(arg1) -- Line 1257
	local var92 = arg1.FPos - arg1.CPos
	return var92, var92 + arg1.FSize
end
function module_7_upvr.SAC_DRectInCSpace(arg1) -- Line 1261
	local var93 = arg1.DPos - arg1.FPos
	return var93, var93 + arg1.DSize
end
function module_7_upvr.SAC_FRectInDSpace(arg1) -- Line 1266
	local var94 = arg1.FPos - arg1.DPos
	return var94, var94 + arg1.FSize
end
function module_7_upvr.SAC_CRectInDSpace(arg1) -- Line 1270
	local var95 = arg1.CPos - arg1.DPos
	return var95, var95 + arg1.CSize
end
function module_7_upvr.SAC_CRectInFSpace(arg1) -- Line 1275
	local var96 = arg1.CPos - arg1.FPos
	return var96, var96 + arg1.CSize
end
function module_7_upvr.SAC_DRectInFSpace(arg1) -- Line 1279
	local var97 = arg1.DPos - arg1.FPos
	return var97, var97 + arg1.DSize
end
ScreenGui_upvr_2 = nil
ScreenGui_upvr = nil
ScreenGui_upvw = nil
ScreenGui_upvr_2 = Instance.new("ScreenGui")
local var98_upvw = ScreenGui_upvr_2
var98_upvw.Name = "TextBoundsGui"
var98_upvw.IgnoreGuiInset = true
var98_upvw.ResetOnSpawn = false
var98_upvw.SafeAreaCompatibility = Enum.SafeAreaCompatibility.None
var98_upvw.ScreenInsets = Enum.ScreenInsets.None
var98_upvw.Parent = var8
ScreenGui_upvr = module_7_upvr.I("TextLabel", {
	Parent = var98_upvw;
	RichText = true;
	TextWrapped = true;
	Interactable = false;
	Size = UDim2.fromScale(1, 1);
	Position = UDim2.fromScale(-100, -100);
	BackgroundTransparency = 1;
})
local var100_upvw = ScreenGui_upvr
ScreenGui_upvw = module_7_upvr.C(var100_upvw, {
	Parent = var98_upvw;
	RichText = false;
})
function module_7_upvr.TextBoundsCreate(arg1, arg2) -- Line 1334
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var102
	if typeof(arg1) ~= "Font" then
		if var102 == Enum.Font.Unknown then
			error("Enum.Font.Unknown is not valid. Must provide Font object instead.", 2)
		else
			var102 = Font.fromEnum(var102)
		end
	end
	local module_21 = {
		TextFont = var102;
	}
	if arg2 ~= true then
	else
	end
	module_21.RichText = true
	module_21.TextSize = 0
	module_21.Text = ""
	module_21.FrameSizeX = 0
	module_21.X = 0
	module_21.Y = 0
	return module_21
end
local GetTextBoundsParams_upvr = Instance.new("GetTextBoundsParams")
local TextService_upvr = game:GetService("TextService")
function module_7_upvr.TextBoundsUpdate(arg1, arg2, arg3, arg4) -- Line 1362
	--[[ Upvalues[4]:
		[1]: GetTextBoundsParams_upvr (readonly)
		[2]: TextService_upvr (readonly)
		[3]: var100_upvw (read and write)
		[4]: ScreenGui_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 2 start (CF ANALYSIS FAILED)
	arg1.QueryResult = nil
	-- KONSTANTERROR: [13] 11. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 3 end (CF ANALYSIS FAILED)
end
module_7_upvr.MaxEmSize = 18
local GuiService_upvr = game:GetService("GuiService")
function module_7_upvr.RenderStepped() -- Line 1455
	--[[ Upvalues[3]:
		[1]: GuiService_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: var98_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_GetGuiInset_result1, any_GetGuiInset_result2 = GuiService_upvr:GetGuiInset()
	module_7_upvr.ScreenInsetTopLeft = any_GetGuiInset_result1
	module_7_upvr.ScreenInsetBottomRight = any_GetGuiInset_result2
	local workspace = workspace
	local ViewportSize = workspace.CurrentCamera.ViewportSize
	local var112
	if module_7_upvr.ViewportSize == ViewportSize then
		workspace = false
	else
		workspace = true
	end
	module_7_upvr.ViewportSizeDirty = workspace
	if module_7_upvr.ViewportSizeDirty then
		module_7_upvr.ViewportSize = ViewportSize
	end
	local AbsoluteSize_3 = var98_upvw.AbsoluteSize
	local AbsolutePosition = var98_upvw.AbsolutePosition
	var112 = module_7_upvr.DeviceSize
	if var112 == AbsoluteSize_3 then
		var112 = module_7_upvr.DevicePosition
		if var112 == AbsolutePosition then
		else
		end
	end
	module_7_upvr.DeviceDirty = true
	if module_7_upvr.DeviceDirty then
		module_7_upvr.DeviceSize = AbsoluteSize_3
		module_7_upvr.DevicePosition = AbsolutePosition
		var112 = module_7_upvr.ScreenInsetTopLeft
		module_7_upvr.DeviceInsetTopLeft = AbsolutePosition + var112
		var112 = AbsoluteSize_3 - ViewportSize
		module_7_upvr.DeviceInsetBottomRight = var112 - module_7_upvr.DeviceInsetTopLeft
	end
	local TopbarInset = GuiService_upvr.TopbarInset
	if TopbarInset == Rect.new() then
		var112 = any_GetGuiInset_result1.X
		TopbarInset = Rect.new(var112, 0, ViewportSize.X - any_GetGuiInset_result2.X, any_GetGuiInset_result2.Y)
	end
	if module_7_upvr.TopbarInset == TopbarInset then
		var112 = false
	else
		var112 = true
	end
	module_7_upvr.TopbarInsetDirty = var112
	var112 = module_7_upvr
	if var112.TopbarInsetDirty then
		module_7_upvr.TopbarInset = TopbarInset
	end
	var112 = math.min(ViewportSize.X, ViewportSize.Y)
	if var112 < 500 then
		local _ = 0.03
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var112 = math.ceil(math.min(ViewportSize.X * 0.05, ViewportSize.Y * 0.05, 18))
	if module_7_upvr.EmSize == var112 then
	else
	end
	module_7_upvr.EmSizeDirty = true
	module_7_upvr.EmSize = var112
	module_7_upvr.ScrollBarThickness = math.ceil(module_7_upvr.EmSize / 4)
	module_7_upvr.CornerDim = module_7_upvr.EmSize * 1.44
	module_7_upvr.CornerDimSmall = module_7_upvr.EmSize * 0.9359999999999999
	module_7_upvr.CornerDimButton = module_7_upvr.EmSize * 0.72
	module_7_upvr.CornerDimButtonSmall = module_7_upvr.EmSize * 0.504
end
module_7_upvr.ViewportSize = Vector2.zero
module_7_upvr.ScreenInsetTopLeft = Vector2.zero
module_7_upvr.ScreenInsetBottomRight = Vector2.zero
module_7_upvr.ViewportSizeDirty = false
module_7_upvr.DeviceSize = Vector2.zero
module_7_upvr.DevicePosition = Vector2.zero
module_7_upvr.DeviceInsetTopLeft = Vector2.zero
module_7_upvr.DeviceInsetBottomRight = Vector2.zero
module_7_upvr.DeviceDirty = false
module_7_upvr.TopbarInset = Rect.new()
module_7_upvr.EmSize = 18
module_7_upvr.EmSizeDirty = false
module_7_upvr.ScrollBarThickness = math.ceil(module_7_upvr.EmSize / 4)
module_7_upvr.CornerDim = 0
module_7_upvr.CornerDimSmall = 0
module_7_upvr.CornerDimButton = 0
module_7_upvr.CornerDimButtonSmall = 0
module_7_upvr.CornerDimShadow = 0
module_7_upvr.Props_ScreenGui = {
	ResetOnSpawn = false;
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	IgnoreGuiInset = true;
}
module_7_upvr.Props_ScreenGuiInsets = {
	ResetOnSpawn = false;
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	ClipToDeviceSafeArea = false;
	SafeAreaCompatibility = Enum.SafeAreaCompatibility.None;
	ScreenInsets = Enum.ScreenInsets.None;
}
module_7_upvr.Props_LabelScaled = {
	BackgroundTransparency = 1;
	TextScaled = true;
	TextWrapped = true;
}
module_7_upvr.Props_LabelManual = {
	BackgroundTransparency = 1;
	TextScaled = false;
	TextWrapped = false;
}
module_7_upvr.Props_TextButton = {
	Text = "";
	Active = true;
	Selectable = true;
	AutoButtonColor = false;
	BorderSizePixel = 0;
}
module_7_upvr.Props_StrokeBorder = {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	LineJoinMode = Enum.LineJoinMode.Round;
}
module_7_upvr.Props_StrokeContextual = {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual;
	LineJoinMode = Enum.LineJoinMode.Round;
}
local function AppendFrame(arg1) -- Line 1590
	local module_2 = {}
	local BackgroundTransparency_4 = arg1.BackgroundTransparency
	if BackgroundTransparency_4 < 1 then
		module_2.BackgroundTransparency = math.clamp(1 - BackgroundTransparency_4, 0, 1)
	end
	return module_2
end
local function AppendText(arg1) -- Line 1599
	local module_11 = {}
	local BackgroundTransparency_5 = arg1.BackgroundTransparency
	if BackgroundTransparency_5 < 1 then
		module_11.BackgroundTransparency = math.clamp(1 - BackgroundTransparency_5, 0, 1)
	end
	local TextTransparency = arg1.TextTransparency
	if TextTransparency < 1 then
		module_11.TextTransparency = math.clamp(1 - TextTransparency, 0, 1)
	end
	local TextStrokeTransparency = arg1.TextStrokeTransparency
	if TextStrokeTransparency < 1 then
		module_11.TextStrokeTransparency = math.clamp(1 - TextStrokeTransparency, 0, 1)
	end
	return module_11
end
local function AppendImage(arg1) -- Line 1616
	local module_17 = {}
	local BackgroundTransparency_3 = arg1.BackgroundTransparency
	if BackgroundTransparency_3 < 1 then
		module_17.BackgroundTransparency = math.clamp(1 - BackgroundTransparency_3, 0, 1)
	end
	local ImageTransparency = arg1.ImageTransparency
	if ImageTransparency < 1 then
		module_17.ImageTransparency = math.clamp(1 - ImageTransparency, 0, 1)
	end
	return module_17
end
local tbl_12_upvr = {
	Frame = AppendFrame;
	ViewportFrame = AppendFrame;
	VideoFrame = AppendFrame;
	TextLabel = AppendText;
	TextButton = AppendText;
	TextBox = AppendText;
	ImageLabel = AppendImage;
	ImageButton = AppendImage;
	ScrollingFrame = function(arg1) -- Line 1629, Named "AppendScrollingFrame"
		local module_19 = {}
		local BackgroundTransparency_2 = arg1.BackgroundTransparency
		if BackgroundTransparency_2 < 1 then
			module_19.BackgroundTransparency = math.clamp(1 - BackgroundTransparency_2, 0, 1)
		end
		local ScrollBarImageTransparency = arg1.ScrollBarImageTransparency
		if ScrollBarImageTransparency then
			module_19.ScrollBarImageTransparency = math.clamp(1 - ScrollBarImageTransparency, 0, 1)
		end
		return module_19
	end;
	CanvasGroup = function(arg1) -- Line 1642, Named "AppendCanvasGroup"
		local module_5 = {}
		local BackgroundTransparency = arg1.BackgroundTransparency
		if BackgroundTransparency < 1 then
			module_5.BackgroundTransparency = math.clamp(1 - BackgroundTransparency, 0, 1)
		end
		local GroupTransparency = arg1.GroupTransparency
		if GroupTransparency < 1 then
			module_5.GroupTransparency = math.clamp(1 - GroupTransparency, 0, 1)
		end
		return module_5
	end;
	UIStroke = function(arg1) -- Line 1655, Named "AppendUIStroke"
		local module_13 = {}
		local Transparency = arg1.Transparency
		if Transparency < 1 then
			module_13.Transparency = math.clamp(1 - Transparency, 0, 1)
		end
		return module_13
	end;
}
function module_7_upvr.CO_Append(arg1, arg2) -- Line 1683
	--[[ Upvalues[1]:
		[1]: tbl_12_upvr (readonly)
	]]
	local module_16 = {}
	local tbl_6 = {}
	tbl_6[1] = arg2
	while true do
		local popped = table.remove(tbl_6, #tbl_6)
		if not popped then
			return module_16
		end
		local ClassName = popped.ClassName
		if not arg1[popped] then
			local var151 = tbl_12_upvr[ClassName]
			if var151 then
				arg1[popped] = var151(popped)
				module_16[#module_16 + 1] = popped
			end
		end
		if ClassName ~= "CanvasGroup" then
			local children_5 = popped:GetChildren()
			table.move(children_5, 1, #children_5, #tbl_6 + 1, tbl_6)
		end
	end
	return module_16
end
function module_7_upvr.CO_Clean(arg1, arg2) -- Line 1713
	local tbl_8 = {}
	tbl_8[1] = arg2
	while true do
		local popped_2 = table.remove(tbl_8, #tbl_8)
		if not popped_2 then return end
		arg1[popped_2] = nil
		if not popped_2:IsA("CanvasGroup") then
			local children_2 = popped_2:GetChildren()
			table.move(children_2, 1, #children_2, #tbl_8 + 1, tbl_8)
		end
	end
end
function module_7_upvr.CO_Create(arg1) -- Line 1735
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local module = {}
	if arg1 then
		module_7_upvr.CO_Append(module, arg1)
	end
	return module
end
function module_7_upvr.CO_ApplyTransparency(arg1, arg2) -- Line 1743
	local clamped_2 = math.clamp(1 - arg2, 0, 1)
	for i_6, v_5 in arg1 do
		for i_7, v_6 in v_5 do
			i_6[i_7] = 1 - v_6 * clamped_2
		end
	end
end
function module_7_upvr.CO_ApplyTransparencyToList(arg1, arg2, arg3) -- Line 1756
	local clamped_3 = math.clamp(1 - arg2, 0, 1)
	for _, v_7 in arg3 do
		local var175 = arg1[v_7]
		if var175 then
			for i_9, v_8 in var175 do
				v_7[i_9] = 1 - v_8 * clamped_3
			end
		end
	end
end
function module_7_upvr.CO_ApplyTransparencyToSingle(arg1, arg2, arg3, arg4) -- Line 1772
	arg3[arg4] = 1 - arg1[arg3][arg4] * math.clamp(1 - arg2, 0, 1)
end
function module_7_upvr.CO_AppendWithFadeTween(arg1, arg2, arg3) -- Line 1785
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	if not arg2.Dirty then
		module_7_upvr.CO_ApplyTransparencyToList(arg1, arg2.ValueCurrent, module_7_upvr.CO_Append(arg1, arg3))
	end
end
function module_7_upvr.CO_SetBaseTransparency(arg1, arg2, arg3, arg4) -- Line 1797
	local var176 = arg1[arg2]
	if not var176 then
		var176 = {}
		arg1[arg2] = var176
	end
	var176[arg3] = math.clamp(1 - arg4, 0, 1)
end
function module_7_upvr.CO_SetBaseTransparencyWithFadeTween(arg1, arg2, arg3, arg4, arg5) -- Line 1811
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.CO_SetBaseTransparency(arg1, arg3, arg4, arg5)
	if not arg2.Dirty then
		module_7_upvr.CO_ApplyTransparencyToSingle(arg1, arg2.ValueCurrent, arg3, arg4)
	end
end
local tbl_13_upvr = {}
local tbl_18_upvr = {}
local function CIO_Apply_upvr(arg1, arg2) -- Line 1873, Named "ApplyNumberSequence"
	local Keypoints_2 = arg1.Value.Keypoints
	local table_create_result1_2 = table.create(#Keypoints_2)
	for i_10, v_9 in ipairs(Keypoints_2) do
		table_create_result1_2[i_10] = NumberSequenceKeypoint.new(v_9.Time, 1 - v_9.Value * arg2, v_9.Envelope)
	end
	return NumberSequence.new(table_create_result1_2)
end
local function ApplyNumeric_upvr(arg1, arg2) -- Line 1892, Named "ApplyNumeric"
	return 1 - arg1.Value * arg2
end
local function ShadowSliceScale_upvr(arg1, arg2) -- Line 1900, Named "ApplyNumericSquared"
	return 1 - arg1.Value * arg2 ^ 2
end
local function CreateNumeric(arg1, arg2) -- Line 1947
	--[[ Upvalues[1]:
		[1]: ApplyNumeric_upvr (readonly)
	]]
	local var204 = arg1[arg2]
	local var205
	if var204 < 1 then
		var205 = {
			Apply = ApplyNumeric_upvr;
			Value = 1 - var204;
		}
	end
	return var205
end
local function CreateNumericSquared(arg1, arg2) -- Line 1966
	--[[ Upvalues[2]:
		[1]: ApplyNumeric_upvr (readonly)
		[2]: ShadowSliceScale_upvr (readonly)
	]]
	local var207 = arg1[arg2]
	local var208
	if var207 < 1 then
		var208 = {
			Apply = ApplyNumeric_upvr;
			Value = 1 - var207;
		}
	end
	local var210 = var208
	if var210 then
		var210.Apply = ShadowSliceScale_upvr
	end
	return var210
end
local tbl_10 = {
	ImageGui = {
		ImageTransparency = CreateNumeric;
	};
	NumberSequence = {
		Transparency = function(arg1, arg2) -- Line 1912, Named "CreateNumberSequence"
			--[[ Upvalues[1]:
				[1]: CIO_Apply_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local Keypoints = arg1[arg2].Keypoints
			local table_create_result1 = table.create(#Keypoints)
			local var201
			for i_11, v_10 in ipairs(Keypoints) do
				local Value = v_10.Value
				if Value < 1 then
				end
				table_create_result1[i_11] = NumberSequenceKeypoint.new(v_10.Time, 1 - Value, v_10.Envelope)
			end
			if nil then
			end
			return {
				Apply = CIO_Apply_upvr;
				Value = NumberSequence.new(table_create_result1);
			}
		end;
	};
	Numeric = {
		Transparency = CreateNumeric;
	};
	NumericSquared = {
		Transparency = CreateNumericSquared;
	};
	TextGui = {
		TextTransparency = CreateNumeric;
		TextStrokeTransparency = CreateNumericSquared;
	};
}
tbl_13_upvr.BasePart = tbl_10.Numeric
tbl_13_upvr.Decal = tbl_10.Numeric
tbl_13_upvr.Texture = tbl_10.Numeric
tbl_13_upvr.UIStroke = tbl_10.NumericSquared
tbl_13_upvr.Beam = tbl_10.NumberSequence
tbl_13_upvr.Trail = tbl_10.NumberSequence
tbl_13_upvr.ParticleEmitter = tbl_10.NumberSequence
tbl_13_upvr.GuiObject = {
	BackgroundTransparency = CreateNumeric;
}
tbl_13_upvr.Light = {
	Brightness = CreateNumeric;
}
tbl_18_upvr[tbl_13_upvr.GuiObject] = {
	CanvasGroup = {
		GroupTransparency = CreateNumeric;
	};
	ScrollingFrame = {
		ScrollBarImageTransparency = CreateNumeric;
	};
	ImageButton = tbl_10.ImageGui;
	ImageLabel = tbl_10.ImageGui;
	TextBox = tbl_10.TextGui;
	TextButton = tbl_10.TextGui;
	TextLabel = tbl_10.TextGui;
}
function CIO_Apply_upvr(arg1) -- Line 2046, Named "CIO_Create"
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local module_23 = {
		Opacities = {};
	}
	if arg1 then
		module_7_upvr.CIO_Add(module_23, arg1)
	end
	return module_23
end
module_7_upvr.CIO_Create = CIO_Apply_upvr
function CIO_Apply_upvr(arg1, arg2, arg3, arg4) -- Line 2061, Named "CIO_Add"
	--[[ Upvalues[2]:
		[1]: tbl_13_upvr (readonly)
		[2]: tbl_18_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local tbl_20 = {}
	local var224 = arg2
	tbl_20[1] = var224
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [68] 55. Error Block 32 start (CF ANALYSIS FAILED)
	if not arg4 and not var224:IsA("CanvasGroup") then
		local children = var224:GetChildren()
		table.move(children, 1, #children, #tbl_20 + 1, tbl_20)
	end
	-- KONSTANTERROR: [68] 55. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [86.263708]
	-- KONSTANTERROR: [7] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
module_7_upvr.CIO_Add = CIO_Apply_upvr
function CIO_Apply_upvr(arg1, arg2, arg3) -- Line 2126, Named "CIO_Remove"
	local module_18 = {}
	local tbl_15 = {}
	tbl_15[1] = arg2
	while 0 < #tbl_15 do
		local var244 = tbl_15[#tbl_15]
		tbl_15[#tbl_15] = nil
		local var245 = arg1.Opacities[var244]
		if var245 then
			arg1.Opacities[var244] = nil
			module_18[#module_18 + 1] = var244
			if arg3 then
				for i_12, v_11 in var245 do
					var244[i_12] = v_11:Apply(0)
					local _
				end
			end
		end
	end
	return module_18
end
module_7_upvr.CIO_Remove = CIO_Apply_upvr
function CIO_Apply_upvr(arg1, arg2, arg3) -- Line 2155, Named "CIO_Apply"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local clamped = math.clamp(1 - arg2, 0, 1)
	if arg1._LastAppliedOpacity == clamped then
	else
		arg1._LastAppliedOpacity = clamped
		local Opacities = arg1.Opacities
		if arg3 then
			Opacities = {}
			local tbl_3 = {}
			tbl_3[1] = arg3
			while 0 < #tbl_3 do
				local var266 = tbl_3[#tbl_3]
				tbl_3[#tbl_3] = nil
				Opacities[var266] = arg1.Opacities[var266]
				local children_4 = var266:GetChildren()
				table.move(children_4, 1, #children_4, #tbl_3 + 1, tbl_3)
			end
		end
		for i_21, v_17 in Opacities do
			for i_22, v_18 in v_17 do
				i_21[i_22] = v_18:Apply(clamped)
			end
		end
	end
end
module_7_upvr.CIO_Apply = CIO_Apply_upvr
CIO_Apply_upvr = {}
local var268 = CIO_Apply_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 16
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 16, 16)
var268.Text = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 95
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 95, 95)
var268.Disable = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 170
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 170, 170)
var268.Idle = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 217
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 217, 217)
var268.Hot = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 232
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 232, 232)
var268.Press = ApplyNumeric_upvr
module_7_upvr.ButtonTheme_Normal = var268
var268 = {}
local var269 = var268
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 226
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 226, 226)
var269.Text = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 0
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 0, 0)
var269.Disable = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 0
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 0, 0)
var269.Idle = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 109
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 109, 109)
var269.Hot = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 211
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 211, 211)
var269.Press = ApplyNumeric_upvr
module_7_upvr.ButtonTheme_Cancel = var269
var269 = {}
local TypicalButtonDestroy = var269
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 226
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 226, 226)
TypicalButtonDestroy.Text = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 0
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 0, 0)
TypicalButtonDestroy.Disable = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 0
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 0, 0)
TypicalButtonDestroy.Idle = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 109
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 109, 109)
TypicalButtonDestroy.Hot = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 211
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 211, 211)
TypicalButtonDestroy.Press = ApplyNumeric_upvr
module_7_upvr.ButtonTheme_Floating = TypicalButtonDestroy
function TypicalButtonDestroy(arg1, arg2, arg3) -- Line 2236, Named "TypicalButtonCreate"
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local module_22 = {}
	local tbl_14 = {}
	tbl_14.Parent = arg1
	module_22.Button = module_7_upvr.I("TextButton", module_7_upvr.Props_TextButton, tbl_14)
	if not arg3 then
		module_22.Label = module_7_upvr.I("TextLabel", module_7_upvr.Props_LabelScaled, {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			TextColor3 = arg2.Text;
			Parent = module_22.Button;
		})
	end
	module_22.ButtonCorner = module_7_upvr.I("UICorner", {
		Parent = module_22.Button;
	})
	module_22.ColorTween = module_7_upvr.BasicColorTweenCreate(nil, 0.1)
	module_22.GuiInput = module_7_upvr.GI_Create(module_22.Button)
	return module_22
end
module_7_upvr.TypicalButtonCreate = TypicalButtonDestroy
function TypicalButtonDestroy(arg1, arg2, arg3, arg4, arg5) -- Line 2260, Named "TypicalButtonUpdate"
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local var275
	if arg4 then
		if arg5 then
			var275 = arg3.Idle
		else
			var275 = arg3.Disable
		end
		-- KONSTANTWARNING: GOTO [28] #20
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 27 start (CF ANALYSIS FAILED)
	if arg2.GuiInput.StatePress then
		var275 = arg3.Press
	elseif arg2.GuiInput.StateHot then
		var275 = arg3.Hot
	else
		var275 = arg3.Idle
	end
	if module_7_upvr.BasicColorTweener(arg2.ColorTween, arg1, var275) then
		local ValueCurrent = arg2.ColorTween.ValueCurrent
		arg2.Button.BackgroundColor3 = ValueCurrent
	end
	do
		return ValueCurrent
	end
	-- KONSTANTERROR: [10] 9. Error Block 27 end (CF ANALYSIS FAILED)
end
module_7_upvr.TypicalButtonUpdate = TypicalButtonDestroy
function TypicalButtonDestroy(arg1, arg2) -- Line 2296
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.GI_Destroy(arg1.GuiInput)
	if arg2 then
		arg1.Button:Destroy()
	end
end
module_7_upvr.TypicalButtonDestroy = TypicalButtonDestroy
TypicalButtonDestroy = {}
local var277_upvr = TypicalButtonDestroy
ApplyNumeric_upvr = 0
var277_upvr.BorderSizePixel = ApplyNumeric_upvr
ApplyNumeric_upvr = UDim2.fromScale
ShadowSliceScale_upvr = 1
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 1)
var277_upvr.Size = ApplyNumeric_upvr
ApplyNumeric_upvr = Color3.fromRGB
ShadowSliceScale_upvr = 0
ApplyNumeric_upvr = ApplyNumeric_upvr(ShadowSliceScale_upvr, 0, 0)
var277_upvr.BackgroundColor3 = ApplyNumeric_upvr
ApplyNumeric_upvr = 0.5
var277_upvr.BackgroundTransparency = ApplyNumeric_upvr
ApplyNumeric_upvr = 2
var277_upvr.ZIndex = ApplyNumeric_upvr
ApplyNumeric_upvr = {}
local var278_upvr = ApplyNumeric_upvr
ShadowSliceScale_upvr = 1
var278_upvr.BackgroundTransparency = ShadowSliceScale_upvr
ShadowSliceScale_upvr = "rbxassetid://9300170950"
var278_upvr.Image = ShadowSliceScale_upvr
ShadowSliceScale_upvr = Color3.fromRGB(0, 0, 0)
var278_upvr.ImageColor3 = ShadowSliceScale_upvr
ShadowSliceScale_upvr = 0.85
var278_upvr.ImageTransparency = ShadowSliceScale_upvr
ShadowSliceScale_upvr = Enum.ScaleType.Slice
var278_upvr.ScaleType = ShadowSliceScale_upvr
ShadowSliceScale_upvr = Rect.new(256, 256, 257, 257)
var278_upvr.SliceCenter = ShadowSliceScale_upvr
function ShadowSliceScale_upvr(arg1) -- Line 2326, Named "ShadowSliceScale"
	return arg1 / 256
end
function module_7_upvr.TypicalBackgroundCreate(arg1, arg2) -- Line 2337
	--[[ Upvalues[3]:
		[1]: module_7_upvr (readonly)
		[2]: var278_upvr (readonly)
		[3]: var277_upvr (readonly)
	]]
	local module_8 = {}
	local tbl_9 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
	}
	tbl_9.Parent = arg1
	module_8.Wrapper = module_7_upvr.I("Frame", tbl_9)
	module_8.Shadow = module_7_upvr.I("ImageLabel", var278_upvr, {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		ZIndex = 1;
		Parent = module_8.Wrapper;
	})
	module_8.Background = module_7_upvr.I("Frame", var277_upvr, {
		Parent = module_8.Wrapper;
	})
	module_8.BackgroundCorner = module_7_upvr.I("UICorner", {
		Parent = module_8.Background;
	})
	module_8.ShadowOnInside = arg2
	return module_8
end
function module_7_upvr.TypicalBackgroundUpdate(arg1, arg2, arg3) -- Line 2362
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local CornerDim = module_7_upvr.CornerDim
	arg1.Wrapper.Size = UDim2.fromOffset(arg2, arg3)
	arg1.BackgroundCorner.CornerRadius = UDim.new(0, CornerDim)
	if arg1.ShadowOnInside then
		arg1.Shadow.Size = UDim2.fromScale(1, 1)
	else
		arg1.Shadow.Size = UDim2.new(1, CornerDim * 2, 1, CornerDim * 2)
	end
	arg1.Shadow.SliceScale = (CornerDim + math.sqrt(2 * CornerDim * CornerDim)) / 256
end
function module_7_upvr.TypicalBackgroundAnimate(arg1, arg2) -- Line 2381
	arg1.Wrapper.Position = UDim2.fromScale(0.5, arg2 * 0.2 + 0.5)
end
local tbl = {{0, "", "", 0}, {3, 'K', "Thousand"}, {6, 'M', "Million"}, {9, 'B', "Billion"}, {12, "Tr", "Trillion"}, {15, "Qa", "Quadrillion"}, {18, "Qi", "Quintillion"}, {21, "Sx", "Sxtillion"}, {24, "Sp", "Septillion"}, {27, 'O', "Octillion"}, {30, 'N', "Nonillion"}}
for i_13 = 2, #tbl do
	tbl[i_13][4] = 10 ^ tbl[i_13][1]
	local var297_upvr
end
function module_7_upvr.SignificantDigits(arg1, arg2, arg3) -- Line 2426
	local var298 = math.floor(arg1 / 10 ^ (arg2 - arg3)) / 10 ^ arg3
	if 100 <= var298 then
		return math.floor(var298)
	end
	if 10 <= var298 then
		return math.floor(var298 * 10) / 10
	end
	return var298
end
module_7_upvr.FormatOptions_Commas = {
	Commas = true;
	Decimals = 0;
	LongNames = false;
	NamesStartAt = math.huge;
}
function module_7_upvr.FormatNumber(arg1, arg2) -- Line 2448
	--[[ Upvalues[2]:
		[1]: var297_upvr (readonly)
		[2]: module_7_upvr (readonly)
	]]
	local absolute = math.abs(arg1)
	local var303
	if var303 <= absolute then
		var303 = 1
		for i_14 = #var297_upvr, var303, -1 do
			local var304 = var297_upvr[i_14]
			local var305
			if var305 <= absolute then
				var305 = nil
				local MaxDigitCount = arg2.MaxDigitCount
				if not MaxDigitCount then
					var305 = "%d":format(math.sign(arg1) * module_7_upvr.SignificantDigits(absolute, var304[1], arg2.Decimals or 2))
				else
					local floored = math.floor(math.log10(absolute))
					local floored_2 = math.floor(absolute / 10 ^ ((floored) - (MaxDigitCount - 1)))
					local var309 = MaxDigitCount - 1 - (floored - var304[1]) % MaxDigitCount
					var305 = tostring(floored_2 // 10 ^ var309)
					local string_match_result1 = string.match("%0"..var309..'d':format(floored_2 % 10 ^ var309), "^(.-)0*$")
					if string_match_result1 and string_match_result1 ~= "" then
						var305 = var305..'.'..string_match_result1
					end
				end
				if arg2.LongNames then
					return string.format("%s %s", var305, var304[3])
				end
				return string.format("%s%s", var305, var304[2])
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var303 = tostring(absolute * math.sign(arg1))
		return var303
	end
	var303 = nil
	if arg2.Commas then
		local string_split_result1 = string.split("%."..string.format("%d", arg2.Decimals)..'f':format(module_7_upvr.SignificantDigits(absolute, 0, arg2.Decimals or 2)), '.')
		if not string_split_result1[1] then
			return '0'
		end
		local string_split_result1_2 = string.split(string_split_result1[1], "")
		local len = #string_split_result1_2
		while 1 < len do
			if 0 + 1 == 3 then
				table.insert(string_split_result1_2, len, ',')
			end
		end
		var303 = table.concat(string_split_result1_2)
		local _2 = string_split_result1[2]
		if _2 then
			var303 = var303..'.'.._2
			-- KONSTANTWARNING: GOTO [196] #164
		end
	else
		var303 = "%."..string.format("%d", arg2.Decimals)..'f':format(module_7_upvr.SignificantDigits(absolute, 0, arg2.Decimals or 2))
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if math.sign(arg1) < 0 then
		var303 = '-'..var303
	end
	return var303
end
local function _(arg1) -- Line 2521, Named "GetTime"
	local maximum_2 = math.max(arg1, 0)
	local var316 = maximum_2 // 60
	local var317 = var316 // 60
	return var317 // 24, var317 % 24, var316 % 60, maximum_2 % 60
end
function module_7_upvr.FormatTimeDigits(arg1, arg2, arg3) -- Line 2532
	local maximum = math.max(arg1, 0)
	local var321 = maximum // 60
	local var322 = var321 // 60
	local tbl_19 = {maximum % 60, var321 % 60, var322 % 24, var322 // 24}
	local module_15 = {}
	local var325 = arg2
	if not var325 then
		var325 = #tbl_19
	end
	for i_15 = math.min(var325, #tbl_19), 1, -1 do
		if tbl_19[i_15] ~= 0 then
			if 9 < tbl_19[i_15] then
				module_15[#module_15 + 1] = tostring(tbl_19[i_15])
				module_15[#module_15 + 1] = ':'
			else
				module_15[#module_15 + 1] = '0'
				module_15[#module_15 + 1] = tostring(tbl_19[i_15])
				module_15[#module_15 + 1] = ':'
			end
		elseif not arg3 then
			module_15[#module_15 + 1] = "00:"
		end
	end
	if not module_15[1] then
		module_15[1] = "00"
	end
	return table.concat(module_15)
end
function module_7_upvr.NumberSequenceScale(arg1, arg2, arg3) -- Line 2565
	local var330 = arg3 or arg2
	local table_create_result1_3 = table.create(#arg1.Keypoints)
	for i_16, v_12 in arg1.Keypoints do
		table_create_result1_3[i_16] = NumberSequenceKeypoint.new(v_12.Time, v_12.Value * arg2, v_12.Envelope * var330)
	end
	return NumberSequence.new(table_create_result1_3)
end
function module_7_upvr.BDT(arg1) -- Line 2596
	return arg1
end
module_7_upvr.BDT_Default = module_7_upvr.BDT({
	Base = Color3.new(0.3, 0.3, 0.3);
	Midtone = Color3.new(0.5, 0.5, 0.5);
	Highlight = Color3.new(0.7, 0.7, 0.7);
	Gradient = Color3.new(1, 1, 1);
})
module_7_upvr.BD_ZIndexAbove = 4
function module_7_upvr.BD_Create(arg1, arg2) -- Line 2616
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	if not arg2 then
		local module_14 = {}
	end
	assert(module_14)
	local tbl_2 = {}
	tbl_2.Parent = arg1
	tbl_2.ZIndex = 1
	tbl_2.BorderSizePixel = 0
	tbl_2.Size = UDim2.fromScale(1, 0.9)
	module_14.Midtone = module_7_upvr.I("Frame", tbl_2)
	module_14.MidtoneCorner = module_7_upvr.I("UICorner", {
		Parent = module_14.Midtone;
	})
	local tbl_7 = {}
	tbl_7.Parent = arg1
	tbl_7.ZIndex = 2
	tbl_7.BorderSizePixel = 0
	tbl_7.Size = UDim2.fromScale(1, 0.45)
	module_14.Highlight = module_7_upvr.I("Frame", tbl_7)
	module_14.HighlightCorner = module_7_upvr.I("UICorner", {
		Parent = module_14.Highlight;
	})
	local tbl_16 = {}
	tbl_16.Parent = arg1
	tbl_16.ZIndex = 3
	tbl_16.BorderSizePixel = 0
	tbl_16.Size = UDim2.fromScale(1, 1)
	module_14.Overlay = module_7_upvr.I("Frame", tbl_16)
	module_14.OverlayCorner = module_7_upvr.I("UICorner", {
		Parent = module_14.Overlay;
	})
	module_14.OverlayGradient = module_7_upvr.I("UIGradient", {
		Parent = module_14.Overlay;
		Color = ColorSequence.new(Color3.new(1, 1, 1));
		Transparency = NumberSequence.new(0.4, 1);
		Rotation = 90;
	})
	return module_14
end
function module_7_upvr.BD_UpdateCorners(arg1, arg2) -- Line 2664
	arg1.MidtoneCorner.CornerRadius = arg2
	arg1.HighlightCorner.CornerRadius = arg2
	arg1.OverlayCorner.CornerRadius = arg2
end
function module_7_upvr.BD_UpdateColorsPress(arg1, arg2, arg3, arg4) -- Line 2669
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local any_LerpClamp_result1 = module_7_upvr.LerpClamp(0, 0.4, arg4)
	arg3.BackgroundColor3 = module_7_upvr.C3_Lerp(arg2.Base, module_7_upvr.C3_Black, any_LerpClamp_result1)
	arg1.Highlight.BackgroundColor3 = module_7_upvr.C3_Lerp(arg2.Highlight, module_7_upvr.C3_Black, any_LerpClamp_result1)
	arg1.Midtone.BackgroundColor3 = module_7_upvr.C3_Lerp(arg2.Midtone, module_7_upvr.C3_Black, any_LerpClamp_result1)
	arg1.Overlay.BackgroundColor3 = module_7_upvr.C3_Lerp(arg2.Gradient, module_7_upvr.C3_Black, any_LerpClamp_result1)
end
function module_7_upvr.BSM_Create(arg1, arg2) -- Line 2698
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	if not arg2 then
		local module_9 = {}
	end
	assert(module_9)
	module_9.GI = module_7_upvr.GI_Create(arg1)
	module_9.PressTween = module_7_upvr.NumericTweenCreate(nil, 0.1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	module_9.HoverTween = module_7_upvr.NumericTweenCreate(nil, 0.1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	return module_9
end
function module_7_upvr.BSM_Destroy(arg1) -- Line 2712
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.GI_Destroy(arg1.GI)
end
function module_7_upvr.BSM_UpdatePress(arg1, arg2) -- Line 2715
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 8 start (CF ANALYSIS FAILED)
	local var343
	if not arg1.Disabled and arg1.GI.StatePress then
		-- KONSTANTERROR: [12] 9. Error Block 4 start (CF ANALYSIS FAILED)
		var343 = 1
		-- KONSTANTERROR: [12] 9. Error Block 4 end (CF ANALYSIS FAILED)
	end
	module_7_upvr.NumericTweener(arg1.PressTween, arg2, var343)
	do
		return arg1.PressTween
	end
	-- KONSTANTERROR: [4] 4. Error Block 8 end (CF ANALYSIS FAILED)
end
function module_7_upvr.BSM_UpdateHover(arg1, arg2) -- Line 2723
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 8 start (CF ANALYSIS FAILED)
	local var344
	if not arg1.Disabled and arg1.GI.StateHot then
		-- KONSTANTERROR: [12] 9. Error Block 4 start (CF ANALYSIS FAILED)
		var344 = 1
		-- KONSTANTERROR: [12] 9. Error Block 4 end (CF ANALYSIS FAILED)
	end
	module_7_upvr.NumericTweener(arg1.HoverTween, arg2, var344)
	do
		return arg1.HoverTween
	end
	-- KONSTANTERROR: [4] 4. Error Block 8 end (CF ANALYSIS FAILED)
end
function module_7_upvr.FancyButtonCreate() -- Line 2764
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local module_20 = {
		Button = module_7_upvr.I("TextButton", module_7_upvr.Props_TextButton, {
			AutoButtonColor = false;
			BorderSizePixel = 0;
		});
		ButtonStroke = module_7_upvr.I("UIStroke", module_7_upvr.Props_StrokeBorder, {
			Parent = module_20.Button;
			Color = module_7_upvr.C3_Black;
		});
		ButtonCorner = module_7_upvr.I("UICorner", {
			Parent = module_20.Button;
		});
	}
	module_7_upvr.BD_Create(module_20.Button, module_20)
	module_20.Input = module_7_upvr.GI_Create(module_20.Button)
	module_20.PressTween = module_7_upvr.NumericTweenCreate(nil, 0.1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	module_20.HoverTween = module_7_upvr.NumericTweenCreate(nil, 0.1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	return module_20
end
function module_7_upvr.FancyButtonUpdateSize(arg1, arg2, arg3) -- Line 2791
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.BD_UpdateCorners(arg1, arg2)
	arg1.ButtonCorner.CornerRadius = arg2
	arg1.ButtonStroke.Thickness = arg3
end
function module_7_upvr.FancyButtonUpdateTweens(arg1, arg2, arg3) -- Line 2801
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 40 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 40 end (CF ANALYSIS FAILED)
end
function module_7_upvr.FancyButtonDestroy(arg1) -- Line 2843
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	arg1.Button:Destroy()
	module_7_upvr.GI_Destroy(arg1.Input)
end
function module_7_upvr.FancyButtonLabelCreate(arg1, arg2, arg3) -- Line 2848
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local tbl_5 = {}
	tbl_5.Parent = arg1
	tbl_5.ZIndex = 11
	tbl_5.FontFace = module_7_upvr.SharedTheme.Font_Semibold
	tbl_5.TextColor3 = module_7_upvr.SharedTheme.Text
	tbl_5.TextXAlignment = Enum.TextXAlignment.Center
	tbl_5.TextYAlignment = Enum.TextYAlignment.Center
	local any_I_result1 = module_7_upvr.I("TextLabel", module_7_upvr.Props_LabelScaled, tbl_5, arg2)
	return any_I_result1, module_7_upvr.I("UIStroke", module_7_upvr.Props_StrokeContextual, {
		Parent = any_I_result1;
		Color = module_7_upvr.SharedTheme.Stroke;
	}, arg3)
end
function module_7_upvr.FancyButton_TextCreate(arg1, arg2) -- Line 2870
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local any_FancyButtonCreate_result1 = module_7_upvr.FancyButtonCreate()
	local any_FancyButtonLabelCreate_result1, any_FancyButtonLabelCreate_result2 = module_7_upvr.FancyButtonLabelCreate(any_FancyButtonCreate_result1.Button, arg1, arg2)
	any_FancyButtonCreate_result1.Label = any_FancyButtonLabelCreate_result1
	any_FancyButtonCreate_result1.LabelStroke = any_FancyButtonLabelCreate_result2
	any_FancyButtonCreate_result1.LabelBounds = module_7_upvr.TextBoundsCreate(any_FancyButtonCreate_result1.Label.FontFace, any_FancyButtonCreate_result1.Label.RichText)
	if not arg1 or not arg1.AnchorPoint then
		any_FancyButtonCreate_result1.Label.AnchorPoint = Vector2.new(0.5, 0.5)
	end
	if not arg1 or not arg1.Position then
		any_FancyButtonCreate_result1.Label.Position = UDim2.fromScale(0.5, 0.45)
	end
	return any_FancyButtonCreate_result1
end
function module_7_upvr.BP_Create() -- Line 2947
	return {
		Count = 0;
		GuiObjects = {};
		Positions = {};
	}
end
function module_7_upvr.BP_Add(arg1, arg2, arg3) -- Line 2954
	arg1.Count += 1
	arg1.GuiObjects[arg1.Count] = arg2
	arg1.Positions[arg1.Count] = arg3
end
function module_7_upvr.BP_Apply(arg1, arg2) -- Line 2963
	for i_17, v_13 in arg1.GuiObjects do
		v_13.Position = arg1.Positions[i_17] + arg2
	end
end
function module_7_upvr.BP_ApplyX(arg1, arg2) -- Line 2968
	local udim2_3 = UDim2.fromOffset(arg2, 0)
	for i_18, v_14 in arg1.GuiObjects do
		v_14.Position = arg1.Positions[i_18] + udim2_3
	end
end
function module_7_upvr.BP_ApplyY(arg1, arg2) -- Line 2974
	local udim2 = UDim2.fromOffset(0, arg2)
	for i_19, v_15 in arg1.GuiObjects do
		v_15.Position = arg1.Positions[i_19] + udim2
	end
end
function module_7_upvr.BP_ApplyXY(arg1, arg2, arg3) -- Line 2980
	local udim2_2 = UDim2.fromOffset(arg2, arg3)
	for i_20, v_16 in arg1.GuiObjects do
		v_16.Position = arg1.Positions[i_20] + udim2_2
	end
end
return module_7_upvr