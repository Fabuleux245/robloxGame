-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:28
-- Luau version 6, Types version 3
-- Time taken: 0.001060 seconds

local llama_upvr = require(script:FindFirstAncestor("FriendsLanding").dependencies).llama
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: llama_upvr (readonly)
	]]
	local tbl_3 = {}
	local tbl_2 = {}
	local tbl_4 = {}
	local tbl = {}
	for i, v in pairs(arg1.responseBody.data) do
		local concatenated = table.concat(llama_upvr.List.map(v.mutualFriendsList, function(arg1_2) -- Line 14
			return arg1_2
		end), ',')
		table.insert(tbl_3, concatenated)
		if v.friendRequest.sourceUniverseId then
			concatenated = v.friendRequest.sourceUniverseId
		else
			concatenated = 0
		end
		table.insert(tbl_2, concatenated)
		table.insert(tbl_4, v.friendRequest.senderId)
		table.insert(tbl, i)
	end
	return {
		page = "friendRequests";
		requestingUserId = table.concat(tbl_4, ',');
		gamesContext = table.concat(tbl_2, ',');
		absPosition = table.concat(tbl, ',');
		mutualFriendsContext = table.concat(tbl_3, ';');
	}
end