-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:09
-- Luau version 6, Types version 3
-- Time taken: 0.002361 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local useAudibleSounds_upvr = require(Songbird.Parent.ReactSceneUnderstanding).useAudibleSounds
local useMemo_upvr = require(Songbird.Parent.React).useMemo
local Cryo_upvr = require(Songbird.Parent.Cryo)
local getAssetIdForAudioSource_upvr = require(Songbird.Common.getAssetIdForAudioSource)
local useAudioMetadata_upvr = require(Songbird.Hooks.useAudioMetadata)
local useAssetFavoriting_upvr = require(Songbird.Parent.AssetFavorites).useAssetFavoriting
local logger_upvr = require(Songbird.logger)
local sendChromeWindowAnalytics_upvr = require(Songbird.Analytics.sendChromeWindowAnalytics)
local AnalyticActions_upvr = require(Songbird.Analytics.AnalyticActions)
return function() -- Line 21, Named "useCurrentSong"
	--[[ Upvalues[9]:
		[1]: useAudibleSounds_upvr (readonly)
		[2]: useMemo_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: getAssetIdForAudioSource_upvr (readonly)
		[5]: useAudioMetadata_upvr (readonly)
		[6]: useAssetFavoriting_upvr (readonly)
		[7]: logger_upvr (readonly)
		[8]: sendChromeWindowAnalytics_upvr (readonly)
		[9]: AnalyticActions_upvr (readonly)
	]]
	local useAudibleSounds_upvr_result1_upvr = useAudibleSounds_upvr()
	local var3_result1_upvr = useMemo_upvr(function() -- Line 30
		--[[ Upvalues[3]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: useAudibleSounds_upvr_result1_upvr (readonly)
			[3]: getAssetIdForAudioSource_upvr (copied, readonly)
		]]
		return Cryo_upvr.List.filter(useAudibleSounds_upvr_result1_upvr, function(arg1) -- Line 31
			--[[ Upvalues[1]:
				[1]: getAssetIdForAudioSource_upvr (copied, readonly)
			]]
			local var14
			if getAssetIdForAudioSource_upvr(arg1) == nil then
				var14 = false
			else
				var14 = true
			end
			return var14
		end)
	end, {useAudibleSounds_upvr_result1_upvr})
	local var3_result1 = useMemo_upvr(function() -- Line 36
		--[[ Upvalues[3]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: var3_result1_upvr (readonly)
			[3]: getAssetIdForAudioSource_upvr (copied, readonly)
		]]
		return Cryo_upvr.List.map(var3_result1_upvr, function(arg1) -- Line 37
			--[[ Upvalues[1]:
				[1]: getAssetIdForAudioSource_upvr (copied, readonly)
			]]
			return getAssetIdForAudioSource_upvr(arg1)
		end)
	end, {var3_result1_upvr})
	local var6_result1_upvr = useAudioMetadata_upvr(var3_result1)
	local var7_result1_upvr = useAssetFavoriting_upvr(var3_result1)
	return useMemo_upvr(function() -- Line 47
		--[[ Upvalues[7]:
			[1]: logger_upvr (copied, readonly)
			[2]: var3_result1_upvr (readonly)
			[3]: getAssetIdForAudioSource_upvr (copied, readonly)
			[4]: var6_result1_upvr (readonly)
			[5]: var7_result1_upvr (readonly)
			[6]: sendChromeWindowAnalytics_upvr (copied, readonly)
			[7]: AnalyticActions_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		logger_upvr:info(`determining currently playing song from {#var3_result1_upvr} audio sources...`)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [150] 114. Error Block 22 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [150] 114. Error Block 22 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 14. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTERROR: [15] 14. Error Block 2 end (CF ANALYSIS FAILED)
	end, {var6_result1_upvr.getByAssetId, var3_result1_upvr, var7_result1_upvr.getByAssetId, var7_result1_upvr.toggleFavorite})
end