-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:57
-- Luau version 6, Types version 3
-- Time taken: 0.002557 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local module_upvr = {Network_upvr, ExternalSettings_upvr}
local Thunk_upvr = require(Parent.Thunk)
local hasPendingRequest_upvr = require(Parent.Utils.hasPendingRequest)
local RequestPremiumPurchase_upvr = require(Parent.Actions.RequestPremiumPurchase)
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local Promise_upvr = require(Parent.Promise)
local getPremiumUpsellPrecheck_upvr = require(Parent.Network.getPremiumUpsellPrecheck)
local getPremiumProductInfo_upvr = require(Parent.Network.getPremiumProductInfo)
local getAccountInfo_upvr = require(Parent.Network.getAccountInfo)
local getBalanceInfo_upvr = require(Parent.Network.getBalanceInfo)
local resolvePremiumPromptState_upvr = require(Parent.Thunks.resolvePremiumPromptState)
return function(arg1, arg2, arg3) -- Line 24, Named "initiatePremiumPurchase"
	--[[ Upvalues[14]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: ExternalSettings_upvr (readonly)
		[5]: hasPendingRequest_upvr (readonly)
		[6]: RequestPremiumPurchase_upvr (readonly)
		[7]: ErrorOccurred_upvr (readonly)
		[8]: PurchaseError_upvr (readonly)
		[9]: Promise_upvr (readonly)
		[10]: getPremiumUpsellPrecheck_upvr (readonly)
		[11]: getPremiumProductInfo_upvr (readonly)
		[12]: getAccountInfo_upvr (readonly)
		[13]: getBalanceInfo_upvr (readonly)
		[14]: resolvePremiumPromptState_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 25
		--[[ Upvalues[12]:
			[1]: Network_upvr (copied, readonly)
			[2]: ExternalSettings_upvr (copied, readonly)
			[3]: hasPendingRequest_upvr (copied, readonly)
			[4]: RequestPremiumPurchase_upvr (copied, readonly)
			[5]: ErrorOccurred_upvr (copied, readonly)
			[6]: PurchaseError_upvr (copied, readonly)
			[7]: Promise_upvr (copied, readonly)
			[8]: getPremiumUpsellPrecheck_upvr (copied, readonly)
			[9]: getPremiumProductInfo_upvr (copied, readonly)
			[10]: getAccountInfo_upvr (copied, readonly)
			[11]: getBalanceInfo_upvr (copied, readonly)
			[12]: resolvePremiumPromptState_upvr (copied, readonly)
		]]
		local var17 = arg2_2[Network_upvr]
		local var18 = arg2_2[ExternalSettings_upvr]
		local var22
		if hasPendingRequest_upvr(arg1_2:getState()) then
			return nil
		end
		arg1_2:dispatch(RequestPremiumPurchase_upvr())
		if var18.getFlagOrder66() then
			var22 = PurchaseError_upvr.PurchaseDisabled
			arg1_2:dispatch(ErrorOccurred_upvr(var22))
			return nil
		end
		local module = {}
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var22 = getPremiumUpsellPrecheck_upvr(var17)
			return var22
		end
		if not not var18.isStudio() or not INLINED() then
			var22 = Promise_upvr.resolve(true)
		end
		module.canShowUpsell = var22
		var22 = getPremiumProductInfo_upvr(var17)
		module.premiumProductInfo = var22
		var22 = getAccountInfo_upvr(var17, var18)
		module.accountInfo = var22
		var22 = getBalanceInfo_upvr(var17, var18, false)
		module.balanceInfo = var22
		function var22(arg1_3) -- Line 46
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: resolvePremiumPromptState_upvr (copied, readonly)
			]]
			arg1_2:dispatch(resolvePremiumPromptState_upvr(arg1_3.accountInfo, arg1_3.balanceInfo, arg1_3.premiumProductInfo, arg1_3.canShowUpsell))
		end
		function var22(arg1_4) -- Line 49
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: ErrorOccurred_upvr (copied, readonly)
			]]
			arg1_2:dispatch(ErrorOccurred_upvr(arg1_4))
		end
		return Promise_upvr.all(module):andThen(var22):catch(var22)
	end)
end