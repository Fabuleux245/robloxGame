-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:32
-- Luau version 6, Types version 3
-- Time taken: 0.000979 seconds

local AppFonts = require(game:GetService("CorePackages").Workspace.Packages.Style).AppFonts
return {
	EmotesWheelMinSize = Vector2.new(200, 200);
	EmotesWheelMaxSize = Vector2.new(400, 400);
	ErrorFrameSize = UDim2.new(0.6, 0, 0.2, 0);
	ErrorFramePosition = UDim2.new(0, 0, 0.1, 0);
	ErrorFrameAspectRatio = 6;
	ErrorFrameMinSize = Vector2.new(336, 56);
	ErrorFrameMaxSize = Vector2.new(432, 72);
	ErrorTextFont = AppFonts.default:getDefault();
	ErrorTextSize = 36;
	ErrorIcon = "rbxasset://textures/ui/Emotes/ErrorIcon.png";
	ErrorIconOffset = 10;
	MiddleTextSize = 28;
	MiddleTextFont = AppFonts.default:getDefault();
	SlotNumberTextSize = 24;
	SlotNumberFont = AppFonts.default:getDefault();
	CircleBackground = "rbxasset://textures/ui/Emotes/Large/CircleBackground.png";
	SegmentedCircle = "rbxasset://textures/ui/Emotes/Large/SegmentedCircle.png";
	SelectedLine = "rbxasset://textures/ui/Emotes/Large/SelectedLine.png";
	SelectedLineImageSize = Vector2.new(11, 67);
	SelectedLinePadding = 4;
	SelectedGradient = "rbxasset://textures/ui/Emotes/Large/SelectedGradient.png";
	SelectedGradientImageSize = Vector2.new(183, 141);
}