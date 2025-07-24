-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:28
-- Luau version 6, Types version 3
-- Time taken: 0.005007 seconds

local KeyCode = Enum.KeyCode
local UserInputType = Enum.UserInputType
local tbl = {
	KEYBOARD = "Keyboard";
	GAMEPAD = "Gamepad";
}
local tbl_2 = {{
	title = "CoreScripts.InGameMenu.Controls.CharacterMovementTitle";
	controls = {{
		desc = "CoreScripts.InGameMenu.Controls.MoveForward";
		inputs = {KeyCode.Up, KeyCode.W};
	}, {
		desc = "CoreScripts.InGameMenu.Controls.MoveBackward";
		inputs = {KeyCode.Down, KeyCode.S};
	}, {
		desc = "CoreScripts.InGameMenu.Controls.MoveLeft";
		inputs = {KeyCode.A};
	}, {
		desc = "CoreScripts.InGameMenu.Controls.MoveRight";
		inputs = {KeyCode.D};
	}, {
		desc = "CoreScripts.InGameMenu.Controls.Jump";
		inputs = {KeyCode.Space};
	}};
}, {
	title = "CoreScripts.InGameMenu.Controls.CameraMovementTitle";
	controls = {{
		desc = "CoreScripts.InGameMenu.Controls.RotateCamera";
		inputs = {KeyCode.Left, KeyCode.Right, UserInputType.MouseButton2};
	}, {
		desc = "CoreScripts.InGameMenu.Controls.ZoomInOutCamera";
		inputs = {UserInputType.MouseWheel};
	}, {
		desc = "CoreScripts.InGameMenu.Controls.ZoomInCamera";
		inputs = {KeyCode.I};
	}, {
		desc = "CoreScripts.InGameMenu.Controls.ZoomOutCamera";
		inputs = {KeyCode.O};
	}, {
		desc = "CoreScripts.InGameMenu.Controls.MouseLock";
		inputs = {KeyCode.LeftShift};
	}};
}, {
	title = "CoreScripts.InGameMenu.Controls.AccessoriesTitle";
	controls = {{
		desc = "CoreScripts.InGameMenu.Controls.EquipUnequipTools";
		inputs = {KeyCode.One, KeyCode.Two, KeyCode.Three};
		list = true;
	}, {
		desc = "CoreScripts.InGameMenu.Controls.DropTool";
		inputs = {KeyCode.Backspace};
	}, {
		desc = "CoreScripts.InGameMenu.Controls.UseTool";
		inputs = {UserInputType.MouseButton1};
	}};
}, {
	title = "CoreScripts.InGameMenu.Controls.MenuItemsTitle";
	controls = {{
		desc = "CoreScripts.InGameMenu.Controls.RobloxMenu";
		inputs = {KeyCode.Escape};
	}, {
		desc = "CoreScripts.InGameMenu.Controls.Backpack";
		inputs = {KeyCode.Tilde};
	}, {
		desc = "CoreScripts.InGameMenu.Controls.Playerlist";
		inputs = {KeyCode.Tab};
	}, {
		desc = "CoreScripts.InGameMenu.Controls.Chat";
		inputs = {KeyCode.Slash};
	}};
}}
if game:GetService("UserInputService"):GetPlatform() == Enum.Platform.OSX then
	table.insert(tbl_2, {
		title = "CoreScripts.InGameMenu.Controls.MiscellaneousTitle";
		controls = {{
			desc = "CoreScripts.InGameMenu.Controls.GameMenuToggleGamepad";
			inputs = {KeyCode.BackSlash};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.Screenshot";
			inputs = {{KeyCode.LeftSuper, KeyCode.LeftShift, KeyCode.Three}};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.DevConsole";
			inputs = {{KeyCode.LeftMeta, KeyCode.F9}, KeyCode.F9};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.GraphicsLevelUp";
			inputs = {{KeyCode.LeftMeta, KeyCode.F10}, KeyCode.F10};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.GraphicsLevelDown";
			inputs = {{KeyCode.LeftMeta, KeyCode.LeftShift, KeyCode.F10}, {KeyCode.LeftShift, KeyCode.F10}};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.ToggleFullscreen";
			inputs = {{KeyCode.LeftControl, KeyCode.LeftSuper, KeyCode.F}};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.PerformanceStats";
			inputs = {{KeyCode.LeftMeta, KeyCode.LeftAlt, KeyCode.LeftSuper, KeyCode.F7}};
		}};
	})
else
	table.insert(tbl_2, {
		title = "CoreScripts.InGameMenu.Controls.MiscellaneousTitle";
		controls = {{
			desc = "CoreScripts.InGameMenu.Controls.GameMenuToggleGamepad";
			inputs = {KeyCode.BackSlash};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.Screenshot";
			inputs = {KeyCode.Print};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.RecordVideo";
			inputs = {KeyCode.F12};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.DevConsole";
			inputs = {KeyCode.F9};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.GraphicsLevelUp";
			inputs = {KeyCode.F10};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.GraphicsLevelDown";
			inputs = {{KeyCode.LeftShift, KeyCode.F10}};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.ToggleFullscreen";
			inputs = {KeyCode.F11};
		}, {
			desc = "CoreScripts.InGameMenu.Controls.PerformanceStats";
			inputs = {{KeyCode.LeftControl, KeyCode.LeftShift, KeyCode.F7}};
		}};
	})
end
return {
	ControlLayouts = tbl;
	keybinds = tbl_2;
	inputToControlTypeMap = {
		[Enum.UserInputType.MouseButton2] = tbl.KEYBOARD;
		[Enum.UserInputType.MouseButton3] = tbl.KEYBOARD;
		[Enum.UserInputType.MouseWheel] = tbl.KEYBOARD;
		[Enum.UserInputType.MouseMovement] = tbl.KEYBOARD;
		[Enum.UserInputType.Keyboard] = tbl.KEYBOARD;
		[Enum.UserInputType.Gamepad1] = tbl.GAMEPAD;
		[Enum.UserInputType.Gamepad2] = tbl.GAMEPAD;
		[Enum.UserInputType.Gamepad3] = tbl.GAMEPAD;
		[Enum.UserInputType.Gamepad4] = tbl.GAMEPAD;
		[Enum.UserInputType.Gamepad5] = tbl.GAMEPAD;
		[Enum.UserInputType.Gamepad6] = tbl.GAMEPAD;
		[Enum.UserInputType.Gamepad7] = tbl.GAMEPAD;
		[Enum.UserInputType.Gamepad8] = tbl.GAMEPAD;
	};
	gamepadLabels = {
		left = {"CoreScripts.InGameMenu.Controls.SwitchToolGamepad", "CoreScripts.InGameMenu.Controls.GameMenuToggleGamepad", "CoreScripts.InGameMenu.Controls.MoveGamepad", "CoreScripts.InGameMenu.Controls.MenuNavigationGamepad"};
		right = {"CoreScripts.InGameMenu.Controls.UseTool", "CoreScripts.InGameMenu.Controls.RobloxMenu", "CoreScripts.InGameMenu.Controls.BackGamepad", "CoreScripts.InGameMenu.Controls.Jump"};
		camera = {"CoreScripts.InGameMenu.Controls.RotateCameraGamepad", "CoreScripts.InGameMenu.Controls.CameraZoomGamepad"};
	};
	questGamepadLabels = {{
		labelKey = "ResetCameraLabel";
		xPosition = -0.015;
		yPosition = 0.335;
		xAlignment = Enum.TextXAlignment.Right;
		width = 0.17;
	}, {
		labelKey = "MenuLabel";
		xPosition = -0.015;
		yPosition = 0.397;
		xAlignment = Enum.TextXAlignment.Right;
		width = 0.17;
	}, {
		labelKey = "SelectItemLabel";
		xPosition = 0.442;
		yPosition = 0.621;
		xAlignment = Enum.TextXAlignment.Center;
		width = 0.09;
	}, {
		labelKey = "BackExitLabel";
		xPosition = 0.818;
		yPosition = 0.287;
		xAlignment = Enum.TextXAlignment.Left;
		width = 0.17;
	}, {
		labelKey = "FirstPersonCameraLabel";
		xPosition = 0.818;
		yPosition = 0.342;
		xAlignment = Enum.TextXAlignment.Left;
		width = 0.17;
	}, {
		labelKey = "JumpSelectLabel";
		xPosition = 0.818;
		yPosition = 0.413;
		xAlignment = Enum.TextXAlignment.Left;
		width = 0.17;
	}};
}