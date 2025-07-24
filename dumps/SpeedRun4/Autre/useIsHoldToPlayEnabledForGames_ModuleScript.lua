-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:11
-- Luau version 6, Types version 3
-- Time taken: 0.001881 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local useUserExperiment_upvr = require(Parent.RoactAppExperiment).useUserExperiment
local AppUserLayers_upvr = require(Parent.ExperimentLayers).AppUserLayers
local Responsive_upvr = require(Parent.Responsive)
local useUiModeInfo_upvr = require(Parent.RobloxAppHooks).useUiModeInfo
local UiMode_upvr = require(Parent.RobloxAppEnums).UiMode
return function() -- Line 10, Named "useIsHoldToPlayEnabledForGames"
	--[[ Upvalues[5]:
		[1]: useUserExperiment_upvr (readonly)
		[2]: AppUserLayers_upvr (readonly)
		[3]: Responsive_upvr (readonly)
		[4]: useUiModeInfo_upvr (readonly)
		[5]: UiMode_upvr (readonly)
	]]
	local var2_result1 = useUserExperiment_upvr({AppUserLayers_upvr.PlatformExcellenceQualityImprovementConsoles}, function(arg1) -- Line 13
		--[[ Upvalues[1]:
			[1]: AppUserLayers_upvr (copied, readonly)
		]]
		local var13 = arg1[AppUserLayers_upvr.PlatformExcellenceQualityImprovementConsoles]
		if not var13 then
			var13 = {}
		end
		return var13.enableHoldToPlay
	end)
	if var2_result1 then
		var2_result1 = false
		if Responsive_upvr.useLastInput() == Responsive_upvr.Input.Directional then
			if useUiModeInfo_upvr().uiMode ~= UiMode_upvr.TenFoot then
				var2_result1 = false
			else
				var2_result1 = true
			end
		end
	end
	return var2_result1
end