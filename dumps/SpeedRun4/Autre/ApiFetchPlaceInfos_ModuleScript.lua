-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:25
-- Luau version 6, Types version 3
-- Time taken: 0.001324 seconds

local PlaceInfoRodux = script:FindFirstAncestor("PlaceInfoRodux")
local GetPlaceInfos_upvr = require(PlaceInfoRodux.Requests).GetPlaceInfos
local Functional_upvr = require(PlaceInfoRodux.Parent.AppCommonLib).Functional
local PlaceInfoModel_upvr = require(PlaceInfoRodux.Models).PlaceInfoModel
local ReceivedMultiplePlaceInfos_upvr = require(PlaceInfoRodux.Actions).ReceivedMultiplePlaceInfos
return function(arg1, arg2) -- Line 10
	--[[ Upvalues[4]:
		[1]: GetPlaceInfos_upvr (readonly)
		[2]: Functional_upvr (readonly)
		[3]: PlaceInfoModel_upvr (readonly)
		[4]: ReceivedMultiplePlaceInfos_upvr (readonly)
	]]
	return function(arg1_2) -- Line 11
		--[[ Upvalues[6]:
			[1]: GetPlaceInfos_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: Functional_upvr (copied, readonly)
			[5]: PlaceInfoModel_upvr (copied, readonly)
			[6]: ReceivedMultiplePlaceInfos_upvr (copied, readonly)
		]]
		return GetPlaceInfos_upvr(arg1, arg2):andThen(function(arg1_3) -- Line 12
			--[[ Upvalues[4]:
				[1]: Functional_upvr (copied, readonly)
				[2]: PlaceInfoModel_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: ReceivedMultiplePlaceInfos_upvr (copied, readonly)
			]]
			local any_Map_result1 = Functional_upvr.Map(arg1_3.responseBody, function(arg1_4) -- Line 15
				--[[ Upvalues[1]:
					[1]: PlaceInfoModel_upvr (copied, readonly)
				]]
				return PlaceInfoModel_upvr.fromWeb(arg1_4)
			end)
			arg1_2:dispatch(ReceivedMultiplePlaceInfos_upvr(any_Map_result1))
			return any_Map_result1
		end):catch(function(arg1_5) -- Line 22
			warn("ApiFetchlaceInfos failed with error code "..tostring(arg1_5.HttpError))
		end)
	end
end