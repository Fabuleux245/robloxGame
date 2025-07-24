-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:22
-- Luau version 6, Types version 3
-- Time taken: 0.000718 seconds

local PlaceInfoRodux = script:FindFirstAncestor("PlaceInfoRodux")
local Parent = PlaceInfoRodux.Parent
local ReceivedPlacesInfos_upvr = require(PlaceInfoRodux.Actions).ReceivedPlacesInfos
local ConvertUniverseIdToString_upvr = require(Parent.SharedFlags).ConvertUniverseIdToString
local Immutable_upvr = require(Parent.AppCommonLib).Immutable
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[3]:
		[1]: ReceivedPlacesInfos_upvr (readonly)
		[2]: ConvertUniverseIdToString_upvr (readonly)
		[3]: Immutable_upvr (readonly)
	]]
	local var11 = arg1
	if not var11 then
		var11 = {}
	end
	arg1 = var11
	local var12 = arg1
	if arg2.type == ReceivedPlacesInfos_upvr.name then
		for _, v in pairs(arg2.placesInfos) do
			var12 = Immutable_upvr.Set(var12, ConvertUniverseIdToString_upvr(v.universeId), v)
		end
	end
	return var12
end