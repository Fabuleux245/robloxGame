-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:06
-- Luau version 6, Types version 3
-- Time taken: 0.000909 seconds

local Parent = script.Parent.Parent
local Thunk_upvr = require(Parent.Thunk)
local PurchaseWarning_upvr = require(Parent.Enums.PurchaseWarning)
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local PromptState_upvr = require(Parent.Enums.PromptState)
local launchRobuxUpsell_upvr = require(Parent.Thunks.launchRobuxUpsell)
return function(arg1) -- Line 9, Named "resolvePurchasePrecheck"
	--[[ Upvalues[5]:
		[1]: Thunk_upvr (readonly)
		[2]: PurchaseWarning_upvr (readonly)
		[3]: SetPromptState_upvr (readonly)
		[4]: PromptState_upvr (readonly)
		[5]: launchRobuxUpsell_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, {}, function(arg1_2, arg2) -- Line 10
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: PurchaseWarning_upvr (copied, readonly)
			[3]: SetPromptState_upvr (copied, readonly)
			[4]: PromptState_upvr (copied, readonly)
			[5]: launchRobuxUpsell_upvr (copied, readonly)
		]]
		if arg1 == PurchaseWarning_upvr.U13PaymentModal then
			return arg1_2:dispatch(SetPromptState_upvr(PromptState_upvr.U13PaymentModal))
		end
		if arg1 == PurchaseWarning_upvr.U13MonthlyThreshold1Modal then
			return arg1_2:dispatch(SetPromptState_upvr(PromptState_upvr.U13MonthlyThreshold1Modal))
		end
		if arg1 == PurchaseWarning_upvr.RequireEmailVerification then
			return arg1_2:dispatch(SetPromptState_upvr(PromptState_upvr.RequireEmailVerification))
		end
		if arg1 == PurchaseWarning_upvr.U13MonthlyThreshold2Modal then
			return arg1_2:dispatch(SetPromptState_upvr(PromptState_upvr.U13MonthlyThreshold2Modal))
		end
		if arg1 == PurchaseWarning_upvr.ParentalConsentWarningPaymentModal13To17 then
			return arg1_2:dispatch(SetPromptState_upvr(PromptState_upvr.ParentalConsentWarningPaymentModal13To17))
		end
		return arg1_2:dispatch(launchRobuxUpsell_upvr())
	end)
end