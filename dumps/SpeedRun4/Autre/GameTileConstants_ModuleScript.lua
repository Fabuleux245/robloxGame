-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:09
-- Luau version 6, Types version 3
-- Time taken: 0.000659 seconds

local GameTileLayoutType = require(script.Parent.GameTileTypes).GameTileLayoutType
return {
	TileOverlay = {
		BottomRightPosition = UDim2.new(0.96, 0, 0.93, 0);
	};
	PlayButtonStyleValues = {
		Enabled = "Enabled";
		Disabled = "Disabled";
	};
	PlayerCountStyleValues = {
		Hover = "Hover";
		Always = "Always";
		Footer = "Footer";
	};
	TileBadgeTypeValues = {
		Text = "Text";
	};
	TileBadgePositionValues = {
		ImageTopLeft = "ImageTopLeft";
	};
	TileBadgeIconTypeValues = {
		PaidAccess = "PaidAccess";
	};
	TileBadgeIconNamesByType = {
		PaidAccess = "icons/menu/gem_small";
	};
	TileTextLines = {
		[GameTileLayoutType.Narrow] = {
			titleTextLines = 2;
			metadataTextLines = 1;
			largeMetadataTextLines = 2;
		};
		[GameTileLayoutType.Wide] = {
			titleTextLines = 1;
			metadataTextLines = 1;
			largeMetadataTextLines = 1;
		};
		[GameTileLayoutType.Event] = {
			titleTextLines = 1;
			metadataTextLines = 1;
			largeMetadataTextLines = 1;
		};
	};
}