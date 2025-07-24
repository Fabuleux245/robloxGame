-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:03
-- Luau version 6, Types version 3
-- Time taken: 0.000727 seconds

local ClientScriptsUpdateSearchFilter_upvr = require(script.Parent.Parent.Actions.ClientScriptsUpdateSearchFilter)
local Immutable_upvr = require(script.Parent.Parent.Immutable)
local ServerScriptsUpdateSearchFilter_upvr = require(script.Parent.Parent.Actions.ServerScriptsUpdateSearchFilter)
return function(arg1, arg2) -- Line 13
	--[[ Upvalues[3]:
		[1]: ClientScriptsUpdateSearchFilter_upvr (readonly)
		[2]: Immutable_upvr (readonly)
		[3]: ServerScriptsUpdateSearchFilter_upvr (readonly)
	]]
	if not arg1 then
		local module = {
			clientSearchTerm = "";
			clientTypeFilters = {};
			serverSearchTerm = "";
			serverTypeFilters = {};
		}
	end
	if arg2.type == ClientScriptsUpdateSearchFilter_upvr.name then
		return Immutable_upvr.JoinDictionaries(module, {
			clientSearchTerm = arg2.searchTerm;
			clientTypeFilters = Immutable_upvr.JoinDictionaries(module.clientTypeFilters, arg2.filterTypes);
		})
	end
	if arg2.type == ServerScriptsUpdateSearchFilter_upvr.name then
		return Immutable_upvr.JoinDictionaries(module, {
			serverSearchTerm = arg2.searchTerm;
			serverTypeFilters = Immutable_upvr.JoinDictionaries(module.serverTypeFilters, arg2.filterTypes);
		})
	end
	return module
end