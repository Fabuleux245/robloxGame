-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:16
-- Luau version 6, Types version 3
-- Time taken: 0.000744 seconds

local PresenceType_upvr = require(script:FindFirstAncestor("SocialCommon").Parent.LuaSocialLibrariesDeps).RoduxPresence.config({
	keyPath = "SocialCommon.Presence";
}).Enums.PresenceType
return function(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: PresenceType_upvr (readonly)
	]]
	if arg1 == PresenceType_upvr.Online then
		return "Online"
	end
	if arg1 == PresenceType_upvr.InStudio then
		return "InStudio"
	end
	if arg1 == PresenceType_upvr.InGame then
		return "InGame"
	end
	return "Offline"
end