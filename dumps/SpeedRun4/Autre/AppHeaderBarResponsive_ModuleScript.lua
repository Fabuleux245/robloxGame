-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:57
-- Luau version 6, Types version 3
-- Time taken: 0.003404 seconds

local Parent = script.Parent.Parent.Parent
local Responsive_upvr = require(Parent.Responsive)
local useBreakpointXOrLarger_upvr = Responsive_upvr.useBreakpointXOrLarger
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local AppHeaderBarComponent_upvr = require(script.Parent.AppHeaderBarComponent)
return function(arg1) -- Line 19, Named "AppHeaderBarResponsive"
	--[[ Upvalues[7]:
		[1]: useBreakpointXOrLarger_upvr (readonly)
		[2]: Responsive_upvr (readonly)
		[3]: usePreferredInput_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Cryo_upvr (readonly)
		[7]: AppHeaderBarComponent_upvr (readonly)
	]]
	local useBreakpointXOrLarger_upvr_result1_upvr = useBreakpointXOrLarger_upvr(Responsive_upvr.Keys.Medium)
	local Large_upvr = Responsive_upvr.Keys.Large
	local useBreakpointXOrLarger_upvr_result1_upvr_2 = useBreakpointXOrLarger_upvr(Large_upvr)
	if usePreferredInput_upvr() ~= Responsive_upvr.Input.Directional then
		Large_upvr = false
	else
		Large_upvr = true
	end
	local Tokens_upvr = useStyle_upvr().Tokens
	local titleFontStyle_upvr = arg1.titleFontStyle
	local shouldRenderCenter_upvr = arg1.shouldRenderCenter
	local isTitleCentered_upvr = arg1.isTitleCentered
	local utilitiesGap_upvr = arg1.utilitiesGap
	local paddingTop_upvr = arg1.paddingTop
	local paddingBottom_upvr = arg1.paddingBottom
	local onMedia_upvr = arg1.onMedia
	local shouldRenderTitle_upvr = arg1.shouldRenderTitle
	return React_upvr.createElement(AppHeaderBarComponent_upvr, Cryo_upvr.Dictionary.join(arg1, React_upvr.useMemo(function() -- Line 36
		--[[ Upvalues[13]:
			[1]: useBreakpointXOrLarger_upvr_result1_upvr_2 (readonly)
			[2]: Large_upvr (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: shouldRenderCenter_upvr (readonly)
			[5]: paddingTop_upvr (readonly)
			[6]: Tokens_upvr (readonly)
			[7]: paddingBottom_upvr (readonly)
			[8]: onMedia_upvr (readonly)
			[9]: shouldRenderTitle_upvr (readonly)
			[10]: useBreakpointXOrLarger_upvr_result1_upvr (readonly)
			[11]: isTitleCentered_upvr (readonly)
			[12]: titleFontStyle_upvr (readonly)
			[13]: utilitiesGap_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 89 start (CF ANALYSIS FAILED)
		local module = {}
		local var24
		if useBreakpointXOrLarger_upvr_result1_upvr_2 and Large_upvr then
			var24 = Cryo_upvr.None
		else
			var24 = nil
		end
		module.title = var24
		if useBreakpointXOrLarger_upvr_result1_upvr_2 and not Large_upvr or shouldRenderCenter_upvr then
			var24 = nil
			-- KONSTANTWARNING: GOTO [23] #21
		end
		-- KONSTANTERROR: [0] 1. Error Block 89 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 19. Error Block 96 start (CF ANALYSIS FAILED)
		var24 = Cryo_upvr.None
		module.renderCenter = var24
		if useBreakpointXOrLarger_upvr_result1_upvr_2 then
			var24 = nil
		else
			var24 = Cryo_upvr.None
		end
		module.renderUserInfo = var24
		if useBreakpointXOrLarger_upvr_result1_upvr_2 then
			var24 = Cryo_upvr.None
		else
			var24 = nil
		end
		module.avatarActionIcon = var24
		if useBreakpointXOrLarger_upvr_result1_upvr_2 and not Large_upvr then
			var24 = Cryo_upvr.None
		else
			var24 = nil
		end
		module.searchActionIcon = var24
		if useBreakpointXOrLarger_upvr_result1_upvr_2 and not paddingTop_upvr then
			var24 = UDim.new(0, Tokens_upvr.Global.Space_200)
		else
			var24 = nil
		end
		module.paddingTop = var24
		if useBreakpointXOrLarger_upvr_result1_upvr_2 and not paddingBottom_upvr then
			var24 = UDim.new(0, Tokens_upvr.Global.Space_200)
		else
			var24 = nil
		end
		module.paddingBottom = var24
		if useBreakpointXOrLarger_upvr_result1_upvr_2 and Large_upvr and onMedia_upvr == nil then
			var24 = true
		else
			var24 = nil
		end
		module.onMedia = var24
		var24 = shouldRenderTitle_upvr
		if var24 then
			module.title = nil
		end
		if useBreakpointXOrLarger_upvr_result1_upvr and not isTitleCentered_upvr then
		else
		end
		if titleFontStyle_upvr then
		else
		end
		module.titleFontStyle = Tokens_upvr.Semantic.Typography.Header
		if useBreakpointXOrLarger_upvr_result1_upvr then
			-- KONSTANTWARNING: GOTO [152] #119
		end
		if utilitiesGap_upvr then
		else
		end
		module.utilitiesGap = UDim.new(0, Tokens_upvr.Global.Space_200)
		do
			return module
		end
		-- KONSTANTERROR: [20] 19. Error Block 96 end (CF ANALYSIS FAILED)
	end, {useBreakpointXOrLarger_upvr_result1_upvr, useBreakpointXOrLarger_upvr_result1_upvr_2, Large_upvr, Tokens_upvr, titleFontStyle_upvr, shouldRenderCenter_upvr, isTitleCentered_upvr, utilitiesGap_upvr, paddingTop_upvr, paddingBottom_upvr, onMedia_upvr})))
end