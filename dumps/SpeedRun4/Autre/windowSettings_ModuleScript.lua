-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:12
-- Luau version 6, Types version 3
-- Time taken: 0.001307 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Config = require(ExpChat.Config)
local Actions = ExpChat.Actions
return require(Parent.Rodux).createReducer({
	Font = Config.ChatWindowFont;
	TextColor3 = Config.ChatWindowTextColor3;
	TextSize = Config.ChatWindowTextSize;
	TextStrokeColor3 = Config.ChatWindowTextStrokeColor;
	TextStrokeTransparency = Config.ChatWindowTextStrokeTransparency;
	BackgroundColor3 = Config.ChatWindowBackgroundColor3;
	BackgroundTransparency = Config.ChatWindowBackgroundTransparency;
	HeightScale = 1;
	WidthScale = 1;
	SpatialPanelTextSize = Config.ChatWindowSpatialPanelTextSize;
}, {
	[require(Actions.ConfigurationObjectsLoaded).name] = function(arg1, arg2) -- Line 26
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		return Dictionary_upvr.join(arg1, arg2.chatWindowSettings)
	end;
	[require(Actions.ChatWindowSettingsChanged).name] = function(arg1, arg2) -- Line 30
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