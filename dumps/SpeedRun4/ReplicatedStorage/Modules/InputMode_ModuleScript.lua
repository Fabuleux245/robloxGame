-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:20
-- Luau version 6, Types version 3
-- Time taken: 0.005020 seconds

local module_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService_upvr = game:GetService("UserInputService")
module_upvr.Gamepad = "GAMEPAD"
module_upvr.Keyboard = "KEYBOARD"
module_upvr.Mouse = "MOUSE"
module_upvr.Technical = "TECHNICAL"
module_upvr.Touch = "TOUCH"
module_upvr.Mode = ""
module_upvr.ModeChanged = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Signal")).new()
module_upvr.Mode_ByType = table.freeze({
	[Enum.UserInputType.Gamepad1] = module_upvr.Gamepad;
	[Enum.UserInputType.Gamepad2] = module_upvr.Gamepad;
	[Enum.UserInputType.Gamepad3] = module_upvr.Gamepad;
	[Enum.UserInputType.Gamepad4] = module_upvr.Gamepad;
	[Enum.UserInputType.Gamepad5] = module_upvr.Gamepad;
	[Enum.UserInputType.Gamepad6] = module_upvr.Gamepad;
	[Enum.UserInputType.Gamepad7] = module_upvr.Gamepad;
	[Enum.UserInputType.Gamepad8] = module_upvr.Gamepad;
	[Enum.UserInputType.Keyboard] = module_upvr.Keyboard;
	[Enum.UserInputType.MouseButton1] = module_upvr.Mouse;
	[Enum.UserInputType.MouseButton2] = module_upvr.Mouse;
	[Enum.UserInputType.MouseButton3] = module_upvr.Mouse;
	[Enum.UserInputType.MouseMovement] = module_upvr.Mouse;
	[Enum.UserInputType.MouseWheel] = module_upvr.Mouse;
	[Enum.UserInputType.Accelerometer] = module_upvr.Technical;
	[Enum.UserInputType.Focus] = module_upvr.Technical;
	[Enum.UserInputType.Gyro] = module_upvr.Technical;
	[Enum.UserInputType.InputMethod] = module_upvr.Technical;
	[Enum.UserInputType.None] = module_upvr.Technical;
	[Enum.UserInputType.TextInput] = module_upvr.Technical;
	[Enum.UserInputType.Touch] = module_upvr.Touch;
})
local tbl_upvr = {
	LastTouchPosition = UserInputService_upvr:GetMouseLocation();
	TrackedTouch = nil;
}
local any_GetGuiInset_result1 = game:GetService("GuiService"):GetGuiInset()
local X_upvw = any_GetGuiInset_result1.X
local Y_upvw = any_GetGuiInset_result1.Y
UserInputService_upvr.LastInputTypeChanged:Connect(function(arg1) -- Line 65, Named "UpdateMode"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var9 = module_upvr.Mode_ByType[arg1]
	if var9 ~= module_upvr.Technical and var9 ~= module_upvr.Mode then
		module_upvr.Mode = var9
		module_upvr.ModeChanged:Fire(var9)
	end
end)
local var10 = module_upvr.Mode_ByType[UserInputService_upvr:GetLastInputType()]
if var10 ~= module_upvr.Technical and var10 ~= module_upvr.Mode then
	module_upvr.Mode = var10
	module_upvr.ModeChanged:Fire(var10)
end
local function _(arg1) -- Line 80, Named "UpdateTouchPosition"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: X_upvw (read and write)
		[3]: Y_upvw (read and write)
	]]
	local Position = arg1.Position
	tbl_upvr.LastTouchPosition = Vector2.new(Position.X + X_upvw, Position.Y + Y_upvw)
end
local function _(arg1) -- Line 86, Named "ProcessTouchBegin"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: X_upvw (read and write)
		[3]: Y_upvw (read and write)
	]]
	if tbl_upvr.TrackedTouch == nil then
		tbl_upvr.TrackedTouch = arg1
		local Position_2 = arg1.Position
		tbl_upvr.LastTouchPosition = Vector2.new(Position_2.X + X_upvw, Position_2.Y + Y_upvw)
	end
end
local function _(arg1) -- Line 93, Named "ProcessTouchChangeEnd"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: X_upvw (read and write)
		[3]: Y_upvw (read and write)
	]]
	if arg1 == tbl_upvr.TrackedTouch then
		local Position_3 = arg1.Position
		tbl_upvr.LastTouchPosition = Vector2.new(Position_3.X + X_upvw, Position_3.Y + Y_upvw)
	end
end
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 99
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: X_upvw (read and write)
		[3]: Y_upvw (read and write)
	]]
	if arg1 == tbl_upvr.TrackedTouch then
		if arg1 == tbl_upvr.TrackedTouch then
			local Position_5 = arg1.Position
			tbl_upvr.LastTouchPosition = Vector2.new(Position_5.X + X_upvw, Position_5.Y + Y_upvw)
		end
		tbl_upvr.TrackedTouch = nil
	end
end)
game:GetService("ContextActionService"):BindActionAtPriority("InputMode-TOUCH_POSITION_TRACKING", function(arg1, arg2, arg3) -- Line 106, Named "TrackTouchPosition_CAS"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: X_upvw (read and write)
		[3]: Y_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
	if arg2 == Enum.UserInputState.Begin then
		if tbl_upvr.TrackedTouch == nil then
			tbl_upvr.TrackedTouch = arg3
			local Position_4 = arg3.Position
			tbl_upvr.LastTouchPosition = Vector2.new(Position_4.X + X_upvw, Position_4.Y + Y_upvw)
			-- KONSTANTWARNING: GOTO [58] #38
		end
	elseif arg2 == Enum.UserInputState.Change or arg2 == Enum.UserInputState.End then
		if arg3 == tbl_upvr.TrackedTouch then
			local Position_6 = arg3.Position
			tbl_upvr.LastTouchPosition = Vector2.new(Position_6.X + X_upvw, Position_6.Y + Y_upvw)
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [58] 38. Error Block 10 start (CF ANALYSIS FAILED)
	do
		return Enum.ContextActionResult.Pass
	end
	-- KONSTANTERROR: [58] 38. Error Block 10 end (CF ANALYSIS FAILED)
end, false, 2147483647, Enum.UserInputType.Touch)
function module_upvr.GetViewportMouse() -- Line 133
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
	]]
	if module_upvr.Mode == module_upvr.Touch then
		return tbl_upvr.LastTouchPosition
	end
	return UserInputService_upvr:GetMouseLocation()
end
function module_upvr.InputIsTrackedTouch(arg1) -- Line 142
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var18
	if tbl_upvr.TrackedTouch ~= arg1 then
		var18 = false
	else
		var18 = true
	end
	return var18
end
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("BUUI"))
module_upvr.InputModeBUUI_ByMode = {
	[module_upvr.Gamepad] = module_upvr_2.InputMode_gamepad;
	[module_upvr.Keyboard] = module_upvr_2.InputMode_mouse_keyboard;
	[module_upvr.Mouse] = module_upvr_2.InputMode_mouse_keyboard;
	[module_upvr.Touch] = module_upvr_2.InputMode_touch;
}
module_upvr.ModeChanged:Connect(function(arg1) -- Line 159
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local var22 = module_upvr.InputModeBUUI_ByMode[arg1]
	if var22 then
		module_upvr_2.InputMode = var22
	end
end)
return module_upvr