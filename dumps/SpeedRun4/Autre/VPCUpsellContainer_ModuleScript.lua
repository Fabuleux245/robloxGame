-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:18
-- Luau version 6, Types version 3
-- Time taken: 0.007618 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local Enums = require(AmpUpsell.Common.Enums)
local AuthAnalytics = require(Parent.AuthAnalytics)
local VPCApiProvider_upvr = require(AmpUpsell.Common.VPCApiProvider)
local AmpApiProvider_upvr = require(AmpUpsell.Common.AmpApiProvider)
local GetFFlagEnableExternalBrowserForVPCPrivacyPolicy_upvr = require(AmpUpsell.Flags.GetFFlagEnableExternalBrowserForVPCPrivacyPolicy)
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local AppLinking_upvr = require(Parent.RoactServiceTags).AppLinking
local React_upvr = require(Parent.React)
local GetFFlagUseDecomposedVPCForChargebacks_upvr = require(Parent.SharedFlags).GetFFlagUseDecomposedVPCForChargebacks
local ActionTypeEnum_upvr = Enums.ActionTypeEnum
local VPCStepEnum_upvr = Enums.VPCStepEnum
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local vpcUpsellGatherEmailStrings_upvr = require(AmpUpsell.Common.LocalizationStrings).vpcUpsellGatherEmailStrings
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local ArgCheck_upvr = require(Parent.ArgCheck)
local GetFStringPrivacyPolicyLink_upvr = require(AmpUpsell.Flags.GetFStringPrivacyPolicyLink)
local AppScreens_upvr = require(AmpUpsell.Common.AppScreens)
local isStringEmail_upvr = require(Parent.AuthCommon).Utils.isStringEmail
local AccessResponseEnum_upvr = Enums.AccessResponseEnum
local authMsgShown_upvr = AuthAnalytics.Events.authMsgShown
local vpcEventConstants_upvr = require(AmpUpsell.Common.EventConstants).vpcEventConstants
local VPCConfirmationScreen_upvr = require(script.Parent.VPCConfirmationScreen)
local vpcConfirmationScreenStrings_upvr = require(AmpUpsell.Common.LocalizationStrings).vpcConfirmationScreenStrings
local authButtonClick_upvr = AuthAnalytics.Events.authButtonClick
local VPCNewParentUpsell_upvr = require(script.Parent.VPCNewParentUpsell)
local authFormInteraction_upvr = AuthAnalytics.Events.authFormInteraction
local VPCErrorScreen_upvr = require(script.Parent.VPCErrorScreen)
return function(arg1) -- Line 47, Named "VPCUpsellContainer"
	--[[ Upvalues[26]:
		[1]: VPCApiProvider_upvr (readonly)
		[2]: AmpApiProvider_upvr (readonly)
		[3]: GetFFlagEnableExternalBrowserForVPCPrivacyPolicy_upvr (readonly)
		[4]: useAppPolicy_upvr (readonly)
		[5]: useRoactService_upvr (readonly)
		[6]: AppLinking_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: GetFFlagUseDecomposedVPCForChargebacks_upvr (readonly)
		[9]: ActionTypeEnum_upvr (readonly)
		[10]: VPCStepEnum_upvr (readonly)
		[11]: useLocalization_upvr (readonly)
		[12]: vpcUpsellGatherEmailStrings_upvr (readonly)
		[13]: useNavigation_upvr (readonly)
		[14]: ArgCheck_upvr (readonly)
		[15]: GetFStringPrivacyPolicyLink_upvr (readonly)
		[16]: AppScreens_upvr (readonly)
		[17]: isStringEmail_upvr (readonly)
		[18]: AccessResponseEnum_upvr (readonly)
		[19]: authMsgShown_upvr (readonly)
		[20]: vpcEventConstants_upvr (readonly)
		[21]: VPCConfirmationScreen_upvr (readonly)
		[22]: vpcConfirmationScreenStrings_upvr (readonly)
		[23]: authButtonClick_upvr (readonly)
		[24]: VPCNewParentUpsell_upvr (readonly)
		[25]: authFormInteraction_upvr (readonly)
		[26]: VPCErrorScreen_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 55 start (CF ANALYSIS FAILED)
	local onCancel_2_upvr = arg1.onCancel
	local onSuccess_2_upvr = arg1.onSuccess
	local var33_upvw
	if arg1.vpcApiProvider then
		local _ = arg1.vpcApiProvider
	else
	end
	if arg1.ampApiProvider then
		-- KONSTANTWARNING: GOTO [18] #13
	end
	-- KONSTANTERROR: [0] 1. Error Block 55 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 12. Error Block 61 start (CF ANALYSIS FAILED)
	local recourseAction_upvr = arg1.recourseAction
	local recourseData_upvr = arg1.recourseData
	if arg1.entryPointEventCtx then
		local entryPointEventCtx = arg1.entryPointEventCtx
	else
	end
	local parentConsentTypes_upvr = arg1.parentConsentTypes
	var33_upvw = false
	if GetFFlagEnableExternalBrowserForVPCPrivacyPolicy_upvr() then
		var33_upvw = useAppPolicy_upvr(function(arg1_2) -- Line 60
			return arg1_2.shouldUseExternalBrowserForDisclaimerLinks()
		end)
	end
	local var40 = React_upvr
	if GetFFlagUseDecomposedVPCForChargebacks_upvr() then
		if recourseAction_upvr == ActionTypeEnum_upvr.ParentLink then
			var40 = VPCStepEnum_upvr.NewParentLoading
		else
			var40 = VPCStepEnum_upvr.AlreadyLinkedSendRequest
		end
	elseif recourseAction_upvr == ActionTypeEnum_upvr.ParentLink then
		var40 = VPCStepEnum_upvr.NewParentCollectEmail
	else
		var40 = VPCStepEnum_upvr.AlreadyLinkedSendRequest
	end
	local any_useState_result1_6, any_useState_result2_upvr_5 = var40.useState(var40)
	local any_useState_result1_4, any_useState_result2_upvr_8 = React_upvr.useState("Unknown")
	local any_useState_result1_8, any_useState_result2_upvr_3 = React_upvr.useState({})
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(true)
	local var15_result1_upvr = useLocalization_upvr(vpcUpsellGatherEmailStrings_upvr)
	local any_useState_result1_3, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_5, any_useState_result2_upvr_4 = React_upvr.useState("")
	local any_useState_result1_7, any_useState_result2_upvr_6 = React_upvr.useState("")
	local function _(arg1_3, arg2) -- Line 86, Named "openExternalBrowser"
		--[[ Upvalues[1]:
			[1]: ArgCheck_upvr (copied, readonly)
		]]
		ArgCheck_upvr.isNotNil(arg1_3, "linking")
		ArgCheck_upvr.isType(arg2, "string", "url")
		arg1_3:openURL(arg2)
	end
	local useRoactService_upvr_result1_upvw = useRoactService_upvr(AppLinking_upvr)
	local var17_result1_upvr = useNavigation_upvr()
	local function handleEmailInput_upvr(arg1_4) -- Line 107, Named "handleEmailInput"
		--[[ Upvalues[5]:
			[1]: any_useState_result2_upvr_4 (readonly)
			[2]: isStringEmail_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: any_useState_result2_upvr_6 (readonly)
			[5]: var15_result1_upvr (readonly)
		]]
		any_useState_result2_upvr_4(arg1_4)
		if isStringEmail_upvr(arg1_4) then
			any_useState_result2_upvr(true)
			any_useState_result2_upvr_6("")
		else
			any_useState_result2_upvr(false)
			if arg1_4 == "" then
				any_useState_result2_upvr_6("")
				return
			end
			any_useState_result2_upvr_6(var15_result1_upvr.errorText)
		end
	end
	local any_useState_result1_2_upvr, any_useState_result2_upvr_7 = React_upvr.useState(0)
	local function onRetryVPC() -- Line 125
		--[[ Upvalues[9]:
			[1]: any_useState_result2_upvr_7 (readonly)
			[2]: any_useState_result1_2_upvr (readonly)
			[3]: any_useState_result2_upvr_3 (readonly)
			[4]: any_useState_result2_upvr_8 (readonly)
			[5]: handleEmailInput_upvr (readonly)
			[6]: any_useState_result2_upvr_5 (readonly)
			[7]: recourseAction_upvr (readonly)
			[8]: ActionTypeEnum_upvr (copied, readonly)
			[9]: VPCStepEnum_upvr (copied, readonly)
		]]
		any_useState_result2_upvr_7(any_useState_result1_2_upvr + 1)
		any_useState_result2_upvr_3({})
		any_useState_result2_upvr_8("Unknown")
		local var65 = ""
		handleEmailInput_upvr(var65)
		if recourseAction_upvr == ActionTypeEnum_upvr.ParentLink then
			var65 = VPCStepEnum_upvr.NewParentCollectEmail
		else
			var65 = VPCStepEnum_upvr.AlreadyLinkedSendRequest
		end
		any_useState_result2_upvr_5(var65)
	end
	local function getLinkedParentEmailsAndSendRequestToAllParents_upvr() -- Line 137, Named "getLinkedParentEmailsAndSendRequestToAllParents"
		--[[ Upvalues[7]:
			[1]: VPCApiProvider_upvr (readonly)
			[2]: any_useState_result2_upvr_3 (readonly)
			[3]: parentConsentTypes_upvr (readonly)
			[4]: recourseData_upvr (readonly)
			[5]: any_useState_result2_upvr_5 (readonly)
			[6]: VPCStepEnum_upvr (copied, readonly)
			[7]: any_useState_result2_upvr_8 (readonly)
		]]
		VPCApiProvider_upvr.getLinkedParentEmails():andThen(function(arg1_5) -- Line 140
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_3 (copied, readonly)
			]]
			any_useState_result2_upvr_3(arg1_5.parentEmails)
		end):catch(function(arg1_6) -- Line 143
		end)
		VPCApiProvider_upvr.sendRequestToAllParents(parentConsentTypes_upvr, recourseData_upvr):andThen(function(arg1_7) -- Line 147
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_5 (copied, readonly)
				[2]: VPCStepEnum_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_5(VPCStepEnum_upvr.RequestSent)
		end):catch(function(arg1_8) -- Line 150
			--[[ Upvalues[3]:
				[1]: any_useState_result2_upvr_8 (copied, readonly)
				[2]: any_useState_result2_upvr_5 (copied, readonly)
				[3]: VPCStepEnum_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_8(arg1_8.code)
			any_useState_result2_upvr_5(VPCStepEnum_upvr.Error)
		end)
	end
	local function sendRequestToNewParent_upvr(arg1_9) -- Line 156, Named "sendRequestToNewParent"
		--[[ Upvalues[6]:
			[1]: VPCApiProvider_upvr (readonly)
			[2]: parentConsentTypes_upvr (readonly)
			[3]: recourseData_upvr (readonly)
			[4]: any_useState_result2_upvr_5 (readonly)
			[5]: VPCStepEnum_upvr (copied, readonly)
			[6]: any_useState_result2_upvr_8 (readonly)
		]]
		VPCApiProvider_upvr.sendRequestToNewParent(arg1_9, parentConsentTypes_upvr, recourseData_upvr):andThen(function(arg1_10) -- Line 159
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_5 (copied, readonly)
				[2]: VPCStepEnum_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_5(VPCStepEnum_upvr.RequestSent)
		end):catch(function(arg1_11) -- Line 162
			--[[ Upvalues[3]:
				[1]: any_useState_result2_upvr_8 (copied, readonly)
				[2]: any_useState_result2_upvr_5 (copied, readonly)
				[3]: VPCStepEnum_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_8(arg1_11.code)
			any_useState_result2_upvr_5(VPCStepEnum_upvr.Error)
		end)
	end
	local function getIsChildSubjectToParentalControls_upvr() -- Line 168, Named "getIsChildSubjectToParentalControls"
		--[[ Upvalues[5]:
			[1]: AmpApiProvider_upvr (readonly)
			[2]: AccessResponseEnum_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
			[4]: any_useState_result2_upvr_5 (readonly)
			[5]: VPCStepEnum_upvr (copied, readonly)
		]]
		local any_getFeatureAccess_result1 = AmpApiProvider_upvr.getFeatureAccess({"IsChildSubjectToParentalControls"})
		local var74
		if any_getFeatureAccess_result1.featureAccessList and any_getFeatureAccess_result1.featureAccessList[1] then
			if any_getFeatureAccess_result1.featureAccessList[1].access == AccessResponseEnum_upvr.Denied then
				var74 = false
			else
				var74 = true
			end
		end
		any_useState_result2_upvr_2(var74)
		any_useState_result2_upvr_5(VPCStepEnum_upvr.NewParentCollectEmail)
	end
	React_upvr.useEffect(function() -- Line 178
		--[[ Upvalues[5]:
			[1]: recourseAction_upvr (readonly)
			[2]: ActionTypeEnum_upvr (copied, readonly)
			[3]: getLinkedParentEmailsAndSendRequestToAllParents_upvr (readonly)
			[4]: GetFFlagUseDecomposedVPCForChargebacks_upvr (copied, readonly)
			[5]: getIsChildSubjectToParentalControls_upvr (readonly)
		]]
		if recourseAction_upvr == ActionTypeEnum_upvr.ParentConsent then
			getLinkedParentEmailsAndSendRequestToAllParents_upvr()
		elseif recourseAction_upvr == ActionTypeEnum_upvr.ParentLink and GetFFlagUseDecomposedVPCForChargebacks_upvr() then
			getIsChildSubjectToParentalControls_upvr()
		end
	end, {any_useState_result1_2_upvr})
	if any_useState_result1_6 == VPCStepEnum_upvr.RequestSent then
		authMsgShown_upvr("", "", vpcEventConstants_upvr.confirmationPageLoadField, "")
		local module = {
			messageStrings = vpcConfirmationScreenStrings_upvr;
			parentEmails = any_useState_result1_8;
		}
		local const_string_upvr = ""
		function module.onAck() -- Line 193
			--[[ Upvalues[4]:
				[1]: authButtonClick_upvr (copied, readonly)
				[2]: const_string_upvr (readonly)
				[3]: vpcEventConstants_upvr (copied, readonly)
				[4]: onSuccess_2_upvr (readonly)
			]]
			authButtonClick_upvr(const_string_upvr, vpcEventConstants_upvr.confirmationPageButton)
			onSuccess_2_upvr()
		end
		return React_upvr.createElement(VPCConfirmationScreen_upvr, module)
	end
	if any_useState_result1_6 == VPCStepEnum_upvr.NewParentCollectEmail then
		authMsgShown_upvr(const_string_upvr, "", vpcEventConstants_upvr.collectEmailPageLoadField, "")
		return React_upvr.createElement(VPCNewParentUpsell_upvr, {
			onCancel = onCancel_2_upvr;
			onCollectEmailAndSendRequest = function(arg1_12) -- Line 202, Named "onCollectEmailAndSendRequest"
				--[[ Upvalues[7]:
					[1]: authButtonClick_upvr (copied, readonly)
					[2]: const_string_upvr (readonly)
					[3]: vpcEventConstants_upvr (copied, readonly)
					[4]: any_useState_result2_upvr_3 (readonly)
					[5]: any_useState_result2_upvr_5 (readonly)
					[6]: VPCStepEnum_upvr (copied, readonly)
					[7]: sendRequestToNewParent_upvr (readonly)
				]]
				authButtonClick_upvr(const_string_upvr, vpcEventConstants_upvr.collectEmailPageSubmitButton)
				local tbl = {}
				tbl[1] = arg1_12
				any_useState_result2_upvr_3(tbl)
				any_useState_result2_upvr_5(VPCStepEnum_upvr.NewParentSendRequest)
				sendRequestToNewParent_upvr(arg1_12)
			end;
			onTextChange = function(arg1_13) -- Line 208, Named "onTextChange"
				--[[ Upvalues[4]:
					[1]: authFormInteraction_upvr (copied, readonly)
					[2]: const_string_upvr (readonly)
					[3]: vpcEventConstants_upvr (copied, readonly)
					[4]: handleEmailInput_upvr (readonly)
				]]
				authFormInteraction_upvr(const_string_upvr, vpcEventConstants_upvr.collectEmailPageInteractFormField)
				handleEmailInput_upvr(arg1_13)
			end;
			canSendRequest = any_useState_result1_3;
			textInput = any_useState_result1_5;
			openPrivacyPolicyLink = function() -- Line 93
				--[[ Upvalues[8]:
					[1]: GetFFlagEnableExternalBrowserForVPCPrivacyPolicy_upvr (copied, readonly)
					[2]: var33_upvw (read and write)
					[3]: useRoactService_upvr_result1_upvw (read and write)
					[4]: GetFStringPrivacyPolicyLink_upvr (copied, readonly)
					[5]: ArgCheck_upvr (copied, readonly)
					[6]: var17_result1_upvr (readonly)
					[7]: AppScreens_upvr (copied, readonly)
					[8]: var15_result1_upvr (readonly)
				]]
				if GetFFlagEnableExternalBrowserForVPCPrivacyPolicy_upvr() and var33_upvw then
					local var59 = useRoactService_upvr_result1_upvw
					local var19_result1 = GetFStringPrivacyPolicyLink_upvr()
					ArgCheck_upvr.isNotNil(var59, "linking")
					ArgCheck_upvr.isType(var19_result1, "string", "url")
					var59:openURL(var19_result1)
				else
					var17_result1_upvr.navigate(AppScreens_upvr.GenericWebPage, {
						detail = GetFStringPrivacyPolicyLink_upvr();
						extraProps = {
							title = var15_result1_upvr.privacyLinkText;
							transitionAnimation = "SlideInFromBottom";
						};
					})
				end
			end;
			errorText = any_useState_result1_7;
			messageStrings = vpcUpsellGatherEmailStrings_upvr;
			isChildSubjectToParentalControls = any_useState_result1;
		})
	end
	if any_useState_result1_6 == VPCStepEnum_upvr.AlreadyLinkedSendRequest then
		return nil
	end
	if any_useState_result1_6 == VPCStepEnum_upvr.NewParentSendRequest then
		return nil
	end
	if any_useState_result1_6 == VPCStepEnum_upvr.NewParentLoading then
		return nil
	end
	authMsgShown_upvr(const_string_upvr, "", vpcEventConstants_upvr.errorPageLoadField, any_useState_result1_4)
	local module_2 = {
		errorCode = any_useState_result1_4;
	}
	local onRetryAmp_2_upvr = arg1.onRetryAmp
	function module_2.onRetryAmp() -- Line 229
		--[[ Upvalues[4]:
			[1]: authButtonClick_upvr (copied, readonly)
			[2]: const_string_upvr (readonly)
			[3]: vpcEventConstants_upvr (copied, readonly)
			[4]: onRetryAmp_2_upvr (readonly)
		]]
		authButtonClick_upvr(const_string_upvr, vpcEventConstants_upvr.errorPageRetryButton)
		onRetryAmp_2_upvr()
	end
	function module_2.onRetryVPC() -- Line 233
		--[[ Upvalues[4]:
			[1]: authButtonClick_upvr (copied, readonly)
			[2]: const_string_upvr (readonly)
			[3]: vpcEventConstants_upvr (copied, readonly)
			[4]: onRetryVPC (readonly)
		]]
		authButtonClick_upvr(const_string_upvr, vpcEventConstants_upvr.errorPageRetryButton)
		onRetryVPC()
	end
	function module_2.onCancel() -- Line 237
		--[[ Upvalues[4]:
			[1]: authButtonClick_upvr (copied, readonly)
			[2]: const_string_upvr (readonly)
			[3]: vpcEventConstants_upvr (copied, readonly)
			[4]: onCancel_2_upvr (readonly)
		]]
		authButtonClick_upvr(const_string_upvr, vpcEventConstants_upvr.errorPageCancelButton)
		onCancel_2_upvr()
	end
	function module_2.onSuccess() -- Line 241
		--[[ Upvalues[4]:
			[1]: authButtonClick_upvr (copied, readonly)
			[2]: const_string_upvr (readonly)
			[3]: vpcEventConstants_upvr (copied, readonly)
			[4]: onSuccess_2_upvr (readonly)
		]]
		authButtonClick_upvr(const_string_upvr, vpcEventConstants_upvr.confirmationPageButton)
		onSuccess_2_upvr()
	end
	module_2.retryNum = any_useState_result1_2_upvr
	do
		return React_upvr.createElement(VPCErrorScreen_upvr, module_2)
	end
	-- KONSTANTERROR: [17] 12. Error Block 61 end (CF ANALYSIS FAILED)
end