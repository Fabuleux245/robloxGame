-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:48
-- Luau version 6, Types version 3
-- Time taken: 0.001139 seconds

local UserLib = script:FindFirstAncestor("UserLib")
game:DefineFastFlag("LuaAppFixActiveGameLoadingCheck", false)
local ConvertUniverseIdToString_upvr = require(UserLib.Parent.SharedFlags).ConvertUniverseIdToString
local WebPresenceMap_upvr = require(UserLib.Enum.WebPresenceMap)
local User_upvr = require(UserLib.Models.User)
return function(arg1, arg2) -- Line 10
	--[[ Upvalues[3]:
		[1]: ConvertUniverseIdToString_upvr (readonly)
		[2]: WebPresenceMap_upvr (readonly)
		[3]: User_upvr (readonly)
	]]
	local module = {}
	if game:GetFastFlag("LuaAppFixActiveGameLoadingCheck") and not arg2:getState().UniversePlaceInfos then
		return module
	end
	for _, v in pairs(arg1) do
		if WebPresenceMap_upvr[v.userPresenceType] == User_upvr.PresenceType.IN_GAME and not arg2:getState().UniversePlaceInfos[ConvertUniverseIdToString_upvr(v.universeId)] then
			table.insert(module, v.placeId)
		end
	end
	return module
end