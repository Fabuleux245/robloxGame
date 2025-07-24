-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:55
-- Luau version 6, Types version 3
-- Time taken: 0.000393 seconds

local SetFriendCount_upvr = require(script:FindFirstAncestor("LegacyFriendsRodux").Actions).SetFriendCount
return function(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: SetFriendCount_upvr (readonly)
	]]
	arg1 = arg1 or 0
	local var3 = arg1
	if arg2.type == SetFriendCount_upvr.name then
		var3 = arg2.count
	end
	return var3
end