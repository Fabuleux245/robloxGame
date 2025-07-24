-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:13
-- Luau version 6, Types version 3
-- Time taken: 0.000569 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").dependencies)
local t_upvr = dependencies.t
local llama_upvr = dependencies.llama
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[2]:
		[1]: t_upvr (readonly)
		[2]: llama_upvr (readonly)
	]]
	assert(t_upvr.table(arg2))
	assert(t_upvr.number(arg1))
	return llama_upvr.List.filter(arg2, function(arg1_2, arg2_2) -- Line 10
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var6
		if arg2_2 > arg1 then
			var6 = false
		else
			var6 = true
		end
		return var6
	end)
end