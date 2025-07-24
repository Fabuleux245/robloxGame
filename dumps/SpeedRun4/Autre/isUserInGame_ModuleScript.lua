-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:24
-- Luau version 6, Types version 3
-- Time taken: 0.000746 seconds

local PresenceType_upvr = require(script:FindFirstAncestor("FriendsLanding").dependencies).RoduxPresence.Enums.PresenceType
return function(arg1) -- Line 11
	--[[ Upvalues[1]:
		[1]: PresenceType_upvr (readonly)
	]]
	if not arg1 then
		return false
	end
	assert(arg1, "user modal must be non-nil")
	if arg1.userPresenceType ~= PresenceType_upvr.InGame or not arg1.lastLocation or arg1.lastLocation == "" then
	end
	return false
end