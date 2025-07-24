-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:42
-- Luau version 6, Types version 3
-- Time taken: 0.001068 seconds

local Parent = script:FindFirstAncestor("ExpChat").Parent
local List_upvr = require(Parent.llama).List
local EmojiList_upvr = require(Parent.EmojiList)
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: List_upvr (readonly)
		[2]: EmojiList_upvr (readonly)
	]]
	return List_upvr.sort(arg1, function(arg1_2, arg2) -- Line 10
		--[[ Upvalues[1]:
			[1]: EmojiList_upvr (copied, readonly)
		]]
		local popularity = EmojiList_upvr[arg1_2].popularity
		if popularity == EmojiList_upvr[arg2].popularity then
			if arg1_2 >= arg2 then
				popularity = false
			else
				popularity = true
			end
			return popularity
		end
		if EmojiList_upvr[arg1_2].popularity >= EmojiList_upvr[arg2].popularity then
			popularity = false
		else
			popularity = true
		end
		return popularity
	end)
end