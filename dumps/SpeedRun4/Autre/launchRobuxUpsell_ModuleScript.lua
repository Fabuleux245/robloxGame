-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:01
-- Luau version 6, Types version 3
-- Time taken: 0.001782 seconds

local Parent = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local Analytics_upvr = require(Parent.Services.Analytics)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local Network_upvr = require(Parent.Services.Network)
local PlatformInterface_upvr = require(Parent.Services.PlatformInterface)
local IAPExperience = require(CorePackages.Workspace.Packages.IAPExperience)
local module_upvr = {Analytics_upvr, ExternalSettings_upvr, Network_upvr, PlatformInterface_upvr}
local Thunk_upvr = require(Parent.Thunk)
local getUpsellFlow_upvr = require(Parent.NativeUpsell.getUpsellFlow)
local UpsellFlow_upvr = require(Parent.Enums.UpsellFlow)
local SelectedRobuxPackage_upvr = require(Parent.Utils.SelectedRobuxPackage)
local GetEnableConsolePreparePaymentCheck_upvr = IAPExperience.GetEnableConsolePreparePaymentCheck
local PreparePaymentCheck_upvr = IAPExperience.PreparePaymentCheck
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local PromptState_upvr = require(Parent.Enums.PromptState)
local postPurchaseWarningAcknowledge_upvr = require(Parent.Network.postPurchaseWarningAcknowledge)
local getAppFeaturePolicies_upvr = require(CorePackages.Workspace.Packages.UniversalAppPolicy).getAppFeaturePolicies
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local GetFStringVNGWebshopUrl_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringVNGWebshopUrl
local DesktopUpsellExperiment_upvr = require(Parent.Utils.DesktopUpsellExperiment)
local FFlagInExperiencePurchaseFlowRework_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagInExperiencePurchaseFlowRework
local Players_upvr = game:GetService("Players")
local Promise_upvr = require(Parent.Promise)
local Constants_upvr = require(Parent.Misc.Constants)
local retryAfterUpsell_upvr = require(script.Parent.retryAfterUpsell)
return function() -- Line 44, Named "launchRobuxUpsell"
	--[[ Upvalues[24]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: ExternalSettings_upvr (readonly)
		[5]: Network_upvr (readonly)
		[6]: PlatformInterface_upvr (readonly)
		[7]: getUpsellFlow_upvr (readonly)
		[8]: UpsellFlow_upvr (readonly)
		[9]: SelectedRobuxPackage_upvr (readonly)
		[10]: GetEnableConsolePreparePaymentCheck_upvr (readonly)
		[11]: PreparePaymentCheck_upvr (readonly)
		[12]: ErrorOccurred_upvr (readonly)
		[13]: PurchaseError_upvr (readonly)
		[14]: PromptState_upvr (readonly)
		[15]: postPurchaseWarningAcknowledge_upvr (readonly)
		[16]: getAppFeaturePolicies_upvr (readonly)
		[17]: SetPromptState_upvr (readonly)
		[18]: GetFStringVNGWebshopUrl_upvr (readonly)
		[19]: DesktopUpsellExperiment_upvr (readonly)
		[20]: FFlagInExperiencePurchaseFlowRework_upvr (readonly)
		[21]: Players_upvr (readonly)
		[22]: Promise_upvr (readonly)
		[23]: Constants_upvr (readonly)
		[24]: retryAfterUpsell_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1, arg2) -- Line 45
		--[[ Upvalues[22]:
			[1]: Analytics_upvr (copied, readonly)
			[2]: ExternalSettings_upvr (copied, readonly)
			[3]: Network_upvr (copied, readonly)
			[4]: PlatformInterface_upvr (copied, readonly)
			[5]: getUpsellFlow_upvr (copied, readonly)
			[6]: UpsellFlow_upvr (copied, readonly)
			[7]: SelectedRobuxPackage_upvr (copied, readonly)
			[8]: GetEnableConsolePreparePaymentCheck_upvr (copied, readonly)
			[9]: PreparePaymentCheck_upvr (copied, readonly)
			[10]: ErrorOccurred_upvr (copied, readonly)
			[11]: PurchaseError_upvr (copied, readonly)
			[12]: PromptState_upvr (copied, readonly)
			[13]: postPurchaseWarningAcknowledge_upvr (copied, readonly)
			[14]: getAppFeaturePolicies_upvr (copied, readonly)
			[15]: SetPromptState_upvr (copied, readonly)
			[16]: GetFStringVNGWebshopUrl_upvr (copied, readonly)
			[17]: DesktopUpsellExperiment_upvr (copied, readonly)
			[18]: FFlagInExperiencePurchaseFlowRework_upvr (copied, readonly)
			[19]: Players_upvr (copied, readonly)
			[20]: Promise_upvr (copied, readonly)
			[21]: Constants_upvr (copied, readonly)
			[22]: retryAfterUpsell_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local any_getState_result1 = arg1:getState()
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [22] 19. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [22] 19. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [27] 23. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [27] 23. Error Block 3 end (CF ANALYSIS FAILED)
	end)
end