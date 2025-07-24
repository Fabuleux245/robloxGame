-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:45
-- Luau version 6, Types version 3
-- Time taken: 0.000440 seconds

local Promise_upvr = require(script.Parent.Parent.Parent.Promise)
return {
	coerceToPromise = function(arg1) -- Line 10, Named "coerceToPromise"
		--[[ Upvalues[1]:
			[1]: Promise_upvr (readonly)
		]]
		if Promise_upvr.is(arg1) then
			return arg1
		end
		return Promise_upvr.resolve(arg1)
	end;
}