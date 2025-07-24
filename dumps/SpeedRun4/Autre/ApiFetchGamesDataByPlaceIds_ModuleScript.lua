-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:25
-- Luau version 6, Types version 3
-- Time taken: 0.001070 seconds

local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local Parent = GameDetailRodux.Parent
local GamesMultigetPlaceDetails_upvr = require(GameDetailRodux.GamesByPlaceId.GamesMultigetPlaceDetails)
local Functional_upvr = require(Parent.AppCommonLib).Functional
local PlaceInfoModel_upvr = require(Parent.PlaceInfoRodux).Models.PlaceInfoModel
local ConvertUniverseIdToString_upvr = require(Parent.SharedFlags).ConvertUniverseIdToString
local ReceivedPlacesInfos_upvr = require(Parent.PlaceInfoRodux).Actions.ReceivedPlacesInfos
local ApiFetchGameIcons_upvr = require(Parent.GameIconRodux).GameIcons.ApiFetchGameIcons
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[6]:
		[1]: GamesMultigetPlaceDetails_upvr (readonly)
		[2]: Functional_upvr (readonly)
		[3]: PlaceInfoModel_upvr (readonly)
		[4]: ConvertUniverseIdToString_upvr (readonly)
		[5]: ReceivedPlacesInfos_upvr (readonly)
		[6]: ApiFetchGameIcons_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[8]:
			[1]: arg2 (readonly)
			[2]: GamesMultigetPlaceDetails_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Functional_upvr (copied, readonly)
			[5]: PlaceInfoModel_upvr (copied, readonly)
			[6]: ConvertUniverseIdToString_upvr (copied, readonly)
			[7]: ReceivedPlacesInfos_upvr (copied, readonly)
			[8]: ApiFetchGameIcons_upvr (copied, readonly)
		]]
		if not arg2 or #arg2 == 0 then return end
		return GamesMultigetPlaceDetails_upvr(arg1, arg2):andThen(function(arg1_3) -- Line 18
			--[[ Upvalues[7]:
				[1]: Functional_upvr (copied, readonly)
				[2]: PlaceInfoModel_upvr (copied, readonly)
				[3]: ConvertUniverseIdToString_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: ReceivedPlacesInfos_upvr (copied, readonly)
				[6]: ApiFetchGameIcons_upvr (copied, readonly)
				[7]: arg1 (copied, readonly)
			]]
			local tbl_upvr = {}
			local any_Map_result1 = Functional_upvr.Map(arg1_3.responseBody, function(arg1_4) -- Line 22
				--[[ Upvalues[3]:
					[1]: PlaceInfoModel_upvr (copied, readonly)
					[2]: ConvertUniverseIdToString_upvr (copied, readonly)
					[3]: tbl_upvr (readonly)
				]]
				local any_fromWeb_result1 = PlaceInfoModel_upvr.fromWeb(arg1_4)
				table.insert(tbl_upvr, ConvertUniverseIdToString_upvr(any_fromWeb_result1.universeId))
				return any_fromWeb_result1
			end)
			arg1_2:dispatch(ReceivedPlacesInfos_upvr(any_Map_result1))
			if 0 < #tbl_upvr then
				arg1_2:dispatch(ApiFetchGameIcons_upvr(arg1, tbl_upvr))
			end
			return any_Map_result1
		end)
	end
end