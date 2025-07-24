-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:03
-- Luau version 6, Types version 3
-- Time taken: 0.004908 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local GenericAbuseReporting = require(Songbird.Parent.GenericAbuseReporting)
local React_upvr = require(Songbird.Parent.React)
local FocusNavigationUtils = require(Songbird.Parent.FocusNavigationUtils)
local tbl_3_upvr = {{
	localizationKey = "Feature.SongDetails.Label.InappropriateAudio";
	value = "InappropriateAudio";
}, {
	localizationKey = "Feature.SongDetails.Label.InappropriateThumbnail";
	value = "InappropriateThumbnail";
}}
local tbl_4_upvr = {
	Audio = "audio";
	Image = "image";
}
local AbuseEntrypoint_upvr = GenericAbuseReporting.Enums.AbuseEntrypoint
local AbuseCategory_upvr = GenericAbuseReporting.Enums.AbuseCategory
local HttpService_upvr = game:GetService("HttpService")
local function buildReport_upvr(arg1) -- Line 58, Named "buildReport"
	--[[ Upvalues[3]:
		[1]: AbuseEntrypoint_upvr (readonly)
		[2]: AbuseCategory_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local module_upvr = {
		tags = {
			ENTRY_POINT = {
				valueList = {{
					data = AbuseEntrypoint_upvr.APP;
				}};
			};
			SUBMITTER_USER_ID = {
				valueList = {{
					data = tostring(arg1.userId);
				}};
			};
			REPORTED_ABUSE_CATEGORY = {
				valueList = {{
					data = AbuseCategory_upvr.ABUSE_CATEGORY_INAPT_CONTENT;
				}};
			};
			REPORTER_COMMENT = {
				valueList = {{
					data = arg1.comment;
				}};
			};
			REPORT_TARGET_ASSET_ID = {
				valueList = {{
					data = arg1.assetId;
				}};
			};
			REPORTED_ABUSE_VECTOR = {
				valueList = {{
					data = arg1.abuseVector;
				}};
			};
			VARIANT = {
				valueList = {{
					data = arg1.variant;
				}};
			};
		};
	}
	local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 111
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		return HttpService_upvr:JSONEncode(module_upvr)
	end)
	if pcall_result1_3 then
		return pcall_result2_2
	end
	return nil
end
local useLocalUserId_upvr = require(Songbird.Parent.AssetFavorites).useLocalUserId
local useCallback_upvr = React_upvr.useCallback
local Players_upvr = game:GetService("Players")
local logger_upvr = require(Songbird.logger)
local Foundation_upvr = require(Songbird.Parent.Foundation)
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local DefaultTwoStepReportFlow_upvr = GenericAbuseReporting.UXFlows.DefaultTwoStepReportFlow
return React_upvr.memo(function(arg1) -- Line 118, Named "ReportSongDialog"
	--[[ Upvalues[12]:
		[1]: useLocalUserId_upvr (readonly)
		[2]: useCallback_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: buildReport_upvr (readonly)
		[5]: tbl_4_upvr (readonly)
		[6]: Players_upvr (readonly)
		[7]: logger_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: Foundation_upvr (readonly)
		[10]: FocusRoot_upvr (readonly)
		[11]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[12]: DefaultTwoStepReportFlow_upvr (readonly)
	]]
	local var38_result1_upvr = useLocalUserId_upvr()
	local var39_result1 = useCallback_upvr(function() -- Line 121
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.onClose then
			arg1.onClose()
		end
	end, {arg1.onClose})
	return React_upvr.createElement(Foundation_upvr.View, {
		tag = "size-full-0 auto-y";
		selectionGroup = true;
	}, {
		FocusRoot = React_upvr.createElement(FocusRoot_upvr, {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
			isIsolated = true;
			isAutoFocusRoot = true;
		}, {
			AbuseReportFlow = React_upvr.createElement(DefaultTwoStepReportFlow_upvr, {
				analyticsContext = arg1.analyticsSource;
				onCloseProps = {
					hasPreviousSteps = false;
					onAbandon = var39_result1;
				};
				onSubmitProps = {
					hasNextSteps = false;
					onSubmit = useCallback_upvr(function(arg1_2, arg2) -- Line 127
						--[[ Upvalues[7]:
							[1]: tbl_3_upvr (copied, readonly)
							[2]: arg1 (readonly)
							[3]: buildReport_upvr (copied, readonly)
							[4]: var38_result1_upvr (readonly)
							[5]: tbl_4_upvr (copied, readonly)
							[6]: Players_upvr (copied, readonly)
							[7]: logger_upvr (copied, readonly)
						]]
						-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
						local var60
						if arg1_2 ~= tbl_3_upvr[1].value then
							var60 = false
						else
							var60 = true
						end
						if var60 then
							local assetId = arg1.audio.assetId
						else
						end
						if arg1.audio.thumbnailAssetId then
							local tbl_2 = {}
							local var63 = var38_result1_upvr
							tbl_2.userId = var63
							tbl_2.comment = arg2
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
							tbl_2.assetId = arg1.audio.thumbnailAssetId
							if var60 then
								var63 = tbl_4_upvr.Audio
							else
								var63 = tbl_4_upvr.Image
							end
							tbl_2.abuseVector = var63
							tbl_2.variant = arg1.analyticsSource
							local buildReport_upvr_result1_upvr = buildReport_upvr(tbl_2)
							if buildReport_upvr_result1_upvr and Players_upvr.LocalPlayer then
								local LocalPlayer_upvr = Players_upvr.LocalPlayer
								local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 143
									--[[ Upvalues[3]:
										[1]: Players_upvr (copied, readonly)
										[2]: LocalPlayer_upvr (readonly)
										[3]: buildReport_upvr_result1_upvr (readonly)
									]]
									Players_upvr:ReportAbuseV3(LocalPlayer_upvr, buildReport_upvr_result1_upvr)
								end)
								if pcall_result1_2 then
									-- KONSTANTERROR: Expression was reused, decompilation is incorrect
									logger_upvr:info(`Abuse report sent for asset [{arg1.audio.thumbnailAssetId}] with reason [{arg1_2}] and comment [{arg2}]`)
								else
									-- KONSTANTERROR: Expression was reused, decompilation is incorrect
									logger_upvr:warning(`Failed to submit abuse report for asset {arg1.audio.thumbnailAssetId}: {pcall_result2_3}`)
								end
							end
						end
						buildReport_upvr_result1_upvr = true
						return buildReport_upvr_result1_upvr
					end, {arg1.analyticsSource, arg1.audio.assetId, arg1.audio.thumbnailAssetId, var38_result1_upvr});
				};
				onComplete = var39_result1;
				reportCategories = tbl_3_upvr;
				reportCategoryDefaultKey = tbl_3_upvr[1].value;
				localizationKeys = {
					formTitle = "Feature.SongDetails.Action.ReportAudio";
				};
			});
		});
	})
end)