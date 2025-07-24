-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:12
-- Luau version 6, Types version 3
-- Time taken: 0.000572 seconds

local UserModel_upvr = require(script:FindFirstAncestor("SocialLibraries").dependencies).UserModel
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: UserModel_upvr (readonly)
	]]
	local presence = arg1.presence
	local lastLocation = arg1.lastLocation
	if presence == UserModel_upvr.PresenceType.OFFLINE then
		return "Common.Presence.Label.Offline"
	end
	if presence == UserModel_upvr.PresenceType.ONLINE then
		return "Common.Presence.Label.Online"
	end
	if presence == UserModel_upvr.PresenceType.IN_GAME or presence == UserModel_upvr.PresenceType.IN_STUDIO then
		if lastLocation then
			return tostring(lastLocation)
		end
		return "Common.Presence.Label.Online"
	end
	return ""
end