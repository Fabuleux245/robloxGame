-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:53
-- Luau version 6, Types version 3
-- Time taken: 0.010677 seconds

local CorePackages = game:GetService("CorePackages")
local TnSAvatarIdentification = require(CorePackages.Workspace.Packages.TnSAvatarIdentification)
local HttpService_upvr = game:GetService("HttpService")
local GetFFlagReportAnythingEnableAdReport_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportAnythingEnableAdReport
local tbl_12_upvr = {
	Variant = {
		CS = "ra/cs";
		Sampling = "ra/sampling";
		E1 = "ra/e1";
		E2 = "ra/e2";
		E3 = "ra/e3";
		NM = "ra/nm";
		Unknown = "ra/unknown";
	};
}
local function var8_upvr(arg1) -- Line 94
	local module_4 = {}
	for _, v in ipairs(arg1) do
		module_4[#module_4 + 1] = {v.X, v.Y}
	end
	return module_4
end
local function var18_upvr(arg1) -- Line 102
	local module = {}
	for _, v_2 in pairs(arg1) do
		module[#module + 1] = {
			assetId = v_2.assetId;
			distance = v_2.distance;
			boundingBox = {
				minX = v_2.boundingBox.min.X;
				minY = v_2.boundingBox.min.Y;
				maxX = v_2.boundingBox.max.X;
				maxY = v_2.boundingBox.max.Y;
			};
			adUnitName = v_2.adUnitName;
			encryptedAdTrackingData = v_2.encryptedAdTrackingData;
			encryptionMetadata = v_2.encryptionMetadata;
		}
	end
	return module
end
local function var29_upvr(arg1) -- Line 123
	--[[ Upvalues[1]:
		[1]: var8_upvr (readonly)
	]]
	local module_3 = {}
	for i_3, v_3 in pairs(arg1) do
		local tbl_10 = {
			userId = tostring(i_3);
			distance = v_3.distance;
			boundingBox = {
				minX = v_3.boundingBox.min.X;
				minY = v_3.boundingBox.min.Y;
				maxX = v_3.boundingBox.max.X;
				maxY = v_3.boundingBox.max.Y;
			};
			hitRate = v_3.hitRate;
		}
		local var8_upvr_result1 = var8_upvr(v_3.convexHull)
		tbl_10.convexHull = var8_upvr_result1
		module_3[#module_3 + 1] = tbl_10
		if v_3.pointProcessingStats ~= nil then
			local tbl_3 = {}
			if v_3.pointProcessingStats.wasSkipped then
				var8_upvr_result1 = 1
			else
				var8_upvr_result1 = 0
			end
			tbl_3[1] = var8_upvr_result1
			tbl_3[2] = v_3.pointProcessingStats.total
			tbl_3[3] = v_3.pointProcessingStats.offScreenDiscardCount
			tbl_3[4] = v_3.pointProcessingStats.tooCloseDiscardCount
			module_3[#module_3].pointProcessingStats = tbl_3
		end
	end
	return module_3
end
local GetFFlagRAEnableCircleRegion_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagRAEnableCircleRegion
local getAvatarsForRegion_upvr = TnSAvatarIdentification.AvatarIdentification.getAvatarsForRegion
local getAvatarsForPoint_upvr = TnSAvatarIdentification.AvatarIdentification.getAvatarsForPoint
local getAdsForPoint_upvr = require(CorePackages.Workspace.Packages.TnSAdIdentification).AdIdentification.getAdsForPoint
local function var42_upvr(arg1) -- Line 153
	--[[ Upvalues[5]:
		[1]: GetFFlagRAEnableCircleRegion_upvr (readonly)
		[2]: getAvatarsForRegion_upvr (readonly)
		[3]: getAvatarsForPoint_upvr (readonly)
		[4]: GetFFlagReportAnythingEnableAdReport_upvr (readonly)
		[5]: getAdsForPoint_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_15 = {}
	local module_5 = {}
	local module_6 = {}
	for _, v_4 in ipairs(arg1.annotationPoints) do
		local tbl_5 = {}
		local var78
		if GetFFlagRAEnableCircleRegion_upvr() then
			tbl_5 = getAvatarsForRegion_upvr(arg1.identificationResults.identifiedAvatars, v_4, arg1.annotationCircleRadius, arg1.annotationAreaWidth, arg1.annotationAreaHeight)
		else
			tbl_5 = getAvatarsForPoint_upvr(arg1.identificationResults.identifiedAvatars, v_4)
		end
		for i_5, _ in pairs(tbl_5) do
			if arg1.identificationResults.identifiedAvatars[i_5].distance < math.huge then
				var78 = i_5
			end
		end
		if GetFFlagReportAnythingEnableAdReport_upvr() then
			i_5 = arg1.identificationResults
			i_5 = v_4
			i_5 = getAdsForPoint_upvr(i_5.identifiedAds, i_5)
			local pairs_result1_3, pairs_result2, pairs_result3_3 = pairs(i_5)
			for i_6, _ in pairs_result1_3, pairs_result2, pairs_result3_3 do
				if arg1.identificationResults.identifiedAds[i_6].distance < math.huge then
					local var87 = i_6
				end
			end
		end
		if var78 ~= nil and not tbl_15[var78] then
			tbl_15[var78] = true
			i_6 = arg1.identificationResults
			pairs_result3_3 = i_6.identifiedAvatars
			pairs_result2 = pairs_result3_3[var78]
			module_5[#module_5 + 1] = pairs_result2.player
		elseif GetFFlagReportAnythingEnableAdReport_upvr() and var87 ~= nil and not ({})[var87] then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[var87] = true
			pairs_result3_3 = arg1.identificationResults
			pairs_result2 = pairs_result3_3.identifiedAds
			module_6[#module_6 + 1] = pairs_result2[var87]
		end
	end
	return module_5, module_6
end
local function var88_upvr(arg1, arg2, arg3) -- Line 218
	--[[ Upvalues[5]:
		[1]: GetFFlagReportAnythingEnableAdReport_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: var29_upvr (readonly)
		[4]: var18_upvr (readonly)
		[5]: var8_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1_2, pairs_result2_4, pairs_result3 = pairs(arg1.identificationResults.identifiedAvatars)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 34 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 34 end (CF ANALYSIS FAILED)
end
local GetFFlagGetHumanoidDescription_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagGetHumanoidDescription
local getHumanoidDescription_upvr = require(script:FindFirstAncestor("AbuseReportMenu").ReportAnything.Utility.GetHumanoidDescription).getHumanoidDescription
return {
	buildExperienceReportRequest = function(arg1, arg2, arg3) -- Line 314
		--[[ Upvalues[6]:
			[1]: tbl_12_upvr (readonly)
			[2]: var42_upvr (readonly)
			[3]: var88_upvr (readonly)
			[4]: GetFFlagReportAnythingEnableAdReport_upvr (readonly)
			[5]: HttpService_upvr (readonly)
			[6]: var18_upvr (readonly)
		]]
		local tbl_6 = {}
		local tbl = {
			ENTRY_POINT = {
				valueList = {{
					data = "in-experience";
				}};
			};
			SUBMITTER_USER_ID = {
				valueList = {{
					data = tostring(arg1.localUserId);
				}};
			};
			REPORTED_ABUSE_CATEGORY = {
				valueList = {{
					data = arg1.abuseReason;
				}};
			};
			PLACE_ID = {
				valueList = {{
					data = tostring(arg1.placeId);
				}};
			};
			REPORTER_COMMENT = {
				valueList = {{
					data = arg1.abuseComment;
				}};
			};
			REPORTED_ABUSE_VECTOR = {
				valueList = {{
					data = "place";
				}};
			};
			IN_EXP_MENU_ENTRY_POINT = {
				valueList = {{
					data = arg1.menuEntryPoint;
				}};
			};
		}
		local tbl_2 = {}
		local tbl_14 = {}
		local tbl_11 = {}
		local var119
		if not var119 then
			var119 = tbl_12_upvr.Variant.CS
		end
		tbl_11.data = var119
		tbl_14[1] = tbl_11
		tbl_2.valueList = tbl_14
		tbl.VARIANT = tbl_2
		tbl_6.tags = tbl
		local _, var42_upvr_result2 = var42_upvr(arg2)
		var119 = arg3
		var88_upvr(arg2, var119, tbl_6)
		if 0 < #var42_upvr_result2 and GetFFlagReportAnythingEnableAdReport_upvr() then
			local tbl_13 = {}
			var119 = {}
			var119[1] = {
				data = HttpService_upvr:JSONEncode(var18_upvr(var42_upvr_result2));
			}
			tbl_13.valueList = var119
			tbl_6.tags.REPORT_TARGET_ADS = tbl_13
		end
		var119 = tbl_6
		return HttpService_upvr:JSONEncode(var119)
	end;
	buildOtherReportRequest = function(arg1, arg2, arg3) -- Line 393
		--[[ Upvalues[6]:
			[1]: tbl_12_upvr (readonly)
			[2]: var42_upvr (readonly)
			[3]: var88_upvr (readonly)
			[4]: GetFFlagGetHumanoidDescription_upvr (readonly)
			[5]: getHumanoidDescription_upvr (readonly)
			[6]: HttpService_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module_2 = {}
		local tbl_9 = {
			ENTRY_POINT = {
				valueList = {{
					data = "in-experience";
				}};
			};
			SUBMITTER_USER_ID = {
				valueList = {{
					data = tostring(arg1.localUserId);
				}};
			};
			REPORTED_ABUSE_CATEGORY = {
				valueList = {{
					data = arg1.abuseReason;
				}};
			};
			REPORTER_COMMENT = {
				valueList = {{
					data = arg1.abuseComment;
				}};
			};
			REPORTED_ABUSE_VECTOR = {
				valueList = {{
					data = "avatar";
				}};
			};
			IN_EXP_MENU_ENTRY_POINT = {
				valueList = {{
					data = arg1.menuEntryPoint;
				}};
			};
		}
		local tbl_8 = {}
		local tbl_7 = {}
		local tbl_4 = {}
		local variant = arg1.variant
		if not variant then
			variant = tbl_12_upvr.Variant.Unknown
		end
		tbl_4.data = variant
		tbl_7[1] = tbl_4
		tbl_8.valueList = tbl_7
		tbl_9.VARIANT = tbl_8
		module_2.tags = tbl_9
		local var42_result1, _ = var42_upvr(arg2)
		var88_upvr(arg2, arg3, module_2)
		if 0 < #var42_result1 then
			for i_7, v_7 in ipairs(var42_result1) do
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({})[#{} + 1] = tostring(v_7.UserId)
				local var172
			end
			if GetFFlagGetHumanoidDescription_upvr() then
				local getHumanoidDescription_upvr_result1_3, getHumanoidDescription_upvr_result2 = getHumanoidDescription_upvr(var42_result1[1].UserId)
				i_7 = {}
				v_7 = {}
				v_7[1] = {
					data = HttpService_upvr:JSONEncode(getHumanoidDescription_upvr_result1_3);
				}
				i_7.valueList = v_7
				module_2.tags.REPORT_TARGET_HUMANOID_DESCRIPTION = i_7
				i_7 = {}
				v_7 = {}
				v_7[1] = {
					data = getHumanoidDescription_upvr_result2;
				}
				i_7.valueList = v_7
				module_2.tags.REPORT_TARGET_HUMANOID_DESCRIPTION_STATUS = i_7
				local tbl_16 = {}
				i_7 = ipairs
				v_7 = var42_result1
				i_7 = i_7(v_7)
				local i_7_result1, i_7_result2, i_7_result3 = i_7(v_7)
				for _, v_8 in i_7_result1, i_7_result2, i_7_result3 do
					local getHumanoidDescription_upvr_result1_2, getHumanoidDescription_upvr_result2_2 = getHumanoidDescription_upvr(v_8.UserId)
					tbl_16[#tbl_16 + 1] = {
						humanoidDescription = getHumanoidDescription_upvr_result1_2;
						outputMessage = getHumanoidDescription_upvr_result2_2;
					}
					local var184
				end
				i_7_result1 = module_2.tags
				i_7_result2 = {}
				i_7_result2.valueList = {{
					data = HttpService_upvr:JSONEncode(var184);
				}}
				i_7_result1.RA_ALL_ANNOTATED_HUMANOID_DESCRIPTIONS = i_7_result2
			end
			module_2.tags.REPORT_TARGET_USER_ID = {
				valueList = {{
					data = tostring(tostring(var42_result1[1].UserId));
				}};
			}
			module_2.tags.RA_ALL_ANNOTATED_USER_IDS = {
				valueList = {{
					data = HttpService_upvr:JSONEncode(var172);
				}};
			}
		elseif arg1.formSelectedAbuserUserId then
			if GetFFlagGetHumanoidDescription_upvr() then
				local getHumanoidDescription_upvr_result1, var126_result2 = getHumanoidDescription_upvr(arg1.formSelectedAbuserUserId)
				module_2.tags.REPORT_TARGET_HUMANOID_DESCRIPTION = {
					valueList = {{
						data = HttpService_upvr:JSONEncode(getHumanoidDescription_upvr_result1);
					}};
				}
				module_2.tags.REPORT_TARGET_HUMANOID_DESCRIPTION_STATUS = {
					valueList = {{
						data = var126_result2;
					}};
				}
			end
			module_2.tags.REPORT_TARGET_USER_ID = {
				valueList = {{
					data = tostring(arg1.formSelectedAbuserUserId);
				}};
			}
		end
		return HttpService_upvr:JSONEncode(module_2)
	end;
	interpretAnnotations = var42_upvr;
	Constants = tbl_12_upvr;
}