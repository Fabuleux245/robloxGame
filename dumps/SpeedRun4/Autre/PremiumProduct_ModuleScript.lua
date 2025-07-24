-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:17
-- Luau version 6, Types version 3
-- Time taken: 0.001225 seconds

local t = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).t
local any_interface_result1_upvr = t.interface({
	productId = t.number;
	mobileProductId = t.string;
	robuxAmount = t.number;
	isSubscriptionOnly = t.boolean;
	premiumFeatureTypeName = t.string;
	description = t.string;
	price = t.interface({
		amount = t.number;
		currency = t.interface({
			currencySymbol = t.string;
		});
	});
})
return function(arg1) -- Line 30
	--[[ Upvalues[1]:
		[1]: any_interface_result1_upvr (readonly)
	]]
	local any_interface_result1_upvr_result1, any_interface_result1_upvr_result2 = any_interface_result1_upvr(arg1)
	if not any_interface_result1_upvr_result1 then
		return nil
	end
	return {
		productId = arg1.productId;
		mobileProductId = arg1.mobileProductId;
		robuxAmount = arg1.robuxAmount;
		isSubscriptionOnly = arg1.isSubscriptionOnly;
		premiumFeatureTypeName = arg1.premiumFeatureTypeName;
		description = arg1.description;
		price = arg1.price.amount;
		currencySymbol = arg1.price.currency.currencySymbol;
	}
end