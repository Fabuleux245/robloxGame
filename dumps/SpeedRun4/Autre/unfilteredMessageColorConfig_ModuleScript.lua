-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:52
-- Luau version 6, Types version 3
-- Time taken: 0.000472 seconds

game:DefineFastString("UnfilteredMessageLightHexColor", "335FFF")
game:DefineFastString("UnfilteredMessagePressedLightHexColor", "0031E5")
game:DefineFastString("UnfilteredMessageDarkHexColor", "335FFF")
game:DefineFastString("UnfilteredMessagePressedDarkHexColor", "0031E5")
game:DefineFastInt("UnfilteredMessageTransparencyHundredths", 0)
return {
	UnfilteredMessageLightColor3 = Color3.fromHex(game:GetFastString("UnfilteredMessageLightHexColor"));
	UnfilteredMessagePressedLightColor3 = Color3.fromHex(game:GetFastString("UnfilteredMessagePressedLightHexColor"));
	UnfilteredMessageDarkColor3 = Color3.fromHex(game:GetFastString("UnfilteredMessageDarkHexColor"));
	UnfilteredMessagePressedDarkColor3 = Color3.fromHex(game:GetFastString("UnfilteredMessagePressedDarkHexColor"));
	UnfilteredMessageTransparency = game:GetFastInt("UnfilteredMessageTransparencyHundredths") / 100;
}