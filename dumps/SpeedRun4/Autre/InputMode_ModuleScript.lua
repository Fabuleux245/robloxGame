-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:09
-- Luau version 6, Types version 3
-- Time taken: 0.003573 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script:FindFirstAncestor("Responsive").Parent
local AppCommonLib_upvr = require(Parent.AppCommonLib)
local SharedFlags = require(Parent.SharedFlags)
local FFlagAppNavResponsivePlacement_upvr = SharedFlags.FFlagAppNavResponsivePlacement
local FFlagLuaAppResponsiveEnginePreferredInput_upvr = SharedFlags.FFlagLuaAppResponsiveEnginePreferredInput
local tbl_upvr_4 = {
	Pointer = "Pointer";
	Touch = "Touch";
	Directional = "Directional";
}
local tbl_upvr_3 = {
	[Enum.UserInputType.MouseButton1] = tbl_upvr_4.Pointer;
	[Enum.UserInputType.MouseButton2] = tbl_upvr_4.Pointer;
	[Enum.UserInputType.MouseButton3] = tbl_upvr_4.Pointer;
	[Enum.UserInputType.MouseWheel] = tbl_upvr_4.Pointer;
	[Enum.UserInputType.MouseMovement] = tbl_upvr_4.Pointer;
	[Enum.UserInputType.Keyboard] = tbl_upvr_4.Pointer;
	[Enum.UserInputType.TextInput] = tbl_upvr_4.Pointer;
	[Enum.UserInputType.Gamepad1] = tbl_upvr_4.Directional;
	[Enum.UserInputType.Gamepad2] = tbl_upvr_4.Directional;
	[Enum.UserInputType.Gamepad3] = tbl_upvr_4.Directional;
	[Enum.UserInputType.Gamepad4] = tbl_upvr_4.Directional;
	[Enum.UserInputType.Gamepad5] = tbl_upvr_4.Directional;
	[Enum.UserInputType.Gamepad6] = tbl_upvr_4.Directional;
	[Enum.UserInputType.Gamepad7] = tbl_upvr_4.Directional;
	[Enum.UserInputType.Gamepad8] = tbl_upvr_4.Directional;
	[Enum.UserInputType.Touch] = tbl_upvr_4.Touch;
	[Enum.UserInputType.None] = tbl_upvr_4.Pointer;
}
local any_new_result1_upvr = AppCommonLib_upvr.Signal.new()
local module_upvr = {
	preferred = nil;
	last = nil;
}
local tbl_upvr = {
	[Enum.Platform.XBoxOne] = true;
	[Enum.Platform.XBox360] = true;
	[Enum.Platform.WiiU] = true;
	[Enum.Platform.PS3] = true;
	[Enum.Platform.PS4] = true;
	[Enum.Platform.PS5] = true;
	[Enum.Platform.Ouya] = true;
	[Enum.Platform.AndroidTV] = true;
}
local tbl_upvr_2 = {
	[Enum.Platform.IOS] = true;
}
local Android_upvr = Enum.Platform.Android
tbl_upvr_2[Android_upvr] = true
if FFlagLuaAppResponsiveEnginePreferredInput_upvr then
	Android_upvr = {}
	Android_upvr[Enum.PreferredInput.Gamepad] = tbl_upvr_4.Directional
	Android_upvr[Enum.PreferredInput.Touch] = tbl_upvr_4.Touch
	Android_upvr[Enum.PreferredInput.KeyboardAndMouse] = tbl_upvr_4.Pointer
else
	Android_upvr = nil
end
local VRService_upvr = game:GetService("VRService")
function getPreferredInput() -- Line 71
	--[[ Upvalues[9]:
		[1]: FFlagLuaAppResponsiveEnginePreferredInput_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: Android_upvr (readonly)
		[4]: tbl_upvr_4 (readonly)
		[5]: FFlagAppNavResponsivePlacement_upvr (readonly)
		[6]: AppCommonLib_upvr (readonly)
		[7]: VRService_upvr (readonly)
		[8]: tbl_upvr (readonly)
		[9]: tbl_upvr_2 (readonly)
	]]
	local var15
	if FFlagLuaAppResponsiveEnginePreferredInput_upvr then
		var15 = UserInputService_upvr
		local PreferredInput = var15.PreferredInput
		if not PreferredInput then
			PreferredInput = Enum.PreferredInput.KeyboardAndMouse
		end
		var15 = Android_upvr[PreferredInput]
		if not var15 then
			var15 = tbl_upvr_4.Pointer
		end
		return var15
	end
	local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
	if FFlagAppNavResponsivePlacement_upvr then
	else
	end
	if VRService_upvr.VREnabled then
		return tbl_upvr_4.Pointer
	end
	if tbl_upvr[any_GetPlatform_result1] or false then
		return tbl_upvr_4.Directional
	end
	if tbl_upvr_2[any_GetPlatform_result1] or false then
		return tbl_upvr_4.Touch
	end
	return tbl_upvr_4.Pointer
end
function updatePreferredInput() -- Line 93
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
	]]
	local getPreferredInput_result1 = getPreferredInput()
	if getPreferredInput_result1 ~= module_upvr.preferred then
		module_upvr.preferred = getPreferredInput_result1
		if module_upvr.last == nil then
			module_upvr.last = module_upvr.preferred
		end
		any_new_result1_upvr:fire()
	end
end
function updateLastInput() -- Line 104
	--[[ Upvalues[4]:
		[1]: tbl_upvr_3 (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
	]]
	local var19 = tbl_upvr_3[UserInputService_upvr:GetLastInputType()]
	if var19 and var19 ~= module_upvr.last then
		module_upvr.last = var19
		any_new_result1_upvr:fire()
	end
end
function init() -- Line 112
	--[[ Upvalues[4]:
		[1]: FFlagLuaAppResponsiveEnginePreferredInput_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: FFlagAppNavResponsivePlacement_upvr (readonly)
		[4]: AppCommonLib_upvr (readonly)
	]]
	if FFlagLuaAppResponsiveEnginePreferredInput_upvr then
		UserInputService_upvr:GetPropertyChangedSignal("PreferredInput"):Connect(updatePreferredInput)
	end
	UserInputService_upvr.GamepadConnected:Connect(updatePreferredInput)
	UserInputService_upvr:GetPropertyChangedSignal("KeyboardEnabled"):Connect(updatePreferredInput)
	UserInputService_upvr:GetPropertyChangedSignal("MouseEnabled"):Connect(updatePreferredInput)
	UserInputService_upvr:GetPropertyChangedSignal("TouchEnabled"):Connect(updatePreferredInput)
	UserInputService_upvr:GetPropertyChangedSignal("GamepadEnabled"):Connect(updatePreferredInput)
	if FFlagAppNavResponsivePlacement_upvr then
		AppCommonLib_upvr.connectToIsSpatialChanged(updatePreferredInput)
	end
	UserInputService_upvr.LastInputTypeChanged:Connect(updateLastInput)
	updateLastInput()
	updatePreferredInput()
end
init()
return {
	Enum = tbl_upvr_4;
	preferredInputRules = {{
		Key = tbl_upvr_4.Directional;
		preferredInput = tbl_upvr_4.Directional;
	}, {
		Key = tbl_upvr_4.Pointer;
		preferredInput = tbl_upvr_4.Pointer;
	}, {
		Key = tbl_upvr_4.Touch;
		preferredInput = tbl_upvr_4.Touch;
	}};
	lastInputRules = {{
		Key = tbl_upvr_4.Directional;
		lastInput = tbl_upvr_4.Directional;
	}, {
		Key = tbl_upvr_4.Pointer;
		lastInput = tbl_upvr_4.Pointer;
	}, {
		Key = tbl_upvr_4.Touch;
		lastInput = tbl_upvr_4.Touch;
	}};
	connect = function(arg1) -- Line 147, Named "connect"
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		return any_new_result1_upvr:connect(arg1)
	end;
	preferred = function() -- Line 150, Named "preferred"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return module_upvr.preferred
	end;
	last = function() -- Line 153, Named "last"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return module_upvr.last
	end;
}