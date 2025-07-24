-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:38
-- Luau version 6, Types version 3
-- Time taken: 0.000769 seconds

local Parent = script:FindFirstAncestor("AdPlayer").Parent
local Foundation = require(Parent.Foundation)
local tbl_upvr = {
	eligibleDisclaimer = "CoreScripts.Ads.Label.RewardedVideoEligibleDisclaimer";
	ineligibleDisclaimer = "CoreScripts.Ads.Label.RewardedVideoIneligibleDisclaimer";
}
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(Parent.React)
local Text_upvr = Foundation.Text
return function(arg1) -- Line 18, Named "TestAdDisclaimerComponent"
	--[[ Upvalues[5]:
		[1]: useLocalization_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: Text_upvr (readonly)
	]]
	local module = {
		tag = "bg-over-media-0 padding-medium radius-medium auto-xy text-body-large anchor-top-center";
	}
	local udim2 = UDim2.new(0.5, 0, 0, useTokens_upvr().Gap.XLarge)
	module.Position = udim2
	if arg1.isEligible then
		udim2 = useLocalization_upvr(tbl_upvr).eligibleDisclaimer
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		udim2 = useLocalization_upvr(tbl_upvr).ineligibleDisclaimer
	end
	module.Text = udim2
	return React_upvr.createElement(Text_upvr, module)
end