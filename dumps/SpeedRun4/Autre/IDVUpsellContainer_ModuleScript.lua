-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:14
-- Luau version 6, Types version 3
-- Time taken: 0.007955 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local Enums = require(AmpUpsell.Common.Enums)
local IDVSessionStatusEnum_upvr = Enums.IDVSessionStatusEnum
local LocalizationStrings = require(AmpUpsell.Common.LocalizationStrings)
local RobloxAppHooks = require(Parent.RobloxAppHooks)
local function _(arg1) -- Line 42, Named "isFailure"
	--[[ Upvalues[1]:
		[1]: IDVSessionStatusEnum_upvr (readonly)
	]]
	local var9 = true
	if arg1 ~= IDVSessionStatusEnum_upvr.Failure then
		var9 = true
		if arg1 ~= IDVSessionStatusEnum_upvr.RequiresManualReview then
			var9 = true
			if arg1 ~= IDVSessionStatusEnum_upvr.RequiresRetry then
				if arg1 ~= IDVSessionStatusEnum_upvr.Expired then
					var9 = false
				else
					var9 = true
				end
			end
		end
	end
	return var9
end
local function _(arg1, arg2) -- Line 49, Named "getErrorDescription"
	--[[ Upvalues[1]:
		[1]: IDVSessionStatusEnum_upvr (readonly)
	]]
	if arg1 == IDVSessionStatusEnum_upvr.Failure or arg1 == IDVSessionStatusEnum_upvr.RequiresManualReview then
		return arg2.declined
	end
	if arg1 == IDVSessionStatusEnum_upvr.RequiresRetry then
		return arg2.retry
	end
	if arg1 == IDVSessionStatusEnum_upvr.Expired then
		return arg2.timeout
	end
	return arg2.retry
end
local IDVApiProvider_upvr = require(AmpUpsell.Common.IDVApiProvider)
local useDeviceType_upvr = RobloxAppHooks.useDeviceType
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local idvErrorScreenStrings_upvr = LocalizationStrings.idvErrorScreenStrings
local idvWithQRCodeUpsellStrings_upvr = LocalizationStrings.idvWithQRCodeUpsellStrings
local React_upvr = require(Parent.React)
local ActionStatusEnum_upvr = Enums.ActionStatusEnum
local GetFFlagEnableDirectLinkForTablets_upvr = require(AmpUpsell.Flags.GetFFlagEnableDirectLinkForTablets)
local DeviceType_upvr = require(Parent.RobloxAppEnums).DeviceType
local useRoactService_upvr = RobloxAppHooks.useRoactService
local AppLinking_upvr = require(Parent.RoactServiceTags).AppLinking
local AppScreens_upvr = require(AmpUpsell.Common.AppScreens)
local GetFStringBiometricPrivacyPolicyLink_upvr = require(AmpUpsell.Flags.GetFStringBiometricPrivacyPolicyLink)
local IDVStep_upvr = Enums.IDVStep
local var25_upvr = require(AmpUpsell.Flags.GetFIntIDVPollDelay)()
local var26_upvr = require(AmpUpsell.Flags.GetFIntIDVMaxRetries)()
local IDVErrorScreen_upvr = require(script.Parent.IDVErrorScreen)
local IDVDirectLinkUpsell_upvr = require(script.Parent.IDVDirectLinkUpsell)
local IDVWithQRCodeUpsell_upvr = require(script.Parent.IDVWithQRCodeUpsell)
return function(arg1) -- Line 61, Named "IDVUpsellContainer"
	--[[ Upvalues[21]:
		[1]: IDVApiProvider_upvr (readonly)
		[2]: useDeviceType_upvr (readonly)
		[3]: useNavigation_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: idvErrorScreenStrings_upvr (readonly)
		[6]: idvWithQRCodeUpsellStrings_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: ActionStatusEnum_upvr (readonly)
		[9]: GetFFlagEnableDirectLinkForTablets_upvr (readonly)
		[10]: DeviceType_upvr (readonly)
		[11]: useRoactService_upvr (readonly)
		[12]: AppLinking_upvr (readonly)
		[13]: AppScreens_upvr (readonly)
		[14]: GetFStringBiometricPrivacyPolicyLink_upvr (readonly)
		[15]: IDVSessionStatusEnum_upvr (readonly)
		[16]: IDVStep_upvr (readonly)
		[17]: var25_upvr (readonly)
		[18]: var26_upvr (readonly)
		[19]: IDVErrorScreen_upvr (readonly)
		[20]: IDVDirectLinkUpsell_upvr (readonly)
		[21]: IDVWithQRCodeUpsell_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local featureName = arg1.featureName
	local var31
	if var31 then
		local idvApiProvider = arg1.idvApiProvider
	else
	end
	var31 = arg1.deviceType
	if not var31 then
		var31 = useDeviceType_upvr()
	end
	local useLocalization_upvr_result1_upvr = useLocalization_upvr(idvErrorScreenStrings_upvr)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(nil)
	local any_useState_result1_5_upvr, any_useState_result2_upvr_2 = React_upvr.useState(true)
	local any_useState_result1_3_upvr, any_useState_result2_upvr_6 = React_upvr.useState(ActionStatusEnum_upvr.Unknown)
	local any_useState_result1_4, any_useState_result2_upvr_4 = React_upvr.useState(false)
	local any_useState_result1_2, any_useState_result2_upvr_3 = React_upvr.useState(useLocalization_upvr_result1_upvr.retry)
	local any_useState_result1_6, any_useState_result2_upvr_5 = React_upvr.useState(0)
	if not GetFFlagEnableDirectLinkForTablets_upvr() or var31 ~= DeviceType_upvr.Tablet then
		if var31 ~= DeviceType_upvr.Phone then
		else
		end
	end
	if not arg1.openIdvLink then
		local useRoactService_upvr_result1_upvr = useRoactService_upvr(AppLinking_upvr)
	end
	local var12_result1_upvr = useNavigation_upvr()
	local useLocalization_upvr_result1_upvr_2 = useLocalization_upvr(idvWithQRCodeUpsellStrings_upvr)
	local function var48() -- Line 85
		--[[ Upvalues[4]:
			[1]: var12_result1_upvr (readonly)
			[2]: AppScreens_upvr (copied, readonly)
			[3]: GetFStringBiometricPrivacyPolicyLink_upvr (copied, readonly)
			[4]: useLocalization_upvr_result1_upvr_2 (readonly)
		]]
		var12_result1_upvr.navigate(AppScreens_upvr.GenericWebPage, {
			detail = GetFStringBiometricPrivacyPolicyLink_upvr();
			extraProps = {
				title = useLocalization_upvr_result1_upvr_2.privacyPageHeader;
				transitionAnimation = "SlideInFromBottom";
			};
		})
	end
	local function updateChecklist_upvr(arg1_3) -- Line 95, Named "updateChecklist"
		--[[ Upvalues[3]:
			[1]: IDVSessionStatusEnum_upvr (copied, readonly)
			[2]: any_useState_result2_upvr_5 (readonly)
			[3]: IDVStep_upvr (copied, readonly)
		]]
		if arg1_3 == IDVSessionStatusEnum_upvr.Stored then
			any_useState_result2_upvr_5(IDVStep_upvr.UpdatedRobloxProfile)
		else
			if arg1_3 == IDVSessionStatusEnum_upvr.Success then
				any_useState_result2_upvr_5(IDVStep_upvr.Verified)
				return
			end
			if arg1_3 == IDVSessionStatusEnum_upvr.Submitted then
				any_useState_result2_upvr_5(IDVStep_upvr.GotResults)
				return
			end
			if arg1_3 == IDVSessionStatusEnum_upvr.Started then
				any_useState_result2_upvr_5(IDVStep_upvr.ConnectedMobile)
			end
		end
	end
	local function pollIDVStatus_upvr(arg1_4, arg2) -- Line 109, Named "pollIDVStatus"
		--[[ Upvalues[11]:
			[1]: any_useState_result2_upvr_4 (readonly)
			[2]: any_useState_result2_upvr_3 (readonly)
			[3]: useLocalization_upvr_result1_upvr (readonly)
			[4]: IDVApiProvider_upvr (readonly)
			[5]: updateChecklist_upvr (readonly)
			[6]: IDVSessionStatusEnum_upvr (copied, readonly)
			[7]: any_useState_result2_upvr_6 (readonly)
			[8]: ActionStatusEnum_upvr (copied, readonly)
			[9]: var25_upvr (copied, readonly)
			[10]: any_useState_result1_5_upvr (readonly)
			[11]: pollIDVStatus_upvr (readonly)
		]]
		if arg2 == 0 then
			any_useState_result2_upvr_4(true)
			any_useState_result2_upvr_3(useLocalization_upvr_result1_upvr.timeout)
		else
			IDVApiProvider_upvr.getVerifiedStatus(arg1_4):andThen(function(arg1_5) -- Line 116
				--[[ Upvalues[11]:
					[1]: updateChecklist_upvr (copied, readonly)
					[2]: IDVSessionStatusEnum_upvr (copied, readonly)
					[3]: any_useState_result2_upvr_6 (copied, readonly)
					[4]: ActionStatusEnum_upvr (copied, readonly)
					[5]: any_useState_result2_upvr_3 (copied, readonly)
					[6]: useLocalization_upvr_result1_upvr (copied, readonly)
					[7]: var25_upvr (copied, readonly)
					[8]: any_useState_result1_5_upvr (copied, readonly)
					[9]: pollIDVStatus_upvr (copied, readonly)
					[10]: arg1_4 (readonly)
					[11]: arg2 (readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				local sessionStatus_2 = arg1_5.sessionStatus
				updateChecklist_upvr(sessionStatus_2)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [13] 10. Error Block 3 start (CF ANALYSIS FAILED)
				any_useState_result2_upvr_6(ActionStatusEnum_upvr.Success)
				do
					return
				end
				-- KONSTANTERROR: [13] 10. Error Block 3 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [19] 15. Error Block 4 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [19] 15. Error Block 4 end (CF ANALYSIS FAILED)
			end):catch(function(arg1_6) -- Line 135
				--[[ Upvalues[3]:
					[1]: any_useState_result2_upvr_4 (copied, readonly)
					[2]: any_useState_result2_upvr_3 (copied, readonly)
					[3]: useLocalization_upvr_result1_upvr (copied, readonly)
				]]
				any_useState_result2_upvr_4(true)
				any_useState_result2_upvr_3(useLocalization_upvr_result1_upvr.retry)
			end)
		end
	end
	React_upvr.useEffect(function() -- Line 142
		--[[ Upvalues[8]:
			[1]: any_useState_result2_upvr_2 (readonly)
			[2]: IDVApiProvider_upvr (readonly)
			[3]: pollIDVStatus_upvr (readonly)
			[4]: var26_upvr (copied, readonly)
			[5]: any_useState_result2_upvr (readonly)
			[6]: any_useState_result2_upvr_4 (readonly)
			[7]: any_useState_result2_upvr_3 (readonly)
			[8]: useLocalization_upvr_result1_upvr (readonly)
		]]
		any_useState_result2_upvr_2(true)
		IDVApiProvider_upvr.startVerification():andThen(function(arg1_7) -- Line 146
			--[[ Upvalues[3]:
				[1]: pollIDVStatus_upvr (copied, readonly)
				[2]: var26_upvr (copied, readonly)
				[3]: any_useState_result2_upvr (copied, readonly)
			]]
			pollIDVStatus_upvr(arg1_7.sessionIdentifier, var26_upvr)
			any_useState_result2_upvr(arg1_7.verificationLink)
		end):catch(function(arg1_8) -- Line 151
			--[[ Upvalues[3]:
				[1]: any_useState_result2_upvr_4 (copied, readonly)
				[2]: any_useState_result2_upvr_3 (copied, readonly)
				[3]: useLocalization_upvr_result1_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_4(true)
			any_useState_result2_upvr_3(useLocalization_upvr_result1_upvr.retry)
		end)
		return function() -- Line 156
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (copied, readonly)
			]]
			any_useState_result2_upvr_2(false)
		end
	end, {})
	local onSuccess_upvr = arg1.onSuccess
	local onCancelled_upvr = arg1.onCancelled
	React_upvr.useEffect(function() -- Line 162
		--[[ Upvalues[5]:
			[1]: any_useState_result1_3_upvr (readonly)
			[2]: ActionStatusEnum_upvr (copied, readonly)
			[3]: onSuccess_upvr (readonly)
			[4]: onCancelled_upvr (readonly)
			[5]: any_useState_result2_upvr_4 (readonly)
		]]
		if any_useState_result1_3_upvr == ActionStatusEnum_upvr.Success then
			onSuccess_upvr()
		else
			if any_useState_result1_3_upvr == ActionStatusEnum_upvr.Cancelled then
				onCancelled_upvr()
				return
			end
			if any_useState_result1_3_upvr == ActionStatusEnum_upvr.Failure then
				any_useState_result2_upvr_4(true)
			end
		end
	end, {any_useState_result1_3_upvr})
	if any_useState_result1_4 then
		local module = {
			errorTitle = useLocalization_upvr_result1_upvr.title;
			errorDescription = any_useState_result1_2;
			buttonText = useLocalization_upvr_result1_upvr.close;
		}
		local onFailure_upvr = arg1.onFailure
		local function onClose() -- Line 177
			--[[ Upvalues[1]:
				[1]: onFailure_upvr (readonly)
			]]
			onFailure_upvr()
		end
		module.onClose = onClose
		return React_upvr.createElement(IDVErrorScreen_upvr, module)
	end
	if true then
		local module_2 = {
			featureName = featureName;
			idvLink = any_useState_result1;
			openIdvLink = function(arg1_2) -- Line 81
				--[[ Upvalues[1]:
					[1]: useRoactService_upvr_result1_upvr (readonly)
				]]
				useRoactService_upvr_result1_upvr:openURL(arg1_2)
			end;
		}
		local function onClose() -- Line 187
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_6 (readonly)
				[2]: ActionStatusEnum_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_6(ActionStatusEnum_upvr.Cancelled)
		end
		module_2.onClose = onClose
		module_2.openPrivacyPolicyLink = var48
		module_2.latestStepCompleted = any_useState_result1_6
		return React_upvr.createElement(IDVDirectLinkUpsell_upvr, module_2)
	end
	return React_upvr.createElement(IDVWithQRCodeUpsell_upvr, {
		qrCodeLink = any_useState_result1;
		featureName = featureName;
		openPrivacyPolicyLink = var48;
		latestStepCompleted = any_useState_result1_6;
		onClose = function() -- Line 199, Named "onClose"
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_6 (readonly)
				[2]: ActionStatusEnum_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_6(ActionStatusEnum_upvr.Cancelled)
		end;
	})
end