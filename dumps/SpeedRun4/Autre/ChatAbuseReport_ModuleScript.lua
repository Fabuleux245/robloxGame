-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:26
-- Luau version 6, Types version 3
-- Time taken: 0.001581 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local tbl_2_upvr = {{
	localizationKey = "Feature.ReportAbuse.Label.CategoryInappropriate";
	value = "ABUSE_TYPE_PROFANITY";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryPrivateInfo";
	value = "ABUSE_TYPE_PRIVACY_ASKING_FOR_PII";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryBullyingV2";
	value = "ABUSE_TYPE_HARASSMENT";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryDating";
	value = "ABUSE_TYPE_DATING_AND_ROMANTIC_CONTENT";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryScamming";
	value = "ABUSE_TYPE_CHEAT_AND_EXPLOITS";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryTheft";
	value = "ABUSE_TYPE_SCAMMING";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryContent";
	value = "ABUSE_TYPE_SEXUAL_CONTENT";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryThreats";
	value = "ABUSE_TYPE_REAL_LIFE_THREATS";
}, {
	localizationKey = "Feature.ReportAbuse.Label.CategoryOther";
	value = "ABUSE_TYPE_OTHER";
}}
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useChatPlacementContext_upvr = require(AppChat.Contexts.ChatPlacementContext).useChatPlacementContext
local React_upvr = require(Parent.React)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local DefaultTwoStepReportFlow_upvr = require(Parent.AbuseReporting).UXFlows.DefaultTwoStepReportFlow
return function(arg1) -- Line 46, Named "ChatAbuseReport"
	--[[ Upvalues[7]:
		[1]: useDispatch_upvr (readonly)
		[2]: useChatPlacementContext_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: AppChatNetworking_upvr (readonly)
		[5]: any_new_result1_upvr (readonly)
		[6]: DefaultTwoStepReportFlow_upvr (readonly)
		[7]: tbl_2_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var14_result1_upvr = useChatPlacementContext_upvr()
	return React_upvr.createElement(DefaultTwoStepReportFlow_upvr, {
		analyticsContext = "AppChat";
		onSubmitProps = {
			hasNextSteps = false;
			onSubmit = React_upvr.useCallback(function(arg1_2, arg2) -- Line 50
				--[[ Upvalues[5]:
					[1]: useDispatch_upvr_result1_upvr (readonly)
					[2]: AppChatNetworking_upvr (copied, readonly)
					[3]: arg1 (readonly)
					[4]: var14_result1_upvr (readonly)
					[5]: any_new_result1_upvr (copied, readonly)
				]]
				local tbl = {}
				tbl.comment = arg2
				tbl.reportedUserId = arg1.participantId
				tbl.reportCategory = arg1_2
				tbl.conversationId = arg1.conversationId
				tbl.entryPoint = var14_result1_upvr.chatPlacement
				local any_await_result1, any_await_result2 = useDispatch_upvr_result1_upvr(AppChatNetworking_upvr.rodux.CreateChatAbuseReport.API(tbl)):await()
				if any_await_result1 then
					any_new_result1_upvr:info("Abuse report submitted successfully. Response: {}", tostring(any_await_result2))
					return any_await_result1
				end
				any_new_result1_upvr:error("Failed to submit abuse report. Response: {}", tostring(any_await_result2))
				return any_await_result1
			end, {useDispatch_upvr_result1_upvr, arg1.conversationId, arg1.participantId});
		};
		onCloseProps = {
			hasPreviousSteps = false;
			onAbandon = arg1.onAbandon;
		};
		onComplete = arg1.onComplete;
		reportCategories = tbl_2_upvr;
	})
end