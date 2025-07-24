-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:12
-- Luau version 6, Types version 3
-- Time taken: 0.000704 seconds

local t = require(script:FindFirstAncestor("FriendsLanding").dependencies).t
local any_interface_result1_upvr = t.interface({
	width = t.number;
	itemSize = t.number;
	minimumItemsPerRow = t.optional(t.number);
})
return function(arg1) -- Line 13
	--[[ Upvalues[1]:
		[1]: any_interface_result1_upvr (readonly)
	]]
	assert(any_interface_result1_upvr(arg1))
	return math.max(math.floor(arg1.width / arg1.itemSize), arg1.minimumItemsPerRow or 2)
end