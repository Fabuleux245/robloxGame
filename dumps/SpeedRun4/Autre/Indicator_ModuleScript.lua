-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:08
-- Luau version 6, Types version 3
-- Time taken: 0.001583 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local tbl_upvr = {
	shape = require(Foundation.Enums.IndicatorShape).Circle;
	variant = require(Foundation.Enums.IndicatorVariant).Success;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useIndicatorVariants_upvr = require(script.Parent.useIndicatorVariants)
local Image_upvr = require(Foundation.Components.Image)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
return React_upvr.memo(function(arg1) -- Line 30, Named "Indicator"
	--[[ Upvalues[8]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useIndicatorVariants_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Image_upvr (readonly)
		[7]: View_upvr (readonly)
		[8]: withCommonProps_upvr (readonly)
	]]
	local withDefaults_upvr_result1 = withDefaults_upvr(arg1, tbl_upvr)
	local var6_result1 = useIndicatorVariants_upvr(useTokens_upvr(), withDefaults_upvr_result1.shape, withDefaults_upvr_result1.variant, withDefaults_upvr_result1.size)
	local var12 = React_upvr
	if var6_result1.indicator.Image then
		var12 = Image_upvr
	else
		var12 = View_upvr
	end
	return var12.createElement(var12, withCommonProps_upvr(withDefaults_upvr_result1, var6_result1.indicator))
end)