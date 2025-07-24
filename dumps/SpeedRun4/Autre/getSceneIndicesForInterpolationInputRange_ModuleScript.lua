-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:08
-- Luau version 6, Types version 3
-- Time taken: 0.000523 seconds

local Array_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Array
return function(arg1) -- Line 5, Named "getSceneIndicesForInterpolationInputRange"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local scenes = arg1.scenes
	local index = arg1.scene.index
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [78] 56. Error Block 17 start (CF ANALYSIS FAILED)
	do
		return {
			first = index - 1;
			last = index + 1;
		}
	end
	-- KONSTANTERROR: [78] 56. Error Block 17 end (CF ANALYSIS FAILED)
end