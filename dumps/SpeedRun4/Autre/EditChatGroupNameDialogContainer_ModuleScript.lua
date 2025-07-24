-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:15
-- Luau version 6, Types version 3
-- Time taken: 0.007540 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local SquadExperimentation_upvr = require(Parent.SocialExperiments).SquadExperimentation
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local GetFFlagAppChatRebrandStringUpdates_upvr = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local tbl_4_upvr = {
	Success = function() -- Line 46, Named "Success"
		return {
			visible = false;
			isLoading = false;
			warningTextKey = nil;
		}
	end;
	Moderated = function() -- Line 55, Named "Moderated"
		--[[ Upvalues[2]:
			[1]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
			[2]: SquadExperimentation_upvr (readonly)
		]]
		local module = {
			visible = true;
			isLoading = false;
		}
		local var11
		if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
			var11 = "Feature.Chat.Response.ChatNameFullyModerated.V2"
		else
			var11 = "Feature.Chat.Response.ChatNameFullyModerated"
		end
		module.warningTextKey = var11
		return module
	end;
	Default = function(arg1, arg2) -- Line 65, Named "Default"
		--[[ Upvalues[2]:
			[1]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
			[2]: SquadExperimentation_upvr (readonly)
		]]
		local module_2 = {
			visible = true;
			isLoading = false;
		}
		local tbl_2 = {}
		local var14
		if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
			var14 = "Feature.Chat.Message.FailedToRenameConversation.V2"
		else
			var14 = "Feature.Chat.Message.FailedToRenameConversation"
		end
		tbl_2[1] = var14
		tbl_2.EXISTING_NAME = arg1
		tbl_2.NEW_NAME = arg2
		module_2.warningTextKey = tbl_2
		return module_2
	end;
	Waiting = function() -- Line 78, Named "Waiting"
		return {
			visible = true;
			isLoading = true;
		}
	end;
}
local tbl_3_upvr = {
	onModalClose = function() -- Line 97, Named "onModalClose"
	end;
}
local EditChatGroupNameDialogContainer
if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
	EditChatGroupNameDialogContainer = "Feature.Chat.Label.GroupName"
else
	EditChatGroupNameDialogContainer = "Feature.Chat.Label.ChatGroupName"
end
tbl_3_upvr.titleKey = EditChatGroupNameDialogContainer
EditChatGroupNameDialogContainer = "Feature.Chat.Action.Cancel"
tbl_3_upvr.cancelTitleKey = EditChatGroupNameDialogContainer
EditChatGroupNameDialogContainer = "Feature.Chat.Action.Save"
tbl_3_upvr.confirmationTitleKey = EditChatGroupNameDialogContainer
if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
	EditChatGroupNameDialogContainer = "Feature.Chat.Description.NameGroup"
else
	EditChatGroupNameDialogContainer = "Feature.Chat.Description.NameGroupChat"
end
tbl_3_upvr.placeholderTextKey = EditChatGroupNameDialogContainer
local Cryo_upvr = require(Parent.Cryo)
local useState_upvr = React_upvr.useState
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useCallback_upvr = React_upvr.useCallback
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local Logger_upvr = require(AppChat.Logger)
local ResponseStatus_upvr = AppChatNetworking_upvr.Constants.ResponseStatus
local FocusNavigationEventNameEnum_upvr = FocusNavigationUtils.FocusNavigationEventNameEnum
local InputHandlers_upvr = require(Parent.InputHandlers)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local ResponseIndicator_upvr = require(AppChat.SocialLibraries).Components.ResponseIndicator
local EditChatGroupNameDialog_upvr = require(script.Parent.EditChatGroupNameDialog)
local FFlagEnableAppChatFocusableFixes_upvr = require(Parent.SharedFlags).FFlagEnableAppChatFocusableFixes
local AppFocusRoot_upvr = FocusNavigationUtils.AppFocusRoot
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
function EditChatGroupNameDialogContainer(arg1) -- Line 111
	--[[ Upvalues[20]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: useState_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: useCallback_upvr (readonly)
		[6]: AppChatNetworking_upvr (readonly)
		[7]: dependencyArray_upvr (readonly)
		[8]: useSelector_upvr (readonly)
		[9]: tbl_4_upvr (readonly)
		[10]: Logger_upvr (readonly)
		[11]: ResponseStatus_upvr (readonly)
		[12]: React_upvr (readonly)
		[13]: FocusNavigationEventNameEnum_upvr (readonly)
		[14]: InputHandlers_upvr (readonly)
		[15]: useLocalization_upvr (readonly)
		[16]: ResponseIndicator_upvr (readonly)
		[17]: EditChatGroupNameDialog_upvr (readonly)
		[18]: FFlagEnableAppChatFocusableFixes_upvr (readonly)
		[19]: AppFocusRoot_upvr (readonly)
		[20]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_3_upvr, arg1)
	local useState_upvr_result1, useState_upvr_result2_upvr = useState_upvr({
		visible = true;
		isLoading = false;
	})
	local var20_result1_upvr = useDispatch_upvr()
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 123
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		local var41 = arg1_3.ChatAppReducer.Conversations[any_join_result1_upvr.conversationId]
		local var42
		if var41 and not var41.isDefaultTitle then
			var42 = var41.title
		end
		return var42
	end)
	local useCallback_upvr_result1_upvr = useCallback_upvr(function(arg1_2, arg2) -- Line 119
		--[[ Upvalues[2]:
			[1]: var20_result1_upvr (readonly)
			[2]: AppChatNetworking_upvr (copied, readonly)
		]]
		return var20_result1_upvr(AppChatNetworking_upvr.rodux.UpdateConversationTitle.API(arg1_2, arg2))
	end, dependencyArray_upvr(var20_result1_upvr))
	local tbl = {}
	local isLoading = useState_upvr_result1.isLoading
	if isLoading then
		isLoading = React_upvr.createElement
		isLoading = isLoading(ResponseIndicator_upvr, {
			soakAreaColor3 = Color3.fromRGB(25, 25, 25);
			soakAreaTransparency = 0.8;
		})
	end
	tbl.responseIndicator = isLoading
	isLoading = useState_upvr_result1.visible
	local var57 = isLoading
	if var57 then
		var57 = React_upvr.createElement
		var57 = var57(EditChatGroupNameDialog_upvr, Cryo_upvr.Dictionary.join(any_join_result1_upvr, useLocalization_upvr({
			titleText = any_join_result1_upvr.titleKey;
			placeholderText = any_join_result1_upvr.placeholderTextKey;
			cancelText = any_join_result1_upvr.cancelTitleKey;
			confirmText = any_join_result1_upvr.confirmationTitleKey;
			warningText = useState_upvr_result1.warningTextKey;
		}), {
			onActivated = useCallback_upvr(function(arg1_4) -- Line 138
				--[[ Upvalues[7]:
					[1]: any_join_result1_upvr (readonly)
					[2]: useState_upvr_result2_upvr (readonly)
					[3]: tbl_4_upvr (copied, readonly)
					[4]: useCallback_upvr_result1_upvr (readonly)
					[5]: Logger_upvr (copied, readonly)
					[6]: useSelector_upvr_result1_upvr (readonly)
					[7]: ResponseStatus_upvr (copied, readonly)
				]]
				if any_join_result1_upvr.conversationId then
					useState_upvr_result2_upvr(tbl_4_upvr.Waiting())
					useCallback_upvr_result1_upvr(any_join_result1_upvr.conversationId, arg1_4.InputBox):andThen(function(arg1_5) -- Line 142
						--[[ Upvalues[7]:
							[1]: Logger_upvr (copied, readonly)
							[2]: useState_upvr_result2_upvr (copied, readonly)
							[3]: tbl_4_upvr (copied, readonly)
							[4]: useSelector_upvr_result1_upvr (copied, readonly)
							[5]: arg1_4 (readonly)
							[6]: ResponseStatus_upvr (copied, readonly)
							[7]: any_join_result1_upvr (copied, readonly)
						]]
						if not arg1_5 or not arg1_5.responseBody or not arg1_5.responseBody.conversations or not arg1_5.responseBody.conversations[1] then
							Logger_upvr.error("Conversation rename response is invalid.")
							useState_upvr_result2_upvr(tbl_4_upvr.Default(useSelector_upvr_result1_upvr, arg1_4.InputBox))
						else
							if arg1_5.responseBody.conversations[1].status == ResponseStatus_upvr.SUCCESS then
								useState_upvr_result2_upvr(tbl_4_upvr.Success())
								any_join_result1_upvr.onModalClose()
								return
							end
							if arg1_5.responseBody and arg1_5.responseBody.conversations[1].status == ResponseStatus_upvr.MODERATED then
								Logger_upvr.error("Conversation rename was moderated.")
								useState_upvr_result2_upvr(tbl_4_upvr.Moderated())
								return
							end
							Logger_upvr.error("Conversation rename request failed.")
							useState_upvr_result2_upvr(tbl_4_upvr.Default(useSelector_upvr_result1_upvr, arg1_4.InputBox))
						end
					end):catch(function(arg1_6) -- Line 165
						--[[ Upvalues[4]:
							[1]: useState_upvr_result2_upvr (copied, readonly)
							[2]: tbl_4_upvr (copied, readonly)
							[3]: useSelector_upvr_result1_upvr (copied, readonly)
							[4]: arg1_4 (readonly)
						]]
						useState_upvr_result2_upvr(tbl_4_upvr.Default(useSelector_upvr_result1_upvr, arg1_4.InputBox))
					end)
				end
				return true
			end, dependencyArray_upvr(any_join_result1_upvr.conversationId, useSelector_upvr_result1_upvr));
			inputText = useSelector_upvr_result1_upvr;
			conversationTitle = useSelector_upvr_result1_upvr;
		}))
	end
	tbl.dialog = var57
	local any_createElement_result1 = React_upvr.createElement(React_upvr.Fragment, nil, tbl)
	if FFlagEnableAppChatFocusableFixes_upvr then
		return React_upvr.createElement(AppFocusRoot_upvr, {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp;
			isIsolated = true;
			isAutoFocusRoot = true;
			isFocusable = true;
			customEventHandlers = React_upvr.useMemo(function() -- Line 173
				--[[ Upvalues[3]:
					[1]: FocusNavigationEventNameEnum_upvr (copied, readonly)
					[2]: InputHandlers_upvr (copied, readonly)
					[3]: any_join_result1_upvr (readonly)
				]]
				return {
					[FocusNavigationEventNameEnum_upvr.NavigateBack] = {
						handler = InputHandlers_upvr.onRelease(function(arg1_7) -- Line 177
							--[[ Upvalues[1]:
								[1]: any_join_result1_upvr (copied, readonly)
							]]
							any_join_result1_upvr.onModalClose()
							arg1_7:cancel()
						end);
					};
				}
			end, {any_join_result1_upvr.onModalClose});
		}, any_createElement_result1)
	end
	return any_createElement_result1
end
EditChatGroupNameDialogContainer = EditChatGroupNameDialogContainer -- Setting global
EditChatGroupNameDialogContainer = React_upvr.memo(EditChatGroupNameDialogContainer)
return EditChatGroupNameDialogContainer