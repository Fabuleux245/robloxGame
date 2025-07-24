-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:22
-- Luau version 6, Types version 3
-- Time taken: 0.000695 seconds

local PlaceInfoRodux = script:FindFirstAncestor("PlaceInfoRodux")
local ReceivedMultiplePlaceInfos_upvr = require(PlaceInfoRodux.Actions).ReceivedMultiplePlaceInfos
local Immutable_upvr = require(PlaceInfoRodux.Parent.AppCommonLib).Immutable
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[2]:
		[1]: ReceivedMultiplePlaceInfos_upvr (readonly)
		[2]: Immutable_upvr (readonly)
	]]
	local var9 = arg1
	if not var9 then
		var9 = {}
	end
	arg1 = var9
	local var10 = arg1
	if arg2.type == ReceivedMultiplePlaceInfos_upvr.name then
		for _, v in ipairs(arg2.placeInfos) do
			({})[v.placeId] = v
			local var15
		end
		var10 = Immutable_upvr.JoinDictionaries(var10, var15)
	end
	return var10
end