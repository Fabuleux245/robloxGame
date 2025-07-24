-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:00
-- Luau version 6, Types version 3
-- Time taken: 0.000643 seconds

local Color3_fromRGB_result1 = Color3.fromRGB(0, 170, 255)
local Color3_fromRGB_result1_3 = Color3.fromRGB(0, 120, 180)
local Color3_fromRGB_result1_2 = Color3.fromRGB(255, 255, 255)
return {
	action = {
		resizeInfo = TweenInfo.new(0.2, Enum.EasingStyle.Back);
		repositionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Back);
	};
	toggleable = {
		deselected = {
			iconGradientColor = ColorSequence.new(Color3_fromRGB_result1, Color3_fromRGB_result1_3);
			iconGradientRotation = 90;
			noticeCircleColor = Color3_fromRGB_result1;
			noticeCircleImage = "http://www.roblox.com/asset/?id=4882430005";
			noticeTextColor = Color3_fromRGB_result1_2;
			captionOverlineColor = Color3_fromRGB_result1;
		};
		selected = {
			iconBackgroundColor = Color3.fromRGB(255, 255, 255);
			iconBackgroundTransparency = 0.1;
			iconGradientColor = ColorSequence.new(Color3_fromRGB_result1, Color3_fromRGB_result1_3);
			iconGradientRotation = 90;
			iconImageColor = Color3.fromRGB(255, 255, 255);
			iconTextColor = Color3.fromRGB(255, 255, 255);
			noticeCircleColor = Color3_fromRGB_result1_2;
			noticeTextColor = Color3_fromRGB_result1;
		};
	};
	other = {};
}