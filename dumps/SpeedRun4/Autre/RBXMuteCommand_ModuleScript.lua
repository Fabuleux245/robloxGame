-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:05
-- Luau version 6, Types version 3
-- Time taken: 0.001190 seconds

local module = {
	name = script.Name;
	alias = {"/mute", "/m"};
}
local getPlayersFromString_upvr = require(script.Parent.getPlayersFromString)
local UserMuted_upvr = require(script:FindFirstAncestor("ExpChatShared").Actions.UserMuted)
function module.clientRun(arg1, arg2, arg3) -- Line 11
	--[[ Upvalues[2]:
		[1]: getPlayersFromString_upvr (readonly)
		[2]: UserMuted_upvr (readonly)
	]]
	local _2 = string.split(arg3, ' ')[2]
	if not _2 then
		return {
			key = "CoreScripts.TextChat.Mute.Error.TargetDoesNotExist";
			args = {
				RBX_NAME = "";
			};
			metadata = "Roblox.Mute.Error.PlayerNotFound";
		}
	end
	local var3_result1 = getPlayersFromString_upvr(arg1:getState().Players, _2)
	if #var3_result1 == 0 then
		return {
			key = "CoreScripts.TextChat.Mute.Error.TargetDoesNotExist";
			args = {
				RBX_NAME = _2;
			};
			metadata = "Roblox.Mute.Error.PlayerNotFound";
		}
	end
	if 1 < #var3_result1 then
		return {
			key = "CoreScripts.TextChat.Mute.Error.MultipleMatches";
			args = {};
			metadata = "Roblox.Mute.Error.MultipleMatches";
		}
	end
	local _1 = var3_result1[1]
	if _1.userId == tostring(arg2) then
		return {
			key = "CoreScripts.TextChat.Mute.Error.CannotMuteSelf";
			args = {};
			metadata = "Roblox.Mute.Error.CannotMuteSelf";
		}
	end
	arg1:dispatch(UserMuted_upvr(_1.userId))
	return {
		key = "CoreScripts.TextChat.Mute.Success";
		args = {
			RBX_NAME = _1.nameToDisplay;
		};
		metadata = "Roblox.Mute.Info.Success";
	}
end
return module