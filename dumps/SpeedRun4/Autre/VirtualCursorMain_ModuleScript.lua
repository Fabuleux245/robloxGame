-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:11
-- Luau version 6, Types version 3
-- Time taken: 0.003597 seconds

local Parent = script.Parent
local GuiService_upvr = game:GetService("GuiService")
local RunService_upvr = game:GetService("RunService")
local UserInputService_upvr = game:GetService("UserInputService")
local GamepadService_upvr = game:GetService("GamepadService")
local module_upvr_2 = require(Parent:WaitForChild("Input"))
local module_upvr_3 = require(Parent:WaitForChild("Interface"))
local var8_upvr = require(Parent:WaitForChild("getFFlagPointAndClickCursor"))()
local var9_upvw
local var10_upvw
local function enableVirtualCursor_upvr(arg1) -- Line 34, Named "enableVirtualCursor"
	--[[ Upvalues[8]:
		[1]: var9_upvw (read and write)
		[2]: module_upvr_3 (readonly)
		[3]: GamepadService_upvr (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: var8_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: var10_upvw (read and write)
		[8]: GuiService_upvr (readonly)
	]]
	if not var9_upvw then
	else
		local var11 = arg1
		if not var11 then
			var11 = var9_upvw.CursorPosition
		end
		local var12 = var11
		var9_upvw.Enabled = true
		var9_upvw.CursorPosition = var12
		module_upvr_3:EnableUI(var12)
		GamepadService_upvr:SetGamepadCursorPosition(var12)
		module_upvr_2:EnableInput()
		if var8_upvr then
			module_upvr_2:DisablePreview()
		end
		RunService_upvr:BindToRenderStep("VirtualCursorStepped", Enum.RenderPriority.Input.Value + 1, var9_upvw.OnRenderStep)
		var10_upvw = GuiService_upvr.MenuOpened:Connect(function() -- Line 50
			--[[ Upvalues[1]:
				[1]: GamepadService_upvr (copied, readonly)
			]]
			GamepadService_upvr.GamepadCursorEnabled = false
		end)
	end
end
local function disableVirtualCursor_upvr() -- Line 55, Named "disableVirtualCursor"
	--[[ Upvalues[7]:
		[1]: var9_upvw (read and write)
		[2]: var10_upvw (read and write)
		[3]: module_upvr_3 (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: var8_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: GuiService_upvr (readonly)
	]]
	if not var9_upvw.Enabled then
	else
		var10_upvw:Disconnect()
		var10_upvw = nil
		var9_upvw.PreviouslySelectedObject = nil
		module_upvr_3:DisableUI()
		module_upvr_2:DisableInput()
		if var8_upvr then
			module_upvr_2:EnablePreview()
		end
		RunService_upvr:UnbindFromRenderStep("VirtualCursorStepped")
		if var9_upvw.SelectedObject then
			GuiService_upvr.SelectedObject = nil
			GuiService_upvr.SelectedCoreObject = nil
			var9_upvw.SelectedObject = nil
		end
		var9_upvw.Enabled = false
	end
end
local module_upvr_4 = {}
module_upvr_4.__index = module_upvr_4
function module_upvr_4.GetEnabled(arg1) -- Line 86
	return arg1.Enabled
end
local module_upvr_5 = require(Parent:WaitForChild("OnRenderStep"))
local var16_upvw
local var17_upvw = false
function module_upvr_4.new() -- Line 90
	--[[ Upvalues[9]:
		[1]: module_upvr_5 (readonly)
		[2]: var16_upvw (read and write)
		[3]: UserInputService_upvr (readonly)
		[4]: GamepadService_upvr (readonly)
		[5]: var17_upvw (read and write)
		[6]: var8_upvr (readonly)
		[7]: module_upvr_2 (readonly)
		[8]: module_upvr_4 (readonly)
		[9]: var9_upvw (read and write)
	]]
	local module_upvr = {
		Enabled = false;
		CursorPosition = Vector2.new();
		SelectedObject = nil;
		PreviouslySelectedObject = nil;
	}
	function module_upvr.OnRenderStep(arg1) -- Line 98
		--[[ Upvalues[2]:
			[1]: module_upvr_5 (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		module_upvr_5(module_upvr, arg1)
	end
	var16_upvw = UserInputService_upvr.LastInputTypeChanged:Connect(function(arg1) -- Line 102
		--[[ Upvalues[2]:
			[1]: GamepadService_upvr (copied, readonly)
			[2]: var17_upvw (copied, read and write)
		]]
		if arg1 ~= Enum.UserInputType.Gamepad1 and arg1 ~= Enum.UserInputType.Focus and GamepadService_upvr.GamepadCursorEnabled then
			GamepadService_upvr.GamepadCursorEnabled = false
			var17_upvw = true
		elseif arg1 == Enum.UserInputType.Gamepad1 and var17_upvw then
			GamepadService_upvr.GamepadCursorEnabled = true
			var17_upvw = false
		end
	end)
	if var8_upvr then
		module_upvr_2:EnablePreview()
	end
	setmetatable(module_upvr, module_upvr_4)
	var9_upvw = module_upvr
	return module_upvr
end
GamepadService_upvr:GetPropertyChangedSignal("GamepadCursorEnabled"):Connect(function() -- Line 123
	--[[ Upvalues[5]:
		[1]: GamepadService_upvr (readonly)
		[2]: var9_upvw (read and write)
		[3]: UserInputService_upvr (readonly)
		[4]: enableVirtualCursor_upvr (readonly)
		[5]: disableVirtualCursor_upvr (readonly)
	]]
	if var9_upvw then
		if GamepadService_upvr.GamepadCursorEnabled then
			enableVirtualCursor_upvr(UserInputService_upvr:GetMouseLocation())
			return
		end
		disableVirtualCursor_upvr()
	end
end)
return module_upvr_4.new()