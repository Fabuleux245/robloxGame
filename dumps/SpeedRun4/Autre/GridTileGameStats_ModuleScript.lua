-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:05
-- Luau version 6, Types version 3
-- Time taken: 0.006667 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local UIBlox = require(Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local Responsive_upvr = require(Parent.Responsive)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local FFlagEnablePreferredTextSizeFixGameGrid_upvr = require(Parent.SharedFlags).FFlagEnablePreferredTextSizeFixGameGrid
local useTextSizeOffset_upvr = UIBlox.Core.Style.useTextSizeOffset
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local FFlagLuaAppFixSmallScreenFooterStatsOverlap_upvr = require(Parent.SharedFlags).FFlagLuaAppFixSmallScreenFooterStatsOverlap
local useBreakpointXOrSmaller_upvr = Responsive_upvr.useBreakpointXOrSmaller
local GameTileTypes_upvr = require(GameTile.GameTileTypes)
local FFlagLuaAppMigrateGameTileFooterValueFixes_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileFooterValueFixes
local getGameTileMetadataFont_upvr = require(GameTile.Footer.getGameTileMetadataFont)
local React_upvr = require(Parent.React)
local TextService_upvr = game:GetService("TextService")
local vector2_upvr = Vector2.new(math.huge, math.huge)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_status_games_rating_small_upvr = Images["icons/status/games/rating_small"]
local icons_status_games_people_playing_small_upvr = Images["icons/status/games/people-playing_small"]
return function(arg1) -- Line 55, Named "GridTileGameStats"
	--[[ Upvalues[17]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
		[3]: useTextSizeOffset_upvr (readonly)
		[4]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[5]: useTokens_upvr (readonly)
		[6]: FFlagLuaAppFixSmallScreenFooterStatsOverlap_upvr (readonly)
		[7]: useBreakpointXOrSmaller_upvr (readonly)
		[8]: Responsive_upvr (readonly)
		[9]: GameTileTypes_upvr (readonly)
		[10]: FFlagLuaAppMigrateGameTileFooterValueFixes_upvr (readonly)
		[11]: getGameTileMetadataFont_upvr (readonly)
		[12]: React_upvr (readonly)
		[13]: TextService_upvr (readonly)
		[14]: vector2_upvr (readonly)
		[15]: ImageSetLabel_upvr (readonly)
		[16]: icons_status_games_rating_small_upvr (readonly)
		[17]: icons_status_games_people_playing_small_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 161 start (CF ANALYSIS FAILED)
	local useDesignTokens_upvr_result1 = useDesignTokens_upvr()
	local var23
	if var23 then
		local _ = useTextSizeOffset_upvr()
	else
	end
	var23 = nil
	if FFlagLuaAppMigrateGameTile_upvr then
		var23 = useTokens_upvr()
	end
	if FFlagLuaAppFixSmallScreenFooterStatsOverlap_upvr then
		if useBreakpointXOrSmaller_upvr(Responsive_upvr.Keys.XSmall) then
			if arg1.gameTileLayoutType ~= GameTileTypes_upvr.GameTileLayoutType.Narrow then
			else
			end
			-- KONSTANTWARNING: GOTO [37] #32
		end
	else
	end
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
		if useBreakpointXOrSmaller_upvr(Responsive_upvr.Keys.Small) then
			if arg1.gameTileLayoutType ~= GameTileTypes_upvr.GameTileLayoutType.Narrow then
			else
			end
			-- KONSTANTWARNING: GOTO [60] #49
		end
		-- KONSTANTWARNING: GOTO [60] #49
	end
	local var25
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		if FFlagLuaAppMigrateGameTileFooterValueFixes_upvr then
			var25 = var23.Size.Size_500
		else
			var25 = var23.Size.Size_300
		end
	elseif FFlagLuaAppMigrateGameTileFooterValueFixes_upvr then
		var25 = useDesignTokens_upvr_result1.Global.Space_250
	else
		var25 = useDesignTokens_upvr_result1.Global.Space_150
	end
	local var26
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		if false then
			var26 = var23.Gap.XXSmall
		else
			var26 = var23.Gap.XSmall
		end
	else
		var26 = useDesignTokens_upvr_result1.Global.Space_50
	end
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		if FFlagLuaAppMigrateGameTileFooterValueFixes_upvr then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if false then
			else
			end
		else
		end
	else
	end
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
	else
	end
	local var27
	if FFlagLuaAppMigrateGameTile_upvr and var23 then
		var27 = var23
	else
		var27 = nil
	end
	local var28
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		var28 = true
	else
		var28 = nil
	end
	local var15_result1 = getGameTileMetadataFont_upvr(arg1.useLargerFont, useDesignTokens_upvr_result1, var27, var28)
	local FontSize_upvr = var15_result1.FontSize
	local Font_upvr = var15_result1.Font
	var28 = FFlagEnablePreferredTextSizeFixGameGrid_upvr
	if var28 then
		var27 = false
		if 0 < 0 then
			var27 = nil
			-- KONSTANTWARNING: GOTO [187] #138
		end
	else
	end
	local _ = FontSize_upvr / 1.26
	local ratingText_upvr = arg1.ratingText
	local function _() -- Line 110
		--[[ Upvalues[5]:
			[1]: ratingText_upvr (readonly)
			[2]: TextService_upvr (copied, readonly)
			[3]: FontSize_upvr (readonly)
			[4]: Font_upvr (readonly)
			[5]: vector2_upvr (copied, readonly)
		]]
		if ratingText_upvr == nil or ratingText_upvr == "" then
			return 0
		end
		return TextService_upvr:GetTextSize(ratingText_upvr, FontSize_upvr, Font_upvr, vector2_upvr).X
	end
	local tbl = {}
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
		-- KONSTANTWARNING: GOTO [209] #157
	end
	tbl[1] = ratingText_upvr
	tbl[2] = FontSize_upvr
	tbl[3] = Font_upvr
	tbl[4] = nil
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 161 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [228] 174. Error Block 141 start (CF ANALYSIS FAILED)
	local tbl_2 = {}
	if nil then
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	tbl_2.Size = UDim2.new(1, 0, 0, var25 + 0)
	tbl_2.Position = arg1.Position
	tbl_2.ClipsDescendants = false
	tbl_2.BackgroundTransparency = 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil then
		-- KONSTANTWARNING: GOTO [270] #206
	end
	-- KONSTANTERROR: [228] 174. Error Block 141 end (CF ANALYSIS FAILED)
end