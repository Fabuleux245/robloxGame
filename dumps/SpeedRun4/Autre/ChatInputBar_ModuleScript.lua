-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:11
-- Luau version 6, Types version 3
-- Time taken: 0.032474 seconds

local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local React_upvr = require(Parent.React)
local ExpChatShared = require(Parent.ExpChatShared)
local UIBlox = require(Parent.UIBlox)
local AutocompleteText_upvr = require(ExpChat.Autocomplete.AutocompleteText)
local getFFlagEnableChatWindowMemoization_upvr = require(ExpChat.Flags.getFFlagEnableChatWindowMemoization)
local FFlagConsoleChatOnExpControls_upvr = require(Parent.SharedFlags).FFlagConsoleChatOnExpControls
local FFlagChromeChatGamepadSupportFix_upvr = require(Parent.SharedFlags).FFlagChromeChatGamepadSupportFix
local game_DefineFastFlag_result1_upvr_4 = game:DefineFastFlag("InitializeAutocompleteOnlyIfEnabledV2", false)
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("ChatSignalsDisconnectFix3", false)
local ActionBindableEvent_upvr = ExpChatShared.ActionBindableEvent
local function setTransparency_upvr(arg1, arg2) -- Line 74, Named "setTransparency"
	return arg2:map(function(arg1_2) -- Line 75
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1 + arg1_2 * (1 - arg1)
	end)
end
local function _(arg1) -- Line 81, Named "checkIsTimeoutInEffect"
	if arg1 and arg1.isEnforced then
		local ceiled = math.ceil((arg1.endTimestamp - DateTime.now().UnixTimestamp) / 60)
		local isEnforced = arg1.isEnforced
		if isEnforced then
			if 0 >= ceiled then
				isEnforced = false
			else
				isEnforced = true
			end
		end
		return isEnforced, ceiled
	end
	return false, 0
end
local var18_upvw
local var19_upvw
if getFFlagEnableChatWindowMemoization_upvr() then
	if game_DefineFastFlag_result1_upvr_4 then
		if require(ExpChat.Flags.getEnableChatInputBarConfigurationAutocompleteEnabled)() then
			var18_upvw = AutocompleteText_upvr.new(require(ExpChat.Autocomplete.Initializations.initializeEmojis))
			var19_upvw = AutocompleteText_upvr.new(require(ExpChat.Autocomplete.Initializations.initializeCommands))
			-- KONSTANTWARNING: GOTO [370] #230
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var18_upvw = AutocompleteText_upvr.new(require(ExpChat.Autocomplete.Initializations.initializeEmojis))
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var19_upvw = AutocompleteText_upvr.new(require(ExpChat.Autocomplete.Initializations.initializeCommands))
	end
end
local function onChatInputBarFocusLost_upvr(arg1, arg2, arg3) -- Line 103, Named "onChatInputBarFocusLost"
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr_3 (readonly)
	]]
	local var22_upvr = arg2 or {Enum.KeyCode.ButtonB}
	local var23_upvw
	var23_upvw = UserInputService_upvr.InputBegan:Connect(function(arg1_3) -- Line 107
		--[[ Upvalues[6]:
			[1]: var22_upvr (readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: arg3 (readonly)
			[4]: arg1 (readonly)
			[5]: var23_upvw (read and write)
			[6]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 32. Error Block 10 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 32. Error Block 10 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
	end)
	return var23_upvw
end
local FFlagConsoleChatUseChromeFocusUtils_upvr = require(Parent.SharedFlags).FFlagConsoleChatUseChromeFocusUtils
local Signals_upvr = require(Parent.Signals)
local var26_upvr = require(ExpChat.Stores.GetFocusNavigationStore)(false)
local FocusUtils_upvr = require(Parent.Chrome).FocusUtils
local function useEffectChatInputBarFocus_upvr(arg1, arg2, arg3, arg4) -- Line 133, Named "useEffectChatInputBarFocus"
	--[[ Upvalues[12]:
		[1]: FFlagConsoleChatUseChromeFocusUtils_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Signals_upvr (readonly)
		[4]: var26_upvr (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[7]: UserInputService_upvr (readonly)
		[8]: FocusUtils_upvr (readonly)
		[9]: FFlagChromeChatGamepadSupportFix_upvr (readonly)
		[10]: FFlagConsoleChatOnExpControls_upvr (readonly)
		[11]: onChatInputBarFocusLost_upvr (readonly)
		[12]: ActionBindableEvent_upvr (readonly)
	]]
	if FFlagConsoleChatUseChromeFocusUtils_upvr then
		React_upvr.useEffect(function() -- Line 135
			--[[ Upvalues[10]:
				[1]: Signals_upvr (copied, readonly)
				[2]: var26_upvr (copied, readonly)
				[3]: arg2 (readonly)
				[4]: arg1 (readonly)
				[5]: GuiService_upvr (copied, readonly)
				[6]: arg3 (readonly)
				[7]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
				[8]: UserInputService_upvr (copied, readonly)
				[9]: FocusUtils_upvr (copied, readonly)
				[10]: arg4 (readonly)
			]]
			local tbl_3_upvr = {
				[Enum.KeyCode.DPadUp] = true;
			}
			local var30_upvw
			local any_createEffect_result1_upvr = Signals_upvr.createEffect(function(arg1_4) -- Line 141
				--[[ Upvalues[11]:
					[1]: var26_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: GuiService_upvr (copied, readonly)
					[5]: arg3 (copied, readonly)
					[6]: var30_upvw (read and write)
					[7]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
					[8]: UserInputService_upvr (copied, readonly)
					[9]: tbl_3_upvr (readonly)
					[10]: FocusUtils_upvr (copied, readonly)
					[11]: arg4 (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
				local var32 = arg1_4
				if arg2.current then
					var32 = arg2.current
				else
					var32 = arg1.current
				end
				-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [17] 14. Error Block 6 start (CF ANALYSIS FAILED)
				do
					return
				end
				-- KONSTANTERROR: [17] 14. Error Block 6 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [18] 15. Error Block 7 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [18] 15. Error Block 7 end (CF ANALYSIS FAILED)
			end)
			if game_DefineFastFlag_result1_upvr_3 then
				return function() -- Line 180
					--[[ Upvalues[2]:
						[1]: any_createEffect_result1_upvr (readonly)
						[2]: var30_upvw (read and write)
					]]
					any_createEffect_result1_upvr()
					if var30_upvw then
						var30_upvw:Disconnect()
						var30_upvw = nil
					end
				end
			end
			return any_createEffect_result1_upvr
		end, {})
	elseif FFlagChromeChatGamepadSupportFix_upvr then
		React_upvr.useEffect(function() -- Line 193
			--[[ Upvalues[9]:
				[1]: arg2 (readonly)
				[2]: arg1 (readonly)
				[3]: FFlagConsoleChatOnExpControls_upvr (copied, readonly)
				[4]: GuiService_upvr (copied, readonly)
				[5]: arg3 (readonly)
				[6]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
				[7]: onChatInputBarFocusLost_upvr (copied, readonly)
				[8]: arg4 (readonly)
				[9]: ActionBindableEvent_upvr (copied, readonly)
			]]
			local var36_upvw
			local var37_upvw
			local any_Connect_result1_upvr_3 = ActionBindableEvent_upvr.Event:Connect(function(arg1_5) -- Line 197
				--[[ Upvalues[10]:
					[1]: arg2 (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: FFlagConsoleChatOnExpControls_upvr (copied, readonly)
					[4]: GuiService_upvr (copied, readonly)
					[5]: arg3 (copied, readonly)
					[6]: var37_upvw (read and write)
					[7]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
					[8]: var36_upvw (read and write)
					[9]: onChatInputBarFocusLost_upvr (copied, readonly)
					[10]: arg4 (copied, readonly)
				]]
				local var39
				if arg2.current then
					var39 = arg2.current
				else
					var39 = arg1.current
				end
				if FFlagConsoleChatOnExpControls_upvr and arg1_5.type == "ChatTopBarFocusSelect" and var39 then
					GuiService_upvr:SetMenuIsOpen(true, "ExperienceChat")
					arg3()
					GuiService_upvr.SelectedCoreObject = var39
					var37_upvw = task.delay(0, function() -- Line 209
						--[[ Upvalues[6]:
							[1]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
							[2]: var37_upvw (copied, read and write)
							[3]: var36_upvw (copied, read and write)
							[4]: onChatInputBarFocusLost_upvr (copied, readonly)
							[5]: arg1_5 (readonly)
							[6]: arg4 (copied, readonly)
						]]
						if game_DefineFastFlag_result1_upvr_3 then
							var37_upvw = nil
							if var36_upvw then
								var36_upvw:Disconnect()
							end
						end
						var36_upvw = onChatInputBarFocusLost_upvr(arg1_5.onSelectionLost, arg1_5.keybinds, arg4)
					end)
				end
			end)
			return function() -- Line 225
				--[[ Upvalues[4]:
					[1]: any_Connect_result1_upvr_3 (readonly)
					[2]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
					[3]: var37_upvw (read and write)
					[4]: var36_upvw (read and write)
				]]
				any_Connect_result1_upvr_3:disconnect()
				if game_DefineFastFlag_result1_upvr_3 then
					if var37_upvw then
						task.cancel(var37_upvw)
						var37_upvw = nil
					end
					if var36_upvw then
						var36_upvw:Disconnect()
						var36_upvw = nil
					end
				end
			end
		end, {arg1.current, arg2.current})
	end
end
local function _(arg1, arg2, arg3) -- Line 243, Named "updateEmptyInputState"
	if #arg1 == 0 then
		arg3(true)
	elseif 0 < #arg1 and arg2 then
		arg3(false)
	end
end
local getFFlagChatInputBarOptimizeTyping_upvr = require(ExpChat.Flags.getFFlagChatInputBarOptimizeTyping)
local getEnableChatInputBarConfigurationAutocompleteEnabled_upvr = require(ExpChat.Flags.getEnableChatInputBarConfigurationAutocompleteEnabled)
local initializeEmojis_upvr = require(ExpChat.Autocomplete.Initializations.initializeEmojis)
local initializeCommands_upvr = require(ExpChat.Autocomplete.Initializations.initializeCommands)
local TextChatService_upvr = game:GetService("TextChatService")
local getTextChatServiceTextChatCommandAutocompleteVisible_upvr = require(ExpChat.Flags.getTextChatServiceTextChatCommandAutocompleteVisible)
local any_new_result1_upvr = ExpChatShared.Logger:new("ExpChat/"..script.Name)
local GetFFlagChatTimeoutModernChatSpecificImpl_upvr = require(Parent.SharedFlags).GetFFlagChatTimeoutModernChatSpecificImpl
local NotificationModalsManager_upvr = require(Parent.NotificationModalsManager)
local Images_upvr = UIBlox.App.ImageSet.Images
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ExpChatUseUpdatedChannelBarVisible", false)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local Config_upvr = require(ExpChat.Config)
local Players_upvr = game:GetService("Players")
local TenFootInterfaceExpChatExperimentation_upvr = require(Parent.SocialExperiments).TenFootInterfaceExpChatExperimentation
local sortCommandResultsCallback_upvr = require(ExpChat.Autocomplete.SortingCallbacks.sortCommandResultsCallback)
local sortEmojiResultsCallback_upvr = require(ExpChat.Autocomplete.SortingCallbacks.sortEmojiResultsCallback)
local List_upvr = require(Parent.llama).List
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("ChatOptimizeCommandProcessing", false)
local autoCastCommand_upvr = ExpChatShared.Commands.autoCastCommand
local RBXTeamCommand_upvr = ExpChatShared.Commands.RBXTeamCommand
local RBXWhisperCommand_upvr = ExpChatShared.Commands.Whisper.RBXWhisperCommand
local Promise_upvr = require(Parent.Promise)
local FFlagEnableFocusNavigation_upvr = require(ExpChat.Flags.FFlagEnableFocusNavigation)
local useCursor_upvr = UIBlox.App.SelectionCursor.useCursor
local useInterpolatedClientSettings_upvr = require(ExpChat.ClientSettings.useInterpolatedClientSettings)
local getFFlagChatWindowGetSpatialUiContextFromProps_upvr = require(ExpChat.Flags.getFFlagChatWindowGetSpatialUiContextFromProps)
local SpatialUI_upvr = require(ExpChat.SpatialUI)
local AutocompleteDropdown_upvr = require(script:FindFirstAncestor("ChatInput").UI.AutocompleteDropdown)
local ChannelChip_upvr = require(script.Parent.ChannelChip)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local getOtherDisplayNameInWhisperChannel_upvr = require(ExpChat.getOtherDisplayNameInWhisperChannel)
local function ChatInputBar(arg1) -- Line 1302
	--[[ Upvalues[1]:
		[1]: getOtherDisplayNameInWhisperChannel_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 34. Error Block 11 start (CF ANALYSIS FAILED)
	do
		return {
			targetTextChannelDisplayName = nil;
		}
	end
	-- KONSTANTERROR: [48] 34. Error Block 11 end (CF ANALYSIS FAILED)
end
function ChatInputBar(arg1) -- Line 251
	--[[ Upvalues[45]:
		[1]: React_upvr (readonly)
		[2]: getFFlagChatInputBarOptimizeTyping_upvr (readonly)
		[3]: getFFlagEnableChatWindowMemoization_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[5]: getEnableChatInputBarConfigurationAutocompleteEnabled_upvr (readonly)
		[6]: var18_upvw (read and write)
		[7]: AutocompleteText_upvr (readonly)
		[8]: initializeEmojis_upvr (readonly)
		[9]: var19_upvw (read and write)
		[10]: initializeCommands_upvr (readonly)
		[11]: TextChatService_upvr (readonly)
		[12]: getTextChatServiceTextChatCommandAutocompleteVisible_upvr (readonly)
		[13]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[14]: any_new_result1_upvr (readonly)
		[15]: GetFFlagChatTimeoutModernChatSpecificImpl_upvr (readonly)
		[16]: NotificationModalsManager_upvr (readonly)
		[17]: Images_upvr (readonly)
		[18]: game_DefineFastFlag_result1_upvr (readonly)
		[19]: dependencyArray_upvr (readonly)
		[20]: Config_upvr (readonly)
		[21]: Players_upvr (readonly)
		[22]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
		[23]: FFlagConsoleChatOnExpControls_upvr (readonly)
		[24]: FFlagChromeChatGamepadSupportFix_upvr (readonly)
		[25]: GuiService_upvr (readonly)
		[26]: onChatInputBarFocusLost_upvr (readonly)
		[27]: ActionBindableEvent_upvr (readonly)
		[28]: useEffectChatInputBarFocus_upvr (readonly)
		[29]: sortCommandResultsCallback_upvr (readonly)
		[30]: sortEmojiResultsCallback_upvr (readonly)
		[31]: List_upvr (readonly)
		[32]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[33]: autoCastCommand_upvr (readonly)
		[34]: RBXTeamCommand_upvr (readonly)
		[35]: RBXWhisperCommand_upvr (readonly)
		[36]: Promise_upvr (readonly)
		[37]: FFlagEnableFocusNavigation_upvr (readonly)
		[38]: useCursor_upvr (readonly)
		[39]: useInterpolatedClientSettings_upvr (readonly)
		[40]: getFFlagChatWindowGetSpatialUiContextFromProps_upvr (readonly)
		[41]: SpatialUI_upvr (readonly)
		[42]: AutocompleteDropdown_upvr (readonly)
		[43]: setTransparency_upvr (readonly)
		[44]: ChannelChip_upvr (readonly)
		[45]: ImageSetLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 204 start (CF ANALYSIS FAILED)
	local var75_upvw
	local var76_upvw
	local var77_upvw
	local var78_upvw
	local var79_upvw
	local var80_upvw
	local var81_upvw
	local var82_upvw
	local var83_upvw
	local var164_upvr
	if getFFlagChatInputBarOptimizeTyping_upvr() then
		var75_upvw = React_upvr.useRef("")
		var76_upvw = React_upvr.useRef(0)
		var77_upvw = React_upvr.useRef(0)
	else
		local any_useState_result1_3, any_useState_result2 = React_upvr.useState("")
		var78_upvw = any_useState_result1_3
		var79_upvw = any_useState_result2
		local any_useState_result1, any_useState_result2_4 = React_upvr.useState(0)
		var80_upvw = any_useState_result1
		var81_upvw = any_useState_result2_4
		local any_useState_result1_4, any_useState_result2_3 = React_upvr.useState(0)
		var82_upvw = any_useState_result1_4
		var83_upvw = any_useState_result2_3
	end
	local _, any_useState_result2_2_upvr = React_upvr.useState(false)
	local any_useState_result1_2_upvr, any_useState_result2_upvr = React_upvr.useState(true)
	local _, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	local any_useRef_result1_upvr_3 = React_upvr.useRef(false)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_8 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_5 = React_upvr.useRef(false)
	local any_useRef_result1_upvr_4 = React_upvr.useRef(false)
	if not getFFlagEnableChatWindowMemoization_upvr() then
		if game_DefineFastFlag_result1_upvr_4 then
			if getEnableChatInputBarConfigurationAutocompleteEnabled_upvr() then
				var18_upvw = AutocompleteText_upvr.new(initializeEmojis_upvr)
				var19_upvw = AutocompleteText_upvr.new(initializeCommands_upvr)
				-- KONSTANTWARNING: GOTO [145] #124
			end
		else
			var18_upvw = AutocompleteText_upvr.new(initializeEmojis_upvr)
			var19_upvw = AutocompleteText_upvr.new(initializeCommands_upvr)
		end
	end
	local tbl_5 = {}
	if arg1.chatInputBarSettings.TextBox ~= nil then
		var164_upvr = arg1.chatInputBarSettings.TextBox
	else
		var164_upvr = "nil"
	end
	tbl_5[1] = var164_upvr
	React_upvr.useEffect(function() -- Line 305
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr_8 (readonly)
			[2]: arg1 (readonly)
		]]
		any_useRef_result1_upvr_8.current = arg1.chatInputBarSettings.TextBox
	end, tbl_5)
	React_upvr.useEffect(function() -- Line 310
		--[[ Upvalues[8]:
			[1]: game_DefineFastFlag_result1_upvr_4 (copied, readonly)
			[2]: arg1 (readonly)
			[3]: TextChatService_upvr (copied, readonly)
			[4]: var19_upvw (copied, read and write)
			[5]: AutocompleteText_upvr (copied, readonly)
			[6]: initializeCommands_upvr (copied, readonly)
			[7]: getTextChatServiceTextChatCommandAutocompleteVisible_upvr (copied, readonly)
			[8]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
		]]
		if game_DefineFastFlag_result1_upvr_4 then
			if not arg1.autocompleteEnabled then return end
		end
		local tbl_4_upvr = {}
		if game_DefineFastFlag_result1_upvr_3 then
			local any_Connect_result1_upvr_2 = TextChatService_upvr.ChildAdded:Connect(function(arg1_6) -- Line 315
				--[[ Upvalues[6]:
					[1]: var19_upvw (copied, read and write)
					[2]: AutocompleteText_upvr (copied, readonly)
					[3]: initializeCommands_upvr (copied, readonly)
					[4]: getTextChatServiceTextChatCommandAutocompleteVisible_upvr (copied, readonly)
					[5]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
					[6]: tbl_4_upvr (readonly)
				]]
				if arg1_6.ClassName == "TextChatCommand" then
					if string.sub(arg1_6.PrimaryAlias, 1, 1) == '/' then
						var19_upvw = AutocompleteText_upvr.new(initializeCommands_upvr)
						if getTextChatServiceTextChatCommandAutocompleteVisible_upvr() then
							if game_DefineFastFlag_result1_upvr_3 then
								table.insert(tbl_4_upvr, arg1_6:GetPropertyChangedSignal("AutocompleteVisible"):Connect(function() -- Line 322
									--[[ Upvalues[3]:
										[1]: var19_upvw (copied, read and write)
										[2]: AutocompleteText_upvr (copied, readonly)
										[3]: initializeCommands_upvr (copied, readonly)
									]]
									var19_upvw = AutocompleteText_upvr.new(initializeCommands_upvr)
								end))
							end
						end
					end
				end
			end)
			return function() -- Line 333
				--[[ Upvalues[2]:
					[1]: any_Connect_result1_upvr_2 (readonly)
					[2]: tbl_4_upvr (readonly)
				]]
				any_Connect_result1_upvr_2:Disconnect()
				for _, v in ipairs(tbl_4_upvr) do
					v:Disconnect()
				end
				table.clear(tbl_4_upvr)
			end
		end
	end, {})
	local tbl = {}
	var164_upvr = var78_upvw
	tbl[1] = var164_upvr
	tbl[2] = any_useRef_result1_upvr_8.current
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_7) -- Line 411
		--[[ Upvalues[12]:
			[1]: arg1 (readonly)
			[2]: any_useRef_result1_upvr_8 (readonly)
			[3]: any_useRef_result1_upvr (readonly)
			[4]: getFFlagChatInputBarOptimizeTyping_upvr (copied, readonly)
			[5]: var76_upvw (read and write)
			[6]: var80_upvw (read and write)
			[7]: var75_upvw (read and write)
			[8]: any_useState_result1_2_upvr (readonly)
			[9]: any_useState_result2_upvr (readonly)
			[10]: var79_upvw (read and write)
			[11]: any_useRef_result1_upvr_3 (readonly)
			[12]: any_new_result1_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		arg1.autocompleteDropdownActivated(false)
		local autocompleteDropdownResultsChanged = arg1.autocompleteDropdownResultsChanged
		autocompleteDropdownResultsChanged({})
		if any_useRef_result1_upvr_8.current then
			autocompleteDropdownResultsChanged = any_useRef_result1_upvr_8.current
		else
			autocompleteDropdownResultsChanged = any_useRef_result1_upvr.current
		end
		if autocompleteDropdownResultsChanged then
			local Text = autocompleteDropdownResultsChanged.Text
			if getFFlagChatInputBarOptimizeTyping_upvr() then
			else
			end
			local var130 = var80_upvw - 1
			if getFFlagChatInputBarOptimizeTyping_upvr() then
			else
			end
			local string_sub_result1_2 = string.sub(Text, var80_upvw, #Text)
			if arg1.autocompleteDropdownReducer.autocompleteType == "emojis" then
			elseif arg1.autocompleteDropdownReducer.autocompleteType == "commands" then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			if string_sub_result1_2 ~= "" then
				local var132 = string.gsub(string.sub(Text, 1, var130), "(/.*)", arg1_7.TextLabel.Text)..string_sub_result1_2
			end
			autocompleteDropdownResultsChanged.Text = var132
			if getFFlagChatInputBarOptimizeTyping_upvr() then
				var75_upvw.current = var132
				local current_3 = var75_upvw.current
				if #current_3 == 0 then
					any_useState_result2_upvr(true)
				elseif 0 < #current_3 and any_useState_result1_2_upvr then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					any_useState_result2_upvr(false)
					-- KONSTANTWARNING: GOTO [131] #101
				end
			else
				var79_upvw(var132)
			end
			if any_useRef_result1_upvr_3.current then
				autocompleteDropdownResultsChanged:CaptureFocus()
				if string_sub_result1_2 ~= "" then
					autocompleteDropdownResultsChanged.CursorPosition = #var132 - #string_sub_result1_2 + 1
				end
			end
			arg1.autocompleteDropdownDeactivated()
		else
			any_new_result1_upvr:error("Could not find textBox")
		end
	end)
	var164_upvr = React_upvr
	function var164_upvr() -- Line 469
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr_3 (readonly)
			[2]: any_useRef_result1_upvr_8 (readonly)
			[3]: any_useRef_result1_upvr (readonly)
			[4]: any_new_result1_upvr (copied, readonly)
		]]
		local current = any_useRef_result1_upvr_3.current
		if current then
			if any_useRef_result1_upvr_8.current then
				current = any_useRef_result1_upvr_8.current
			else
				current = any_useRef_result1_upvr.current
			end
			if current then
				current:CaptureFocus()
				return
			end
			any_new_result1_upvr:error("Could not focus chat input bar because textBox not found")
		end
	end
	var164_upvr.useEffect(var164_upvr, {arg1.shouldFocusChatInputBar, any_useRef_result1_upvr_8.current})
	var164_upvr = React_upvr
	function var164_upvr() -- Line 480
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr_3 (readonly)
		]]
		any_new_result1_upvr:trace("Mounted")
		any_useRef_result1_upvr_3.current = true
		return function() -- Line 484
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: any_useRef_result1_upvr_3 (copied, readonly)
			]]
			any_new_result1_upvr:trace("Unmounting")
			any_useRef_result1_upvr_3.current = false
		end
	end
	var164_upvr.useEffect(var164_upvr, {})
	var164_upvr = React_upvr
	function var164_upvr() -- Line 490
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: any_useRef_result1_upvr_8 (readonly)
			[3]: any_useRef_result1_upvr (readonly)
			[4]: getFFlagChatInputBarOptimizeTyping_upvr (copied, readonly)
			[5]: var76_upvw (read and write)
			[6]: var81_upvw (read and write)
			[7]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
		]]
		local var141_upvw
		local autocompleteEnabled_upvr = arg1.autocompleteEnabled
		if autocompleteEnabled_upvr then
			if any_useRef_result1_upvr_8.current then
				autocompleteEnabled_upvr = any_useRef_result1_upvr_8.current
			else
				autocompleteEnabled_upvr = any_useRef_result1_upvr.current
			end
			if autocompleteEnabled_upvr then
				var141_upvw = autocompleteEnabled_upvr:GetPropertyChangedSignal("CursorPosition"):Connect(function() -- Line 495
					--[[ Upvalues[4]:
						[1]: autocompleteEnabled_upvr (readonly)
						[2]: getFFlagChatInputBarOptimizeTyping_upvr (copied, readonly)
						[3]: var76_upvw (copied, read and write)
						[4]: var81_upvw (copied, read and write)
					]]
					local CursorPosition = autocompleteEnabled_upvr.CursorPosition
					if CursorPosition and CursorPosition ~= -1 then
						if getFFlagChatInputBarOptimizeTyping_upvr() then
							var76_upvw.current = CursorPosition
							return
						end
						var81_upvw(CursorPosition)
					end
				end)
			end
		end
		if game_DefineFastFlag_result1_upvr_3 then
			return function() -- Line 509
				--[[ Upvalues[1]:
					[1]: var141_upvw (read and write)
				]]
				if var141_upvw then
					var141_upvw:Disconnect()
				end
			end
		end
	end
	var164_upvr.useEffect(var164_upvr, {any_useRef_result1_upvr_8.current})
	var164_upvr = React_upvr
	local any_useRef_result1_upvr_7 = React_upvr.useRef(nil)
	function var164_upvr() -- Line 520
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useRef_result1_upvr_7 (readonly)
		]]
		if arg1.autocompleteEnabled then
			any_useRef_result1_upvr_7.current = arg1.userInputService.InputBegan:connect(function(arg1_8, arg2) -- Line 522
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				local activated = arg1.autocompleteDropdownReducer.activated
				if activated then
					activated = Enum.KeyCode.Up
					if not activated then
						activated = Enum.KeyCode.Down
					end
				end
				if activated then
					if arg1_8.KeyCode == Enum.KeyCode.Up and 1 < arg1.autocompleteDropdownReducer.selectedIndex then
						arg1.autocompleteDropdownSelectionChanged(arg1.autocompleteDropdownReducer.selectedIndex - 1)
					end
					if arg1_8.KeyCode == Enum.KeyCode.Down and arg1.autocompleteDropdownReducer.selectedIndex < #arg1.autocompleteDropdownReducer.results then
						arg1.autocompleteDropdownSelectionChanged(arg1.autocompleteDropdownReducer.selectedIndex + 1)
					end
				end
			end)
			return function() -- Line 539
				--[[ Upvalues[1]:
					[1]: any_useRef_result1_upvr_7 (copied, readonly)
				]]
				local current_5 = any_useRef_result1_upvr_7.current
				if current_5 and current_5.Connected then
					current_5:Disconnect()
				end
				any_useRef_result1_upvr_7.current = nil
			end
		end
		return function() -- Line 547
		end
	end
	var164_upvr.useEffect(var164_upvr, {arg1.userInputService, arg1.autocompleteDropdownReducer})
	var164_upvr = React_upvr
	local any_useRef_result1_upvr_9 = React_upvr.useRef(nil)
	function var164_upvr() -- Line 552
		--[[ Upvalues[9]:
			[1]: any_useRef_result1_upvr_9 (readonly)
			[2]: arg1 (readonly)
			[3]: any_useRef_result1_upvr_8 (readonly)
			[4]: any_useRef_result1_upvr (readonly)
			[5]: any_useRef_result1_upvr_5 (readonly)
			[6]: any_new_result1_upvr (copied, readonly)
			[7]: getFFlagChatInputBarOptimizeTyping_upvr (copied, readonly)
			[8]: var75_upvw (read and write)
			[9]: var78_upvw (read and write)
		]]
		any_useRef_result1_upvr_9.current = arg1.userInputService.InputEnded:connect(function(arg1_9, arg2) -- Line 553
			--[[ Upvalues[8]:
				[1]: any_useRef_result1_upvr_8 (copied, readonly)
				[2]: any_useRef_result1_upvr (copied, readonly)
				[3]: any_useRef_result1_upvr_5 (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: any_new_result1_upvr (copied, readonly)
				[6]: getFFlagChatInputBarOptimizeTyping_upvr (copied, readonly)
				[7]: var75_upvw (copied, read and write)
				[8]: var78_upvw (copied, read and write)
			]]
			local var160
			if any_useRef_result1_upvr_8.current then
				var160 = any_useRef_result1_upvr_8.current
				if var160 then
					var160 = any_useRef_result1_upvr_8.current:IsFocused()
					if var160 then
						if arg1_9.KeyCode ~= Enum.KeyCode.Backspace then
							var160 = false
						else
							var160 = true
						end
						-- KONSTANTWARNING: GOTO [43] #31
					end
					-- KONSTANTWARNING: GOTO [43] #31
				end
			else
				var160 = any_useRef_result1_upvr.current
				if var160 then
					var160 = any_useRef_result1_upvr.current:IsFocused()
					if var160 then
						if arg1_9.KeyCode ~= Enum.KeyCode.Backspace then
							var160 = false
						else
							var160 = true
						end
					end
				end
			end
			if var160 then
				if any_useRef_result1_upvr_5.current and not arg1.isChannelBarVisible then
					arg1.resetTargetChannel()
					any_new_result1_upvr:debug("ChatInputBar ChatInputBarResetTargetChannel()")
					any_useRef_result1_upvr_5.current = false
					return
				end
				if getFFlagChatInputBarOptimizeTyping_upvr() and var75_upvw.current == "" and arg1.targetTextChannelDisplayName ~= "" then
					any_useRef_result1_upvr_5.current = true
					return
				end
				if var78_upvw == "" and arg1.targetTextChannelDisplayName ~= "" then
					any_useRef_result1_upvr_5.current = true
				end
			end
		end)
		return function() -- Line 584
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr_9 (copied, readonly)
			]]
			local current_8 = any_useRef_result1_upvr_9.current
			if current_8 and current_8.Connected then
				current_8:Disconnect()
			end
			any_useRef_result1_upvr_9.current = nil
		end
	end
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [322] #260
	end
	var164_upvr.useEffect(var164_upvr, {arg1.userInputService, any_useRef_result1_upvr_8.current})
	var164_upvr = React_upvr
	function var164_upvr() -- Line 604
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Config_upvr (copied, readonly)
			[3]: any_useRef_result1_upvr_8 (readonly)
			[4]: any_useRef_result1_upvr (readonly)
			[5]: any_useRef_result1_upvr_4 (readonly)
		]]
		arg1.contextActionService:BindCoreAction("FocusChat", function(arg1_10, arg2, arg3) -- Line 605, Named "handleAction"
			--[[ Upvalues[5]:
				[1]: arg1 (copied, readonly)
				[2]: Config_upvr (copied, readonly)
				[3]: any_useRef_result1_upvr_8 (copied, readonly)
				[4]: any_useRef_result1_upvr (copied, readonly)
				[5]: any_useRef_result1_upvr_4 (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var168
			if var168 and (arg3.KeyCode == Config_upvr.ChatInputBarDefaultFocusKeyCode or arg3.KeyCode == arg1.devDefinedFocusKeyCode) then
				if any_useRef_result1_upvr_8.current then
				else
				end
				if any_useRef_result1_upvr.current and arg2 == Enum.UserInputState.Begin then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if any_useRef_result1_upvr.current and not any_useRef_result1_upvr.current:IsFocused() then
						local current_upvr = any_useRef_result1_upvr.current
						task.delay(0, function() -- Line 624
							--[[ Upvalues[1]:
								[1]: current_upvr (readonly)
							]]
							current_upvr:CaptureFocus()
						end)
						arg1.focusChatHotKeyActivated()
						any_useRef_result1_upvr_4.current = true
						return Enum.ContextActionResult.Sink
					end
				end
			end
			current_upvr = Enum.ContextActionResult.Pass
			return current_upvr
		end, false, Enum.UserInputType.Keyboard)
		return function() -- Line 648
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1.contextActionService:UnbindCoreAction("FocusChat")
		end
	end
	var164_upvr.useEffect(var164_upvr, {arg1.isChatHotkeyEnabled, arg1.devDefinedFocusKeyCode, any_useRef_result1_upvr_4.current, any_useRef_result1_upvr_8.current})
	local function _(arg1_11) -- Line 655
		--[[ Upvalues[1]:
			[1]: TextChatService_upvr (copied, readonly)
		]]
		local class_ChatInputBarConfiguration_3 = TextChatService_upvr:FindFirstChildOfClass("ChatInputBarConfiguration")
		if class_ChatInputBarConfiguration_3 then
			class_ChatInputBarConfiguration_3.IsFocusedWrite = arg1_11
		end
	end
	var164_upvr = React_upvr.useCallback
	var164_upvr = var164_upvr(function() -- Line 662
		--[[ Upvalues[3]:
			[1]: any_useState_result2_2_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: TextChatService_upvr (copied, readonly)
		]]
		any_useState_result2_2_upvr(true)
		arg1.onFocus()
		local class_ChatInputBarConfiguration_5 = TextChatService_upvr:FindFirstChildOfClass("ChatInputBarConfiguration")
		if class_ChatInputBarConfiguration_5 then
			class_ChatInputBarConfiguration_5.IsFocusedWrite = true
		end
	end, {arg1.onFocus})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function() -- Line 345
		--[[ Upvalues[15]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: getFFlagChatInputBarOptimizeTyping_upvr (copied, readonly)
			[3]: var75_upvw (read and write)
			[4]: var78_upvw (read and write)
			[5]: any_useRef_result1_upvr_3 (readonly)
			[6]: arg1 (readonly)
			[7]: any_useRef_result1_upvr (readonly)
			[8]: any_useRef_result1_upvr_8 (readonly)
			[9]: GetFFlagChatTimeoutModernChatSpecificImpl_upvr (copied, readonly)
			[10]: NotificationModalsManager_upvr (copied, readonly)
			[11]: Images_upvr (copied, readonly)
			[12]: any_useState_result1_2_upvr (readonly)
			[13]: any_useState_result2_upvr (readonly)
			[14]: var79_upvw (read and write)
			[15]: any_useRef_result1_upvr_5 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 71 start (CF ANALYSIS FAILED)
		local var119
		if getFFlagChatInputBarOptimizeTyping_upvr() then
			var119 = var75_upvw.current
		else
			var119 = var78_upvw
		end
		any_new_result1_upvr:trace("onSendActivated with input text: '{}'", var119)
		-- KONSTANTERROR: [0] 1. Error Block 71 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 15. Error Block 6 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 15. Error Block 6 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 18. Error Block 65 start (CF ANALYSIS FAILED)
		var119 = tostring(any_useRef_result1_upvr_3.current)
		any_new_result1_upvr:debug("onSendActivated could not send message. isMounted: {} canLocalUserChat: {}", var119, arg1.canLocalUserChat)
		do
			return
		end
		-- KONSTANTERROR: [21] 18. Error Block 65 end (CF ANALYSIS FAILED)
	end, tbl)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_12, arg2, arg3) -- Line 668
		--[[ Upvalues[15]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: arg1 (readonly)
			[4]: any_useCallback_result1_upvr_2 (readonly)
			[5]: any_useCallback_result1_upvr_3 (readonly)
			[6]: any_useRef_result1_upvr_3 (readonly)
			[7]: any_useRef_result1_upvr_8 (readonly)
			[8]: any_useRef_result1_upvr (readonly)
			[9]: getFFlagChatInputBarOptimizeTyping_upvr (copied, readonly)
			[10]: var76_upvw (read and write)
			[11]: var80_upvw (read and write)
			[12]: any_useState_result2_2_upvr (readonly)
			[13]: TextChatService_upvr (copied, readonly)
			[14]: any_useRef_result1_upvr_4 (readonly)
			[15]: Players_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		any_new_result1_upvr:debug("Focus lost with enter: {}", tostring(arg2))
		local current_6 = any_useRef_result1_upvr_2.current
		if arg2 then
			if arg1.autocompleteEnabled and current_6 and arg1.autocompleteDropdownReducer.activated and 0 < #arg1.autocompleteDropdownReducer.results then
				for _, v_2 in ipairs(current_6.ScrollBarFrame.ScrollViewFrame.ScrollView.OffsetFrame:GetChildren()) do
					if v_2.ClassName == "Frame" and v_2.LayoutOrder == arg1.autocompleteDropdownReducer.selectedIndex then
						any_useCallback_result1_upvr_2(v_2.TextLabelButton)
						return
					end
				end
			else
				any_useCallback_result1_upvr_3()
			end
		end
		if any_useRef_result1_upvr_3.current then
			if arg1.autocompleteEnabled and current_6 and arg1.autocompleteDropdownReducer.activated then
				local var192
				if var192 == Enum.KeyCode.Escape then
					var192 = arg1.autocompleteDropdownActivated
					var192(false)
					local var193
					if var193 then
						var193 = any_useRef_result1_upvr_8
						var192 = var193.current
					else
						var193 = any_useRef_result1_upvr
						var192 = var193.current
					end
					if var192 then
						if getFFlagChatInputBarOptimizeTyping_upvr() then
							var193 = var76_upvw.current
						else
							var193 = var80_upvw
						end
						var192:CaptureFocus()
						var192.CursorPosition = var193
						return
					end
					var193 = any_new_result1_upvr:error
					var193("Could not focus chat input bar because textBox not found")
				else
					var193 = arg3.Position
					var193 = arg3.Position.Y
					local var194 = var193
					local X = current_6.AbsolutePosition.X
					local Y = current_6.AbsolutePosition.Y
					local function INLINED() -- Internal function, doesn't exist in bytecode
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						return X + current_6.AbsoluteSize.X < var193.X
					end
					if var193.X < X or INLINED() or var194 < Y or Y + current_6.AbsoluteSize.Y < var194 then
						arg1.autocompleteDropdownActivated(false)
						-- KONSTANTWARNING: GOTO [173] #119
					end
				end
			else
				var194 = false
				any_useState_result2_2_upvr(var194)
			end
		end
		var194 = arg1
		var194.onUnfocus()
		local class_ChatInputBarConfiguration_4 = TextChatService_upvr:FindFirstChildOfClass("ChatInputBarConfiguration")
		if class_ChatInputBarConfiguration_4 then
			var194 = false
			class_ChatInputBarConfiguration_4.IsFocusedWrite = var194
		end
		var194 = any_useRef_result1_upvr_4
		if var194.current then
			var194 = Players_upvr
			local LocalPlayer = var194.LocalPlayer
			if LocalPlayer then
				var194 = Instance.new("TextBox")
				local var199 = var194
				var199.Visible = false
				var199.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
				var199:CaptureFocus()
				var199:ReleaseFocus()
				var199:Destroy()
			end
			var199 = any_useRef_result1_upvr_4
			var199.current = false
		end
	end)
	if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
		React_upvr.useEffect(function() -- Line 760
			--[[ Upvalues[10]:
				[1]: FFlagConsoleChatOnExpControls_upvr (copied, readonly)
				[2]: any_useRef_result1_upvr_8 (readonly)
				[3]: any_useRef_result1_upvr (readonly)
				[4]: FFlagChromeChatGamepadSupportFix_upvr (copied, readonly)
				[5]: GuiService_upvr (copied, readonly)
				[6]: var164_upvr (readonly)
				[7]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
				[8]: onChatInputBarFocusLost_upvr (copied, readonly)
				[9]: any_useCallback_result1_upvr (readonly)
				[10]: ActionBindableEvent_upvr (copied, readonly)
			]]
			local var202_upvw
			local var203_upvw
			local any_Connect_result1_upvr = ActionBindableEvent_upvr.Event:Connect(function(arg1_13) -- Line 764
				--[[ Upvalues[11]:
					[1]: FFlagConsoleChatOnExpControls_upvr (copied, readonly)
					[2]: any_useRef_result1_upvr_8 (copied, readonly)
					[3]: any_useRef_result1_upvr (copied, readonly)
					[4]: FFlagChromeChatGamepadSupportFix_upvr (copied, readonly)
					[5]: GuiService_upvr (copied, readonly)
					[6]: var164_upvr (copied, readonly)
					[7]: var203_upvw (read and write)
					[8]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
					[9]: var202_upvw (read and write)
					[10]: onChatInputBarFocusLost_upvr (copied, readonly)
					[11]: any_useCallback_result1_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
				local var205_upvw
				if FFlagConsoleChatOnExpControls_upvr then
					if any_useRef_result1_upvr_8.current then
						var205_upvw = any_useRef_result1_upvr_8.current
					else
						var205_upvw = any_useRef_result1_upvr.current
					end
				end
				if arg1_13.type == "ChatTopBarFocusActivated" then
					if not FFlagConsoleChatOnExpControls_upvr then
						if any_useRef_result1_upvr_8.current then
							var205_upvw = any_useRef_result1_upvr_8.current
						else
							var205_upvw = any_useRef_result1_upvr.current
						end
					end
					if var205_upvw then
						task.delay(0, function() -- Line 777
							--[[ Upvalues[1]:
								[1]: var205_upvw (read and write)
							]]
							var205_upvw:CaptureFocus()
						end)
						-- KONSTANTWARNING: GOTO [71] #58
					end
				elseif not FFlagChromeChatGamepadSupportFix_upvr and FFlagConsoleChatOnExpControls_upvr and arg1_13.type == "ChatTopBarFocusSelect" and var205_upvw then
					GuiService_upvr:SetMenuIsOpen(true, "ExperienceChat")
					var164_upvr()
					GuiService_upvr.SelectedCoreObject = var205_upvw
					var203_upvw = task.delay(0, function() -- Line 792
						--[[ Upvalues[6]:
							[1]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
							[2]: var203_upvw (copied, read and write)
							[3]: var202_upvw (copied, read and write)
							[4]: onChatInputBarFocusLost_upvr (copied, readonly)
							[5]: arg1_13 (readonly)
							[6]: any_useCallback_result1_upvr (copied, readonly)
						]]
						if game_DefineFastFlag_result1_upvr_3 then
							var203_upvw = nil
							if var202_upvw then
								var202_upvw:Disconnect()
							end
						end
						var202_upvw = onChatInputBarFocusLost_upvr(arg1_13.onSelectionLost, arg1_13.keybinds, any_useCallback_result1_upvr)
					end)
				end
				-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [71] 58. Error Block 20 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [71] 58. Error Block 20 end (CF ANALYSIS FAILED)
			end)
			return function() -- Line 808
				--[[ Upvalues[4]:
					[1]: any_Connect_result1_upvr (readonly)
					[2]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
					[3]: var203_upvw (read and write)
					[4]: var202_upvw (read and write)
				]]
				any_Connect_result1_upvr:disconnect()
				if game_DefineFastFlag_result1_upvr_3 then
					if var203_upvw then
						task.cancel(var203_upvw)
						var203_upvw = nil
					end
					if var202_upvw then
						var202_upvw:Disconnect()
						var202_upvw = nil
					end
				end
			end
		end, {any_useRef_result1_upvr.current, any_useRef_result1_upvr_8.current})
	end
	useEffectChatInputBarFocus_upvr(any_useRef_result1_upvr, any_useRef_result1_upvr_8, var164_upvr, any_useCallback_result1_upvr)
	local function handleAutocomplete_upvr(arg1_14, arg2, arg3) -- Line 829, Named "handleAutocomplete"
		--[[ Upvalues[16]:
			[1]: arg1 (readonly)
			[2]: var19_upvw (copied, read and write)
			[3]: sortCommandResultsCallback_upvr (copied, readonly)
			[4]: var18_upvw (copied, read and write)
			[5]: sortEmojiResultsCallback_upvr (copied, readonly)
			[6]: getFFlagChatInputBarOptimizeTyping_upvr (copied, readonly)
			[7]: var77_upvw (read and write)
			[8]: var82_upvw (read and write)
			[9]: List_upvr (copied, readonly)
			[10]: var75_upvw (read and write)
			[11]: any_useState_result1_2_upvr (readonly)
			[12]: any_useState_result2_upvr (readonly)
			[13]: var79_upvw (read and write)
			[14]: any_useRef_result1_upvr_2 (readonly)
			[15]: any_useCallback_result1_upvr_2 (readonly)
			[16]: var83_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 4. Error Block 85 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 4. Error Block 85 end (CF ANALYSIS FAILED)
	end
	local any_useRef_result1_upvr_6 = React_upvr.useRef("")
	local function _(arg1_15) -- Line 959
		--[[ Upvalues[17]:
			[1]: arg1 (readonly)
			[2]: getFFlagChatInputBarOptimizeTyping_upvr (copied, readonly)
			[3]: var75_upvw (read and write)
			[4]: any_useState_result1_2_upvr (readonly)
			[5]: any_useState_result2_upvr (readonly)
			[6]: var79_upvw (read and write)
			[7]: any_new_result1_upvr (copied, readonly)
			[8]: var78_upvw (read and write)
			[9]: getEnableChatInputBarConfigurationAutocompleteEnabled_upvr (copied, readonly)
			[10]: handleAutocomplete_upvr (readonly)
			[11]: any_useRef_result1_upvr_5 (readonly)
			[12]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
			[13]: any_useRef_result1_upvr_6 (readonly)
			[14]: autoCastCommand_upvr (copied, readonly)
			[15]: RBXTeamCommand_upvr (copied, readonly)
			[16]: RBXWhisperCommand_upvr (copied, readonly)
			[17]: Promise_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local Text_3 = arg1_15.Text
		local var214
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 5. Error Block 67 start (CF ANALYSIS FAILED)
		var214 = Text_3
		if arg1_15.CursorPosition >= #Text_3 + 1 then
			var214 = false
		else
			var214 = true
		end
		-- KONSTANTERROR: [6] 5. Error Block 67 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 16. Error Block 71 start (CF ANALYSIS FAILED)
		local string_gsub_result1 = string.gsub(Text_3, '\r', "")
		arg1_15.Text = string_gsub_result1
		if getFFlagChatInputBarOptimizeTyping_upvr() then
			var75_upvw.current = string_gsub_result1
			local current_7 = var75_upvw.current
			if #current_7 == 0 then
				any_useState_result2_upvr(true)
			elseif 0 < #current_7 and any_useState_result1_2_upvr then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				any_useState_result2_upvr(false)
				-- KONSTANTWARNING: GOTO [58] #48
			end
		else
			var79_upvw(string_gsub_result1)
		end
		if var214 then
			arg1_15.CursorPosition -= 1
		end
		do
			return
		end
		-- KONSTANTERROR: [20] 16. Error Block 71 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [65] 53. Error Block 68 start (CF ANALYSIS FAILED)
		any_new_result1_upvr:trace("Input: {}", Text_3)
		if utf8.len(Text_3) then
		else
		end
		-- KONSTANTERROR: [65] 53. Error Block 68 end (CF ANALYSIS FAILED)
	end
	if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
		local function _() -- Line 1069
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr_8 (readonly)
				[2]: any_useRef_result1_upvr (readonly)
			]]
			local var218
			if any_useRef_result1_upvr_8.current then
				var218 = any_useRef_result1_upvr_8.current
			else
				var218 = any_useRef_result1_upvr.current
			end
			if var218 then
				var218:ReleaseFocus(true)
			end
		end
		local _ = {any_useRef_result1_upvr.current, any_useRef_result1_upvr_8.current}
	end
	local function _(arg1_16) -- Line 1077
		--[[ Upvalues[1]:
			[1]: any_useBinding_result2_upvr (readonly)
		]]
		local var221
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var221 = arg1_16.AbsoluteSize.X
			return var221
		end
		if not arg1_16.Visible or not INLINED_2() then
			var221 = 0
		end
		any_useBinding_result2_upvr(var221)
	end
	if FFlagEnableFocusNavigation_upvr then
	else
	end
	local function _(arg1_17) -- Line 1084
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.autocompleteDropdownSelectionChanged(arg1_17.LayoutOrder)
	end
	if getFFlagChatInputBarOptimizeTyping_upvr() then
	elseif var78_upvw ~= "" then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 204 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [505] 415. Error Block 34 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [505] 415. Error Block 34 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [506] 416. Error Block 186 start (CF ANALYSIS FAILED)
	local chatWindowSettings = arg1.chatWindowSettings
	if getFFlagChatWindowGetSpatialUiContextFromProps_upvr() then
	else
	end
	local tbl_2 = {
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundColor3 = useInterpolatedClientSettings_upvr(chatWindowSettings).BackgroundColor3;
	}
	local BackgroundTransparency_upvr = useInterpolatedClientSettings_upvr(chatWindowSettings).BackgroundTransparency
	tbl_2.BackgroundTransparency = arg1.transparencyValue:map(function(arg1_18) -- Line 75
		--[[ Upvalues[1]:
			[1]: BackgroundTransparency_upvr (readonly)
		]]
		return BackgroundTransparency_upvr + arg1_18 * (1 - BackgroundTransparency_upvr)
	end)
	tbl_2.BorderSizePixel = 0
	tbl_2.LayoutOrder = arg1.LayoutOrder
	tbl_2.Size = arg1.size
	tbl_2.Visible = arg1.visible
	tbl_2.ZIndex = 2
	tbl_2[React_upvr.Event.MouseEnter] = arg1.onHovered
	tbl_2[React_upvr.Event.MouseLeave] = arg1.onUnhovered
	tbl_2[React_upvr.Change.AbsoluteSize] = React_upvr.useCallback(function(arg1_19) -- Line 1112
		--[[ Upvalues[2]:
			[1]: TextChatService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local class_ChatInputBarConfiguration_2 = TextChatService_upvr:FindFirstChildOfClass("ChatInputBarConfiguration")
		if class_ChatInputBarConfiguration_2 and arg1.onAbsoluteSizeChanged then
			arg1.onAbsoluteSizeChanged(arg1_19, class_ChatInputBarConfiguration_2)
		end
	end)
	tbl_2[React_upvr.Change.AbsolutePosition] = React_upvr.useCallback(function(arg1_20) -- Line 1118
		--[[ Upvalues[2]:
			[1]: TextChatService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local class_ChatInputBarConfiguration = TextChatService_upvr:FindFirstChildOfClass("ChatInputBarConfiguration")
		if class_ChatInputBarConfiguration and arg1.onAbsolutePositionChanged then
			arg1.onAbsolutePositionChanged(arg1_20, class_ChatInputBarConfiguration)
		end
	end)
	-- KONSTANTERROR: [506] 416. Error Block 186 end (CF ANALYSIS FAILED)
end
local var234 = ChatInputBar
if getFFlagEnableChatWindowMemoization_upvr() then
	var234 = React_upvr.memo(require(ExpChat.Localization).connect(ChatInputBar)(var234))
else
	var234 = require(ExpChat.Localization).connect(ChatInputBar)(var234)
end
return var234