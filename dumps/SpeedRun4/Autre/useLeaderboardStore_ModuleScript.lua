-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:47
-- Luau version 6, Types version 3
-- Time taken: 0.000309 seconds

local Parent = script.Parent.Parent
local React_upvr = require(Parent.Parent.React)
local LeaderboardStoreContext_upvr = require(Parent.Common.LeaderboardStoreContext)
return function() -- Line 8, Named "useLeaderboardStore"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: LeaderboardStoreContext_upvr (readonly)
	]]
	return React_upvr.useContext(LeaderboardStoreContext_upvr)
end