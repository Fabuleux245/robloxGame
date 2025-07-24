-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:56
-- Luau version 6, Types version 3
-- Time taken: 0.000517 seconds

local LegacyFriendsRodux = script:FindFirstAncestor("LegacyFriendsRodux")
local UpdateFriendPresenceCounts_upvr = require(LegacyFriendsRodux.Actions).UpdateFriendPresenceCounts
local Cryo_upvr = require(LegacyFriendsRodux.Parent.Cryo)
return function(arg1, arg2) -- Line 8
	--[[ Upvalues[2]:
		[1]: UpdateFriendPresenceCounts_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local var5 = arg1
	if not var5 then
		var5 = {}
	end
	arg1 = var5
	local var6 = arg1
	if arg2.type == UpdateFriendPresenceCounts_upvr.name then
		var6 = Cryo_upvr.Dictionary.join({}, arg2.presenceCounts)
	end
	return var6
end