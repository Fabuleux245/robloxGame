-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:25
-- Luau version 6, Types version 3
-- Time taken: 0.006343 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local HttpService_upvr = game:GetService("HttpService")
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local Flags_upvr = require(script.Parent.Flags)
local tbl_12_upvr = {{
	localizationKey = "CoreScripts.Ads.Label.InappropriateAd";
	value = "ABUSE_CATEGORY_INAPPROPRIATE_AD";
}}
function buildReport(arg1, arg2, arg3, arg4, arg5) -- Line 56
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local module = {}
	local tbl_13 = {
		ENTRY_POINT = {
			valueList = {{
				data = "in-experience";
			}};
		};
		SUBMITTER_USER_ID = {
			valueList = {{
				data = tostring(arg1);
			}};
		};
	}
	local tbl_10 = {}
	local tbl_14 = {}
	local tbl = {}
	tbl.data = arg3
	tbl_14[1] = tbl
	tbl_10.valueList = tbl_14
	tbl_13.REPORTED_ABUSE_CATEGORY = tbl_10
	tbl_13.PLACE_ID = {
		valueList = {{
			data = tostring(game.PlaceId);
		}};
	}
	local tbl_3 = {}
	local tbl_4 = {}
	local tbl_11 = {}
	tbl_11.data = arg4
	tbl_4[1] = tbl_11
	tbl_3.valueList = tbl_4
	tbl_13.REPORTER_COMMENT = tbl_3
	tbl_13.REPORTED_ABUSE_VECTOR = {
		valueList = {{
			data = "ad";
		}};
	}
	local tbl_5 = {}
	local tbl_8 = {}
	local tbl_16 = {}
	tbl_16.data = arg2
	tbl_8[1] = tbl_16
	tbl_5.valueList = tbl_8
	tbl_13.SCREENSHOT_ID = tbl_5
	local tbl_2 = {}
	local tbl_17 = {}
	local tbl_9 = {}
	tbl_9.data = arg5
	tbl_17[1] = tbl_9
	tbl_2.valueList = tbl_17
	tbl_13.IDENTIFIED_ADS = tbl_2
	module.tags = tbl_13
	return HttpService_upvr:JSONEncode(module)
end
local function var34_upvr(arg1) -- Line 112
	return {{
		assetId = arg1.assetId;
		adUnitName = arg1.adUnitName;
		encryptedAdTrackingData = arg1.encryptedAdTrackingData;
		encryptionMetadata = arg1.encryptionMetadata;
	}}
end
local any_GetFixReportAdPopupAdInfoType_result1_upvr = Flags_upvr.GetFixReportAdPopupAdInfoType()
local getAppFeaturePolicies_upvr = require(Parent.UniversalAppPolicy).getAppFeaturePolicies
local default_upvr = LoggingProtocol_upvr.default
local React_upvr = require(Parent.React)
local any_GetEnableHideReportAdModalDuringScreenshot_result1_upvr = Flags_upvr.GetEnableHideReportAdModalDuringScreenshot()
local ScreenshotManager_upvr = require(Parent.Screenshot).ScreenshotManager
local Players_upvr = game:GetService("Players")
local AdsInteractivityTelemetry_upvr = require(Parent_2.AdsInteractivityTelemetry)
local Roact_upvr = require(Parent.Roact)
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Localization_upvr = require(Parent.RobloxAppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local AppStyleProvider_upvr = require(Parent.UIBlox).App.Style.AppStyleProvider
local DefaultTwoStepReportFlow_upvr = require(Parent.GenericAbuseReporting).UXFlows.DefaultTwoStepReportFlow
local ReportAdFooter_upvr = require(Parent_2.ReportAdFooter)
local AdsDisplayOrder_upvr = require(Parent_2.AdsDisplayOrder)
function ReportAdPopup(arg1) -- Line 129
	--[[ Upvalues[21]:
		[1]: any_GetFixReportAdPopupAdInfoType_result1_upvr (readonly)
		[2]: var34_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: getAppFeaturePolicies_upvr (readonly)
		[5]: default_upvr (readonly)
		[6]: LoggingProtocol_upvr (readonly)
		[7]: Flags_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: any_GetEnableHideReportAdModalDuringScreenshot_result1_upvr (readonly)
		[10]: ScreenshotManager_upvr (readonly)
		[11]: Players_upvr (readonly)
		[12]: AdsInteractivityTelemetry_upvr (readonly)
		[13]: Roact_upvr (readonly)
		[14]: LocalizationProvider_upvr (readonly)
		[15]: Localization_upvr (readonly)
		[16]: LocalizationService_upvr (readonly)
		[17]: AppStyleProvider_upvr (readonly)
		[18]: DefaultTwoStepReportFlow_upvr (readonly)
		[19]: tbl_12_upvr (readonly)
		[20]: ReportAdFooter_upvr (readonly)
		[21]: AdsDisplayOrder_upvr (readonly)
	]]
	local var53_upvr
	if any_GetFixReportAdPopupAdInfoType_result1_upvr then
		var53_upvr = {}
		var53_upvr[1] = table.clone(arg1.adInfo)
	else
		var53_upvr = var34_upvr(arg1.adInfo)
	end
	local var54_upvw = true
	local getAppFeaturePolicies_upvr_result1 = getAppFeaturePolicies_upvr()
	if getAppFeaturePolicies_upvr_result1 ~= nil then
		local any_getShowIllegalContentReportingUI_result1 = getAppFeaturePolicies_upvr_result1.getShowIllegalContentReportingUI()
		local var57 = false
		if any_getShowIllegalContentReportingUI_result1 ~= nil then
			var57 = any_getShowIllegalContentReportingUI_result1
		end
		var54_upvw = var57
	else
		default_upvr:logRobloxTelemetryEvent({
			eventName = "UniversalAppPolicyCallFailed";
			backends = {LoggingProtocol_upvr.TelemetryBackends.Points};
			throttlingPercentage = Flags_upvr.GetFIntUniversalAppPolicyFailureTelemetryThrottleHundredthsPercent();
			lastUpdated = {24, 8, 22};
			description = "Call to UniversalAppPolicy (GUAC) failed in Report Ad popup";
		}, nil, {
			assetId = var53_upvr[1].assetId;
			encryptedAdTrackingData = var53_upvr[1].encryptedAdTrackingData;
			encryptionMetadata = var53_upvr[1].encryptionMetadata;
		})
	end
	local var63_upvw = ""
	local any_JSONEncode_result1_upvr = HttpService_upvr:JSONEncode(var53_upvr)
	local tbl_15 = {}
	local tbl_7 = {}
	local tbl_6 = {
		analyticsContext = "Ad";
		onCloseProps = {
			hasPreviousSteps = false;
			onAbandon = function() -- Line 195, Named "onAbandon"
				--[[ Upvalues[2]:
					[1]: AdsInteractivityTelemetry_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				AdsInteractivityTelemetry_upvr.logReportAdEvent("close")
				arg1.onClose()
			end;
		};
		onSubmitProps = {
			hasNextSteps = false;
			onSubmit = React_upvr.useCallback(function(arg1_2, arg2) -- Line 159
				--[[ Upvalues[7]:
					[1]: any_GetEnableHideReportAdModalDuringScreenshot_result1_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: ScreenshotManager_upvr (copied, readonly)
					[4]: Players_upvr (copied, readonly)
					[5]: var63_upvw (read and write)
					[6]: any_JSONEncode_result1_upvr (readonly)
					[7]: AdsInteractivityTelemetry_upvr (copied, readonly)
				]]
				if any_GetEnableHideReportAdModalDuringScreenshot_result1_upvr then
					arg1.onClose()
				end
				ScreenshotManager_upvr:TakeScreenshotWithCallback(function(arg1_3) -- Line 163
					--[[ Upvalues[6]:
						[1]: Players_upvr (copied, readonly)
						[2]: var63_upvw (copied, read and write)
						[3]: arg1_2 (readonly)
						[4]: arg2 (readonly)
						[5]: any_JSONEncode_result1_upvr (copied, readonly)
						[6]: AdsInteractivityTelemetry_upvr (copied, readonly)
					]]
					local LocalPlayer = Players_upvr.LocalPlayer
					if LocalPlayer ~= nil then
						var63_upvw = buildReport(LocalPlayer.UserId, arg1_3, arg1_2, arg2, any_JSONEncode_result1_upvr)
						Players_upvr:ReportAbuseV3(LocalPlayer, var63_upvw)
						AdsInteractivityTelemetry_upvr.logReportAdEvent("submit")
					end
				end, nil)
				if any_GetEnableHideReportAdModalDuringScreenshot_result1_upvr and arg1.onOpen then
					arg1.onOpen()
				end
				return true
			end, {});
		};
		onComplete = arg1.onClose;
		reportCategories = tbl_12_upvr;
		reportCategoryDefaultKey = tbl_12_upvr[1].value;
		isReportCategoryReadonly = true;
		localizationKeys = {
			formTitle = "CoreScripts.Ads.Label.ReportAd";
			completeTitle = "Feature.ReportAbuse.Title.SelectInSceneThankYou";
			completeDescription = "Feature.ReportAbuse.Label.SelectInSceneComplete";
		};
		scaleDialog = {
			X = 0.8;
			Y = 1;
		};
	}
	function tbl_6.footerContent() -- Line 218
		--[[ Upvalues[4]:
			[1]: var54_upvw (read and write)
			[2]: Roact_upvr (copied, readonly)
			[3]: ReportAdFooter_upvr (copied, readonly)
			[4]: var53_upvr (readonly)
		]]
		if var54_upvw then
			return Roact_upvr.createElement(ReportAdFooter_upvr, {
				assetId = var53_upvr[1].assetId;
			})
		end
		return nil
	end
	tbl_7.AbuseReportFlow = Roact_upvr.createElement(DefaultTwoStepReportFlow_upvr, tbl_6)
	tbl_15[1] = Roact_upvr.createElement("UIPadding", {
		PaddingBottom = UDim.new(0, 20);
	})
	tbl_15[2] = Roact_upvr.createElement(AppStyleProvider_upvr, {
		style = {
			themeName = "Dark";
			fontName = "Gotham";
		};
	}, tbl_7)
	return Roact_upvr.createElement("ScreenGui", {
		ResetOnSpawn = false;
		IgnoreGuiInset = true;
		DisplayOrder = AdsDisplayOrder_upvr.Modal;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		AutoLocalize = false;
		Enabled = arg1.showReportAdPopup;
	}, Roact_upvr.createElement("Frame", {
		Position = UDim2.new(0, 0, 0, 0);
		AnchorPoint = Vector2.new(0, 0);
		Size = UDim2.new(1, 0, 1, 0);
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
	}, {Roact_upvr.createElement("Frame", {
		Position = UDim2.new(0.5, 0, 0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Size = UDim2.new(0.8, 0, 0.6, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
	}, {Roact_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, tbl_15)})}))
end
return ReportAdPopup