-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:23
-- Luau version 6, Types version 3
-- Time taken: 0.000953 seconds

local PresenceType_upvr = require(script:FindFirstAncestor("FriendsLanding").dependencies).RoduxPresence.Enums.PresenceType
local isUserInGame_upvr = require(script.Parent.isUserInGame)
return function(arg1) -- Line 10
	--[[ Upvalues[2]:
		[1]: PresenceType_upvr (readonly)
		[2]: isUserInGame_upvr (readonly)
	]]
	if not arg1 then
		return nil
	end
	assert(arg1, "")
	local userPresenceType = arg1.userPresenceType
	local var5
	if userPresenceType == var5 then
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var5 = PresenceType_upvr.InGame
			return var5
		end
		if not isUserInGame_upvr(arg1) or not INLINED() then
			var5 = PresenceType_upvr.Online
		end
		return var5
	end
	return userPresenceType
end