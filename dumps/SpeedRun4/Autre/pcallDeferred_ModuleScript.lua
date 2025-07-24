-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:42
-- Luau version 6, Types version 3
-- Time taken: 0.000294 seconds

local tryYield_upvr = require(script.Parent.Parent.util.tryYield)
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[1]:
		[1]: tryYield_upvr (readonly)
	]]
	tryYield_upvr(arg2)
	return pcall(arg1)
end