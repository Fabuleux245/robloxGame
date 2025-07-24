-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:13
-- Luau version 6, Types version 3
-- Time taken: 0.001060 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").dependencies)
local t = dependencies.t
local any_interface_result1_upvr = t.interface({
	width = t.number;
	filterFriendCounts = t.table;
})
local any_interface_result1_upvr_2 = t.interface({
	visibleRows = t.number;
	itemSize = t.number;
	filter = t.string;
})
local friendsPerLoadGroup_upvr = require(script.Parent.friendsPerLoadGroup)
local llama_upvr = dependencies.llama
return function(arg1, arg2) -- Line 19
	--[[ Upvalues[4]:
		[1]: any_interface_result1_upvr (readonly)
		[2]: any_interface_result1_upvr_2 (readonly)
		[3]: friendsPerLoadGroup_upvr (readonly)
		[4]: llama_upvr (readonly)
	]]
	assert(any_interface_result1_upvr(arg1))
	assert(any_interface_result1_upvr_2(arg2))
	return {
		filterFriendCounts = llama_upvr.Dictionary.join(arg1.filterFriendCounts, {
			[arg2.filter] = arg1.filterFriendCounts[arg2.filter] + friendsPerLoadGroup_upvr(arg1, arg2);
		});
	}
end