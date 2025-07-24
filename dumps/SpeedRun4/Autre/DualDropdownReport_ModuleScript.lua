-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:38
-- Luau version 6, Types version 3
-- Time taken: 0.001955 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local useAnalyticsSubmitDispatch_upvr = require(GenericAbuseReporting.Analytics.useAnalyticsSubmitDispatch)
local useAnalyticsDispatch_upvr = require(GenericAbuseReporting.Analytics.useAnalyticsDispatch)
local DefaultLocalizationKeys_upvr = require(GenericAbuseReporting.LocalizationKeys.DefaultLocalizationKeys)
local React_upvr = require(GenericAbuseReporting.Parent.React)
local OnFormLoaded_upvr = require(GenericAbuseReporting.Analytics.Actions.OnFormLoaded)
local Frame_upvr = require(GenericAbuseReporting.Common.Frame)
local DualDropdownSubmitDialog_upvr = require(GenericAbuseReporting.Dialogs.DualDropdownSubmitDialog)
return function(arg1) -- Line 29, Named "DualDropdownReport"
	--[[ Upvalues[7]:
		[1]: useAnalyticsSubmitDispatch_upvr (readonly)
		[2]: useAnalyticsDispatch_upvr (readonly)
		[3]: DefaultLocalizationKeys_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: OnFormLoaded_upvr (readonly)
		[6]: Frame_upvr (readonly)
		[7]: DualDropdownSubmitDialog_upvr (readonly)
	]]
	local useAnalyticsSubmitDispatch_upvr_result1_upvr = useAnalyticsSubmitDispatch_upvr()
	local var3_result1_upvr = useAnalyticsDispatch_upvr()
	if arg1.localizationKeys then
		local formTitle = arg1.localizationKeys.formTitle
		if not formTitle then
			formTitle = DefaultLocalizationKeys_upvr.formTitle
		end
		arg1.localizationKeys.formTitle = formTitle
		formTitle = arg1.localizationKeys.formSubmit
		local var12 = formTitle
		if not var12 then
			var12 = DefaultLocalizationKeys_upvr.formSubmit
		end
		arg1.localizationKeys.formSubmit = var12
	end
	React_upvr.useEffect(function() -- Line 38
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
		Size = UDim2.new(1, 0, 1, 0);
	}, {
		DualDropdownReport = React_upvr.createElement(DualDropdownSubmitDialog_upvr, {
			localizationKeys = arg1.localizationKeys;
			reportProblems = arg1.reportProblems;
			reportSurfaces = arg1.reportSurfaces;
			onSubmit = React_upvr.useCallback(function(arg1_2, arg2, arg3) -- Line 47
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: useAnalyticsSubmitDispatch_upvr_result1_upvr (readonly)
				]]
				local var17
				if arg1.onSubmitProps.hasNextSteps then
					var17 = arg1.onSubmitProps.onProceedToNextStep(arg1_2, arg2, arg3)
				else
					var17 = arg1.onSubmitProps.onSubmit(arg1_2, arg2, arg3)
				end
				if var17 and not arg1.onSubmitProps.hasNextSteps then
					useAnalyticsSubmitDispatch_upvr_result1_upvr("Submit")
				end
			end, {useAnalyticsSubmitDispatch_upvr_result1_upvr, arg1.onSubmitProps});
			onAbandon = React_upvr.useCallback(function() -- Line 57
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
		});
	})
end