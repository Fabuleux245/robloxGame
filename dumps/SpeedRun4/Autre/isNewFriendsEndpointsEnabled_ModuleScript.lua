-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:32
-- Luau version 6, Types version 3
-- Time taken: 0.000372 seconds

local ThrottleUserId_upvr = require(script:FindFirstAncestor("SharedFlags").Parent.AppCommonLib).ThrottleUserId
local Players_upvr = game:GetService("Players")
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: ThrottleUserId_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	return ThrottleUserId_upvr(game:DefineFastInt("LuaChatUseNewFriendsEndpointsV2", 0), Players_upvr.LocalPlayer.UserId)
end