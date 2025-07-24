-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:06
-- Luau version 6, Types version 3
-- Time taken: 0.001804 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local UIBlox = require(Parent.UIBlox)
local Responsive_upvr = require(Parent.Responsive)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local GridTileIconTextFooter_upvr = require(GameTile.Footer.GridTileIconTextFooter)
local FFlagLuaAppMigrateGameTileFixConsoleMetadataText_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileFixConsoleMetadataText
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local SponsoredTooltipHover_upvr = require(Parent.Ads).SponsoredTooltipHover
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local Images_upvr = UIBlox.App.ImageSet.Images
function GridTileSponsoredFooter(arg1) -- Line 22
	--[[ Upvalues[9]:
		[1]: useLocalization_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: GridTileIconTextFooter_upvr (readonly)
		[4]: FFlagLuaAppMigrateGameTileFixConsoleMetadataText_upvr (readonly)
		[5]: usePreferredInput_upvr (readonly)
		[6]: Responsive_upvr (readonly)
		[7]: SponsoredTooltipHover_upvr (readonly)
		[8]: TooltipOrientation_upvr (readonly)
		[9]: Images_upvr (readonly)
	]]
	local var14
	if arg1.useLargerFont then
		var14 = 24
	else
		var14 = 20
	end
	local var15
	local module = {}
	if FFlagLuaAppMigrateGameTileFixConsoleMetadataText_upvr and usePreferredInput_upvr() == Responsive_upvr.Input.Directional then
		var15 = nil
	else
		var15 = React_upvr.createElement
		var15 = var15(SponsoredTooltipHover_upvr, {
			tooltipOrientation = TooltipOrientation_upvr.Bottom;
			onActivateTooltip = arg1.onActivateSponsoredTooltip;
			size = UDim2.fromOffset(var14, var14);
			position = UDim2.fromScale(0.5, 0.5);
			anchorPoint = Vector2.new(0.5, 0.5);
		})
	end
	module.iconElement = var15
	if FFlagLuaAppMigrateGameTileFixConsoleMetadataText_upvr and usePreferredInput_upvr() == Responsive_upvr.Input.Directional then
		var15 = Images_upvr["icons/actions/info"]
	else
		var15 = nil
	end
	module.icon = var15
	var15 = useLocalization_upvr({
		sponsoredText = "Feature.GamePage.Label.Sponsored";
	}).sponsoredText
	module.text = var15
	if arg1.useLargerFont then
		var15 = 24
	else
		var15 = 20
	end
	module.iconSize = var15
	var15 = arg1.useLargerFont
	module.useLargerFont = var15
	return React_upvr.createElement(GridTileIconTextFooter_upvr, module)
end
return GridTileSponsoredFooter