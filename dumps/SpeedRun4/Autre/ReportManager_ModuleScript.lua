-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:59
-- Luau version 6, Types version 3
-- Time taken: 0.002461 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Players_upvr = game:GetService("Players")
local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Resources.Constants)
local SessionUtility_upvr = require(Parent.Utility.SessionUtility)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
function sendAnalytics(arg1, arg2, arg3, arg4) -- Line 36
	--[[ Upvalues[2]:
		[1]: SendAnalytics_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local tbl = {}
	tbl.reportType = arg1
	tbl.reportedEntityId = tostring(arg2)
	tbl.reportSource = Constants_upvr.Analytics.ReportSourceInGame
	tbl.reason = arg3
	tbl.abuseVector = arg4
	SendAnalytics_upvr(arg1, Constants_upvr.Analytics.ReportSubmittedName, tbl)
end
function getAbuseVectorFromReportCategory(arg1) -- Line 50
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if arg1 == Constants_upvr.Category.Voice then
		return "voice"
	end
	if arg1 == Constants_upvr.Category.Text then
		return "chat"
	end
	return "other"
end
local createVoiceAbuseReportRequest_upvr = require(RobloxGui.Modules.VoiceChat.createVoiceAbuseReportRequest)
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local Url_upvr = require(game:GetService("CorePackages").Workspace.Packages.CoreScriptsCommon).Url
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
function submitUserAbuseReport(arg1, arg2) -- Line 59
	--[[ Upvalues[7]:
		[1]: Constants_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: createVoiceAbuseReportRequest_upvr (readonly)
		[4]: default_upvr (readonly)
		[5]: Url_upvr (readonly)
		[6]: HttpRbxApiService_upvr (readonly)
		[7]: SessionUtility_upvr (readonly)
	]]
	local var13_upvr
	if arg1.reportCategory ~= Constants_upvr.Category.Voice then
		var13_upvr = false
	else
		var13_upvr = true
	end
	local LocalPlayer_upvr = Players_upvr.LocalPlayer
	if LocalPlayer_upvr then
		pcall(function() -- Line 63
			--[[ Upvalues[11]:
				[1]: arg1 (readonly)
				[2]: var13_upvr (readonly)
				[3]: createVoiceAbuseReportRequest_upvr (copied, readonly)
				[4]: Players_upvr (copied, readonly)
				[5]: default_upvr (copied, readonly)
				[6]: LocalPlayer_upvr (readonly)
				[7]: Url_upvr (copied, readonly)
				[8]: HttpRbxApiService_upvr (copied, readonly)
				[9]: Constants_upvr (copied, readonly)
				[10]: SessionUtility_upvr (copied, readonly)
				[11]: arg2 (readonly)
			]]
			coroutine.wrap(function() -- Line 64
				--[[ Upvalues[11]:
					[1]: arg1 (copied, readonly)
					[2]: var13_upvr (copied, readonly)
					[3]: createVoiceAbuseReportRequest_upvr (copied, readonly)
					[4]: Players_upvr (copied, readonly)
					[5]: default_upvr (copied, readonly)
					[6]: LocalPlayer_upvr (copied, readonly)
					[7]: Url_upvr (copied, readonly)
					[8]: HttpRbxApiService_upvr (copied, readonly)
					[9]: Constants_upvr (copied, readonly)
					[10]: SessionUtility_upvr (copied, readonly)
					[11]: arg2 (copied, readonly)
				]]
				if var13_upvr then
					local tbl_2 = {
						localUserId = LocalPlayer_upvr.UserId;
						abuserUserId = arg1.abusingPlayer.UserId;
						abuseComment = arg1.comment;
						abuseReason = arg1.reason;
						inExpMenuOpenedUnixMilli = math.floor(arg1.beginningTimestamp * 1000);
						sortedPlayerListUserIds = arg1.sortedUserIds;
						abuseVector = getAbuseVectorFromReportCategory(arg1.reportCategory);
					}
					if game:GetEngineFeature("AbuseReportV3") then
						Players_upvr:ReportAbuseV3(LocalPlayer_upvr, createVoiceAbuseReportRequest_upvr(Players_upvr, default_upvr, tbl_2))
					else
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						HttpRbxApiService_upvr:PostAsyncFullUrl(Url_upvr.APIS_URL.."/abuse-reporting/v2/abuse-report", createVoiceAbuseReportRequest_upvr(Players_upvr, default_upvr, tbl_2))
					end
				else
					Players_upvr:ReportAbuse(arg1.abusingPlayer, arg1.reason, arg1.comment)
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				sendAnalytics(Constants_upvr.Analytics.ReportTypeUser, arg1.abusingPlayer.UserId, arg1.reason, getAbuseVectorFromReportCategory(arg1.reportCategory))
				SessionUtility_upvr.endAbuseReportSession()
				if arg2 then
					arg2()
				end
			end)()
		end)
	end
end
local RunService_upvr = game:GetService("RunService")
function submitPlaceAbuseReport(arg1, arg2) -- Line 99
	--[[ Upvalues[4]:
		[1]: RunService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: SessionUtility_upvr (readonly)
	]]
	if arg1.placeName ~= "" then
		coroutine.wrap(function() -- Line 101
			--[[ Upvalues[6]:
				[1]: RunService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Players_upvr (copied, readonly)
				[4]: Constants_upvr (copied, readonly)
				[5]: SessionUtility_upvr (copied, readonly)
				[6]: arg2 (readonly)
			]]
			if not RunService_upvr:IsStudio() then
				Players_upvr:ReportAbuse(nil, arg1.reason, string.format("User Report: \n    %s \n".."Place Title: \n    %s \n".."PlaceId: \n    %s \n".."Place Description: \n    %s \n", arg1.comment, arg1.placeName, tostring(arg1.placeId), arg1.placeDescription))
			end
			sendAnalytics(Constants_upvr.Analytics.ReportTypeGame, arg1.placeId, arg1.reason)
			SessionUtility_upvr.endAbuseReportSession()
			if arg2 then
				arg2()
			end
		end)()
	end
end
return {
	submitUserAbuseReport = submitUserAbuseReport;
	submitPlaceAbuseReport = submitPlaceAbuseReport;
}