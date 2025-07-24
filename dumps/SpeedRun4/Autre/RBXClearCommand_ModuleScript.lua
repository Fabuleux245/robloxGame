-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:03
-- Luau version 6, Types version 3
-- Time taken: 0.000679 seconds

local module = {
	name = script.Name;
	alias = {"/clear", "/cls"};
}
local ChatWindowMessagesCleared_upvr = require(script:FindFirstAncestor("ExpChatShared").Actions.ChatWindowMessagesCleared)
function module.clientRun(arg1, arg2, arg3) -- Line 10
	--[[ Upvalues[1]:
		[1]: ChatWindowMessagesCleared_upvr (readonly)
	]]
	arg1:dispatch(ChatWindowMessagesCleared_upvr())
	return {
		key = "";
		metadata = "Roblox.Clear.Info.Success";
	}
end
return module