-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:00
-- Luau version 6, Types version 3
-- Time taken: 0.000593 seconds

local RBXConsoleCommand = require(script.RBXConsoleCommand)
local RBXHelpCommand = require(script.RBXHelpCommand)
local RBXMuteCommand = require(script.RBXMuteCommand)
local RBXUnmuteCommand = require(script.RBXUnmuteCommand)
local RBXVersionCommand = require(script.RBXVersionCommand)
local RBXEmoteCommand = require(script.RBXEmoteCommand)
local RBXTeamCommand = require(script.RBXTeamCommand)
local RBXClearCommand = require(script.RBXClearCommand)
return {
	enabledCommands = {RBXConsoleCommand, RBXHelpCommand, RBXMuteCommand, RBXUnmuteCommand, RBXVersionCommand, RBXEmoteCommand, RBXTeamCommand, require(script.Whisper).RBXWhisperCommand, RBXClearCommand};
	autoCastCommand = require(script.autoCastCommand);
	RBXClearCommand = RBXClearCommand;
	RBXConsoleCommand = RBXConsoleCommand;
	RBXEmoteCommand = RBXEmoteCommand;
	RBXHelpCommand = RBXHelpCommand;
	RBXMuteCommand = RBXMuteCommand;
	RBXTeamCommand = RBXTeamCommand;
	RBXUnmuteCommand = RBXUnmuteCommand;
	RBXVersionCommand = RBXVersionCommand;
	Whisper = require(script.Whisper);
}