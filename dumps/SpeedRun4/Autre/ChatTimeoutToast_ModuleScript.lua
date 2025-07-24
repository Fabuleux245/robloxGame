-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:43
-- Luau version 6, Types version 3
-- Time taken: 0.001320 seconds

local InExperienceIntervention = script:FindFirstAncestor("InExperienceIntervention")
local Parent = InExperienceIntervention.Parent
local React_upvr = require(Parent.React)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Constants_upvr = require(InExperienceIntervention.Utils.Constants)
local ChatInterventionGenericToast_upvr = require(InExperienceIntervention.Components.ChatInterventionGenericToast)
local InExperienceInterventionAnalytics_upvr = require(InExperienceIntervention.InExperienceInterventionAnalytics)
function ChatTimeoutToast(arg1) -- Line 15
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: ChatInterventionGenericToast_upvr (readonly)
		[5]: InExperienceInterventionAnalytics_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(0)
	local tbl = {
		cannotSend1MinText = Constants_upvr.localizationKeys.CannotSend1MinText;
		beRespectfulText = Constants_upvr.localizationKeys.BeRespectfulText;
		cannotChatTitleMinPlural = {
			number = any_useState_result1;
			Constants_upvr.localizationKeys.CannotSendText
		};
	}
	React_upvr.useEffect(function() -- Line 25
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if arg1.endTime then
			any_useState_result2_upvr(math.ceil((arg1.endTime - DateTime.now().UnixTimestamp) / 60))
		end
	end, {arg1.endTime, arg1.dispatchTimestamp})
	local var14
	if any_useState_result1 <= 0 then
		return nil
	end
	if any_useState_result1 == 1 then
		var14 = useLocalization_upvr(tbl).cannotSend1MinText
	elseif 1 < any_useState_result1 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var14 = useLocalization_upvr(tbl).cannotChatTitleMinPlural
	end
	local module = {
		toastTitle = var14;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.toastBody = useLocalization_upvr(tbl).beRespectfulText
	module.interventionType = InExperienceInterventionAnalytics_upvr.Constants.InterventionTypes.Timeout
	module.remainingDurationSec = any_useState_result1
	module.toastAppearEventName = InExperienceInterventionAnalytics_upvr.Constants.EventTypes.ChatAttemptToastAppeared
	module.toastDismissEventName = InExperienceInterventionAnalytics_upvr.Constants.EventTypes.ChatAttemptToastDismissed
	return React_upvr.createElement(ChatInterventionGenericToast_upvr, module)
end
return ChatTimeoutToast