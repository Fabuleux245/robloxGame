-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:01
-- Luau version 6, Types version 3
-- Time taken: 0.007664 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local UIBlox = require(Parent.UIBlox)
local FFlagEnablePreferredTextSizeFixGameGrid_upvr = require(Parent.SharedFlags).FFlagEnablePreferredTextSizeFixGameGrid
local ArgCheck_upvr = require(Parent.ArgCheck)
local usePlayerCountText_upvr = require(GameTile.Footer.usePlayerCountText)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local SponsoredTooltipHover_upvr = require(Parent.Ads).SponsoredTooltipHover
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local udim2_upvr = UDim2.fromScale(1, 1)
local CoPlayFooter_upvr_2 = UIBlox.App.Tile.ExperienceTileMetadata.CoPlayFooter
local Colors_upvr = require(Parent.Style).Colors
local CoPlayFooter_upvr = require(GameTile.Footer.CoPlayFooter)
local TextFooter_upvr = UIBlox.App.Tile.ExperienceTileMetadata.TextFooter
local SocialProofFooter_upvr = UIBlox.App.Tile.ExperienceTileMetadata.SocialProofFooter
local StatGroup_upvr = UIBlox.App.Indicator.StatGroup
return function(arg1) -- Line 27
	--[[ Upvalues[17]:
		[1]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
		[2]: ArgCheck_upvr (readonly)
		[3]: usePlayerCountText_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useDesignTokens_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: StyledTextLabel_upvr (readonly)
		[9]: SponsoredTooltipHover_upvr (readonly)
		[10]: TooltipOrientation_upvr (readonly)
		[11]: udim2_upvr (readonly)
		[12]: CoPlayFooter_upvr_2 (readonly)
		[13]: Colors_upvr (readonly)
		[14]: CoPlayFooter_upvr (readonly)
		[15]: TextFooter_upvr (readonly)
		[16]: SocialProofFooter_upvr (readonly)
		[17]: StatGroup_upvr (readonly)
	]]
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr and arg1.automaticSize then
		ArgCheck_upvr.isNotNil(arg1.size, "If props.automaticSize is defined, props.size should also be defined.  Otherwise size falls back to a 1, 1 scale for this component.")
	end
	local isSponsored = arg1.isSponsored
	if isSponsored then
		isSponsored = arg1.isShowSponsoredLabel
	end
	local var23 = arg1.rating or ""
	local coPlayFriends = arg1.coPlayFriends
	local useExperienceTileMetadata = arg1.useExperienceTileMetadata
	local onActivateSponsoredTooltip = arg1.onActivateSponsoredTooltip
	local var7_result1 = usePlayerCountText_upvr(arg1.playingCount or 0)
	local var8_result1 = useStyle_upvr()
	local Font = var8_result1.Font
	local Theme = var8_result1.Theme
	local Global = useDesignTokens_upvr().Global
	local tbl_6 = {
		sponsoredText = "Feature.GamePage.Label.Sponsored";
		notPlayableText = "Feature.ExperienceDetails.Label.NotPlayable";
	}
	local var33 = arg1.ageRatingTextLabel or nil
	tbl_6.ageRatingText = var33
	if useExperienceTileMetadata then
		var33 = "CommonUI.Features.Label.Friends"
	else
		var33 = nil
	end
	tbl_6.friendsText = var33
	local useLocalization_upvr_result1 = useLocalization_upvr(tbl_6)
	if not arg1.isStatsOnly then
		if isSponsored then
			if useExperienceTileMetadata then
				local tbl_5 = {
					Layout = React_upvr.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder;
						FillDirection = Enum.FillDirection.Horizontal;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						Padding = UDim.new(0, 4);
					});
					Text = React_upvr.createElement("TextLabel", {
						Size = UDim2.new(0, 0, 1, 0);
						AutomaticSize = Enum.AutomaticSize.X;
						BackgroundTransparency = 1;
						BorderSizePixel = 0;
						Text = useLocalization_upvr_result1.sponsoredText;
						TextXAlignment = Enum.TextXAlignment.Center;
						TextYAlignment = Enum.TextYAlignment.Center;
						Font = var8_result1.Font.CaptionHeader.Font;
						TextSize = var8_result1.Font.BaseSize * var8_result1.Font.CaptionHeader.RelativeSize;
						TextColor3 = var8_result1.Tokens.Semantic.Color.Text.Emphasis.Color3;
						TextTransparency = var8_result1.Tokens.Semantic.Color.Text.Emphasis.Transparency;
						LayoutOrder = 1;
					});
					SponsoredTooltip = React_upvr.createElement(SponsoredTooltipHover_upvr, {
						tooltipOrientation = TooltipOrientation_upvr.Bottom;
						onActivateTooltip = onActivateSponsoredTooltip;
						size = UDim2.new(0, 16, 0, 16);
						color = var8_result1.Tokens.Semantic.Color.Text.Emphasis.Color3;
						layoutOrder = 2;
					});
				}
				return React_upvr.createElement("Frame", {
					Size = UDim2.fromScale(1, 1);
					BackgroundColor3 = var8_result1.Tokens.Semantic.Color.Ui.Default.Color3;
					BackgroundTransparency = var8_result1.Tokens.Semantic.Color.Ui.Default.Transparency;
					BorderSizePixel = 0;
				}, tbl_5, {
					UICorner = React_upvr.createElement("UICorner", {
						CornerRadius = UDim.new(0, var8_result1.Tokens.Semantic.Radius.Small);
					});
				})
			end
			local module_6 = {}
			tbl_5 = arg1.size
			local var48 = tbl_5
			if not var48 then
				var48 = udim2_upvr
			end
			module_6.Size = var48
			module_6.Position = arg1.position
			module_6.AnchorPoint = arg1.anchorPoint
			module_6.LayoutOrder = arg1.layoutOrder
			module_6.BackgroundTransparency = Theme.UIDefault.Transparency
			local Color = Theme.UIDefault.Color
			module_6.BackgroundColor3 = Color
			if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
				Color = arg1.automaticSize
			else
				Color = nil
			end
			module_6.AutomaticSize = Color
			return React_upvr.createElement("Frame", module_6, {
				UICorner = React_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(0, 4);
				});
				SponsoredLabel = React_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0);
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
				}, {
					Layout = React_upvr.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder;
						FillDirection = Enum.FillDirection.Horizontal;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						Padding = UDim.new(0, 4);
					});
					SponsoredText = React_upvr.createElement(StyledTextLabel_upvr, {
						colorStyle = Theme.TextEmphasis;
						fontStyle = Font.CaptionHeader;
						textXAlignment = Enum.TextXAlignment.Center;
						textYAlignment = Enum.TextYAlignment.Center;
						automaticSize = Enum.AutomaticSize.X;
						size = UDim2.new(0, 0, 1, 0);
						lineHeight = 1;
						text = useLocalization_upvr_result1.sponsoredText;
						textTruncate = Enum.TextTruncate.AtEnd;
						richText = false;
						layoutOrder = 1;
					});
					SponsoredTooltip = React_upvr.createElement(SponsoredTooltipHover_upvr, {
						tooltipOrientation = TooltipOrientation_upvr.Bottom;
						onActivateTooltip = onActivateSponsoredTooltip;
						size = UDim2.new(0, 16, 0, 16);
						color = Theme.TextEmphasis.Color;
						layoutOrder = 2;
					});
				});
			})
		end
		if coPlayFriends and next(coPlayFriends) then
			if useExperienceTileMetadata then
				local module_2 = {
					users = coPlayFriends;
					labelText = useLocalization_upvr_result1.friendsText;
					showEmphasisBorder = true;
					faceGroupCount = 2;
				}
				local tbl_2 = {
					faceWidth = Global.Size_250;
					faceHeight = Global.Size_250;
					faceGroupGap = -Global.Space_75;
					containerGap = Global.Space_50;
					badgeBorderWidth = 3;
					badgeHeight = Global.Size_250;
					fontStyle = var8_result1.Font.CaptionHeader;
					badgeSpacingLeading = Global.Space_50;
					badgeSpacingTrailing = Global.Space_50;
					badgeBackgroundColor = {
						Color = Colors_upvr.Smoke;
						Transparency = 0;
					};
				}
				local tbl_4 = {
					Color = Colors_upvr.White;
					Transparency = 0;
				}
				tbl_2.badgeContentColor = tbl_4
				module_2.styleProps = tbl_2
				return React_upvr.createElement(CoPlayFooter_upvr_2, module_2)
			end
			local module_5 = {}
			tbl_4 = arg1.size
			local var58 = tbl_4
			if not var58 then
				var58 = udim2_upvr
			end
			module_5.Size = var58
			module_5.Position = arg1.position
			module_5.AnchorPoint = arg1.anchorPoint
			module_5.LayoutOrder = arg1.layoutOrder
			local var59 = 1
			module_5.BackgroundTransparency = var59
			if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
				var59 = arg1.automaticSize
			else
				var59 = nil
			end
			module_5.AutomaticSize = var59
			local tbl = {
				CoPlayFooter = React_upvr.createElement(CoPlayFooter_upvr, {
					friends = coPlayFriends;
				});
			}
			do
				return React_upvr.createElement("Frame", module_5, tbl)
			end
			local var61
		end
		if arg1.showAgeRating then
			if arg1.localizedAgeRatingTextLabel then
				var61 = arg1.localizedAgeRatingTextLabel
			else
				var61 = useLocalization_upvr_result1.ageRatingText
			end
			if useExperienceTileMetadata then
				return React_upvr.createElement(TextFooter_upvr, {
					text = var61;
				})
			end
			local module = {}
			tbl = arg1.size
			local var64 = tbl
			if not var64 then
				var64 = udim2_upvr
			end
			module.Size = var64
			module.Position = arg1.position
			module.AnchorPoint = arg1.anchorPoint
			module.LayoutOrder = arg1.layoutOrder
			local var65 = 1
			module.BackgroundTransparency = var65
			if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
				var65 = arg1.automaticSize
			else
				var65 = nil
			end
			module.AutomaticSize = var65
			return React_upvr.createElement("Frame", module, {
				UIPadding = React_upvr.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 2);
					PaddingRight = UDim.new(0, 0);
					PaddingBottom = UDim.new(0, 2);
					PaddingLeft = UDim.new(0, 0);
				});
				AgeRatingLabel = React_upvr.createElement(StyledTextLabel_upvr, {
					colorStyle = Theme.TextEmphasis;
					fontStyle = Font.CaptionHeader;
					textXAlignment = Enum.TextXAlignment.Left;
					textYAlignment = Enum.TextYAlignment.Center;
					size = UDim2.new(1, 0, 2, 0);
					lineHeight = 1;
					text = var61;
					textTruncate = Enum.TextTruncate.AtEnd;
					richText = false;
				});
			})
		end
		var61 = arg1.showFriendActivity
		if var61 and not useExperienceTileMetadata then
			var61 = Font.Body.Font
			local module_3 = {}
			local size_2 = arg1.size
			if not size_2 then
				size_2 = udim2_upvr
			end
			module_3.Size = size_2
			module_3.TextColor3 = Theme.TextMuted.Color
			module_3.Font = var61
			module_3.TextXAlignment = Enum.TextXAlignment.Left
			module_3.TextYAlignment = Enum.TextYAlignment.Center
			module_3.Text = arg1.friendActivityTitle
			module_3.TextTruncate = Enum.TextTruncate.AtEnd
			module_3.TextSize = Font.BaseSize * Font.Body.RelativeSize
			module_3.TextTransparency = Theme.TextMuted.Transparency
			module_3.BackgroundTransparency = 1
			return React_upvr.createElement("TextLabel", module_3)
		end
		if arg1.isPlayable == false and not arg1.requiresPurchase then
			if useExperienceTileMetadata then
				var61 = React_upvr.createElement
				var61 = var61(TextFooter_upvr, {
					text = useLocalization_upvr_result1.notPlayableText;
				})
				return var61
			end
			var61 = React_upvr.createElement
			local tbl_3 = {}
			local size = arg1.size
			if not size then
				size = udim2_upvr
			end
			tbl_3.Size = size
			tbl_3.Position = arg1.position
			tbl_3.AnchorPoint = arg1.anchorPoint
			tbl_3.LayoutOrder = arg1.layoutOrder
			local var74 = 1
			tbl_3.BackgroundTransparency = var74
			if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
				var74 = arg1.automaticSize
			else
				var74 = nil
			end
			tbl_3.AutomaticSize = var74
			var61 = var61("Frame", tbl_3, {
				UICorner = React_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(0, 4);
				});
				PlayabilityLabel = React_upvr.createElement(StyledTextLabel_upvr, {
					colorStyle = Theme.TextMuted;
					fontStyle = Font.CaptionHeader;
					textXAlignment = Enum.TextXAlignment.Left;
					textYAlignment = Enum.TextYAlignment.Center;
					size = UDim2.new(1, 0, 1, 0);
					lineHeight = 1;
					text = useLocalization_upvr_result1.notPlayableText;
					textTruncate = Enum.TextTruncate.AtEnd;
					richText = false;
				});
			})
			return var61
		end
	end
	if useExperienceTileMetadata then
		return React_upvr.createElement(SocialProofFooter_upvr, {
			ratingText = var23;
			playingText = var7_result1;
		})
	end
	local module_4 = {}
	local size_3 = arg1.size
	if not size_3 then
		size_3 = udim2_upvr
	end
	module_4.Size = size_3
	module_4.Position = arg1.position
	module_4.AnchorPoint = arg1.anchorPoint
	module_4.LayoutOrder = arg1.layoutOrder
	local var82 = 1
	module_4.BackgroundTransparency = var82
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
		var82 = arg1.automaticSize
	else
		var82 = nil
	end
	module_4.AutomaticSize = var82
	return React_upvr.createElement("Frame", module_4, {
		ExperienceStats = React_upvr.createElement(StatGroup_upvr, {
			ratingText = var23;
			playingText = var7_result1;
		});
	})
end