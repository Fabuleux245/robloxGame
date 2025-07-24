-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:23
-- Luau version 6, Types version 3
-- Time taken: 0.000999 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local filterStates_upvr = require(FriendsLanding.Friends.filterStates)
local PresenceType_upvr = require(FriendsLanding.dependencies).RoduxPresence.Enums.PresenceType
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: filterStates_upvr (readonly)
		[2]: PresenceType_upvr (readonly)
	]]
	if arg1 == filterStates_upvr.InExperience then
		return {PresenceType_upvr.InGame, PresenceType_upvr.InStudio}
	end
	if arg1 == filterStates_upvr.Offline then
		return {PresenceType_upvr.Offline}
	end
	if arg1 == filterStates_upvr.Online then
		return {PresenceType_upvr.Online, PresenceType_upvr.InStudio, PresenceType_upvr.InGame}
	end
	return {PresenceType_upvr.Online, PresenceType_upvr.InStudio, PresenceType_upvr.InGame, PresenceType_upvr.Offline}
end