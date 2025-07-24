-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:21
-- Luau version 6, Types version 3
-- Time taken: 0.001980 seconds

local PlaceInfoRodux = script:FindFirstAncestor("PlaceInfoRodux")
local RequestMultiplePlaceInfos_upvr = require(PlaceInfoRodux.Actions).RequestMultiplePlaceInfos
local Immutable_upvr = require(PlaceInfoRodux.Parent.AppCommonLib).Immutable
local ReceivedMultiplePlaceInfos_upvr = require(PlaceInfoRodux.Actions).ReceivedMultiplePlaceInfos
local FailedToFetchMultiplePlaceInfos_upvr = require(PlaceInfoRodux.Actions).FailedToFetchMultiplePlaceInfos
return function(arg1, arg2) -- Line 10
	--[[ Upvalues[4]:
		[1]: RequestMultiplePlaceInfos_upvr (readonly)
		[2]: Immutable_upvr (readonly)
		[3]: ReceivedMultiplePlaceInfos_upvr (readonly)
		[4]: FailedToFetchMultiplePlaceInfos_upvr (readonly)
	]]
	local var19 = arg1
	if not var19 then
		var19 = {}
	end
	local var20 = var19
	if arg2.type == RequestMultiplePlaceInfos_upvr.name then
		for _, v in ipairs(arg2.placeIds) do
			({})[v] = true
			local var25
		end
		return Immutable_upvr.JoinDictionaries(var20, var25)
	end
	if arg2.type == ReceivedMultiplePlaceInfos_upvr.name then
		for _, v_2 in ipairs(arg2.placeInfos) do
			({})[v_2.placeId] = false
			local var30
		end
		return Immutable_upvr.JoinDictionaries(var20, var30)
	end
	if arg2.type == FailedToFetchMultiplePlaceInfos_upvr.name then
		for _, v_3 in ipairs(arg2.placeIds) do
			({})[v_3] = false
			local var35
		end
		return Immutable_upvr.JoinDictionaries(var20, var35)
	end
	return var20
end