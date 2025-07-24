-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:17
-- Luau version 6, Types version 3
-- Time taken: 0.000672 seconds

local ExpChatShared = script:FindFirstAncestor("ExpChatShared")
local Parent = ExpChatShared.Parent
local Commands = ExpChatShared.Commands
local RBXWhisperCommand = require(Commands.Whisper.RBXWhisperCommand)
local RBXTeamCommand = require(Commands.RBXTeamCommand)
local module = {}
local Dictionary_upvr = require(Parent.llama).Dictionary
module[require(ExpChatShared.Actions.CommandAliasChanged).name] = function(arg1, arg2) -- Line 25
	--[[ Upvalues[1]:
		[1]: Dictionary_upvr (readonly)
	]]
	return Dictionary_upvr.join(arg1, {
		[arg2.name] = {
			primaryAlias = arg2.primaryAlias;
			secondaryAlias = arg2.secondaryAlias;
		};
	})
end
return require(Parent.Rodux).createReducer({
	RBXWhisperCommand = {
		primaryAlias = RBXWhisperCommand.alias[1];
		secondaryAlias = RBXWhisperCommand.alias[2];
	};
	RBXTeamCommand = {
		primaryAlias = RBXTeamCommand.alias[1];
		secondaryAlias = RBXTeamCommand.alias[2];
	};
}, module)