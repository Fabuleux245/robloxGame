-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:38
-- Luau version 6, Types version 3
-- Time taken: 0.001896 seconds

local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
local module_upvr_2 = {
	getGamepadConnected = function(arg1) -- Line 13, Named "getGamepadConnected"
		--[[ Upvalues[1]:
			[1]: UserInputService_upvr (readonly)
		]]
		return UserInputService_upvr:GetGamepadConnected(arg1)
	end;
	getGamepadState = function(arg1) -- Line 17, Named "getGamepadState"
		--[[ Upvalues[1]:
			[1]: UserInputService_upvr (readonly)
		]]
		return UserInputService_upvr:GetGamepadState(arg1)
	end;
	getNavigationGamepads = function() -- Line 21, Named "getNavigationGamepads"
		--[[ Upvalues[1]:
			[1]: UserInputService_upvr (readonly)
		]]
		return UserInputService_upvr:GetNavigationGamepads()
	end;
}
local function getSelection() -- Line 25
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	return GuiService_upvr.SelectedCoreObject
end
module_upvr_2.getSelection = getSelection
local function setSelection(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	GuiService_upvr.SelectedCoreObject = arg1
end
module_upvr_2.setSelection = setSelection
local function subscribeToSelectionChanged(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	return GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject"):Connect(arg1)
end
module_upvr_2.subscribeToSelectionChanged = subscribeToSelectionChanged
local RunService_upvr = game:GetService("RunService")
function module_upvr_2.subscribeToRenderStepped(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	return RunService_upvr.RenderStepped:Connect(arg1)
end
function module_upvr_2.subscribeToGamepadConnected(arg1) -- Line 41
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	return UserInputService_upvr.GamepadConnected:Connect(arg1)
end
function module_upvr_2.subscribeToGamepadDisconnected(arg1) -- Line 45
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	return UserInputService_upvr.GamepadDisconnected:Connect(arg1)
end
function module_upvr_2.subscribeToInputBegan(arg1) -- Line 49
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	return UserInputService_upvr.InputBegan:Connect(arg1)
end
function module_upvr_2.subscribeToInputEnded(arg1) -- Line 53
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	return UserInputService_upvr.InputEnded:Connect(arg1)
end
local module_upvr = {
	getSelection = function() -- Line 63, Named "getSelection"
		--[[ Upvalues[1]:
			[1]: GuiService_upvr (readonly)
		]]
		return GuiService_upvr.SelectedObject
	end;
	setSelection = function(arg1) -- Line 67, Named "setSelection"
		--[[ Upvalues[1]:
			[1]: GuiService_upvr (readonly)
		]]
		GuiService_upvr.SelectedObject = arg1
	end;
	subscribeToSelectionChanged = function(arg1) -- Line 71, Named "subscribeToSelectionChanged"
		--[[ Upvalues[1]:
			[1]: GuiService_upvr (readonly)
		]]
		return GuiService_upvr:GetPropertyChangedSignal("SelectedObject"):Connect(arg1)
	end;
	getGamepadConnected = module_upvr_2.getGamepadConnected;
	getGamepadState = module_upvr_2.getGamepadState;
	getNavigationGamepads = module_upvr_2.getNavigationGamepads;
	subscribeToRenderStepped = module_upvr_2.subscribeToRenderStepped;
	subscribeToGamepadConnected = module_upvr_2.subscribeToGamepadConnected;
	subscribeToGamepadDisconnected = module_upvr_2.subscribeToGamepadDisconnected;
	subscribeToInputBegan = module_upvr_2.subscribeToInputBegan;
	subscribeToInputEnded = module_upvr_2.subscribeToInputEnded;
}
local CoreGui_upvr = game:GetService("CoreGui")
return function(arg1) -- Line 87
	--[[ Upvalues[3]:
		[1]: CoreGui_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr (readonly)
	]]
	if arg1:IsDescendantOf(CoreGui_upvr) then
		return module_upvr_2
	end
	if arg1:FindFirstAncestorWhichIsA("PlayerGui") == nil then
		error("Gamepad navigation not supported. Must be a child of CoreGui or a PlayerGui")
	end
	return module_upvr
end