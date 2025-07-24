-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:40
-- Luau version 6, Types version 3
-- Time taken: 0.003953 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local Foundation_upvr = require(Parent.Foundation)
local tbl_upvr = {
	Form = "Form";
	Complete = "Complete";
	Error = "Error";
}
local useActiveDialog_upvr = require(script.Parent.useActiveDialog)
local React_upvr = require(Parent.React)
local LayerCollectorProvider_upvr = require(Parent.UIBlox).Core.Layout.LayerCollector.LayerCollectorProvider
local FoundationProvider_upvr = Foundation_upvr.FoundationProvider
local AnalyticsProvider_upvr = require(GenericAbuseReporting.Analytics.AnalyticsProvider)
local LocalizationKeysProvider_upvr = require(GenericAbuseReporting.LocalizationKeys.LocalizationKeysProvider)
local ReportWithReasonAndComment_upvr = require(script.Parent.ReportWithReasonAndComment)
local ReportCompleteDialog_upvr = require(GenericAbuseReporting.Dialogs.ReportCompleteDialog)
local ReportFailedDialog_upvr = require(GenericAbuseReporting.Dialogs.ReportFailedDialog)
return function(arg1) -- Line 58, Named "AREntrypoint"
	--[[ Upvalues[11]:
		[1]: useActiveDialog_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: LayerCollectorProvider_upvr (readonly)
		[5]: FoundationProvider_upvr (readonly)
		[6]: Foundation_upvr (readonly)
		[7]: AnalyticsProvider_upvr (readonly)
		[8]: LocalizationKeysProvider_upvr (readonly)
		[9]: ReportWithReasonAndComment_upvr (readonly)
		[10]: ReportCompleteDialog_upvr (readonly)
		[11]: ReportFailedDialog_upvr (readonly)
	]]
	local var5_result1, var5_result2_upvr = useActiveDialog_upvr()
	local function var16(arg1_2, arg2) -- Line 61
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var5_result2_upvr (readonly)
			[3]: tbl_upvr (copied, readonly)
		]]
		local var17
		if arg1.onSubmitProps.hasNextSteps then
			var17 = arg1.onSubmitProps.onProceedToNextStep(arg1_2, arg2)
		else
			var17 = arg1.onSubmitProps.onSubmit(arg1_2, arg2)
		end
		if var17 then
			var5_result2_upvr(tbl_upvr.Complete)
			return var17
		end
		var5_result2_upvr(tbl_upvr.Error)
		return var17
	end
	local tbl = {arg1.onSubmitProps}
	local module = {}
	local tbl_2 = {}
	local tbl_5 = {}
	local tbl_6 = {}
	local var29 = false
	if var5_result1 == tbl_upvr.Form then
		var29 = React_upvr.createElement
		local tbl_3 = {
			analyticsContext = arg1.analyticsContext;
			topCustomComponent = arg1.topCustomComponent;
			footerContent = arg1.footerContent;
			reportCategories = arg1.reportCategories;
			onCloseProps = arg1.onCloseProps;
		}
		if arg1.onSubmitProps.hasNextSteps then
			local tbl_4 = {
				hasNextSteps = arg1.onSubmitProps.hasNextSteps;
				onProceedToNextStep = React_upvr.useCallback(var16, tbl);
			}
		else
			local tbl_7 = {
				hasNextSteps = arg1.onSubmitProps.hasNextSteps;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_7.onSubmit = React_upvr.useCallback(var16, tbl)
		end
		tbl_3.onSubmitProps = tbl_7
		tbl_3.reportCategoryDefaultKey = arg1.reportCategoryDefaultKey
		tbl_3.isDisabled = arg1.isDisabled
		tbl_3.isReportCategoryReadonly = arg1.isReportCategoryReadonly
		tbl_3.scaleDialog = arg1.scaleDialog
		var29 = var29(ReportWithReasonAndComment_upvr, tbl_3)
	end
	tbl_6.submitDialog = var29
	var29 = false
	local var33 = var29
	if var5_result1 == tbl_upvr.Complete then
		var33 = React_upvr.createElement
		var33 = var33(ReportCompleteDialog_upvr, {
			onDismiss = React_upvr.useCallback(function() -- Line 77
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.onComplete then
					arg1.onComplete()
				end
			end, {arg1.onComplete});
		})
	end
	tbl_6.completeDialog = var33
	var33 = false
	local var35 = var33
	if var5_result1 == tbl_upvr.Error then
		var35 = React_upvr.createElement
		var35 = var35(ReportFailedDialog_upvr, {
			onDismiss = React_upvr.useCallback(function() -- Line 73
				--[[ Upvalues[2]:
					[1]: var5_result2_upvr (readonly)
					[2]: tbl_upvr (copied, readonly)
				]]
				var5_result2_upvr(tbl_upvr.Form)
			end, {});
		})
	end
	tbl_6.errorDialog = var35
	tbl_5.localizationKeys = React_upvr.createElement(LocalizationKeysProvider_upvr, {
		localizationKeys = arg1.localizationKeys;
	}, tbl_6)
	tbl_2.analytics = React_upvr.createElement(AnalyticsProvider_upvr, {
		onBeforeSubmitAnalytics = arg1.onBeforeSubmitAnalytics;
		onSubmitAnalytics = arg1.onSubmitAnalytics;
	}, tbl_5)
	module.FoundationProvider = React_upvr.createElement(FoundationProvider_upvr, {
		theme = Foundation_upvr.Enums.Theme.Dark;
	}, tbl_2)
	return React_upvr.createElement(LayerCollectorProvider_upvr, {}, module)
end