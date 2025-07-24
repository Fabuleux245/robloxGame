-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:46
-- Luau version 6, Types version 3
-- Time taken: 0.002681 seconds

local InExperienceIntervention = script:FindFirstAncestor("InExperienceIntervention")
local Parent = InExperienceIntervention.Parent
local GetFFlagGameJoinTimeoutChatAttemptEnabled_upvr = require(Parent.SharedFlags).GetFFlagGameJoinTimeoutChatAttemptEnabled
local var4_upvw
if GetFFlagGameJoinTimeoutChatAttemptEnabled_upvr() then
	var4_upvw = game:GetService("FeatureRestrictionManager")
end
local React_upvr = require(Parent.React)
local NotificationService_upvr = game:GetService("NotificationService")
local Constants_upvr = require(InExperienceIntervention.Utils.Constants)
local HttpService_upvr = game:GetService("HttpService")
local InterventionTreatmentConfigList_upvr = require(InExperienceIntervention.InterventionTreatmentConfigs.InterventionTreatmentConfigList)
local Chat_upvr = game:GetService("Chat")
local getFFlagAppChatEnableIntervention_upvr = require(Parent.InterventionShared).Flags.getFFlagAppChatEnableIntervention
local chatInputBoxDisabledPressedSignal_upvr = require(Parent.InterventionShared).Signals.chatInputBoxDisabledPressedSignal
function InExperienceInterventionEventReceiver(arg1) -- Line 24
	--[[ Upvalues[10]:
		[1]: React_upvr (readonly)
		[2]: NotificationService_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: InterventionTreatmentConfigList_upvr (readonly)
		[6]: Chat_upvr (readonly)
		[7]: GetFFlagGameJoinTimeoutChatAttemptEnabled_upvr (readonly)
		[8]: var4_upvw (read and write)
		[9]: getFFlagAppChatEnableIntervention_upvr (readonly)
		[10]: chatInputBoxDisabledPressedSignal_upvr (readonly)
	]]
	React_upvr.useEffect(function() -- Line 25
		--[[ Upvalues[10]:
			[1]: NotificationService_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: HttpService_upvr (copied, readonly)
			[4]: InterventionTreatmentConfigList_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: Chat_upvr (copied, readonly)
			[7]: GetFFlagGameJoinTimeoutChatAttemptEnabled_upvr (copied, readonly)
			[8]: var4_upvw (copied, read and write)
			[9]: getFFlagAppChatEnableIntervention_upvr (copied, readonly)
			[10]: chatInputBoxDisabledPressedSignal_upvr (copied, readonly)
		]]
		local var22_upvw
		if GetFFlagGameJoinTimeoutChatAttemptEnabled_upvr() then
			var22_upvw = var4_upvw.TimeoutChatAttempt:Connect(function(arg1_4, arg2) -- Line 63
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: Constants_upvr (copied, readonly)
				]]
				local tbl_2 = {
					type = Constants_upvr.UIStateActions.ToggleNotificationDialog;
					treatmentType = Constants_upvr.TreatmentType.ChatTimeoutGameJoin;
				}
				tbl_2.endTime = arg2
				tbl_2.isShown = true
				arg1.uiStateDispatch(tbl_2)
			end)
		end
		local var25_upvw
		if getFFlagAppChatEnableIntervention_upvr() then
			var25_upvw = chatInputBoxDisabledPressedSignal_upvr:connect(function(arg1_5) -- Line 75
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: Constants_upvr (copied, readonly)
				]]
				arg1.uiStateDispatch({
					detail = {
						decisionEventId = arg1_5.decisionEventId;
						timeoutDurationSeconds = arg1_5.duration;
					};
					type = Constants_upvr.UIStateActions.ToggleNotificationDialog;
					treatmentType = Constants_upvr.TreatmentType.PartyChatTimeoutDialog;
					endTime = arg1_5.endTimestamp;
					isShown = true;
				})
			end)
		end
		local any_Connect_result1_upvr_2 = NotificationService_upvr.RobloxEventReceived:Connect(function(arg1_2) -- Line 26
			--[[ Upvalues[4]:
				[1]: Constants_upvr (copied, readonly)
				[2]: HttpService_upvr (copied, readonly)
				[3]: InterventionTreatmentConfigList_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
			]]
			if arg1_2.namespace == Constants_upvr.EXP_INTERV_SIGNAL_NAMESPACE or arg1_2.namespace == Constants_upvr.FEATURE_INTERV_SIGNAL_NAMESPACE then
				local pcall_result1, pcall_result2 = pcall(function() -- Line 32
					--[[ Upvalues[2]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: arg1_2 (readonly)
					]]
					return HttpService_upvr:JSONDecode(arg1_2.detail)
				end)
				if not pcall_result1 then return end
				for _, v in InterventionTreatmentConfigList_upvr do
					if v.shouldTriggerEventReceived(pcall_result2) then
						v.onTriggerEventReceived(pcall_result2)
					end
					if v.shouldTriggerVisualTreatment(pcall_result2) then
						v.onTriggerVisualTreatment(arg1.uiStateDispatch, pcall_result2)
					end
					if v.shouldTriggerBehavioralTreatment(pcall_result2) then
						v.onTriggerBehavioralTreatment(pcall_result2)
					end
				end
			end
		end)
		local any_Connect_result1_upvr = Chat_upvr.TimeoutChatAttempt:Connect(function(arg1_3, arg2) -- Line 52
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			local tbl = {
				type = Constants_upvr.UIStateActions.ToggleNotificationDialog;
				treatmentType = Constants_upvr.TreatmentType.ChatTimeoutChatAttempt;
			}
			tbl.endTime = arg2
			tbl.isShown = true
			arg1.uiStateDispatch(tbl)
		end)
		return function() -- Line 88
			--[[ Upvalues[6]:
				[1]: any_Connect_result1_upvr_2 (readonly)
				[2]: any_Connect_result1_upvr (readonly)
				[3]: GetFFlagGameJoinTimeoutChatAttemptEnabled_upvr (copied, readonly)
				[4]: var22_upvw (read and write)
				[5]: getFFlagAppChatEnableIntervention_upvr (copied, readonly)
				[6]: var25_upvw (read and write)
			]]
			any_Connect_result1_upvr_2:Disconnect()
			any_Connect_result1_upvr:Disconnect()
			if GetFFlagGameJoinTimeoutChatAttemptEnabled_upvr() then
				var22_upvw:Disconnect()
			end
			if getFFlagAppChatEnableIntervention_upvr() and var25_upvw then
				var25_upvw:disconnect()
			end
		end
	end, {})
	return React_upvr.createElement("Frame", {})
end
return InExperienceInterventionEventReceiver