-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:02
-- Luau version 6, Types version 3
-- Time taken: 0.001070 seconds

local ClientNetworkUpdateSearchFilter_upvr = require(script.Parent.Parent.Actions.ClientNetworkUpdateSearchFilter)
local Immutable_upvr = require(script.Parent.Parent.Immutable)
local ServerNetworkUpdateSearchFilter_upvr = require(script.Parent.Parent.Actions.ServerNetworkUpdateSearchFilter)
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[3]:
		[1]: ClientNetworkUpdateSearchFilter_upvr (readonly)
		[2]: Immutable_upvr (readonly)
		[3]: ServerNetworkUpdateSearchFilter_upvr (readonly)
	]]
	if not arg1 then
		local module = {
			clientSearchTerm = "";
			serverSearchTerm = "";
		}
	end
	if arg2.type == ClientNetworkUpdateSearchFilter_upvr.name then
		return Immutable_upvr.Set(module, "clientSearchTerm", arg2.searchTerm)
	end
	if arg2.type == ServerNetworkUpdateSearchFilter_upvr.name then
		return Immutable_upvr.Set(module, "serverSearchTerm", arg2.searchTerm)
	end
	return module
end