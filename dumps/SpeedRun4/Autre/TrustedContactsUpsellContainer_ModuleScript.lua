-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:50
-- Luau version 6, Types version 3
-- Time taken: 0.007650 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local tbl_upvr = {
	[AppChatNetworking_upvr.Constants.ConversationOverlay.TrustedConnectionCreated] = require(Parent.TrustedContacts).TrustedContactsUpsellModal;
}
local useGetOneToOneFriendIdFromConversationId_upvr = require(AppChat.Hooks.useGetOneToOneFriendIdFromConversationId)
local useIsAppChatVerticallyConstrained_upvr = require(AppChat.App.Hooks.useIsAppChatVerticallyConstrained)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useRecordModalSequenceResponseForConversation_upvr = require(AppChat.Hooks.useRecordModalSequenceResponseForConversation)
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local FFlagAppChatModalTelemetry_upvr = require(Parent.SharedFlags).FFlagAppChatModalTelemetry
local useTelemetry_upvr = require(AppChat.Telemetry.useTelemetry)
local AppTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.AppTelemetryLayer)
local React_upvr = require(Parent.React)
local ConversationOverlayTelemetry_upvr = require(AppChat.Components.ChatConversation.PartialModal.ConversationOverlayTelemetry)
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local DismissedChatModal_upvr = require(AppChat.Conversations.Actions.DismissedChatModal)
local ModalTelemetry_upvr = require(AppChat.Components.ModalTelemetry)
local NetworkingFriends_upvr = require(AppChat.Http.NetworkingFriends)
local EnumScreens_upvr = require(AppChat.EnumScreens)
local FFlagPartialModalConversationFix_upvr = require(AppChat.Flags.FFlagPartialModalConversationFix)
return function(arg1) -- Line 42
	--[[ Upvalues[19]:
		[1]: useGetOneToOneFriendIdFromConversationId_upvr (readonly)
		[2]: useIsAppChatVerticallyConstrained_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useRecordModalSequenceResponseForConversation_upvr (readonly)
		[5]: useNavigation_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: FFlagAppChatModalTelemetry_upvr (readonly)
		[8]: useTelemetry_upvr (readonly)
		[9]: AppTelemetryLayer_upvr (readonly)
		[10]: React_upvr (readonly)
		[11]: ConversationOverlayTelemetry_upvr (readonly)
		[12]: AppChatNetworking_upvr (readonly)
		[13]: any_new_result1_upvr (readonly)
		[14]: DismissedChatModal_upvr (readonly)
		[15]: ModalTelemetry_upvr (readonly)
		[16]: NetworkingFriends_upvr (readonly)
		[17]: EnumScreens_upvr (readonly)
		[18]: FFlagPartialModalConversationFix_upvr (readonly)
		[19]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var23_upvr = useGetOneToOneFriendIdFromConversationId_upvr(arg1.conversationId) or ""
	local var8_result1_upvr = useDispatch_upvr()
	local var10_result1_upvr = useNavigation_upvr()
	local modal_variant_upvr = arg1.modalConfiguration.modal_variant
	local var28_upvw
	if FFlagAppChatModalTelemetry_upvr then
		var28_upvw = useTelemetry_upvr(AppTelemetryLayer_upvr.Context)
		React_upvr.useEffect(function() -- Line 56
			--[[ Upvalues[3]:
				[1]: var28_upvw (read and write)
				[2]: ConversationOverlayTelemetry_upvr (copied, readonly)
				[3]: modal_variant_upvr (readonly)
			]]
			var28_upvw.emit(ConversationOverlayTelemetry_upvr.Events.ModalRendered, {
				modalVariant = modal_variant_upvr;
			})
		end, {modal_variant_upvr})
	end
	local var9_result1_upvr = useRecordModalSequenceResponseForConversation_upvr(arg1.conversationId)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 64
		--[[ Upvalues[7]:
			[1]: var9_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: AppChatNetworking_upvr (copied, readonly)
			[4]: any_new_result1_upvr (copied, readonly)
			[5]: var8_result1_upvr (readonly)
			[6]: DismissedChatModal_upvr (copied, readonly)
			[7]: modal_variant_upvr (readonly)
		]]
		var9_result1_upvr(arg1.modalConfiguration.modal_layout.dismissed_record_action, AppChatNetworking_upvr.Constants.ModalSequence.ConversationOverlay, arg1.modalConfiguration.modal_layout.id, arg1.modalConfiguration.modal_variant):catch(function(arg1_2) -- Line 70
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			any_new_result1_upvr:warning(`Error in TrustedContactsUpsellContainer {arg1.modalConfiguration.modal_layout.id} -> RecordModalSequenceResponse: {tostring(arg1_2)}`)
		end)
		arg1.dismissModal()
		var8_result1_upvr(DismissedChatModal_upvr(AppChatNetworking_upvr.Constants.ModalSequence.ConversationOverlay, modal_variant_upvr, arg1.conversationId))
	end, {arg1.conversationId, arg1.modalConfiguration.modal_layout.dismissed_record_action, arg1.modalConfiguration.modal_layout.id, modal_variant_upvr, var8_result1_upvr, arg1.dismissModal})
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		toastText = "Feature.Friends.TrustedConnection.Toast.TrustedConnectionRemoved";
	})
	if FFlagAppChatModalTelemetry_upvr then
		local function _() -- Line 140
			--[[ Upvalues[5]:
				[1]: var28_upvw (read and write)
				[2]: ConversationOverlayTelemetry_upvr (copied, readonly)
				[3]: modal_variant_upvr (readonly)
				[4]: ModalTelemetry_upvr (copied, readonly)
				[5]: any_useCallback_result1_upvr (readonly)
			]]
			var28_upvw.emit(ConversationOverlayTelemetry_upvr.Events.ModalAction, {
				modalVariant = modal_variant_upvr;
				action = ModalTelemetry_upvr.Enums.ModalActions.PrimaryCta;
			})
			any_useCallback_result1_upvr()
		end
		local _ = {any_useCallback_result1_upvr, var28_upvw, modal_variant_upvr}
	else
	end
	if FFlagAppChatModalTelemetry_upvr then
		local function _() -- Line 149
			--[[ Upvalues[5]:
				[1]: var28_upvw (read and write)
				[2]: ConversationOverlayTelemetry_upvr (copied, readonly)
				[3]: modal_variant_upvr (readonly)
				[4]: ModalTelemetry_upvr (copied, readonly)
				[5]: any_useCallback_result1_upvr (readonly)
			]]
			var28_upvw.emit(ConversationOverlayTelemetry_upvr.Events.ModalAction, {
				modalVariant = modal_variant_upvr;
				action = ModalTelemetry_upvr.Enums.ModalActions.Dismiss;
			})
			any_useCallback_result1_upvr()
		end
		local _ = {any_useCallback_result1_upvr, var28_upvw, modal_variant_upvr}
	else
	end
	local var55 = tbl_upvr[modal_variant_upvr]
	if var55 then
		local module = {
			isVerticallyConstrained = useIsAppChatVerticallyConstrained_upvr();
			userId = var23_upvr;
		}
		if FFlagAppChatModalTelemetry_upvr then
		else
		end
		module.onClosed = any_useCallback_result1_upvr
		module.onAcknowledged = nil
		module.onRemovedTrustedConnection = React_upvr.useCallback(function() -- Line 95
			--[[ Upvalues[14]:
				[1]: FFlagAppChatModalTelemetry_upvr (copied, readonly)
				[2]: var28_upvw (read and write)
				[3]: ConversationOverlayTelemetry_upvr (copied, readonly)
				[4]: modal_variant_upvr (readonly)
				[5]: ModalTelemetry_upvr (copied, readonly)
				[6]: any_useCallback_result1_upvr (readonly)
				[7]: var8_result1_upvr (readonly)
				[8]: NetworkingFriends_upvr (copied, readonly)
				[9]: var23_upvr (readonly)
				[10]: any_new_result1_upvr (copied, readonly)
				[11]: var10_result1_upvr (readonly)
				[12]: EnumScreens_upvr (copied, readonly)
				[13]: useLocalization_upvr_result1_upvr (readonly)
				[14]: FFlagPartialModalConversationFix_upvr (copied, readonly)
			]]
			if FFlagAppChatModalTelemetry_upvr then
				var28_upvw.emit(ConversationOverlayTelemetry_upvr.Events.ModalAction, {
					modalVariant = modal_variant_upvr;
					action = ModalTelemetry_upvr.Enums.ModalActions.SecondaryCta;
				})
			end
			any_useCallback_result1_upvr()
			if FFlagAppChatModalTelemetry_upvr then
				var8_result1_upvr(NetworkingFriends_upvr.RemoveTC.API(var23_upvr)):andThen(function() -- Line 106
					--[[ Upvalues[4]:
						[1]: var28_upvw (copied, read and write)
						[2]: ConversationOverlayTelemetry_upvr (copied, readonly)
						[3]: modal_variant_upvr (copied, readonly)
						[4]: ModalTelemetry_upvr (copied, readonly)
					]]
					var28_upvw.emit(ConversationOverlayTelemetry_upvr.Events.ModalActionResult, {
						modalVariant = modal_variant_upvr;
						action = ModalTelemetry_upvr.Enums.ModalActions.SecondaryCta;
						actionResult = ModalTelemetry_upvr.Enums.ModalActionResults.Success;
					})
				end):catch(function(arg1_3) -- Line 113
					--[[ Upvalues[6]:
						[1]: var28_upvw (copied, read and write)
						[2]: ConversationOverlayTelemetry_upvr (copied, readonly)
						[3]: modal_variant_upvr (copied, readonly)
						[4]: ModalTelemetry_upvr (copied, readonly)
						[5]: any_new_result1_upvr (copied, readonly)
						[6]: var23_upvr (copied, readonly)
					]]
					var28_upvw.emit(ConversationOverlayTelemetry_upvr.Events.ModalActionResult, {
						modalVariant = modal_variant_upvr;
						action = ModalTelemetry_upvr.Enums.ModalActions.SecondaryCta;
						actionResult = ModalTelemetry_upvr.Enums.ModalActionResults.Failure;
					})
					any_new_result1_upvr:warning(`Error removing trusted connection for user {var23_upvr}: {tostring(arg1_3)}`)
				end)
			else
				var8_result1_upvr(NetworkingFriends_upvr.RemoveTC.API(var23_upvr)):catch(function(arg1_4) -- Line 122
					--[[ Upvalues[2]:
						[1]: any_new_result1_upvr (copied, readonly)
						[2]: var23_upvr (copied, readonly)
					]]
					any_new_result1_upvr:warning(`Error removing trusted connection for user {var23_upvr}: {tostring(arg1_4)}`)
				end)
			end
			if var10_result1_upvr then
				local tbl = {}
				local tbl_2 = {
					toastContent = {
						toastTitle = useLocalization_upvr_result1_upvr.toastText;
					};
					shouldHideIcon = true;
				}
				tbl.toastProps = tbl_2
				if FFlagPartialModalConversationFix_upvr then
					tbl_2 = true
				else
					tbl_2 = nil
				end
				tbl.isOverlay = tbl_2
				var10_result1_upvr.navigate(EnumScreens_upvr.RoactChatToast, tbl)
			end
		end, {any_useCallback_result1_upvr, var10_result1_upvr, var8_result1_upvr, var23_upvr, var28_upvw, modal_variant_upvr})
		module.shouldOverrideNavigation = true
		return React_upvr.createElement(var55, module)
	end
	return nil
end