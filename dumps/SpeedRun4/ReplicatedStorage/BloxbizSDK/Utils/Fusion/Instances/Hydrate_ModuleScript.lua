-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:20
-- Luau version 6, Types version 3
-- Time taken: 0.000370 seconds

local applyInstanceProps_upvr = require(script.Parent.Parent.Instances.applyInstanceProps)
return function(arg1) -- Line 12, Named "Hydrate"
	--[[ Upvalues[1]:
		[1]: applyInstanceProps_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[2]:
			[1]: applyInstanceProps_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		applyInstanceProps_upvr(arg1_2, arg1)
		return arg1
	end
end