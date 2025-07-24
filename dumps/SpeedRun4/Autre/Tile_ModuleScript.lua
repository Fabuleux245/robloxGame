-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:22
-- Luau version 6, Types version 3
-- Time taken: 0.021613 seconds

local Parent = script.Parent
local Parent_2 = Parent.Parent.Parent
local Parent_4 = Parent_2.Parent
local Parent_3 = Parent_4.Parent
local React_upvr = require(Parent_3.React)
local Cryo_upvr = require(Parent_3.Cryo)
local t = require(Parent_3.t)
local validateFontInfo = require(Parent_4.Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(Parent_4.Core.Style.Validator.validateTypographyInfo)
local udim_2_upvr = UDim.new(0, 10)
local any_extend_result1_upvr = React_upvr.PureComponent:extend("Tile")
any_extend_result1_upvr.validateProps = t.intersection(t.strictInterface({
	footer = t.optional(t.table);
	name = t.optional(t.string);
	nameTextColor = t.optional(t.Color3);
	nameTextTransparency = t.optional(t.number);
	nameOverThumbnail = t.optional(t.boolean);
	titleRichText = t.optional(t.boolean);
	subtitle = t.optional(t.string);
	hasVerifiedBadge = t.optional(t.boolean);
	titleTextLineCount = t.optional(t.integer);
	innerPadding = t.optional(t.number);
	titleTopPadding = t.optional(t.number);
	subtitleTopPadding = t.optional(t.number);
	footerTopPadding = t.optional(t.number);
	onActivated = t.optional(t.callback);
	thumbnail = t.optional(t.union(t.string, t.table));
	thumbnailSize = t.optional(t.UDim2);
	thumbnailFrameSize = t.optional(t.UDim2);
	thumbnailColor = t.optional(t.Color3);
	thumbnailTransparency = t.optional(t.number);
	thumbnailAspectRatio = t.optional(t.number);
	thumbnailScaleType = t.optional(t.enum(Enum.ScaleType));
	bannerText = t.optional(t.string);
	backgroundImage = t.optional(t.union(t.string, t.table));
	isSelected = t.optional(t.boolean);
	Selectable = t.optional(t.boolean);
	multiSelect = t.optional(t.boolean);
	isDisabled = t.optional(t.boolean);
	hasRoundedCorners = t.optional(t.boolean);
	titleIcon = t.optional(t.table);
	thumbnailOverlayComponents = t.optional(t.table);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	thumbnailRef = t.optional(t.table);
	textButtonRef = t.optional(t.table);
	inputBindings = t.optional(t.table);
	useMaxTitleHeight = t.optional(t.boolean);
	addSubtitleSpace = t.optional(t.boolean);
	titleFontStyle = t.optional(t.union(validateFontInfo, validateTypographyInfo));
	subtitleFontStyle = t.optional(t.union(validateFontInfo, validateTypographyInfo));
	renderTileInset = t.optional(t.callback);
	[React_upvr.Tag] = t.optional(t.string);
	cursor = t.optional(t.any);
	isCircular = t.optional(t.boolean);
	horizontalAlignment = t.optional(t.EnumItem);
	openTypeFeatures = t.optional(t.string);
	onThumbnailLoaded = t.optional(t.callback);
}), function(arg1) -- Line 173, Named "tileBannerUseValidator"
	if arg1.bannerText and arg1.footer then
		return false, "A custom footer and bannerText can't be used together"
	end
	return true
end)
any_extend_result1_upvr.defaultProps = {
	titleTextLineCount = 2;
	innerPadding = 8;
	titleTopPadding = 0;
	subtitleTopPadding = 0;
	footerTopPadding = 0;
	isSelected = false;
	multiSelect = false;
	isDisabled = false;
	hasRoundedCorners = true;
	Selectable = false;
	isCircular = false;
	horizontalAlignment = nil;
	thumbnailFrameSize = UDim2.new(1, 0, 1, 0);
	titleRichText = false;
}
function any_extend_result1_upvr.init(arg1) -- Line 200
	arg1.state = {
		tileWidth = 0;
		tileHeight = 0;
	}
	function arg1.onAbsoluteSizeChange(arg1_2) -- Line 206
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			tileWidth = arg1_2.AbsoluteSize.X;
			tileHeight = arg1_2.AbsoluteSize.Y;
		})
	end
end
local withTextSizeOffset_upvr = require(Parent_4.Core.Style.withTextSizeOffset)
local withStyle_upvr = require(Parent_4.Core.Style.withStyle)
local withSelectionCursorProvider_upvr = require(Parent_2.SelectionImage.withSelectionCursorProvider)
local Images_upvr = require(Parent_4.App.ImageSet.Images)
local GetWrappedTextWithIcon_upvr = require(Parent_4.Core.Text.GetWrappedTextWithIcon)
local GetTextSize_upvr = require(Parent_4.Core.Text.GetTextSize)
local RoactGamepad_upvr = require(Parent_3.RoactGamepad)
local Interactable_upvr = require(Parent_4.Core.Control.Interactable)
local UIBloxConfig_upvr = require(Parent_4.UIBloxConfig)
local CursorKind_upvr = require(Parent_2.SelectionImage.CursorKind)
local TileThumbnail_upvr = require(Parent.TileThumbnail)
local TileName_upvr = require(Parent.TileName)
local StyledTextLabel_upvr = require(Parent_2.Text.StyledTextLabel)
local TileBanner_upvr = require(Parent.TileBanner)
function any_extend_result1_upvr.render(arg1) -- Line 216
	--[[ Upvalues[16]:
		[1]: withTextSizeOffset_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: withSelectionCursorProvider_upvr (readonly)
		[4]: Images_upvr (readonly)
		[5]: GetWrappedTextWithIcon_upvr (readonly)
		[6]: GetTextSize_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: RoactGamepad_upvr (readonly)
		[9]: Interactable_upvr (readonly)
		[10]: UIBloxConfig_upvr (readonly)
		[11]: CursorKind_upvr (readonly)
		[12]: TileThumbnail_upvr (readonly)
		[13]: udim_2_upvr (readonly)
		[14]: TileName_upvr (readonly)
		[15]: StyledTextLabel_upvr (readonly)
		[16]: TileBanner_upvr (readonly)
	]]
	local titleTextLineCount_upvr = arg1.props.titleTextLineCount
	local innerPadding_upvr = arg1.props.innerPadding
	local titleTopPadding_upvr = arg1.props.titleTopPadding
	local addSubtitleSpace_upvr = arg1.props.addSubtitleSpace
	local useMaxTitleHeight_upvr = arg1.props.useMaxTitleHeight
	local name_upvr = arg1.props.name
	local titleIcon_upvr = arg1.props.titleIcon
	local subtitle_upvr = arg1.props.subtitle
	local footer_upvr = arg1.props.footer
	local bannerText_upvr = arg1.props.bannerText
	local isDisabled_upvr = arg1.props.isDisabled
	local onActivated_upvr = arg1.props.onActivated
	local horizontalAlignment_upvr = arg1.props.horizontalAlignment
	local thumbnailFrameSize_upvr = arg1.props.thumbnailFrameSize
	local thumbnail_upvr = arg1.props.thumbnail
	local hasRoundedCorners_upvr = arg1.props.hasRoundedCorners
	local isSelected_upvr = arg1.props.isSelected
	local multiSelect_upvr = arg1.props.multiSelect
	local thumbnailOverlayComponents_upvr = arg1.props.thumbnailOverlayComponents
	local thumbnailSize_upvr = arg1.props.thumbnailSize
	local thumbnailColor_upvr = arg1.props.thumbnailColor
	local thumbnailTransparency_upvr = arg1.props.thumbnailTransparency
	local backgroundImage_upvr = arg1.props.backgroundImage
	local subtitleTopPadding_upvr = arg1.props.subtitleTopPadding
	local hasVerifiedBadge_upvr = arg1.props.hasVerifiedBadge
	local footerTopPadding_upvr = arg1.props.footerTopPadding
	return withTextSizeOffset_upvr(function(arg1_3) -- Line 244
		--[[ Upvalues[42]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: withSelectionCursorProvider_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: titleTextLineCount_upvr (readonly)
			[5]: innerPadding_upvr (readonly)
			[6]: titleTopPadding_upvr (readonly)
			[7]: addSubtitleSpace_upvr (readonly)
			[8]: useMaxTitleHeight_upvr (readonly)
			[9]: name_upvr (readonly)
			[10]: titleIcon_upvr (readonly)
			[11]: Images_upvr (copied, readonly)
			[12]: GetWrappedTextWithIcon_upvr (copied, readonly)
			[13]: GetTextSize_upvr (copied, readonly)
			[14]: subtitle_upvr (readonly)
			[15]: footer_upvr (readonly)
			[16]: bannerText_upvr (readonly)
			[17]: React_upvr (copied, readonly)
			[18]: isDisabled_upvr (readonly)
			[19]: onActivated_upvr (readonly)
			[20]: RoactGamepad_upvr (copied, readonly)
			[21]: Interactable_upvr (copied, readonly)
			[22]: UIBloxConfig_upvr (copied, readonly)
			[23]: CursorKind_upvr (copied, readonly)
			[24]: horizontalAlignment_upvr (readonly)
			[25]: thumbnailFrameSize_upvr (readonly)
			[26]: TileThumbnail_upvr (copied, readonly)
			[27]: thumbnail_upvr (readonly)
			[28]: hasRoundedCorners_upvr (readonly)
			[29]: udim_2_upvr (copied, readonly)
			[30]: isSelected_upvr (readonly)
			[31]: multiSelect_upvr (readonly)
			[32]: thumbnailOverlayComponents_upvr (readonly)
			[33]: thumbnailSize_upvr (readonly)
			[34]: thumbnailColor_upvr (readonly)
			[35]: thumbnailTransparency_upvr (readonly)
			[36]: backgroundImage_upvr (readonly)
			[37]: subtitleTopPadding_upvr (readonly)
			[38]: TileName_upvr (copied, readonly)
			[39]: hasVerifiedBadge_upvr (readonly)
			[40]: StyledTextLabel_upvr (copied, readonly)
			[41]: footerTopPadding_upvr (readonly)
			[42]: TileBanner_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_4) -- Line 245
			--[[ Upvalues[42]:
				[1]: withSelectionCursorProvider_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: titleTextLineCount_upvr (copied, readonly)
				[4]: arg1_3 (readonly)
				[5]: innerPadding_upvr (copied, readonly)
				[6]: titleTopPadding_upvr (copied, readonly)
				[7]: addSubtitleSpace_upvr (copied, readonly)
				[8]: useMaxTitleHeight_upvr (copied, readonly)
				[9]: name_upvr (copied, readonly)
				[10]: titleIcon_upvr (copied, readonly)
				[11]: Images_upvr (copied, readonly)
				[12]: GetWrappedTextWithIcon_upvr (copied, readonly)
				[13]: GetTextSize_upvr (copied, readonly)
				[14]: subtitle_upvr (copied, readonly)
				[15]: footer_upvr (copied, readonly)
				[16]: bannerText_upvr (copied, readonly)
				[17]: React_upvr (copied, readonly)
				[18]: isDisabled_upvr (copied, readonly)
				[19]: onActivated_upvr (copied, readonly)
				[20]: RoactGamepad_upvr (copied, readonly)
				[21]: Interactable_upvr (copied, readonly)
				[22]: UIBloxConfig_upvr (copied, readonly)
				[23]: CursorKind_upvr (copied, readonly)
				[24]: horizontalAlignment_upvr (copied, readonly)
				[25]: thumbnailFrameSize_upvr (copied, readonly)
				[26]: TileThumbnail_upvr (copied, readonly)
				[27]: thumbnail_upvr (copied, readonly)
				[28]: hasRoundedCorners_upvr (copied, readonly)
				[29]: udim_2_upvr (copied, readonly)
				[30]: isSelected_upvr (copied, readonly)
				[31]: multiSelect_upvr (copied, readonly)
				[32]: thumbnailOverlayComponents_upvr (copied, readonly)
				[33]: thumbnailSize_upvr (copied, readonly)
				[34]: thumbnailColor_upvr (copied, readonly)
				[35]: thumbnailTransparency_upvr (copied, readonly)
				[36]: backgroundImage_upvr (copied, readonly)
				[37]: subtitleTopPadding_upvr (copied, readonly)
				[38]: TileName_upvr (copied, readonly)
				[39]: hasVerifiedBadge_upvr (copied, readonly)
				[40]: StyledTextLabel_upvr (copied, readonly)
				[41]: footerTopPadding_upvr (copied, readonly)
				[42]: TileBanner_upvr (copied, readonly)
			]]
			return withSelectionCursorProvider_upvr(function(arg1_5) -- Line 246
				--[[ Upvalues[42]:
					[1]: arg1_4 (readonly)
					[2]: arg1 (copied, readonly)
					[3]: titleTextLineCount_upvr (copied, readonly)
					[4]: arg1_3 (copied, readonly)
					[5]: innerPadding_upvr (copied, readonly)
					[6]: titleTopPadding_upvr (copied, readonly)
					[7]: addSubtitleSpace_upvr (copied, readonly)
					[8]: useMaxTitleHeight_upvr (copied, readonly)
					[9]: name_upvr (copied, readonly)
					[10]: titleIcon_upvr (copied, readonly)
					[11]: Images_upvr (copied, readonly)
					[12]: GetWrappedTextWithIcon_upvr (copied, readonly)
					[13]: GetTextSize_upvr (copied, readonly)
					[14]: subtitle_upvr (copied, readonly)
					[15]: footer_upvr (copied, readonly)
					[16]: bannerText_upvr (copied, readonly)
					[17]: React_upvr (copied, readonly)
					[18]: isDisabled_upvr (copied, readonly)
					[19]: onActivated_upvr (copied, readonly)
					[20]: RoactGamepad_upvr (copied, readonly)
					[21]: Interactable_upvr (copied, readonly)
					[22]: UIBloxConfig_upvr (copied, readonly)
					[23]: CursorKind_upvr (copied, readonly)
					[24]: horizontalAlignment_upvr (copied, readonly)
					[25]: thumbnailFrameSize_upvr (copied, readonly)
					[26]: TileThumbnail_upvr (copied, readonly)
					[27]: thumbnail_upvr (copied, readonly)
					[28]: hasRoundedCorners_upvr (copied, readonly)
					[29]: udim_2_upvr (copied, readonly)
					[30]: isSelected_upvr (copied, readonly)
					[31]: multiSelect_upvr (copied, readonly)
					[32]: thumbnailOverlayComponents_upvr (copied, readonly)
					[33]: thumbnailSize_upvr (copied, readonly)
					[34]: thumbnailColor_upvr (copied, readonly)
					[35]: thumbnailTransparency_upvr (copied, readonly)
					[36]: backgroundImage_upvr (copied, readonly)
					[37]: subtitleTopPadding_upvr (copied, readonly)
					[38]: TileName_upvr (copied, readonly)
					[39]: hasVerifiedBadge_upvr (copied, readonly)
					[40]: StyledTextLabel_upvr (copied, readonly)
					[41]: footerTopPadding_upvr (copied, readonly)
					[42]: TileBanner_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local Font_3 = arg1_4.Font
				local tileWidth_2 = arg1.state.tileWidth
				local titleFontStyle_2 = arg1.props.titleFontStyle
				if not titleFontStyle_2 then
					titleFontStyle_2 = Font_3.Header2
				end
				local subtitleFontStyle_2 = arg1.props.subtitleFontStyle
				if not subtitleFontStyle_2 then
					subtitleFontStyle_2 = Font_3.CaptionHeader
				end
				if titleFontStyle_2.RelativeSize then
					local _ = Font_3.BaseSize * titleFontStyle_2.RelativeSize
				else
				end
				if subtitleFontStyle_2.RelativeSize then
				else
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local ceiled_2 = math.ceil((titleFontStyle_2.FontSize + arg1_3) * titleTextLineCount_upvr)
				if addSubtitleSpace_upvr then
					local _ = Vector2.new(0, ceiled_2)
				else
					if useMaxTitleHeight_upvr then
					else
						local var104 = name_upvr or ""
						local Font_4 = titleFontStyle_2.Font
						if titleIcon_upvr then
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
							var104 = GetWrappedTextWithIcon_upvr(var104, titleFontStyle_2.FontSize, Font_4, titleIcon_upvr.ImageRectSize.X / Images_upvr.ImagesResolutionScale, 4)
						end
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						local GetTextSize_upvr_result1_2 = GetTextSize_upvr(var104, titleFontStyle_2.FontSize, Font_4, Vector2.new(tileWidth_2, ceiled_2))
					end
					if subtitle_upvr ~= nil and subtitle_upvr ~= "" then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					end
				end
				local var107 = true
				if footer_upvr == nil then
					if bannerText_upvr == nil then
						var107 = false
					else
						var107 = true
					end
				end
				local renderTileInset = arg1.props.renderTileInset
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if arg1.props.nameOverThumbnail then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				end
				local var110
				if not arg1.props.inputBindings then
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var110.Activate = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonA, onActivated_upvr)
						var110 = {}
						return var110
					end
					if isDisabled_upvr or not onActivated_upvr or not INLINED_2() then
						var110 = nil
					end
				end
				local module_5 = {
					Size = UDim2.new(1, 0, 1, 0);
					BackgroundTransparency = 1;
					Selectable = arg1.props.Selectable;
				}
				if UIBloxConfig_upvr.refactorInteractable then
					-- KONSTANTWARNING: GOTO [305] #233
				end
				function module_5.onStateChanged() -- Line 340
				end
				if isDisabled_upvr then
					-- KONSTANTWARNING: GOTO [317] #242
				end
				module_5[React_upvr.Event.Activated] = onActivated_upvr
				module_5[React_upvr.Change.AbsoluteSize] = arg1.onAbsoluteSizeChange
				module_5.ref = arg1.props.textButtonRef
				if arg1.props.cursor then
					-- KONSTANTWARNING: GOTO [351] #265
				end
				module_5.SelectionImageObject = arg1_5(CursorKind_upvr.RoundedRect)
				local module_3 = {}
				local tbl_6 = {
					FillDirection = Enum.FillDirection.Vertical;
					SortOrder = Enum.SortOrder.LayoutOrder;
				}
				local udim = UDim.new(0, innerPadding_upvr)
				tbl_6.Padding = udim
				if not arg1.props.nameOverThumbnail then
					udim = horizontalAlignment_upvr
				else
					udim = nil
				end
				tbl_6.HorizontalAlignment = udim
				module_3.UIListLayout = React_upvr.createElement("UIListLayout", tbl_6)
				local tbl_20 = {
					Size = thumbnailFrameSize_upvr;
					SizeConstraint = Enum.SizeConstraint.RelativeXX;
					BackgroundTransparency = 1;
					LayoutOrder = 1;
					NextSelectionLeft = arg1.props.NextSelectionLeft;
					NextSelectionRight = arg1.props.NextSelectionRight;
					NextSelectionUp = arg1.props.NextSelectionUp;
					NextSelectionDown = arg1.props.NextSelectionDown;
					ref = arg1.props.thumbnailRef;
					[React_upvr.Tag] = arg1.props[React_upvr.Tag];
				}
				if arg1.props.cursor then
					-- KONSTANTWARNING: GOTO [474] #344
				end
				tbl_20.SelectionImageObject = arg1_5(CursorKind_upvr.RoundedRectNoInset)
				tbl_20.inputBindings = var110
				local tbl_21 = {}
				local tbl_14 = {
					Image = thumbnail_upvr;
				}
				local var119 = hasRoundedCorners_upvr
				tbl_14.hasRoundedCorners = var119
				if arg1.props.isCircular then
					var119 = UDim.new(0.5, 0)
				else
					var119 = udim_2_upvr
				end
				tbl_14.cornerRadius = var119
				tbl_14.isSelected = isSelected_upvr
				tbl_14.multiSelect = multiSelect_upvr
				tbl_14.overlayComponents = thumbnailOverlayComponents_upvr
				tbl_14.imageSize = thumbnailSize_upvr
				tbl_14.imageColor = thumbnailColor_upvr
				tbl_14.imageTransparency = thumbnailTransparency_upvr
				tbl_14.backgroundImage = backgroundImage_upvr
				tbl_14.scaleType = arg1.props.thumbnailScaleType
				tbl_14.onThumbnailLoaded = arg1.props.onThumbnailLoaded
				tbl_21.Image = React_upvr.createElement(TileThumbnail_upvr, tbl_14)
				if not renderTileInset or not renderTileInset() then
				end
				tbl_21.TileInset = nil
				if arg1.props.thumbnailAspectRatio ~= nil then
					local tbl_7 = {
						AspectRatio = arg1.props.thumbnailAspectRatio;
						AspectType = Enum.AspectType.ScaleWithParentSize;
					}
				else
				end
				tbl_21.UIAspectRatioConstraint = nil
				module_3.Thumbnail = React_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, tbl_20, tbl_21)
				local tbl_18 = {
					TitleTopPadding = React_upvr.createElement("UIPadding", {
						PaddingTop = UDim.new(0, titleTopPadding_upvr);
					});
					UIListLayout = React_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical;
						SortOrder = Enum.SortOrder.LayoutOrder;
						Padding = UDim.new(0, subtitleTopPadding_upvr);
						HorizontalAlignment = horizontalAlignment_upvr;
					});
					NameOverThumbnailPadding = React_upvr.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 10);
					});
				}
				if 0 < titleTextLineCount_upvr then
					if 0 < tileWidth_2 then
					end
				end
				tbl_18.Name = React_upvr.createElement(TileName_upvr, {
					titleIcon = titleIcon_upvr;
					name = name_upvr;
					nameTextColor = arg1.props.nameTextColor;
					nameTextTransparency = arg1.props.nameTextTransparency;
					hasVerifiedBadge = hasVerifiedBadge_upvr;
					maxHeight = ceiled_2;
					maxWidth = tileWidth_2;
					LayoutOrder = 1;
					useMaxHeight = useMaxTitleHeight_upvr;
					titleFontStyle = titleFontStyle_2;
					richText = arg1.props.titleRichText;
					horizontalAlignment = horizontalAlignment_upvr;
				})
				local var126 = false
				if subtitle_upvr ~= "" then
					var126 = false
					if subtitle_upvr ~= nil then
						var126 = React_upvr.createElement
						local tbl = {}
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						tbl.size = UDim2.new(0, 0, 0, math.ceil(subtitleFontStyle_2.FontSize) + arg1_3)
						tbl.automaticSize = Enum.AutomaticSize.X
						tbl.text = subtitle_upvr
						tbl.colorStyle = arg1_4.Theme.TextDefault
						tbl.fontStyle = subtitleFontStyle_2
						tbl.openTypeFeatures = arg1.props.openTypeFeatures
						tbl.layoutOrder = 2
						tbl.fluidSizing = false
						tbl.textTruncate = Enum.TextTruncate.AtEnd
						tbl.richText = false
						tbl.lineHeight = 1
						var126 = var126(StyledTextLabel_upvr, tbl)
					end
				end
				tbl_18.Subtitle = var126
				module_3.TitleArea = React_upvr.createElement("Frame", {
					Size = UDim2.new(0, tileWidth_2 - 10, 0, -(Vector2.new(GetTextSize_upvr_result1_2.X, math.min(GetTextSize_upvr_result1_2.Y, ceiled_2)).Y + 20));
					BackgroundTransparency = 1;
					LayoutOrder = 2;
				}, tbl_18)
				local var128 = var107
				if var128 then
					var128 = React_upvr.createElement
					local tbl_23 = {
						FooterTopPadding = React_upvr.createElement("UIPadding", {
							PaddingTop = UDim.new(0, footerTopPadding_upvr);
						});
					}
					local var132 = bannerText_upvr
					if var132 then
						var132 = React_upvr.createElement
						var132 = var132(TileBanner_upvr, {
							bannerText = bannerText_upvr;
						})
					end
					tbl_23.Banner = var132
					var132 = not bannerText_upvr
					local var134 = var132
					if var134 then
						var134 = footer_upvr
					end
					tbl_23.Footer = var134
					var128 = var128("Frame", {
						Size = UDim2.new(1, 0, 0, math.max(0, (arg1.state.tileHeight - tileWidth_2 / (arg1.props.thumbnailAspectRatio or 1) - innerPadding_upvr - ceiled_2 - innerPadding_upvr - titleTopPadding_upvr - math.ceil(subtitleFontStyle_2.FontSize) + arg1_3) - (math.ceil(subtitleFontStyle_2.FontSize) + arg1_3)));
						BackgroundTransparency = 1;
						LayoutOrder = 3;
					}, tbl_23)
				end
				module_3.FooterContainer = var128
				return React_upvr.createElement(Interactable_upvr, module_5, module_3)
			end)
		end)
	end)
end
local useCursor_upvr = require(Parent_4.App.SelectionCursor.useCursor)
local function var135_upvr(arg1) -- Line 455
	--[[ Upvalues[5]:
		[1]: useCursor_upvr (readonly)
		[2]: udim_2_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: any_extend_result1_upvr (readonly)
	]]
	return React_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join({
		cursor = useCursor_upvr(udim_2_upvr);
	}, arg1))
end
return React_upvr.forwardRef(function(arg1, arg2) -- Line 463
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: var135_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.thumbnailRef = arg2
	return React_upvr.createElement(var135_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)