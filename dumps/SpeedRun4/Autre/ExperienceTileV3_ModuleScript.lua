-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:39
-- Luau version 6, Types version 3
-- Time taken: 0.007234 seconds

local Parent_4 = script.Parent
local Parent_3 = Parent_4.Parent
local Parent_2 = Parent_3.Parent.Parent
local Parent = Parent_2.Parent
local Core = Parent.Core
local Parent_5 = Parent.Parent
local Cryo_upvr = require(Parent_5.Cryo)
local React_upvr = require(Parent_5.React)
local Roact_upvr = require(Parent_5.Roact)
local AspectRatioMode_upvr = require(Parent_4.Enum.AspectRatioMode)
local function renderContentWithPadding_upvr(arg1, arg2, arg3, arg4) -- Line 82, Named "renderContentWithPadding"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	return React_upvr.createElement(arg1, Cryo_upvr.Dictionary.join({
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, arg3), {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, arg2.Left);
			PaddingRight = UDim.new(0, arg2.Right);
			PaddingTop = UDim.new(0, arg2.Top);
			PaddingBottom = UDim.new(0, arg2.Bottom);
		});
		Content = Roact_upvr.createFragment(arg4);
	})
end
local function _(arg1, arg2) -- Line 106, Named "getFinalAspectRatioMode"
	--[[ Upvalues[1]:
		[1]: AspectRatioMode_upvr (readonly)
	]]
	if arg1 ~= nil then
		if arg2 then
			return AspectRatioMode_upvr.Wide
		end
		return arg1
	end
	if arg2 then
		return AspectRatioMode_upvr.Wide
	end
	return AspectRatioMode_upvr.Square
end
local useStyle_upvr = require(Core.Style.useStyle)
local setDefault_upvr = require(Parent.Utility.setDefault)
local Constants_upvr = require(Parent_4.Constants)
local getAspectRatio_upvr = require(Parent_4.getAspectRatio)
local VerticalTileThumbnail_upvr = require(Parent_3.VerticalTile.VerticalTileThumbnail)
local TileContentPanel_upvr = require(Parent_3.TileContentPanel)
local ExperienceActionRow_upvr = require(Parent_4.ExperienceActionRow)
local useControlState_upvr = require(Core.Control.useControlState)
local useCursor_upvr = require(Parent_2.SelectionCursor.useCursor)
local getControlStateColor_upvr = require(Parent.Utility.getControlStateColor)
local Interactable_upvr = require(Core.Control.Interactable)
local VerticalTile_upvr = require(Parent_3.VerticalTile.VerticalTile)
return function(arg1) -- Line 122, Named "ExperienceTileV3"
	--[[ Upvalues[17]:
		[1]: useStyle_upvr (readonly)
		[2]: setDefault_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: AspectRatioMode_upvr (readonly)
		[7]: getAspectRatio_upvr (readonly)
		[8]: renderContentWithPadding_upvr (readonly)
		[9]: VerticalTileThumbnail_upvr (readonly)
		[10]: Roact_upvr (readonly)
		[11]: TileContentPanel_upvr (readonly)
		[12]: ExperienceActionRow_upvr (readonly)
		[13]: useControlState_upvr (readonly)
		[14]: useCursor_upvr (readonly)
		[15]: getControlStateColor_upvr (readonly)
		[16]: Interactable_upvr (readonly)
		[17]: VerticalTile_upvr (readonly)
	]]
	local var14_result1_upvr = useStyle_upvr()
	local var15_result1_upvr_2 = setDefault_upvr(arg1.footerHeight, Constants_upvr.DEFAULT_FOOTER_HEIGHT)
	local var15_result1_upvr = setDefault_upvr(arg1.hasBackground, true)
	local styleProps = arg1.styleProps
	if not styleProps then
		styleProps = {}
	end
	local any_join_result1 = Cryo_upvr.Dictionary.join(Constants_upvr.getDefaultStyleProps(var14_result1_upvr), styleProps)
	local border_upvr = any_join_result1.border
	local topContentPadding_upvr = any_join_result1.topContentPadding
	local bottomContentPadding_upvr = any_join_result1.bottomContentPadding
	local contentTitlePadding_upvr = any_join_result1.contentTitlePadding
	local contentTitleFont_upvr = any_join_result1.contentTitleFont
	local setDefault_upvr_result1_upvr = setDefault_upvr(arg1.contentTextLineCount, Constants_upvr.DEFAULT_TEXT_LINE_COUNT)
	local var21_result1, useControlState_upvr_result2 = useControlState_upvr()
	local var23_result1 = getControlStateColor_upvr(var21_result1, any_join_result1.overlayColors)
	local var63
	local var64
	if var23_result1 ~= nil then
		var63 = var23_result1.Color
		var64 = var23_result1.Transparency
	else
		var63 = nil
		var64 = 1
	end
	return renderContentWithPadding_upvr(Interactable_upvr, any_join_result1.selectionCursorPadding, {
		Size = UDim2.new(1, 0, 1, 0);
		SelectionImageObject = useCursor_upvr(border_upvr.CornerRadius);
		onStateChanged = useControlState_upvr_result2;
		isDisabled = arg1.isDisabled;
		[React_upvr.Event.Activated] = arg1.onActivated;
		[React_upvr.Event.SelectionGained] = arg1.onSelectionGained;
		[React_upvr.Event.SelectionLost] = arg1.onSelectionLost;
	}, {
		VerticalTile = React_upvr.createElement(VerticalTile_upvr, {
			hasBackground = var15_result1_upvr;
			hasOutline = setDefault_upvr(arg1.hasOutline, true);
			isHoverEnabled = setDefault_upvr(arg1.isHoverEnabled, false);
			hoverDelay = arg1.hoverDelay;
			onHoverChanged = arg1.onHoverChanged;
			isOverlayVisible = false;
			isActive = false;
			renderTopContent = React_upvr.useCallback(function(arg1_2) -- Line 140
				--[[ Upvalues[11]:
					[1]: var14_result1_upvr (readonly)
					[2]: arg1 (readonly)
					[3]: AspectRatioMode_upvr (copied, readonly)
					[4]: getAspectRatio_upvr (copied, readonly)
					[5]: renderContentWithPadding_upvr (copied, readonly)
					[6]: topContentPadding_upvr (readonly)
					[7]: React_upvr (copied, readonly)
					[8]: VerticalTileThumbnail_upvr (copied, readonly)
					[9]: border_upvr (readonly)
					[10]: var15_result1_upvr (readonly)
					[11]: Roact_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
				if arg1_2 then
				end
				local var38 = not var14_result1_upvr.Settings.ReducedMotion
				if arg1.thumbnailAspectRatioOverride ~= nil then
					if var38 then
						local Wide = AspectRatioMode_upvr.Wide
					else
					end
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if var38 then
					else
					end
				end
				local getAspectRatio_upvr_result1 = getAspectRatio_upvr(AspectRatioMode_upvr.Square)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if AspectRatioMode_upvr.Square == AspectRatioMode_upvr.Wide then
					-- KONSTANTWARNING: GOTO [46] #36
				end
				-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [43] 34. Error Block 23 start (CF ANALYSIS FAILED)
				local module_2 = {}
				local any_createElement_result1 = React_upvr.createElement(VerticalTileThumbnail_upvr, {
					aspectRatio = getAspectRatio_upvr_result1;
					border = border_upvr;
					isTopRounded = true;
					isBottomRounded = not var15_result1_upvr;
					thumbnail = arg1.thumbnail;
				})
				module_2.Thumbnail = any_createElement_result1
				if arg1.renderTopContentOverlay ~= nil then
					any_createElement_result1 = Roact_upvr.createFragment(arg1.renderTopContentOverlay(var38, border_upvr))
				else
					any_createElement_result1 = nil
				end
				module_2.TopContentOverlay = any_createElement_result1
				do
					return renderContentWithPadding_upvr("Frame", topContentPadding_upvr, {
						Size = UDim2.new(1, 0, getAspectRatio_upvr_result1, 0);
						SizeConstraint = Enum.SizeConstraint.RelativeXX;
						ZIndex = 3;
					}, module_2)
				end
				-- KONSTANTERROR: [43] 34. Error Block 23 end (CF ANALYSIS FAILED)
			end, {arg1.renderTopContentOverlay, arg1.wideThumbnail, arg1.thumbnail, arg1.thumbnailAspectRatioOverride, topContentPadding_upvr, border_upvr, var15_result1_upvr});
			renderBottomContent = React_upvr.useCallback(function(arg1_3) -- Line 174
				--[[ Upvalues[11]:
					[1]: setDefault_upvr_result1_upvr (readonly)
					[2]: contentTitleFont_upvr (readonly)
					[3]: var14_result1_upvr (readonly)
					[4]: contentTitlePadding_upvr (readonly)
					[5]: var15_result1_upvr_2 (readonly)
					[6]: bottomContentPadding_upvr (readonly)
					[7]: arg1 (readonly)
					[8]: renderContentWithPadding_upvr (copied, readonly)
					[9]: border_upvr (readonly)
					[10]: React_upvr (copied, readonly)
					[11]: TileContentPanel_upvr (copied, readonly)
				]]
				local var48 = math.floor(setDefault_upvr_result1_upvr * contentTitleFont_upvr.RelativeSize * var14_result1_upvr.Font.BaseSize + contentTitlePadding_upvr) + var15_result1_upvr_2 + bottomContentPadding_upvr.Top + bottomContentPadding_upvr.Bottom
				if arg1.renderBottomContent ~= nil then
					return renderContentWithPadding_upvr("Frame", bottomContentPadding_upvr, {
						Size = UDim2.new(1, 0, 0, var48);
					}, {
						BottomContent = arg1.renderBottomContent(arg1_3, border_upvr);
					})
				end
				local module = {
					contentTitle = arg1.experienceName;
					panelHeight = UDim.new(0, var48);
					outerPadding = bottomContentPadding_upvr;
					footerHeight = UDim.new(0, var15_result1_upvr_2);
					textLineCount = setDefault_upvr_result1_upvr;
					titleFont = contentTitleFont_upvr;
				}
				local var52 = contentTitlePadding_upvr
				module.titlePadding = var52
				if arg1_3 then
					var52 = arg1.footer
				else
					var52 = nil
				end
				module.contentFooter = var52
				module.hasSidePadding = true
				return React_upvr.createElement(TileContentPanel_upvr, module)
			end, {arg1.experienceName, arg1.renderBottomContent, arg1.footer, setDefault_upvr_result1_upvr, contentTitlePadding_upvr, bottomContentPadding_upvr, var15_result1_upvr_2, contentTitleFont_upvr, border_upvr, var14_result1_upvr});
			renderFooterRow = React_upvr.useCallback(function(arg1_4) -- Line 213
				--[[ Upvalues[6]:
					[1]: arg1 (readonly)
					[2]: React_upvr (copied, readonly)
					[3]: ExperienceActionRow_upvr (copied, readonly)
					[4]: var15_result1_upvr_2 (readonly)
					[5]: bottomContentPadding_upvr (readonly)
					[6]: renderContentWithPadding_upvr (copied, readonly)
				]]
				if arg1.renderBottomContent ~= nil then
					return nil
				end
				if arg1_4 then
					if arg1.renderActionRow ~= nil then
						return arg1.renderActionRow()
					end
					return React_upvr.createElement(ExperienceActionRow_upvr, arg1.actionRowProps)
				end
				return renderContentWithPadding_upvr("Frame", bottomContentPadding_upvr, {
					Size = UDim2.new(1, 0, 0, var15_result1_upvr_2 + bottomContentPadding_upvr.Top + bottomContentPadding_upvr.Bottom);
					Position = UDim2.new(0, 0, 1, 0);
					AnchorPoint = Vector2.new(0, 1);
				}, {
					FooterContent = React_upvr.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, 0);
						Position = UDim2.new(0, 0, 1, 0);
						AnchorPoint = Vector2.new(0, 1);
						BackgroundTransparency = 1;
						AutomaticSize = Enum.AutomaticSize.Y;
					}, {
						Footer = arg1.footer;
					});
				})
			end, {arg1.footer, arg1.actionRowProps, arg1.renderBottomContent, arg1.renderActionRow, bottomContentPadding_upvr, var15_result1_upvr_2});
			reservedBottomHeight = 0;
			backgroundColor = any_join_result1.backgroundColor;
			border = border_upvr;
			dropShadow = any_join_result1.dropShadow;
		});
		OverlayColor = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundColor3 = var63;
			ZIndex = 10;
			BackgroundTransparency = var64;
		}, {
			Corner = React_upvr.createElement("UICorner", {
				CornerRadius = border_upvr.CornerRadius;
			});
		});
	})
end