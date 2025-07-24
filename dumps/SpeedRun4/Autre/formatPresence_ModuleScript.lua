-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:20
-- Luau version 6, Types version 3
-- Time taken: 0.000906 seconds

local Parent = script.Parent.Parent.Parent
local PresenceTypes_upvr = require(Parent.Analytics.Enums).PresenceTypes
local PresenceType = require(Parent.dependencies).RoduxPresence.Enums.PresenceType
local module_upvr = {
	[PresenceType.InGame] = PresenceTypes_upvr.InGame;
	[PresenceType.InStudio] = PresenceTypes_upvr.InStudio;
	[PresenceType.Offline] = PresenceTypes_upvr.Offline;
	[PresenceType.Online] = PresenceTypes_upvr.Online;
}
return function(arg1) -- Line 15
	--[[ Upvalues[2]:
		[1]: PresenceTypes_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if not arg1 then
		return nil
	end
	if type(arg1) == "string" and arg1 ~= "" then
		return PresenceTypes_upvr[arg1]
	end
	return module_upvr[arg1]
end