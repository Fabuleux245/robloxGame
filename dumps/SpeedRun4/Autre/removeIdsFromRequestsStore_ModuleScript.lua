-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:00
-- Luau version 6, Types version 3
-- Time taken: 0.000488 seconds

local llama_upvr = require(script:FindFirstAncestor("FriendsRodux").Parent.llama)
return function(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: llama_upvr (readonly)
	]]
	local module = {}
	for _, v in pairs(arg2) do
		module[v] = llama_upvr.None
	end
	return llama_upvr.Dictionary.join(arg1, module)
end