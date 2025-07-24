-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:20
-- Luau version 6, Types version 3
-- Time taken: 0.000878 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local PresenceType_upvr = require(Parent.GraphQLServer).types.PresenceType
local UserModel_upvr = require(Parent.UserLib).Models.UserModel
return function(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: PresenceType_upvr (readonly)
		[2]: UserModel_upvr (readonly)
	]]
	if arg1 == PresenceType_upvr.Online then
		return UserModel_upvr.PresenceType.ONLINE
	end
	if arg1 == PresenceType_upvr.InGame then
		return UserModel_upvr.PresenceType.IN_GAME
	end
	if arg1 == PresenceType_upvr.InStudio then
		return UserModel_upvr.PresenceType.IN_STUDIO
	end
	return UserModel_upvr.PresenceType.OFFLINE
end