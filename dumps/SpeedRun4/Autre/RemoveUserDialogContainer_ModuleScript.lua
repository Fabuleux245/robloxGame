-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:26
-- Luau version 6, Types version 3
-- Time taken: 0.007033 seconds

-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
local AppChat_2 = script:FindFirstAncestor("AppChat")
local Parent = AppChat_2.Parent
local React_upvr_2 = require(Parent.React)
local GetFFlagAppChatRebrandStringUpdates_2 = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local tbl_3_upvr = {
	participantId = nil;
	onModalClose = function() -- Line 43, Named "onModalClose"
	end;
	titleKey = "Feature.Chat.Action.RemoveUser";
}
local RemoveUserDialogContainer
if GetFFlagAppChatRebrandStringUpdates_2() and require(Parent.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
	RemoveUserDialogContainer = "Feature.Chat.Message.RemoveUser.V2"
else
	RemoveUserDialogContainer = "Feature.Chat.Message.RemoveUser"
end
tbl_3_upvr.messageKey = RemoveUserDialogContainer
RemoveUserDialogContainer = "Feature.Chat.Action.Cancel"
tbl_3_upvr.cancelTitleKey = RemoveUserDialogContainer
RemoveUserDialogContainer = "Feature.Chat.Action.Remove"
tbl_3_upvr.confirmationTitleKey = RemoveUserDialogContainer
RemoveUserDialogContainer = "Feature.Chat.Heading.FailedToRemoveUser"
tbl_3_upvr.failureTitleKey = RemoveUserDialogContainer
-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [139] 87. Error Block 17 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
if require(Parent.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
	RemoveUserDialogContainer = "Feature.Chat.Message.FailedToRemoveUser.V2"
else
	-- KONSTANTERROR: [145] 92. Error Block 9 start (CF ANALYSIS FAILED)
	RemoveUserDialogContainer = "Feature.Chat.Message.FailedToRemoveUser"
	-- KONSTANTERROR: [145] 92. Error Block 9 end (CF ANALYSIS FAILED)
end
tbl_3_upvr.failureBodyKey = RemoveUserDialogContainer
RemoveUserDialogContainer = "Feature.Chat.Action.Confirm"
tbl_3_upvr.failureButtonKey = RemoveUserDialogContainer
local Cryo_upvr = require(Parent.Cryo)
local useState_upvr = React_upvr_2.useState
local useDispatch_upvr_2 = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useCallback_upvr_2 = React_upvr_2.useCallback
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local populateUserWithState_upvr_2 = require(AppChat_2.Users.populateUserWithState)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local RemoveUserDialogLayout_upvr = require(script.Parent.RemoveUserDialogLayout)
function RemoveUserDialogContainer(arg1) -- Line 61
	--[[ Upvalues[12]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: useState_upvr (readonly)
		[4]: useDispatch_upvr_2 (readonly)
		[5]: useCallback_upvr_2 (readonly)
		[6]: AppChatNetworking_upvr (readonly)
		[7]: dependencyArray_upvr (readonly)
		[8]: useSelector_upvr (readonly)
		[9]: populateUserWithState_upvr_2 (readonly)
		[10]: useLocalization_upvr (readonly)
		[11]: React_upvr_2 (readonly)
		[12]: RemoveUserDialogLayout_upvr (readonly)
	]]
	local any_join_result1_upvr_2 = Cryo_upvr.Dictionary.join(tbl_3_upvr, arg1)
	local useState_upvr_result1, useState_upvr_result2_upvr = useState_upvr(true)
	local var46_result1, var46_result2_upvr = useState_upvr(false)
	local var46_result1_2, useState_upvr_result2_upvr_2 = useState_upvr(false)
	local var47_result1_upvr = useDispatch_upvr_2()
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_5) -- Line 72
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr_2 (readonly)
			[2]: populateUserWithState_upvr_2 (copied, readonly)
		]]
		local var65 = arg1_5.ChatAppReducer.Conversations[any_join_result1_upvr_2.conversationId]
		if not var65 then
			var65 = {}
			var65.title = nil
		end
		return {
			conversationTitle = var65.title;
			targetUser = populateUserWithState_upvr_2(arg1_5, arg1_5.Users[any_join_result1_upvr_2.participantId]);
		}
	end)
	local useCallback_upvr_2_result1_upvr = useCallback_upvr_2(function(arg1_4, arg2) -- Line 68
		--[[ Upvalues[2]:
			[1]: var47_result1_upvr (readonly)
			[2]: AppChatNetworking_upvr (copied, readonly)
		]]
		return var47_result1_upvr(AppChatNetworking_upvr.rodux.RemoveUserFromConversation.API(arg2, arg1_4))
	end, dependencyArray_upvr(var47_result1_upvr))
	return React_upvr_2.createElement(RemoveUserDialogLayout_upvr, Cryo_upvr.Dictionary.join(any_join_result1_upvr_2, useLocalization_upvr({
		titleText = any_join_result1_upvr_2.titleKey;
		bodyText = {
			USERNAME = useSelector_upvr_result1.targetUser.displayName;
			any_join_result1_upvr_2.messageKey
		};
		cancelText = any_join_result1_upvr_2.cancelTitleKey;
		confirmText = any_join_result1_upvr_2.confirmationTitleKey;
		failureTitleText = "Feature.Chat.Heading.FailedToRemoveUser";
		failureBodyText = {
			USERNAME = useSelector_upvr_result1.targetUser.displayName;
			CONVERSATION_TITLE = useSelector_upvr_result1.conversationTitle;
			any_join_result1_upvr_2.failureBodyKey
		};
		failureButtonText = "Feature.Chat.Action.Confirm";
	}), useSelector_upvr_result1, {
		onActivated = useCallback_upvr_2(function() -- Line 84
			--[[ Upvalues[5]:
				[1]: var46_result2_upvr (readonly)
				[2]: useState_upvr_result2_upvr (readonly)
				[3]: any_join_result1_upvr_2 (readonly)
				[4]: useCallback_upvr_2_result1_upvr (readonly)
				[5]: useState_upvr_result2_upvr_2 (readonly)
			]]
			var46_result2_upvr(true)
			useState_upvr_result2_upvr(false)
			local conversationId = any_join_result1_upvr_2.conversationId
			if conversationId then
				useCallback_upvr_2_result1_upvr(any_join_result1_upvr_2.participantId, conversationId):andThen(function() -- Line 91
					--[[ Upvalues[1]:
						[1]: any_join_result1_upvr_2 (copied, readonly)
					]]
					any_join_result1_upvr_2.onModalClose()
				end):catch(function() -- Line 94
					--[[ Upvalues[3]:
						[1]: var46_result2_upvr (copied, readonly)
						[2]: useState_upvr_result2_upvr (copied, readonly)
						[3]: useState_upvr_result2_upvr_2 (copied, readonly)
					]]
					var46_result2_upvr(false)
					useState_upvr_result2_upvr(true)
					useState_upvr_result2_upvr_2(true)
				end)
			end
			return true
		end, dependencyArray_upvr(any_join_result1_upvr_2.participantId, any_join_result1_upvr_2.conversationId));
		displayFailed = var46_result1_2;
		isModalVisible = useState_upvr_result1;
		isLoading = var46_result1;
	}))
end
RemoveUserDialogContainer = RemoveUserDialogContainer -- Setting global
RemoveUserDialogContainer = React_upvr_2.memo(RemoveUserDialogContainer)
do
	return RemoveUserDialogContainer
end
-- KONSTANTERROR: [139] 87. Error Block 17 end (CF ANALYSIS FAILED)