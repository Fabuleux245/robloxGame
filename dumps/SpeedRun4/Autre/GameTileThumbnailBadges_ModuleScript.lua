-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:17
-- Luau version 6, Types version 3
-- Time taken: 0.001180 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local React_upvr = require(Parent.React)
local GameTileConstants = require(GameTile.GameTileConstants)
local FFlagLuaAppGameTileIconTextBadgeEnabled_upvr = require(Parent.SharedFlags).FFlagLuaAppGameTileIconTextBadgeEnabled
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local TileBadgePositionValues_upvr = GameTileConstants.TileBadgePositionValues
local GameTileThumbnailBadgeMap_upvr = require(GameTile.Overlays.GameTileThumbnailBadgeMap)
local TileBadgeIconNamesByType_upvr = GameTileConstants.TileBadgeIconNamesByType
local GameTileOverlayBadge_upvr = require(GameTile.Overlays.GameTileOverlayBadge)
local function GameTileThumbnailBadges(arg1) -- Line 20
	--[[ Upvalues[7]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: TileBadgePositionValues_upvr (readonly)
		[4]: FFlagLuaAppGameTileIconTextBadgeEnabled_upvr (readonly)
		[5]: GameTileThumbnailBadgeMap_upvr (readonly)
		[6]: TileBadgeIconNamesByType_upvr (readonly)
		[7]: GameTileOverlayBadge_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local Space_150_upvr = useDesignTokens_upvr().Global.Space_150
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	local function _(arg1_2) -- Line 26
		--[[ Upvalues[2]:
			[1]: any_useBinding_result2_upvr (readonly)
			[2]: Space_150_upvr (readonly)
		]]
		any_useBinding_result2_upvr(arg1_2.AbsoluteSize.X - Space_150_upvr * 2)
	end
	local _ = {Space_150_upvr}
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [141] 110. Error Block 31 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [141] 110. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 23. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.10]
	-- KONSTANTERROR: [30] 23. Error Block 2 end (CF ANALYSIS FAILED)
end
if FFlagLuaAppGameTileIconTextBadgeEnabled_upvr then
	return React_upvr.memo(GameTileThumbnailBadges)
end
return GameTileThumbnailBadges