-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:09
-- Luau version 6, Types version 3
-- Time taken: 0.000782 seconds

local Parent = script.Parent.Parent.Parent.Parent
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local Text_upvr = require(Parent.Foundation).Text
return function() -- Line 15, Named "RobuxUpsellModalFooter"
	--[[ Upvalues[3]:
		[1]: useLocalization_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Text_upvr (readonly)
	]]
	local var2_result1 = useLocalization_upvr({
		DisclosurePayment = "IAPExperience.RobuxUpsell.Text.DisclosurePayment";
		DisclosureTerms = "IAPExperience.RobuxUpsell.Text.DisclosureTerms";
	})
	return React_upvr.createElement(Text_upvr, {
		Text = var2_result1.DisclosurePayment..' '..var2_result1.DisclosureTerms;
		tag = "content-muted text-caption-small size-full align-x-center margin-top-small";
	})
end