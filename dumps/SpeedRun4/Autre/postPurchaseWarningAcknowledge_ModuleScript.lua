-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:33
-- Luau version 6, Types version 3
-- Time taken: 0.000850 seconds

local module_upvr = {}
local tbl = {
	None = "None";
	ConfirmedU13PaymentModal = "ConfirmedU13PaymentModal";
	ConfirmedU13MonthlyThreshold1Modal = "ConfirmedU13MonthlyThreshold1Modal";
	ConfirmedU13MonthlyThreshold2Modal = "ConfirmedU13MonthlyThreshold2Modal";
	ConfirmedParentalConsentWarningPaymentModal13To17 = "ConfirmedParentalConsentWarningPaymentModal13To17";
}
module_upvr.UserActionType = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).enumerate(script.Name, tbl)
require(script.Parent.Parent.Utils.addRawValueMethodToEnum)(module_upvr.UserActionType, tbl)
function module_upvr.Post(arg1, arg2) -- Line 22
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return arg1.postPurchaseWarningAcknowledge(module_upvr.UserActionType.toRawValue(arg2))
end
return module_upvr