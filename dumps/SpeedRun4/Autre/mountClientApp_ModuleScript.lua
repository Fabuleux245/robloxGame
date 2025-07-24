-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:31
-- Luau version 6, Types version 3
-- Time taken: 0.059867 seconds

local Chat_upvr = game:GetService("Chat")
local GuiService_upvr = game:GetService("GuiService")
local Players_upvr = game:GetService("Players")
local TextChatService_upvr = game:GetService("TextChatService")
local VRService_upvr = game:GetService("VRService")
local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Promise_upvr = require(Parent.Promise)
local UIBlox_upvr = require(Parent.UIBlox)
local ExpChatShared = require(Parent.ExpChatShared)
local SharedFlags = require(Parent.SharedFlags)
local any_new_result1_upvr = ExpChatShared.Logger:new("ExpChat/"..script.Name)
local Actions = ExpChat.Actions
local displaySystemMessage_upvr = require(ExpChat.displaySystemMessage)
local Flags = ExpChat.Flags
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixTextChatServiceNotShowingUpInVR", false)
local getFFlagUseCharacterStore_upvr = ExpChatShared.Flags.getFFlagUseCharacterStore
local FFlagExpChatUseAdorneeStore_upvr = SharedFlags.FFlagExpChatUseAdorneeStore
local TenFootInterfaceExpChatExperimentation_upvr = require(Parent.SocialExperiments).TenFootInterfaceExpChatExperimentation
function getChatTranslationEnabled() -- Line 92
	--[[ Upvalues[1]:
		[1]: TextChatService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 93
		--[[ Upvalues[1]:
			[1]: TextChatService_upvr (copied, readonly)
		]]
		return TextChatService_upvr.ChatTranslationEnabled
	end)
	return pcall_result1 and pcall_result2
end
local helpers = script.helpers
local context_upvr = ExpChatShared.context
local isPlayerVerified_upvr = require(ExpChat.isPlayerVerified)
local PlayerAdded_upvr = ExpChatShared.Actions.PlayerAdded
local LocalTeamChanged_upvr = ExpChatShared.Actions.LocalTeamChanged
local AdorneeAdded_upvr = require(Actions.AdorneeAdded)
local HumanoidDied_upvr = require(Actions.HumanoidDied)
local AtomicBinding_upvr = require(ExpChat.AtomicBinding)
local waitForFirst_upvr = require(helpers.waitForFirst)
local LocalCharacterLoaded_upvr = ExpChatShared.Actions.LocalCharacterLoaded
local CharacterAdded_upvr = ExpChatShared.Actions.CharacterAdded
local PlayerRemoved_upvr = ExpChatShared.Actions.PlayerRemoved
local function watchPlayersService_upvr(arg1, arg2) -- Line 110, Named "watchPlayersService"
	--[[ Upvalues[17]:
		[1]: any_new_result1_upvr (readonly)
		[2]: isPlayerVerified_upvr (readonly)
		[3]: PlayerAdded_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: LocalTeamChanged_upvr (readonly)
		[6]: FFlagExpChatUseAdorneeStore_upvr (readonly)
		[7]: context_upvr (readonly)
		[8]: AdorneeAdded_upvr (readonly)
		[9]: HumanoidDied_upvr (readonly)
		[10]: AtomicBinding_upvr (readonly)
		[11]: waitForFirst_upvr (readonly)
		[12]: LocalCharacterLoaded_upvr (readonly)
		[13]: getFFlagUseCharacterStore_upvr (readonly)
		[14]: CharacterAdded_upvr (readonly)
		[15]: Promise_upvr (readonly)
		[16]: displaySystemMessage_upvr (readonly)
		[17]: PlayerRemoved_upvr (readonly)
	]]
	any_new_result1_upvr:trace("Watching Players service")
	local tbl_12_upvr = {}
	local function onPlayerAdded_upvr(arg1_2) -- Line 114, Named "onPlayerAdded"
		--[[ Upvalues[16]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: isPlayerVerified_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: PlayerAdded_upvr (copied, readonly)
			[5]: Players_upvr (copied, readonly)
			[6]: LocalTeamChanged_upvr (copied, readonly)
			[7]: FFlagExpChatUseAdorneeStore_upvr (copied, readonly)
			[8]: context_upvr (copied, readonly)
			[9]: AdorneeAdded_upvr (copied, readonly)
			[10]: HumanoidDied_upvr (copied, readonly)
			[11]: AtomicBinding_upvr (copied, readonly)
			[12]: waitForFirst_upvr (copied, readonly)
			[13]: LocalCharacterLoaded_upvr (copied, readonly)
			[14]: getFFlagUseCharacterStore_upvr (copied, readonly)
			[15]: CharacterAdded_upvr (copied, readonly)
			[16]: tbl_12_upvr (readonly)
		]]
		any_new_result1_upvr:trace("Player added: {} {}", arg1_2.Name, tostring(arg1_2.UserId))
		local var38
		if isPlayerVerified_upvr(arg1_2) then
			var38 = true
		else
			var38 = nil
		end
		arg2:dispatch(PlayerAdded_upvr(arg1_2.UserId, arg1_2.Name, arg1_2.DisplayName, var38))
		if arg1_2 == Players_upvr.LocalPlayer then
			any_new_result1_upvr:trace("Found local player")
			arg1_2:GetPropertyChangedSignal("Team"):Connect(function() -- Line 123
				--[[ Upvalues[3]:
					[1]: arg2 (copied, readonly)
					[2]: LocalTeamChanged_upvr (copied, readonly)
					[3]: arg1_2 (readonly)
				]]
				arg2:dispatch(LocalTeamChanged_upvr(arg1_2.Team))
			end)
		end
		local function _() -- Line 128, Named "getHumanoidBinding"
			--[[ Upvalues[7]:
				[1]: arg1_2 (readonly)
				[2]: FFlagExpChatUseAdorneeStore_upvr (copied, readonly)
				[3]: context_upvr (copied, readonly)
				[4]: arg2 (copied, readonly)
				[5]: AdorneeAdded_upvr (copied, readonly)
				[6]: HumanoidDied_upvr (copied, readonly)
				[7]: AtomicBinding_upvr (copied, readonly)
			]]
			local function dispatchBubbleChatAdornee(arg1_3) -- Line 131
				--[[ Upvalues[6]:
					[1]: arg1_2 (copied, readonly)
					[2]: FFlagExpChatUseAdorneeStore_upvr (copied, readonly)
					[3]: context_upvr (copied, readonly)
					[4]: arg2 (copied, readonly)
					[5]: AdorneeAdded_upvr (copied, readonly)
					[6]: HumanoidDied_upvr (copied, readonly)
				]]
				local root_2 = arg1_3.root
				local humanoid_2 = arg1_3.humanoid
				local humanoidRootPart = arg1_3.humanoidRootPart
				if humanoid_2:IsA("Humanoid") and humanoidRootPart:IsA("Part") then
					if root_2 and humanoidRootPart and arg1_2.Character == root_2 then
						if FFlagExpChatUseAdorneeStore_upvr then
							context_upvr.adorneeStore.handleAdorneeAdded(arg1_2.UserId, root_2, humanoid_2)
						else
							arg2:dispatch(AdorneeAdded_upvr(arg1_2.UserId, root_2, humanoid_2))
						end
					end
					local any_Connect_result1_upvr = humanoid_2.Died:Connect(function() -- Line 145
						--[[ Upvalues[5]:
							[1]: FFlagExpChatUseAdorneeStore_upvr (copied, readonly)
							[2]: context_upvr (copied, readonly)
							[3]: arg1_2 (copied, readonly)
							[4]: arg2 (copied, readonly)
							[5]: HumanoidDied_upvr (copied, readonly)
						]]
						if FFlagExpChatUseAdorneeStore_upvr then
							context_upvr.adorneeStore.handleHumanoidDied(arg1_2.UserId)
						else
							arg2:dispatch(HumanoidDied_upvr(arg1_2.UserId))
						end
					end)
					local function disconnectHumanoidDied() -- Line 153
						--[[ Upvalues[1]:
							[1]: any_Connect_result1_upvr (readonly)
						]]
						if any_Connect_result1_upvr then
							any_Connect_result1_upvr:Disconnect()
						end
					end
					return disconnectHumanoidDied
				end
				function any_Connect_result1_upvr() -- Line 164
				end
				return any_Connect_result1_upvr
			end
			return AtomicBinding_upvr.new({
				humanoid = "Humanoid";
				humanoidRootPart = "HumanoidRootPart";
			}, dispatchBubbleChatAdornee)
		end
		local any_new_result1_upvr_2 = AtomicBinding_upvr.new({
			humanoid = "Humanoid";
			humanoidRootPart = "HumanoidRootPart";
		}, function(arg1_4) -- Line 131, Named "dispatchBubbleChatAdornee"
			--[[ Upvalues[6]:
				[1]: arg1_2 (readonly)
				[2]: FFlagExpChatUseAdorneeStore_upvr (copied, readonly)
				[3]: context_upvr (copied, readonly)
				[4]: arg2 (copied, readonly)
				[5]: AdorneeAdded_upvr (copied, readonly)
				[6]: HumanoidDied_upvr (copied, readonly)
			]]
			local root = arg1_4.root
			local humanoid = arg1_4.humanoid
			local humanoidRootPart_2 = arg1_4.humanoidRootPart
			if humanoid:IsA("Humanoid") and humanoidRootPart_2:IsA("Part") then
				if root and humanoidRootPart_2 and arg1_2.Character == root then
					if FFlagExpChatUseAdorneeStore_upvr then
						context_upvr.adorneeStore.handleAdorneeAdded(arg1_2.UserId, root, humanoid)
					else
						arg2:dispatch(AdorneeAdded_upvr(arg1_2.UserId, root, humanoid))
					end
				end
				local any_Connect_result1_upvr_2 = humanoid.Died:Connect(function() -- Line 145
					--[[ Upvalues[5]:
						[1]: FFlagExpChatUseAdorneeStore_upvr (copied, readonly)
						[2]: context_upvr (copied, readonly)
						[3]: arg1_2 (copied, readonly)
						[4]: arg2 (copied, readonly)
						[5]: HumanoidDied_upvr (copied, readonly)
					]]
					if FFlagExpChatUseAdorneeStore_upvr then
						context_upvr.adorneeStore.handleHumanoidDied(arg1_2.UserId)
					else
						arg2:dispatch(HumanoidDied_upvr(arg1_2.UserId))
					end
				end)
				return function() -- Line 153, Named "disconnectHumanoidDied"
					--[[ Upvalues[1]:
						[1]: any_Connect_result1_upvr_2 (readonly)
					]]
					if any_Connect_result1_upvr_2 then
						any_Connect_result1_upvr_2:Disconnect()
					end
				end
			end
			function any_Connect_result1_upvr_2() -- Line 164
			end
			return any_Connect_result1_upvr_2
		end)
		local function onCharacterAdded(arg1_5) -- Line 175
			--[[ Upvalues[10]:
				[1]: waitForFirst_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: any_new_result1_upvr (copied, readonly)
				[4]: Players_upvr (copied, readonly)
				[5]: arg2 (copied, readonly)
				[6]: LocalCharacterLoaded_upvr (copied, readonly)
				[7]: getFFlagUseCharacterStore_upvr (copied, readonly)
				[8]: context_upvr (copied, readonly)
				[9]: CharacterAdded_upvr (copied, readonly)
				[10]: any_new_result1_upvr_2 (readonly)
			]]
			if not arg1_5.Parent then
				waitForFirst_upvr(arg1_5.AncestryChanged, arg1_2.CharacterAdded)
			end
			if arg1_2.Character ~= arg1_5 or not arg1_5.Parent then
				any_new_result1_upvr:debug("Mismatched or unparented character in onCharacterAdded for {}", tostring(arg1_2.UserId))
			else
				if arg1_2 == Players_upvr.LocalPlayer then
					any_new_result1_upvr:debug("Local character loaded: {}", arg1_5.Name)
					arg2:dispatch(LocalCharacterLoaded_upvr(arg1_5))
				end
				if getFFlagUseCharacterStore_upvr() then
					context_upvr.characterStore.handleCharacterAdded(arg1_2.UserId, arg1_5)
				else
					arg2:dispatch(CharacterAdded_upvr(arg1_2.UserId, arg1_5))
				end
				any_new_result1_upvr_2:bindRoot(arg1_5)
			end
		end
		if arg1_2.Character then
			onCharacterAdded(arg1_2.Character)
		end
		if not tbl_12_upvr[arg1_2.UserId] then
			tbl_12_upvr[arg1_2.UserId] = {arg1_2.CharacterAdded:Connect(onCharacterAdded), arg1_2.CharacterRemoving:Connect(function(arg1_6) -- Line 199, Named "onCharacterRemoving"
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr_2 (readonly)
				]]
				any_new_result1_upvr_2:unbindRoot(arg1_6)
			end)}
		end
	end
	for _, v in pairs(Players_upvr:GetPlayers()) do
		if v:IsA("Player") then
			onPlayerAdded_upvr(v)
		end
	end
	Players_upvr.PlayerAdded:Connect(function(arg1_7) -- Line 217, Named "onNewPlayerAdded"
		--[[ Upvalues[6]:
			[1]: onPlayerAdded_upvr (readonly)
			[2]: Players_upvr (copied, readonly)
			[3]: Promise_upvr (copied, readonly)
			[4]: displaySystemMessage_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: any_new_result1_upvr (copied, readonly)
		]]
		onPlayerAdded_upvr(arg1_7)
		if Players_upvr.LocalPlayer then
			Promise_upvr.try(function() -- Line 221
				--[[ Upvalues[2]:
					[1]: arg1_7 (readonly)
					[2]: Players_upvr (copied, readonly)
				]]
				return arg1_7:IsFriendsWith(Players_upvr.LocalPlayer.UserId)
			end):andThen(function(arg1_8) -- Line 224
				--[[ Upvalues[3]:
					[1]: displaySystemMessage_upvr (copied, readonly)
					[2]: arg1_7 (readonly)
					[3]: arg1 (copied, readonly)
				]]
				if arg1_8 then
					displaySystemMessage_upvr("GameChat_FriendChatNotifier_JoinMessage", {
						RBX_NAME = arg1_7.DisplayName;
					}, "Roblox.Notification.Friend.Joined", arg1.translator, arg1.defaultSystemTextChannel)
				end
			end):catch(function(arg1_9) -- Line 235
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr (copied, readonly)
				]]
				any_new_result1_upvr:error("Could not fetch friendship status. Error: {}", tostring(arg1_9))
			end)
		end
	end)
	Players_upvr.PlayerRemoving:Connect(function(arg1_10) -- Line 250
		--[[ Upvalues[7]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: PlayerRemoved_upvr (copied, readonly)
			[4]: FFlagExpChatUseAdorneeStore_upvr (copied, readonly)
			[5]: context_upvr (copied, readonly)
			[6]: getFFlagUseCharacterStore_upvr (copied, readonly)
			[7]: tbl_12_upvr (readonly)
		]]
		any_new_result1_upvr:trace("Player removed: {} {}", arg1_10.Name, tostring(arg1_10.UserId))
		arg2:dispatch(PlayerRemoved_upvr(arg1_10.UserId))
		if FFlagExpChatUseAdorneeStore_upvr then
			context_upvr.adorneeStore.handlePlayerRemoved(arg1_10.UserId)
		end
		if getFFlagUseCharacterStore_upvr() then
			context_upvr.characterStore.handlePlayerRemoved(arg1_10.UserId)
		end
		local var66 = tbl_12_upvr[arg1_10.UserId]
		if var66 then
			for _, v_2 in ipairs(var66) do
				v_2:Disconnect()
			end
			tbl_12_upvr[arg1_10.UserId] = nil
		end
	end)
end
local function _() -- Line 272, Named "canShowDefaultChat"
	--[[ Upvalues[4]:
		[1]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: VRService_upvr (readonly)
	]]
	if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
		return true
	end
	if game_DefineFastFlag_result1_upvr then
		return not GuiService_upvr:IsTenFootInterface()
	end
	local var70 = not GuiService_upvr:IsTenFootInterface()
	if var70 then
		var70 = not VRService_upvr.VREnabled
	end
	return var70
end
local tbl_7_upvr = {
	canUserChatAsync = function(arg1) -- Line 314, Named "canUserChatAsync"
		--[[ Upvalues[1]:
			[1]: Chat_upvr (readonly)
		]]
		return Chat_upvr:CanUserChatAsync(arg1)
	end;
}
local function var72_upvr(arg1) -- Line 319
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr (readonly)
		[2]: UIBlox_upvr (readonly)
	]]
	local PrefixText = arg1.PrefixText
	any_new_result1_upvr:trace("System OnIncomingMessage started: {} {}", PrefixText, arg1.Text)
	local TextChatMessageProperties_12 = Instance.new("TextChatMessageProperties")
	if string.find(arg1.Metadata, "Error") then
		PrefixText = UIBlox_upvr.App.Style.Colors.Red:ToHex()
	else
		PrefixText = UIBlox_upvr.App.Style.Colors.LightGrey:ToHex()
	end
	TextChatMessageProperties_12.Text = string.format("<font color=\"#%s\">%s</font>", PrefixText, arg1.Text)
	any_new_result1_upvr:trace("System OnIncomingMessage finished: {} {}", TextChatMessageProperties_12.PrefixText, TextChatMessageProperties_12.Text)
	return TextChatMessageProperties_12
end
local Dictionary_upvr = require(Parent.llama).Dictionary
local createStore_upvr = require(script.Parent.createStore)
local createDispatchBindableEvent_upvr = require(script.Parent.createDispatchBindableEvent)
local bindableEventQueue_upvr = require(ExpChat.Events.bindableEventQueue)
local watchForErrors_upvr = ExpChatShared.watchForErrors
local GetFFlagUseUserProfileStore_upvr = SharedFlags.GetFFlagUseUserProfileStore
local isExperienceChatUserProfileApiEnabled_upvr = require(Flags.isExperienceChatUserProfileApiEnabled)
local GetAdorneeStore_upvr = require(ExpChat.Stores.GetAdorneeStore)
local GetCharacterStore_upvr = require(ExpChat.Stores.GetCharacterStore)
local Analytics_upvr = ExpChatShared.Analytics
local getFFlagUnreduxLastInputTypeChanged_upvr = require(Flags.getFFlagUnreduxLastInputTypeChanged)
local UserInputService_upvr = game:GetService("UserInputService")
local LastInputTypeChanged_upvr = require(Actions.LastInputTypeChanged)
local getFFlagExpChatMigrationSetup_upvr = SharedFlags.getFFlagExpChatMigrationSetup
local setUpConfigurationObjects_upvr = require(helpers.setUpConfigurationObjects)
local setUpClientSettings_upvr = require(helpers.setUpClientSettings)
local TextChannelCreated_upvr = ExpChatShared.Actions.TextChannelCreated
local getFFlagExpChatEnableChannelTabsUI_upvr = require(Flags.getFFlagExpChatEnableChannelTabsUI)
local GetNameColor_upvr = require(script.Parent.GetNameColor)
local getFFlagEnableGradientForChatWindowMessage_upvr = require(Flags.getFFlagEnableGradientForChatWindowMessage)
local getFFlagExpChatOverridePrefixNameColor_upvr = require(Flags.getFFlagExpChatOverridePrefixNameColor)
local getOtherDisplayNameInWhisperChannel_upvr = require(ExpChat.getOtherDisplayNameInWhisperChannel)
local reportMessageReceived_upvr = require(script.Parent.reportMessageReceived)
local handleChannelWelcomeMessage_upvr = require(ExpChat.handleChannelWelcomeMessage)
local getFFlagExpChatMoveWhisperWelcome_upvr = require(Flags.getFFlagExpChatMoveWhisperWelcome)
local IncomingMessageReceived_upvr = require(Actions.IncomingMessageReceived)
local GetFFlagUnreduxChatTransparency_upvr = SharedFlags.GetFFlagUnreduxChatTransparency
local GetTransparencyStore_upvr = require(script.Parent.Stores.GetTransparencyStore)
local TextChannelRemoved_upvr = ExpChatShared.Actions.TextChannelRemoved
local OutgoingMessageSent_upvr = require(Actions.OutgoingMessageSent)
local countParticipantsInTextChannel_upvr = ExpChatShared.countParticipantsInTextChannel
local LocalTextChannelParticipantAdded_upvr = require(Actions.LocalTextChannelParticipantAdded)
local getFFlagExpChatEnableChannelTabsUIFix_upvr = ExpChatShared.Flags.getFFlagExpChatEnableChannelTabsUIFix
local LocalTextChannelParticipantRemoved_upvr = ExpChatShared.Actions.LocalTextChannelParticipantRemoved
local HttpService_upvr = game:GetService("HttpService")
local IncomingBubbleChatMessageReceived_upvr = require(Actions.IncomingBubbleChatMessageReceived)
local LegacyBubbleChatEnabledChanged_upvr = require(Actions.LegacyBubbleChatEnabledChanged)
local LegacyBubbleChatSettingsChanged_upvr = require(Actions.LegacyBubbleChatSettingsChanged)
local getEngineFeatureFlagEnableDisplayBubble_upvr = require(Flags.getEngineFeatureFlagEnableDisplayBubble)
local Commands_upvr = ExpChatShared.Commands
local CommandAliasChanged_upvr = ExpChatShared.Actions.CommandAliasChanged
local ChatPrivacySettingsReceived_upvr = require(Actions.ChatPrivacySettingsReceived)
local ChatPrivacySettingsFetchFailed_upvr = require(Actions.ChatPrivacySettingsFetchFailed)
local Roact_upvr = require(Parent.Roact)
local App_upvr = require(script.Parent.App)
local ClientAppLoaded_upvr = ExpChatShared.Actions.ClientAppLoaded
local StarterGui_upvr = game:GetService("StarterGui")
local reportVersionLoaded_upvr = require(script.reportVersionLoaded)
local Version_upvr = ExpChatShared.Version
local getFFlagChatTranslationEnableSystemMessage_upvr = require(Flags.getFFlagChatTranslationEnableSystemMessage)
return function(arg1) -- Line 335
	--[[ Upvalues[67]:
		[1]: any_new_result1_upvr (readonly)
		[2]: Dictionary_upvr (readonly)
		[3]: tbl_7_upvr (readonly)
		[4]: createStore_upvr (readonly)
		[5]: createDispatchBindableEvent_upvr (readonly)
		[6]: bindableEventQueue_upvr (readonly)
		[7]: watchForErrors_upvr (readonly)
		[8]: context_upvr (readonly)
		[9]: GetFFlagUseUserProfileStore_upvr (readonly)
		[10]: isExperienceChatUserProfileApiEnabled_upvr (readonly)
		[11]: FFlagExpChatUseAdorneeStore_upvr (readonly)
		[12]: GetAdorneeStore_upvr (readonly)
		[13]: getFFlagUseCharacterStore_upvr (readonly)
		[14]: GetCharacterStore_upvr (readonly)
		[15]: Analytics_upvr (readonly)
		[16]: getFFlagUnreduxLastInputTypeChanged_upvr (readonly)
		[17]: UserInputService_upvr (readonly)
		[18]: LastInputTypeChanged_upvr (readonly)
		[19]: var72_upvr (readonly)
		[20]: getFFlagExpChatMigrationSetup_upvr (readonly)
		[21]: Chat_upvr (readonly)
		[22]: TextChatService_upvr (readonly)
		[23]: setUpConfigurationObjects_upvr (readonly)
		[24]: setUpClientSettings_upvr (readonly)
		[25]: Players_upvr (readonly)
		[26]: displaySystemMessage_upvr (readonly)
		[27]: TextChannelCreated_upvr (readonly)
		[28]: getFFlagExpChatEnableChannelTabsUI_upvr (readonly)
		[29]: GetNameColor_upvr (readonly)
		[30]: getFFlagEnableGradientForChatWindowMessage_upvr (readonly)
		[31]: getFFlagExpChatOverridePrefixNameColor_upvr (readonly)
		[32]: getOtherDisplayNameInWhisperChannel_upvr (readonly)
		[33]: reportMessageReceived_upvr (readonly)
		[34]: handleChannelWelcomeMessage_upvr (readonly)
		[35]: getFFlagExpChatMoveWhisperWelcome_upvr (readonly)
		[36]: IncomingMessageReceived_upvr (readonly)
		[37]: GetFFlagUnreduxChatTransparency_upvr (readonly)
		[38]: GetTransparencyStore_upvr (readonly)
		[39]: TextChannelRemoved_upvr (readonly)
		[40]: OutgoingMessageSent_upvr (readonly)
		[41]: countParticipantsInTextChannel_upvr (readonly)
		[42]: LocalTextChannelParticipantAdded_upvr (readonly)
		[43]: getFFlagExpChatEnableChannelTabsUIFix_upvr (readonly)
		[44]: LocalTextChannelParticipantRemoved_upvr (readonly)
		[45]: HttpService_upvr (readonly)
		[46]: IncomingBubbleChatMessageReceived_upvr (readonly)
		[47]: LegacyBubbleChatEnabledChanged_upvr (readonly)
		[48]: LegacyBubbleChatSettingsChanged_upvr (readonly)
		[49]: getEngineFeatureFlagEnableDisplayBubble_upvr (readonly)
		[50]: Commands_upvr (readonly)
		[51]: CommandAliasChanged_upvr (readonly)
		[52]: Promise_upvr (readonly)
		[53]: ChatPrivacySettingsReceived_upvr (readonly)
		[54]: ChatPrivacySettingsFetchFailed_upvr (readonly)
		[55]: watchPlayersService_upvr (readonly)
		[56]: UIBlox_upvr (readonly)
		[57]: Roact_upvr (readonly)
		[58]: App_upvr (readonly)
		[59]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
		[60]: game_DefineFastFlag_result1_upvr (readonly)
		[61]: GuiService_upvr (readonly)
		[62]: VRService_upvr (readonly)
		[63]: ClientAppLoaded_upvr (readonly)
		[64]: StarterGui_upvr (readonly)
		[65]: reportVersionLoaded_upvr (readonly)
		[66]: Version_upvr (readonly)
		[67]: getFFlagChatTranslationEnableSystemMessage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	any_new_result1_upvr:trace("mountClientApp started")
	local any_join_result1_upvw_3 = Dictionary_upvr.join(tbl_7_upvr, arg1)
	local var77_result1_upvr_2 = createStore_upvr()
	createDispatchBindableEvent_upvr(var77_result1_upvr_2)
	bindableEventQueue_upvr:flush()
	watchForErrors_upvr(game:GetService("ScriptContext"), any_join_result1_upvw_3.script, false)
	local translator = any_join_result1_upvw_3.translator
	context_upvr.translator = translator
	context_upvr.store = var77_result1_upvr_2
	local var391
	if not GetFFlagUseUserProfileStore_upvr() then
		if isExperienceChatUserProfileApiEnabled_upvr() then
			translator = any_join_result1_upvw_3.apolloClient
		else
			translator = nil
		end
		context_upvr.apolloClient = translator
	end
	if FFlagExpChatUseAdorneeStore_upvr then
		translator = GetAdorneeStore_upvr(false)
		context_upvr.adorneeStore = translator
	end
	if getFFlagUseCharacterStore_upvr() then
		translator = GetCharacterStore_upvr(false)
		context_upvr.characterStore = translator
	end
	if any_join_result1_upvw_3.analytics then
		translator = Analytics_upvr
		translator = any_join_result1_upvw_3.analytics
		translator.with(translator)
	end
	if not getFFlagUnreduxLastInputTypeChanged_upvr() then
		translator = UserInputService_upvr
		translator.LastInputTypeChanged:Connect(function(arg1_54) -- Line 367
			--[[ Upvalues[2]:
				[1]: var77_result1_upvr_2 (readonly)
				[2]: LastInputTypeChanged_upvr (copied, readonly)
			]]
			var77_result1_upvr_2:dispatch(LastInputTypeChanged_upvr(arg1_54))
		end)
	end
	if any_join_result1_upvw_3.defaultSystemTextChannel then
		translator = var72_upvr
		any_join_result1_upvw_3.defaultSystemTextChannel.OnIncomingMessage = translator
	elseif getFFlagExpChatMigrationSetup_upvr() then
		Chat_upvr:GetPropertyChangedSignal("IsAutoMigrated"):Once(function() -- Line 375
			--[[ Upvalues[3]:
				[1]: TextChatService_upvr (copied, readonly)
				[2]: any_join_result1_upvw_3 (read and write)
				[3]: var72_upvr (copied, readonly)
			]]
			local RBXSystem_3 = TextChatService_upvr:FindFirstChild("RBXSystem", true)
			if RBXSystem_3 then
				if RBXSystem_3:IsA("TextChannel") then
					any_join_result1_upvw_3.defaultSystemTextChannel = RBXSystem_3
					RBXSystem_3.OnIncomingMessage = var72_upvr
				end
			end
		end)
	end
	setUpConfigurationObjects_upvr(var77_result1_upvr_2, any_join_result1_upvw_3)
	setUpClientSettings_upvr(var77_result1_upvr_2)
	local LocalPlayer_3_upvr = Players_upvr.LocalPlayer
	if LocalPlayer_3_upvr then
		LocalPlayer_3_upvr:GetPropertyChangedSignal("Team"):Connect(function() -- Line 389
			--[[ Upvalues[3]:
				[1]: LocalPlayer_3_upvr (readonly)
				[2]: displaySystemMessage_upvr (copied, readonly)
				[3]: any_join_result1_upvw_3 (read and write)
			]]
			local Team_3 = LocalPlayer_3_upvr.Team
			if Team_3 then
				displaySystemMessage_upvr("GameChat_TeamChat_NowInTeam", {
					RBX_NAME = Team_3.Name;
				}, "Roblox.Team.Success.NowInTeam", any_join_result1_upvw_3.translator, any_join_result1_upvw_3.defaultSystemTextChannel)
			end
		end)
	end
	local function handleMessageReceived_upvr(arg1_55) -- Line 403, Named "handleMessageReceived"
		--[[ Upvalues[20]:
			[1]: var77_result1_upvr_2 (readonly)
			[2]: TextChannelCreated_upvr (copied, readonly)
			[3]: getFFlagExpChatEnableChannelTabsUI_upvr (copied, readonly)
			[4]: TextChatService_upvr (copied, readonly)
			[5]: GetNameColor_upvr (copied, readonly)
			[6]: getFFlagEnableGradientForChatWindowMessage_upvr (copied, readonly)
			[7]: getFFlagExpChatOverridePrefixNameColor_upvr (copied, readonly)
			[8]: any_new_result1_upvr (copied, readonly)
			[9]: Players_upvr (copied, readonly)
			[10]: LocalPlayer_3_upvr (readonly)
			[11]: getOtherDisplayNameInWhisperChannel_upvr (copied, readonly)
			[12]: any_join_result1_upvw_3 (read and write)
			[13]: reportMessageReceived_upvr (copied, readonly)
			[14]: handleChannelWelcomeMessage_upvr (copied, readonly)
			[15]: displaySystemMessage_upvr (copied, readonly)
			[16]: getFFlagExpChatMoveWhisperWelcome_upvr (copied, readonly)
			[17]: IncomingMessageReceived_upvr (copied, readonly)
			[18]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
			[19]: GetTransparencyStore_upvr (copied, readonly)
			[20]: Analytics_upvr (copied, readonly)
		]]
		var77_result1_upvr_2:dispatch(TextChannelCreated_upvr(arg1_55))
		local var399_upvw
		if getFFlagExpChatEnableChannelTabsUI_upvr() then
			local class_ChannelTabsConfiguration_3 = TextChatService_upvr:FindFirstChildOfClass("ChannelTabsConfiguration")
			if class_ChannelTabsConfiguration_3 then
				var399_upvw = class_ChannelTabsConfiguration_3.Enabled
			end
		end
		if string.find(arg1_55.Name, "RBXGeneral") then
			function arg1_55.OnIncomingMessage(arg1_56) -- Line 415
				--[[ Upvalues[3]:
					[1]: GetNameColor_upvr (copied, readonly)
					[2]: getFFlagEnableGradientForChatWindowMessage_upvr (copied, readonly)
					[3]: getFFlagExpChatOverridePrefixNameColor_upvr (copied, readonly)
				]]
				local TextChatMessageProperties_3 = Instance.new("TextChatMessageProperties")
				local var403
				local function INLINED_6() -- Internal function, doesn't exist in bytecode
					var403 = GetNameColor_upvr(arg1_56.TextSource.UserId)
					return getFFlagEnableGradientForChatWindowMessage_upvr()
				end
				if var403 and (not INLINED_6() or not getFFlagExpChatOverridePrefixNameColor_upvr() or not arg1_56.ChatWindowMessageProperties) then
					TextChatMessageProperties_3.PrefixText = string.format("<font color=\"#%s\">%s</font>", var403:ToHex(), arg1_56.PrefixText)
				end
				return TextChatMessageProperties_3
			end
		elseif string.find(arg1_55.Name, "^RBXTeam") then
			function arg1_55.OnIncomingMessage(arg1_57) -- Line 435
				--[[ Upvalues[3]:
					[1]: any_new_result1_upvr (copied, readonly)
					[2]: Players_upvr (copied, readonly)
					[3]: var399_upvw (read and write)
				]]
				any_new_result1_upvr:trace("Team OnIncomingMessage started: {} {}", arg1_57.PrefixText, arg1_57.Text)
				local TextChatMessageProperties_7 = Instance.new("TextChatMessageProperties")
				if Players_upvr.LocalPlayer then
					local TeamColor_2 = Players_upvr.LocalPlayer.TeamColor
					if var399_upvw then
						TeamColor_2 = ""
					else
						TeamColor_2 = "[Team] "
					end
					TextChatMessageProperties_7.PrefixText = string.format("<font color=\"#%s\">%s%s</font>", TeamColor_2.Color:ToHex(), TeamColor_2, arg1_57.PrefixText)
				end
				any_new_result1_upvr:trace("Team OnIncomingMessage finished: {} {}", TextChatMessageProperties_7.PrefixText, TextChatMessageProperties_7.Text)
				return TextChatMessageProperties_7
			end
		elseif string.find(arg1_55.Name, "^RBXWhisper") and LocalPlayer_3_upvr then
			function arg1_55.OnIncomingMessage(arg1_58) -- Line 456
				--[[ Upvalues[6]:
					[1]: getOtherDisplayNameInWhisperChannel_upvr (copied, readonly)
					[2]: arg1_55 (readonly)
					[3]: LocalPlayer_3_upvr (copied, readonly)
					[4]: var399_upvw (read and write)
					[5]: any_join_result1_upvw_3 (copied, read and write)
					[6]: GetNameColor_upvr (copied, readonly)
				]]
				local TextSource_5 = arg1_58.TextSource
				if TextSource_5 then
					local getOtherDisplayNameInWhisperChannel_upvr_result1_5 = getOtherDisplayNameInWhisperChannel_upvr(arg1_55, LocalPlayer_3_upvr)
					local var410
					if getOtherDisplayNameInWhisperChannel_upvr_result1_5 then
						local var411
						if not var399_upvw then
							if TextSource_5.UserId == LocalPlayer_3_upvr.UserId then
								var411 = any_join_result1_upvw_3.translator:FormatByKey("CoreScripts.TextChat.WhisperChat.PrefixText.Outgoing", {
									RBX_NAME = getOtherDisplayNameInWhisperChannel_upvr_result1_5;
								})
							else
								var411 = any_join_result1_upvw_3.translator:FormatByKey("CoreScripts.TextChat.WhisperChat.PrefixText.Incoming", {
									RBX_NAME = getOtherDisplayNameInWhisperChannel_upvr_result1_5;
								})
							end
						end
						local TextChatMessageProperties_11 = Instance.new("TextChatMessageProperties")
						if var411 then
							var410 = var411..' '
						else
							var410 = ""
						end
						TextChatMessageProperties_11.PrefixText = string.format("%s<font color=\"#%s\">%s</font>", var410, GetNameColor_upvr(TextSource_5.UserId):ToHex(), arg1_58.PrefixText)
						return TextChatMessageProperties_11
					end
				end
				return nil
			end
		end
		arg1_55.MessageReceived:Connect(function(arg1_59) -- Line 493
			--[[ Upvalues[12]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: LocalPlayer_3_upvr (copied, readonly)
				[3]: reportMessageReceived_upvr (copied, readonly)
				[4]: handleChannelWelcomeMessage_upvr (copied, readonly)
				[5]: displaySystemMessage_upvr (copied, readonly)
				[6]: any_join_result1_upvw_3 (copied, read and write)
				[7]: getFFlagExpChatMoveWhisperWelcome_upvr (copied, readonly)
				[8]: var77_result1_upvr_2 (copied, readonly)
				[9]: IncomingMessageReceived_upvr (copied, readonly)
				[10]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
				[11]: GetTransparencyStore_upvr (copied, readonly)
				[12]: Analytics_upvr (copied, readonly)
			]]
			any_new_result1_upvr:debug("Incoming MessageReceived Status: {} Text: {}", arg1_59.Status.Name, arg1_59.Text)
			if LocalPlayer_3_upvr then
				reportMessageReceived_upvr(LocalPlayer_3_upvr.UserId, arg1_59)
			end
			if LocalPlayer_3_upvr and arg1_59.TextSource then
				if arg1_59.TextSource.UserId ~= LocalPlayer_3_upvr.UserId then
					local var99_result1_2 = handleChannelWelcomeMessage_upvr(arg1_59, LocalPlayer_3_upvr)
					if var99_result1_2 then
						local var417 = any_join_result1_upvw_3
						if getFFlagExpChatMoveWhisperWelcome_upvr() then
							var417 = arg1_59.TextChannel
						else
							var417 = any_join_result1_upvw_3.defaultSystemTextChannel
						end
						displaySystemMessage_upvr(var99_result1_2.key, var99_result1_2.args, var99_result1_2.metadata, var417.translator, var417)
					end
				end
			end
			var99_result1_2 = LocalPlayer_3_upvr
			local var418 = var99_result1_2
			if var418 then
				var418 = arg1_59.TextSource
				if var418 then
					if arg1_59.TextSource.UserId ~= LocalPlayer_3_upvr.UserId then
						var418 = false
					else
						var418 = true
					end
				end
			end
			var77_result1_upvr_2:dispatch(IncomingMessageReceived_upvr(arg1_59, var418))
			if GetFFlagUnreduxChatTransparency_upvr() then
				GetTransparencyStore_upvr(false).resetTextTransparency()
			end
			if arg1_59.Status == Enum.TextChatMessageStatus.Floodchecked then
				displaySystemMessage_upvr("CoreScripts.TextChat.MessageStatus.Warning.Floodchecked", nil, "Roblox.MessageStatus.Warning.Floodchecked", any_join_result1_upvw_3.translator, any_join_result1_upvw_3.defaultSystemTextChannel)
			elseif arg1_59.Status == Enum.TextChatMessageStatus.TextFilterFailed then
				displaySystemMessage_upvr("CoreScripts.TextChat.MessageStatus.Warning.TextFilterFailed", nil, "Roblox.MessageStatus.Warning.TextFilterFailed", any_join_result1_upvw_3.translator, any_join_result1_upvw_3.defaultSystemTextChannel)
			elseif arg1_59.Status == Enum.TextChatMessageStatus.InvalidPrivacySettings then
				displaySystemMessage_upvr("CoreScripts.TextChat.MessageStatus.Warning.InvalidPrivacySettings", nil, "Roblox.MessageStatus.Warning.InvalidPrivacySettings", any_join_result1_upvw_3.translator, any_join_result1_upvw_3.defaultSystemTextChannel)
			elseif arg1_59.Status == Enum.TextChatMessageStatus.MessageTooLong then
				displaySystemMessage_upvr("CoreScripts.TextChat.MessageStatus.Warning.MessageTooLong", nil, "Roblox.MessageStatus.Warning.MessageTooLong", any_join_result1_upvw_3.translator, any_join_result1_upvw_3.defaultSystemTextChannel)
			elseif arg1_59.Status == Enum.TextChatMessageStatus.ModerationTimeout then
				displaySystemMessage_upvr("CoreScripts.TextChat.MessageStatus.Warning.ModerationTimeout", nil, "Roblox.MessageStatus.Warning.ModerationTimeout", any_join_result1_upvw_3.translator, any_join_result1_upvw_3.defaultSystemTextChannel)
			elseif arg1_59.Status == Enum.TextChatMessageStatus.Unknown then
				displaySystemMessage_upvr("CoreScripts.TextChat.MessageStatus.Warning.Unknown", nil, "Roblox.MessageStatus.Warning.Unknown", any_join_result1_upvw_3.translator, any_join_result1_upvw_3.defaultSystemTextChannel)
			end
			Analytics_upvr.FireClientAnalyticsWithEventName("MessageResponse", {
				messageStatus = arg1_59.Status.Name;
			})
		end)
	end
	local function _(arg1_60) -- Line 590, Named "watchTextChatCommand"
		--[[ Upvalues[1]:
			[1]: Analytics_upvr (copied, readonly)
		]]
		arg1_60.Triggered:Connect(function() -- Line 591
			--[[ Upvalues[2]:
				[1]: Analytics_upvr (copied, readonly)
				[2]: arg1_60 (readonly)
			]]
			Analytics_upvr.FireClientAnalyticsWithEventName("CommandSent", {
				commandName = arg1_60.Name;
			})
		end)
	end
	for _, v_3_upvr in pairs(TextChatService_upvr:GetDescendants()) do
		if v_3_upvr:IsA("TextChannel") then
			handleMessageReceived_upvr(v_3_upvr)
		elseif v_3_upvr:IsA("TextChatCommand") then
			v_3_upvr.Triggered:Connect(function() -- Line 591
				--[[ Upvalues[2]:
					[1]: Analytics_upvr (copied, readonly)
					[2]: v_3_upvr (readonly)
				]]
				Analytics_upvr.FireClientAnalyticsWithEventName("CommandSent", {
					commandName = v_3_upvr.Name;
				})
			end)
		end
	end
	TextChatService_upvr.DescendantAdded:Connect(function(arg1_61) -- Line 607
		--[[ Upvalues[2]:
			[1]: handleMessageReceived_upvr (readonly)
			[2]: Analytics_upvr (copied, readonly)
		]]
		if arg1_61:IsA("TextChannel") then
			handleMessageReceived_upvr(arg1_61)
		elseif arg1_61:IsA("TextChatCommand") then
			arg1_61.Triggered:Connect(function() -- Line 591
				--[[ Upvalues[2]:
					[1]: Analytics_upvr (copied, readonly)
					[2]: arg1_61 (readonly)
				]]
				Analytics_upvr.FireClientAnalyticsWithEventName("CommandSent", {
					commandName = arg1_61.Name;
				})
			end)
		end
	end)
	TextChatService_upvr.DescendantRemoving:Connect(function(arg1_62) -- Line 615
		--[[ Upvalues[2]:
			[1]: var77_result1_upvr_2 (readonly)
			[2]: TextChannelRemoved_upvr (copied, readonly)
		]]
		if arg1_62:IsA("TextChannel") then
			var77_result1_upvr_2:dispatch(TextChannelRemoved_upvr(arg1_62))
		end
	end)
	TextChatService_upvr.SendingMessage:Connect(function(arg1_63) -- Line 621
		--[[ Upvalues[10]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: LocalPlayer_3_upvr (readonly)
			[3]: handleChannelWelcomeMessage_upvr (copied, readonly)
			[4]: displaySystemMessage_upvr (copied, readonly)
			[5]: any_join_result1_upvw_3 (read and write)
			[6]: getFFlagExpChatMoveWhisperWelcome_upvr (copied, readonly)
			[7]: var77_result1_upvr_2 (readonly)
			[8]: OutgoingMessageSent_upvr (copied, readonly)
			[9]: Analytics_upvr (copied, readonly)
			[10]: countParticipantsInTextChannel_upvr (copied, readonly)
		]]
		any_new_result1_upvr:debug("Outgoing SendingMessage Status: {} Text: {}", arg1_63.Status.Name, arg1_63.Text)
		if LocalPlayer_3_upvr then
			local var99_result1_5 = handleChannelWelcomeMessage_upvr(arg1_63, LocalPlayer_3_upvr)
			if var99_result1_5 and var99_result1_5.key then
				local var433 = any_join_result1_upvw_3
				if getFFlagExpChatMoveWhisperWelcome_upvr() then
					var433 = arg1_63.TextChannel
				else
					var433 = any_join_result1_upvw_3.defaultSystemTextChannel
				end
				displaySystemMessage_upvr(var99_result1_5.key, var99_result1_5.args, var99_result1_5.metadata, var433.translator, var433)
			end
		end
		var77_result1_upvr_2:dispatch(OutgoingMessageSent_upvr(arg1_63))
		local TextChannel = arg1_63.TextChannel
		if TextChannel then
			Analytics_upvr.FireClientAnalyticsWithEventName("MessageSent", {
				channelName = TextChannel.Name;
				totalParticipants = countParticipantsInTextChannel_upvr(TextChannel);
			})
		end
	end)
	local function _(arg1_64) -- Line 649, Named "isInstanceALocalTextChannelParticipant"
		--[[ Upvalues[1]:
			[1]: Players_upvr (copied, readonly)
		]]
		local var436 = arg1_64
		if var436 then
			var436 = arg1_64:IsA("TextSource")
			if var436 then
				var436 = Players_upvr.LocalPlayer
				if var436 then
					if Players_upvr.LocalPlayer.UserId ~= arg1_64.UserId then
						var436 = false
					else
						var436 = true
					end
				end
			end
		end
		return var436
	end
	if getFFlagExpChatEnableChannelTabsUI_upvr() then
		local pairs_result1_3, pairs_result2, pairs_result3_5 = pairs(TextChatService_upvr:GetDescendants())
		for _, v_4_upvr in pairs_result1_3, pairs_result2, pairs_result3_5 do
			if v_4_upvr.Parent and v_4_upvr.Parent:IsA("TextChannel") then
				local var440 = v_4_upvr
				if var440 then
					var440 = v_4_upvr:IsA("TextSource")
					if var440 then
						var440 = Players_upvr.LocalPlayer
						if var440 then
							if Players_upvr.LocalPlayer.UserId ~= v_4_upvr.UserId then
								var440 = false
							else
								var440 = true
							end
						end
					end
				end
				if var440 then
					var77_result1_upvr_2:dispatch(LocalTextChannelParticipantAdded_upvr(v_4_upvr.Parent))
				end
			end
			if v_4_upvr:IsA("TextChannel") then
				v_4_upvr.DescendantRemoving:Connect(function(arg1_65) -- Line 667
					--[[ Upvalues[5]:
						[1]: Players_upvr (copied, readonly)
						[2]: getFFlagExpChatEnableChannelTabsUIFix_upvr (copied, readonly)
						[3]: var77_result1_upvr_2 (readonly)
						[4]: LocalTextChannelParticipantRemoved_upvr (copied, readonly)
						[5]: v_4_upvr (readonly)
					]]
					local var442 = arg1_65
					if var442 then
						var442 = arg1_65:IsA("TextSource")
						if var442 then
							var442 = Players_upvr.LocalPlayer
							if var442 then
								if Players_upvr.LocalPlayer.UserId ~= arg1_65.UserId then
									var442 = false
								else
									var442 = true
								end
							end
						end
					end
					if var442 then
						if getFFlagExpChatEnableChannelTabsUIFix_upvr() then
							var77_result1_upvr_2:dispatch(LocalTextChannelParticipantRemoved_upvr(v_4_upvr))
						end
					end
				end)
			end
		end
		function pairs_result3_5(arg1_66) -- Line 675
			--[[ Upvalues[5]:
				[1]: Players_upvr (copied, readonly)
				[2]: var77_result1_upvr_2 (readonly)
				[3]: LocalTextChannelParticipantAdded_upvr (copied, readonly)
				[4]: getFFlagExpChatEnableChannelTabsUIFix_upvr (copied, readonly)
				[5]: LocalTextChannelParticipantRemoved_upvr (copied, readonly)
			]]
			if arg1_66.Parent then
				if arg1_66.Parent:IsA("TextChannel") then
					local var444 = arg1_66
					if var444 then
						var444 = arg1_66:IsA("TextSource")
						if var444 then
							var444 = Players_upvr.LocalPlayer
							if var444 then
								if Players_upvr.LocalPlayer.UserId ~= arg1_66.UserId then
									var444 = false
								else
									var444 = true
								end
							end
						end
					end
					if var444 then
						var77_result1_upvr_2:dispatch(LocalTextChannelParticipantAdded_upvr(arg1_66.Parent))
					end
				end
			end
			if arg1_66:IsA("TextChannel") then
				arg1_66.DescendantRemoving:Connect(function(arg1_67) -- Line 685
					--[[ Upvalues[5]:
						[1]: Players_upvr (copied, readonly)
						[2]: getFFlagExpChatEnableChannelTabsUIFix_upvr (copied, readonly)
						[3]: var77_result1_upvr_2 (copied, readonly)
						[4]: LocalTextChannelParticipantRemoved_upvr (copied, readonly)
						[5]: arg1_66 (readonly)
					]]
					local var446 = arg1_67
					if var446 then
						var446 = arg1_67:IsA("TextSource")
						if var446 then
							var446 = Players_upvr.LocalPlayer
							if var446 then
								if Players_upvr.LocalPlayer.UserId ~= arg1_67.UserId then
									var446 = false
								else
									var446 = true
								end
							end
						end
					end
					if var446 then
						if getFFlagExpChatEnableChannelTabsUIFix_upvr() then
							var77_result1_upvr_2:dispatch(LocalTextChannelParticipantRemoved_upvr(arg1_66))
						end
					end
				end)
			end
		end
		TextChatService_upvr.DescendantAdded:Connect(pairs_result3_5)
	end
	local function runOnBubbleDisplayed_upvr(arg1_68, arg2, arg3) -- Line 694, Named "runOnBubbleDisplayed"
		--[[ Upvalues[4]:
			[1]: Players_upvr (copied, readonly)
			[2]: HttpService_upvr (copied, readonly)
			[3]: var77_result1_upvr_2 (readonly)
			[4]: IncomingBubbleChatMessageReceived_upvr (copied, readonly)
		]]
		local var447
		local var448
		if arg1_68:IsA("Model") then
			var447 = Players_upvr:GetPlayerFromCharacter(arg1_68)
		end
		local any_GenerateGUID_result1_2 = HttpService_upvr:GenerateGUID(false)
		local var450
		local var451
		if arg3 then
			any_GenerateGUID_result1_2 = arg3.MessageId
			var450 = arg3.BubbleChatMessageProperties
			var451 = arg3.Translation
		end
		var448 = workspace:GetServerTimeNow()
		local tbl_25 = {}
		tbl_25.message = arg2
		tbl_25.translation = var451
		tbl_25.bubbleChatMessageId = any_GenerateGUID_result1_2
		local function INLINED_7() -- Internal function, doesn't exist in bytecode
			var448 = tostring(var447.UserId)
			return var448
		end
		if not var447 or not INLINED_7() then
			var448 = nil
		end
		tbl_25.bubbleChatMessageUserId = var448
		tbl_25.partOrModel = arg1_68
		tbl_25.timestamp = DateTime.fromUnixTimestampMillis(var448 * 1000)
		tbl_25.bubbleChatMessageProperties = var450
		var448 = var77_result1_upvr_2:dispatch
		var448(IncomingBubbleChatMessageReceived_upvr(tbl_25))
	end
	Chat_upvr.Chatted:Connect(function(arg1_69, arg2) -- Line 723
		--[[ Upvalues[3]:
			[1]: TextChatService_upvr (copied, readonly)
			[2]: Chat_upvr (copied, readonly)
			[3]: runOnBubbleDisplayed_upvr (readonly)
		]]
		if TextChatService_upvr.ChatVersion ~= Enum.ChatVersion.LegacyChatService or Chat_upvr.BubbleChatEnabled then
			runOnBubbleDisplayed_upvr(arg1_69, arg2)
		end
	end)
	Chat_upvr:GetPropertyChangedSignal("BubbleChatEnabled"):Connect(function() -- Line 730
		--[[ Upvalues[3]:
			[1]: Chat_upvr (copied, readonly)
			[2]: var77_result1_upvr_2 (readonly)
			[3]: LegacyBubbleChatEnabledChanged_upvr (copied, readonly)
		]]
		var77_result1_upvr_2:dispatch(LegacyBubbleChatEnabledChanged_upvr("Enabled", Chat_upvr.BubbleChatEnabled))
	end)
	var77_result1_upvr_2:dispatch(LegacyBubbleChatEnabledChanged_upvr("Enabled", Chat_upvr.BubbleChatEnabled))
	Chat_upvr.BubbleChatSettingsChanged:Connect(function(arg1_70) -- Line 739
		--[[ Upvalues[3]:
			[1]: any_join_result1_upvw_3 (read and write)
			[2]: var77_result1_upvr_2 (readonly)
			[3]: LegacyBubbleChatSettingsChanged_upvr (copied, readonly)
		]]
		if any_join_result1_upvw_3.validateLegacyBubbleChatSettings then
			local any_validateLegacyBubbleChatSettings_result1, any_validateLegacyBubbleChatSettings_result2_2 = any_join_result1_upvw_3.validateLegacyBubbleChatSettings(arg1_70)
			assert(any_validateLegacyBubbleChatSettings_result1, "Bad settings object passed to Chat:SetBubbleChatSettings:\n inside consolidated BubbleChat "..(any_validateLegacyBubbleChatSettings_result2_2 or ""))
			var77_result1_upvr_2:dispatch(LegacyBubbleChatSettingsChanged_upvr(arg1_70))
		end
	end)
	if getEngineFeatureFlagEnableDisplayBubble_upvr() then
		TextChatService_upvr.BubbleDisplayed:Connect(function(arg1_71, arg2) -- Line 752
			--[[ Upvalues[1]:
				[1]: runOnBubbleDisplayed_upvr (readonly)
			]]
			local var459 = arg2
			if var459 then
				var459 = arg2.Text
			end
			runOnBubbleDisplayed_upvr(arg1_71, var459, arg2)
		end)
	end
	local function findCommandInstance_upvr(arg1_72) -- Line 757, Named "findCommandInstance"
		--[[ Upvalues[1]:
			[1]: TextChatService_upvr (copied, readonly)
		]]
		for _, v_5 in ipairs(TextChatService_upvr:GetDescendants()) do
			if v_5.Name == arg1_72 and v_5:IsA("TextChatCommand") then
				return v_5
			end
		end
		return nil
	end
	local tbl_16_upvr = {}
	local function setupTextChatCommands() -- Line 768
		--[[ Upvalues[8]:
			[1]: Commands_upvr (copied, readonly)
			[2]: findCommandInstance_upvr (readonly)
			[3]: getFFlagExpChatMigrationSetup_upvr (copied, readonly)
			[4]: tbl_16_upvr (readonly)
			[5]: var77_result1_upvr_2 (readonly)
			[6]: displaySystemMessage_upvr (copied, readonly)
			[7]: any_join_result1_upvw_3 (read and write)
			[8]: CommandAliasChanged_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local ipairs_result1_5, ipairs_result2_5, ipairs_result3_3 = ipairs(Commands_upvr.enabledCommands)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [70] 56. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [70] 56. Error Block 12 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 6. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [70.5]
		-- KONSTANTERROR: [7] 6. Error Block 2 end (CF ANALYSIS FAILED)
	end
	setupTextChatCommands()
	if getFFlagExpChatMigrationSetup_upvr() then
		Chat_upvr:GetPropertyChangedSignal("IsAutoMigrated"):Once(setupTextChatCommands)
	end
	if any_join_result1_upvw_3.canUserChatAsync and Players_upvr.LocalPlayer then
		Promise_upvr.try(function() -- Line 823
			--[[ Upvalues[2]:
				[1]: any_join_result1_upvw_3 (read and write)
				[2]: Players_upvr (copied, readonly)
			]]
			return any_join_result1_upvw_3.canUserChatAsync(Players_upvr.LocalPlayer.UserId)
		end):andThen(function(arg1_73) -- Line 826
			--[[ Upvalues[2]:
				[1]: var77_result1_upvr_2 (readonly)
				[2]: ChatPrivacySettingsReceived_upvr (copied, readonly)
			]]
			var77_result1_upvr_2:dispatch(ChatPrivacySettingsReceived_upvr(arg1_73))
		end):catch(function() -- Line 829
			--[[ Upvalues[2]:
				[1]: var77_result1_upvr_2 (readonly)
				[2]: ChatPrivacySettingsFetchFailed_upvr (copied, readonly)
			]]
			var77_result1_upvr_2:dispatch(ChatPrivacySettingsFetchFailed_upvr())
		end)
	end
	watchPlayersService_upvr(any_join_result1_upvw_3, var77_result1_upvr_2)
	local Constants_2 = UIBlox_upvr.App.Style.Constants
	local tbl_5 = {}
	local tbl_22 = {
		store = var77_result1_upvr_2;
	}
	var391 = any_join_result1_upvw_3.translator
	tbl_22.translator = var391
	if getFFlagExpChatEnableChannelTabsUI_upvr() then
		var391 = any_join_result1_upvw_3.gameTranslator
	else
		var391 = nil
	end
	tbl_22.gameTranslator = var391
	tbl_22.isChatWindowVisible = true
	tbl_22.isChatInputBarVisible = true
	tbl_22.isChannelBarVisible = false
	if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
	elseif game_DefineFastFlag_result1_upvr then
	elseif not GuiService_upvr:IsTenFootInterface() then
	end
	tbl_22.isDefaultChatEnabled = not VRService_upvr.VREnabled
	tbl_22.getIconVoiceIndicator = any_join_result1_upvw_3.getIconVoiceIndicator
	tbl_22.onClickedVoiceIndicator = any_join_result1_upvw_3.onClickedVoiceIndicator
	tbl_22.onClickedCameraIndicator = any_join_result1_upvw_3.onClickedCameraIndicator
	tbl_22.selfViewListenerChanged = any_join_result1_upvw_3.selfViewListenerChanged
	tbl_22.getPermissions = any_join_result1_upvw_3.getPermissions
	tbl_22.displayCameraDeniedToast = any_join_result1_upvw_3.displayCameraDeniedToast
	tbl_22.isCamEnabledForUserAndPlace = any_join_result1_upvw_3.isCamEnabledForUserAndPlace
	tbl_22.isCameraOnlyUser = any_join_result1_upvw_3.isCameraOnlyUser
	tbl_22.isVoiceServiceInitialized = any_join_result1_upvw_3.isVoiceServiceInitialized
	tbl_22.onClickedLikelySpeakingBubble = any_join_result1_upvw_3.onClickedLikelySpeakingBubble
	tbl_22.isSpatialUIEnabled = any_join_result1_upvw_3.isSpatialUIEnabled
	tbl_5.app = Roact_upvr.createElement(App_upvr, tbl_22)
	local tbl_41 = {}
	if Players_upvr.LocalPlayer then
	end
	tbl_41.team = Players_upvr.LocalPlayer.Team
	tbl_41.isChatCoreGuiEnabled = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.Chat)
	tbl_41.isTouchEnabled = UserInputService_upvr.TouchEnabled
	if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
	else
	end
	tbl_41.isGamepadConnected = nil
	var77_result1_upvr_2:dispatch(ClientAppLoaded_upvr(tbl_41))
	reportVersionLoaded_upvr(Analytics_upvr, Version_upvr[1])
	any_new_result1_upvr:trace("Roact.mount to {}", tostring(any_join_result1_upvw_3.parent))
	if getFFlagChatTranslationEnableSystemMessage_upvr() and getChatTranslationEnabled() then
		displaySystemMessage_upvr("CoreScripts.TextChat.ChatTranslation.ChatWindow.SystemMessageNew", nil, "Roblox.ChatTranslation.ChatWindow.SystemMessage", any_join_result1_upvw_3.translator, any_join_result1_upvw_3.defaultSystemTextChannel, "Roblox automatically translates supported languages in chat")
	end
	return {
		roactInstance = Roact_upvr.mount(Roact_upvr.createElement(UIBlox_upvr.App.Style.AppStyleProvider, {
			style = ({
				Dark = {
					themeName = Constants_2.ThemeName.Dark;
					fontName = Constants_2.FontName.Gotham;
				};
			}).Dark;
		}, tbl_5), any_join_result1_upvw_3.parent, "ExperienceChat");
	}
end