-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:44
-- Luau version 6, Types version 3
-- Time taken: 0.001122 seconds

local Constants = require(script.Parent.Parent.TopBar.Constants)
local module = {
	UseContainerAspectRatio = false;
	ContainerBackgroundTransparency = 0.3;
	ContainerBackgroundColor = require(script.Parent.Colors).Black;
	ContainerAspectRatio = 0.9;
	MaxAssetCardsPerRow = 4;
	ContainerSize = UDim2.new(0.7, 0, 0.95, -Constants.TopBarHeight);
	ContainerAnchorPoint = Vector2.new(0.5, 0.5);
	ContainerPosition = UDim2.new(0.5, 0, 0.5, Constants.TopBarHeight);
	AvatarHeadShotSize = 48;
	TopSizeY = 50;
	ClipsDescendants = true;
	PlayerViewportSize = UDim2.new(0.33, 0, 1, -42);
	AssetListSize = UDim2.new(0.67, 0, 1, -42);
	AssetListPosition = UDim2.new(0.33, 0, 0, 42);
	CloseButtonPosition = UDim2.new(0, 6, 0, -30);
	DetailsThumbnailFrameSize = UDim2.new(0.4, 0, 1, -30);
	DetailsThumbnailFramePosition = UDim2.new(0, 25, 0, 30);
	DetailsThumbnailAnchorPoint = Vector2.new(0.5, 0);
	DetailsThumbnailPosition = UDim2.new(0.5, 0, 0, 0);
	DetailsThumbnailARDominantAxis = Enum.DominantAxis.Width;
	DetailsFramePosition = UDim2.new(0.4, 30, 0, 30);
	DetailsFrameSize = UDim2.new(0.6, -30, 1, -30);
	AssetCardMaxSizeX = 190;
	AssetCardMaxSizeY = 279;
	DefaultCameraOffset = CFrame.new(0, 2, -5);
	ToolOffset = CFrame.new(0, 2, -8);
	TryOnPosition = UDim2.new(0, 25, 0, 30);
	TryOnSize = UDim2.new(0.4, 0, 1, -30);
	BorderPaddingSize = 40;
	AssetTextMaxSize = 18;
}
setmetatable(module, {
	__newindex = function(arg1, arg2, arg3) -- Line 38, Named "__newindex"
	end;
	__index = function(arg1, arg2) -- Line 39, Named "__index"
		error("WideView table has no value: "..tostring(arg2))
	end;
})
return module