-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:05
-- Luau version 6, Types version 3
-- Time taken: 0.005024 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local UIBlox = require(Parent.UIBlox)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local FFlagEnablePreferredTextSizeFixGameGrid_upvr = require(Parent.SharedFlags).FFlagEnablePreferredTextSizeFixGameGrid
local useTextSizeOffset_upvr = UIBlox.Core.Style.useTextSizeOffset
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local getGameTileMetadataFont_upvr = require(GameTile.Footer.getGameTileMetadataFont)
local React_upvr = require(Parent.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
return function(arg1) -- Line 47, Named "GridTileIconTextFooter"
	--[[ Upvalues[8]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
		[3]: useTextSizeOffset_upvr (readonly)
		[4]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[5]: useTokens_upvr (readonly)
		[6]: getGameTileMetadataFont_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: ImageSetLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useDesignTokens_upvr_result1 = useDesignTokens_upvr()
	local var13
	if var13 then
		local useTextSizeOffset_upvr_result1 = useTextSizeOffset_upvr()
	else
	end
	var13 = nil
	if FFlagLuaAppMigrateGameTile_upvr then
		var13 = useTokens_upvr()
	end
	local var15
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		var15 = var13.Size.Size_500
	else
		var15 = useDesignTokens_upvr_result1.Global.Space_250
	end
	local var16
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		var16 = var13.Padding.Small
	else
		var16 = useDesignTokens_upvr_result1.Global.Space_75
	end
	local var17
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		var17 = var13.Color.Content.Default
	else
		var17 = useDesignTokens_upvr_result1.Semantic.Color.Text.Default
	end
	local var18
	if FFlagLuaAppMigrateGameTile_upvr and var13 then
		var18 = var13
	else
		var18 = nil
	end
	local var19
	if FFlagLuaAppMigrateGameTile_upvr and arg1.isUnifiedGameTile then
		var19 = true
	else
		var19 = nil
	end
	local var9_result1 = getGameTileMetadataFont_upvr(arg1.useLargerFont, useDesignTokens_upvr_result1, var18, var19)
	local FontSize = var9_result1.FontSize
	var18 = nil
	var19 = arg1.iconSize
	if var19 then
		var18 = arg1.iconSize
		var19 = useDesignTokens_upvr_result1.Global
		-- KONSTANTWARNING: GOTO [97] #73
	end
	var18 = FontSize / 1.26
	local var22 = var18
	var19 = React_upvr.createElement
	local tbl_3 = {}
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
	else
	end
	tbl_3.Size = UDim2.new(1, 0, 0, var15)
	tbl_3.Position = arg1.Position
	tbl_3.ClipsDescendants = false
	tbl_3.BackgroundTransparency = 1
	local tbl_4 = {}
	local tbl_2 = {}
	if arg1.iconElement then
		-- KONSTANTWARNING: GOTO [209] #153
	end
	tbl_2.Icon = React_upvr.createElement(ImageSetLabel_upvr, {
		Image = arg1.icon;
		ImageColor3 = var17.Color3;
		ImageTransparency = 0;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromOffset(var18, var18);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
	})
	tbl_4.IconSlot = React_upvr.createElement("Frame", {
		LayoutOrder = 1;
		Size = UDim2.fromOffset(var22, var22);
		ClipsDescendants = false;
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0, 0.5);
		AnchorPoint = Vector2.new(0, 0.5);
	}, tbl_2)
	local tbl = {
		LayoutOrder = 2;
		Text = arg1.text;
	}
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	else
	end
	tbl.Size = UDim2.new(1, -(var22 + var16), 0, FontSize)
	tbl.Position = UDim2.new(0, var22 + var16, 0.5, 0)
	tbl.AnchorPoint = Vector2.new(0, 0.5)
	tbl.BackgroundTransparency = 1
	tbl.TextSize = FontSize
	tbl.Font = var9_result1.Font
	tbl.TextTransparency = var17.Transparency
	tbl.TextColor3 = var17.Color3
	tbl.TextWrapped = false
	tbl.TextTruncate = Enum.TextTruncate.AtEnd
	tbl.TextXAlignment = Enum.TextXAlignment.Left
	tbl.TextYAlignment = Enum.TextYAlignment.Center
	tbl_4.Text = React_upvr.createElement("TextLabel", tbl)
	var19 = var19("Frame", tbl_3, tbl_4)
	return var19
end