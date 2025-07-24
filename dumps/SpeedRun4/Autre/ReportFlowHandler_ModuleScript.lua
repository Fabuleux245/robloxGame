-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:16
-- Luau version 6, Types version 3
-- Time taken: 0.010945 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local AbuseReportBeduiTypes = require(GenericAbuseReporting.Bedui.Provider.AbuseReportBeduiTypes)
local BeduiAnalytics = require(GenericAbuseReporting.Bedui.Utils.BeduiAnalytics)
local useTokens_upvr = Foundation.Hooks.useTokens
local useBeduiData_upvr = require(GenericAbuseReporting.Bedui.Provider.useBeduiData)
local useFormData_upvr = require(GenericAbuseReporting.Bedui.Provider.useFormData)
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local FFlagEnableAbuseReportRevampAnalytics_upvr = require(Parent.SharedFlags).FFlagEnableAbuseReportRevampAnalytics
local useAnalyticsContext_upvr = require(GenericAbuseReporting.Bedui.Provider.useAnalyticsContext)
local useLayerCollector_upvr = require(Parent.UIBlox).Core.Layout.LayerCollector.useLayerCollector
local AbuseReportBeduiContextStatus_upvr = AbuseReportBeduiTypes.AbuseReportBeduiContextStatus
local validateBeduiData_upvr = require(GenericAbuseReporting.Bedui.Provider.validateBeduiData)
local sendAnalyticsEvent_upvr = BeduiAnalytics.sendAnalyticsEvent
local TelemetryEventType_upvr = BeduiAnalytics.TelemetryEventType
local InnerContentConfigType_upvr = AbuseReportBeduiTypes.InnerContentConfigType
local Cryo_upvr = require(Parent.Cryo)
local Players_upvr = game:GetService("Players")
local createReport_upvr = require(GenericAbuseReporting.Bedui.Utils.createReport)
local ValueToAbuseCategory_upvr = require(GenericAbuseReporting.Enums.ValueToAbuseCategory)
local AbuseCategory_upvr = require(GenericAbuseReporting.Enums.AbuseCategory)
local submitReport_upvr = require(GenericAbuseReporting.Bedui.Utils.submitReport)
local Dash_upvr = require(Parent.Dash)
local SingleStepContainer_upvr = require(GenericAbuseReporting.Bedui.SingleStepContainer)
local SingleStepInnerContentRenderer_upvr = require(GenericAbuseReporting.Bedui.SingleStepInnerContentRenderer)
local ArgCheck_upvr = require(Parent.ArgCheck)
local ButtonVariant_upvr = Foundation.Enums.ButtonVariant
local FillBehavior_upvr = Foundation.Enums.FillBehavior
local Skeleton_upvr = Foundation.Skeleton
local Radius_upvr = Foundation.Enums.Radius
local Empty_upvr = Foundation.Empty
local Stepper_upvr = require(GenericAbuseReporting.Common.Stepper)
return React_upvr.memo(function(arg1) -- Line 54, Named "ReportFlowHandler"
	--[[ Upvalues[30]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useBeduiData_upvr (readonly)
		[4]: useFormData_upvr (readonly)
		[5]: useRoactService_upvr (readonly)
		[6]: RoactNetworking_upvr (readonly)
		[7]: FFlagEnableAbuseReportRevampAnalytics_upvr (readonly)
		[8]: useAnalyticsContext_upvr (readonly)
		[9]: useLayerCollector_upvr (readonly)
		[10]: AbuseReportBeduiContextStatus_upvr (readonly)
		[11]: validateBeduiData_upvr (readonly)
		[12]: sendAnalyticsEvent_upvr (readonly)
		[13]: TelemetryEventType_upvr (readonly)
		[14]: InnerContentConfigType_upvr (readonly)
		[15]: Cryo_upvr (readonly)
		[16]: Players_upvr (readonly)
		[17]: createReport_upvr (readonly)
		[18]: ValueToAbuseCategory_upvr (readonly)
		[19]: AbuseCategory_upvr (readonly)
		[20]: submitReport_upvr (readonly)
		[21]: Dash_upvr (readonly)
		[22]: SingleStepContainer_upvr (readonly)
		[23]: SingleStepInnerContentRenderer_upvr (readonly)
		[24]: ArgCheck_upvr (readonly)
		[25]: ButtonVariant_upvr (readonly)
		[26]: FillBehavior_upvr (readonly)
		[27]: Skeleton_upvr (readonly)
		[28]: Radius_upvr (readonly)
		[29]: Empty_upvr (readonly)
		[30]: Stepper_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState({})
	local var8_result1_upvr = useBeduiData_upvr()
	local formData_upvr = useFormData_upvr().formData
	local any_useRef_result1_upvr = React_upvr.useRef(false)
	local var41_upvw = false
	local var42_upvw
	local var43_upvr
	if FFlagEnableAbuseReportRevampAnalytics_upvr then
		local useAnalyticsContext_upvr_result1_upvw = useAnalyticsContext_upvr()
		var41_upvw = useAnalyticsContext_upvr_result1_upvw.isReportSubmitted
		var42_upvw = useAnalyticsContext_upvr_result1_upvw.setIsReportSubmitted
	end
	if useLayerCollector_upvr().absoluteSize.X >= 540 then
		var43_upvr = false
	else
		var43_upvr = true
	end
	local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 75
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: AbuseReportBeduiContextStatus_upvr (copied, readonly)
		]]
		local var46 = true
		if var8_result1_upvr ~= nil then
			if var8_result1_upvr.status ~= AbuseReportBeduiContextStatus_upvr.Loading then
				var46 = false
			else
				var46 = true
			end
		end
		return var46
	end, {var8_result1_upvr})
	if FFlagEnableAbuseReportRevampAnalytics_upvr then
		local tbl_9 = {var8_result1_upvr, any_useMemo_result1_upvr_2, validateBeduiData_upvr, sendAnalyticsEvent_upvr, useAnalyticsContext_upvr_result1_upvw}
		-- KONSTANTWARNING: GOTO [86] #70
	end
	-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [81] 67. Error Block 37 start (CF ANALYSIS FAILED)
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 80
		--[[ Upvalues[8]:
			[1]: FFlagEnableAbuseReportRevampAnalytics_upvr (copied, readonly)
			[2]: any_useMemo_result1_upvr_2 (readonly)
			[3]: var8_result1_upvr (readonly)
			[4]: validateBeduiData_upvr (copied, readonly)
			[5]: sendAnalyticsEvent_upvr (copied, readonly)
			[6]: TelemetryEventType_upvr (copied, readonly)
			[7]: useAnalyticsContext_upvr_result1_upvw (read and write)
			[8]: AbuseReportBeduiContextStatus_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var56
		if FFlagEnableAbuseReportRevampAnalytics_upvr then
			if any_useMemo_result1_upvr_2 or var8_result1_upvr == nil then
				return true
			end
			var56 = var8_result1_upvr
			local validateBeduiData_upvr_result1, var16_result2 = validateBeduiData_upvr(var56.beduiData)
			if not validateBeduiData_upvr_result1 then
				var56 = sendAnalyticsEvent_upvr
				var56({
					eventType = TelemetryEventType_upvr.Error;
					context = useAnalyticsContext_upvr_result1_upvw;
					meta = {
						error = `ReportFlowHandler - Invalid Bedui data: {tostring(var16_result2)}`;
					};
				})
				var56 = true
				return var56
			end
			if var8_result1_upvr.status ~= AbuseReportBeduiContextStatus_upvr.Error then
				var56 = false
			else
				var56 = true
			end
			return var56
		end
		if var8_result1_upvr ~= nil then
			var56 = var8_result1_upvr
			if var56.beduiData ~= nil then
				var56 = var8_result1_upvr
				var56 = AbuseReportBeduiContextStatus_upvr.Error
				if var56.status ~= var56 then
					var56 = var8_result1_upvr.beduiData
				end
			end
		end
		return not validateBeduiData_upvr(var56)
	end, {var8_result1_upvr})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 110
		--[[ Upvalues[5]:
			[1]: InnerContentConfigType_upvr (copied, readonly)
			[2]: formData_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: Cryo_upvr (copied, readonly)
			[5]: any_useState_result1_upvr (readonly)
		]]
		if arg1_2 == nil then
			return true
		end
		local var69 = false
		if arg1_2.type == InnerContentConfigType_upvr.ConfigurableComponentList then
			for _, v in arg1_2.configurableComponentList.components do
				if not v.isOptional and formData_upvr[v.formDataKey] == nil then
					var69 = true
					any_useState_result2_upvr(Cryo_upvr.List.join(any_useState_result1_upvr, {v.formDataKey}))
				end
			end
		end
		return not var69
	end, {formData_upvr, any_useState_result1_upvr})
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	if FFlagEnableAbuseReportRevampAnalytics_upvr then
		local _ = {formData_upvr, Players_upvr.LocalPlayer, arg1.abuseVector, arg1.targetId, sendAnalyticsEvent_upvr, useAnalyticsContext_upvr_result1_upvw}
	else
	end
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 129
		--[[ Upvalues[12]:
			[1]: FFlagEnableAbuseReportRevampAnalytics_upvr (copied, readonly)
			[2]: Players_upvr (copied, readonly)
			[3]: sendAnalyticsEvent_upvr (copied, readonly)
			[4]: TelemetryEventType_upvr (copied, readonly)
			[5]: useAnalyticsContext_upvr_result1_upvw (read and write)
			[6]: createReport_upvr (copied, readonly)
			[7]: ValueToAbuseCategory_upvr (copied, readonly)
			[8]: formData_upvr (readonly)
			[9]: AbuseCategory_upvr (copied, readonly)
			[10]: arg1 (readonly)
			[11]: submitReport_upvr (copied, readonly)
			[12]: useRoactService_upvr_result1_upvr (readonly)
		]]
		if FFlagEnableAbuseReportRevampAnalytics_upvr then
			local LocalPlayer = Players_upvr.LocalPlayer
			if LocalPlayer == nil then
				local tbl_6 = {
					eventType = TelemetryEventType_upvr.Error;
					context = useAnalyticsContext_upvr_result1_upvw;
				}
				local tbl_4 = {
					error = "ReportFlowHandler - LocalPlayer is nil";
				}
				tbl_6.meta = tbl_4
				sendAnalyticsEvent_upvr(tbl_6)
			else
				local tbl_8 = {}
				tbl_4 = ValueToAbuseCategory_upvr[formData_upvr.legacy_abuse_category]
				local var79 = tbl_4
				if not var79 then
					var79 = AbuseCategory_upvr.ABUSE_CATEGORY_INVALID
				end
				tbl_8.abuseCategory = var79
				tbl_8.abuseVector = arg1.abuseVector
				tbl_8.comment = formData_upvr.free_comment
				tbl_8.submitterId = tostring(LocalPlayer.UserId)
				tbl_8.targetId = arg1.targetId
				submitReport_upvr(useRoactService_upvr_result1_upvr, createReport_upvr(tbl_8)):andThen(function(arg1_3) -- Line 151
					--[[ Upvalues[3]:
						[1]: sendAnalyticsEvent_upvr (copied, readonly)
						[2]: TelemetryEventType_upvr (copied, readonly)
						[3]: useAnalyticsContext_upvr_result1_upvw (copied, read and write)
					]]
					sendAnalyticsEvent_upvr({
						eventType = TelemetryEventType_upvr.Submitted;
						context = useAnalyticsContext_upvr_result1_upvw;
					})
				end):catch(function(arg1_4) -- Line 157
					--[[ Upvalues[3]:
						[1]: sendAnalyticsEvent_upvr (copied, readonly)
						[2]: TelemetryEventType_upvr (copied, readonly)
						[3]: useAnalyticsContext_upvr_result1_upvw (copied, read and write)
					]]
					sendAnalyticsEvent_upvr({
						eventType = TelemetryEventType_upvr.Error;
						context = useAnalyticsContext_upvr_result1_upvw;
						meta = {
							error = `ReportFlowHandler - Submitting report: {tostring(arg1_4)}`;
						};
					})
				end)
			end
		end
		local LocalPlayer_2 = Players_upvr.LocalPlayer
		if LocalPlayer_2 == nil then
			warn("LocalPlayer is not available for bedui report submission")
		else
			local tbl_2 = {}
			local var87 = ValueToAbuseCategory_upvr[formData_upvr.legacy_abuse_category]
			if not var87 then
				var87 = AbuseCategory_upvr.ABUSE_CATEGORY_INVALID
			end
			tbl_2.abuseCategory = var87
			tbl_2.abuseVector = arg1.abuseVector
			tbl_2.comment = formData_upvr.free_comment
			tbl_2.submitterId = tostring(LocalPlayer_2.UserId)
			tbl_2.targetId = arg1.targetId
			submitReport_upvr(useRoactService_upvr_result1_upvr, createReport_upvr(tbl_2))
		end
	end, {formData_upvr, Players_upvr.LocalPlayer, arg1.abuseVector, arg1.targetId})
	local function _() -- Line 196
		--[[ Upvalues[22]:
			[1]: FFlagEnableAbuseReportRevampAnalytics_upvr (copied, readonly)
			[2]: any_useMemo_result1_upvr_2 (readonly)
			[3]: any_useMemo_result1_upvr (readonly)
			[4]: var8_result1_upvr (readonly)
			[5]: sendAnalyticsEvent_upvr (copied, readonly)
			[6]: TelemetryEventType_upvr (copied, readonly)
			[7]: useAnalyticsContext_upvr_result1_upvw (read and write)
			[8]: Dash_upvr (copied, readonly)
			[9]: var43_upvr (readonly)
			[10]: Cryo_upvr (copied, readonly)
			[11]: React_upvr (copied, readonly)
			[12]: SingleStepContainer_upvr (copied, readonly)
			[13]: any_useState_result1_upvr (readonly)
			[14]: SingleStepInnerContentRenderer_upvr (copied, readonly)
			[15]: ArgCheck_upvr (copied, readonly)
			[16]: var41_upvw (read and write)
			[17]: any_useCallback_result1_upvr_2 (readonly)
			[18]: var42_upvw (read and write)
			[19]: any_useRef_result1_upvr (readonly)
			[20]: any_useCallback_result1_upvr (readonly)
			[21]: ButtonVariant_upvr (copied, readonly)
			[22]: FillBehavior_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if FFlagEnableAbuseReportRevampAnalytics_upvr and any_useMemo_result1_upvr_2 then
			return {}
		end
		if any_useMemo_result1_upvr or not var8_result1_upvr.beduiData or not var8_result1_upvr.beduiData.nodes then
			if FFlagEnableAbuseReportRevampAnalytics_upvr then
				sendAnalyticsEvent_upvr({
					eventType = TelemetryEventType_upvr.Error;
					context = useAnalyticsContext_upvr_result1_upvw;
					meta = {
						error = "ReportFlowHandler - Invalid Bedui data or no nodes found";
					};
				})
			else
				warn("No Bedui data available")
			end
			return {}
		end
		local module = {}
		for _, v_2 in var8_result1_upvr.beduiData.nodes do
			local any_joinDeep_result1_upvr = Dash_upvr.joinDeep({}, v_2)
			local var104 = var43_upvr
			if var104 then
				var104 = v_2.footerContentConfig
			end
			if var104 then
				any_joinDeep_result1_upvr.innerContentConfig.configurableComponentList.components = Cryo_upvr.List.join(any_joinDeep_result1_upvr.innerContentConfig.configurableComponentList.components, any_joinDeep_result1_upvr.footerContentConfig.configurableComponentList.components)
			end
			if module[any_joinDeep_result1_upvr.stepId] ~= nil then
				if FFlagEnableAbuseReportRevampAnalytics_upvr then
					sendAnalyticsEvent_upvr({
						eventType = TelemetryEventType_upvr.Error;
						context = useAnalyticsContext_upvr_result1_upvw;
						meta = {
							error = `ReportFlowHandler - Duplicate stepId found: {tostring(any_joinDeep_result1_upvr.stepId)}`;
						};
					})
				else
					warn("Duplicate stepId found in Bedui data: "..tostring(any_joinDeep_result1_upvr.stepId))
				end
				return {}
			end
			local tbl_3 = {
				stepId = any_joinDeep_result1_upvr.stepId;
				predefinedNextStepId = any_joinDeep_result1_upvr.actionInfo.predefinedNextStepId;
				content = React_upvr.createElement(SingleStepContainer_upvr, {
					node = any_joinDeep_result1_upvr;
					formDataKeysWithError = any_useState_result1_upvr;
				});
			}
			local validateState
			if any_joinDeep_result1_upvr.footerContentConfig and not var104 then
				validateState = React_upvr.createElement
				validateState = validateState(SingleStepInnerContentRenderer_upvr, {
					contentConfig = any_joinDeep_result1_upvr.footerContentConfig;
					formDataKeysWithError = any_useState_result1_upvr;
				})
			else
				validateState = nil
			end
			tbl_3.footer = validateState
			validateState = {}
			validateState.continueButton = any_joinDeep_result1_upvr.actionInfo.actionLabel
			tbl_3.labels = validateState
			validateState = nil
			tbl_3.onStepCancel = validateState
			function validateState() -- Line 260, Named "onStepContinue"
				--[[ Upvalues[10]:
					[1]: FFlagEnableAbuseReportRevampAnalytics_upvr (copied, readonly)
					[2]: ArgCheck_upvr (copied, readonly)
					[3]: var41_upvw (copied, read and write)
					[4]: sendAnalyticsEvent_upvr (copied, readonly)
					[5]: TelemetryEventType_upvr (copied, readonly)
					[6]: useAnalyticsContext_upvr_result1_upvw (copied, read and write)
					[7]: any_joinDeep_result1_upvr (readonly)
					[8]: any_useCallback_result1_upvr_2 (copied, readonly)
					[9]: var42_upvw (copied, read and write)
					[10]: any_useRef_result1_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [50] 39. Error Block 10 start (CF ANALYSIS FAILED)
				any_useCallback_result1_upvr_2()
				var42_upvw(true)
				do
					return
				end
				-- KONSTANTERROR: [50] 39. Error Block 10 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [56] 45. Error Block 26 start (CF ANALYSIS FAILED)
				local var112 = ArgCheck_upvr
				if any_useRef_result1_upvr.current ~= false then
					var112 = false
				else
					var112 = true
				end
				var112.assert(var112, "Report should only be able to be submitted once")
				if any_joinDeep_result1_upvr.actionInfo.shouldSubmit then
					if not any_useRef_result1_upvr.current then
						any_useCallback_result1_upvr_2()
						any_useRef_result1_upvr.current = true
					end
				end
				-- KONSTANTERROR: [56] 45. Error Block 26 end (CF ANALYSIS FAILED)
			end
			tbl_3.onStepContinue = validateState
			function validateState() -- Line 292
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr (copied, readonly)
					[2]: any_joinDeep_result1_upvr (readonly)
				]]
				return any_useCallback_result1_upvr(any_joinDeep_result1_upvr.innerContentConfig)
			end
			tbl_3.validateState = validateState
			validateState = {}
			local tbl_5 = {}
			if any_joinDeep_result1_upvr.actionInfo.shouldSubmit then
				-- KONSTANTWARNING: GOTO [232] #164
			end
			tbl_5.variant = ButtonVariant_upvr.Standard
			if var43_upvr then
			else
			end
			tbl_5.fillBehavior = FillBehavior_upvr.Fit
			validateState.continueButton = tbl_5
			validateState.buttonXAlignment = "align-x-right"
			tbl_3.stepStyle = validateState
			module[any_joinDeep_result1_upvr.stepId] = tbl_3
		end
		return module
	end
	if FFlagEnableAbuseReportRevampAnalytics_upvr then
		local _ = {any_useMemo_result1_upvr_2, any_useMemo_result1_upvr, var8_result1_upvr, any_useState_result1_upvr, var43_upvr, any_useCallback_result1_upvr_2, any_useCallback_result1_upvr, var41_upvw, sendAnalyticsEvent_upvr, useAnalyticsContext_upvr_result1_upvw}
	else
		local _ = {any_useMemo_result1_upvr, var8_result1_upvr, any_useState_result1_upvr, var43_upvr, any_useCallback_result1_upvr_2, any_useCallback_result1_upvr, any_useRef_result1_upvr.current}
	end
	if any_useMemo_result1_upvr_2 then
		local _ = {
			radius = Radius_upvr.Medium;
			Size = UDim2.new(1, 0, 0, useTokens_upvr().Size.Size_2500);
		}
		-- KONSTANTWARNING: GOTO [268] #215
	end
	-- KONSTANTERROR: [81] 67. Error Block 37 end (CF ANALYSIS FAILED)
end)