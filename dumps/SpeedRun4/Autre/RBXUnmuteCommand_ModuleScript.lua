-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:06
-- Luau version 6, Types version 3
-- Time taken: 0.001151 seconds

local module = {
	name = script.Name;
	alias = {"/unmute", "/um"};
}
local getPlayersFromString_upvr = require(script.Parent.getPlayersFromString)
local UserUnmuted_upvr = require(script:FindFirstAncestor("ExpChatShared").Actions.UserUnmuted)
function module.clientRun(arg1, arg2, arg3) -- Line 11
	--[[ Upvalues[2]:
		[1]: getPlayersFromString_upvr (readonly)
		[2]: UserUnmuted_upvr (readonly)
	]]
	local _2 = string.split(arg3, ' ')[2]
	if not _2 then
		return {
			key = "CoreScripts.TextChat.Mute.Error.TargetDoesNotExist";
			args = {
				RBX_NAME = "";
			};
			metadata = "Roblox.Unmute.Error.PlayerNotFound";
		}
	end
	local var3_result1 = getPlayersFromString_upvr(arg1:getState().Players, _2)
	if #var3_result1 == 0 then
		return {
			key = "CoreScripts.TextChat.Mute.Error.TargetDoesNotExist";
			args = {
				RBX_NAME = _2;
			};
			metadata = "Roblox.Unmute.Error.PlayerNotFound";
		}
	end
	if 1 < #var3_result1 then
		return {
			key = "InGame.Chat.Response.DisplayNameMultipleMatches";
			args = {};
			metadata = "Roblox.Unmute.Error.MultipleMatches";
		}
	end
	local _1 = var3_result1[1]
	if _1.userId == tostring(arg2) then
		return {
			key = "CoreScripts.TextChat.Mute.Error.CannotMuteSelf";
			args = {};
			metadata = "Roblox.Unmute.Error.CannotMuteSelf";
		}
	end
	arg1:dispatch(UserUnmuted_upvr(_1.userId))
	return {
		key = "CoreScripts.TextChat.Unmute.Success";
		args = {
			RBX_NAME = _1.nameToDisplay;
		};
		metadata = "Roblox.Unmute.Info.Success";
	}
end
return module