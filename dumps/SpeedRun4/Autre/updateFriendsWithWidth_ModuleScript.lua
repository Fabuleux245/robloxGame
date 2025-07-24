-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:14
-- Luau version 6, Types version 3
-- Time taken: 0.000805 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").dependencies)
local t = dependencies.t
local any_interface_result1_upvr = t.interface({
	visibleRows = t.number;
	itemSize = t.number;
	filter = t.string;
})
local any_interface_result1_upvr_2 = t.interface({
	filterFriendCounts = t.table;
})
local friendsPerLoadGroup_upvr = require(script.Parent.friendsPerLoadGroup)
local Dictionary_upvr = dependencies.llama.Dictionary
return function(arg1) -- Line 20
	--[[ Upvalues[4]:
		[1]: any_interface_result1_upvr (readonly)
		[2]: any_interface_result1_upvr_2 (readonly)
		[3]: friendsPerLoadGroup_upvr (readonly)
		[4]: Dictionary_upvr (readonly)
	]]
	return function(arg1_2, arg2) -- Line 21
		--[[ Upvalues[5]:
			[1]: any_interface_result1_upvr (copied, readonly)
			[2]: any_interface_result1_upvr_2 (copied, readonly)
			[3]: friendsPerLoadGroup_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Dictionary_upvr (copied, readonly)
		]]
		assert(any_interface_result1_upvr(arg2))
		assert(any_interface_result1_upvr_2(arg1_2))
		local tbl = {}
		tbl.width = arg1
		local module = {}
		module.width = arg1
		local friendsPerLoadGroup_upvr_result1_upvr = friendsPerLoadGroup_upvr(tbl, arg2)
		module.filterFriendCounts = Dictionary_upvr.join(arg1_2.filterFriendCounts, Dictionary_upvr.map(arg1_2.filterFriendCounts, function(arg1_3) -- Line 31
			--[[ Upvalues[1]:
				[1]: friendsPerLoadGroup_upvr_result1_upvr (readonly)
			]]
			return math.max(friendsPerLoadGroup_upvr_result1_upvr, arg1_3)
		end))
		return module
	end
end