-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:19
-- Luau version 6, Types version 3
-- Time taken: 0.000556 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").AddFriends.dependencies)
local t_upvr = dependencies.t
local llama_upvr = dependencies.llama
return function(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: t_upvr (readonly)
		[2]: llama_upvr (readonly)
	]]
	assert(t_upvr.table(arg1))
	return llama_upvr.List.sort(arg1, function(arg1_2, arg2) -- Line 19
		local order = arg2.order
		if (arg1_2.order or 9999999) >= (order or 9999999) then
			order = false
		else
			order = true
		end
		return order
	end)
end