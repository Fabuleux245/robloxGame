-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:08
-- Luau version 6, Types version 3
-- Time taken: 0.000549 seconds

local Parent = script.Parent.Parent.Parent.Parent
local t = require(Parent.Parent.t)
local validateFontInfo = require(Parent.Core.Style.Validator.validateFontInfo)
return t.union(t.strictInterface({
	BaseSize = t.numberMinExclusive(0);
	Title = validateFontInfo;
	Header1 = validateFontInfo;
	Header2 = validateFontInfo;
	SubHeader1 = validateFontInfo;
	Body = validateFontInfo;
	CaptionHeader = validateFontInfo;
	CaptionSubHeader = validateFontInfo;
	CaptionBody = validateFontInfo;
	Footer = validateFontInfo;
}), t.strictInterface({
	BaseSize = t.numberMinExclusive(0);
	Title = validateFontInfo;
	Header1 = validateFontInfo;
	Header2 = validateFontInfo;
	SubHeader1 = validateFontInfo;
	Body = validateFontInfo;
	CaptionHeader = validateFontInfo;
	CaptionSubHeader = validateFontInfo;
	CaptionBody = validateFontInfo;
	Footer = validateFontInfo;
	HeadingLarge = validateFontInfo;
	HeadingSmall = validateFontInfo;
	TitleLarge = validateFontInfo;
	BodyLarge = validateFontInfo;
	CaptionLarge = validateFontInfo;
	BodySmall = validateFontInfo;
	CaptionSmall = validateFontInfo;
}))