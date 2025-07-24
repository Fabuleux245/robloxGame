-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:47
-- Luau version 6, Types version 3
-- Time taken: 0.002274 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local FFlagAppChatTrustedCommsTransition_upvr = require(AppChat.Flags.FFlagAppChatTrustedCommsTransition)
local tbl_upvr = {
	conversationId = "";
}
local function LearnMorePartialModalContainer() -- Line 37, Named "onDismissed"
end
tbl_upvr.onDismissed = LearnMorePartialModalContainer
if FFlagAppChatTrustedCommsTransition_upvr then
	LearnMorePartialModalContainer = "Feature.Chat.Heading.ExpressiveChat"
else
	LearnMorePartialModalContainer = "Feature.Chat.Heading.SomeChatsLimited"
end
tbl_upvr.titleKey = LearnMorePartialModalContainer
if FFlagAppChatTrustedCommsTransition_upvr then
	LearnMorePartialModalContainer = "Feature.Chat.Description.ExpressiveChatLearnMore"
else
	LearnMorePartialModalContainer = "Feature.Chat.Description.LearnMoreDialog"
end
tbl_upvr.bodyKey = LearnMorePartialModalContainer
LearnMorePartialModalContainer = "Feature.Chat.Description.LearnMoreDialogWithVoice"
tbl_upvr.bodyKeyWithVoice = LearnMorePartialModalContainer
LearnMorePartialModalContainer = "CommonUI.Features.Action.Close"
tbl_upvr.cancelAlertKey = LearnMorePartialModalContainer
local useIsFriendRenameActive_upvr = require(AppChat.Hooks.useIsFriendRenameActive)
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local useIsLocalPlayerPartyVoiceEligible_upvr = require(Parent.SquadsCore).Hooks.useIsLocalPlayerPartyVoiceEligible
local useEffectOnMount_upvr = require(Parent.RoactUtils).Hooks.useEffectOnMount
local EventNames_upvr = require(AppChat.Analytics.EventNames)
local useCallback_upvr = React_upvr.useCallback
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local PartialModal_upvr = require(script.Parent.PartialModal)
function LearnMorePartialModalContainer(arg1) -- Line 49
	--[[ Upvalues[15]:
		[1]: useIsFriendRenameActive_upvr (readonly)
		[2]: FFlagAppChatTrustedCommsTransition_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: useStyle_upvr (readonly)
		[6]: useScreenSize_upvr (readonly)
		[7]: useLayerCollector_upvr (readonly)
		[8]: useAnalytics_upvr (readonly)
		[9]: useIsLocalPlayerPartyVoiceEligible_upvr (readonly)
		[10]: useEffectOnMount_upvr (readonly)
		[11]: EventNames_upvr (readonly)
		[12]: useCallback_upvr (readonly)
		[13]: useLocalization_upvr (readonly)
		[14]: React_upvr (readonly)
		[15]: PartialModal_upvr (readonly)
	]]
	if useIsFriendRenameActive_upvr() and not FFlagAppChatTrustedCommsTransition_upvr then
		tbl_upvr.bodyKey = "Feature.Chat.Description.ReducedFilterChatLearnMore"
	end
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local useLayerCollector_upvr_result1 = useLayerCollector_upvr()
	local var21
	if useLayerCollector_upvr_result1 and useLayerCollector_upvr_result1.absoluteSize then
		var21 = useLayerCollector_upvr_result1.absoluteSize
	end
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	useEffectOnMount_upvr(function() -- Line 63
		--[[ Upvalues[3]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr (readonly)
		]]
		if useAnalytics_upvr_result1_upvr then
			useAnalytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ConversationLearnMoreDialogRendered, {
				conversationId = any_union_result1_upvr.conversationId;
			})
		end
	end)
	local var17_result1 = useLocalization_upvr({
		titleText = any_union_result1_upvr.titleKey;
		bodyText = any_union_result1_upvr.bodyKey;
		bodyTextWithVoice = any_union_result1_upvr.bodyKeyWithVoice;
		cancelAlertText = any_union_result1_upvr.cancelAlertKey;
	})
	local module = {
		titleText = var17_result1.titleText;
	}
	local var31
	if useIsLocalPlayerPartyVoiceEligible_upvr() and not FFlagAppChatTrustedCommsTransition_upvr then
		var31 = var17_result1.bodyTextWithVoice
	else
		var31 = var17_result1.bodyText
	end
	module.bodyText = var31
	var31 = var17_result1.cancelAlertText
	module.cancelAlertText = var31
	module.screenSize = var21
	module.onDismissed = useCallback_upvr(function() -- Line 71
		--[[ Upvalues[3]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr (readonly)
		]]
		if useAnalytics_upvr_result1_upvr then
			useAnalytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ConversationLearnMoreDialogDismissed, {
				conversationId = any_union_result1_upvr.conversationId;
			})
		end
		any_union_result1_upvr.onDismissed()
	end, {useAnalytics_upvr_result1_upvr, any_union_result1_upvr.conversationId, any_union_result1_upvr.onDismissed})
	module.style = useStyle_upvr()
	return React_upvr.createElement(PartialModal_upvr, module)
end
return React_upvr.memo(LearnMorePartialModalContainer)