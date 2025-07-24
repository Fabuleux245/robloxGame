-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:58
-- Luau version 6, Types version 3
-- Time taken: 0.000384 seconds

return require(game:GetService("CorePackages").Packages.Rodux).combineReducers({
	chatSettings = require(script.Parent.chatSettings);
	messages = require(script.Parent.messages);
	userMessages = require(script.Parent.userMessages);
	voiceState = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.VoiceChat.Reducers.voiceState);
	components = require(script.Parent.components);
})