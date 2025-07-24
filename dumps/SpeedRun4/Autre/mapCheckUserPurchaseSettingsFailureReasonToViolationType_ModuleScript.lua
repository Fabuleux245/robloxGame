-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:23
-- Luau version 6, Types version 3
-- Time taken: 0.001300 seconds

local Parent = script.Parent.Parent
local CheckUserPurchaseSettingsFailureReason_upvr = require(Parent.Enums.CheckUserPurchaseSettingsFailureReason)
local EconomicRestrictionsViolationType_upvr = require(Parent.Enums.EconomicRestrictionsViolationType)
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: CheckUserPurchaseSettingsFailureReason_upvr (readonly)
		[2]: EconomicRestrictionsViolationType_upvr (readonly)
	]]
	if arg1 == CheckUserPurchaseSettingsFailureReason_upvr.Chargeback then
		return EconomicRestrictionsViolationType_upvr.Chargeback
	end
	if arg1 == CheckUserPurchaseSettingsFailureReason_upvr.AbuseOfAffiliateSystem then
		return EconomicRestrictionsViolationType_upvr.AbuseOfAffiliateSystem
	end
	if arg1 == CheckUserPurchaseSettingsFailureReason_upvr.AttemptedUnauthorizedPaymentMethodUse then
		return EconomicRestrictionsViolationType_upvr.AttemptedUnauthorizedPaymentMethodUse
	end
	if arg1 == CheckUserPurchaseSettingsFailureReason_upvr.PaymentAbuse then
		return EconomicRestrictionsViolationType_upvr.PaymentAbuse
	end
	if arg1 == CheckUserPurchaseSettingsFailureReason_upvr.RepeatedRefundRequests then
		return EconomicRestrictionsViolationType_upvr.RepeatedRefundRequests
	end
	if arg1 == CheckUserPurchaseSettingsFailureReason_upvr.SuspiciousAccountPatterns then
		return EconomicRestrictionsViolationType_upvr.SuspiciousAccountPatterns
	end
	if arg1 == CheckUserPurchaseSettingsFailureReason_upvr.SuspiciousRefundRequests then
		return EconomicRestrictionsViolationType_upvr.SuspiciousRefundRequests
	end
	if arg1 == CheckUserPurchaseSettingsFailureReason_upvr.UnauthorizedPurchase then
		return EconomicRestrictionsViolationType_upvr.UnauthorizedPurchase
	end
	if arg1 == CheckUserPurchaseSettingsFailureReason_upvr.UseOfUnauthorizedOffPlatformTransactions then
		return EconomicRestrictionsViolationType_upvr.UseOfUnauthorizedOffPlatformTransactions
	end
	if arg1 == CheckUserPurchaseSettingsFailureReason_upvr.VirtualEconomyAbuse then
		return EconomicRestrictionsViolationType_upvr.VirtualEconomyAbuse
	end
	return EconomicRestrictionsViolationType_upvr.None
end