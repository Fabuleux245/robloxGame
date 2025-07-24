-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:37
-- Luau version 6, Types version 3
-- Time taken: 0.000476 seconds

local reduce_upvr = require(script.Parent.reduce)
return function(arg1) -- Line 12, Named "product"
	--[[ Upvalues[1]:
		[1]: reduce_upvr (readonly)
	]]
	return reduce_upvr(arg1, function(arg1_2, arg2) -- Line 13
		return arg1_2 * arg2
	end, 1)
end