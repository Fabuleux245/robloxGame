-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:27
-- Luau version 6, Types version 3
-- Time taken: 0.001041 seconds

local ControlState = require(script:FindFirstAncestor("Foundation").Enums.ControlState)
return {
	Initialize = {
		Idle = {
			nextState = ControlState.Default;
		};
		Enabled = {
			nextState = ControlState.Default;
		};
		Disabled = {
			nextState = ControlState.Disabled;
		};
	};
	Default = {
		PrimaryPressed = {
			nextState = ControlState.Pressed;
		};
		PointerHover = {
			nextState = ControlState.Hover;
		};
		SelectionGained = {
			nextState = ControlState.Selected;
		};
		Disabled = {
			nextState = ControlState.Disabled;
		};
	};
	Hover = {
		SelectionGained = {
			nextState = ControlState.Selected;
		};
		PrimaryPressed = {
			nextState = ControlState.Pressed;
		};
		PointerHoverEnd = {
			nextState = ControlState.Default;
		};
		Disabled = {
			nextState = ControlState.Disabled;
		};
	};
	Pressed = {
		SelectionGained = {
			nextState = ControlState.SelectedPressed;
		};
		PrimaryReleasedHover = {
			nextState = ControlState.Hover;
		};
		PrimaryReleased = {
			nextState = ControlState.Default;
		};
		Disabled = {
			nextState = ControlState.Disabled;
		};
	};
	Selected = {
		SelectionLost = {
			nextState = ControlState.Default;
		};
		PrimaryPressed = {
			nextState = ControlState.SelectedPressed;
		};
		Disabled = {
			nextState = ControlState.Disabled;
		};
	};
	SelectedPressed = {
		SelectionLost = {
			nextState = ControlState.Default;
		};
		PrimaryReleasedHover = {
			nextState = ControlState.Selected;
		};
		PrimaryReleased = {
			nextState = ControlState.Selected;
		};
		Disabled = {
			nextState = ControlState.Disabled;
		};
	};
	Disabled = {
		Enabled = {
			nextState = ControlState.Default;
		};
	};
}