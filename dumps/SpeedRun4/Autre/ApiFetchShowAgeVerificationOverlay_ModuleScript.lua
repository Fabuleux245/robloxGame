-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:20
-- Luau version 6, Types version 3
-- Time taken: 0.002333 seconds

local VoiceChat = script:FindFirstAncestor("VoiceChat")
local Parent = VoiceChat.Parent
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local module = {
	KeyMapper = function(arg1) -- Line 15, Named "keyMapper"
		return "luaapp.showageverificationoverlay."..arg1
	end;
}
local GetShowAgeVerificationOverlay_upvr = require(VoiceChat.AgeVerificationOverlay.GetShowAgeVerificationOverlay)
local mutedError_upvr = require(Parent.Loggers).mutedError
local SetShowAgeVerificationOverlay_upvr = require(VoiceChat.AgeVerificationOverlay.SetShowAgeVerificationOverlay)
local GetFFlagLogExposureForExperienceUpsell_upvr = require(VoiceChat.Flags.GetFFlagLogExposureForExperienceUpsell)
local Promise_upvr = require(Parent.Promise)
local Logging_upvr = require(Parent.AppCommonLib).Logging
function module.Fetch(arg1, arg2, arg3) -- Line 21
	--[[ Upvalues[7]:
		[1]: PerformFetch_upvr (readonly)
		[2]: GetShowAgeVerificationOverlay_upvr (readonly)
		[3]: mutedError_upvr (readonly)
		[4]: SetShowAgeVerificationOverlay_upvr (readonly)
		[5]: GetFFlagLogExposureForExperienceUpsell_upvr (readonly)
		[6]: Promise_upvr (readonly)
		[7]: Logging_upvr (readonly)
	]]
	if type(arg2) ~= "string" then
		error("ApiFetchShowAgeVerificationOverlay thunk expects universeId to be a string")
	end
	local var11_upvw = arg3 or ""
	if type(var11_upvw) ~= "string" then
		error("ApiFetchShowAgeVerificationOverlay thunk expects placeId to be a string")
	end
	return PerformFetch_upvr.Single("luaapp.showageverificationoverlay."..arg2, function(arg1_2) -- Line 31
		--[[ Upvalues[9]:
			[1]: GetShowAgeVerificationOverlay_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: var11_upvw (read and write)
			[5]: mutedError_upvr (copied, readonly)
			[6]: SetShowAgeVerificationOverlay_upvr (copied, readonly)
			[7]: GetFFlagLogExposureForExperienceUpsell_upvr (copied, readonly)
			[8]: Promise_upvr (copied, readonly)
			[9]: Logging_upvr (copied, readonly)
		]]
		return GetShowAgeVerificationOverlay_upvr(arg1, arg2, var11_upvw):andThen(function(arg1_3) -- Line 32
			--[[ Upvalues[7]:
				[1]: mutedError_upvr (copied, readonly)
				[2]: arg2 (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: SetShowAgeVerificationOverlay_upvr (copied, readonly)
				[5]: GetFFlagLogExposureForExperienceUpsell_upvr (copied, readonly)
				[6]: Promise_upvr (copied, readonly)
				[7]: Logging_upvr (copied, readonly)
			]]
			local responseBody = arg1_3.responseBody
			local var19
			if responseBody.voiceSettings ~= nil then
				var19 = responseBody.voiceSettings.isVoiceEnabled
			end
			if responseBody.showAgeVerificationOverlay then
				mutedError_upvr(`showAgeVerificationOverlay is deprecated but was truthy for universe {arg2}`)
			end
			if responseBody ~= nil and responseBody.showAgeVerificationOverlay ~= nil then
				local var20
				if responseBody.universePlaceVoiceEnabledSettings ~= nil then
					if GetFFlagLogExposureForExperienceUpsell_upvr() then
						var20 = responseBody.elegibleToSeeVoiceUpsell
					else
						var20 = nil
					end
					arg1_2:dispatch(SetShowAgeVerificationOverlay_upvr(arg2, responseBody.universePlaceVoiceEnabledSettings.isPlaceEnabledForVoice, responseBody.universePlaceVoiceEnabledSettings.isUniverseEnabledForVoice, var19, responseBody.showVoiceOptInOverlay, responseBody.universePlaceVoiceEnabledSettings.isUniverseEnabledForAvatarVideo, var20))
					return Promise_upvr.resolve(arg1_3)
				end
			end
			Logging_upvr.warn("Response from GetShowAgeVerificationOverlay is malformed!")
			return Promise_upvr.reject({
				HttpError = Enum.HttpError.OK;
			})
		end)
	end)
end
function module.GetFetchingStatus(arg1, arg2) -- Line 72
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.showageverificationoverlay."..arg2)
end
return module