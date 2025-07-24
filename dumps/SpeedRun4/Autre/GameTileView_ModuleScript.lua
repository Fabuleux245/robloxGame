-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:11
-- Luau version 6, Types version 3
-- Time taken: 0.011426 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local UIBlox = require(Parent.UIBlox)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local FFlagEnablePreferredTextSizeFixGameGrid_upvr = require(Parent.SharedFlags).FFlagEnablePreferredTextSizeFixGameGrid
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local GameTileViewConfig_upvr = require(GameTile.GameTileViewConfig)
local useCursor_upvr = UIBlox.App.SelectionCursor.useCursor
local FFlagLuaAppMigrateGameTileHoverFixes_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileHoverFixes
local React_upvr = require(Parent.React)
local ZoomAnimatedFrame_upvr = require(GameTile.ZoomAnimatedFrame)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local FFlagLuaAppCollectionSelectionOrder_upvr = require(Parent.SharedFlags).FFlagLuaAppCollectionSelectionOrder
local FFlagLuaAppGameTileInteractionFeedback_upvr = require(Parent.SharedFlags).FFlagLuaAppGameTileInteractionFeedback
local FFlagLuaAppGameTileWideVideoThumbnail_upvr = require(Parent.SharedFlags).FFlagLuaAppGameTileWideVideoThumbnail
local LoadableImage_upvr = UIBlox.App.Loading.LoadableImage
local RightAlignedButtonWrapper_upvr = require(GameTile.Footer.RightAlignedButtonWrapper)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("TextTruncateSplitWord")
return function(arg1) -- Line 83, Named "GameTileView"
	--[[ Upvalues[17]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[3]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: GameTileViewConfig_upvr (readonly)
		[6]: useCursor_upvr (readonly)
		[7]: FFlagLuaAppMigrateGameTileHoverFixes_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: ZoomAnimatedFrame_upvr (readonly)
		[10]: ImageSetLabel_upvr (readonly)
		[11]: Images_upvr (readonly)
		[12]: FFlagLuaAppCollectionSelectionOrder_upvr (readonly)
		[13]: FFlagLuaAppGameTileInteractionFeedback_upvr (readonly)
		[14]: FFlagLuaAppGameTileWideVideoThumbnail_upvr (readonly)
		[15]: LoadableImage_upvr (readonly)
		[16]: RightAlignedButtonWrapper_upvr (readonly)
		[17]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 423 start (CF ANALYSIS FAILED)
	local var4_result1_2 = useDesignTokens_upvr()
	local var31
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		var31 = arg1.numLinesForTitle or 1
	else
		var31 = nil
	end
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr and FFlagLuaAppMigrateGameTile_upvr then
	else
	end
	if FFlagLuaAppMigrateGameTile_upvr then
		local useTokens_upvr_result1 = useTokens_upvr()
	end
	local var33
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		var33 = var31
	else
		var33 = nil
	end
	local var34
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		var34 = useTokens_upvr_result1
	else
		var34 = nil
	end
	local var35
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		var35 = true
	else
		var35 = nil
	end
	local var36
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr and FFlagLuaAppMigrateGameTile_upvr then
		var36 = nil
	else
		var36 = nil
	end
	local var37
	if FFlagLuaAppMigrateGameTile_upvr and useTokens_upvr_result1 and arg1.isUnifiedGameTile then
		var37 = useTokens_upvr_result1.Radius.Medium
	else
		var37 = var4_result1_2.Global.Space_100
	end
	var33 = 0
	var34 = var37
	var33 = useCursor_upvr
	var34 = UDim.new(var33, var34)
	var33 = var33(var34)
	var35 = FFlagLuaAppMigrateGameTile_upvr
	if var35 and useTokens_upvr_result1 then
		var35 = arg1.isUnifiedGameTile
		if var35 then
			var35 = useTokens_upvr_result1.Typography
			var34 = var35.TitleMedium
			-- KONSTANTWARNING: GOTO [106] #87
		end
	end
	var36 = var4_result1_2.Semantic
	var35 = var36.Typography
	var34 = var35.Subheader
	var35 = var34.FontSize
	if FFlagLuaAppMigrateGameTile_upvr and useTokens_upvr_result1 and arg1.isUnifiedGameTile then
		var36 = useTokens_upvr_result1.Color.Content.Emphasis
	else
		var36 = var4_result1_2.Semantic.Color.Text.Emphasis
	end
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		if not arg1.hoverPadding then
			-- KONSTANTWARNING: GOTO [150] #114
		end
	else
	end
	if arg1.hidePlayButton then
	else
	end
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		if arg1.isContained then
			local containmentSidePadding_2 = arg1.containmentSidePadding
			if not containmentSidePadding_2 then
				containmentSidePadding_2 = useTokens_upvr_result1.Padding.Medium
			end
		else
		end
		-- KONSTANTWARNING: GOTO [186] #140
	end
	-- KONSTANTERROR: [0] 1. Error Block 423 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [177] 134. Error Block 335 start (CF ANALYSIS FAILED)
	if arg1.isContained then
		-- KONSTANTWARNING: GOTO [186] #140
	end
	-- KONSTANTERROR: [177] 134. Error Block 335 end (CF ANALYSIS FAILED)
end