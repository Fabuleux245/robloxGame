-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:58
-- Luau version 6, Types version 3
-- Time taken: 0.001452 seconds

return {
	BubbleDuration = 15;
	MaxBubbles = 3;
	BackgroundColor3 = Color3.fromRGB(250, 250, 250);
	BackgroundTransparency = 0.1;
	TextColor3 = Color3.fromRGB(57, 59, 61);
	TextSize = 16;
	FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json");
	Transparency = 0.1;
	TailVisible = true;
	Padding = 8;
	MaxWidth = 300;
	ImageLabel = {
		Image = "";
		ImageColor3 = Color3.new(1, 1, 1);
		ImageRectOffset = Vector2.new();
		ImageRectSize = Vector2.new();
		ScaleType = Enum.ScaleType.Stretch;
		SliceCenter = Rect.new(Vector2.new(), Vector2.new());
		SliceScale = 1;
		TileSize = UDim2.fromScale(1, 1);
	};
	UIGradient = {
		Enabled = false;
		Color = ColorSequence.new(Color3.fromRGB(150, 150, 150), Color3.fromRGB(250, 250, 250));
		Offset = Vector2.new();
		Rotation = 0;
		Transparency = NumberSequence.new(0);
	};
	UICorner = {
		CornerRadius = UDim.new(0, 12);
	};
	SizeAnimation = {
		Enabled = true;
		SpringDampingRatio = 1;
		SpringFrequency = 2;
	};
	TransparencyAnimation = {
		Enabled = true;
		SpringDampingRatio = 1;
		SpringFrequency = 2;
	};
	VerticalStudsOffset = 0;
	LocalPlayerStudsOffset = Vector3.new(0, 0, 2);
	BubblesSpacing = 6;
	MinimizeDistance = 40;
	MaxDistance = 100;
	AdorneeName = "HumanoidRootPart";
	Voice = {
		ShowIndicator = true;
	};
	UserSpecificSettings = {};
}