-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:44
-- Luau version 6, Types version 3
-- Time taken: 0.001860 seconds

local ReactSceneUnderstanding = script:FindFirstAncestor("ReactSceneUnderstanding")
local React = require(ReactSceneUnderstanding.Parent.React)
local SceneAnalysisContext_upvr = require(ReactSceneUnderstanding.SceneAnalysisContext)
local useAudioSources_upvr = require(ReactSceneUnderstanding.audio.useAudioSources)
local useCameraState_upvr = require(ReactSceneUnderstanding.useCameraState)
local usePrevious_upvr = require(ReactSceneUnderstanding.Parent.ReactUtils).usePrevious
local useCallback_upvr = React.useCallback
local sortByAudibleVolume_upvr = require(ReactSceneUnderstanding.audio.sortByAudibleVolume)
local useTimedLoop_upvr = require(ReactSceneUnderstanding.useTimedLoop)
local useEffect_upvr = React.useEffect
local enums_upvr = require(ReactSceneUnderstanding.enums)
return function() -- Line 31, Named "useAudibleSounds"
	--[[ Upvalues[9]:
		[1]: SceneAnalysisContext_upvr (readonly)
		[2]: useAudioSources_upvr (readonly)
		[3]: useCameraState_upvr (readonly)
		[4]: usePrevious_upvr (readonly)
		[5]: useCallback_upvr (readonly)
		[6]: sortByAudibleVolume_upvr (readonly)
		[7]: useTimedLoop_upvr (readonly)
		[8]: useEffect_upvr (readonly)
		[9]: enums_upvr (readonly)
	]]
	local any_use_result1_upvr = SceneAnalysisContext_upvr.use()
	local useAudioSources_upvr_result1_upvr = useAudioSources_upvr()
	local useCameraState_upvr_result1_upvr = useCameraState_upvr()
	local var6_result1_upvr = usePrevious_upvr(useCameraState_upvr_result1_upvr)
	local useCallback_upvr_result1_upvr = useCallback_upvr(function() -- Line 37
		--[[ Upvalues[3]:
			[1]: any_use_result1_upvr (readonly)
			[2]: sortByAudibleVolume_upvr (copied, readonly)
			[3]: useAudioSources_upvr_result1_upvr (readonly)
		]]
		any_use_result1_upvr.setAudibleSounds(sortByAudibleVolume_upvr(useAudioSources_upvr_result1_upvr))
	end, {useAudioSources_upvr_result1_upvr, any_use_result1_upvr.setAudibleSounds})
	useTimedLoop_upvr(1, function() -- Line 56
		--[[ Upvalues[1]:
			[1]: useCallback_upvr_result1_upvr (readonly)
		]]
		useCallback_upvr_result1_upvr()
	end)
	useEffect_upvr(function() -- Line 60
		--[[ Upvalues[3]:
			[1]: any_use_result1_upvr (readonly)
			[2]: useAudioSources_upvr_result1_upvr (readonly)
			[3]: useCallback_upvr_result1_upvr (readonly)
		]]
		if #any_use_result1_upvr.audibleSounds == 0 and 0 < #useAudioSources_upvr_result1_upvr then
			useCallback_upvr_result1_upvr()
		end
	end, {#any_use_result1_upvr.audibleSounds, #useAudioSources_upvr_result1_upvr, useCallback_upvr_result1_upvr})
	useEffect_upvr(function() -- Line 66
		--[[ Upvalues[4]:
			[1]: useCameraState_upvr_result1_upvr (readonly)
			[2]: var6_result1_upvr (readonly)
			[3]: enums_upvr (copied, readonly)
			[4]: useCallback_upvr_result1_upvr (readonly)
		]]
		if useCameraState_upvr_result1_upvr ~= var6_result1_upvr and useCameraState_upvr_result1_upvr == enums_upvr.CameraState.Idle then
			useCallback_upvr_result1_upvr()
		end
	end, {useCameraState_upvr_result1_upvr, var6_result1_upvr, useCallback_upvr_result1_upvr})
	return any_use_result1_upvr.audibleSounds
end