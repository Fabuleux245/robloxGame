-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:07
-- Luau version 6, Types version 3
-- Time taken: 0.002929 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local FFlagEnablePreferredTextSizeFixGameGrid_upvr = require(Parent.SharedFlags).FFlagEnablePreferredTextSizeFixGameGrid
local useTextSizeOffset_upvr = require(Parent.UIBlox).Core.Style.useTextSizeOffset
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local getGameTileMetadataFont_upvr = require(GameTile.Footer.getGameTileMetadataFont)
local React_upvr = require(Parent.React)
return function(arg1) -- Line 38, Named "GridTileTextFooter"
	--[[ Upvalues[7]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
		[3]: useTextSizeOffset_upvr (readonly)
		[4]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[5]: useTokens_upvr (readonly)
		[6]: getGameTileMetadataFont_upvr (readonly)
		[7]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var3_result1 = useDesignTokens_upvr()
	local var11
	if var11 then
		local useTextSizeOffset_upvr_result1 = useTextSizeOffset_upvr()
	else
	end
	var11 = nil
	if FFlagLuaAppMigrateGameTile_upvr then
		var11 = useTokens_upvr()
	end
	local var13
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		var13 = var11.Size.Size_500
	else
		var13 = var3_result1.Global.Space_250
	end
	local var14
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		var14 = var11.Color.Content.Default
	else
		var14 = var3_result1.Semantic.Color.Text.Default
	end
	local var15
	if FFlagLuaAppMigrateGameTile_upvr and var11 then
		var15 = var11
	else
		var15 = nil
	end
	local var16
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		var16 = true
	else
		var16 = nil
	end
	local getGameTileMetadataFont_upvr_result1 = getGameTileMetadataFont_upvr(arg1.useLargerFont, var3_result1, var15, var16)
	var15 = {}
	var16 = arg1.LayoutOrder
	var15.LayoutOrder = var16
	var16 = UDim2.new
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
		-- KONSTANTWARNING: GOTO [86] #68
	end
	var16 = var16(1, 0, 0, var13)
	var15.Size = var16
	var16 = arg1.Position
	var15.Position = var16
	var16 = arg1.AnchorPoint
	var15.AnchorPoint = var16
	var16 = false
	var15.ClipsDescendants = var16
	var16 = 1
	var15.BackgroundTransparency = var16
	var16 = {}
	local tbl = {
		Text = arg1.text;
	}
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	else
	end
	tbl.Size = UDim2.new(1, 0, 0, getGameTileMetadataFont_upvr_result1.FontSize)
	tbl.Position = UDim2.new(0, 0, 0.5, 0)
	tbl.AnchorPoint = Vector2.new(0, 0.5)
	tbl.BackgroundTransparency = 1
	tbl.TextSize = getGameTileMetadataFont_upvr_result1.FontSize
	tbl.Font = getGameTileMetadataFont_upvr_result1.Font
	tbl.TextTransparency = var14.Transparency
	tbl.TextColor3 = var14.Color3
	tbl.TextWrapped = false
	tbl.TextTruncate = Enum.TextTruncate.AtEnd
	tbl.TextXAlignment = Enum.TextXAlignment.Left
	tbl.TextYAlignment = Enum.TextYAlignment.Center
	var16.Text = React_upvr.createElement("TextLabel", tbl)
	return React_upvr.createElement("Frame", var15, var16)
end