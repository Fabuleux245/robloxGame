-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:18
-- Luau version 6, Types version 3
-- Time taken: 0.007230 seconds

-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
local AppChat_2 = script:FindFirstAncestor("AppChat")
local Parent = AppChat_2.Parent
local React_upvr_2 = require(Parent.React)
local GetFFlagAppChatRebrandStringUpdates_2 = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local tbl_2_upvr = {
	onModalClose = function() -- Line 47, Named "onModalClose"
	end;
	onLeaveSuccess = function() -- Line 48, Named "onLeaveSuccess"
	end;
	titleKey = "Feature.Chat.Heading.LeaveGroup";
	cancelKey = "Feature.Chat.Action.Stay";
	confirmKey = "Feature.Chat.Action.Leave";
}
local LeaveGroupDialogContainer
if GetFFlagAppChatRebrandStringUpdates_2() and require(Parent.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
	LeaveGroupDialogContainer = "Feature.Chat.Message.LeaveGroup.V2"
else
	LeaveGroupDialogContainer = "Feature.Chat.Message.LeaveGroup"
end
tbl_2_upvr.bodyKey = LeaveGroupDialogContainer
LeaveGroupDialogContainer = "Feature.Chat.Heading.FailedToLeaveGroup"
tbl_2_upvr.failureTitleKey = LeaveGroupDialogContainer
-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [171] 105. Error Block 17 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
if require(Parent.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
	LeaveGroupDialogContainer = "Feature.Chat.Message.FailedToLeaveGroup.V2"
else
	-- KONSTANTERROR: [177] 110. Error Block 9 start (CF ANALYSIS FAILED)
	LeaveGroupDialogContainer = "Feature.Chat.Message.FailedToLeaveGroup"
	-- KONSTANTERROR: [177] 110. Error Block 9 end (CF ANALYSIS FAILED)
end
tbl_2_upvr.failureBodyKey = LeaveGroupDialogContainer
LeaveGroupDialogContainer = "Feature.Chat.Action.Confirm"
tbl_2_upvr.failureButtonKey = LeaveGroupDialogContainer
local Cryo_upvr = require(Parent.Cryo)
local useState_upvr = React_upvr_2.useState
local useAnalytics_upvr = require(AppChat_2.Analytics.useAnalytics)
local useEffectOnMount_upvr_2 = require(Parent.RoactUtils).Hooks.useEffectOnMount
local EventNames_upvr_2 = require(AppChat_2.Analytics.EventNames)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useCallback_upvr_2 = React_upvr_2.useCallback
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local dependencyArray_upvr_2 = require(Parent.RoactUtils).Hooks.dependencyArray
local useSelector_upvr_2 = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
local useLocalization_upvr_2 = require(Parent.Localization).Hooks.useLocalization
local LeaveGroupDialog_upvr_2 = require(script.Parent.LeaveGroupDialog)
local ResponseIndicator_upvr = require(AppChat_2.SocialLibraries).Components.ResponseIndicator
function LeaveGroupDialogContainer(arg1) -- Line 66
	--[[ Upvalues[16]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useState_upvr (readonly)
		[4]: useAnalytics_upvr (readonly)
		[5]: useEffectOnMount_upvr_2 (readonly)
		[6]: EventNames_upvr_2 (readonly)
		[7]: useDispatch_upvr (readonly)
		[8]: useCallback_upvr_2 (readonly)
		[9]: AppChatNetworking_upvr (readonly)
		[10]: dependencyArray_upvr_2 (readonly)
		[11]: useSelector_upvr_2 (readonly)
		[12]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
		[13]: useLocalization_upvr_2 (readonly)
		[14]: React_upvr_2 (readonly)
		[15]: LeaveGroupDialog_upvr_2 (readonly)
		[16]: ResponseIndicator_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_2_upvr, arg1)
	local useState_upvr_result1, var61_result2_upvr = useState_upvr(true)
	local var61_result1, useState_upvr_result2_upvr = useState_upvr(false)
	local var61_result1_2, var61_result2_upvr_2 = useState_upvr(false)
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	useEffectOnMount_upvr_2(function() -- Line 73
		--[[ Upvalues[3]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr_2 (copied, readonly)
			[3]: any_join_result1_upvr (readonly)
		]]
		if useAnalytics_upvr_result1_upvr then
			useAnalytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr_2.ChatDetailsLeaveGroupDialogRendered, {
				conversationId = any_join_result1_upvr.conversationId;
			})
		end
	end)
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var66_result1_upvr = useCallback_upvr_2(function(arg1_4, arg2) -- Line 82
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: AppChatNetworking_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(AppChatNetworking_upvr.rodux.RemoveUserFromConversation.API(arg2, arg1_4))
	end, dependencyArray_upvr_2(useDispatch_upvr_result1_upvr))
	local var69_result1_upvr = useSelector_upvr_2(function(arg1_5) -- Line 86
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: GetFFlagLuaAppEnableSquadPage_upvr (copied, readonly)
		]]
		if not arg1_5.ChatAppReducer.Conversations[any_join_result1_upvr.conversationId] then
			local tbl_9 = {
				title = nil;
				hasGroupUp = nil;
			}
		end
		local module_3 = {
			localUserId = arg1_5.LocalUserId;
		}
		local title = tbl_9.title
		module_3.conversationTitle = title
		if GetFFlagLuaAppEnableSquadPage_upvr() then
			title = tbl_9.hasGroupUp
		else
			title = nil
		end
		module_3.hasGroupUp = title
		return module_3
	end)
	local module_2 = {}
	local var103 = useState_upvr_result1
	if var103 then
		var103 = React_upvr_2.createElement
		var103 = var103(LeaveGroupDialog_upvr_2, Cryo_upvr.Dictionary.join(any_join_result1_upvr, useLocalization_upvr_2({
			titleText = any_join_result1_upvr.titleKey;
			cancelText = any_join_result1_upvr.cancelKey;
			confirmText = any_join_result1_upvr.confirmKey;
			bodyText = any_join_result1_upvr.bodyKey;
			failureTitleText = any_join_result1_upvr.failureTitleKey;
			failureBodyText = {
				CONVERSATION_TITLE = var69_result1_upvr.conversationTitle;
				any_join_result1_upvr.failureBodyKey
			};
			failureButtonText = any_join_result1_upvr.failureButtonKey;
		}), var69_result1_upvr, {
			onActivated = useCallback_upvr_2(function() -- Line 101
				--[[ Upvalues[9]:
					[1]: useState_upvr_result2_upvr (readonly)
					[2]: var61_result2_upvr (readonly)
					[3]: useAnalytics_upvr_result1_upvr (readonly)
					[4]: EventNames_upvr_2 (copied, readonly)
					[5]: any_join_result1_upvr (readonly)
					[6]: GetFFlagLuaAppEnableSquadPage_upvr (copied, readonly)
					[7]: var69_result1_upvr (readonly)
					[8]: var66_result1_upvr (readonly)
					[9]: var61_result2_upvr_2 (readonly)
				]]
				useState_upvr_result2_upvr(true)
				var61_result2_upvr(false)
				if useAnalytics_upvr_result1_upvr then
					local tbl_8 = {}
					local conversationId = any_join_result1_upvr.conversationId
					tbl_8.conversationId = conversationId
					if GetFFlagLuaAppEnableSquadPage_upvr() then
						conversationId = var69_result1_upvr.hasGroupUp
					else
						conversationId = nil
					end
					tbl_8.selectedConversationHasGroupUp = conversationId
					useAnalytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr_2.ChatDetailsLeaveGroupDialogLeaveClicked, tbl_8)
				end
				if any_join_result1_upvr.conversationId then
					var66_result1_upvr(var69_result1_upvr.localUserId, any_join_result1_upvr.conversationId):andThen(function() -- Line 115
						--[[ Upvalues[1]:
							[1]: any_join_result1_upvr (copied, readonly)
						]]
						any_join_result1_upvr.onModalClose()
						any_join_result1_upvr.onLeaveSuccess()
					end):catch(function() -- Line 119
						--[[ Upvalues[3]:
							[1]: useState_upvr_result2_upvr (copied, readonly)
							[2]: var61_result2_upvr (copied, readonly)
							[3]: var61_result2_upvr_2 (copied, readonly)
						]]
						useState_upvr_result2_upvr(false)
						var61_result2_upvr(true)
						var61_result2_upvr_2(true)
					end)
				end
				return true
			end, dependencyArray_upvr_2(var69_result1_upvr.localUserId, var69_result1_upvr.hasGroupUp, any_join_result1_upvr.conversationId, useAnalytics_upvr_result1_upvr, var66_result1_upvr));
			displayFailed = var61_result1_2;
			onModalClose = useCallback_upvr_2(function(...) -- Line 137
				--[[ Upvalues[3]:
					[1]: useAnalytics_upvr_result1_upvr (readonly)
					[2]: EventNames_upvr_2 (copied, readonly)
					[3]: any_join_result1_upvr (readonly)
				]]
				if useAnalytics_upvr_result1_upvr then
					useAnalytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr_2.ChatDetailsLeaveGroupDialogStayClicked, {
						conversationId = any_join_result1_upvr.conversationId;
					})
				end
				any_join_result1_upvr.onModalClose(...)
			end, dependencyArray_upvr_2(any_join_result1_upvr.onModalClose, useAnalytics_upvr_result1_upvr, any_join_result1_upvr.conversationId));
		}))
	end
	module_2.LeaveGroupDialog = var103
	var103 = var61_result1
	local var105 = var103
	if var105 then
		var105 = React_upvr_2.createElement
		var105 = var105(ResponseIndicator_upvr, {
			soakAreaColor3 = Color3.fromRGB(25, 25, 25);
			soakAreaTransparency = 0.8;
		})
	end
	module_2.ResponseIndicator = var105
	return React_upvr_2.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, module_2)
end
LeaveGroupDialogContainer = LeaveGroupDialogContainer -- Setting global
LeaveGroupDialogContainer = React_upvr_2.memo(LeaveGroupDialogContainer)
do
	return LeaveGroupDialogContainer
end
-- KONSTANTERROR: [171] 105. Error Block 17 end (CF ANALYSIS FAILED)