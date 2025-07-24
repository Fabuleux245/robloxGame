-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:00
-- Luau version 6, Types version 3
-- Time taken: 0.000382 seconds

local useLazyRef_upvr = require(script.Parent.useLazyRef)
return function(arg1) -- Line 11, Named "useInitializedValue"
	--[[ Upvalues[1]:
		[1]: useLazyRef_upvr (readonly)
	]]
	return useLazyRef_upvr(arg1).current
end