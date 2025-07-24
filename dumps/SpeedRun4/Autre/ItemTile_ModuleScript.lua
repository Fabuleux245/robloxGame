-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:32
-- Luau version 6, Types version 3
-- Time taken: 0.004834 seconds

local Parent_4 = script.Parent
local Parent_2 = Parent_4.Parent
local Parent = Parent_2.Parent.Parent
local Parent_3 = Parent.Parent
local React_upvr = require(Parent_3.React)
local t = require(Parent_3.t)
local ItemTileEnums_upvr = require(Parent_2.Enum.ItemTileEnums)
local any_extend_result1_upvr = React_upvr.PureComponent:extend("ItemTile")
local function tileBannerUseValidator_upvr(arg1) -- Line 22, Named "tileBannerUseValidator"
	if arg1.bannerText and arg1.footer then
		return false, "A custom footer and bannerText can't be used together"
	end
	return true
end
any_extend_result1_upvr.validateProps = t.strictInterface({
	footer = t.optional(t.table);
	name = t.optional(t.string);
	nameTextColor = t.optional(t.Color3);
	nameTextTransparency = t.optional(t.number);
	subtitle = t.optional(t.string);
	titleTextLineCount = t.optional(t.integer);
	innerPadding = t.optional(t.integer);
	titleTopPadding = t.optional(t.integer);
	subtitleTopPadding = t.optional(t.integer);
	footerTopPadding = t.optional(t.integer);
	onActivated = t.optional(t.callback);
	thumbnail = t.optional(t.string);
	backgroundImage = t.optional(t.union(t.string, t.table));
	bannerText = t.optional(t.string);
	itemIconType = t.optional(ItemTileEnums_upvr.ItemIconType.isEnumValue);
	isSelected = t.optional(t.boolean);
	Selectable = t.optional(t.boolean);
	multiSelect = t.optional(t.boolean);
	isPremium = t.optional(t.boolean);
	restrictionTypes = t.optional(t.map(ItemTileEnums_upvr.Restriction.isEnumValue, t.boolean));
	restrictionInfo = t.optional(t.table);
	hasRoundedCorners = t.optional(t.boolean);
	statusText = t.optional(t.string);
	statusStyle = t.optional(ItemTileEnums_upvr.StatusStyle.isEnumValue);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	thumbnailRef = t.optional(t.table);
	textButtonRef = t.optional(t.table);
	inputBindings = t.optional(t.table);
	useMaxTitleHeight = t.optional(t.boolean);
	addSubtitleSpace = t.optional(t.boolean);
	titleFontStyle = t.optional(t.table);
	renderTileInset = t.optional(t.callback);
	hasVerifiedBadge = t.optional(t.boolean);
	[React_upvr.Tag] = t.optional(t.string);
	aspectRatio = t.optional(t.number);
	scaleType = t.optional(t.enum(Enum.ScaleType));
	onThumbnailLoaded = t.optional(t.callback);
})
any_extend_result1_upvr.defaultProps = {
	titleTextLineCount = 2;
	innerPadding = 8;
	isSelected = false;
	multiSelect = false;
	isPremium = false;
	hasRoundedCorners = true;
	Selectable = false;
}
local function _(arg1) -- Line 151, Named "isIconStatusStyle"
	--[[ Upvalues[1]:
		[1]: ItemTileEnums_upvr (readonly)
	]]
	local var11 = true
	if arg1 ~= ItemTileEnums_upvr.StatusStyle.PendingIcon then
		if arg1 ~= ItemTileEnums_upvr.StatusStyle.AlertIcon then
			var11 = false
		else
			var11 = true
		end
	end
	return var11
end
local ItemIcon_upvr = require(Parent_4.ItemIcon)
local ItemRestrictionStatus_upvr = require(Parent_4.ItemRestrictionStatus)
local ItemTileStatus_upvr = require(Parent_4.ItemTileStatus)
local ItemTileStatusIcon_upvr = require(Parent_4.ItemTileStatusIcon)
local Tile_upvr = require(Parent_2.BaseTile.Tile)
local Images_upvr = require(Parent.App.ImageSet.Images)
function any_extend_result1_upvr.render(arg1) -- Line 155
	--[[ Upvalues[9]:
		[1]: tileBannerUseValidator_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ItemIcon_upvr (readonly)
		[4]: ItemRestrictionStatus_upvr (readonly)
		[5]: ItemTileStatus_upvr (readonly)
		[6]: ItemTileEnums_upvr (readonly)
		[7]: ItemTileStatusIcon_upvr (readonly)
		[8]: Tile_upvr (readonly)
		[9]: Images_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	assert(tileBannerUseValidator_upvr(arg1.props))
	local itemIconType = arg1.props.itemIconType
	local restrictionTypes = arg1.props.restrictionTypes
	local statusStyle = arg1.props.statusStyle
	local statusText = arg1.props.statusText
	local tbl = {}
	local var23
	if itemIconType then
		var23 = true
		tbl.ItemIconType = React_upvr.createElement(ItemIcon_upvr, {
			itemIconType = itemIconType;
		})
	end
	if restrictionTypes then
		var23 = true
		tbl.RestrictionStatus = React_upvr.createElement(ItemRestrictionStatus_upvr, {
			restrictionInfo = arg1.props.restrictionInfo;
			restrictionTypes = restrictionTypes;
		})
	end
	if statusText then
		var23 = true
		tbl.Status = React_upvr.createElement(ItemTileStatus_upvr, {
			statusStyle = statusStyle;
			statusText = statusText;
		})
	end
	local var27 = true
	if statusStyle ~= ItemTileEnums_upvr.StatusStyle.PendingIcon then
		if statusStyle ~= ItemTileEnums_upvr.StatusStyle.AlertIcon then
			var27 = false
		else
			var27 = true
		end
	end
	if var27 then
		var23 = true
		tbl.Status = React_upvr.createElement(ItemTileStatusIcon_upvr, {
			statusStyle = statusStyle;
		})
	end
	local module = {
		bannerText = arg1.props.bannerText;
		footer = arg1.props.footer;
		hasRoundedCorners = arg1.props.hasRoundedCorners;
		innerPadding = arg1.props.innerPadding;
		isSelected = arg1.props.isSelected;
		Selectable = arg1.props.Selectable;
		multiSelect = arg1.props.multiSelect;
		name = arg1.props.name;
		nameTextColor = arg1.props.nameTextColor;
		nameTextTransparency = arg1.props.nameTextTransparency;
		subtitle = arg1.props.subtitle;
		titleTopPadding = arg1.props.titleTopPadding;
		subtitleTopPadding = arg1.props.subtitleTopPadding;
		footerTopPadding = arg1.props.footerTopPadding;
		onActivated = arg1.props.onActivated;
		thumbnail = arg1.props.thumbnail;
		backgroundImage = arg1.props.backgroundImage;
	}
	if not var23 or not tbl then
	end
	module.thumbnailOverlayComponents = nil
	if not arg1.props.isPremium or not Images_upvr["icons/status/premium_small"] then
	end
	module.titleIcon = nil
	module.titleTextLineCount = arg1.props.titleTextLineCount
	module.useMaxTitleHeight = arg1.props.useMaxTitleHeight
	module.addSubtitleSpace = arg1.props.addSubtitleSpace
	module.titleFontStyle = arg1.props.titleFontStyle
	module.renderTileInset = arg1.props.renderTileInset
	module.thumbnailAspectRatio = arg1.props.aspectRatio
	module.thumbnailScaleType = arg1.props.scaleType
	module.hasVerifiedBadge = arg1.props.hasVerifiedBadge
	module.NextSelectionLeft = arg1.props.NextSelectionLeft
	module.NextSelectionRight = arg1.props.NextSelectionRight
	module.NextSelectionUp = arg1.props.NextSelectionUp
	module.NextSelectionDown = arg1.props.NextSelectionDown
	module.textButtonRef = arg1.props.textButtonRef
	module.inputBindings = arg1.props.inputBindings
	module.ref = arg1.props.thumbnailRef
	module[React_upvr.Tag] = arg1.props[React_upvr.Tag]
	module.onThumbnailLoaded = arg1.props.onThumbnailLoaded
	return React_upvr.createElement(Tile_upvr, module)
end
local Cryo_upvr = require(Parent_3.Cryo)
return React_upvr.forwardRef(function(arg1, arg2) -- Line 265
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_2 = {}
	module_2.thumbnailRef = arg2
	return React_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_2))
end)