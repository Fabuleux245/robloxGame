-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:07
-- Luau version 6, Types version 3
-- Time taken: 0.001623 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Actions = ExpChat.Actions
local LegacyDefaultSettings_upvr = require(script.Parent.LegacyDefaultSettings)
return require(Parent.Rodux).createReducer(LegacyDefaultSettings_upvr, {
	[require(Actions.LegacyBubbleChatEnabledChanged).name] = function(arg1, arg2) -- Line 14
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		return Dictionary_upvr.join(arg1, {
			Enabled = arg2.value;
		})
	end;
	[require(Actions.LegacyBubbleChatSettingsChanged).name] = function(arg1, arg2) -- Line 20
		--[[ Upvalues[2]:
			[1]: Dictionary_upvr (readonly)
			[2]: LegacyDefaultSettings_upvr (readonly)
		]]
		local chatSettings = arg2.chatSettings
		if chatSettings.Transparency then
			chatSettings.BackgroundTransparency = chatSettings.Transparency
		end
		if chatSettings and chatSettings.UserSpecificSettings then
			for i, v in pairs(chatSettings.UserSpecificSettings) do
				local any_copyDeep_result1 = Dictionary_upvr.copyDeep(LegacyDefaultSettings_upvr)
				if v.Transparency then
					v.BackgroundTransparency = v.Transparency
				end
				any_copyDeep_result1.UserSpecificSettings = nil
				Dictionary_upvr.join(LegacyDefaultSettings_upvr, chatSettings).UserSpecificSettings[i] = Dictionary_upvr.join(any_copyDeep_result1, v)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Dictionary_upvr.join(LegacyDefaultSettings_upvr, chatSettings)
	end;
})