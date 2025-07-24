-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:42
-- Luau version 6, Types version 3
-- Time taken: 0.001124 seconds

local Constants = require(script.Parent.Parent.TopBar.Constants)
local module = {
	ContainerBackgroundTransparency = 0;
	ContainerBackgroundColor = require(script.Parent.Colors).Carbon;
	UseContainerAspectRatio = false;
	ContainerAspectRatio = nil;
	MaxAssetCardsPerRow = 3;
	ContainerSize = UDim2.new(1, 0, 1, -Constants.TopBarHeight);
	ContainerAnchorPoint = Vector2.new(0.5, 0);
	ContainerPosition = UDim2.new(0.5, 0, 0, Constants.TopBarHeight);
	AvatarHeadShotSize = 48;
	TopSizeY = 90;
	ClipsDescendants = false;
	PlayerViewportSize = UDim2.new(1, 0, 0.41, 0);
	AssetListSize = UDim2.new(1, 0, 0.59, -42);
	AssetListPosition = UDim2.new(0, 0, 0.41, 42);
	CloseButtonPosition = UDim2.new(0, 6, 0, -20);
	DetailsThumbnailFrameSize = UDim2.new(1, 0, 0.4, 0);
	DetailsThumbnailFramePosition = UDim2.new(0, 0, 0, 15);
	DetailsThumbnailAnchorPoint = Vector2.new(0.5, 0.5);
	DetailsThumbnailPosition = UDim2.new(0.5, 0, 0.5, 0);
	DetailsThumbnailARDominantAxis = Enum.DominantAxis.Height;
	DetailsFramePosition = UDim2.new(0, 15, 0.4, 15);
	DetailsFrameSize = UDim2.new(1, -30, 0.6, -30);
	AssetCardMaxSizeX = 108;
	AssetCardMaxSizeY = 157;
	DefaultCameraOffset = CFrame.new(0, 2, -5);
	ToolOffset = CFrame.new(0, 2, -8);
	TryOnPosition = UDim2.new(0, 0, 0, 15);
	TryOnSize = UDim2.new(1, 0, 0.4, 0);
	BorderPaddingSize = 20;
	AssetTextMaxSize = 14;
}
setmetatable(module, {
	__newindex = function(arg1, arg2, arg3) -- Line 38, Named "__newindex"
	end;
	__index = function(arg1, arg2) -- Line 39, Named "__index"
		error("CompactView table has no value: "..tostring(arg2))
	end;
})
return module