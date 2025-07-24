-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:01
-- Luau version 6, Types version 3
-- Time taken: 0.004958 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local Players_upvr = game:GetService("Players")
local constants_upvr = require(Songbird.constants)
local tbl_upvr = {{
	localizationKey = "CoreScripts.TopBar.Label.InappropriateAudio";
	value = "ABUSE_CATEGORY_INAPT_CONTENT";
}}
local tbl_5_upvr = {
	maxSize = constants_upvr.BIG_VECTOR;
	onClose = function() -- Line 33, Named "onClose"
	end;
	Players = Players_upvr;
}
local HttpService_upvr = game:GetService("HttpService")
function buildReport(arg1, arg2, arg3, arg4) -- Line 49
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local module = {}
	local tbl_7 = {
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
	local tbl = {}
	local tbl_3 = {}
	local tbl_2 = {}
	tbl_2.data = arg2
	tbl_3[1] = tbl_2
	tbl.valueList = tbl_3
	tbl_7.REPORTED_ABUSE_CATEGORY = tbl
	local tbl_4 = {}
	local tbl_8 = {}
	local tbl_6 = {}
	tbl_6.data = arg3
	tbl_8[1] = tbl_6
	tbl_4.valueList = tbl_8
	tbl_7.REPORTER_COMMENT = tbl_4
	tbl_7.REPORT_TARGET_ASSET_ID = {
		valueList = {{
			data = tostring(arg4);
		}};
	}
	tbl_7.REPORTED_ABUSE_VECTOR = {
		valueList = {{
			data = "audio";
		}};
	}
	tbl_7.VARIANT = {
		valueList = {{
			data = "ChromeMusicWhatsPlaying";
		}};
	}
	module.tags = tbl_7
	return HttpService_upvr:JSONEncode(module)
end
local Cryo_upvr = require(Songbird.Parent.Cryo)
local ReportAudioPopupContext_upvr = require(Songbird.Components.ReportAudioPopupContext)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local logger_upvr = require(Songbird.logger)
local sendChromeWindowAnalytics_upvr = require(Songbird.Analytics.sendChromeWindowAnalytics)
local AnalyticActions_upvr = require(Songbird.Analytics.AnalyticActions)
local React_upvr = require(Songbird.Parent.React)
local Foundation_upvr = require(Songbird.Parent.Foundation)
local DefaultTwoStepReportFlow_upvr = require(Songbird.Parent.GenericAbuseReporting).UXFlows.DefaultTwoStepReportFlow
return function(arg1) -- Line 98, Named "ReportAudioPopup"
	--[[ Upvalues[13]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: ReportAudioPopupContext_upvr (readonly)
		[4]: MarketplaceService_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: logger_upvr (readonly)
		[7]: sendChromeWindowAnalytics_upvr (readonly)
		[8]: AnalyticActions_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: Foundation_upvr (readonly)
		[11]: DefaultTwoStepReportFlow_upvr (readonly)
		[12]: constants_upvr (readonly)
		[13]: tbl_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_5_upvr, arg1)
	local any_use_result1_upvr = ReportAudioPopupContext_upvr.use()
	local function var42() -- Line 102
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: any_use_result1_upvr (readonly)
		]]
		any_join_result1_upvr.onClose()
		any_use_result1_upvr.setVisibility(false)
	end
	if any_use_result1_upvr.isVisible then
		return React_upvr.createElement(Foundation_upvr.View, {
			tag = "size-full";
			sizeConstraint = nil;
		}, {
			AbuseReportFlow = React_upvr.createElement(DefaultTwoStepReportFlow_upvr, {
				analyticsContext = constants_upvr.AUDIO_ANALYTICS_CONTEXT;
				onCloseProps = {
					hasPreviousSteps = false;
					onAbandon = var42;
				};
				onSubmitProps = {
					hasNextSteps = false;
					onSubmit = function(arg1_2, arg2) -- Line 108
						--[[ Upvalues[7]:
							[1]: any_join_result1_upvr (readonly)
							[2]: any_use_result1_upvr (readonly)
							[3]: MarketplaceService_upvr (copied, readonly)
							[4]: Players_upvr (copied, readonly)
							[5]: logger_upvr (copied, readonly)
							[6]: sendChromeWindowAnalytics_upvr (copied, readonly)
							[7]: AnalyticActions_upvr (copied, readonly)
						]]
						-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
						local LocalPlayer = any_join_result1_upvr.Players.LocalPlayer
						if LocalPlayer and any_use_result1_upvr.assetId then
							local assetId_upvr = any_use_result1_upvr.assetId
							local pcall_result1, pcall_result2 = pcall(function() -- Line 113
								--[[ Upvalues[2]:
									[1]: MarketplaceService_upvr (copied, readonly)
									[2]: assetId_upvr (readonly)
								]]
								return MarketplaceService_upvr:GetProductInfo(assetId_upvr)
							end)
							if pcall_result1 then
								if pcall_result2.AssetTypeId == Enum.AssetType.Audio.Value then
									local buildReport_result1 = buildReport(LocalPlayer.UserId, arg1_2, arg2, any_use_result1_upvr.assetId)
									if buildReport_result1 then
										Players_upvr:ReportAbuseV3(LocalPlayer, buildReport_result1)
										logger_upvr:info("Audio abuse report submitted for asset ["..tostring(any_use_result1_upvr.assetId).."] with reason ["..arg1_2.."] and comment ["..arg2..']')
										sendChromeWindowAnalytics_upvr({
											assetId = assetId_upvr;
											action = AnalyticActions_upvr.SubmitAudioReport;
										})
										-- KONSTANTWARNING: GOTO [130] #100
									end
								else
									logger_upvr:info("Atempted to submit report for non-audio asset ["..tostring(any_use_result1_upvr.assetId).."] with reason ["..arg1_2.."] and comment ["..arg2..']')
									sendChromeWindowAnalytics_upvr({
										assetId = assetId_upvr;
										action = AnalyticActions_upvr.PreventNonAudioReport;
									})
								end
							else
								logger_upvr:warning("Failed to fetch ProductInfo for asset ["..tostring(any_use_result1_upvr.assetId)..']')
								sendChromeWindowAnalytics_upvr({
									assetId = assetId_upvr;
									action = AnalyticActions_upvr.PreventNonAudioReport;
								})
							end
						end
						-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [130] 100. Error Block 11 start (CF ANALYSIS FAILED)
						assetId_upvr = true
						do
							return assetId_upvr
						end
						-- KONSTANTERROR: [130] 100. Error Block 11 end (CF ANALYSIS FAILED)
					end;
				};
				onComplete = var42;
				reportCategories = tbl_upvr;
				reportCategoryDefaultKey = tbl_upvr[1].value;
				isReportCategoryReadonly = true;
				localizationKeys = {
					formTitle = "CoreScripts.TopBar.Label.ReportAudio";
				};
			});
		})
	end
	return nil
end