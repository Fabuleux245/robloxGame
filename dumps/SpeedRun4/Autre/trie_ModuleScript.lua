-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:43
-- Luau version 6, Types version 3
-- Time taken: 0.001530 seconds

local TrieNode_upvr = require(script:FindFirstAncestor("Autocomplete").Trie.TrieNode)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 11
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: TrieNode_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_upvr)
	module.root = TrieNode_upvr.new("")
	return module
end
function module_upvr.insert(arg1, arg2) -- Line 18
	--[[ Upvalues[1]:
		[1]: TrieNode_upvr (readonly)
	]]
	local var6
	for i = 1, #arg2 do
		local string_sub_result1_2 = string.sub(arg2, i, i)
		if not var6.children[string_sub_result1_2] then
			var6.children[string_sub_result1_2] = TrieNode_upvr.new(string_sub_result1_2)
		end
		var6 = var6.children[string_sub_result1_2]
	end
	var6.isEndOfWord = true
end
function module_upvr.autocomplete(arg1, arg2) -- Line 30
	local var10
	for i_2 = 1, #arg2 do
		local string_sub_result1 = string.sub(arg2, i_2, i_2)
		if var10.children[string_sub_result1] then
			var10 = var10.children[string_sub_result1]
		else
			return {}
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return arg1:helper(var10, {}, string.sub(arg2, 1, #arg2 - 1))
end
local List_upvr = require(script:FindFirstAncestor("ExpChat").Parent.llama).List
function module_upvr.helper(arg1, arg2, arg3, arg4) -- Line 45
	--[[ Upvalues[1]:
		[1]: List_upvr (readonly)
	]]
	local var17
	if arg2.isEndOfWord then
		var17 = List_upvr.push(var17, arg4..arg2.data)
	end
	for _, v in pairs(arg2.children) do
		var17 = arg1:helper(v, var17, arg4..arg2.data)
	end
	return var17
end
return module_upvr