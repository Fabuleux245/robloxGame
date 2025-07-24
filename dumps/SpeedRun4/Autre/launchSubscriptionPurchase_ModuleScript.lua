-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:01
-- Luau version 6, Types version 3
-- Time taken: 0.001734 seconds

local Parent = script.Parent.Parent
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local Network_upvr = require(Parent.Services.Network)
local module_upvr = {ExternalSettings_upvr, Network_upvr}
local Thunk_upvr = require(Parent.Thunk)
local PurchaseCompleteRecieved_upvr = require(Parent.Actions.PurchaseCompleteRecieved)
local hideWindow_upvr = require(Parent.Thunks.hideWindow)
local performSubscriptionPurchase_upvr = require(Parent.Network.performSubscriptionPurchase)
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local PromptState_upvr = require(Parent.Enums.PromptState)
return function(arg1) -- Line 19, Named "launchSubscriptionPurchase"
	--[[ Upvalues[10]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: ExternalSettings_upvr (readonly)
		[4]: Network_upvr (readonly)
		[5]: PurchaseCompleteRecieved_upvr (readonly)
		[6]: hideWindow_upvr (readonly)
		[7]: performSubscriptionPurchase_upvr (readonly)
		[8]: ErrorOccurred_upvr (readonly)
		[9]: SetPromptState_upvr (readonly)
		[10]: PromptState_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2) -- Line 20
		--[[ Upvalues[9]:
			[1]: ExternalSettings_upvr (copied, readonly)
			[2]: Network_upvr (copied, readonly)
			[3]: PurchaseCompleteRecieved_upvr (copied, readonly)
			[4]: hideWindow_upvr (copied, readonly)
			[5]: performSubscriptionPurchase_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: ErrorOccurred_upvr (copied, readonly)
			[8]: SetPromptState_upvr (copied, readonly)
			[9]: PromptState_upvr (copied, readonly)
		]]
		if arg2[ExternalSettings_upvr].isStudio() then
			arg1_2:dispatch(PurchaseCompleteRecieved_upvr())
			arg1_2:dispatch(hideWindow_upvr())
			return nil
		end
		performSubscriptionPurchase_upvr(arg2[Network_upvr], arg1_2:getState().promptRequest.id, arg1):catch(function(arg1_3) -- Line 31
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: ErrorOccurred_upvr (copied, readonly)
			]]
			arg1_2:dispatch(ErrorOccurred_upvr(arg1_3))
		end)
		arg1_2:dispatch(SetPromptState_upvr(PromptState_upvr.UpsellInProgress))
		arg1_2:dispatch(hideWindow_upvr())
		return nil
	end)
end