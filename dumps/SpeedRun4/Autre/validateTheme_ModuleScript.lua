-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:09
-- Luau version 6, Types version 3
-- Time taken: 0.000659 seconds

local Parent = script.Parent.Parent.Parent.Parent
local validateColorInfo = require(Parent.Core.Style.Validator.validateColorInfo)
local validateThemedBackgroundImageInfo = require(Parent.Core.Style.Validator.validateThemedBackgroundImageInfo)
return require(Parent.Parent.t).strictInterface({
	BackgroundDefault = validateColorInfo;
	BackgroundContrast = validateColorInfo;
	BackgroundMuted = validateColorInfo;
	BackgroundUIDefault = validateColorInfo;
	BackgroundUIContrast = validateColorInfo;
	BackgroundOnHover = validateColorInfo;
	BackgroundOnPress = validateColorInfo;
	UIDefault = validateColorInfo;
	UIMuted = validateColorInfo;
	UIEmphasis = validateColorInfo;
	ContextualPrimaryDefault = validateColorInfo;
	ContextualPrimaryOnHover = validateColorInfo;
	ContextualPrimaryContent = validateColorInfo;
	SystemPrimaryDefault = validateColorInfo;
	SystemPrimaryOnHover = validateColorInfo;
	SystemPrimaryContent = validateColorInfo;
	SecondaryDefault = validateColorInfo;
	SecondaryOnHover = validateColorInfo;
	SecondaryContent = validateColorInfo;
	IconDefault = validateColorInfo;
	IconEmphasis = validateColorInfo;
	IconOnHover = validateColorInfo;
	TextEmphasis = validateColorInfo;
	TextDefault = validateColorInfo;
	TextMuted = validateColorInfo;
	TextLink = validateColorInfo;
	Divider = validateColorInfo;
	Overlay = validateColorInfo;
	DropShadow = validateColorInfo;
	NavigationBar = validateColorInfo;
	PlaceHolder = validateColorInfo;
	OnlineStatus = validateColorInfo;
	OfflineStatus = validateColorInfo;
	Success = validateColorInfo;
	Alert = validateColorInfo;
	Badge = validateColorInfo;
	BadgeContent = validateColorInfo;
	SelectionCursor = require(Parent.Core.Style.Validator.validateSelectionCursorInfo);
	PlayerBackgroundDefault = validateThemedBackgroundImageInfo;
	ItemBackgroundDefault = validateThemedBackgroundImageInfo;
})