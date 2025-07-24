-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:20
-- Luau version 6, Types version 3
-- Time taken: 0.001436 seconds

local Parent = script:FindFirstAncestor("RobloxAppInteractionFeedbackConfig").Parent
local Responsive_upvr = require(Parent.Responsive)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("MobileSoundAndHapticsEnabledIXP", false)
local useUserExperiment_upvr = require(Parent.RoactAppExperiment).useUserExperiment
local AppUserLayers_upvr = require(Parent.ExperimentLayers).AppUserLayers
local React_upvr = require(Parent.React)
local SpatialConfig_upvr = require(script.Parent.SpatialConfig)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("MobileSoundAndHapticsIXPBypass", false)
local TouchConfig_upvr = require(script.Parent.TouchConfig)
local DirectionalConfig_upvr = require(script.Parent.DirectionalConfig)
local PointerConfig_upvr = require(script.Parent.PointerConfig)
local InteractionFeedbackContext_upvr = require(Parent.InteractionFeedback).InteractionFeedbackContext
return function(arg1) -- Line 17, Named "InteractionFeedbackProvider"
	--[[ Upvalues[11]:
		[1]: Responsive_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[3]: useUserExperiment_upvr (readonly)
		[4]: AppUserLayers_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: SpatialConfig_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
		[8]: TouchConfig_upvr (readonly)
		[9]: DirectionalConfig_upvr (readonly)
		[10]: PointerConfig_upvr (readonly)
		[11]: InteractionFeedbackContext_upvr (readonly)
	]]
	local any_useLastInput_result1_upvr = Responsive_upvr.useLastInput()
	local any_useIsSpatial_result1_upvr = Responsive_upvr.useIsSpatial()
	local var15_upvw
	if game_DefineFastFlag_result1_upvr_2 then
		var15_upvw = useUserExperiment_upvr({AppUserLayers_upvr.MobileSoundAndHapticsLayer}, function(arg1_2) -- Line 22
			--[[ Upvalues[1]:
				[1]: AppUserLayers_upvr (copied, readonly)
			]]
			local var18 = arg1_2[AppUserLayers_upvr.MobileSoundAndHapticsLayer]
			if not var18 then
				var18 = {}
			end
			return var18.mobileSoundAndHapticsEnabled
		end)
	end
	return React_upvr.createElement(InteractionFeedbackContext_upvr.Provider, {
		value = React_upvr.useMemo(function() -- Line 28
			--[[ Upvalues[10]:
				[1]: any_useIsSpatial_result1_upvr (readonly)
				[2]: SpatialConfig_upvr (copied, readonly)
				[3]: any_useLastInput_result1_upvr (readonly)
				[4]: Responsive_upvr (copied, readonly)
				[5]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[6]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
				[7]: var15_upvw (read and write)
				[8]: TouchConfig_upvr (copied, readonly)
				[9]: DirectionalConfig_upvr (copied, readonly)
				[10]: PointerConfig_upvr (copied, readonly)
			]]
			if any_useIsSpatial_result1_upvr then
				return SpatialConfig_upvr
			end
			if any_useLastInput_result1_upvr == Responsive_upvr.Input.Touch then
				if game_DefineFastFlag_result1_upvr or game_DefineFastFlag_result1_upvr_2 and var15_upvw then
					return TouchConfig_upvr
				end
				return {}
			end
			if any_useLastInput_result1_upvr == Responsive_upvr.Input.Directional then
				return DirectionalConfig_upvr
			end
			if any_useLastInput_result1_upvr == Responsive_upvr.Input.Pointer then
				return PointerConfig_upvr
			end
			return {}
		end, {any_useIsSpatial_result1_upvr, any_useLastInput_result1_upvr});
	}, arg1.children)
end