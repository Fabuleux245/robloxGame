-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:22
-- Luau version 6, Types version 3
-- Time taken: 0.002351 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local React_upvr = require(Parent.React)
local tbl_upvr = {
	conversationId = nil;
	participantId = nil;
	showRemoveUserButton = false;
	viewProfileText = "Feature.Chat.Label.ViewProfile";
	reportUserText = "Feature.Chat.Action.ReportUser";
	removeFromGroupText = "Feature.Chat.Action.RemoveFromGroup";
	cancelText = "Feature.Chat.Action.Cancel";
	openViewProfile = nil;
	openReportUser = nil;
	openRemoveUserDialog = nil;
	onDismiss = function() -- Line 60, Named "onDismiss"
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local useAppPolicy_upvr = require(AppChat.Hooks.useAppPolicy)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useIsExternalNavigationAvailable_upvr = require(AppChat.Hooks.useIsExternalNavigationAvailable)
local EnumScreens_upvr = require(AppChat.EnumScreens)
local FocusNavigationEventNameEnum_upvr = FocusNavigationUtils.FocusNavigationEventNameEnum
local InputHandlers_upvr = require(Parent.InputHandlers)
local FFlagEnableAppChatFocusableFixes_upvr = require(Parent.SharedFlags).FFlagEnableAppChatFocusableFixes
local AppFocusRoot_upvr = FocusNavigationUtils.AppFocusRoot
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local PlayerContextualMenuWrapper_upvr = require(script.Parent.PlayerContextualMenuWrapper)
local FocusNavigableSurfaceWrapper_upvr = FocusNavigationUtils.FocusNavigableSurfaceWrapper
local ParticipantDialog_upvr = require(script.Parent.ParticipantDialog)
function ParticipantDialogContainer(arg1) -- Line 64
	--[[ Upvalues[15]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useAppPolicy_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: useIsExternalNavigationAvailable_upvr (readonly)
		[6]: EnumScreens_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: FocusNavigationEventNameEnum_upvr (readonly)
		[9]: InputHandlers_upvr (readonly)
		[10]: FFlagEnableAppChatFocusableFixes_upvr (readonly)
		[11]: AppFocusRoot_upvr (readonly)
		[12]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[13]: PlayerContextualMenuWrapper_upvr (readonly)
		[14]: FocusNavigableSurfaceWrapper_upvr (readonly)
		[15]: ParticipantDialog_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var7_result1 = useAppPolicy_upvr(function(arg1_2) -- Line 66
		return arg1_2.getChatViewProfileOption()
	end)
	local var8_result1 = useLocalization_upvr({
		viewProfileText = any_join_result1_upvr.viewProfileText;
		reportUserText = any_join_result1_upvr.reportUserText;
		removeFromGroupText = any_join_result1_upvr.removeFromGroupText;
		cancelText = any_join_result1_upvr.cancelText;
	})
	local function var25() -- Line 80
		--[[ Upvalues[3]:
			[1]: FocusNavigationEventNameEnum_upvr (copied, readonly)
			[2]: InputHandlers_upvr (copied, readonly)
			[3]: any_join_result1_upvr (readonly)
		]]
		return {
			[FocusNavigationEventNameEnum_upvr.NavigateBack] = {
				handler = InputHandlers_upvr.onRelease(function(arg1_3) -- Line 83
					--[[ Upvalues[1]:
						[1]: any_join_result1_upvr (copied, readonly)
					]]
					any_join_result1_upvr.onDismiss()
					arg1_3:cancel()
				end);
			};
		}
	end
	local tbl = {any_join_result1_upvr.onDismiss}
	if not useIsExternalNavigationAvailable_upvr({EnumScreens_upvr.ViewUserProfile})[EnumScreens_upvr.ViewUserProfile] then
		if FFlagEnableAppChatFocusableFixes_upvr then
			return React_upvr.createElement(AppFocusRoot_upvr, {
				customEventHandlers = React_upvr.useMemo(var25, tbl);
				isAutoFocusRoot = true;
				isFocusable = true;
				isIsolated = true;
				shouldRestoreFocus = false;
				surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp;
			}, {React_upvr.createElement(PlayerContextualMenuWrapper_upvr, {
				conversationId = any_join_result1_upvr.conversationId;
				participantId = any_join_result1_upvr.participantId;
				onDismiss = any_join_result1_upvr.onDismiss;
				openRemoveUserDialog = any_join_result1_upvr.openRemoveUserDialog;
				removeFromGroupText = var8_result1.removeFromGroupText;
				openReportUser = any_join_result1_upvr.openReportUser;
				showRemoveUserButton = any_join_result1_upvr.showRemoveUserButton;
			})})
		end
		return React_upvr.createElement(PlayerContextualMenuWrapper_upvr, {
			conversationId = any_join_result1_upvr.conversationId;
			participantId = any_join_result1_upvr.participantId;
			onDismiss = any_join_result1_upvr.onDismiss;
			openRemoveUserDialog = any_join_result1_upvr.openRemoveUserDialog;
			removeFromGroupText = var8_result1.removeFromGroupText;
			openReportUser = any_join_result1_upvr.openReportUser;
			showRemoveUserButton = any_join_result1_upvr.showRemoveUserButton;
		})
	end
	if FFlagEnableAppChatFocusableFixes_upvr then
		local module = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module.customEventHandlers = React_upvr.useMemo(var25, tbl)
		module.isAutoFocusRoot = true
		module.isFocusable = true
		module.isIsolated = true
		module.surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp
		return React_upvr.createElement(FocusNavigableSurfaceWrapper_upvr, module, {React_upvr.createElement(ParticipantDialog_upvr, Cryo_upvr.Dictionary.join(any_join_result1_upvr, var8_result1, {
			showViewProfileButton = var7_result1;
		}))})
	end
	return React_upvr.createElement(ParticipantDialog_upvr, Cryo_upvr.Dictionary.join(any_join_result1_upvr, var8_result1, {
		showViewProfileButton = var7_result1;
	}))
end
return React_upvr.memo(ParticipantDialogContainer)