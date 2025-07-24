-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:32
-- Luau version 6, Types version 3
-- Time taken: 0.001884 seconds

local Parent = script:FindFirstAncestor("TenFootUiSharedComponents").Parent
local Style = require(Parent.Style)
local SharedFlags = require(Parent.SharedFlags)
local useDesignTokens_upvr = Style.useDesignTokens
local mapTypographyVariantToFontEnum_upvr = Style.mapTypographyVariantToFontEnum
local GetFFlagTenFootUiSupportSortSubtitle_upvr = SharedFlags.GetFFlagTenFootUiSupportSortSubtitle
local GetTextSize_upvr = Style.GetTextSize
local vector2_upvr = Vector2.new(math.huge, math.huge)
local GetFFlagTenFootUiSupportSortHeaderTooltip_upvr = SharedFlags.GetFFlagTenFootUiSupportSortHeaderTooltip
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local IconWithTooltip_upvr = require(Parent.AppBlox).IconWithTooltip
local TooltipOrientation_upvr = require(Parent.UIBlox).App.Dialog.Enum.TooltipOrientation
return function(arg1) -- Line 33, Named "TenFootUiGridCarouselHeader"
	--[[ Upvalues[10]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: mapTypographyVariantToFontEnum_upvr (readonly)
		[3]: GetFFlagTenFootUiSupportSortSubtitle_upvr (readonly)
		[4]: GetTextSize_upvr (readonly)
		[5]: vector2_upvr (readonly)
		[6]: GetFFlagTenFootUiSupportSortHeaderTooltip_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: IconWithTooltip_upvr (readonly)
		[10]: TooltipOrientation_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local useDesignTokens_upvr_result1 = useDesignTokens_upvr(function(arg1_2) -- Line 34
		--[[ Upvalues[2]:
			[1]: mapTypographyVariantToFontEnum_upvr (copied, readonly)
			[2]: GetFFlagTenFootUiSupportSortSubtitle_upvr (copied, readonly)
		]]
		local module = {}
		local tbl = {
			Font = mapTypographyVariantToFontEnum_upvr(arg1_2.Semantic.Typography.Header);
			TextSize = arg1_2.Semantic.Typography.Header.FontSize;
			LineHeight = arg1_2.Semantic.Typography.Header.LineHeight;
			TextColor3 = arg1_2.Semantic.Color.Text.Emphasis.Color3;
			TextTransparency = arg1_2.Semantic.Color.Text.Emphasis.Transparency;
		}
		module.textStyles = tbl
		if GetFFlagTenFootUiSupportSortSubtitle_upvr() then
			tbl = {}
			tbl.Font = arg1_2.Semantic.Typography.Body.Font
			tbl.TextSize = arg1_2.Semantic.Typography.Body.FontSize
			tbl.LineHeight = arg1_2.Semantic.Typography.Body.LineHeight
			tbl.TextColor3 = arg1_2.Semantic.Color.Text.Default.Color3
		else
			tbl = nil
		end
		module.subtitleTextStyles = tbl
		if GetFFlagTenFootUiSupportSortSubtitle_upvr() then
			tbl = arg1_2.Global.Space_50
		else
			tbl = nil
		end
		module.paddingAboveSubtitle = tbl
		tbl = arg1_2.Global.Space_200
		module.paddingBottom = tbl
		return module
	end)
	local var18 = arg1.margin or 0
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 20. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 20. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 23. Error Block 55 start (CF ANALYSIS FAILED)
	local _ = {
		PaddingLeft = UDim.new(0, var18);
		PaddingRight = UDim.new(0, var18);
	}
	if GetFFlagTenFootUiSupportSortSubtitle_upvr() then
		-- KONSTANTWARNING: GOTO [59] #47
	end
	-- KONSTANTERROR: [28] 23. Error Block 55 end (CF ANALYSIS FAILED)
end