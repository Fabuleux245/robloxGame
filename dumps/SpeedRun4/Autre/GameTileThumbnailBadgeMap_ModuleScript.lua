-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:16
-- Luau version 6, Types version 3
-- Time taken: 0.000437 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local GameTileConstants_upvr = require(GameTile.GameTileConstants)
local GameTileOverlayTextPill_upvr = require(GameTile.Overlays.GameTileOverlayTextPill)
return {
	getTileBadgeComponent = function(arg1) -- Line 8
		--[[ Upvalues[2]:
			[1]: GameTileConstants_upvr (readonly)
			[2]: GameTileOverlayTextPill_upvr (readonly)
		]]
		if arg1 == GameTileConstants_upvr.TileBadgeTypeValues.Text then
			return GameTileOverlayTextPill_upvr
		end
		warn("Unsupported game tile badge type: "..arg1)
		return nil
	end;
}