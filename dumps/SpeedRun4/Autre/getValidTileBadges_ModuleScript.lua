-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:17
-- Luau version 6, Types version 3
-- Time taken: 0.000966 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local GameTileConstants_upvr = require(GameTile.GameTileConstants)
local mutedError_upvr = require(GameTile.Parent.Loggers).mutedError
return function(arg1) -- Line 11, Named "getValidTileBadges"
	--[[ Upvalues[2]:
		[1]: GameTileConstants_upvr (readonly)
		[2]: mutedError_upvr (readonly)
	]]
	for i, v in arg1 do
		if i == GameTileConstants_upvr.TileBadgePositionValues.ImageTopLeft and 0 < #v then
			local _1 = v[1]
			if _1.tileBadgeType and _1.analyticsId then
				({})[i] = {v[1]}
			else
				mutedError_upvr("Invalid tile badge metadata.")
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end