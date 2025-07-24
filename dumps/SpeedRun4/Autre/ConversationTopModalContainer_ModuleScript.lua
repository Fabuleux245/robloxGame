-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:47
-- Luau version 6, Types version 3
-- Time taken: 0.003928 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local EnumScreens = require(AppChat.EnumScreens)
local tbl_upvr_2 = {
	conversation = {};
	navigateToScreen = function(...) -- Line 48, Named "navigateToScreen"
	end;
	setModalHeight = function(arg1) -- Line 49, Named "setModalHeight"
	end;
}
local tbl_upvr = {
	conversation_banner_group_phone_verification = true;
	conversation_banner_group_duplicate_upgrade = true;
	conversation_banner_learn_more = true;
	conversation_banner_one_to_one_phone_verification = true;
}
local tbl_upvr_3 = {
	conversation_banner_group_phone_verification = "ConversationPvBanner";
	conversation_banner_one_to_one_phone_verification = "ConversationPvBanner";
	conversation_banner_group_duplicate_upgrade = "ConversationUpgradeBanner";
	conversation_banner_learn_more = "ConversationLearnMoreBanner";
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useRef_upvr = React_upvr.useRef
local useEffect_upvr = React_upvr.useEffect
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeepValue2_upvr = require(AppChat.Utils.getDeepValue2)
local useConversationTopModal_upvr = require(AppChat.Hooks.useConversationTopModal)
local useCallback_upvr = React_upvr.useCallback
local EventNames_upvr = require(AppChat.Analytics.EventNames)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local DismissedConversationTopModal_upvr = require(AppChat.Conversations.Actions.DismissedConversationTopModal)
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local UnfilteredThreadsAMPFeatureName_upvr = require(AppChat.Components.UnfilteredThreadsAMPFeatureName)
local NavigateBack_upvr = require(Parent.NavigationRodux).Thunks.NavigateBack
local AccessResponseEnum_upvr = require(Parent.AmpUpsell).AmpEnums.AccessResponseEnum
local refreshAllUnfilteredThreadsDetails_upvr = require(AppChat.Conversations.Thunks.refreshAllUnfilteredThreadsDetails)
local FFlagPartialModalConversationFix_upvr = require(AppChat.Flags.FFlagPartialModalConversationFix)
local CreateUnfilteredChatPartialModal_upvr = EnumScreens.CreateUnfilteredChatPartialModal
local LearnMorePartialModal_upvr = EnumScreens.LearnMorePartialModal
local ConversationBanner_upvr = require(script.Parent.ConversationBanner.ConversationBanner)
local ConversationModal_upvr = require(script.Parent.ConversationModal.ConversationModal)
local Foundation_upvr = require(Parent.Foundation)
return React_upvr.memo(function(arg1) -- Line 69, Named "ConversationTopModalContainer"
	--[[ Upvalues[29]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useAnalytics_upvr (readonly)
		[5]: useDispatch_upvr (readonly)
		[6]: useRef_upvr (readonly)
		[7]: useEffect_upvr (readonly)
		[8]: useSelector_upvr (readonly)
		[9]: getDeepValue2_upvr (readonly)
		[10]: useConversationTopModal_upvr (readonly)
		[11]: tbl_upvr_3 (readonly)
		[12]: tbl_upvr (readonly)
		[13]: useCallback_upvr (readonly)
		[14]: EventNames_upvr (readonly)
		[15]: AppChatNetworking_upvr (readonly)
		[16]: DismissedConversationTopModal_upvr (readonly)
		[17]: NavigateDown_upvr (readonly)
		[18]: AppPage_upvr (readonly)
		[19]: UnfilteredThreadsAMPFeatureName_upvr (readonly)
		[20]: NavigateBack_upvr (readonly)
		[21]: AccessResponseEnum_upvr (readonly)
		[22]: refreshAllUnfilteredThreadsDetails_upvr (readonly)
		[23]: FFlagPartialModalConversationFix_upvr (readonly)
		[24]: CreateUnfilteredChatPartialModal_upvr (readonly)
		[25]: LearnMorePartialModal_upvr (readonly)
		[26]: React_upvr (readonly)
		[27]: ConversationBanner_upvr (readonly)
		[28]: ConversationModal_upvr (readonly)
		[29]: Foundation_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_upvr_2, arg1)
	local var12_result1_upvr = useRef_upvr(any_union_result1_upvr.setModalHeight)
	useEffect_upvr(function() -- Line 78
		--[[ Upvalues[2]:
			[1]: var12_result1_upvr (readonly)
			[2]: any_union_result1_upvr (readonly)
		]]
		var12_result1_upvr.current = any_union_result1_upvr.setModalHeight
	end, {any_union_result1_upvr.setModalHeight})
	useEffect_upvr(function() -- Line 81
		--[[ Upvalues[1]:
			[1]: var12_result1_upvr (readonly)
		]]
		return function() -- Line 82
			--[[ Upvalues[1]:
				[1]: var12_result1_upvr (copied, readonly)
			]]
			if var12_result1_upvr.current then
				var12_result1_upvr.current(0)
			end
		end
	end, {})
	local function _(arg1_2) -- Line 89
		--[[ Upvalues[2]:
			[1]: getDeepValue2_upvr (copied, readonly)
			[2]: any_union_result1_upvr (readonly)
		]]
		local getDeepValue2_upvr_result1 = getDeepValue2_upvr(arg1_2, `ChatAppReducer.Modals.conversationTopModalsDismissed.{any_union_result1_upvr.conversation.id}`)
		if not getDeepValue2_upvr_result1 then
			getDeepValue2_upvr_result1 = {}
		end
		return getDeepValue2_upvr_result1
	end
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 42. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 42. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 43. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 43. Error Block 3 end (CF ANALYSIS FAILED)
end)