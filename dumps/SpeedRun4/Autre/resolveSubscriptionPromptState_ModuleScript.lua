-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:06
-- Luau version 6, Types version 3
-- Time taken: 0.000672 seconds

local Parent = script.Parent.Parent
local Thunk_upvr = require(Parent.Thunk)
local SubscriptionPurchaseInfoReceived_upvr = require(Parent.Actions.SubscriptionPurchaseInfoReceived)
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local PromptState_upvr = require(Parent.Enums.PromptState)
return function(arg1) -- Line 13, Named "resolveSubscriptionPromptState"
	--[[ Upvalues[6]:
		[1]: Thunk_upvr (readonly)
		[2]: SubscriptionPurchaseInfoReceived_upvr (readonly)
		[3]: ErrorOccurred_upvr (readonly)
		[4]: PurchaseError_upvr (readonly)
		[5]: SetPromptState_upvr (readonly)
		[6]: PromptState_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, nil, function(arg1_2, arg2) -- Line 14
		--[[ Upvalues[6]:
			[1]: SubscriptionPurchaseInfoReceived_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ErrorOccurred_upvr (copied, readonly)
			[4]: PurchaseError_upvr (copied, readonly)
			[5]: SetPromptState_upvr (copied, readonly)
			[6]: PromptState_upvr (copied, readonly)
		]]
		arg1_2:dispatch(SubscriptionPurchaseInfoReceived_upvr(arg1))
		if arg1.CanPurchase == false then
			return arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.AlreadySubscribed))
		end
		return arg1_2:dispatch(SetPromptState_upvr(PromptState_upvr.PromptSubscriptionPurchase))
	end)
end