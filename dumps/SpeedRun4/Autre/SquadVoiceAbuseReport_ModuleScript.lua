-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:31
-- Luau version 6, Types version 3
-- Time taken: 0.002310 seconds

local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local tbl_2_upvr = {{
	localizationKey = "Feature.ReportAbuse.Label.CategoryInappropriate";
	value = "Swearing";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryBullyingV2";
	value = "Bullying";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryTheft";
	value = "Scamming";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryDating";
	value = "Dating";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryScamming";
	value = "Cheating/Exploiting";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryPrivateInfo";
	value = "Personal Question";
}}
local useDispatch_upvr = dependencies.Hooks.useDispatch
local React_upvr = dependencies.React
local Logger_upvr = require(Squads.Logger)
local HttpService_upvr = game:GetService("HttpService")
local NetworkingSquads_upvr = dependencies.NetworkingSquads
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local DefaultTwoStepReportFlow_upvr = require(Squads.Parent.AbuseReporting).UXFlows.DefaultTwoStepReportFlow
return function(arg1) -- Line 34, Named "SquadVoiceAbuseReport"
	--[[ Upvalues[8]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Logger_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: NetworkingSquads_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
		[7]: DefaultTwoStepReportFlow_upvr (readonly)
		[8]: tbl_2_upvr (readonly)
	]]
	local var10_result1_upvr = useDispatch_upvr()
	return React_upvr.createElement(DefaultTwoStepReportFlow_upvr, {
		analyticsContext = "Squad";
		onSubmitProps = {
			hasNextSteps = false;
			onSubmit = React_upvr.useCallback(function(arg1_2, arg2) -- Line 36
				--[[ Upvalues[5]:
					[1]: Logger_upvr (copied, readonly)
					[2]: HttpService_upvr (copied, readonly)
					[3]: arg1 (readonly)
					[4]: var10_result1_upvr (readonly)
					[5]: NetworkingSquads_upvr (copied, readonly)
				]]
				Logger_upvr:info("Submitting abuse report. Reason: {}, Comment: {}, Data: {}", arg1_2, arg2, HttpService_upvr:JSONEncode(arg1.reportData))
				local tbl = {
					submitterUserId = arg1.reportData.submitterUserId;
					abuserUserId = arg1.reportData.abuserUserId;
					reportBeginTimestampMs = arg1.reportData.reportBeginTimestampMs;
					voiceChannelId = arg1.reportData.voiceChannelId;
					voiceUserIds = arg1.reportData.voiceUserIds;
					voiceUserCount = arg1.reportData.voiceUserCount;
				}
				tbl.abuseReason = arg1_2
				tbl.abuseComment = arg2
				local any_await_result1, any_await_result2 = var10_result1_upvr(NetworkingSquads_upvr.SendSquadVoiceAbuseReport.API(tbl)):await()
				if any_await_result1 then
					Logger_upvr:info("Abuse report submitted successfully. Response: {}", HttpService_upvr:JSONEncode(any_await_result2))
					return any_await_result1
				end
				Logger_upvr:error("Failed to submit abuse report. Response: {}", HttpService_upvr:JSONEncode(any_await_result2))
				return any_await_result1
			end, dependencyArray_upvr(arg1.reportData, var10_result1_upvr));
		};
		onCloseProps = {
			hasPreviousSteps = false;
			onAbandon = arg1.onAbandon;
		};
		onComplete = arg1.onComplete;
		reportCategories = tbl_2_upvr;
	})
end