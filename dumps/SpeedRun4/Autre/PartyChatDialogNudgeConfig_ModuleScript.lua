-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:49
-- Luau version 6, Types version 3
-- Time taken: 0.002710 seconds

local Parent = script:FindFirstAncestor("InExperienceIntervention").Parent
local Constants_upvr = require(Parent.InterventionShared).Utils.Constants
local module = {
	configName = "PartyChatDialogNudge";
	shouldTriggerVisualTreatment = function(arg1) -- Line 10, Named "shouldTriggerVisualTreatment"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		local var6 = false
		if arg1.type == Constants_upvr.NotificationDialogType.ChatNudge then
			var6 = false
			if arg1.modalType == Constants_upvr.NotificationModalType.Dialog then
				if arg1.abuseVector ~= Constants_upvr.AbuseVectorType.PartyChat then
					var6 = false
				else
					var6 = true
				end
			end
		end
		return var6
	end;
	shouldTriggerBehavioralTreatment = function(arg1) -- Line 15, Named "shouldTriggerBehavioralTreatment"
		return false
	end;
	shouldTriggerEventReceived = function(arg1) -- Line 18, Named "shouldTriggerEventReceived"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		local var7 = false
		if arg1.type == Constants_upvr.NotificationDialogType.ChatNudge then
			var7 = false
			if arg1.modalType == Constants_upvr.NotificationModalType.Dialog then
				if arg1.abuseVector ~= Constants_upvr.AbuseVectorType.PartyChat then
					var7 = false
				else
					var7 = true
				end
			end
		end
		return var7
	end;
	onTriggerVisualTreatment = function(arg1, arg2) -- Line 23, Named "onTriggerVisualTreatment"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		local tbl = {
			type = Constants_upvr.UIStateActions.ToggleNotificationDialog;
			treatmentType = Constants_upvr.TreatmentType.PartyChatNudgeDialog;
			isShown = true;
		}
		tbl.detail = arg2
		arg1(tbl)
	end;
	onTriggerBehavioralTreatment = function(arg1) -- Line 31, Named "onTriggerBehavioralTreatment"
	end;
}
local InterventionAnalytics_upvr = require(Parent.InterventionShared).InterventionAnalytics
function module.onTriggerEventReceived(arg1) -- Line 32
	--[[ Upvalues[2]:
		[1]: InterventionAnalytics_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	InterventionAnalytics_upvr.sendAnalyticsEvent(InterventionAnalytics_upvr.TelemetryConfigs.MessageReceived, {
		eventType = InterventionAnalytics_upvr.Constants.EventTypes.ModalMessageReceived;
		counterNamespace = InterventionAnalytics_upvr.Constants.CounterNamespaceTypes.PartyChat;
		interventionType = InterventionAnalytics_upvr.Constants.InterventionTypes.PartyChatNudge;
		renderedTimestamp = DateTime.now().UnixTimestampMillis;
		eventId = arg1.decisionEventId;
		duration = arg1.timeoutDurationSeconds;
		placement = Constants_upvr.InterventionPlacementType.InExperience;
	})
end
return module