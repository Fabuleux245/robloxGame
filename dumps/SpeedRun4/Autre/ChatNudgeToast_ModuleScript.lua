-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:41
-- Luau version 6, Types version 3
-- Time taken: 0.001007 seconds

local InExperienceIntervention = script:FindFirstAncestor("InExperienceIntervention")
local Parent = InExperienceIntervention.Parent
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Constants_upvr = require(InExperienceIntervention.Utils.Constants)
local React_upvr = require(Parent.React)
local ChatInterventionGenericToast_upvr = require(InExperienceIntervention.Components.ChatInterventionGenericToast)
local InExperienceInterventionAnalytics_upvr = require(InExperienceIntervention.InExperienceInterventionAnalytics)
function ChatNudgeToast(arg1) -- Line 14
	--[[ Upvalues[5]:
		[1]: useLocalization_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ChatInterventionGenericToast_upvr (readonly)
		[5]: InExperienceInterventionAnalytics_upvr (readonly)
	]]
	local var3_result1 = useLocalization_upvr(Constants_upvr.localizationKeys)
	return React_upvr.createElement(ChatInterventionGenericToast_upvr, {
		eventId = arg1.eventId;
		violatingChatLine = arg1.violatingChatLine;
		toastTitle = var3_result1.ChatBreaksRulesText;
		toastBody = var3_result1.TextChatMayBeSuspendedText;
		interventionType = InExperienceInterventionAnalytics_upvr.Constants.InterventionTypes.Nudge;
		toastAppearEventName = InExperienceInterventionAnalytics_upvr.Constants.EventTypes.NudgeToastAppeared;
		toastDismissEventName = InExperienceInterventionAnalytics_upvr.Constants.EventTypes.NudgeToastDismissed;
	})
end
return ChatNudgeToast