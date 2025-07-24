-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:46
-- Luau version 6, Types version 3
-- Time taken: 0.003683 seconds

local InExperienceIntervention = script:FindFirstAncestor("InExperienceIntervention")
local Parent = InExperienceIntervention.Parent
local React_upvr = require(Parent.React)
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local any_new_result1_upvr = ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui)
local CursorProvider_upvr = require(Parent.UIBlox).App.SelectionCursor.CursorProvider
local Constants_upvr = require(InExperienceIntervention.Utils.Constants)
local ChatNudgeCustomDialog_upvr = require(InExperienceIntervention.Components.ChatNudgeCustomDialog)
local ChatTimeoutCustomDialog_upvr = require(InExperienceIntervention.Components.ChatTimeoutCustomDialog)
local ChatNudgeToast_upvr = require(InExperienceIntervention.Components.ChatNudgeToast)
local ChatTimeoutToast_upvr = require(InExperienceIntervention.Components.ChatTimeoutToast)
local GetFFlagGameJoinTimeoutChatAttemptEnabled_upvr = require(Parent.SharedFlags).GetFFlagGameJoinTimeoutChatAttemptEnabled
local getFFlagAppChatEnableIntervention_upvr = require(Parent.InterventionShared).Flags.getFFlagAppChatEnableIntervention
local any_memo_result1_upvr = React_upvr.memo(function(arg1) -- Line 26
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: ReactFocusNavigation_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: CursorProvider_upvr (readonly)
	]]
	return React_upvr.createElement(ReactFocusNavigation_upvr.FocusNavigationContext.Provider, {
		value = any_new_result1_upvr;
	}, {
		CursorProvider = React_upvr.createElement(CursorProvider_upvr, {}, arg1.children);
	})
end)
local PartyChatNudgeCustomDialog_upvr = require(Parent.InterventionShared).Components.PartyChatNudgeCustomDialog
local PartyChatTimeoutCustomDialog_upvr = require(Parent.InterventionShared).Components.PartyChatTimeoutCustomDialog
function InExperienceInterventionDialogManager(arg1) -- Line 34
	--[[ Upvalues[11]:
		[1]: React_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: ChatNudgeCustomDialog_upvr (readonly)
		[4]: ChatTimeoutCustomDialog_upvr (readonly)
		[5]: ChatNudgeToast_upvr (readonly)
		[6]: ChatTimeoutToast_upvr (readonly)
		[7]: GetFFlagGameJoinTimeoutChatAttemptEnabled_upvr (readonly)
		[8]: getFFlagAppChatEnableIntervention_upvr (readonly)
		[9]: any_memo_result1_upvr (readonly)
		[10]: PartyChatNudgeCustomDialog_upvr (readonly)
		[11]: PartyChatTimeoutCustomDialog_upvr (readonly)
	]]
	local function var20() -- Line 35
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		arg1.uiStateDispatch({
			type = Constants_upvr.UIStateActions.ToggleNotificationDialog;
			treatmentType = Constants_upvr.TreatmentType.None;
			isShown = false;
		})
	end
	local uiState = arg1.uiState
	local treatmentType = uiState.treatmentType
	local detail = uiState.detail
	if uiState.isShown then
		if treatmentType == Constants_upvr.TreatmentType.ChatNudgeDialog then
			return React_upvr.createElement(ChatNudgeCustomDialog_upvr, {
				violatingChatLine = detail.evidence;
				onDismiss = React_upvr.useCallback(var20, {});
				eventId = detail.decisionEventId;
			})
		end
		if treatmentType == Constants_upvr.TreatmentType.ChatTimeoutDialog and 0 < (detail.timeoutDurationSeconds or 0) then
			local module = {
				duration = detail.timeoutDurationSeconds;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module.onDismiss = React_upvr.useCallback(var20, {})
			module.eventId = detail.decisionEventId
			module.violatingChatLine = detail.evidence
			return React_upvr.createElement(ChatTimeoutCustomDialog_upvr, module)
		end
		if treatmentType == Constants_upvr.TreatmentType.ChatNudgeToast then
			return React_upvr.createElement(ChatNudgeToast_upvr, {
				violatingChatLine = detail.evidence;
				eventId = detail.decisionEventId;
			})
		end
		if treatmentType == Constants_upvr.TreatmentType.ChatTimeoutChatAttempt then
			return React_upvr.createElement(ChatTimeoutToast_upvr, {
				endTime = uiState.endTime;
				treatmentType = Constants_upvr.TreatmentType.ChatTimeoutChatAttempt;
				dispatchTimestamp = uiState.dispatchTimestamp;
			})
		end
		if GetFFlagGameJoinTimeoutChatAttemptEnabled_upvr() and treatmentType == Constants_upvr.TreatmentType.ChatTimeoutGameJoin then
			return React_upvr.createElement(ChatTimeoutToast_upvr, {
				endTime = uiState.endTime;
				treatmentType = Constants_upvr.TreatmentType.ChatTimeoutGameJoin;
				dispatchTimestamp = uiState.dispatchTimestamp;
			})
		end
		if getFFlagAppChatEnableIntervention_upvr() and treatmentType == Constants_upvr.TreatmentType.PartyChatNudgeDialog then
			local module_2 = {}
			local tbl_2 = {
				evidence = detail.evidence;
				eventId = detail.decisionEventId;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_2.onDismiss = React_upvr.useCallback(var20, {})
			module_2.dialog = React_upvr.createElement(PartyChatNudgeCustomDialog_upvr, tbl_2)
			return React_upvr.createElement(any_memo_result1_upvr, {}, module_2)
		end
		if getFFlagAppChatEnableIntervention_upvr() and treatmentType == Constants_upvr.TreatmentType.PartyChatTimeoutDialog then
			local module_3 = {}
			local tbl = {
				endTimestamp = uiState.endTime;
				evidence = detail.evidence;
				eventId = detail.decisionEventId;
				durationForAnalytics = detail.timeoutDurationSeconds;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.onDismiss = React_upvr.useCallback(var20, {})
			module_3[1] = React_upvr.createElement(PartyChatTimeoutCustomDialog_upvr, tbl)
			return React_upvr.createElement(any_memo_result1_upvr, {}, module_3)
		end
		if treatmentType == Constants_upvr.TreatmentType.BackendDriven then
		end
	end
	return nil
end
return InExperienceInterventionDialogManager