-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:41
-- Luau version 6, Types version 3
-- Time taken: 0.002149 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local useAnalyticsSubmitDispatch_upvr = require(GenericAbuseReporting.Analytics.useAnalyticsSubmitDispatch)
local useAnalyticsDispatch_upvr = require(GenericAbuseReporting.Analytics.useAnalyticsDispatch)
local DefaultLocalizationKeys_upvr = require(GenericAbuseReporting.LocalizationKeys.DefaultLocalizationKeys)
local React_upvr = require(GenericAbuseReporting.Parent.React)
local OnFormLoaded_upvr = require(GenericAbuseReporting.Analytics.Actions.OnFormLoaded)
local Frame_upvr = require(GenericAbuseReporting.Common.Frame)
local SimpleSubmitDialog_upvr = require(GenericAbuseReporting.Dialogs.SimpleSubmitDialog)
return function(arg1) -- Line 34, Named "ReportWithReasonAndComment"
	--[[ Upvalues[7]:
		[1]: useAnalyticsSubmitDispatch_upvr (readonly)
		[2]: useAnalyticsDispatch_upvr (readonly)
		[3]: DefaultLocalizationKeys_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: OnFormLoaded_upvr (readonly)
		[6]: Frame_upvr (readonly)
		[7]: SimpleSubmitDialog_upvr (readonly)
	]]
	local useAnalyticsSubmitDispatch_upvr_result1_upvr = useAnalyticsSubmitDispatch_upvr()
	local var3_result1_upvr = useAnalyticsDispatch_upvr()
	local onCloseProps = arg1.onCloseProps
	if onCloseProps then
		onCloseProps = arg1.onCloseProps.hasPreviousSteps
	end
	if arg1.localizationKeys then
		local formTitle = arg1.localizationKeys.formTitle
		if not formTitle then
			formTitle = DefaultLocalizationKeys_upvr.formTitle
		end
		arg1.localizationKeys.formTitle = formTitle
		formTitle = arg1.localizationKeys.formSubmit
		local var13 = formTitle
		if not var13 then
			var13 = DefaultLocalizationKeys_upvr.formSubmit
		end
		arg1.localizationKeys.formSubmit = var13
	end
	React_upvr.useEffect(function() -- Line 44
		--[[ Upvalues[3]:
			[1]: var3_result1_upvr (readonly)
			[2]: OnFormLoaded_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		var3_result1_upvr(OnFormLoaded_upvr({
			context = arg1.analyticsContext;
			place_id = game.PlaceId;
			accumulated_time_ms = workspace:GetServerTimeNow() * 1000;
		}))
	end, {var3_result1_upvr, arg1.analyticsContext})
	return React_upvr.createElement(Frame_upvr, {
		Size = UDim2.fromScale(1, 1);
	}, {
		submitDialog = React_upvr.createElement(SimpleSubmitDialog_upvr, {
			topCustomComponent = arg1.topCustomComponent;
			footerContent = arg1.footerContent;
			localizationKeys = arg1.localizationKeys;
			reportCategories = arg1.reportCategories;
			reportCategoryDefaultKey = arg1.reportCategoryDefaultKey;
			onSubmit = React_upvr.useCallback(function(arg1_2, arg2) -- Line 53
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: useAnalyticsSubmitDispatch_upvr_result1_upvr (readonly)
				]]
				local var18
				if arg1.onSubmitProps.hasNextSteps then
					var18 = arg1.onSubmitProps.onProceedToNextStep(arg1_2, arg2)
				else
					var18 = arg1.onSubmitProps.onSubmit(arg1_2, arg2)
				end
				if var18 and not arg1.onSubmitProps.hasNextSteps then
					useAnalyticsSubmitDispatch_upvr_result1_upvr("Submit")
				end
			end, {useAnalyticsSubmitDispatch_upvr_result1_upvr, arg1.onSubmitProps});
			onAbandon = React_upvr.useCallback(function() -- Line 63
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: useAnalyticsSubmitDispatch_upvr_result1_upvr (readonly)
				]]
				if arg1.onCloseProps then
					if arg1.onCloseProps.hasPreviousSteps then
						arg1.onCloseProps.onBackToPreviousStep()
					else
						arg1.onCloseProps.onAbandon()
						useAnalyticsSubmitDispatch_upvr_result1_upvr("Abandon")
					end
				end
				useAnalyticsSubmitDispatch_upvr_result1_upvr("Abandon")
			end, {useAnalyticsSubmitDispatch_upvr_result1_upvr, arg1.onCloseProps});
			isDisabled = arg1.isDisabled;
			isReportCategoryReadonly = arg1.isReportCategoryReadonly;
			useBackButton = onCloseProps;
			scaleDialog = arg1.scaleDialog;
		});
	})
end