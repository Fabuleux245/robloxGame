-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:37
-- Luau version 6, Types version 3
-- Time taken: 0.000948 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local GetFFlagFriendsMenuDummyLoadingFriendsFix_upvr = require(FriendsMenu.Parent.SharedFlags).GetFFlagFriendsMenuDummyLoadingFriendsFix
local Constants_upvr = require(FriendsMenu.Constants)
local function var2_upvr(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: GetFFlagFriendsMenuDummyLoadingFriendsFix_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local module = {
		displayName = "";
	}
	module.friendFrequentRank = arg1
	module.friendRank = arg1
	module.hasVerifiedBadge = false
	local var6
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var6 = Constants_upvr.DummyFriendsPrefix..tostring(arg1)
		return var6
	end
	if not GetFFlagFriendsMenuDummyLoadingFriendsFix_upvr() or not INLINED() then
		var6 = tostring(arg1)
	end
	module.id = var6
	var6 = true
	module.isFetching = var6
	var6 = true
	module.isFriend = var6
	var6 = ""
	module.lastLocation = var6
	var6 = DateTime.now()
	module.lastOnline = var6
	var6 = ""
	module.name = var6
	var6 = ""
	module.presence = var6
	var6 = true
	module.isLoadingPlaceholder = var6
	return module
end
return function(arg1) -- Line 28
	--[[ Upvalues[1]:
		[1]: var2_upvr (readonly)
	]]
	local module_2 = {}
	for i = 1, arg1 do
		module_2[i] = var2_upvr(i)
	end
	return module_2
end