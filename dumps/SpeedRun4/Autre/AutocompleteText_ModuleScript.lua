-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:40
-- Luau version 6, Types version 3
-- Time taken: 0.000570 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local Trie_upvr = require(script:FindFirstAncestor("Autocomplete").Trie.Trie)
function module_2_upvr.new(arg1) -- Line 11
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: Trie_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module.trie = Trie_upvr.new()
	module.trie = arg1(module)
	return module
end
function module_2_upvr.getResults(arg1, arg2, arg3) -- Line 22
	local any_autocomplete_result1 = arg1.trie:autocomplete(arg2)
	if arg3 then
		return arg3(any_autocomplete_result1)
	end
	return any_autocomplete_result1
end
return module_2_upvr