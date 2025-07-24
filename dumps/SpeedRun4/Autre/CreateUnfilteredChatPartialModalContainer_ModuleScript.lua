-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:46
-- Luau version 6, Types version 3
-- Time taken: 0.005368 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	conversationId = "";
	onDismissed = function() -- Line 41, Named "onDismissed"
	end;
	navigateToConversation = function(arg1) -- Line 42, Named "navigateToConversation"
	end;
	navigateToToast = function(arg1) -- Line 43, Named "navigateToToast"
	end;
	titleKey = "Feature.Chat.Heading.CreateUnfilteredChatDialog";
	bodyKey = "Feature.Chat.Description.CreateUnfilteredChatDialog";
	bodyKeyWithVoice = "Feature.Chat.Description.CreateUnfilteredChatWithVoice";
	networkErrorTextKey = "Feature.Toast.NetworkingError.SomethingIsWrong";
	actionKey = "Feature.Chat.Action.Create";
	cancelAlertKey = "Feature.Chat.Action.Cancel";
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local useState_upvr = React_upvr.useState
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local useIsLocalPlayerPartyVoiceEligible_upvr = require(Parent.SquadsCore).Hooks.useIsLocalPlayerPartyVoiceEligible
local useEffectOnMount_upvr = require(Parent.RoactUtils).Hooks.useEffectOnMount
local EventNames_upvr = require(AppChat.Analytics.EventNames)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useCallback_upvr = React_upvr.useCallback
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local PartialModal_upvr = require(script.Parent.PartialModal)
return React_upvr.memo(function(arg1) -- Line 53, Named "CreateUnfilteredChatPartialModalContainer"
	--[[ Upvalues[16]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useScreenSize_upvr (readonly)
		[5]: useLayerCollector_upvr (readonly)
		[6]: useState_upvr (readonly)
		[7]: useDispatch_upvr (readonly)
		[8]: useAnalytics_upvr (readonly)
		[9]: useIsLocalPlayerPartyVoiceEligible_upvr (readonly)
		[10]: useEffectOnMount_upvr (readonly)
		[11]: EventNames_upvr (readonly)
		[12]: useLocalization_upvr (readonly)
		[13]: useCallback_upvr (readonly)
		[14]: AppChatNetworking_upvr (readonly)
		[15]: React_upvr (readonly)
		[16]: PartialModal_upvr (readonly)
	]]
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local useLayerCollector_upvr_result1 = useLayerCollector_upvr()
	local var22
	if useLayerCollector_upvr_result1 and useLayerCollector_upvr_result1.absoluteSize then
		var22 = useLayerCollector_upvr_result1.absoluteSize
	end
	local var10_result1, var10_result2_upvr = useState_upvr(false)
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var12_result1_upvr = useAnalytics_upvr()
	useEffectOnMount_upvr(function() -- Line 66
		--[[ Upvalues[3]:
			[1]: var12_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr (readonly)
		]]
		if var12_result1_upvr then
			var12_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ConversationUpgradeDialogRendered, {
				conversationId = any_union_result1_upvr.conversationId;
			})
		end
	end)
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		networkErrorText = any_union_result1_upvr.networkErrorTextKey;
		titleText = any_union_result1_upvr.titleKey;
		bodyText = any_union_result1_upvr.bodyKey;
		bodyTextWithVoice = any_union_result1_upvr.bodyKeyWithVoice;
		actionText = any_union_result1_upvr.actionKey;
		cancelAlertText = any_union_result1_upvr.cancelAlertKey;
	})
	local var17_result1_upvr = useCallback_upvr(function() -- Line 83
		--[[ Upvalues[2]:
			[1]: any_union_result1_upvr (readonly)
			[2]: useLocalization_upvr_result1_upvr (readonly)
		]]
		any_union_result1_upvr.navigateToToast(useLocalization_upvr_result1_upvr.networkErrorText)
	end, {any_union_result1_upvr.navigateToToast, useLocalization_upvr_result1_upvr.networkErrorText})
	local module = {}
	local titleText = useLocalization_upvr_result1_upvr.titleText
	module.titleText = titleText
	if useIsLocalPlayerPartyVoiceEligible_upvr() then
		titleText = useLocalization_upvr_result1_upvr.bodyTextWithVoice
	else
		titleText = useLocalization_upvr_result1_upvr.bodyText
	end
	module.bodyText = titleText
	module.actionText = useLocalization_upvr_result1_upvr.actionText
	module.cancelAlertText = useLocalization_upvr_result1_upvr.cancelAlertText
	module.isButtonDisabled = var10_result1
	module.screenSize = var22
	module.onActivated = useCallback_upvr(function() -- Line 88
		--[[ Upvalues[7]:
			[1]: var12_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr (readonly)
			[4]: var10_result2_upvr (readonly)
			[5]: useDispatch_upvr_result1_upvr (readonly)
			[6]: AppChatNetworking_upvr (copied, readonly)
			[7]: var17_result1_upvr (readonly)
		]]
		if var12_result1_upvr then
			var12_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ConversationUpgradeDialogActionClicked, {
				conversationId = any_union_result1_upvr.conversationId;
			})
		end
		var10_result2_upvr(true)
		useDispatch_upvr_result1_upvr(AppChatNetworking_upvr.rodux.DuplicateConversation.API(any_union_result1_upvr.conversationId, "trusted_comms")):andThen(function(arg1_2) -- Line 96
			--[[ Upvalues[2]:
				[1]: any_union_result1_upvr (copied, readonly)
				[2]: var17_result1_upvr (copied, readonly)
			]]
			local responseBody_2 = arg1_2.responseBody
			local var40 = responseBody_2
			if var40 then
				var40 = responseBody_2.conversations
				if var40 then
					var40 = responseBody_2.conversations[1]
					if var40 then
						var40 = responseBody_2.conversations[1].id
					end
				end
			end
			if var40 then
				any_union_result1_upvr.navigateToConversation(var40)
			else
				var17_result1_upvr()
			end
		end):catch(function() -- Line 108
			--[[ Upvalues[1]:
				[1]: var17_result1_upvr (copied, readonly)
			]]
			var17_result1_upvr()
		end):finally(function() -- Line 111
			--[[ Upvalues[1]:
				[1]: var10_result2_upvr (copied, readonly)
			]]
			var10_result2_upvr(false)
		end)
	end, {useDispatch_upvr_result1_upvr, var10_result2_upvr, var17_result1_upvr, any_union_result1_upvr.navigateToConversation, any_union_result1_upvr.conversationId, var12_result1_upvr})
	module.onDismissed = useCallback_upvr(function() -- Line 117
		--[[ Upvalues[3]:
			[1]: var12_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr (readonly)
		]]
		if var12_result1_upvr then
			var12_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ConversationUpgradeDialogDismissed, {
				conversationId = any_union_result1_upvr.conversationId;
			})
		end
		any_union_result1_upvr.onDismissed()
	end, {any_union_result1_upvr.onDismissed, var12_result1_upvr, any_union_result1_upvr.conversationId})
	module.style = useStyle_upvr()
	return React_upvr.createElement(PartialModal_upvr, module)
end)