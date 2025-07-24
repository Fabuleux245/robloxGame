-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:00
-- Luau version 6, Types version 3
-- Time taken: 0.005597 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local Analytics_upvr = require(Parent.Services.Analytics)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local IAPExperience = require(game:GetService("CorePackages").Workspace.Packages.IAPExperience)
local mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr = IAPExperience.Utility.mapCheckUserPurchaseSettingsFailureReasonToViolationType
local EconomicRestrictionsViolationType_upvr = IAPExperience.Enums.EconomicRestrictionsViolationType
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableEconomicRestrictionsInExpUpsell", false)
local module_upvr = {Analytics_upvr, Network_upvr, ExternalSettings_upvr}
local function _(arg1) -- Line 32, Named "validateResult"
	--[[ Upvalues[3]:
		[1]: mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: EconomicRestrictionsViolationType_upvr (readonly)
	]]
	if arg1 == nil then
		return false
	end
	local var11 = true
	if arg1.isEligible ~= nil then
		if arg1.failureReason ~= nil then
			var11 = false
		else
			var11 = true
		end
	end
	if game_DefineFastFlag_result1_upvr then
		if mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr(arg1.failureReason) ~= EconomicRestrictionsViolationType_upvr.None then
			if arg1.expirationTimeInMinutes == nil then
			else
			end
		end
	end
	if var11 and not true then
		return false
	end
	return true
end
local Thunk_upvr = require(Parent.Thunk)
local initiatePurchasePrecheck_upvr = require(Parent.Thunks.initiatePurchasePrecheck)
local getUpsellFlow_upvr = require(Parent.NativeUpsell.getUpsellFlow)
local UpsellFlow_upvr = require(Parent.Enums.UpsellFlow)
local checkUserPurchaseSettings_upvr = require(Parent.Network.checkUserPurchaseSettings)
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local CheckUserPurchaseSettingsFailureReason_upvr = IAPExperience.Enums.CheckUserPurchaseSettingsFailureReason
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local PromptState_upvr = require(Parent.Enums.PromptState)
local SetEconomicRestrictionError_upvr = require(Parent.Actions.SetEconomicRestrictionError)
return function() -- Line 55, Named "initiateUserPurchaseSettingsPrecheck"
	--[[ Upvalues[18]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: ExternalSettings_upvr (readonly)
		[6]: initiatePurchasePrecheck_upvr (readonly)
		[7]: getUpsellFlow_upvr (readonly)
		[8]: UpsellFlow_upvr (readonly)
		[9]: checkUserPurchaseSettings_upvr (readonly)
		[10]: mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr (readonly)
		[11]: game_DefineFastFlag_result1_upvr (readonly)
		[12]: EconomicRestrictionsViolationType_upvr (readonly)
		[13]: ErrorOccurred_upvr (readonly)
		[14]: PurchaseError_upvr (readonly)
		[15]: CheckUserPurchaseSettingsFailureReason_upvr (readonly)
		[16]: SetPromptState_upvr (readonly)
		[17]: PromptState_upvr (readonly)
		[18]: SetEconomicRestrictionError_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1, arg2) -- Line 56
		--[[ Upvalues[16]:
			[1]: Network_upvr (copied, readonly)
			[2]: Analytics_upvr (copied, readonly)
			[3]: ExternalSettings_upvr (copied, readonly)
			[4]: initiatePurchasePrecheck_upvr (copied, readonly)
			[5]: getUpsellFlow_upvr (copied, readonly)
			[6]: UpsellFlow_upvr (copied, readonly)
			[7]: checkUserPurchaseSettings_upvr (copied, readonly)
			[8]: mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr (copied, readonly)
			[9]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[10]: EconomicRestrictionsViolationType_upvr (copied, readonly)
			[11]: ErrorOccurred_upvr (copied, readonly)
			[12]: PurchaseError_upvr (copied, readonly)
			[13]: CheckUserPurchaseSettingsFailureReason_upvr (copied, readonly)
			[14]: SetPromptState_upvr (copied, readonly)
			[15]: PromptState_upvr (copied, readonly)
			[16]: SetEconomicRestrictionError_upvr (copied, readonly)
		]]
		local var24 = arg2[ExternalSettings_upvr]
		if var24.isStudio() then
			return arg1:dispatch(initiatePurchasePrecheck_upvr())
		end
		if getUpsellFlow_upvr(var24.getPlatform()) == UpsellFlow_upvr.Web then
			return arg1:dispatch(initiatePurchasePrecheck_upvr())
		end
		local var26_upvr = arg2[Analytics_upvr]
		return checkUserPurchaseSettings_upvr(arg2[Network_upvr]):andThen(function(arg1_2) -- Line 75
			--[[ Upvalues[12]:
				[1]: mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr (copied, readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: EconomicRestrictionsViolationType_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: ErrorOccurred_upvr (copied, readonly)
				[6]: PurchaseError_upvr (copied, readonly)
				[7]: initiatePurchasePrecheck_upvr (copied, readonly)
				[8]: CheckUserPurchaseSettingsFailureReason_upvr (copied, readonly)
				[9]: var26_upvr (readonly)
				[10]: SetPromptState_upvr (copied, readonly)
				[11]: PromptState_upvr (copied, readonly)
				[12]: SetEconomicRestrictionError_upvr (copied, readonly)
			]]
			if arg1_2 == nil then
			else
				local var27 = true
				if arg1_2.isEligible ~= nil then
					if arg1_2.failureReason ~= nil then
						var27 = false
					else
						var27 = true
					end
				end
				if game_DefineFastFlag_result1_upvr then
					if mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr(arg1_2.failureReason) ~= EconomicRestrictionsViolationType_upvr.None then
						if arg1_2.expirationTimeInMinutes == nil then
						else
						end
					end
				end
				if var27 and not true then
				else
				end
			end
			if true == false then
				return arg1:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.UnknownFailure))
			end
			if arg1_2.isEligible == true then
				return arg1:dispatch(initiatePurchasePrecheck_upvr())
			end
			local mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr_result1 = mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr(arg1_2.failureReason)
			if mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr_result1 == EconomicRestrictionsViolationType_upvr.None then
			else
			end
			if arg1_2.failureReason == CheckUserPurchaseSettingsFailureReason_upvr.PurchaseNotEnabled then
				var26_upvr.signalUserSettingEligibilityModal("PurchaseNotEnabled")
				return arg1:dispatch(SetPromptState_upvr(PromptState_upvr.EnablePurchaseVPCModal))
			end
			if arg1_2.failureReason == CheckUserPurchaseSettingsFailureReason_upvr.SpendLimitExceeded then
				return arg1:dispatch(initiatePurchasePrecheck_upvr())
			end
			if true and game_DefineFastFlag_result1_upvr and arg1_2.expirationTimeInMinutes ~= nil then
				var26_upvr.signalEconomicRestrictionError(mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr_result1, arg1_2.expirationTimeInMinutes)
				arg1:dispatch(SetEconomicRestrictionError_upvr(mapCheckUserPurchaseSettingsFailureReasonToViolationType_upvr_result1, arg1_2.expirationTimeInMinutes))
				return arg1:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.EconomicRestriction))
			end
			return arg1:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.UnknownFailure))
		end):catch(function(arg1_3) -- Line 106
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: ErrorOccurred_upvr (copied, readonly)
				[3]: PurchaseError_upvr (copied, readonly)
			]]
			return arg1:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.UnknownFailure))
		end)
	end)
end