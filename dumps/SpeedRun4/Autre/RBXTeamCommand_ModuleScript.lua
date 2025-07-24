-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:05
-- Luau version 6, Types version 3
-- Time taken: 0.001053 seconds

local ExpChatShared = script:FindFirstAncestor("ExpChatShared")
local module = {
	name = script.Name;
	alias = {"/team", "/t", "%%"};
}
local ChatInputBarActivatedTeamMode_upvr = require(ExpChatShared.Actions.ChatInputBarActivatedTeamMode)
local any_new_result1_upvr = require(ExpChatShared.Logger):new("ExpChat/Command/Team")
function module.clientRun(arg1, arg2, arg3) -- Line 12
	--[[ Upvalues[2]:
		[1]: ChatInputBarActivatedTeamMode_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
	]]
	if arg1:getState().LocalTeam then
		arg1:dispatch(ChatInputBarActivatedTeamMode_upvr())
		return {
			key = "";
			metadata = "Roblox.Team.Info.Success";
		}
	end
	any_new_result1_upvr:debug("Could not team chat because not in team")
	return {
		key = "CoreScripts.TextChat.TeamChat.Error.NotOnTeam";
		metadata = "Roblox.Team.Error.CannotTeamChatIfNotInTeam";
	}
end
return module