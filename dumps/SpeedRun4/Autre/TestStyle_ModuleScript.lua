-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:07
-- Luau version 6, Types version 3
-- Time taken: 0.001072 seconds

local tbl_2 = {
	Color = Color3.fromRGB(0, 0, 0);
	Transparency = 0;
}
local tbl_3 = {
	Color = Color3.fromRGB(0, 0, 0);
	Transparency = 0;
	Image = "";
}
local tbl = {
	Font = Enum.Font.GothamMedium;
	RelativeSize = 1;
	RelativeMinSize = 1;
}
return {
	Theme = {
		BackgroundDefault = tbl_2;
		BackgroundContrast = tbl_2;
		BackgroundMuted = tbl_2;
		BackgroundUIDefault = tbl_2;
		BackgroundUIContrast = tbl_2;
		BackgroundOnHover = tbl_2;
		BackgroundOnPress = tbl_2;
		UIDefault = tbl_2;
		UIMuted = tbl_2;
		UIEmphasis = tbl_2;
		ContextualPrimaryDefault = tbl_2;
		ContextualPrimaryOnHover = tbl_2;
		ContextualPrimaryContent = tbl_2;
		SystemPrimaryDefault = tbl_2;
		SystemPrimaryOnHover = tbl_2;
		SystemPrimaryContent = tbl_2;
		SecondaryDefault = tbl_2;
		SecondaryOnHover = tbl_2;
		SecondaryContent = tbl_2;
		IconDefault = tbl_2;
		IconEmphasis = tbl_2;
		IconOnHover = tbl_2;
		TextEmphasis = tbl_2;
		TextDefault = tbl_2;
		TextMuted = tbl_2;
		TextLink = tbl_2;
		Divider = tbl_2;
		Overlay = tbl_2;
		DropShadow = tbl_2;
		NavigationBar = tbl_2;
		PlaceHolder = tbl_2;
		OnlineStatus = tbl_2;
		OfflineStatus = tbl_2;
		Success = tbl_2;
		Alert = tbl_2;
		Badge = tbl_2;
		BadgeContent = tbl_2;
		SelectionCursor = {
			Color = Color3.new(0.086, 0.678, 0.847);
			Transparency = 0;
			AnimatedColor = Color3.new(1, 1, 1);
			GradientRotationSpeed = 2;
			GradientColorSequence = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.514, 0.82, 0.992)), ColorSequenceKeypoint.new(1, Color3.new(0.086, 0.678, 0.847))});
			GradientTransparencySequence = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 0)});
		};
		PlayerBackgroundDefault = tbl_3;
		ItemBackgroundDefault = tbl_3;
	};
	Font = {
		BaseSize = 10;
		Title = tbl;
		Header1 = tbl;
		Header2 = tbl;
		SubHeader1 = tbl;
		Body = tbl;
		CaptionHeader = tbl;
		CaptionSubHeader = tbl;
		CaptionBody = tbl;
		Footer = tbl;
		HeadingLarge = tbl;
		HeadingSmall = tbl;
		TitleLarge = tbl;
		BodyLarge = tbl;
		CaptionLarge = tbl;
		BodySmall = tbl;
		CaptionSmall = tbl;
	};
	Settings = {
		PreferredTransparency = 0.56;
		ReducedMotion = true;
	};
}