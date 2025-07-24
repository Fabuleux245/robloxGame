-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:33
-- Luau version 6, Types version 3
-- Time taken: 0.014131 seconds

local TextChatService_upvr = game:GetService("TextChatService")
local UserInputService_upvr = game:GetService("UserInputService")
local ExpChat = script:FindFirstAncestor("ExpChat")
local ExpChatShared = require(ExpChat.Parent.ExpChatShared)
local Actions = ExpChat.Actions
local function _(arg1) -- Line 39, Named "isKeyboardKeyCodeSanitized"
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local any_GetStringForKeyCode_result1 = UserInputService_upvr:GetStringForKeyCode(arg1)
	if any_GetStringForKeyCode_result1 == nil or any_GetStringForKeyCode_result1 == "" or arg1 == Enum.KeyCode.Unknown then
		warn("ChatInputBarConfiguration.KeyboardKeyCode has an unsupported keycode for rendering UI:"..tostring(arg1))
		return false
	end
	return true
end
local Config_upvr = require(ExpChat.Config)
local function shouldReorderTabs_upvr(arg1, arg2) -- Line 52, Named "shouldReorderTabs"
	--[[ Upvalues[2]:
		[1]: TextChatService_upvr (readonly)
		[2]: Config_upvr (readonly)
	]]
	if arg2 == nil or arg1[arg2.Name] == nil then
		return false
	end
	for _ in pairs(arg1) do
		local var13
	end
	local class_ChannelTabsConfiguration = TextChatService_upvr:FindFirstChildOfClass("ChannelTabsConfiguration")
	if not class_ChannelTabsConfiguration then
		return false
	end
	local AbsoluteSize = class_ChannelTabsConfiguration.AbsoluteSize
	local X = AbsoluteSize.X
	if X >= var13 * Config_upvr.ChannelTabsSettings.MinTabWidth then
		AbsoluteSize = false
	else
		AbsoluteSize = true
	end
	if AbsoluteSize or not var13 then
	end
	if math.floor((X - Config_upvr.ChannelTabsSettings.DropdownIconContainerWidth) / Config_upvr.ChannelTabsSettings.MinTabWidth) >= arg1[arg2.Name].TabIndex then
	else
	end
	return true
end
local Analytics_upvr = ExpChatShared.Analytics
local GetTransparencyStore_upvr = require(ExpChat.Stores.GetTransparencyStore)
local ChatInputBarConfigurationEnabled_upvr = require(Actions.ChatInputBarConfigurationEnabled)
local GetFFlagUnreduxChatTransparency_upvr = require(ExpChat.Parent.SharedFlags).GetFFlagUnreduxChatTransparency
local getFFlagExpChatEnableChannelTabsUI_upvr = require(ExpChat.Flags.getFFlagExpChatEnableChannelTabsUI)
local TargetTextChannelPropertyChanged_upvr = ExpChatShared.Actions.TargetTextChannelPropertyChanged
local DevTextBoxEnabledChanged_upvr = require(Actions.DevTextBoxEnabledChanged)
local getEnableChatInputBarConfigurationAutocompleteEnabled_upvr = require(ExpChat.Flags.getEnableChatInputBarConfigurationAutocompleteEnabled)
local TenFootInterfaceExpChatExperimentation_upvr = require(ExpChat.Parent.SocialExperiments).TenFootInterfaceExpChatExperimentation
local GuiService_upvr = game:GetService("GuiService")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixExpChatConsoleTextSize", false)
local ChatInputBarSettingsChanged_upvr = require(Actions.ChatInputBarSettingsChanged)
local ChatWindowConfigurationEnabled_upvr = require(Actions.ChatWindowConfigurationEnabled)
local ChatLayoutHorizontalAlignmentChanged_upvr = require(Actions.ChatLayoutHorizontalAlignmentChanged)
local ChatLayoutVerticalAlignmentChanged_upvr = require(Actions.ChatLayoutVerticalAlignmentChanged)
local ChatWindowSettingsChanged_upvr = require(Actions.ChatWindowSettingsChanged)
local BubbleChatSettingsChanged_upvr = require(Actions.BubbleChatSettingsChanged)
local setUpBubbleChatConfigurationChildren_upvr = require(script.Parent.setUpBubbleChatConfigurationChildren)
local ChannelTabsConfigurationEnabled_upvr = require(Actions.ChannelTabsConfigurationEnabled)
local ChannelTabsSettingsChanged_upvr = require(Actions.ChannelTabsSettingsChanged)
local ConfigurationObjectsLoaded_upvr = require(Actions.ConfigurationObjectsLoaded)
return function(arg1, arg2) -- Line 78
	--[[ Upvalues[24]:
		[1]: Analytics_upvr (readonly)
		[2]: TextChatService_upvr (readonly)
		[3]: GetTransparencyStore_upvr (readonly)
		[4]: ChatInputBarConfigurationEnabled_upvr (readonly)
		[5]: GetFFlagUnreduxChatTransparency_upvr (readonly)
		[6]: getFFlagExpChatEnableChannelTabsUI_upvr (readonly)
		[7]: shouldReorderTabs_upvr (readonly)
		[8]: TargetTextChannelPropertyChanged_upvr (readonly)
		[9]: DevTextBoxEnabledChanged_upvr (readonly)
		[10]: getEnableChatInputBarConfigurationAutocompleteEnabled_upvr (readonly)
		[11]: UserInputService_upvr (readonly)
		[12]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
		[13]: GuiService_upvr (readonly)
		[14]: game_DefineFastFlag_result1_upvr (readonly)
		[15]: ChatInputBarSettingsChanged_upvr (readonly)
		[16]: ChatWindowConfigurationEnabled_upvr (readonly)
		[17]: ChatLayoutHorizontalAlignmentChanged_upvr (readonly)
		[18]: ChatLayoutVerticalAlignmentChanged_upvr (readonly)
		[19]: ChatWindowSettingsChanged_upvr (readonly)
		[20]: BubbleChatSettingsChanged_upvr (readonly)
		[21]: setUpBubbleChatConfigurationChildren_upvr (readonly)
		[22]: ChannelTabsConfigurationEnabled_upvr (readonly)
		[23]: ChannelTabsSettingsChanged_upvr (readonly)
		[24]: ConfigurationObjectsLoaded_upvr (readonly)
	]]
	local var39
	if arg2.analytics then
		Analytics_upvr.with(arg2.analytics)
	end
	local function var40_upvr(arg1_2, arg2_2, arg3) -- Line 83
		--[[ Upvalues[1]:
			[1]: Analytics_upvr (copied, readonly)
		]]
		local var41
		if type(arg3) == "number" or type(arg3) == "boolean" or typeof(arg3) == "EnumItem" then
			var41 = tostring(arg3)
		elseif typeof(arg3) == "Color3" then
			var41 = arg3:ToHex()
		elseif typeof(arg3) == "Font" then
			var41 = tostring(string.gsub(arg3.Family, "rbxasset://fonts/families/", ""))..' '..tostring(arg3.Weight)..' '..tostring(arg3.Style)
		else
			return
		end
		assert(var41, "should exist")
		Analytics_upvr.FireClientAnalyticsWithEventName(arg1_2, {
			[arg2_2] = var41;
		})
	end
	local function _() -- Line 346
		--[[ Upvalues[8]:
			[1]: TextChatService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ChannelTabsConfigurationEnabled_upvr (copied, readonly)
			[4]: var40_upvr (readonly)
			[5]: TenFootInterfaceExpChatExperimentation_upvr (copied, readonly)
			[6]: GuiService_upvr (copied, readonly)
			[7]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[8]: ChannelTabsSettingsChanged_upvr (copied, readonly)
		]]
		local class_ChannelTabsConfiguration_2_upvr = TextChatService_upvr:FindFirstChildOfClass("ChannelTabsConfiguration")
		local module_3 = {}
		if class_ChannelTabsConfiguration_2_upvr then
			arg1:dispatch(ChannelTabsConfigurationEnabled_upvr(class_ChannelTabsConfiguration_2_upvr.Enabled))
			class_ChannelTabsConfiguration_2_upvr:GetPropertyChangedSignal("Enabled"):Connect(function() -- Line 352
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: ChannelTabsConfigurationEnabled_upvr (copied, readonly)
					[3]: class_ChannelTabsConfiguration_2_upvr (readonly)
				]]
				arg1:dispatch(ChannelTabsConfigurationEnabled_upvr(class_ChannelTabsConfiguration_2_upvr.Enabled))
			end)
			for i_5, v_4 in ipairs({"BackgroundTransparency", "BackgroundColor3", "HoverBackgroundColor3", "FontFace", "TextSize", "TextColor3", "SelectedTabTextColor3", "TextStrokeColor3", "TextStrokeTransparency"}) do
				if class_ChannelTabsConfiguration_2_upvr[v_4] then
					local var167 = class_ChannelTabsConfiguration_2_upvr[v_4]
					module_3[v_4] = var167
					var40_upvr("ChannelTabsConfigurationLoaded", v_4, var167)
				end
			end
			if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
				local any_IsTenFootInterface_result1_3 = GuiService_upvr:IsTenFootInterface()
				if any_IsTenFootInterface_result1_3 then
					if game_DefineFastFlag_result1_upvr then
						v_4 = module_3.TextSize
						i_5 = v_4 * 1.5
						any_IsTenFootInterface_result1_3 = math.floor(0.5 + i_5)
					else
						any_IsTenFootInterface_result1_3 = module_3.TextSize * 1.5
					end
					module_3.TextSize = any_IsTenFootInterface_result1_3
				end
			end
			class_ChannelTabsConfiguration_2_upvr.Changed:Connect(function(arg1_9) -- Line 389
				--[[ Upvalues[4]:
					[1]: class_ChannelTabsConfiguration_2_upvr (readonly)
					[2]: arg1 (copied, readonly)
					[3]: ChannelTabsSettingsChanged_upvr (copied, readonly)
					[4]: var40_upvr (copied, readonly)
				]]
				local var170 = class_ChannelTabsConfiguration_2_upvr[arg1_9]
				arg1:dispatch(ChannelTabsSettingsChanged_upvr(arg1_9, var170))
				var40_upvr("ChannelTabsConfigurationChanged", arg1_9, var170)
			end)
			return module_3
		end
		return {}
	end
	if getFFlagExpChatEnableChannelTabsUI_upvr() then
		var39 = _()
	else
		var39 = {}
	end
	arg1:dispatch(ConfigurationObjectsLoaded_upvr({
		bubbleChatSettings = (function() -- Line 283
			--[[ Upvalues[8]:
				[1]: TextChatService_upvr (copied, readonly)
				[2]: var40_upvr (readonly)
				[3]: TenFootInterfaceExpChatExperimentation_upvr (copied, readonly)
				[4]: GuiService_upvr (copied, readonly)
				[5]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[6]: arg1 (readonly)
				[7]: BubbleChatSettingsChanged_upvr (copied, readonly)
				[8]: setUpBubbleChatConfigurationChildren_upvr (copied, readonly)
			]]
			local class_BubbleChatConfiguration_upvr = TextChatService_upvr:FindFirstChildOfClass("BubbleChatConfiguration")
			local module = {}
			if class_BubbleChatConfiguration_upvr then
				for i_3, v_2 in ipairs({"Enabled", "AdorneeName", "BubbleDuration", "BubblesSpacing", "VerticalStudsOffset", "LocalPlayerStudsOffset", "MinimizeDistance", "MaxDistance", "BackgroundColor3", "TextColor3", "TextSize", "FontFace", "MaxBubbles", "TailVisible", "BackgroundTransparency"}) do
					if class_BubbleChatConfiguration_upvr[v_2] then
						local var132 = class_BubbleChatConfiguration_upvr[v_2]
						module[v_2] = var132
						var40_upvr("BubbleChatConfigurationLoaded", v_2, var132)
					end
				end
				if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
					local any_IsTenFootInterface_result1_4 = GuiService_upvr:IsTenFootInterface()
					if any_IsTenFootInterface_result1_4 then
						if game_DefineFastFlag_result1_upvr then
							v_2 = module.TextSize
							i_3 = v_2 * 1.5
							any_IsTenFootInterface_result1_4 = math.floor(0.5 + i_3)
						else
							any_IsTenFootInterface_result1_4 = module.TextSize * 1.5
						end
						module.TextSize = any_IsTenFootInterface_result1_4
					end
				end
				class_BubbleChatConfiguration_upvr.Changed:Connect(function(arg1_7) -- Line 326
					--[[ Upvalues[4]:
						[1]: class_BubbleChatConfiguration_upvr (readonly)
						[2]: arg1 (copied, readonly)
						[3]: BubbleChatSettingsChanged_upvr (copied, readonly)
						[4]: var40_upvr (copied, readonly)
					]]
					local var135 = class_BubbleChatConfiguration_upvr[arg1_7]
					arg1:dispatch(BubbleChatSettingsChanged_upvr(arg1_7, var135))
					var40_upvr("BubbleChatConfigurationChanged", arg1_7, var135)
				end)
				local setUpBubbleChatConfigurationChildren_upvr_result1 = setUpBubbleChatConfigurationChildren_upvr(arg1)
				for i_4, v_3 in pairs(setUpBubbleChatConfigurationChildren_upvr_result1) do
					if v_3 then
						module[i_4] = setUpBubbleChatConfigurationChildren_upvr_result1[i_4]
					end
				end
				return module
			end
			return {}
		end)();
		chatWindowSettings = (function() -- Line 215
			--[[ Upvalues[10]:
				[1]: TextChatService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: ChatWindowConfigurationEnabled_upvr (copied, readonly)
				[4]: ChatLayoutHorizontalAlignmentChanged_upvr (copied, readonly)
				[5]: ChatLayoutVerticalAlignmentChanged_upvr (copied, readonly)
				[6]: var40_upvr (readonly)
				[7]: TenFootInterfaceExpChatExperimentation_upvr (copied, readonly)
				[8]: GuiService_upvr (copied, readonly)
				[9]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[10]: ChatWindowSettingsChanged_upvr (copied, readonly)
			]]
			local class_ChatWindowConfiguration_upvr_2 = TextChatService_upvr:FindFirstChildOfClass("ChatWindowConfiguration")
			local module_6 = {}
			if class_ChatWindowConfiguration_upvr_2 then
				arg1:dispatch(ChatWindowConfigurationEnabled_upvr(class_ChatWindowConfiguration_upvr_2.Enabled))
				class_ChatWindowConfiguration_upvr_2:GetPropertyChangedSignal("Enabled"):Connect(function() -- Line 221
					--[[ Upvalues[3]:
						[1]: arg1 (copied, readonly)
						[2]: ChatWindowConfigurationEnabled_upvr (copied, readonly)
						[3]: class_ChatWindowConfiguration_upvr_2 (readonly)
					]]
					arg1:dispatch(ChatWindowConfigurationEnabled_upvr(class_ChatWindowConfiguration_upvr_2.Enabled))
				end)
				arg1:dispatch(ChatLayoutHorizontalAlignmentChanged_upvr(class_ChatWindowConfiguration_upvr_2.HorizontalAlignment))
				class_ChatWindowConfiguration_upvr_2:GetPropertyChangedSignal("HorizontalAlignment"):Connect(function() -- Line 226
					--[[ Upvalues[3]:
						[1]: arg1 (copied, readonly)
						[2]: ChatLayoutHorizontalAlignmentChanged_upvr (copied, readonly)
						[3]: class_ChatWindowConfiguration_upvr_2 (readonly)
					]]
					arg1:dispatch(ChatLayoutHorizontalAlignmentChanged_upvr(class_ChatWindowConfiguration_upvr_2.HorizontalAlignment))
				end)
				arg1:dispatch(ChatLayoutVerticalAlignmentChanged_upvr(class_ChatWindowConfiguration_upvr_2.VerticalAlignment))
				class_ChatWindowConfiguration_upvr_2:GetPropertyChangedSignal("VerticalAlignment"):Connect(function() -- Line 231
					--[[ Upvalues[3]:
						[1]: arg1 (copied, readonly)
						[2]: ChatLayoutVerticalAlignmentChanged_upvr (copied, readonly)
						[3]: class_ChatWindowConfiguration_upvr_2 (readonly)
					]]
					arg1:dispatch(ChatLayoutVerticalAlignmentChanged_upvr(class_ChatWindowConfiguration_upvr_2.VerticalAlignment))
				end)
				for i_2, v in ipairs({"BackgroundColor3", "BackgroundTransparency", "FontFace", "TextColor3", "TextSize", "TextStrokeColor3", "TextStrokeTransparency", "HeightScale", "WidthScale", "HorizontalAlignment", "VerticalAlignment"}) do
					if class_ChatWindowConfiguration_upvr_2[v] then
						local var91 = class_ChatWindowConfiguration_upvr_2[v]
						module_6[v] = var91
						var40_upvr("ChatWindowConfigurationLoaded", v, var91)
					end
				end
				if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
					local any_IsTenFootInterface_result1_2 = GuiService_upvr:IsTenFootInterface()
					if any_IsTenFootInterface_result1_2 then
						if game_DefineFastFlag_result1_upvr then
							v = module_6.TextSize
							i_2 = v * 1.5
							any_IsTenFootInterface_result1_2 = math.floor(0.5 + i_2)
						else
							any_IsTenFootInterface_result1_2 = module_6.TextSize * 1.5
						end
						module_6.TextSize = any_IsTenFootInterface_result1_2
					end
				end
				class_ChatWindowConfiguration_upvr_2.Changed:Connect(function(arg1_5) -- Line 270
					--[[ Upvalues[4]:
						[1]: class_ChatWindowConfiguration_upvr_2 (readonly)
						[2]: arg1 (copied, readonly)
						[3]: ChatWindowSettingsChanged_upvr (copied, readonly)
						[4]: var40_upvr (copied, readonly)
					]]
					local var94 = class_ChatWindowConfiguration_upvr_2[arg1_5]
					arg1:dispatch(ChatWindowSettingsChanged_upvr(arg1_5, var94))
					var40_upvr("ChatWindowConfigurationChanged", arg1_5, var94)
				end)
				return module_6
			end
			return {}
		end)();
		chatInputBarSettings = (function() -- Line 102
			--[[ Upvalues[17]:
				[1]: TextChatService_upvr (copied, readonly)
				[2]: GetTransparencyStore_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: ChatInputBarConfigurationEnabled_upvr (copied, readonly)
				[5]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
				[6]: getFFlagExpChatEnableChannelTabsUI_upvr (copied, readonly)
				[7]: shouldReorderTabs_upvr (copied, readonly)
				[8]: TargetTextChannelPropertyChanged_upvr (copied, readonly)
				[9]: arg2 (readonly)
				[10]: DevTextBoxEnabledChanged_upvr (copied, readonly)
				[11]: getEnableChatInputBarConfigurationAutocompleteEnabled_upvr (copied, readonly)
				[12]: UserInputService_upvr (copied, readonly)
				[13]: var40_upvr (readonly)
				[14]: TenFootInterfaceExpChatExperimentation_upvr (copied, readonly)
				[15]: GuiService_upvr (copied, readonly)
				[16]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[17]: ChatInputBarSettingsChanged_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local class_ChatInputBarConfiguration_upvr = TextChatService_upvr:FindFirstChildOfClass("ChatInputBarConfiguration")
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 7. Error Block 59 start (CF ANALYSIS FAILED)
			local var19_result1_upvr = GetTransparencyStore_upvr(false)
			arg1:dispatch(ChatInputBarConfigurationEnabled_upvr(class_ChatInputBarConfiguration_upvr.Enabled))
			local var46
			if GetFFlagUnreduxChatTransparency_upvr() and class_ChatInputBarConfiguration_upvr.Enabled then
				var19_result1_upvr.resetAllTransparency()
			end
			class_ChatInputBarConfiguration_upvr:GetPropertyChangedSignal("Enabled"):Connect(function() -- Line 111
				--[[ Upvalues[5]:
					[1]: arg1 (copied, readonly)
					[2]: ChatInputBarConfigurationEnabled_upvr (copied, readonly)
					[3]: class_ChatInputBarConfiguration_upvr (readonly)
					[4]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
					[5]: var19_result1_upvr (readonly)
				]]
				arg1:dispatch(ChatInputBarConfigurationEnabled_upvr(class_ChatInputBarConfiguration_upvr.Enabled))
				if GetFFlagUnreduxChatTransparency_upvr() and class_ChatInputBarConfiguration_upvr.Enabled then
					var19_result1_upvr.resetAllTransparency()
				end
			end)
			class_ChatInputBarConfiguration_upvr:GetPropertyChangedSignal("TargetTextChannel"):Connect(function() -- Line 118
				--[[ Upvalues[5]:
					[1]: class_ChatInputBarConfiguration_upvr (readonly)
					[2]: getFFlagExpChatEnableChannelTabsUI_upvr (copied, readonly)
					[3]: shouldReorderTabs_upvr (copied, readonly)
					[4]: arg1 (copied, readonly)
					[5]: TargetTextChannelPropertyChanged_upvr (copied, readonly)
				]]
				local var49 = class_ChatInputBarConfiguration_upvr
				local TargetTextChannel = var49.TargetTextChannel
				if getFFlagExpChatEnableChannelTabsUI_upvr() then
					var49 = shouldReorderTabs_upvr(arg1:getState().ChannelTabs.allChannelTabs, TargetTextChannel)
				else
					var49 = false
				end
				arg1:dispatch(TargetTextChannelPropertyChanged_upvr(TargetTextChannel, var49))
			end)
			if arg2.defaultTargetTextChannel then
				class_ChatInputBarConfiguration_upvr.TargetTextChannel = arg2.defaultTargetTextChannel
			elseif TextChatService_upvr.ChatVersion == Enum.ChatVersion.LegacyChatService then
				game:GetService("Chat"):GetPropertyChangedSignal("IsAutoMigrated"):Once(function() -- Line 129
					--[[ Upvalues[2]:
						[1]: TextChatService_upvr (copied, readonly)
						[2]: class_ChatInputBarConfiguration_upvr (readonly)
					]]
					local RBXGeneral = TextChatService_upvr:FindFirstChild("RBXGeneral", true)
					if RBXGeneral and RBXGeneral:IsA("TextChannel") then
						class_ChatInputBarConfiguration_upvr.TargetTextChannel = RBXGeneral
					end
				end)
			end
			if class_ChatInputBarConfiguration_upvr.TextBox == nil then
				var46 = false
			else
				var46 = true
			end
			arg1:dispatch(DevTextBoxEnabledChanged_upvr(var46))
			class_ChatInputBarConfiguration_upvr:GetPropertyChangedSignal("TextBox"):Connect(function() -- Line 138
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: DevTextBoxEnabledChanged_upvr (copied, readonly)
					[3]: class_ChatInputBarConfiguration_upvr (readonly)
				]]
				local var54
				if class_ChatInputBarConfiguration_upvr.TextBox == nil then
					var54 = false
				else
					var54 = true
				end
				arg1:dispatch(DevTextBoxEnabledChanged_upvr(var54))
			end)
			arg1.changed:connect(function(arg1_3, arg2_3) -- Line 143
				--[[ Upvalues[1]:
					[1]: class_ChatInputBarConfiguration_upvr (readonly)
				]]
				if arg1_3.TextChannels ~= arg2_3.TextChannels and arg1_3.TextChannels.targetTextChannel ~= arg2_3.TextChannels.targetTextChannel then
					class_ChatInputBarConfiguration_upvr.TargetTextChannel = arg1_3.TextChannels.targetTextChannel
				end
			end)
			local tbl_2 = {}
			var46 = "TextSize"
			tbl_2[1] = "BackgroundTransparency"
			tbl_2[2] = "BackgroundColor3"
			tbl_2[3] = var46
			tbl_2[4] = "TextColor3"
			tbl_2[5] = "TextStrokeColor3"
			tbl_2[6] = "TextStrokeTransparency"
			tbl_2[7] = "FontFace"
			tbl_2[8] = "PlaceholderColor3"
			tbl_2[9] = "KeyboardKeyCode"
			if getEnableChatInputBarConfigurationAutocompleteEnabled_upvr() and class_ChatInputBarConfiguration_upvr.AutocompleteEnabled ~= nil then
				var46 = "AutocompleteEnabled"
				table.insert(tbl_2, var46)
			end
			local _, _, _ = ipairs(tbl_2)
			-- KONSTANTERROR: [8] 7. Error Block 59 end (CF ANALYSIS FAILED)
		end)();
		channelTabsSettings = var39;
	}))
end