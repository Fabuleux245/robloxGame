-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:40
-- Luau version 6, Types version 3
-- Time taken: 0.002923 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local React_upvr = require(Parent.React)
local Foundation_upvr = require(Parent.Foundation)
local ThemeContext_upvr = require(Parent.Style).ThemeContext
local FFlagEnableAbuseReportRevampAnalytics_upvr = require(Parent.SharedFlags).FFlagEnableAbuseReportRevampAnalytics
local LayerCollectorProvider_upvr = require(Parent.UIBlox).Core.Layout.LayerCollector.LayerCollectorProvider
local FoundationProvider_upvr = Foundation_upvr.FoundationProvider
local AbuseReportBeduiProvider_upvr = require(GenericAbuseReporting.Bedui.Provider.AbuseReportBeduiProvider)
local AbuseReportFormDataProvider_upvr = require(GenericAbuseReporting.Bedui.Provider.AbuseReportFormDataProvider)
local AbuseReportAnalyticsProvider_upvr = require(GenericAbuseReporting.Bedui.Provider.AbuseReportAnalyticsProvider)
local DynamicReport_upvr = require(GenericAbuseReporting.UXFlow.DynamicReport.DynamicReport)
return React_upvr.memo(function(arg1) -- Line 29, Named "DynamicReportContainer"
	--[[ Upvalues[10]:
		[1]: React_upvr (readonly)
		[2]: ThemeContext_upvr (readonly)
		[3]: FFlagEnableAbuseReportRevampAnalytics_upvr (readonly)
		[4]: LayerCollectorProvider_upvr (readonly)
		[5]: FoundationProvider_upvr (readonly)
		[6]: Foundation_upvr (readonly)
		[7]: AbuseReportBeduiProvider_upvr (readonly)
		[8]: AbuseReportFormDataProvider_upvr (readonly)
		[9]: AbuseReportAnalyticsProvider_upvr (readonly)
		[10]: DynamicReport_upvr (readonly)
	]]
	local any_useContext_result1 = React_upvr.useContext(ThemeContext_upvr)
	local var14
	if FFlagEnableAbuseReportRevampAnalytics_upvr then
		local module_2 = {}
		local tbl_2 = {}
		if any_useContext_result1.theme == "light" then
			var14 = Foundation_upvr.Enums.Theme.Light
		else
			var14 = Foundation_upvr.Enums.Theme.Dark
		end
		tbl_2.theme = var14
		var14 = {}
		var14.AbuseReportBeduiProvider = React_upvr.createElement(AbuseReportBeduiProvider_upvr, {
			abuseVector = arg1.abuseVector;
		}, {
			AbuseReportFormDataProvider = React_upvr.createElement(AbuseReportFormDataProvider_upvr, {}, {
				AbuseReportAnalyticsProvider = React_upvr.createElement(AbuseReportAnalyticsProvider_upvr, {
					abuseVector = arg1.abuseVector;
				}, {
					DynamicReport = React_upvr.createElement(DynamicReport_upvr, arg1);
				});
			});
		})
		module_2.FoundationProvider = React_upvr.createElement(FoundationProvider_upvr, tbl_2, var14)
		return React_upvr.createElement(LayerCollectorProvider_upvr, {}, module_2)
	end
	local module = {}
	local tbl = {}
	if any_useContext_result1.theme == "light" then
		var14 = Foundation_upvr.Enums.Theme.Light
	else
		var14 = Foundation_upvr.Enums.Theme.Dark
	end
	tbl.theme = var14
	module.FoundationProvider = React_upvr.createElement(FoundationProvider_upvr, tbl, {
		AbuseReportBeduiProvider = React_upvr.createElement(AbuseReportBeduiProvider_upvr, {
			abuseVector = arg1.abuseVector;
		}, {
			AbuseReportFormDataProvider = React_upvr.createElement(AbuseReportFormDataProvider_upvr, {}, {
				DynamicReport = React_upvr.createElement(DynamicReport_upvr, arg1);
			});
		});
	})
	return React_upvr.createElement(LayerCollectorProvider_upvr, {}, module)
end)