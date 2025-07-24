-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:18
-- Luau version 6, Types version 3
-- Time taken: 0.001178 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local GameInfosReducer_upvr = require(Parent.GameInfosRodux).GameInfosReducer
local getGameTileLayoutData_upvr = require(GameTile.getGameTileLayoutData)
local React_upvr = require(Parent.React)
local getValidTileBadges_upvr = require(GameTile.Overlays.getValidTileBadges)
return function(arg1, arg2) -- Line 12, Named "useValidTileBadges"
	--[[ Upvalues[5]:
		[1]: useSelector_upvr (readonly)
		[2]: GameInfosReducer_upvr (readonly)
		[3]: getGameTileLayoutData_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: getValidTileBadges_upvr (readonly)
	]]
	local getGameTileLayoutData_upvr_result1_upvr = getGameTileLayoutData_upvr(useSelector_upvr(function(arg1_2) -- Line 13
		--[[ Upvalues[2]:
			[1]: GameInfosReducer_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return arg1_2.Personalization[GameInfosReducer_upvr.key][arg1]
	end), arg2)
	return React_upvr.useMemo(function() -- Line 19
		--[[ Upvalues[2]:
			[1]: getGameTileLayoutData_upvr_result1_upvr (readonly)
			[2]: getValidTileBadges_upvr (copied, readonly)
		]]
		if getGameTileLayoutData_upvr_result1_upvr and getGameTileLayoutData_upvr_result1_upvr.tileBadgesByPosition then
			return getValidTileBadges_upvr(getGameTileLayoutData_upvr_result1_upvr.tileBadgesByPosition)
		end
		return nil
	end, {getGameTileLayoutData_upvr_result1_upvr})
end