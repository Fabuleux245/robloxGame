-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:48
-- Luau version 6, Types version 3
-- Time taken: 0.000369 seconds

local Rodux_upvr = require(script:FindFirstAncestor("FriendsRodux").Parent.Rodux)
local followingStatuses_upvr = require(script.followingStatuses)
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: Rodux_upvr (readonly)
		[2]: followingStatuses_upvr (readonly)
	]]
	return Rodux_upvr.combineReducers({
		followingStatuses = followingStatuses_upvr(arg1);
	})
end