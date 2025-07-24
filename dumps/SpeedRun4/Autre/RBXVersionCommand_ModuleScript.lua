-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:06
-- Luau version 6, Types version 3
-- Time taken: 0.000497 seconds

local module = {
	name = script.Name;
	alias = {"/version", "/v"};
}
local Version_upvr = require(script:FindFirstAncestor("ExpChatShared").Version)
function module.clientRun() -- Line 8
	--[[ Upvalues[1]:
		[1]: Version_upvr (readonly)
	]]
	return {
		key = "CoreScripts.TextChat.Version.Success";
		metadata = "Roblox.Version.Info.Success";
		args = {
			RBX_VERSION = string.format("%s (%s)", Version_upvr[1], Version_upvr[2]);
		};
	}
end
return module