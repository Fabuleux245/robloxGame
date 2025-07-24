-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:44
-- Luau version 6, Types version 3
-- Time taken: 0.002152 seconds

local LocalPlayer = game:GetService("Players").LocalPlayer
local Parent = script:FindFirstAncestor("InExperienceIntervention").Parent
local tbl_upvr = {
	InterventionTypes = {
		Nudge = "INTERVENTION_CHAT_NUDGE";
		Timeout = "INTERVENTION_CHAT_TIMEOUT";
		PartyChatNudge = "INTERVENTION_PARTY_CHAT_NUDGE";
		PartyChatTimeout = "INTERVENTION_PARTY_CHAT_TIMEOUT";
	};
	EventTypes = {
		AppealClicked = "EVENT_APPEAL_CLICKED";
		CtaClicked = "EVENT_CTA_CLICKED";
		ModalAppeared = "EVENT_MODAL_APPEARED";
		ModalMessageReceived = "EVENT_MODAL_MESSAGE_RECEIVED";
		ToastMessageReceived = "EVENT_TOAST_MESSAGE_RECEIVED";
		NudgeToastAppeared = "EVENT_NUDGE_TOAST_APPEARED";
		NudgeToastDismissed = "EVENT_NUDGE_TOAST_DISMISSED";
		ChatAttemptToastAppeared = "EVENT_CHAT_ATTEMPT_TOAST_APPEARED";
		ChatAttemptToastDismissed = "EVENT_CHAT_ATTEMPT_TOAST_DISMISSED";
	};
	EventContext = "InExperienceInterventionEvent";
	EventName = "InExperienceInterventionEvent";
}
local var6_upvw = 0
if LocalPlayer then
	var6_upvw = LocalPlayer.UserId
end
local Cryo_upvr = require(Parent.Cryo)
local function var7_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 42
	--[[ Upvalues[3]:
		[1]: var6_upvw (read and write)
		[2]: tbl_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local UnixTimestampMillis = DateTime.now().UnixTimestampMillis
	local module = {
		user_id = var6_upvw;
		timestamp_milliseconds = UnixTimestampMillis;
	}
	module.event_type = arg1
	module.intervention_type = arg2
	module.event_id = arg4
	module.evidence = arg5
	module.timeout_duration_seconds = arg6
	if arg1 == tbl_upvr.EventTypes.CtaClicked or arg1 == tbl_upvr.EventTypes.AppealClicked or arg1 == tbl_upvr.EventTypes.NudgeToastDismissed or arg1 == tbl_upvr.EventTypes.ChatAttemptToastDismissed then
		module = Cryo_upvr.Dictionary.join({
			time_to_interact_seconds = (UnixTimestampMillis - arg3) / 1000;
		}, module)
	end
	return module
end
local any_new_result1_upvr = require(Parent.Analytics).AnalyticsReporters.EventIngest.new(game:GetService("EventIngestService"))
return {
	sendAnalyticsEvent = function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 67
		--[[ Upvalues[3]:
			[1]: any_new_result1_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: var7_upvr (readonly)
		]]
		any_new_result1_upvr:sendEventDeferred(tbl_upvr.EventContext, tbl_upvr.EventName, var7_upvr(arg1, arg2, arg3, arg4, arg5, arg6))
	end;
	Constants = tbl_upvr;
}