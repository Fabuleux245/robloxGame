-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:12
-- Luau version 6, Types version 3
-- Time taken: 0.000934 seconds

local tbl = {
	[Enum.KeyCode.Thumbstick1] = {
		directional = "rbxasset://textures/ui/Controls/DesignSystem/".."Thumbstick1Directional.png";
		horizontal = "rbxasset://textures/ui/Controls/DesignSystem/".."Thumbstick1Horizontal.png";
		vertical = "rbxasset://textures/ui/Controls/DesignSystem/".."Thumbstick1Vertical.png";
	};
	[Enum.KeyCode.Thumbstick2] = {
		directional = "rbxasset://textures/ui/Controls/DesignSystem/".."Thumbstick2Directional.png";
		horizontal = "rbxasset://textures/ui/Controls/DesignSystem/".."Thumbstick2Horizontal.png";
		vertical = "rbxasset://textures/ui/Controls/DesignSystem/".."Thumbstick2Vertical.png";
	};
}
return {
	DIRECTIONAL_GAMEPAD_ICONS = tbl;
	GAMEPAD_ICONS = {
		[Enum.KeyCode.ButtonX] = "rbxasset://textures/ui/Controls/DesignSystem/".."ButtonX.png";
		[Enum.KeyCode.ButtonY] = "rbxasset://textures/ui/Controls/DesignSystem/".."ButtonY.png";
		[Enum.KeyCode.ButtonA] = "rbxasset://textures/ui/Controls/DesignSystem/".."ButtonA.png";
		[Enum.KeyCode.ButtonB] = "rbxasset://textures/ui/Controls/DesignSystem/".."ButtonB.png";
		[Enum.KeyCode.DPadLeft] = "rbxasset://textures/ui/Controls/DesignSystem/".."DPadLeft.png";
		[Enum.KeyCode.DPadRight] = "rbxasset://textures/ui/Controls/DesignSystem/".."DPadRight.png";
		[Enum.KeyCode.DPadUp] = "rbxasset://textures/ui/Controls/DesignSystem/".."DPadUp.png";
		[Enum.KeyCode.DPadDown] = "rbxasset://textures/ui/Controls/DesignSystem/".."DPadDown.png";
		[Enum.KeyCode.ButtonStart] = "rbxasset://textures/ui/Controls/DesignSystem/".."ButtonStart.png";
		[Enum.KeyCode.ButtonSelect] = "rbxasset://textures/ui/Controls/DesignSystem/".."ButtonSelect.png";
		[Enum.KeyCode.ButtonR1] = "rbxasset://textures/ui/Controls/DesignSystem/".."ButtonR1.png";
		[Enum.KeyCode.ButtonL1] = "rbxasset://textures/ui/Controls/DesignSystem/".."ButtonL1.png";
		[Enum.KeyCode.ButtonR2] = "rbxasset://textures/ui/Controls/DesignSystem/".."ButtonR2.png";
		[Enum.KeyCode.ButtonL2] = "rbxasset://textures/ui/Controls/DesignSystem/".."ButtonL2.png";
		[Enum.KeyCode.ButtonR3] = "rbxasset://textures/ui/Controls/DesignSystem/".."ButtonR3.png";
		[Enum.KeyCode.ButtonL3] = "rbxasset://textures/ui/Controls/DesignSystem/".."ButtonL3.png";
		[Enum.KeyCode.Thumbstick1] = tbl[Enum.KeyCode.Thumbstick1].directional;
		[Enum.KeyCode.Thumbstick2] = tbl[Enum.KeyCode.Thumbstick2].directional;
	};
}