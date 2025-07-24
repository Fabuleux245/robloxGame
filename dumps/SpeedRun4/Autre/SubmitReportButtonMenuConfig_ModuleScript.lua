-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:43
-- Luau version 6, Types version 3
-- Time taken: 0.005407 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local Players_upvr = game:GetService("Players")
local RobloxGui = game:GetService("CoreGui").RobloxGui
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local TnSIXPWrapper_upvr = require(AbuseReportMenu.IXP.TnSIXPWrapper)
function isEligibleForVoiceSubmit(arg1, arg2) -- Line 17
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local var10 = false
	if arg1.allegedAbuser ~= nil then
		var10 = false
		if arg1.allegedAbuserId ~= nil then
			var10 = false
			if arg1.abuseReason ~= nil then
				var10 = false
				if arg1.methodOfAbuse ~= nil then
					var10 = false
					if arg2.analyticsState.menuOpenedUnixTimestampMilliseconds ~= nil then
						if Players_upvr.LocalPlayer == nil then
							var10 = false
						else
							var10 = true
						end
					end
				end
			end
		end
	end
	return var10
end
function isEligibleForRAOtherSubmit(arg1) -- Line 26
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local var11 = false
	if arg1.allegedAbuser ~= nil then
		var11 = false
		if arg1.allegedAbuserId ~= nil then
			var11 = false
			if arg1.abuseReason ~= nil then
				if Players_upvr.LocalPlayer == nil then
					var11 = false
				else
					var11 = true
				end
			end
		end
	end
	return var11
end
function isEligibleForTextSubmit(arg1) -- Line 32
	local var12 = false
	if arg1.allegedAbuser ~= nil then
		if arg1.abuseReason == nil then
			var12 = false
		else
			var12 = true
		end
	end
	return var12
end
local module = {
	componentType = "button";
	getIsVisible = function(arg1) -- Line 38, Named "getIsVisible"
		return true
	end;
	variant = "primary";
	getIconSrc = function(arg1) -- Line 42, Named "getIconSrc"
		return ""
	end;
	getButtonLabel = function(arg1) -- Line 45, Named "getButtonLabel"
		return "SubmitButton"
	end;
	getIsDisabled = function(arg1, arg2) -- Line 48, Named "getIsDisabled"
		--[[ Upvalues[2]:
			[1]: Constants_upvr (readonly)
			[2]: TnSIXPWrapper_upvr (readonly)
		]]
		local methodOfAbuse = arg1.methodOfAbuse
		if methodOfAbuse == Constants_upvr.AbuseMethods.VoiceChat then
			return not isEligibleForVoiceSubmit(arg1, arg2)
		end
		if methodOfAbuse == Constants_upvr.AbuseMethods.TextChat or methodOfAbuse == nil or methodOfAbuse == Constants_upvr.AbuseMethods.Other and not TnSIXPWrapper_upvr.getReportAnythingAvatarEnabled() then
			return not isEligibleForTextSubmit(arg1)
		end
		if methodOfAbuse == Constants_upvr.AbuseMethods.Other or methodOfAbuse == Constants_upvr.AbuseMethods.Avatar then
			return not isEligibleForRAOtherSubmit(arg1)
		end
		return false
	end;
}
local createVoiceAbuseReportRequest_upvr = require(RobloxGui.Modules.VoiceChat.createVoiceAbuseReportRequest)
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
local getToastMessageFromAbuseReason_upvr = require(AbuseReportMenu.MenuConfigs.getToastMessageFromAbuseReason)
local AbuseReportBuilder_upvr = require(AbuseReportMenu.ReportAnything.Utility.AbuseReportBuilder)
local ReportAbuseAnalytics_upvr = require(AbuseReportMenu.Analytics.ReportAbuseAnalytics)
function module.onClick(arg1, arg2, arg3) -- Line 63
	--[[ Upvalues[9]:
		[1]: Constants_upvr (readonly)
		[2]: createVoiceAbuseReportRequest_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: default_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: TnSIXPWrapper_upvr (readonly)
		[7]: getToastMessageFromAbuseReason_upvr (readonly)
		[8]: AbuseReportBuilder_upvr (readonly)
		[9]: ReportAbuseAnalytics_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local methodOfAbuse_2 = arg1.methodOfAbuse
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 16. Error Block 3 start (CF ANALYSIS FAILED)
	local allegedAbuserId_upvr = arg1.allegedAbuserId
	local abuseReason_upvr = arg1.abuseReason
	local menuOpenedUnixTimestampMilliseconds_upvr = arg3.analyticsState.menuOpenedUnixTimestampMilliseconds
	local allegedAbuser_upvr = arg1.allegedAbuser
	pcall(function() -- Line 76
		--[[ Upvalues[11]:
			[1]: createVoiceAbuseReportRequest_upvr (copied, readonly)
			[2]: Players_upvr (copied, readonly)
			[3]: default_upvr (copied, readonly)
			[4]: allegedAbuserId_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: abuseReason_upvr (readonly)
			[7]: menuOpenedUnixTimestampMilliseconds_upvr (readonly)
			[8]: Cryo_upvr (copied, readonly)
			[9]: Constants_upvr (copied, readonly)
			[10]: arg3 (readonly)
			[11]: allegedAbuser_upvr (readonly)
		]]
		task.spawn(function() -- Line 77
			--[[ Upvalues[11]:
				[1]: createVoiceAbuseReportRequest_upvr (copied, readonly)
				[2]: Players_upvr (copied, readonly)
				[3]: default_upvr (copied, readonly)
				[4]: allegedAbuserId_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
				[6]: abuseReason_upvr (copied, readonly)
				[7]: menuOpenedUnixTimestampMilliseconds_upvr (copied, readonly)
				[8]: Cryo_upvr (copied, readonly)
				[9]: Constants_upvr (copied, readonly)
				[10]: arg3 (copied, readonly)
				[11]: allegedAbuser_upvr (copied, readonly)
			]]
			Players_upvr:ReportAbuseV3(Players_upvr.LocalPlayer, createVoiceAbuseReportRequest_upvr(Players_upvr, default_upvr, {
				localUserId = Players_upvr.LocalPlayer.UserId;
				abuserUserId = allegedAbuserId_upvr;
				abuseComment = arg1.comment;
				abuseReason = abuseReason_upvr;
				inExpMenuOpenedUnixMilli = menuOpenedUnixTimestampMilliseconds_upvr;
				sortedPlayerListUserIds = Cryo_upvr.List.map(arg1.playerObjects, function(arg1_2) -- Line 84
					return arg1_2.UserId
				end);
				abuseVector = Constants_upvr.AbuseVector.Voice;
			}))
			arg3.analyticsDispatch({
				type = Constants_upvr.AnalyticsActions.SetSubmissionCompleted;
			})
			arg3.showReportSentPage(allegedAbuser_upvr)
		end)
	end)
	do
		return
	end
	-- KONSTANTERROR: [25] 16. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 31. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 31. Error Block 4 end (CF ANALYSIS FAILED)
end
module.fieldLabel = ""
module.componentName = "SubmitButton"
return module