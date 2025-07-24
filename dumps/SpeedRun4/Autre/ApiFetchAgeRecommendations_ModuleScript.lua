-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:17
-- Luau version 6, Types version 3
-- Time taken: 0.001467 seconds

local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local Parent = GameDetailRodux.Parent
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local module = {}
local function _(arg1) -- Line 17, Named "fetchKeymapper"
	return "luaapp.experience_guidelines.get-age-guidelines"..arg1
end
local GetAgeRecommendation_upvr = require(GameDetailRodux.AgeRecommendations.GetAgeRecommendation)
local AgeRecommendationDetails_upvr = require(GameDetailRodux.AgeRecommendations.AgeRecommendationDetails)
local Logging_upvr = require(Parent.AppCommonLib).Logging
local Promise_upvr = require(Parent.Promise)
local SetAgeRecommendation_upvr = require(GameDetailRodux.AgeRecommendations.SetAgeRecommendation)
local SetAgeRecommendationHeaders_upvr = require(GameDetailRodux.AgeRecommendations.SetAgeRecommendationHeaders)
local SetNetworkingErrorToast_upvr = require(Parent.RobloxAppToastsRodux).Thunks.SetNetworkingErrorToast
function module.Fetch(arg1, arg2) -- Line 21
	--[[ Upvalues[8]:
		[1]: PerformFetch_upvr (readonly)
		[2]: GetAgeRecommendation_upvr (readonly)
		[3]: AgeRecommendationDetails_upvr (readonly)
		[4]: Logging_upvr (readonly)
		[5]: Promise_upvr (readonly)
		[6]: SetAgeRecommendation_upvr (readonly)
		[7]: SetAgeRecommendationHeaders_upvr (readonly)
		[8]: SetNetworkingErrorToast_upvr (readonly)
	]]
	return PerformFetch_upvr.Single("luaapp.experience_guidelines.get-age-guidelines"..arg2, function(arg1_2) -- Line 22
		--[[ Upvalues[9]:
			[1]: GetAgeRecommendation_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: AgeRecommendationDetails_upvr (copied, readonly)
			[5]: Logging_upvr (copied, readonly)
			[6]: Promise_upvr (copied, readonly)
			[7]: SetAgeRecommendation_upvr (copied, readonly)
			[8]: SetAgeRecommendationHeaders_upvr (copied, readonly)
			[9]: SetNetworkingErrorToast_upvr (copied, readonly)
		]]
		return GetAgeRecommendation_upvr(arg1, arg2):andThen(function(arg1_3) -- Line 23
			--[[ Upvalues[7]:
				[1]: AgeRecommendationDetails_upvr (copied, readonly)
				[2]: Logging_upvr (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: Promise_upvr (copied, readonly)
				[5]: arg1_2 (readonly)
				[6]: SetAgeRecommendation_upvr (copied, readonly)
				[7]: SetAgeRecommendationHeaders_upvr (copied, readonly)
			]]
			local responseBody = arg1_3.responseBody
			if responseBody ~= nil then
				local any_unwrap_result1, any_unwrap_result2 = AgeRecommendationDetails_upvr.fromJsonData(responseBody.ageRecommendationDetails):unwrap()
				if any_unwrap_result1 == false then
					Logging_upvr.warn("Failed to parse AgeRecommendationDetails for `"..arg2..'`')
					return Promise_upvr.reject(arg1_3)
				end
				arg1_2:dispatch(SetAgeRecommendation_upvr(arg2, any_unwrap_result2))
				arg1_2:dispatch(SetAgeRecommendationHeaders_upvr(responseBody.headerDisplayName, responseBody.headerDisplayNameShort))
				return Promise_upvr.resolve(arg1_3)
			end
			Logging_upvr.warn("Response from GetAgeRecommendation is malformed!")
			return Promise_upvr.reject({
				HttpError = Enum.HttpError.OK;
			})
		end, function(arg1_4) -- Line 46
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: SetNetworkingErrorToast_upvr (copied, readonly)
				[3]: Promise_upvr (copied, readonly)
			]]
			arg1_2:dispatch(SetNetworkingErrorToast_upvr(arg1_4))
			return Promise_upvr.reject(arg1_4)
		end)
	end)
end
function module.GetFetchingStatus(arg1, arg2) -- Line 53
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.experience_guidelines.get-age-guidelines"..arg2)
end
return module