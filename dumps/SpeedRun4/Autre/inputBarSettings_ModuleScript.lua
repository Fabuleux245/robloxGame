-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:11
-- Luau version 6, Types version 3
-- Time taken: 0.001587 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Config = require(ExpChat.Config)
local Actions = ExpChat.Actions
local module = {
	[require(Actions.ConfigurationObjectsLoaded).name] = function(arg1, arg2) -- Line 28
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		return Dictionary_upvr.join(arg1, arg2.chatInputBarSettings)
	end;
}
local None_upvr = require(Parent.llama).None
module[require(Actions.ChatInputBarSettingsChanged).name] = function(arg1, arg2) -- Line 32
	--[[ Upvalues[2]:
		[1]: None_upvr (readonly)
		[2]: Dictionary_upvr (readonly)
	]]
	if arg1[arg2.property] == nil and arg2.property ~= "TextBox" then
		return arg1
	end
	local var11
	if arg2.property == "TextBox" and arg2.value == nil then
		var11 = None_upvr
	else
		var11 = arg2.value
	end
	return Dictionary_upvr.join(arg1, {
		[arg2.property] = var11;
	})
end
return require(Parent.Rodux).createReducer({
	BackgroundTransparency = Config.ChatInputBarBackgroundTransparency;
	BackgroundColor3 = Config.ChatInputBarBackgroundColor;
	TextSize = Config.ChatInputBarTextSize;
	TextColor3 = Config.ChatInputBarTextColor3;
	SpatialPanelTextSize = Config.ChatInputBarSpatialPanelTextSize;
	TextStrokeColor3 = Config.ChatInputBarTextStrokeColor;
	TextStrokeTransparency = Config.ChatInputBarTextStrokeTransparency;
	FontFace = Config.ChatInputBarFontFace;
	PlaceholderColor3 = Config.ChatInputBarPlaceholderColor;
	KeyboardKeyCode = Config.ChatInputBarDefaultFocusKeyCode;
	AutocompleteEnabled = Config.ChatInputBarDefaultAutocompleteEnabled;
}, module)