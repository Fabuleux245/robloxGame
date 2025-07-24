-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:58
-- Luau version 6, Types version 3
-- Time taken: 0.006042 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local UIBlox = require(Parent.UIBlox)
local UniversalAppPolicy_upvr = require(Parent.UniversalAppPolicy)
local FFlagRenameFriendsToConnectionsPartyLobby_upvr = require(Parent.SharedFlags).FFlagRenameFriendsToConnectionsPartyLobby
local tbl_upvr = {
	hideCancelButton = false;
	bodyTextLocalizationProps = nil;
}
local function _() -- Line 39, Named "getFFlagRenameFriendsToConnectionsPartyLobby"
	--[[ Upvalues[2]:
		[1]: FFlagRenameFriendsToConnectionsPartyLobby_upvr (readonly)
		[2]: UniversalAppPolicy_upvr (readonly)
	]]
	local var7 = FFlagRenameFriendsToConnectionsPartyLobby_upvr
	if var7 then
		var7 = UniversalAppPolicy_upvr.getAppFeaturePolicies().getRenameFriendsToConnections()
	end
	return var7
end
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadExternalContractContext)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useCurrentSquadId_upvr = require(SquadsCore.Hooks.useCurrentSquadId)
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local EventNames_upvr = require(SquadsCore.Analytics.EventNames)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableSquadPromptAnalytics", false)
local SquadPromptType_upvr = require(SquadsCore.Enums.SquadPromptType)
local SquadInviteChangesExperimentation_upvr = require(Parent.SocialExperiments).SquadInviteChangesExperimentation
local FFlagPartyParticipantDisabledFixEnabled_upvr = require(Parent.SharedFlags).FFlagPartyParticipantDisabledFixEnabled
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
return function(arg1) -- Line 44
	--[[ Upvalues[18]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: SquadExternalContractContext_upvr (readonly)
		[5]: useDispatch_upvr (readonly)
		[6]: useCurrentSquadId_upvr (readonly)
		[7]: useScreenSize_upvr (readonly)
		[8]: EventNames_upvr (readonly)
		[9]: dependencyArray_upvr (readonly)
		[10]: game_DefineFastFlag_result1_upvr (readonly)
		[11]: SquadPromptType_upvr (readonly)
		[12]: FFlagRenameFriendsToConnectionsPartyLobby_upvr (readonly)
		[13]: UniversalAppPolicy_upvr (readonly)
		[14]: SquadInviteChangesExperimentation_upvr (readonly)
		[15]: FFlagPartyParticipantDisabledFixEnabled_upvr (readonly)
		[16]: useLocalization_upvr (readonly)
		[17]: ButtonType_upvr (readonly)
		[18]: InteractiveAlert_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	local var12_result1_upvr = useDispatch_upvr()
	local useCurrentSquadId_upvr_result1 = useCurrentSquadId_upvr()
	local var28_upvr = useCurrentSquadId_upvr_result1 or ""
	if any_join_result1_upvr.screenSize then
		useCurrentSquadId_upvr_result1 = any_join_result1_upvr.screenSize
	else
		useCurrentSquadId_upvr_result1 = useScreenSize_upvr()
	end
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_2) -- Line 52
		--[[ Upvalues[4]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_join_result1_upvr (readonly)
			[4]: var28_upvr (readonly)
		]]
		local tbl = {
			promptType = any_join_result1_upvr.promptType;
			squadId = var28_upvr or "";
		}
		tbl.responseType = arg1_2
		any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadPromptResponded, tbl)
	end, dependencyArray_upvr(any_join_result1_upvr.promptType, var28_upvr, any_useContext_result1_upvr.fireSquadAnalytics))
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function() -- Line 60
		--[[ Upvalues[5]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr_2 (readonly)
			[3]: var12_result1_upvr (readonly)
			[4]: any_useContext_result1_upvr (readonly)
			[5]: any_join_result1_upvr (readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			any_useCallback_result1_upvr_2("cancel")
		end
		var12_result1_upvr(any_useContext_result1_upvr.closeSquadPrompt())
		if any_join_result1_upvr.onCancel then
			any_join_result1_upvr.onCancel()
		end
	end, dependencyArray_upvr(var12_result1_upvr, any_join_result1_upvr.onCancel, any_useContext_result1_upvr.closeSquadPrompt, any_useCallback_result1_upvr_2))
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 72
		--[[ Upvalues[5]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr_2 (readonly)
			[3]: var12_result1_upvr (readonly)
			[4]: any_useContext_result1_upvr (readonly)
			[5]: any_join_result1_upvr (readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			any_useCallback_result1_upvr_2("confirm")
		end
		var12_result1_upvr(any_useContext_result1_upvr.closeSquadPrompt())
		if any_join_result1_upvr.onConfirm then
			any_join_result1_upvr.onConfirm()
		end
	end, dependencyArray_upvr(var12_result1_upvr, any_join_result1_upvr.onConfirm, any_useContext_result1_upvr.closeSquadPrompt, any_useCallback_result1_upvr_2))
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function(arg1_3) -- Line 84
		--[[ Upvalues[6]:
			[1]: SquadPromptType_upvr (copied, readonly)
			[2]: FFlagRenameFriendsToConnectionsPartyLobby_upvr (copied, readonly)
			[3]: UniversalAppPolicy_upvr (copied, readonly)
			[4]: SquadInviteChangesExperimentation_upvr (copied, readonly)
			[5]: FFlagPartyParticipantDisabledFixEnabled_upvr (copied, readonly)
			[6]: any_join_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 110 start (CF ANALYSIS FAILED)
		local var45
		if arg1_3 == SquadPromptType_upvr.AlreadyJoined then
			var45 = "Feature.Squads.Description.AlreadyJoined"
			-- KONSTANTWARNING: GOTO [177] #143
		end
		-- KONSTANTERROR: [0] 1. Error Block 110 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 12. Error Block 111 start (CF ANALYSIS FAILED)
		local var46
		if arg1_3 == SquadPromptType_upvr.ConfirmInviteToSquad then
			local var47 = FFlagRenameFriendsToConnectionsPartyLobby_upvr
			if var47 then
				var47 = UniversalAppPolicy_upvr.getAppFeaturePolicies().getRenameFriendsToConnections()
			end
			if var47 then
			else
			end
			if FFlagRenameFriendsToConnectionsPartyLobby_upvr then
			end
			if UniversalAppPolicy_upvr.getAppFeaturePolicies().getRenameFriendsToConnections() then
				var45 = "Feature.Squads.Description.InviteConnectionsToParty"
			else
				var45 = "Feature.Squads.Description.InviteFriendsToParty"
			end
		elseif arg1_3 == SquadPromptType_upvr.AddFriends then
			var45 = "Feature.Squads.Description.AddFriends"
		elseif arg1_3 == SquadPromptType_upvr.FailedToJoin then
			var45 = "Feature.Squads.Description.FailedToJoin"
		elseif arg1_3 == SquadPromptType_upvr.JoinAnotherSquad then
			var45 = "Feature.Squads.Description.JoinAnotherParty"
		elseif arg1_3 == SquadPromptType_upvr.SquadEnded then
			var45 = "Feature.Squads.Description.PartyEnded"
		elseif arg1_3 == SquadPromptType_upvr.SquadFull then
			var45 = "Feature.Squads.Description.PartyFull"
		elseif arg1_3 == SquadPromptType_upvr.InvitedToExperience then
			var45 = "Feature.Squads.Description.InvitedToExperience"
		elseif arg1_3 == SquadPromptType_upvr.RemoveFromChat then
			var45 = "Feature.Squads.Description.RemoveFromChat"
		elseif SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and arg1_3 == SquadPromptType_upvr.RemoveFromParty then
			var45 = "Feature.Squads.Description.RemoveFromParty"
		elseif arg1_3 == SquadPromptType_upvr.JoinWithLowMemory then
			var45 = "Feature.Squads.Description.JoinWithLowMemory"
		elseif arg1_3 == SquadPromptType_upvr.ConnectVoiceWithLowMemory then
			var45 = "Feature.Squads.Description.ConnectVoiceWithLowMemory"
		elseif arg1_3 == SquadPromptType_upvr.DisconnectVoiceDueToLowMemory then
			var45 = "Feature.Squads.Description.DisconnectVoiceDueToLowMemory"
		elseif FFlagPartyParticipantDisabledFixEnabled_upvr and arg1_3 == SquadPromptType_upvr.ParticipantChatDisabled then
			var45 = "Feature.Chat.Toast.Error.InvalidUserSelected"
		elseif arg1_3 == SquadPromptType_upvr.EuVoiceConsentPrompt then
			var45 = "Feature.Squads.Description.VoiceRecordedDisclosure"
		else
			var45 = "Feature.Squads.Description.PleaseTryAgain"
		end
		if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and any_join_result1_upvr.bodyTextLocalizationProps then
			var45 = {var45}
			for i, v in pairs(any_join_result1_upvr.bodyTextLocalizationProps) do
				var45[i] = v
			end
		end
		do
			return {
				title = "Feature.Squads.Label.PartyOperationFailed";
				bodyText = var45;
				confirmText = "Feature.Squads.Action.Ok";
				cancelButtonText = "Feature.Squads.Action.JoinWithoutVoice";
			}
		end
		-- KONSTANTERROR: [13] 12. Error Block 111 end (CF ANALYSIS FAILED)
	end, {})
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 176
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvr_4 (readonly)
			[2]: any_join_result1_upvr (readonly)
		]]
		return any_useCallback_result1_upvr_4(any_join_result1_upvr.promptType)
	end, dependencyArray_upvr(any_join_result1_upvr.promptType))
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		title = any_useMemo_result1.title;
		bodyText = any_useMemo_result1.bodyText;
		confirmText = any_useMemo_result1.confirmText;
		cancelButtonText = any_useMemo_result1.cancelButtonText;
	})
	return React_upvr.createElement(InteractiveAlert_upvr, {
		screenSize = useCurrentSquadId_upvr_result1;
		title = useLocalization_upvr_result1_upvr.title;
		bodyText = useLocalization_upvr_result1_upvr.bodyText;
		buttonStackInfo = {
			buttons = React_upvr.useCallback(function() -- Line 188
				--[[ Upvalues[5]:
					[1]: any_join_result1_upvr (readonly)
					[2]: any_useCallback_result1_upvr_3 (readonly)
					[3]: useLocalization_upvr_result1_upvr (readonly)
					[4]: ButtonType_upvr (copied, readonly)
					[5]: any_useCallback_result1_upvr (readonly)
				]]
				local module = {}
				if not any_join_result1_upvr.hideCancelButton then
					table.insert(module, {
						props = {
							onActivated = any_useCallback_result1_upvr_3;
							text = useLocalization_upvr_result1_upvr.cancelButtonText;
						};
					})
				end
				table.insert(module, {
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						onActivated = any_useCallback_result1_upvr;
						text = useLocalization_upvr_result1_upvr.confirmText;
					};
				})
				return module
			end, dependencyArray_upvr(useLocalization_upvr_result1_upvr.cancelButtonText, useLocalization_upvr_result1_upvr.confirmText, any_join_result1_upvr.hideCancelButton, any_useCallback_result1_upvr, any_useCallback_result1_upvr_3))();
		};
	})
end