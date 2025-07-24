-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:41
-- Luau version 6, Types version 3
-- Time taken: 0.000699 seconds

local Parent = script:FindFirstAncestor("ExpChat").Parent
local List_upvr = require(Parent.llama).List
local any_keys_result1_upvr = require(Parent.llama).Dictionary.keys(require(Parent.EmojiList))
return function(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: List_upvr (readonly)
		[2]: any_keys_result1_upvr (readonly)
	]]
	List_upvr.map(any_keys_result1_upvr, function(arg1_2) -- Line 10
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.trie:insert(arg1_2)
	end)
	return arg1.trie
end