-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:57
-- Luau version 6, Types version 3
-- Time taken: 0.003031 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local Analytics_upvr = require(Parent.Services.Analytics)
local PromptState_upvr = require(Parent.Enums.PromptState)
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local launchPremiumUpsell_upvr = require(Parent.Thunks.launchPremiumUpsell)
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local IAPExperience = require(game:GetService("CorePackages").Workspace.Packages.IAPExperience)
local CheckUserPurchaseSettingsFailureReason_upvr = IAPExperience.Enums.CheckUserPurchaseSettingsFailureReason
local module_upvr = {Analytics_upvr, Network_upvr, ExternalSettings_upvr}
local mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr = IAPExperience.Utility.mapCheckUserPurchaseSettingsFailureReasonToViolationType
local EconomicRestrictionsViolationType_upvr = IAPExperience.Enums.EconomicRestrictionsViolationType
local SetEconomicRestrictionError_upvr = require(Parent.Actions.SetEconomicRestrictionError)
local function handleCheckUserSettingsResult_upvr(arg1, arg2, arg3) -- Line 37, Named "handleCheckUserSettingsResult"
	--[[ Upvalues[9]:
		[1]: ErrorOccurred_upvr (readonly)
		[2]: PurchaseError_upvr (readonly)
		[3]: mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr (readonly)
		[4]: EconomicRestrictionsViolationType_upvr (readonly)
		[5]: launchPremiumUpsell_upvr (readonly)
		[6]: CheckUserPurchaseSettingsFailureReason_upvr (readonly)
		[7]: SetPromptState_upvr (readonly)
		[8]: PromptState_upvr (readonly)
		[9]: SetEconomicRestrictionError_upvr (readonly)
	]]
	if arg1 == nil then
		return arg2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.UnknownFailure))
	end
	local var13_result1 = mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr(arg1.failureReason)
	local var17 = false
	if var13_result1 ~= EconomicRestrictionsViolationType_upvr.None then
		if arg1.expirationTimeInMinutes == nil then
			var17 = false
		else
			var17 = true
		end
	end
	local var18 = true
	if arg1.isEligible ~= nil then
		if arg1.failureReason ~= nil then
			var18 = false
		else
			var18 = true
		end
	end
	if var18 and not var17 then
		return arg2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.UnknownFailure))
	end
	if arg1.isEligible == true then
		return arg2:dispatch(launchPremiumUpsell_upvr())
	end
	if arg1.failureReason == CheckUserPurchaseSettingsFailureReason_upvr.PurchaseNotEnabled then
		arg3.signalUserSettingEligibilityModal(CheckUserPurchaseSettingsFailureReason_upvr.PurchaseNotEnabled)
		return arg2:dispatch(SetPromptState_upvr(PromptState_upvr.EnablePurchaseVPCModal))
	end
	if arg1.failureReason == CheckUserPurchaseSettingsFailureReason_upvr.SpendLimitExceeded then
		return arg2:dispatch(launchPremiumUpsell_upvr())
	end
	if var17 then
		arg3.signalEconomicRestrictionError(var13_result1, arg1.expirationTimeInMinutes)
		arg2:dispatch(SetEconomicRestrictionError_upvr(var13_result1, arg1.expirationTimeInMinutes))
		return arg2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.EconomicRestriction))
	end
	return arg2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.UnknownFailure))
end
local Thunk_upvr = require(Parent.Thunk)
local getPaymentPlatform_upvr = require(Parent.Utils.getPaymentPlatform)
local PaymentPlatform_upvr = require(Parent.Enums.PaymentPlatform)
local checkUserPurchaseSettings_upvr = require(Parent.Network.checkUserPurchaseSettings)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableEconomicRestrictionInExpPremiumUpsell", false)
return function() -- Line 73, Named "initiatePremiumPrecheck"
	--[[ Upvalues[16]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: ExternalSettings_upvr (readonly)
		[6]: launchPremiumUpsell_upvr (readonly)
		[7]: getPaymentPlatform_upvr (readonly)
		[8]: PaymentPlatform_upvr (readonly)
		[9]: checkUserPurchaseSettings_upvr (readonly)
		[10]: game_DefineFastFlag_result1_upvr (readonly)
		[11]: handleCheckUserSettingsResult_upvr (readonly)
		[12]: ErrorOccurred_upvr (readonly)
		[13]: PurchaseError_upvr (readonly)
		[14]: CheckUserPurchaseSettingsFailureReason_upvr (readonly)
		[15]: SetPromptState_upvr (readonly)
		[16]: PromptState_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1, arg2) -- Line 74
		--[[ Upvalues[14]:
			[1]: Network_upvr (copied, readonly)
			[2]: Analytics_upvr (copied, readonly)
			[3]: ExternalSettings_upvr (copied, readonly)
			[4]: launchPremiumUpsell_upvr (copied, readonly)
			[5]: getPaymentPlatform_upvr (copied, readonly)
			[6]: PaymentPlatform_upvr (copied, readonly)
			[7]: checkUserPurchaseSettings_upvr (copied, readonly)
			[8]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[9]: handleCheckUserSettingsResult_upvr (copied, readonly)
			[10]: ErrorOccurred_upvr (copied, readonly)
			[11]: PurchaseError_upvr (copied, readonly)
			[12]: CheckUserPurchaseSettingsFailureReason_upvr (copied, readonly)
			[13]: SetPromptState_upvr (copied, readonly)
			[14]: PromptState_upvr (copied, readonly)
		]]
		local var25 = arg2[ExternalSettings_upvr]
		if var25.isStudio() then
			return arg1:dispatch(launchPremiumUpsell_upvr())
		end
		if getPaymentPlatform_upvr(var25.getPlatform()) == PaymentPlatform_upvr.Web then
			return arg1:dispatch(launchPremiumUpsell_upvr())
		end
		local var27_upvr = arg2[Analytics_upvr]
		return checkUserPurchaseSettings_upvr(arg2[Network_upvr]):andThen(function(arg1_2) -- Line 91
			--[[ Upvalues[10]:
				[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[2]: handleCheckUserSettingsResult_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: var27_upvr (readonly)
				[5]: ErrorOccurred_upvr (copied, readonly)
				[6]: PurchaseError_upvr (copied, readonly)
				[7]: launchPremiumUpsell_upvr (copied, readonly)
				[8]: CheckUserPurchaseSettingsFailureReason_upvr (copied, readonly)
				[9]: SetPromptState_upvr (copied, readonly)
				[10]: PromptState_upvr (copied, readonly)
			]]
			if game_DefineFastFlag_result1_upvr then
				return handleCheckUserSettingsResult_upvr(arg1_2, arg1, var27_upvr)
			end
			if arg1_2 == nil or arg1_2.isEligible == nil or arg1_2.failureReason == nil then
				return arg1:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.UnknownFailure))
			end
			if arg1_2.isEligible == true then
				return arg1:dispatch(launchPremiumUpsell_upvr())
			end
			if arg1_2.failureReason == CheckUserPurchaseSettingsFailureReason_upvr.PurchaseNotEnabled then
				var27_upvr.signalUserSettingEligibilityModal(CheckUserPurchaseSettingsFailureReason_upvr.PurchaseNotEnabled)
				return arg1:dispatch(SetPromptState_upvr(PromptState_upvr.EnablePurchaseVPCModal))
			end
			if arg1_2.failureReason == CheckUserPurchaseSettingsFailureReason_upvr.SpendLimitExceeded then
				return arg1:dispatch(launchPremiumUpsell_upvr())
			end
			return arg1:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.UnknownFailure))
		end):catch(function(arg1_3) -- Line 117
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: ErrorOccurred_upvr (copied, readonly)
				[3]: PurchaseError_upvr (copied, readonly)
			]]
			return arg1:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.UnknownFailure))
		end)
	end)
end