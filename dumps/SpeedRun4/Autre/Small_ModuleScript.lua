-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:33
-- Luau version 6, Types version 3
-- Time taken: 0.000676 seconds

local AppFonts = require(game:GetService("CorePackages").Workspace.Packages.Style).AppFonts
return {
	EmotesWheelMinSize = Vector2.new(150, 150);
	EmotesWheelMaxSize = Vector2.new(300, 300);
	ErrorFrameSize = UDim2.new(0.6, 0, 0.2, 0);
	ErrorFramePosition = UDim2.new(0, 0, 0.1, 0);
	ErrorFrameAspectRatio = 6;
	ErrorFrameMinSize = Vector2.new(336, 56);
	ErrorFrameMaxSize = Vector2.new(432, 72);
	ErrorTextFont = AppFonts.default:getDefault();
	ErrorTextSize = 24;
	ErrorIcon = "rbxasset://textures/ui/Emotes/ErrorIcon.png";
	ErrorIconOffset = 10;
	MiddleTextSize = 18;
	MiddleTextFont = AppFonts.default:getDefault();
	SlotNumberTextSize = 16;
	SlotNumberFont = AppFonts.default:getDefault();
	CircleBackground = "rbxasset://textures/ui/Emotes/Small/CircleBackground.png";
	SegmentedCircle = "rbxasset://textures/ui/Emotes/Small/SegmentedCircle.png";
	SelectedLine = "rbxasset://textures/ui/Emotes/Small/SelectedLine.png";
	SelectedLineImageSize = Vector2.new(8, 50);
	SelectedLinePadding = 2;
	SelectedGradient = "rbxasset://textures/ui/Emotes/Small/SelectedGradient.png";
	SelectedGradientImageSize = Vector2.new(138, 106);
	EmotesListPosition = UDim2.new(1, -119, 1, -114);
}