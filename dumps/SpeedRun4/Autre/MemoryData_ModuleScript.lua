-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:01
-- Luau version 6, Types version 3
-- Time taken: 0.000628 seconds

local ClientMemoryUpdateSearchFilter_upvr = require(script.Parent.Parent.Actions.ClientMemoryUpdateSearchFilter)
local Immutable_upvr = require(script.Parent.Parent.Immutable)
local ServerMemoryUpdateSearchFilter_upvr = require(script.Parent.Parent.Actions.ServerMemoryUpdateSearchFilter)
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[3]:
		[1]: ClientMemoryUpdateSearchFilter_upvr (readonly)
		[2]: Immutable_upvr (readonly)
		[3]: ServerMemoryUpdateSearchFilter_upvr (readonly)
	]]
	if not arg1 then
		local module = {
			clientSearchTerm = "";
			serverSearchTerm = "";
		}
	end
	if arg2.type == ClientMemoryUpdateSearchFilter_upvr.name then
		return Immutable_upvr.Set(module, "clientSearchTerm", arg2.searchTerm)
	end
	if arg2.type == ServerMemoryUpdateSearchFilter_upvr.name then
		return Immutable_upvr.Set(module, "serverSearchTerm", arg2.searchTerm)
	end
	return module
end