-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:59
-- Luau version 6, Types version 3
-- Time taken: 0.002013 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local GameTile = require(Parent.GameTile)
local CollectionLayoutCalculators = require(Parent.CollectionViews).CollectionLayoutCalculators
local FFlagAllowUseLegacyGameTile_upvr = require(Parent.SharedFlags).FFlagAllowUseLegacyGameTile
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local FFlagLuaAppMigrateGameTileIxp_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileIxp
local GameTileExperimentation_upvr = GameTile.GameTileExperimentation
local GameTileViewConfig_upvr = GameTile.GameTileViewConfig
local FFlagEnablePreferredTextSizeFixGameGrid_upvr = require(Parent.SharedFlags).FFlagEnablePreferredTextSizeFixGameGrid
local GameTileConstants_upvr = GameTile.GameTileConstants
return {
	calculateNumColumns = CollectionLayoutCalculators.calculateNumColumns;
	calculateTileHeightFromWidth = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) -- Line 22, Named "calculateTileHeightFromWidth"
		--[[ Upvalues[7]:
			[1]: FFlagAllowUseLegacyGameTile_upvr (readonly)
			[2]: FFlagLuaAppMigrateGameTile_upvr (readonly)
			[3]: FFlagLuaAppMigrateGameTileIxp_upvr (readonly)
			[4]: GameTileExperimentation_upvr (readonly)
			[5]: GameTileViewConfig_upvr (readonly)
			[6]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
			[7]: GameTileConstants_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 43 start (CF ANALYSIS FAILED)
		local var11
		local var12
		if var12 and arg11 then
			var11 = false
		else
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var12 = not FFlagLuaAppMigrateGameTileIxp_upvr
				return var12
			end
			if not FFlagLuaAppMigrateGameTile_upvr or not INLINED() then
				var12 = FFlagLuaAppMigrateGameTileIxp_upvr
				if var12 then
					var12 = GameTileExperimentation_upvr.getIsTileMigrationEnabled()
				end
			end
			var11 = var12
		end
		-- KONSTANTERROR: [0] 1. Error Block 43 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 19. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 19. Error Block 12 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 20. Error Block 13 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 20. Error Block 13 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 21. Error Block 39 start (CF ANALYSIS FAILED)
		var12 = GameTileViewConfig_upvr.getTileHeight
		if FFlagLuaAppMigrateGameTile_upvr then
			-- KONSTANTWARNING: GOTO [39] #36
		end
		-- KONSTANTERROR: [23] 21. Error Block 39 end (CF ANALYSIS FAILED)
	end;
	calculateSideMargin = CollectionLayoutCalculators.calculateSideMargin;
	calculateColumnGap = CollectionLayoutCalculators.calculateColumnGap;
	calculateVerticalPadding = CollectionLayoutCalculators.calculateVerticalPadding;
	calculateFractionalItemAmount = CollectionLayoutCalculators.calculateFractionalItemAmount;
	calculateMaxTilesToShow = CollectionLayoutCalculators.calculateMaxTilesToShow;
	calculateLoadMoreThreshold = CollectionLayoutCalculators.calculateLoadMoreThreshold;
}