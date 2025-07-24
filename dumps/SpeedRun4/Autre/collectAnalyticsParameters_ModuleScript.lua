-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:15
-- Luau version 6, Types version 3
-- Time taken: 0.002704 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local AbuseReportBuilder_upvr = require(AbuseReportMenu.ReportAnything.Utility.AbuseReportBuilder)
local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
local function var3_upvr(arg1, arg2, arg3) -- Line 12
	--[[ Upvalues[2]:
		[1]: AbuseReportBuilder_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local var6 = 0
	if 0 < arg1.menuOpenedUnixTimestampMilliseconds then
		var6 = math.floor(math.floor(workspace:GetServerTimeNow() * 1000) - arg1.menuOpenedUnixTimestampMilliseconds)
	end
	local any_interpretAnnotations_result1, _ = AbuseReportBuilder_upvr.interpretAnnotations(arg2)
	local module = {
		placeId = game.PlaceId;
		isPortraitMode = arg1.isPortraitMode;
		viewportSizeX = arg1.viewportSizeX;
		viewportSizeY = arg1.viewportSizeY;
		timeSpentMs = var6;
		experiencePersonChangeCount = arg1.experiencePersonChangeCount;
		typeofabuseChangeCount = arg1.typeofabuseChangeCount;
		personChangeCount = arg1.personChangeCount;
		reasonChangeCount = arg1.reasonChangeCount;
		captureSceneCount = arg1.captureSceneCount;
		reasonSelection = arg1.reasonSelection;
		commentAdded = arg1.commentAdded;
		experiencePersonSelection = arg1.experiencePersonSelection;
		annotationFinalCount = #arg2.annotationPoints;
	}
	local len = #any_interpretAnnotations_result1
	module.avatarFinalCount = len
	if arg1.isSubmissionCompleted then
		len = 1
	else
		len = 2
	end
	module.interactionType = len
	module.typeofabuseSelection = arg1.typeofabuseSelection
	module.memoryRequirementMet = arg1.memoryRequirementMet
	return Cryo_upvr.Dictionary.join(module, arg3)
end
return {
	forPersonReport = function(arg1, arg2, arg3) -- Line 58
		--[[ Upvalues[2]:
			[1]: var3_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var3_result1_2 = var3_upvr(arg1, arg2, arg3)
		local var24
		for i, v in pairs(Constants_upvr.AbuseMethodToAnalyticsMapping) do
			if i == arg1.typeofabuseSelection then
			end
		end
		var3_result1_2.typeofabuseSelection = nil
		var3_result1_2.inferredTypeofabuseSelection = v
		return var3_result1_2
	end;
	forExperienceReport = function(arg1, arg2, arg3) -- Line 80
		--[[ Upvalues[2]:
			[1]: var3_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		local var3_result1 = var3_upvr(arg1, arg2, arg3)
		var3_result1.typeofabuseSelection = Constants_upvr.AnalyticsAbuseMethods.Game
		var3_result1.inferredTypeofabuseSelection = Constants_upvr.AnalyticsAbuseMethods.Game
		return var3_result1
	end;
}