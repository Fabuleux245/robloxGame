-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:05
-- Luau version 6, Types version 3
-- Time taken: 0.001750 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Services.Analytics)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local Network_upvr = require(Parent.Services.Network)
local module_upvr = {Network_upvr, ExternalSettings_upvr, Analytics_upvr}
local Thunk_upvr = require(Parent.Thunk)
local PremiumInfoRecieved_upvr = require(Parent.Actions.PremiumInfoRecieved)
local AccountInfoReceived_upvr = require(Parent.Actions.AccountInfoReceived)
local BalanceInfoRecieved_upvr = require(Parent.Actions.BalanceInfoRecieved)
local completeRequest_upvr = require(Parent.Thunks.completeRequest)
local Players_upvr = game:GetService("Players")
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local postPremiumImpression_upvr = require(Parent.Network.postPremiumImpression)
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local PromptState_upvr = require(Parent.Enums.PromptState)
return function(arg1, arg2, arg3, arg4) -- Line 28, Named "resolvePremiumPromptState"
	--[[ Upvalues[15]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: ExternalSettings_upvr (readonly)
		[5]: Analytics_upvr (readonly)
		[6]: PremiumInfoRecieved_upvr (readonly)
		[7]: AccountInfoReceived_upvr (readonly)
		[8]: BalanceInfoRecieved_upvr (readonly)
		[9]: completeRequest_upvr (readonly)
		[10]: Players_upvr (readonly)
		[11]: ErrorOccurred_upvr (readonly)
		[12]: PurchaseError_upvr (readonly)
		[13]: postPremiumImpression_upvr (readonly)
		[14]: SetPromptState_upvr (readonly)
		[15]: PromptState_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 29
		--[[ Upvalues[17]:
			[1]: Network_upvr (copied, readonly)
			[2]: ExternalSettings_upvr (copied, readonly)
			[3]: Analytics_upvr (copied, readonly)
			[4]: PremiumInfoRecieved_upvr (copied, readonly)
			[5]: arg3 (readonly)
			[6]: AccountInfoReceived_upvr (copied, readonly)
			[7]: arg1 (readonly)
			[8]: BalanceInfoRecieved_upvr (copied, readonly)
			[9]: arg2 (readonly)
			[10]: arg4 (readonly)
			[11]: completeRequest_upvr (copied, readonly)
			[12]: Players_upvr (copied, readonly)
			[13]: ErrorOccurred_upvr (copied, readonly)
			[14]: PurchaseError_upvr (copied, readonly)
			[15]: postPremiumImpression_upvr (copied, readonly)
			[16]: SetPromptState_upvr (copied, readonly)
			[17]: PromptState_upvr (copied, readonly)
		]]
		local var18 = arg2_2[ExternalSettings_upvr]
		local var19 = arg2_2[Analytics_upvr]
		arg1_2:dispatch(PremiumInfoRecieved_upvr(arg3))
		arg1_2:dispatch(AccountInfoReceived_upvr(arg1))
		arg1_2:dispatch(BalanceInfoRecieved_upvr(arg2))
		if arg4 == false then
			var19.signalPremiumUpsellPrecheckFail()
			return arg1_2:dispatch(completeRequest_upvr())
		end
		if var18.isStudio() then
			if Players_upvr.LocalPlayer.MembershipType == Enum.MembershipType.Premium then
				do
					return arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.AlreadyPremium))
				end
				-- KONSTANTWARNING: GOTO [78] #61
			end
		elseif arg1.isPremium then
			var19.signalPremiumUpsellShownPremium()
			return arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.AlreadyPremium))
		end
		if var18.getPlatform() == Enum.Platform.XBoxOne then
			var19.signalPremiumUpsellInvalidPlatform()
			return arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.PremiumUnavailablePlatform))
		end
		if arg3 == nil then
			var19.signalPremiumUpsellInvalidProducts()
			return arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.PremiumUnavailable))
		end
		if not var18.isStudio() then
			var19.signalPremiumUpsellShownNonPremium()
			postPremiumImpression_upvr(arg2_2[Network_upvr])
		end
		return arg1_2:dispatch(SetPromptState_upvr(PromptState_upvr.PremiumUpsell))
	end)
end