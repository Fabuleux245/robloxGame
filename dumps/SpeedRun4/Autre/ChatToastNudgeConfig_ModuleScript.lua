-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:48
-- Luau version 6, Types version 3
-- Time taken: 0.002569 seconds

local InExperienceIntervention = script:FindFirstAncestor("InExperienceIntervention")
local Constants_upvr = require(InExperienceIntervention.Utils.Constants)
local module = {
	configName = "ChatToastNudge";
	shouldTriggerVisualTreatment = function(arg1) -- Line 8, Named "shouldTriggerVisualTreatment"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		local var5 = false
		if arg1.type == Constants_upvr.NotificationDialogType.ChatNudge then
			var5 = false
			if arg1.modalType == Constants_upvr.NotificationModalType.Toast then
				if arg1.abuseVector ~= Constants_upvr.AbuseVectorType.ExperienceChat then
					var5 = false
				else
					var5 = true
				end
			end
		end
		return var5
	end;
	shouldTriggerBehavioralTreatment = function(arg1) -- Line 13, Named "shouldTriggerBehavioralTreatment"
		return false
	end;
	shouldTriggerEventReceived = function(arg1) -- Line 16, Named "shouldTriggerEventReceived"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		local var6 = false
		if arg1.type == Constants_upvr.NotificationDialogType.ChatNudge then
			var6 = false
			if arg1.modalType == Constants_upvr.NotificationModalType.Toast then
				if arg1.abuseVector ~= Constants_upvr.AbuseVectorType.ExperienceChat then
					var6 = false
				else
					var6 = true
				end
			end
		end
		return var6
	end;
	onTriggerVisualTreatment = function(arg1, arg2) -- Line 21, Named "onTriggerVisualTreatment"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		local tbl = {
			type = Constants_upvr.UIStateActions.ToggleNotificationDialog;
			treatmentType = Constants_upvr.TreatmentType.ChatNudgeToast;
			isShown = true;
		}
		tbl.detail = arg2
		arg1(tbl)
	end;
	onTriggerBehavioralTreatment = function(arg1) -- Line 29, Named "onTriggerBehavioralTreatment"
	end;
}
local InExperienceInterventionAnalytics_upvr = require(InExperienceIntervention.InExperienceInterventionAnalytics)
function module.onTriggerEventReceived(arg1) -- Line 30
	--[[ Upvalues[1]:
		[1]: InExperienceInterventionAnalytics_upvr (readonly)
	]]
	InExperienceInterventionAnalytics_upvr.sendAnalyticsEvent(InExperienceInterventionAnalytics_upvr.Constants.EventTypes.ToastMessageReceived, InExperienceInterventionAnalytics_upvr.Constants.InterventionTypes.Nudge, DateTime.now().UnixTimestampMillis, arg1.decisionEventId, arg1.evidence, arg1.timeoutDurationSeconds)
end
return module