-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:33
-- Luau version 6, Types version 3
-- Time taken: 0.000771 seconds

local AppFonts = require(game:GetService("CorePackages").Workspace.Packages.Style).AppFonts
return {
	EmotesWheelMinSize = Vector2.new(320, 320);
	EmotesWheelMaxSize = Vector2.new(640, 640);
	ErrorFrameSize = UDim2.new(0.6, 0, 0.2, 0);
	ErrorFramePosition = UDim2.new(0, 0, 0.1, 0);
	ErrorFrameAspectRatio = 6;
	ErrorFrameMinSize = Vector2.new(336, 56);
	ErrorFrameMaxSize = Vector2.new(432, 72);
	ErrorTextFont = AppFonts.default:getDefault();
	ErrorTextSize = 48;
	ErrorIcon = "rbxasset://textures/ui/Emotes/ErrorIcon.png";
	ErrorIconOffset = 10;
	MiddleTextSize = 48;
	MiddleTextFont = AppFonts.default:getDefault();
	SlotNumberTextSize = 48;
	SlotNumberFont = AppFonts.default:getDefault();
	CircleBackground = "rbxasset://textures/ui/Emotes/TenFoot/CircleBackground.png";
	SegmentedCircle = "rbxasset://textures/ui/Emotes/TenFoot/SegmentedCircle.png";
	SelectedLine = "rbxasset://textures/ui/Emotes/TenFoot/SelectedLine.png";
	SelectedLineImageSize = Vector2.new(18, 107);
	SelectedLinePadding = 5;
	SelectedGradient = "rbxasset://textures/ui/Emotes/TenFoot/SelectedGradient.png";
	SelectedGradientImageSize = Vector2.new(292, 225);
	EmotesListPosition = UDim2.new(1, -194, 1, -234);
}