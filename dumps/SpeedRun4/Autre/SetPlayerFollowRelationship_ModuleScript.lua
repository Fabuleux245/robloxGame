-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:40
-- Luau version 6, Types version 3
-- Time taken: 0.000310 seconds

return require(script.Parent.Parent.ActionCreator)("SetPlayerFollowRelationship", function(arg1, arg2, arg3) -- Line 4
	local module = {}
	module.player = arg1
	module.userId = arg1.UserId
	module.isFollower = arg2
	module.isFollowing = arg3
	return module
end)