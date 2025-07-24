-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:24
-- Luau version 6, Types version 3
-- Time taken: 0.000597 seconds

local calculatePotentialAudibility_upvr = require(script:FindFirstAncestor("SceneUnderstanding").audio.calculatePotentialAudibility)
return function(arg1) -- Line 19, Named "isAudible"
	--[[ Upvalues[1]:
		[1]: calculatePotentialAudibility_upvr (readonly)
	]]
	local var2 = arg1
	if 0.01 >= calculatePotentialAudibility_upvr(var2) then
		var2 = false
	else
		var2 = true
	end
	return var2
end