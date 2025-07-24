-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:18
-- Luau version 6, Types version 3
-- Time taken: 0.004559 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local React_upvr = require(Parent.React)
local BeduiAnalytics = require(GenericAbuseReporting.Bedui.Utils.BeduiAnalytics)
local FFlagEnableAbuseReportRevampAnalytics_upvr = require(Parent.SharedFlags).FFlagEnableAbuseReportRevampAnalytics
local useAnalyticsContext_upvr = require(GenericAbuseReporting.Bedui.Provider.useAnalyticsContext)
local ComponentType_upvr = require(GenericAbuseReporting.Bedui.Provider.AbuseReportBeduiTypes).ComponentType
local Dropdown_upvr = require(GenericAbuseReporting.Bedui.Components.Dropdown)
local FreeComment_upvr = require(GenericAbuseReporting.Bedui.Components.FreeComment)
local Paragraph_upvr = require(GenericAbuseReporting.Bedui.Components.Paragraph)
local WebViewLink_upvr = require(GenericAbuseReporting.Bedui.Components.WebViewLink)
local sendAnalyticsEvent_upvr = BeduiAnalytics.sendAnalyticsEvent
local TelemetryEventType_upvr = BeduiAnalytics.TelemetryEventType
local View_upvr = require(Parent.Foundation).View
return React_upvr.memo(function(arg1) -- Line 29, Named "SingleStepInnerContentRenderer"
	--[[ Upvalues[11]:
		[1]: FFlagEnableAbuseReportRevampAnalytics_upvr (readonly)
		[2]: useAnalyticsContext_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ComponentType_upvr (readonly)
		[5]: Dropdown_upvr (readonly)
		[6]: FreeComment_upvr (readonly)
		[7]: Paragraph_upvr (readonly)
		[8]: WebViewLink_upvr (readonly)
		[9]: sendAnalyticsEvent_upvr (readonly)
		[10]: TelemetryEventType_upvr (readonly)
		[11]: View_upvr (readonly)
	]]
	local var15_upvw
	if FFlagEnableAbuseReportRevampAnalytics_upvr then
		var15_upvw = useAnalyticsContext_upvr()
	end
	if FFlagEnableAbuseReportRevampAnalytics_upvr then
		local _ = {arg1.contentConfig, arg1.formDataKeysWithError, sendAnalyticsEvent_upvr, var15_upvw}
	else
	end
	return React_upvr.createElement(View_upvr, {
		tag = "size-full-0 auto-y col gap-xxlarge";
	}, React_upvr.useMemo(function() -- Line 36
		--[[ Upvalues[11]:
			[1]: arg1 (readonly)
			[2]: ComponentType_upvr (copied, readonly)
			[3]: React_upvr (copied, readonly)
			[4]: Dropdown_upvr (copied, readonly)
			[5]: FreeComment_upvr (copied, readonly)
			[6]: Paragraph_upvr (copied, readonly)
			[7]: WebViewLink_upvr (copied, readonly)
			[8]: FFlagEnableAbuseReportRevampAnalytics_upvr (copied, readonly)
			[9]: sendAnalyticsEvent_upvr (copied, readonly)
			[10]: TelemetryEventType_upvr (copied, readonly)
			[11]: var15_upvw (read and write)
		]]
		if arg1.contentConfig == nil then
			return {}
		end
		if arg1.contentConfig.type == "configurableComponentList" then
			for i, v in ipairs(arg1.contentConfig.configurableComponentList.components) do
				if v.componentType == ComponentType_upvr.Dropdown then
					local tbl_2 = {
						component = v;
					}
					local var25 = false
					if v.formDataKey ~= nil then
						if table.find(arg1.formDataKeysWithError, v.formDataKey) == nil then
							var25 = false
						else
							var25 = true
						end
					end
					tbl_2.isErrorState = var25
					tbl_2.layoutOrder = i
					;({})[`{v.componentType}{i}`] = React_upvr.createElement(Dropdown_upvr, tbl_2)
				elseif v.componentType == ComponentType_upvr.FreeComment then
					local tbl = {
						component = v;
					}
					local var27 = false
					if v.formDataKey ~= nil then
						if table.find(arg1.formDataKeysWithError, v.formDataKey) == nil then
							var27 = false
						else
							var27 = true
						end
					end
					tbl.isErrorState = var27
					tbl.layoutOrder = i
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					;({})[`{v.componentType}{i}`] = React_upvr.createElement(FreeComment_upvr, tbl)
				elseif v.componentType == ComponentType_upvr.Paragraph then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					;({})[`{v.componentType}{i}`] = React_upvr.createElement(Paragraph_upvr, {
						component = v;
						layoutOrder = i;
					})
				elseif v.componentType == ComponentType_upvr.WebViewLink then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					;({})[`{v.componentType}{i}`] = React_upvr.createElement(WebViewLink_upvr, {
						component = v;
						layoutOrder = i;
					})
				elseif FFlagEnableAbuseReportRevampAnalytics_upvr then
					sendAnalyticsEvent_upvr({
						eventType = TelemetryEventType_upvr.Error;
						context = var15_upvw;
						meta = {
							error = `SingleStepInnerContentRenderer - Unsupported component type: {v.componentType}`;
						};
					})
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return {}
		end
		return {}
	end, {arg1.contentConfig, arg1.formDataKeysWithError}))
end)