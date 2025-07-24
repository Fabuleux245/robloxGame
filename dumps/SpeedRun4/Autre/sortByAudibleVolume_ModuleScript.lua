-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:40
-- Luau version 6, Types version 3
-- Time taken: 0.000590 seconds

local ReactSceneUnderstanding = script:FindFirstAncestor("ReactSceneUnderstanding")
local Cryo_upvr = require(ReactSceneUnderstanding.Parent.Cryo)
local SceneUnderstanding_upvr = require(ReactSceneUnderstanding.Parent.SceneUnderstanding)
return function(arg1) -- Line 6, Named "sortByAudibleVolume"
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: SceneUnderstanding_upvr (readonly)
	]]
	return Cryo_upvr.List.sort(Cryo_upvr.List.filter(arg1, SceneUnderstanding_upvr.isAudible), function(arg1_2, arg2) -- Line 9
		--[[ Upvalues[1]:
			[1]: SceneUnderstanding_upvr (copied, readonly)
		]]
		local var5
		if SceneUnderstanding_upvr.calculatePotentialAudibility(arg2) >= SceneUnderstanding_upvr.calculatePotentialAudibility(arg1_2) then
			var5 = false
		else
			var5 = true
		end
		return var5
	end)
end