-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:05
-- Luau version 6, Types version 3
-- Time taken: 0.003451 seconds

-- KONSTANTERROR: [0] 1. Error Block 155 start (CF ANALYSIS FAILED)
local Parent = script:FindFirstAncestor("AppShortcutBar").Parent
local FocusNavigationEventNameEnum = require(Parent.FocusNavigationUtils).FocusNavigationEventNameEnum
local SharedFlags = require(Parent.SharedFlags)
local FFlagAXMigrateCatalogItemCardInputBindingsToFocusNavigation = SharedFlags.FFlagAXMigrateCatalogItemCardInputBindingsToFocusNavigation
local tbl_6 = {
	[Enum.KeyCode.Thumbstick1] = {
		vertical = "rbxasset://textures/ui/Controls/DesignSystem/Thumbstick1Vertical.png";
		horizontal = "rbxasset://textures/ui/Controls/DesignSystem/Thumbstick1Horizontal.png";
	};
	[Enum.KeyCode.Thumbstick2] = {
		vertical = "rbxasset://textures/ui/Controls/DesignSystem/Thumbstick2Vertical.png";
		horizontal = "rbxasset://textures/ui/Controls/DesignSystem/Thumbstick2Horizontal.png";
	};
}
local _ = {Enum.KeyCode.ButtonA, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY, Enum.KeyCode.ButtonL3, Enum.KeyCode.ButtonR3, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2, Enum.KeyCode.ButtonStart, Enum.KeyCode.Slash, Enum.KeyCode.Escape, Enum.KeyCode.LeftBracket, Enum.KeyCode.PageUp, Enum.KeyCode.RightBracket, Enum.KeyCode.PageDown}
local tbl_2 = {FocusNavigationEventNameEnum.HoldToPlay, FocusNavigationEventNameEnum.Play, FocusNavigationEventNameEnum.Search, FocusNavigationEventNameEnum.SeeAll, FocusNavigationEventNameEnum.DisplayStatsAndInfo, FocusNavigationEventNameEnum.AcceptFriendRequest, FocusNavigationEventNameEnum.AddFriend, FocusNavigationEventNameEnum.IgnoreFriendRequest, FocusNavigationEventNameEnum.OpenQuickMenu, FocusNavigationEventNameEnum.NavigateBack, FocusNavigationEventNameEnum.ScrollUp, FocusNavigationEventNameEnum.ScrollDown}
if FFlagAXMigrateCatalogItemCardInputBindingsToFocusNavigation then
	table.insert(tbl_2, FocusNavigationEventNameEnum.SelectItem)
	table.insert(tbl_2, FocusNavigationEventNameEnum.OpenItemDetailsPage)
end
local _ = {
	[Enum.KeyCode.ButtonA] = true;
	[Enum.KeyCode.ButtonB] = true;
	[Enum.KeyCode.ButtonX] = true;
	[Enum.KeyCode.ButtonY] = true;
	[Enum.KeyCode.ButtonL1] = true;
	[Enum.KeyCode.ButtonL2] = true;
	[Enum.KeyCode.ButtonL3] = true;
	[Enum.KeyCode.ButtonR1] = true;
	[Enum.KeyCode.ButtonR2] = true;
	[Enum.KeyCode.ButtonR3] = true;
	[Enum.KeyCode.ButtonSelect] = true;
	[Enum.KeyCode.ButtonStart] = true;
	[Enum.KeyCode.DPadDown] = true;
	[Enum.KeyCode.DPadLeft] = true;
	[Enum.KeyCode.DPadRight] = true;
	[Enum.KeyCode.DPadUp] = true;
	[Enum.KeyCode.Thumbstick1] = true;
	[Enum.KeyCode.Thumbstick2] = true;
}
local _ = {
	[Enum.KeyCode.ButtonB] = true;
	[Enum.KeyCode.ButtonL1] = true;
	[Enum.KeyCode.ButtonR1] = true;
}
local tbl_3 = {
	[Enum.KeyCode.ButtonA] = "rbxasset://textures/ui/Controls/DesignSystem/ButtonA.png";
	[Enum.KeyCode.ButtonB] = "rbxasset://textures/ui/Controls/DesignSystem/ButtonB.png";
	[Enum.KeyCode.ButtonY] = "rbxasset://textures/ui/Controls/DesignSystem/ButtonY.png";
	[Enum.KeyCode.ButtonX] = "rbxasset://textures/ui/Controls/DesignSystem/ButtonX.png";
	[Enum.KeyCode.ButtonL3] = "rbxasset://textures/ui/Controls/DesignSystem/ButtonL3.png";
	[Enum.KeyCode.ButtonR3] = "rbxasset://textures/ui/Controls/DesignSystem/ButtonR3.png";
	[Enum.KeyCode.Thumbstick1] = "rbxasset://textures/ui/Controls/DesignSystem/Thumbstick1Directional.png";
	[Enum.KeyCode.Thumbstick2] = "rbxasset://textures/ui/Controls/DesignSystem/Thumbstick2Directional.png";
	[Enum.KeyCode.ButtonStart] = "rbxasset://textures/ui/Controls/DesignSystem/ButtonStart.png";
}
local tbl_4 = {}
local tbl = {
	[FocusNavigationEventNameEnum.Search] = tbl_3[Enum.KeyCode.ButtonY];
}
local var16 = tbl_3[Enum.KeyCode.ButtonY]
tbl[FocusNavigationEventNameEnum.DisplayStatsAndInfo] = var16
if require(Parent.SharedFlags).FFlagAXMigrateLayeredClothingSortPageToFocusNavigation then
	var16 = tbl_3[Enum.KeyCode.ButtonY]
else
	var16 = nil
end
tbl[FocusNavigationEventNameEnum.OpenLayeredClothingSortResetPrompt] = var16
tbl_4[Enum.KeyCode.ButtonY] = tbl
local tbl_5 = {
	[FocusNavigationEventNameEnum.Play] = tbl_3[Enum.KeyCode.ButtonX];
	[FocusNavigationEventNameEnum.SeeAll] = tbl_3[Enum.KeyCode.ButtonX];
	[FocusNavigationEventNameEnum.AcceptFriendRequest] = tbl_3[Enum.KeyCode.ButtonX];
	[FocusNavigationEventNameEnum.AddFriend] = tbl_3[Enum.KeyCode.ButtonX];
}
if SharedFlags.FFlagAXMigrateAvatarEditorPageInputBindings then
	-- KONSTANTWARNING: GOTO [413] #264
end
-- KONSTANTERROR: [0] 1. Error Block 155 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [412] 263. Error Block 179 start (CF ANALYSIS FAILED)
tbl_5[FocusNavigationEventNameEnum.OpenBuyCatalogItemPrompt] = nil
tbl_4[Enum.KeyCode.ButtonX] = tbl_5
;({})[FocusNavigationEventNameEnum.HoldToPlay] = tbl_3[Enum.KeyCode.ButtonA]
if FFlagAXMigrateCatalogItemCardInputBindingsToFocusNavigation then
	-- KONSTANTWARNING: GOTO [433] #278
end
-- KONSTANTERROR: [412] 263. Error Block 179 end (CF ANALYSIS FAILED)