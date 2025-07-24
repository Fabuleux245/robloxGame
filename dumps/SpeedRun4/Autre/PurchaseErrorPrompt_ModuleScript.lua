-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:34
-- Luau version 6, Types version 3
-- Time taken: 0.008880 seconds

local Parent_3 = script.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local PurchaseErrorType_upvr = require(Parent_2.Enums.PurchaseErrorType)
local default_upvr = require(Parent.LoggingProtocol).default
local logger_upvr = require(Parent_2.Utility.logger)
local FFlagSwitchLocalizationInPurchaseErrorPrompt_upvr = require(Parent_2.Flags.FFlagSwitchLocalizationInPurchaseErrorPrompt)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
local PurchaseErrorPromptCounter = require(Parent_2.Generic.Events.PurchaseErrorPromptCounter)
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5);
	position = UDim2.new(0.5, 0, 0.5, 0);
}
local PurchaseFlowType_upvr = require(Parent_3.PurchaseFlowType)
function any_extend_result1.getErrorTitle(arg1, arg2, arg3, arg4) -- Line 52
	--[[ Upvalues[2]:
		[1]: PurchaseErrorType_upvr (readonly)
		[2]: PurchaseFlowType_upvr (readonly)
	]]
	if arg3 == PurchaseErrorType_upvr.FailedRobuxPurchase then
		return arg2.robuxFailedPurchaseTitle
	end
	if arg3 == PurchaseErrorType_upvr.AlreadySubscribed then
		return arg2.alreadySubscribedTitle
	end
	if arg4 == PurchaseFlowType_upvr.Subscription then
		return arg2.cantSubscribeTitle
	end
	return arg2.titleText
end
function any_extend_result1.getErrorMessage(arg1, arg2, arg3, arg4) -- Line 64
	--[[ Upvalues[1]:
		[1]: PurchaseErrorType_upvr (readonly)
	]]
	if arg3 == PurchaseErrorType_upvr.AlreadyOwn then
		return arg2.alreadyOwnText
	end
	if arg3 == PurchaseErrorType_upvr.FailedGrant then
		return arg2.failedGrantText
	end
	if arg3 == PurchaseErrorType_upvr.FailedGrantUnknown then
		return arg2.failedGrantUnknownText
	end
	if arg3 == PurchaseErrorType_upvr.Limited then
		return arg2.limitedText
	end
	if arg3 == PurchaseErrorType_upvr.NotEnoughRobux then
		return arg2.notEnoughRobuxText
	end
	if arg3 == PurchaseErrorType_upvr.NotForSale then
		return arg2.notForSaleText
	end
	if arg3 == PurchaseErrorType_upvr.NotForSaleExperience then
		return arg2.notForSaleExperienceText
	end
	if arg3 == PurchaseErrorType_upvr.PremiumOnly then
		return arg2.premiumOnlyText
	end
	if arg3 == PurchaseErrorType_upvr.ThirdPartyDisabled then
		return arg2.thirdPartyDisabledText
	end
	if arg3 == PurchaseErrorType_upvr.Under13 then
		return arg2.under13Text
	end
	if arg3 == PurchaseErrorType_upvr.PremiumPlatformUnavailable then
		return arg2.premiumPlatformUnavailable
	end
	if arg3 == PurchaseErrorType_upvr.AlreadyPremium then
		return arg2.alreadyPremium
	end
	if arg3 == PurchaseErrorType_upvr.PurchaseLimit then
		return arg2.purchaseLimitText
	end
	if arg3 == PurchaseErrorType_upvr.ParentalLimit then
		return arg2.parentalLimitText
	end
	if arg3 == PurchaseErrorType_upvr.FailedRobuxPurchase then
		return arg2.robuxFailedPurchaseText
	end
	if arg3 == PurchaseErrorType_upvr.AlreadySubscribed then
		return arg2.alreadySubscribedText
	end
	if arg3 == PurchaseErrorType_upvr.SubscriptionNotForSale then
		return arg2.subscriptionNotForSaleText
	end
	if arg3 == PurchaseErrorType_upvr.SubscriptionExceededUserSpendLimit then
		return arg2.parentalRestrictionSubscriptionText
	end
	if arg3 == PurchaseErrorType_upvr.SubscriptionUnsupportedLocale then
		return arg2.subscriptionUnsupportedLocaleText
	end
	if arg3 == PurchaseErrorType_upvr.RestrictedUser then
		return arg2.restrictedUserText
	end
	if arg3 == PurchaseErrorType_upvr.SubscriptionPurchasePlatformNotSupported or arg3 == PurchaseErrorType_upvr.SubscriptionInvalidSaleLocation then
		return arg2.subscriptionUnsupportedPlatformText
	end
	if arg3 == PurchaseErrorType_upvr.VpcRequired then
		return arg2.vpcRequiredText
	end
	if arg3 == PurchaseErrorType_upvr.ExceedParentalSpendLimit then
		return arg2.exceedParentalSpendLimitText
	end
	if arg3 == PurchaseErrorType_upvr.EconomicRestriction then
		return formatEconomicRestrictionText(arg2, arg4)
	end
	return arg2.unknownText
end
local EconomicRestrictionsPromptShownCounter_upvr = PurchaseErrorPromptCounter.EconomicRestrictionsPromptShownCounter
function formatEconomicRestrictionText(arg1, arg2) -- Line 126
	--[[ Upvalues[3]:
		[1]: default_upvr (readonly)
		[2]: EconomicRestrictionsPromptShownCounter_upvr (readonly)
		[3]: logger_upvr (readonly)
	]]
	local timeoutMinutes = arg2.timeoutMinutes
	local violationType = arg2.violationType
	default_upvr:logRobloxTelemetryCounter(EconomicRestrictionsPromptShownCounter_upvr, 1, {
		violationType = tostring(violationType);
	})
	if not timeoutMinutes or not violationType then
		logger_upvr.error({
			error = "Timeout and violationType is required for economic restriction text. Showing unknown error.";
			timeoutMinutes = timeoutMinutes;
			violationType = violationType;
		})
		return arg1.unknownText
	end
	local getEconomicRestrictionViolationLabel_result1 = getEconomicRestrictionViolationLabel(arg1, violationType)
	local ceiled = math.ceil(timeoutMinutes / 60)
	if 24 <= ceiled then
		return arg1.economicRestrictionBaseTextDays:gsub("{day}", tostring(math.ceil(ceiled / 24))):gsub("{violation}", getEconomicRestrictionViolationLabel_result1)
	end
	return arg1.economicRestrictionBaseTextHours:gsub("{hour}", tostring(ceiled)):gsub("{violation}", getEconomicRestrictionViolationLabel_result1)
end
local EconomicRestrictionsViolationType_upvr = require(Parent_2.Enums.EconomicRestrictionsViolationType)
function getEconomicRestrictionViolationLabel(arg1, arg2) -- Line 156
	--[[ Upvalues[2]:
		[1]: EconomicRestrictionsViolationType_upvr (readonly)
		[2]: logger_upvr (readonly)
	]]
	if arg2 == EconomicRestrictionsViolationType_upvr.Chargeback then
		return arg1.chargebackViolationLabel
	end
	if arg2 == EconomicRestrictionsViolationType_upvr.AbuseOfAffiliateSystem then
		return arg1.fraudAbuseOfAffiliateSystemViolationLabel
	end
	if arg2 == EconomicRestrictionsViolationType_upvr.AttemptedUnauthorizedPaymentMethodUse then
		return arg1.fraudAttemptedUnauthorizedPaymentMethodUseViolationLabel
	end
	if arg2 == EconomicRestrictionsViolationType_upvr.PaymentAbuse then
		return arg1.fraudPaymentAbuseViolationLabel
	end
	if arg2 == EconomicRestrictionsViolationType_upvr.RepeatedRefundRequests then
		return arg1.fraudRepeatedRefundRequestsViolationLabel
	end
	if arg2 == EconomicRestrictionsViolationType_upvr.SuspiciousAccountPatterns then
		return arg1.fraudSuspiciousAccountPatternsViolationLabel
	end
	if arg2 == EconomicRestrictionsViolationType_upvr.SuspiciousRefundRequests then
		return arg1.fraudSuspiciousRefundRequestsViolationLabel
	end
	if arg2 == EconomicRestrictionsViolationType_upvr.UnauthorizedPurchase then
		return arg1.fraudUnauthorizedPurchaseViolationLabel
	end
	if arg2 == EconomicRestrictionsViolationType_upvr.UseOfUnauthorizedOffPlatformTransactions then
		return arg1.fraudUseOfUnauthorizedOffPlatformTransactionsViolationLabel
	end
	if arg2 == EconomicRestrictionsViolationType_upvr.VirtualEconomyAbuse then
		return arg1.fraudVirtualEconomyAbuseViolationLabel
	end
	local tbl = {
		message = "Invalid violation type";
	}
	tbl.violationType = arg2
	logger_upvr.error(tbl)
	return ""
end
function getIsAlreadyOwnedError(arg1) -- Line 187
	--[[ Upvalues[1]:
		[1]: PurchaseErrorType_upvr (readonly)
	]]
	local var24 = true
	if arg1 ~= PurchaseErrorType_upvr.AlreadyOwn then
		var24 = true
		if arg1 ~= PurchaseErrorType_upvr.AlreadyPremium then
			if arg1 ~= PurchaseErrorType_upvr.AlreadySubscribed then
				var24 = false
			else
				var24 = true
			end
		end
	end
	return var24
end
local Images_upvr = UIBlox.App.ImageSet.Images
function getErrorTitleIcon(arg1) -- Line 193
	--[[ Upvalues[1]:
		[1]: Images_upvr (readonly)
	]]
	if getIsAlreadyOwnedError(arg1) then
		return Images_upvr["icons/status/success_large"]
	end
	return Images_upvr["icons/status/error_large"]
end
local withLocalization_upvr = require(Parent.Localization).withLocalization
function any_extend_result1.renderNewAlertWithLocalization(arg1) -- Line 200
	--[[ Upvalues[1]:
		[1]: withLocalization_upvr (readonly)
	]]
	return withLocalization_upvr({
		titleText = "IAPExperience.PurchaseError.Title.Error";
		robuxFailedPurchaseTitle = "IAPExperience.PurchaseError.Title.RobuxPurchaseFailed";
		robuxFailedPurchaseText = "IAPExperience.PurchaseError.Text.FailedRobuxPurchase";
		unknownText = "IAPExperience.PurchaseError.Text.UnknownError";
		okText = "IAPExperience.PurchaseError.Text.Ok";
		alreadyOwnText = "IAPExperience.PurchaseError.Text.AlreadyOwn";
		failedGrantText = "IAPExperience.PurchaseError.Text.FailedGrant";
		failedGrantUnknownText = "IAPExperience.PurchaseError.Text.FailedGrantUnknown";
		limitedText = "IAPExperience.PurchaseError.Text.Limited";
		notEnoughRobuxText = "IAPExperience.PurchaseError.Text.NotEnoughRobux";
		notForSaleText = "IAPExperience.PurchaseError.Text.NotForSale";
		notForSaleExperienceText = "IAPExperience.PurchaseError.Text.NotForSaleExperience";
		premiumOnlyText = "IAPExperience.PurchaseError.Text.PremiumOnly";
		thirdPartyDisabledText = "IAPExperience.PurchaseError.Text.ThirdPartyDisabled";
		under13Text = "IAPExperience.PurchaseError.Text.Under13";
		premiumPlatformUnavailable = "IAPExperience.PurchaseError.Text.PremiumPlatformUnavailable";
		alreadyPremium = "IAPExperience.PurchaseError.AlreadyPremium";
		purchaseLimitText = "IAPExperience.PurchaseError.Text.PurchaseLimit";
		parentalLimitText = "IAPExperience.PurchaseError.Text.ParentalLimit";
		alreadySubscribedTitle = "IAPExperience.PurchaseError.Title.AlreadySubscribed";
		cantSubscribeTitle = "IAPExperience.PurchaseError.Title.CantSubscribe";
		alreadySubscribedText = "IAPExperience.PurchaseError.Text.AlreadySubscribed";
		subscriptionNotForSaleText = "IAPExperience.PurchaseError.Text.SubscriptionNotForSale";
		parentalRestrictionSubscriptionText = "IAPExperience.PurchaseError.Text.ParentalRestrictionSubscription";
		subscriptionUnsupportedLocaleText = "IAPExperience.PurchaseError.Text.SubscriptionUnsupportedLocale";
		restrictedUserText = "IAPExperience.PurchaseError.Text.RestrictedUser";
		subscriptionUnsupportedPlatformText = "IAPExperience.PurchaseError.Text.SubscriptionUnsupportedPlatform";
		vpcRequiredText = "IAPExperience.PurchaseError.Text.VpcRequired";
		exceedParentalSpendLimitText = "Feature.Subscription.Message.MonthlySpendRestrictionsMonthlyLimitExceed";
		chargebackViolationLabel = "Feature.NotApproved.Label.AbuseType.Chargeback";
		fraudAbuseOfAffiliateSystemViolationLabel = "Feature.NotApproved.Label.Sublabel.FraudAbuseOfTheAffiliateSystem";
		fraudAttemptedUnauthorizedPaymentMethodUseViolationLabel = "Feature.NotApproved.Label.Sublabel.FraudAttemptedUnauthorizedPaymentMethodUse";
		fraudPaymentAbuseViolationLabel = "Feature.NotApproved.Label.Sublabel.FraudPaymentAbuse";
		fraudRepeatedRefundRequestsViolationLabel = "Feature.NotApproved.Label.Sublabel.FraudRepeatedRefundRequests";
		fraudSuspiciousAccountPatternsViolationLabel = "Feature.NotApproved.Label.Sublabel.FraudSuspiciousAccountPatterns";
		fraudSuspiciousRefundRequestsViolationLabel = "Feature.NotApproved.Label.Sublabel.FraudSuspiciousRefundRequests";
		fraudUnauthorizedPurchaseViolationLabel = "Feature.NotApproved.Label.Sublabel.FraudUnauthorizedPurchase";
		fraudUseOfUnauthorizedOffPlatformTransactionsViolationLabel = "Feature.NotApproved.Label.Sublabel.FraudUseOfUnauthorizedOffPlatformTransactions";
		fraudVirtualEconomyAbuseViolationLabel = "Feature.NotApproved.Label.Sublabel.FraudVirtualEconomyAbuse";
		economicRestrictionBaseTextHours = "IAPExperience.PurchaseError.Text.EconomicRestrictionsHours";
		economicRestrictionBaseTextDays = "IAPExperience.PurchaseError.Text.EconomicRestrictionsDays";
	})(function(arg1_2) -- Line 243
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderAlert(arg1_2)
	end)
end
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Localization_upvr = require(Parent.AppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local MultiTextLocalizer_upvr = require(Parent_2.Locale.MultiTextLocalizer)
local function render(arg1) -- Line 248
	--[[ Upvalues[6]:
		[1]: FFlagSwitchLocalizationInPurchaseErrorPrompt_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LocalizationProvider_upvr (readonly)
		[4]: Localization_upvr (readonly)
		[5]: LocalizationService_upvr (readonly)
		[6]: MultiTextLocalizer_upvr (readonly)
	]]
	if FFlagSwitchLocalizationInPurchaseErrorPrompt_upvr then
		return Roact_upvr.createElement(LocalizationProvider_upvr, {
			localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
		}, {
			Alert = arg1:renderNewAlertWithLocalization();
		})
	end
	local module = {
		keys = {
			titleText = {
				key = "IAPExperience.PurchaseError.Title.Error";
			};
			robuxFailedPurchaseTitle = {
				key = "IAPExperience.PurchaseError.Title.RobuxPurchaseFailed";
			};
			robuxFailedPurchaseText = {
				key = "IAPExperience.PurchaseError.Text.FailedRobuxPurchase";
			};
			unknownText = {
				key = "IAPExperience.PurchaseError.Text.UnknownError";
			};
			okText = {
				key = "IAPExperience.PurchaseError.Text.Ok";
			};
			alreadyOwnText = {
				key = "IAPExperience.PurchaseError.Text.AlreadyOwn";
			};
			failedGrantText = {
				key = "IAPExperience.PurchaseError.Text.FailedGrant";
			};
			failedGrantUnknownText = {
				key = "IAPExperience.PurchaseError.Text.FailedGrantUnknown";
			};
			limitedText = {
				key = "IAPExperience.PurchaseError.Text.Limited";
			};
			notEnoughRobuxText = {
				key = "IAPExperience.PurchaseError.Text.NotEnoughRobux";
			};
			notForSaleText = {
				key = "IAPExperience.PurchaseError.Text.NotForSale";
			};
			notForSaleExperienceText = {
				key = "IAPExperience.PurchaseError.Text.NotForSaleExperience";
			};
			premiumOnlyText = {
				key = "IAPExperience.PurchaseError.Text.PremiumOnly";
			};
			thirdPartyDisabledText = {
				key = "IAPExperience.PurchaseError.Text.ThirdPartyDisabled";
			};
			under13Text = {
				key = "IAPExperience.PurchaseError.Text.Under13";
			};
			premiumPlatformUnavailable = {
				key = "IAPExperience.PurchaseError.Text.PremiumPlatformUnavailable";
			};
			alreadyPremium = {
				key = "IAPExperience.PurchaseError.AlreadyPremium";
			};
			purchaseLimitText = {
				key = "IAPExperience.PurchaseError.Text.PurchaseLimit";
			};
			parentalLimitText = {
				key = "IAPExperience.PurchaseError.Text.ParentalLimit";
			};
			alreadySubscribedTitle = {
				key = "IAPExperience.PurchaseError.Title.AlreadySubscribed";
			};
			cantSubscribeTitle = {
				key = "IAPExperience.PurchaseError.Title.CantSubscribe";
			};
			alreadySubscribedText = {
				key = "IAPExperience.PurchaseError.Text.AlreadySubscribed";
			};
			subscriptionNotForSaleText = {
				key = "IAPExperience.PurchaseError.Text.SubscriptionNotForSale";
			};
			parentalRestrictionSubscriptionText = {
				key = "IAPExperience.PurchaseError.Text.ParentalRestrictionSubscription";
			};
			subscriptionUnsupportedLocaleText = {
				key = "IAPExperience.PurchaseError.Text.SubscriptionUnsupportedLocale";
			};
			restrictedUserText = {
				key = "IAPExperience.PurchaseError.Text.RestrictedUser";
			};
			subscriptionUnsupportedPlatformText = {
				key = "IAPExperience.PurchaseError.Text.SubscriptionUnsupportedPlatform";
			};
			vpcRequiredText = {
				key = "IAPExperience.PurchaseError.Text.VpcRequired";
			};
			exceedParentalSpendLimitText = {
				key = "Feature.Subscription.Message.MonthlySpendRestrictionsMonthlyLimitExceed";
			};
		};
	}
	function module.render(arg1_3) -- Line 347
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderAlert(arg1_3)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module)
end
any_extend_result1.render = render
local PurchaseErrorPromptShownCounter_upvr = PurchaseErrorPromptCounter.PurchaseErrorPromptShownCounter
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.renderAlert(arg1, arg2) -- Line 353
	--[[ Upvalues[6]:
		[1]: FFlagSwitchLocalizationInPurchaseErrorPrompt_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: PurchaseErrorPromptShownCounter_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: InteractiveAlert_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
	]]
	local props = arg1.props
	if FFlagSwitchLocalizationInPurchaseErrorPrompt_upvr then
		default_upvr:logRobloxTelemetryCounter(PurchaseErrorPromptShownCounter_upvr, 1, {
			errorType = tostring(props.errorType);
			flowType = tostring(props.flowType);
		})
	end
	return Roact_upvr.createElement(InteractiveAlert_upvr, {
		anchorPoint = props.anchorPoint;
		position = props.position;
		screenSize = props.screenSize;
		title = arg1:getErrorTitle(arg2, props.errorType, props.flowType);
		titleIcon = getErrorTitleIcon(props.errorType);
		bodyText = arg1:getErrorMessage(arg2, props.errorType, props.economicRestrictionError);
		buttonStackInfo = {
			buttons = {{
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = props.doneActivated;
					text = arg2.okText;
					inputIcon = props.doneControllerIcon;
				};
			}};
		};
	})
end
return any_extend_result1