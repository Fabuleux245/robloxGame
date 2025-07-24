-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:10
-- Luau version 6, Types version 3
-- Time taken: 0.001392 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Config = require(ExpChat.Config)
local Actions = ExpChat.Actions
return require(Parent.Rodux).createReducer({
	BackgroundTransparency = Config.ChannelTabsSettings.BackgroundTransparency;
	BackgroundColor3 = Config.ChannelTabsSettings.BackgroundColor3;
	HoverBackgroundColor3 = Config.ChannelTabsSettings.HoverBackgroundColor3;
	FontFace = Config.ChannelTabsSettings.FontFace;
	TextSize = Config.ChannelTabsSettings.TextSize;
	TextColor3 = Config.ChannelTabsSettings.TextColor3;
	SelectedTabTextColor3 = Config.ChannelTabsSettings.SelectedTabTextColor3;
	TextStrokeColor3 = Config.ChannelTabsSettings.TextStrokeColor3;
	TextStrokeTransparency = Config.ChannelTabsSettings.TextStrokeTransparency;
}, {
	[require(Actions.ConfigurationObjectsLoaded).name] = function(arg1, arg2) -- Line 25
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		return Dictionary_upvr.join(arg1, arg2.channelTabsSettings)
	end;
	[require(Actions.ChannelTabsSettingsChanged).name] = function(arg1, arg2) -- Line 29
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		if not arg1[arg2.property] then
			return arg1
		end
		return Dictionary_upvr.join(arg1, {
			[arg2.property] = arg2.value;
		})
	end;
})