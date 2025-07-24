-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:07
-- Luau version 6, Types version 3
-- Time taken: 0.010437 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Roact = require(Parent.Roact)
local React_upvr = require(Parent.React)
local TenFootInterfaceExpChatExperimentation_upvr = require(Parent.SocialExperiments).TenFootInterfaceExpChatExperimentation
local Flags = ExpChat.Flags
local getFFlagUnreduxLastInputTypeChanged_upvr = require(Flags.getFFlagUnreduxLastInputTypeChanged)
local Cryo = Parent.Cryo
if getFFlagUnreduxLastInputTypeChanged_upvr() then
	Cryo = Roact.PureComponent
else
	Cryo = Roact.Component
end
local any_extend_result1 = Cryo:extend("ChatInputBarApp")
any_extend_result1.defaultProps = {
	addTopPadding = true;
	LayoutOrder = 1;
	onSendChat = nil;
	transparencyValue = Roact.createBinding(0.3);
}
if getFFlagUnreduxLastInputTypeChanged_upvr() then
	local getInputGroup_upvr = require(Parent.InputType).getInputGroup
	local InputType_upvr = require(Parent.InputType)
	function any_extend_result1.init(arg1) -- Line 51
		--[[ Upvalues[4]:
			[1]: UserInputService_upvr (readonly)
			[2]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
			[3]: getInputGroup_upvr (readonly)
			[4]: InputType_upvr (readonly)
		]]
		local tbl_2 = {}
		local TouchEnabled = UserInputService_upvr.TouchEnabled
		tbl_2.isUsingTouch = TouchEnabled
		if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
			TouchEnabled = UserInputService_upvr.GamepadConnected
		else
			TouchEnabled = nil
		end
		tbl_2.isUsingGamepad = TouchEnabled
		arg1:setState(tbl_2)
		arg1.connection = UserInputService_upvr.LastInputTypeChanged:Connect(function(arg1_2) -- Line 58
			--[[ Upvalues[3]:
				[1]: getInputGroup_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: InputType_upvr (copied, readonly)
			]]
			local var12_result1 = getInputGroup_upvr(arg1_2)
			local tbl = {}
			local var19
			if var12_result1 ~= InputType_upvr.InputTypeConstants.Touch then
				var19 = false
			else
				var19 = true
			end
			tbl.isUsingTouch = var19
			if var12_result1 ~= InputType_upvr.InputTypeConstants.Gamepad then
				var19 = false
			else
				var19 = true
			end
			tbl.isUsingGamepad = var19
			arg1:setState(tbl)
		end)
	end
	local function getPlaceholderText(arg1) -- Line 68
		if arg1.state.isUsingGamepad then
			return arg1.props.placeholderGamepadText
		end
		if arg1.state.isUsingTouch then
			return arg1.props.placeholderTouchText
		end
		return arg1.props.placeholderKeyboardText
	end
	any_extend_result1.getPlaceholderText = getPlaceholderText
	function any_extend_result1.willUnmount(arg1) -- Line 78
		if arg1.connection then
			arg1.connection:Disconnect()
		end
	end
else
	any_extend_result1.getPlaceholderText = function(arg1) -- Line 84, Named "getPlaceholderText"
		if arg1.props.isUsingGamepad then
			return arg1.props.placeholderGamepadText
		end
		if arg1.props.isUsingTouch then
			return arg1.props.placeholderTouchText
		end
		return arg1.props.placeholderKeyboardText
	end
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixChatInputBarPlaceholder", false)
local ChatInputBar_upvr = require(script.Parent.UI.ChatInputBar)
local Config_upvr = require(ExpChat.Config)
function any_extend_result1.render(arg1) -- Line 95
	--[[ Upvalues[7]:
		[1]: getFFlagUnreduxLastInputTypeChanged_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ChatInputBar_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: Config_upvr (readonly)
		[7]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
	]]
	local var23
	if getFFlagUnreduxLastInputTypeChanged_upvr() and game_DefineFastFlag_result1_upvr then
		var23 = arg1.state.isUsingTouch
	else
		var23 = arg1.props.isUsingTouch
	end
	local module_2 = {
		userInputService = UserInputService_upvr;
		contextActionService = game:GetService("ContextActionService");
		messageCharacterLimit = Config_upvr.MessageCharacterLimit;
		sendButtonContainerWidth = 30;
		addTopPadding = arg1.props.addTopPadding;
	}
	local LayoutOrder = arg1.props.LayoutOrder
	module_2.LayoutOrder = LayoutOrder
	if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
		LayoutOrder = arg1:getPlaceholderText()
	elseif var23 then
		LayoutOrder = arg1.props.placeholderTouchText
	else
		LayoutOrder = arg1.props.placeholderKeyboardText
	end
	module_2.placeholderText = LayoutOrder
	module_2.disabledChatPlaceholderText = arg1.props.disabledChatPlaceholderText
	module_2.size = UDim2.fromScale(1, 0)
	module_2.chatIntervention = arg1.props.chatIntervention
	module_2.onSendChat = arg1.props.onSendChat
	module_2.transparencyValue = arg1.props.transparencyValue
	module_2.canLocalUserChat = arg1.props.canLocalUserChat
	module_2.targetTextChannel = arg1.props.targetTextChannel
	module_2.localTeam = arg1.props.localTeam
	module_2.localPlayer = arg1.props.localPlayer
	module_2.defaultSystemTextChannel = arg1.props.defaultSystemTextChannel
	module_2.shouldFocusChatInputBar = arg1.props.shouldFocusChatInputBar
	module_2.resetTargetChannel = arg1.props.resetTargetChannel
	module_2.focusChatHotKeyActivated = arg1.props.focusChatHotKeyActivated
	module_2.devDefinedFocusKeyCode = arg1.props.devDefinedFocusKeyCode
	module_2.visible = arg1.props.visible
	module_2.onFocus = arg1.props.onFocus
	module_2.onUnfocus = arg1.props.onUnfocus
	module_2.onHovered = arg1.props.onHovered
	module_2.onUnhovered = arg1.props.onUnhovered
	module_2.onAbsoluteSizeChanged = arg1.props.onAbsoluteSizeChanged
	module_2.onAbsolutePositionChanged = arg1.props.onAbsolutePositionChanged
	module_2.chatWindowSettings = arg1.props.chatWindowSettings
	module_2.chatInputBarSettings = arg1.props.chatInputBarSettings
	module_2.isChatHotkeyEnabled = arg1.props.isChatHotkeyEnabled
	module_2.autocompleteDropdownReducer = arg1.props.autocompleteDropdownReducer
	module_2.autocompleteDropdownActivated = arg1.props.autocompleteDropdownActivated
	module_2.autocompleteDropdownResultsChanged = arg1.props.autocompleteDropdownResultsChanged
	module_2.autocompleteDropdownSelectionChanged = arg1.props.autocompleteDropdownSelectionChanged
	module_2.autocompleteDropdownTypeChanged = arg1.props.autocompleteDropdownTypeChanged
	module_2.autocompleteDropdownDeactivated = arg1.props.autocompleteDropdownDeactivated
	module_2.autocompleteEnabled = arg1.props.autocompleteEnabled
	module_2.isChannelBarVisible = arg1.props.isChannelBarVisible
	return React_upvr.createElement(ChatInputBar_upvr, module_2)
end
local Players_upvr = game:GetService("Players")
local GetTransparencyStore_upvr = require(ExpChat.Stores.GetTransparencyStore)
local FocusChatHotKeyActivated_upvr = require(ExpChat.Actions.FocusChatHotKeyActivated)
local GetFFlagUnreduxChatTransparency_upvr = require(Parent.SharedFlags).GetFFlagUnreduxChatTransparency
local UserInteraction_upvr = require(ExpChat.Actions.UserInteraction)
local AutocompleteDropdownActivated_upvr = require(ExpChat.Actions.AutocompleteDropdownActivated)
local AutocompleteDropdownResultsChanged_upvr = require(ExpChat.Actions.AutocompleteDropdownResultsChanged)
local AutocompleteDropdownSelectionChanged_upvr = require(ExpChat.Actions.AutocompleteDropdownSelectionChanged)
local AutocompleteDropdownTypeChanged_upvr = require(ExpChat.Actions.AutocompleteDropdownTypeChanged)
local AutocompleteDropdownDeactivated_upvr = require(ExpChat.Actions.AutocompleteDropdownDeactivated)
local var46_upvr = require(Parent.RoactRodux).connect(function(arg1) -- Line 145
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: getFFlagUnreduxLastInputTypeChanged_upvr (readonly)
	]]
	local module = {
		targetTextChannel = arg1.TextChannels.targetTextChannel;
		localPlayer = Players_upvr.LocalPlayer;
	}
	local LocalTeam = arg1.LocalTeam
	module.localTeam = LocalTeam
	if not getFFlagUnreduxLastInputTypeChanged_upvr() then
		LocalTeam = arg1.isUsingTouch
	else
		LocalTeam = nil
	end
	module.isUsingTouch = LocalTeam
	if not getFFlagUnreduxLastInputTypeChanged_upvr() then
		LocalTeam = arg1.isUsingGamepad
	else
		LocalTeam = nil
	end
	module.isUsingGamepad = LocalTeam
	LocalTeam = arg1.ChatLayout.ChatInputBarSettings.KeyboardKeyCode
	module.devDefinedFocusKeyCode = LocalTeam
	LocalTeam = arg1.TextChannels.allTextChannels.RBXSystem
	module.defaultSystemTextChannel = LocalTeam
	LocalTeam = arg1.shouldFocusChatInputBar
	module.shouldFocusChatInputBar = LocalTeam
	LocalTeam = arg1.ChatLayout.ChatInputBarSettings
	module.chatInputBarSettings = LocalTeam
	LocalTeam = arg1.ChatIntervention
	module.chatIntervention = LocalTeam
	LocalTeam = arg1.ChatVisibility.isChatHotkeyEnabled.value
	module.isChatHotkeyEnabled = LocalTeam
	LocalTeam = arg1.AutocompleteDropdown
	module.autocompleteDropdownReducer = LocalTeam
	LocalTeam = arg1.ChatLayout.ChatInputBarSettings.AutocompleteEnabled
	module.autocompleteEnabled = LocalTeam
	return module
end, function(arg1) -- Line 161
	--[[ Upvalues[9]:
		[1]: GetTransparencyStore_upvr (readonly)
		[2]: FocusChatHotKeyActivated_upvr (readonly)
		[3]: GetFFlagUnreduxChatTransparency_upvr (readonly)
		[4]: UserInteraction_upvr (readonly)
		[5]: AutocompleteDropdownActivated_upvr (readonly)
		[6]: AutocompleteDropdownResultsChanged_upvr (readonly)
		[7]: AutocompleteDropdownSelectionChanged_upvr (readonly)
		[8]: AutocompleteDropdownTypeChanged_upvr (readonly)
		[9]: AutocompleteDropdownDeactivated_upvr (readonly)
	]]
	local GetTransparencyStore_upvr_result1_upvr = GetTransparencyStore_upvr(false)
	return {
		focusChatHotKeyActivated = function() -- Line 164, Named "focusChatHotKeyActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: FocusChatHotKeyActivated_upvr (copied, readonly)
			]]
			return arg1(FocusChatHotKeyActivated_upvr())
		end;
		onFocus = function() -- Line 168, Named "onFocus"
			--[[ Upvalues[4]:
				[1]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
				[2]: GetTransparencyStore_upvr_result1_upvr (readonly)
				[3]: arg1 (readonly)
				[4]: UserInteraction_upvr (copied, readonly)
			]]
			if GetFFlagUnreduxChatTransparency_upvr() then
				return GetTransparencyStore_upvr_result1_upvr.setTextboxFocus()
			end
			return arg1(UserInteraction_upvr("focus"))
		end;
		onUnfocus = function() -- Line 174, Named "onUnfocus"
			--[[ Upvalues[4]:
				[1]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
				[2]: GetTransparencyStore_upvr_result1_upvr (readonly)
				[3]: arg1 (readonly)
				[4]: UserInteraction_upvr (copied, readonly)
			]]
			if GetFFlagUnreduxChatTransparency_upvr() then
				return GetTransparencyStore_upvr_result1_upvr.clearTextboxFocus()
			end
			return arg1(UserInteraction_upvr("unfocus"))
		end;
		onHovered = function() -- Line 180, Named "onHovered"
			--[[ Upvalues[4]:
				[1]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
				[2]: GetTransparencyStore_upvr_result1_upvr (readonly)
				[3]: arg1 (readonly)
				[4]: UserInteraction_upvr (copied, readonly)
			]]
			if GetFFlagUnreduxChatTransparency_upvr() then
				return GetTransparencyStore_upvr_result1_upvr.resetAllTransparency()
			end
			return arg1(UserInteraction_upvr("hover"))
		end;
		onUnhovered = function() -- Line 186, Named "onUnhovered"
			--[[ Upvalues[4]:
				[1]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
				[2]: GetTransparencyStore_upvr_result1_upvr (readonly)
				[3]: arg1 (readonly)
				[4]: UserInteraction_upvr (copied, readonly)
			]]
			if GetFFlagUnreduxChatTransparency_upvr() then
				return GetTransparencyStore_upvr_result1_upvr.resetAllTransparency()
			end
			return arg1(UserInteraction_upvr("unhover"))
		end;
		autocompleteDropdownActivated = function(arg1_3) -- Line 192, Named "autocompleteDropdownActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: AutocompleteDropdownActivated_upvr (copied, readonly)
			]]
			return arg1(AutocompleteDropdownActivated_upvr(arg1_3))
		end;
		autocompleteDropdownResultsChanged = function(arg1_4) -- Line 196, Named "autocompleteDropdownResultsChanged"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: AutocompleteDropdownResultsChanged_upvr (copied, readonly)
			]]
			return arg1(AutocompleteDropdownResultsChanged_upvr(arg1_4))
		end;
		autocompleteDropdownSelectionChanged = function(arg1_5) -- Line 200, Named "autocompleteDropdownSelectionChanged"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: AutocompleteDropdownSelectionChanged_upvr (copied, readonly)
			]]
			return arg1(AutocompleteDropdownSelectionChanged_upvr(arg1_5))
		end;
		autocompleteDropdownTypeChanged = function(arg1_6) -- Line 204, Named "autocompleteDropdownTypeChanged"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: AutocompleteDropdownTypeChanged_upvr (copied, readonly)
			]]
			return arg1(AutocompleteDropdownTypeChanged_upvr(arg1_6))
		end;
		autocompleteDropdownDeactivated = function() -- Line 208, Named "autocompleteDropdownDeactivated"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: AutocompleteDropdownDeactivated_upvr (copied, readonly)
			]]
			return arg1(AutocompleteDropdownDeactivated_upvr())
		end;
	}
end)(require(ExpChat.Localization).connect(function(arg1) -- Line 212
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	return {
		placeholderKeyboardText = {"CoreScripts.TextChat.InputBar.Hint.MouseKeyboard", {
			KEY = UserInputService_upvr:GetStringForKeyCode(arg1.devDefinedFocusKeyCode);
		}};
		placeholderTouchText = "CoreScripts.TextChat.InputBar.Hint.Touch";
		disabledChatPlaceholderText = "CoreScripts.TextChat.InputBar.Hint.PrivacySettingsDisabled";
	}
end)(any_extend_result1))
if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
	local Localization_upvr = require(Parent.InExperienceLocales).Localization
	local LocalizationService_upvr = game:GetService("LocalizationService")
	local FFlagUpdateChatInputBarLocalization_upvr = require(Flags.FFlagUpdateChatInputBarLocalization)
	local Cryo_2_upvr = require(Cryo)
	return function(arg1) -- Line 225
		--[[ Upvalues[6]:
			[1]: Localization_upvr (readonly)
			[2]: LocalizationService_upvr (readonly)
			[3]: FFlagUpdateChatInputBarLocalization_upvr (readonly)
			[4]: Cryo_2_upvr (readonly)
			[5]: React_upvr (readonly)
			[6]: var46_upvr (readonly)
		]]
		local any_new_result1 = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId)
		local var53
		if FFlagUpdateChatInputBarLocalization_upvr then
			var53 = any_new_result1:Format("CoreScripts.TextChat.InputBar.Hint.GamepadConnected", {
				CONFIRM_KEY = any_new_result1:Format("CoreScripts.TextChat.InputBar.Hint.GamepadConnectedConfirm");
			})
		else
			var53 = any_new_result1:Format("CoreScripts.TextChat.InputBar.Hint.Gamepad", {
				CHAT_BUTTON = any_new_result1:Format("CoreScripts.TopBar.Chat");
			})
		end
		return React_upvr.createElement(var46_upvr, Cryo_2_upvr.Dictionary.join(arg1, {
			placeholderGamepadText = var53;
		}))
	end
end
if game:DefineFastFlag("MemoizeChatInputApp", false) then
	return React_upvr.memo(var46_upvr)
end
return var46_upvr