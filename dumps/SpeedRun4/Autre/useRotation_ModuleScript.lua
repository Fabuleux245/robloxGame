-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:49
-- Luau version 6, Types version 3
-- Time taken: 0.000438 seconds

local useClock_upvr = require(script:FindFirstAncestor("Foundation").Parent.ReactUtils).useClock
return function(arg1) -- Line 11, Named "useRotation"
	--[[ Upvalues[1]:
		[1]: useClock_upvr (readonly)
	]]
	return useClock_upvr():map(function(arg1_2) -- Line 14
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_2 * 360 * (arg1 or 1)
	end)
end