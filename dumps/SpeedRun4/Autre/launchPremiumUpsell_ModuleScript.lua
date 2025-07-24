-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:00
-- Luau version 6, Types version 3
-- Time taken: 0.001510 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Services.Analytics)
local PlatformInterface_upvr = require(Parent.Services.PlatformInterface)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local module_upvr = {Analytics_upvr, PlatformInterface_upvr, ExternalSettings_upvr}
local Thunk_upvr = require(Parent.Thunk)
local PurchaseCompleteRecieved_upvr = require(Parent.Actions.PurchaseCompleteRecieved)
local SetWindowState_upvr = require(Parent.Actions.SetWindowState)
local WindowState_upvr = require(Parent.Enums.WindowState)
local getUpsellFlow_upvr = require(Parent.NativeUpsell.getUpsellFlow)
local UpsellFlow_upvr = require(Parent.Enums.UpsellFlow)
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local PromptState_upvr = require(Parent.Enums.PromptState)
local hideWindow_upvr = require(Parent.Thunks.hideWindow)
local Players_upvr = game:GetService("Players")
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
return function() -- Line 25, Named "launchPremiumUpsell"
	--[[ Upvalues[16]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: PlatformInterface_upvr (readonly)
		[4]: ExternalSettings_upvr (readonly)
		[5]: Analytics_upvr (readonly)
		[6]: PurchaseCompleteRecieved_upvr (readonly)
		[7]: SetWindowState_upvr (readonly)
		[8]: WindowState_upvr (readonly)
		[9]: getUpsellFlow_upvr (readonly)
		[10]: UpsellFlow_upvr (readonly)
		[11]: SetPromptState_upvr (readonly)
		[12]: PromptState_upvr (readonly)
		[13]: hideWindow_upvr (readonly)
		[14]: Players_upvr (readonly)
		[15]: ErrorOccurred_upvr (readonly)
		[16]: PurchaseError_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1, arg2) -- Line 26
		--[[ Upvalues[14]:
			[1]: PlatformInterface_upvr (copied, readonly)
			[2]: ExternalSettings_upvr (copied, readonly)
			[3]: Analytics_upvr (copied, readonly)
			[4]: PurchaseCompleteRecieved_upvr (copied, readonly)
			[5]: SetWindowState_upvr (copied, readonly)
			[6]: WindowState_upvr (copied, readonly)
			[7]: getUpsellFlow_upvr (copied, readonly)
			[8]: UpsellFlow_upvr (copied, readonly)
			[9]: SetPromptState_upvr (copied, readonly)
			[10]: PromptState_upvr (copied, readonly)
			[11]: hideWindow_upvr (copied, readonly)
			[12]: Players_upvr (copied, readonly)
			[13]: ErrorOccurred_upvr (copied, readonly)
			[14]: PurchaseError_upvr (copied, readonly)
		]]
		local var19 = arg2[PlatformInterface_upvr]
		local var20 = arg2[ExternalSettings_upvr]
		local premiumProductInfo = arg1:getState().premiumProductInfo
		if var20.isStudio() then
			var19.signalMockPurchasePremium()
			arg1:dispatch(PurchaseCompleteRecieved_upvr())
			return arg1:dispatch(SetWindowState_upvr(WindowState_upvr.Hidden))
		end
		local var10_result1 = getUpsellFlow_upvr(var20.getPlatform())
		arg2[Analytics_upvr].signalPremiumUpsellConfirmed()
		if var10_result1 == UpsellFlow_upvr.Web then
			var19.startPremiumUpsell(premiumProductInfo.productId)
			arg1:dispatch(SetPromptState_upvr(PromptState_upvr.UpsellInProgress))
			arg1:dispatch(hideWindow_upvr())
		else
			if var10_result1 == UpsellFlow_upvr.Mobile then
				if game:GetEngineFeature("NativePurchaseWithLocalPlayer") then
					var19.promptNativePurchaseWithLocalPlayer(premiumProductInfo.mobileProductId)
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var19.promptNativePurchase(Players_upvr.LocalPlayer, premiumProductInfo.mobileProductId)
				end
				arg1:dispatch(SetPromptState_upvr(PromptState_upvr.UpsellInProgress))
				arg1:dispatch(hideWindow_upvr())
				return
			end
			arg1:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.PremiumUnavailablePlatform))
		end
	end)
end