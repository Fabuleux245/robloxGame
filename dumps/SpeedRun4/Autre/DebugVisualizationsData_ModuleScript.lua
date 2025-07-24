-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:57
-- Luau version 6, Types version 3
-- Time taken: 0.000718 seconds

local Immutable_upvr = require(script.Parent.Parent.Immutable)
local DebugVisualizationsUpdateSearchFilter_upvr = require(script.Parent.Parent.Actions.DebugVisualizationsUpdateSearchFilter)
return function(arg1, arg2) -- Line 5
	--[[ Upvalues[2]:
		[1]: Immutable_upvr (readonly)
		[2]: DebugVisualizationsUpdateSearchFilter_upvr (readonly)
	]]
	local var4
	if not arg1 then
		local module = {}
		var4 = ""
		module.debugVisualizationsSearchTerm = var4
		var4 = {}
		module.debugVisualizationsTypeFilters = var4
	end
	var4 = nil
	if arg2.filterTypes == nil then
		var4 = module.debugVisualizationsTypeFilters
	else
		var4 = Immutable_upvr.JoinDictionaries(module.debugVisualizationsTypeFilters, arg2.filterTypes)
	end
	if arg2.type == DebugVisualizationsUpdateSearchFilter_upvr.name then
		return Immutable_upvr.JoinDictionaries(module, {
			debugVisualizationsSearchTerm = arg2.searchTerm;
			debugVisualizationsTypeFilters = var4;
		})
	end
	return module
end