-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:11
-- Luau version 6, Types version 3
-- Time taken: 0.002511 seconds

local GameCollections = script:FindFirstAncestor("GameCollections")
local Parent = GameCollections.Parent
local GameTile = require(Parent.GameTile)
local Responsive_upvr = require(Parent.Responsive)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local FFlagEnablePreferredTextSizeFixGameGrid_upvr = require(Parent.SharedFlags).FFlagEnablePreferredTextSizeFixGameGrid
local FFlagAllowUseLegacyGameTile_upvr = require(Parent.SharedFlags).FFlagAllowUseLegacyGameTile
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local FFlagLuaAppMigrateGameTileIxp_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileIxp
local GameTileExperimentation_upvr = GameTile.GameTileExperimentation
local useBreakpointXOrSmaller_upvr = Responsive_upvr.useBreakpointXOrSmaller
local GameTileConstants_upvr = GameTile.GameTileConstants
local React_upvr = require(Parent.React)
local GameCollectionLayoutCalculators_upvr = require(GameCollections.GameCollectionLayoutCalculators)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 22, Named "useGetGameTileHeight"
	--[[ Upvalues[11]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
		[3]: FFlagAllowUseLegacyGameTile_upvr (readonly)
		[4]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[5]: FFlagLuaAppMigrateGameTileIxp_upvr (readonly)
		[6]: GameTileExperimentation_upvr (readonly)
		[7]: useBreakpointXOrSmaller_upvr (readonly)
		[8]: Responsive_upvr (readonly)
		[9]: GameTileConstants_upvr (readonly)
		[10]: React_upvr (readonly)
		[11]: GameCollectionLayoutCalculators_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5_result1_upvr = useDesignTokens_upvr()
	local var16_upvw
	local var17
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
		local var18
		local var20
		if var20 and arg9 then
			var18 = false
		else
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var20 = not FFlagLuaAppMigrateGameTileIxp_upvr
				return var20
			end
			if not FFlagLuaAppMigrateGameTile_upvr or not INLINED() then
				var20 = FFlagLuaAppMigrateGameTileIxp_upvr
				if var20 then
					var20 = GameTileExperimentation_upvr.getIsTileMigrationEnabled()
				end
			end
			var18 = var20
		end
		var20 = useBreakpointXOrSmaller_upvr(Responsive_upvr.Keys.Small)
		if var18 and var20 then
			var16_upvw = GameTileConstants_upvr.TileTextLines[arg2].largeMetadataTextLines
		else
			var16_upvw = GameTileConstants_upvr.TileTextLines[arg2].metadataTextLines
		end
	end
	var20 = React_upvr
	function var20(arg1_2) -- Line 51
		--[[ Upvalues[15]:
			[1]: GameCollectionLayoutCalculators_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: var5_result1_upvr (readonly)
			[5]: arg3 (readonly)
			[6]: arg4 (readonly)
			[7]: arg5 (readonly)
			[8]: arg6 (readonly)
			[9]: arg7 (readonly)
			[10]: FFlagLuaAppMigrateGameTile_upvr (copied, readonly)
			[11]: arg8 (readonly)
			[12]: FFlagAllowUseLegacyGameTile_upvr (copied, readonly)
			[13]: arg9 (readonly)
			[14]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (copied, readonly)
			[15]: var16_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
		local var21
		if FFlagLuaAppMigrateGameTile_upvr then
			var21 = arg8
		else
			var21 = nil
		end
		if FFlagAllowUseLegacyGameTile_upvr then
			-- KONSTANTWARNING: GOTO [22] #22
		end
		-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 21. Error Block 23 start (CF ANALYSIS FAILED)
		local var22
		if FFlagEnablePreferredTextSizeFixGameGrid_upvr and FFlagLuaAppMigrateGameTile_upvr then
			var22 = var16_upvw
		else
			var22 = nil
		end
		do
			return GameCollectionLayoutCalculators_upvr.calculateTileHeightFromWidth(arg1_2, arg1, arg2, var5_result1_upvr, arg3, arg4, arg5, arg6, arg7, var21, nil, var22)
		end
		-- KONSTANTERROR: [21] 21. Error Block 23 end (CF ANALYSIS FAILED)
	end
	local module = {}
	if FFlagLuaAppMigrateGameTile_upvr then
		var17 = arg8
	else
		var17 = nil
	end
	local var24
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr and FFlagLuaAppMigrateGameTile_upvr then
		var24 = var16_upvw
	else
		var24 = nil
	end
	if FFlagAllowUseLegacyGameTile_upvr then
	else
	end
	module[1] = var5_result1_upvr
	module[2] = arg1
	module[3] = arg2
	module[4] = arg3
	module[5] = arg4
	module[6] = arg5
	module[7] = arg6
	module[8] = arg7
	module[9] = var17
	module[10] = var24
	module[11] = nil
	return var20.useCallback(var20, module)
end