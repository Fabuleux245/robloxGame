-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:56
-- Luau version 6, Types version 3
-- Time taken: 0.000804 seconds

local ActionBindingsUpdateSearchFilter_upvr = require(script.Parent.Parent.Actions.ActionBindingsUpdateSearchFilter)
local Immutable_upvr = require(script.Parent.Parent.Immutable)
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[2]:
		[1]: ActionBindingsUpdateSearchFilter_upvr (readonly)
		[2]: Immutable_upvr (readonly)
	]]
	local var4
	if not var4 then
		var4 = {}
		var4.bindingsSearchTerm = ""
	end
	if arg2.type == ActionBindingsUpdateSearchFilter_upvr.name then
		return Immutable_upvr.Set(var4, "bindingsSearchTerm", arg2.searchTerm)
	end
	return var4
end