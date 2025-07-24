-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:52
-- Luau version 6, Types version 3
-- Time taken: 0.006437 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	showNetworkErrorToast = function() -- Line 42, Named "showNetworkErrorToast"
	end;
	onHeightChanged = function() -- Line 43, Named "onHeightChanged"
	end;
}
local tbl_2_upvr = {
	pending_state_phone_verify = true;
	pending_state_ineligible = true;
}
local tbl_3_upvr = {
	pending_state_phone_verify = "ConversationPvUpsell";
	pending_state_ineligible = "ConversationIneligibleModal";
}
local Cryo_upvr = require(Parent.Cryo)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local useContext_upvr = React_upvr.useContext
local LuaAppNavigationContext_upvr = require(AppChat.LuaAppNavigationContext)
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeepValue2_upvr = require(AppChat.Utils.getDeepValue2)
local useEffectOnMount_upvr = require(Parent.RoactUtils).Hooks.useEffectOnMount
local useEffect_upvr = React_upvr.useEffect
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local useCallback_upvr = React_upvr.useCallback
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local UnfilteredThreadsAMPFeatureName_upvr = require(AppChat.Components.UnfilteredThreadsAMPFeatureName)
local NavigateBack_upvr = require(Parent.NavigationRodux).Thunks.NavigateBack
local AccessResponseEnum_upvr = require(Parent.AmpUpsell).AmpEnums.AccessResponseEnum
local refreshAllUnfilteredThreadsDetails_upvr = require(AppChat.Conversations.Thunks.refreshAllUnfilteredThreadsDetails)
local ConversationModal_upvr = require(script.Parent.Parent.ConversationModal.ConversationModal)
function PendingStateModalContainer(arg1) -- Line 57
	--[[ Upvalues[24]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useLocalUserId_upvr (readonly)
		[4]: useAnalytics_upvr (readonly)
		[5]: useContext_upvr (readonly)
		[6]: LuaAppNavigationContext_upvr (readonly)
		[7]: useNavigation_upvr (readonly)
		[8]: useDispatch_upvr (readonly)
		[9]: useSelector_upvr (readonly)
		[10]: getDeepValue2_upvr (readonly)
		[11]: tbl_3_upvr (readonly)
		[12]: tbl_2_upvr (readonly)
		[13]: useEffectOnMount_upvr (readonly)
		[14]: useEffect_upvr (readonly)
		[15]: AppChatNetworking_upvr (readonly)
		[16]: useCallback_upvr (readonly)
		[17]: NavigateDown_upvr (readonly)
		[18]: AppPage_upvr (readonly)
		[19]: UnfilteredThreadsAMPFeatureName_upvr (readonly)
		[20]: NavigateBack_upvr (readonly)
		[21]: AccessResponseEnum_upvr (readonly)
		[22]: refreshAllUnfilteredThreadsDetails_upvr (readonly)
		[23]: React_upvr (readonly)
		[24]: ConversationModal_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local var8_result1_upvr = useLocalUserId_upvr()
	local var9_result1_upvr = useAnalytics_upvr()
	local useContext_upvr_result1_upvr = useContext_upvr(LuaAppNavigationContext_upvr)
	local var12_result1_upvr = useNavigation_upvr()
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var14_result1 = useSelector_upvr(function(arg1_2) -- Line 66
		--[[ Upvalues[2]:
			[1]: getDeepValue2_upvr (copied, readonly)
			[2]: any_union_result1_upvr (readonly)
		]]
		return getDeepValue2_upvr(arg1_2, `ChatAppReducer.Modals.pendingStateModals.{any_union_result1_upvr.conversationId}`)
	end)
	if not var14_result1 then
		var14_result1 = {}
	end
	local modal_variant = var14_result1.modal_variant
	local getDeepValue2_upvr_result1_upvr = getDeepValue2_upvr(var14_result1, "modal_layout.id")
	local var15_result1_2_upvr = getDeepValue2_upvr(var14_result1, "modal_layout.seen_record_action")
	local var38_upvr = tbl_3_upvr[modal_variant]
	local var39_upvr = tbl_2_upvr[modal_variant]
	local var15_result1 = getDeepValue2_upvr(var14_result1, "modal_layout.buttons")
	if var15_result1 then
		local _1 = var15_result1[1]
	end
	if var15_result1 then
		local _2 = var15_result1[2]
	end
	useEffectOnMount_upvr(function() -- Line 79
		--[[ Upvalues[4]:
			[1]: var9_result1_upvr (readonly)
			[2]: var39_upvr (readonly)
			[3]: var38_upvr (readonly)
			[4]: any_union_result1_upvr (readonly)
		]]
		if var9_result1_upvr and var39_upvr and var38_upvr then
			var9_result1_upvr.fireAnalyticsEvent(`{var38_upvr}Rendered`, {
				conversationId = any_union_result1_upvr.conversationId;
			})
		end
	end)
	useEffect_upvr(function() -- Line 88
		--[[ Upvalues[5]:
			[1]: var39_upvr (readonly)
			[2]: useDispatch_upvr_result1_upvr (readonly)
			[3]: AppChatNetworking_upvr (copied, readonly)
			[4]: var15_result1_2_upvr (readonly)
			[5]: getDeepValue2_upvr_result1_upvr (readonly)
		]]
		if var39_upvr then
			useDispatch_upvr_result1_upvr(AppChatNetworking_upvr.rodux.RecordModalSequenceResponse.API(var15_result1_2_upvr, "pending_state_modal", getDeepValue2_upvr_result1_upvr)):catch(function(arg1_3) -- Line 96
				warn("Error in PendingStateModalContainer -> RecordModalSequenceResponse seen: "..tostring(arg1_3))
			end)
		end
	end, {useDispatch_upvr_result1_upvr, var39_upvr, var15_result1_2_upvr, getDeepValue2_upvr_result1_upvr, any_union_result1_upvr.conversationId})
	local useCallback_upvr_result1_upvr = useCallback_upvr(function(arg1_4, arg2) -- Line 110
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: AppChatNetworking_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(AppChatNetworking_upvr.rodux.RemoveUserFromConversation.API(arg2, arg1_4))
	end, {useDispatch_upvr_result1_upvr})
	local tbl = {
		pending_state_phone_verify = useCallback_upvr(function() -- Line 126
			--[[ Upvalues[10]:
				[1]: var9_result1_upvr (readonly)
				[2]: var38_upvr (readonly)
				[3]: any_union_result1_upvr (readonly)
				[4]: useDispatch_upvr_result1_upvr (readonly)
				[5]: NavigateDown_upvr (copied, readonly)
				[6]: AppPage_upvr (copied, readonly)
				[7]: UnfilteredThreadsAMPFeatureName_upvr (copied, readonly)
				[8]: NavigateBack_upvr (copied, readonly)
				[9]: AccessResponseEnum_upvr (copied, readonly)
				[10]: refreshAllUnfilteredThreadsDetails_upvr (copied, readonly)
			]]
			if var9_result1_upvr and var38_upvr then
				var9_result1_upvr.fireAnalyticsEvent(`{var38_upvr}ContinueClicked`, {
					conversationId = any_union_result1_upvr.conversationId;
				})
			end
			useDispatch_upvr_result1_upvr(NavigateDown_upvr({
				name = AppPage_upvr.AmpWizardContainer;
				extraProps = {
					featureName = UnfilteredThreadsAMPFeatureName_upvr;
					completionCallback = function(arg1_5, arg2) -- Line 136, Named "completionCallback"
						--[[ Upvalues[7]:
							[1]: useDispatch_upvr_result1_upvr (copied, readonly)
							[2]: NavigateBack_upvr (copied, readonly)
							[3]: AccessResponseEnum_upvr (copied, readonly)
							[4]: var9_result1_upvr (copied, readonly)
							[5]: var38_upvr (copied, readonly)
							[6]: any_union_result1_upvr (copied, readonly)
							[7]: refreshAllUnfilteredThreadsDetails_upvr (copied, readonly)
						]]
						useDispatch_upvr_result1_upvr(NavigateBack_upvr(true))
						if arg1_5 == AccessResponseEnum_upvr.Granted then
							if var9_result1_upvr and var38_upvr then
								var9_result1_upvr.fireAnalyticsEvent(`{var38_upvr}Succeeded`, {
									conversationId = any_union_result1_upvr.conversationId;
								})
							end
							useDispatch_upvr_result1_upvr(refreshAllUnfilteredThreadsDetails_upvr(any_union_result1_upvr.conversationId))
						elseif var9_result1_upvr and var38_upvr then
							var9_result1_upvr.fireAnalyticsEvent(`{var38_upvr}Failed`, {
								conversationId = any_union_result1_upvr.conversationId;
							})
						end
					end;
				};
			}))
		end, {useDispatch_upvr_result1_upvr, var38_upvr, var9_result1_upvr, any_union_result1_upvr.conversationId});
		pending_state_ineligible = useCallback_upvr(function() -- Line 114
			--[[ Upvalues[5]:
				[1]: var9_result1_upvr (readonly)
				[2]: var38_upvr (readonly)
				[3]: any_union_result1_upvr (readonly)
				[4]: var12_result1_upvr (readonly)
				[5]: useContext_upvr_result1_upvr (readonly)
			]]
			if var9_result1_upvr and var38_upvr then
				var9_result1_upvr.fireAnalyticsEvent(`{var38_upvr}LearnMoreClicked`, {
					conversationId = any_union_result1_upvr.conversationId;
				})
			end
			if var12_result1_upvr then
				useContext_upvr_result1_upvr.navigateToUnfilteredThreadsLearnMore(var12_result1_upvr.navigate)
			else
				useContext_upvr_result1_upvr.navigateToUnfilteredThreadsLearnMore()
			end
		end, {useContext_upvr_result1_upvr, var9_result1_upvr, var38_upvr, any_union_result1_upvr.conversationId, var12_result1_upvr});
	}
	if var39_upvr then
		local module = {
			bodyText = getDeepValue2_upvr(var14_result1, "modal_layout.body.text");
		}
		local var67
		if _2 and tbl[modal_variant] then
			var67 = _2.text
		else
			var67 = nil
		end
		module.acceptText = var67
		if _1 then
			var67 = _1.text
		else
			var67 = nil
		end
		module.denyText = var67
		var67 = any_union_result1_upvr.layoutOrder
		module.layoutOrder = var67
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module.onAccepted = tbl[modal_variant]
		module.onDenied = useCallback_upvr(function() -- Line 158
			--[[ Upvalues[5]:
				[1]: var9_result1_upvr (readonly)
				[2]: var38_upvr (readonly)
				[3]: any_union_result1_upvr (readonly)
				[4]: useCallback_upvr_result1_upvr (readonly)
				[5]: var8_result1_upvr (readonly)
			]]
			if var9_result1_upvr and var38_upvr then
				var9_result1_upvr.fireAnalyticsEvent(`{var38_upvr}LeftGroup`, {
					conversationId = any_union_result1_upvr.conversationId;
				})
			end
			if any_union_result1_upvr.conversationId then
				useCallback_upvr_result1_upvr(var8_result1_upvr, any_union_result1_upvr.conversationId):catch(function() -- Line 166
					--[[ Upvalues[1]:
						[1]: any_union_result1_upvr (copied, readonly)
					]]
					any_union_result1_upvr.showNetworkErrorToast()
				end)
			end
		end, {var8_result1_upvr, any_union_result1_upvr.conversationId, var38_upvr, var9_result1_upvr, useCallback_upvr_result1_upvr, any_union_result1_upvr.showNetworkErrorToast})
		var67 = any_union_result1_upvr.onHeightChanged
		module.onHeightChanged = var67
		return React_upvr.createElement(ConversationModal_upvr, module)
	end
	if modal_variant ~= "none" and modal_variant ~= nil and not tbl_2_upvr[modal_variant] then
		var67 = modal_variant
		warn("Unsupported PendingStateModal variant: "..var67)
	end
	return nil
end
return React_upvr.memo(PendingStateModalContainer)