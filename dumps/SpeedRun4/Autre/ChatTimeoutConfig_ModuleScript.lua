-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:48
-- Luau version 6, Types version 3
-- Time taken: 0.002523 seconds

local InExperienceIntervention = script:FindFirstAncestor("InExperienceIntervention")
local Parent = InExperienceIntervention.Parent
local Constants_upvr = require(InExperienceIntervention.Utils.Constants)
local module = {
	configName = "ChatTimeout";
	shouldTriggerVisualTreatment = function(arg1) -- Line 13, Named "shouldTriggerVisualTreatment"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		local var5 = false
		if arg1.type == Constants_upvr.NotificationDialogType.ChatTimeout then
			if arg1.abuseVector ~= Constants_upvr.AbuseVectorType.ExperienceChat then
				var5 = false
			else
				var5 = true
			end
		end
		return var5
	end;
	shouldTriggerBehavioralTreatment = function(arg1) -- Line 17, Named "shouldTriggerBehavioralTreatment"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		local var6 = false
		if arg1.type == Constants_upvr.NotificationDialogType.ChatTimeout then
			if arg1.abuseVector ~= Constants_upvr.AbuseVectorType.ExperienceChat then
				var6 = false
			else
				var6 = true
			end
		end
		return var6
	end;
	shouldTriggerEventReceived = function(arg1) -- Line 21, Named "shouldTriggerEventReceived"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		local var7 = false
		if arg1.type == Constants_upvr.NotificationDialogType.ChatTimeout then
			if arg1.abuseVector ~= Constants_upvr.AbuseVectorType.ExperienceChat then
				var7 = false
			else
				var7 = true
			end
		end
		return var7
	end;
	onTriggerVisualTreatment = function(arg1, arg2) -- Line 25, Named "onTriggerVisualTreatment"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		local tbl = {
			type = Constants_upvr.UIStateActions.ToggleNotificationDialog;
			treatmentType = Constants_upvr.TreatmentType.ChatTimeoutDialog;
			isShown = true;
		}
		tbl.detail = arg2
		arg1(tbl)
	end;
}
local GetFFlagChatTimeoutModernChatSpecificImpl_upvr = require(Parent.SharedFlags).GetFFlagChatTimeoutModernChatSpecificImpl
local ExperienceChat_upvr = require(Parent.ExperienceChat)
function module.onTriggerBehavioralTreatment(arg1) -- Line 33
	--[[ Upvalues[2]:
		[1]: GetFFlagChatTimeoutModernChatSpecificImpl_upvr (readonly)
		[2]: ExperienceChat_upvr (readonly)
	]]
	if GetFFlagChatTimeoutModernChatSpecificImpl_upvr() then
		ExperienceChat_upvr.Events.ChatTimeoutUpdatedEvent(DateTime.now().UnixTimestamp + 65, true)
	end
end
local InExperienceInterventionAnalytics_upvr = require(InExperienceIntervention.InExperienceInterventionAnalytics)
function module.onTriggerEventReceived(arg1) -- Line 39
	--[[ Upvalues[1]:
		[1]: InExperienceInterventionAnalytics_upvr (readonly)
	]]
	InExperienceInterventionAnalytics_upvr.sendAnalyticsEvent(InExperienceInterventionAnalytics_upvr.Constants.EventTypes.ModalMessageReceived, InExperienceInterventionAnalytics_upvr.Constants.InterventionTypes.Timeout, DateTime.now().UnixTimestampMillis, arg1.decisionEventId, arg1.evidence, arg1.timeoutDurationSeconds)
end
return module