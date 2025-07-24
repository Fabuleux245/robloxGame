-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:59
-- Luau version 6, Types version 3
-- Time taken: 0.001843 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local module_upvr = {Network_upvr, ExternalSettings_upvr}
local Thunk_upvr = require(Parent.Thunk)
local hasPendingRequest_upvr = require(Parent.Utils.hasPendingRequest)
local RequestSubscriptionPurchase_upvr = require(Parent.Actions.RequestSubscriptionPurchase)
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local getSubscriptionPurchaseInfo_upvr = require(Parent.Network.getSubscriptionPurchaseInfo)
local resolveSubscriptionPromptState_upvr = require(Parent.Thunks.resolveSubscriptionPromptState)
return function(arg1) -- Line 22, Named "initiateSubscriptionPurchase"
	--[[ Upvalues[10]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: ExternalSettings_upvr (readonly)
		[5]: hasPendingRequest_upvr (readonly)
		[6]: RequestSubscriptionPurchase_upvr (readonly)
		[7]: ErrorOccurred_upvr (readonly)
		[8]: PurchaseError_upvr (readonly)
		[9]: getSubscriptionPurchaseInfo_upvr (readonly)
		[10]: resolveSubscriptionPromptState_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2) -- Line 23
		--[[ Upvalues[9]:
			[1]: Network_upvr (copied, readonly)
			[2]: ExternalSettings_upvr (copied, readonly)
			[3]: hasPendingRequest_upvr (copied, readonly)
			[4]: RequestSubscriptionPurchase_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: ErrorOccurred_upvr (copied, readonly)
			[7]: PurchaseError_upvr (copied, readonly)
			[8]: getSubscriptionPurchaseInfo_upvr (copied, readonly)
			[9]: resolveSubscriptionPromptState_upvr (copied, readonly)
		]]
		if hasPendingRequest_upvr(arg1_2:getState()) then
			return nil
		end
		arg1_2:dispatch(RequestSubscriptionPurchase_upvr(arg1))
		if arg2[ExternalSettings_upvr].getFlagOrder66() then
			arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.PurchaseDisabled))
			return nil
		end
		return getSubscriptionPurchaseInfo_upvr(arg2[Network_upvr], arg1):andThen(function(arg1_3) -- Line 38
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: resolveSubscriptionPromptState_upvr (copied, readonly)
			]]
			arg1_2:dispatch(resolveSubscriptionPromptState_upvr(arg1_3))
		end):catch(function(arg1_4) -- Line 41
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: ErrorOccurred_upvr (copied, readonly)
			]]
			arg1_2:dispatch(ErrorOccurred_upvr(arg1_4))
		end)
	end)
end